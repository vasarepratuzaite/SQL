ALTER SEQUENCE vapr9224.Klientas_Kliento_numeris_seq RESTART WITH 1;
INSERT INTO vapr9224.Klientas (Vardas_Pavarde, Telefono_numeris, Elektroninis_pastas, Adresas)
VALUES 
    ( 'Petras Petraitis', '370-987-6543', 'petras.petraitis@example.com', 'Savanoriu pr. 2, Kaunas'),
    ( 'Ona Onaite', '370-555-1234', 'ona.onaite@example.com', 'Laisves al. 3, Kaunas'),
    ( 'Kazys Kazys', '370-444-5678', 'kazys.kazys@example.com', 'Vytauto pr. 4, Klaipeda');

ALTER SEQUENCE vapr9224.Salmas_Salmo_numeris_seq RESTART WITH 1;
INSERT INTO vapr9224.Salmas (Salmo_modelis, Salmo_gamintojas, Salmo_dydis, Salmo_spalva, Kaina)
VALUES 
    ( 'Modelis A', 'Terva', 'Didelis', 'Raudona', 9.99),
    ( 'Modelis B', 'Kuba', 'Vidutinis', 'Mėlyna', 9.99),
    ('Modelis C', 'Brew', 'Mažas', 'Žalia', 9.99),
    ( 'Modelis D', 'Terva', 'Didelis', 'Juoda', 10.99),
    ( 'Modelis E', 'Kuba', 'Vidutinis', 'Balta', 11.99),
    ( 'Modelis F', 'Brew', 'Mažas', 'Geltona', 12.99),
    ( 'Modelis G', 'Terva', 'Didelis', 'Raudona', 13.99),
    ( 'Modelis H', 'Kuba', 'Vidutinis', 'Mėlyna', 8.99),
    ( 'Modelis I', 'Brew', 'Mažas', 'Žalia', 7.99),
    ( 'Modelis J', 'Terva', 'Didelis', 'Juoda', 2.99);

ALTER SEQUENCE vapr9224.Dviratis_Dviracio_numeris_seq RESTART WITH 1;
INSERT INTO vapr9224.Dviratis ( Dviracio_modelis, Dviracio_gamintojas, Dviracio_dydis, Dviracio_bukle, Dviracio_spalva, Kaina)
VALUES 
    ( 'Modelis A', 'Bosh', 'Didelis', 'Naujas', 'Raudona', 20.99),
    ( 'Modelis B', 'MountainPass', 'Vidutinis', 'Geras', 'Mėlyna', 22.99),
    ( 'Modelis C', 'Tauras', 'Mažas', 'Naudotas', 'Žalia', 24.99),
    ( 'Modelis D', 'Bosh', 'Didelis', 'Puikus', 'Juoda', 25.99),
    ( 'Modelis E', 'MountainPass', 'Vidutinis', 'Vidutinė', 'Balta', 26.99),
    ( 'Modelis F', 'Tauras', 'Mažas', 'Naudotas', 'Geltona', 29.99),
    ( 'Modelis G', 'Bosh', 'Didelis', 'Naujas', 'Raudona', 30.99),
    ( 'Modelis H', 'MountainPass', 'Vidutinis', 'Geras', 'Mėlyna', 31.99),
    ( 'Modelis I', 'Tauras', 'Mažas', 'Naudotas', 'Žalia', 28.99),
    ( 'Modelis J', 'Bosh', 'Didelis', 'Puikus', 'Juoda', 35.99);

ALTER SEQUENCE vapr9224.Nuomos_sutartis_Sutarties_nr_seq RESTART WITH 1;
INSERT INTO vapr9224.Nuomos_sutartis(Kliento_numeris, Dviracio_numeris, Nuomos_pradzia, Nuomos_pabaiga, Galutine_kaina)
VALUES 
    ( 1, 5, '2024-01-08', '2024-01-09', 30),
    ( 2, 4, '2024-02-08', '2024-02-09', 40),
    ( 3, 1, '2024-03-08', '2024-03-09', 50);
