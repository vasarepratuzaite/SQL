CREATE TABLE vapr9224.Dviratis (
    Dviracio_numeris SERIAL PRIMARY KEY, --serial automatiskai kuriamas
    Dviracio_modelis VARCHAR(255),
    Dviracio_gamintojas VARCHAR(255),
    Dviracio_dydis VARCHAR(50),
    Dviracio_bukle VARCHAR(50) DEFAULT 'Naujas', -- numatyta reiksme
    Dviracio_spalva VARCHAR(50),
    Kaina DECIMAL(10, 2),
    CONSTRAINT CHK_Dviratis CHECK (Dviracio_bukle IN ('Naujas','Geras', 'Naudotas', 'Puikus', 'Vidutinė'))
    
);
CREATE UNIQUE INDEX Dviracio_indeksas ON vapr9224.Dviratis(Dviracio_modelis, Dviracio_gamintojas);
--Ima duomenis lentelėje Dviratis pagal modelį ir gamintoją bei užtikrina, kad šie duomenys būtų unikalūs.
CREATE TABLE vapr9224.Klientas (
    Kliento_numeris SERIAL PRIMARY KEY,
    Vardas_Pavarde VARCHAR(255),
    Telefono_numeris VARCHAR(20),
    Elektroninis_pastas VARCHAR(255),
    Adresas VARCHAR(255),
    CONSTRAINT CHK_epastas CHECK (Elektroninis_pastas LIKE '%@%'),
    CONSTRAINT CHK_telefonas CHECK (Telefono_numeris LIKE '370%')
);
--parodyti kad vdiracio indeksas veikia?
CREATE TABLE vapr9224.Salmas (
    Salmo_numeris SERIAL PRIMARY KEY,
    Salmo_modelis VARCHAR(255),
    Salmo_gamintojas VARCHAR(255),
    Salmo_dydis VARCHAR(50),
    Salmo_spalva VARCHAR(50),
    Kaina DECIMAL(10, 2)
);

CREATE TABLE vapr9224.Nuomos_sutartis (
    Sutarties_nr SERIAL PRIMARY KEY,
    Kliento_numeris INT,
    Dviracio_numeris INT,
    Salmo_numeris INT,
    Nuomos_pradzia DATE DEFAULT CURRENT_DATE, -- numatyta reiksme
    Nuomos_pabaiga DATE,
    Galutine_kaina DECIMAL(10, 2),
    FOREIGN KEY (Kliento_numeris) REFERENCES Klientas(Kliento_numeris) ON DELETE RESTRICT ON UPDATE NO ACTION,
    FOREIGN KEY (Dviracio_numeris) REFERENCES Dviratis(Dviracio_numeris),
    FOREIGN KEY (Salmo_numeris) REFERENCES Salmas(Salmo_numeris),
    CONSTRAINT CHK_Nuomos_Data CHECK (Nuomos_pradzia <= Nuomos_pabaiga) --patikrinam kad nuomos pradzia butu anksciau nei nuomos pabaiga
);
CREATE INDEX Kliento_Nuoma ON vapr9224.Nuomos_sutartis (Kliento_Numeris); 

 
--FOREIGN KEY (Kliento_numeris) REFERENCES Klientas(Kliento_numeris) ON DELETE RESTRICT ON UPDATE NO ACTION,