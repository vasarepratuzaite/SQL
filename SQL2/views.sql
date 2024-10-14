CREATE VIEW Kliento_Sutartis AS
Select Klientas.Kliento_Numeris, Klientas.Vardas_Pavarde, sutartis.Sutarties_nr  
from vapr9224.Klientas Klientas, vapr9224.Nuomos_sutartis sutartis
where Klientas.Kliento_Numeris = sutartis.Kliento_Numeris;

CREATE MATERIALIZED VIEW Sutarties_Info AS
SELECT Sutartis.Sutarties_nr, Sutartis.Kliento_Numeris, 
Sutartis.Dviracio_numeris, Dviratis.Dviracio_modelis, Dviratis.Dviracio_gamintojas, 
Sutartis.Salmo_numeris, Salmas.Salmo_modelis, Salmas.Salmo_gamintojas
FROM  vapr9224.Nuomos_sutartis Sutartis
INNER JOIN vapr9224.Dviratis Dviratis on Dviratis.Dviracio_numeris = Sutartis.Dviracio_numeris
INNER JOIN vapr9224.Salmas Salmas on Salmas.Salmo_numeris = Sutartis.Salmo_numeris;

CREATE VIEW Sutarties_Dviraciai AS
Select Dviratis.Dviracio_numeris, Dviratis.Dviracio_modelis, Dviratis.Dviracio_gamintojas, sutartis.Sutarties_nr  
from vapr9224.Dviratis Dviratis, vapr9224.Nuomos_sutartis sutartis
where Dviratis.Dviracio_numeris = sutartis.Dviracio_numeris; 

