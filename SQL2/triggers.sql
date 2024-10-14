CREATE OR REPLACE FUNCTION vapr9224.refresh_view()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL
  AS
$$
BEGIN
    REFRESH MATERIALIZED VIEW Sutarties_Info;
    RETURN NEW;
END;
$$;
CREATE  TRIGGER refresher --paleisk funkcija, kai pridedami arba atnaujinami duomenis
  AFTER INSERT OR UPDATE OR DELETE --po duomenu pridejimo atnaujinimo arba naikinimo
  ON vapr9224.Nuomos_sutartis
  FOR EACH ROW
  EXECUTE PROCEDURE vapr9224.refresh_view();


--kai pridedamas dviratis sutartyje, pridedamas automatiskai salmas
CREATE OR REPLACE FUNCTION vapr9224.Salmas_Dviraciui()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL
  AS
$$
DECLARE
  NR  integer;
BEGIN
  NR := (SELECT Salmas.Salmo_numeris
  from vapr9224.Salmas Salmas
  where Salmas.Salmo_numeris NOT IN (SELECT Salmo_numeris from vapr9224.Nuomos_sutartis) 
  AND Salmas.Salmo_dydis = (SELECT Salmo_dydis from vapr9224.Dviratis where Dviracio_numeris = NEW.Dviracio_numeris)
  ORDER BY RANDOM()
  LIMIT 1);
  NEW.Salmo_numeris := NR;
  RETURN NEW;
    
END;
$$;
CREATE TRIGGER Prideti_Salmas
  BEFORE INSERT
  ON vapr9224.Nuomos_sutartis
  FOR ROW
EXECUTE PROCEDURE vapr9224.Salmas_Dviraciui();