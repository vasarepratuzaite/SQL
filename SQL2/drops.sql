DROP TABLE IF EXISTS vapr9224.Klientas CASCADE;
DROP TABLE IF EXISTS vapr9224.Dviratis CASCADE;
DROP TABLE IF EXISTS vapr9224.Nuomos_sutartis CASCADE;
DROP TABLE IF EXISTS vapr9224.Salmas CASCADE;
DROP TABLE IF EXISTS vapr9224.Nuomojamas CASCADE;
DROP TABLE IF EXISTS vapr9224.Pridedamas CASCADE;
DROP TRIGGER IF EXISTS refresher on vapr9224.Nuomos_sutartis cascade;
DROP TRIGGER IF EXISTS Prideti_Salmas on vapr9224.Nuomojamas cascade;
DROP VIEW IF EXISTS Kliento_Sutartis cascade;
DROP MATERIALIZED VIEW IF EXISTS Sutarties_Info cascade;
DROP VIEW IF EXISTS Sutarties_Dviraciai cascade;