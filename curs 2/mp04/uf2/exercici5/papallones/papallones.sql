
    DROP DATABASE IF EXISTS Papallones;

    -- Crear la base de datos
    CREATE DATABASE IF NOT EXISTS papallones CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

    -- Usar la base de datos papallones
    USE papallones;

    -- Creación de tablas
    CREATE TABLE Papallones (
      id INT PRIMARY KEY AUTO_INCREMENT,
      nom TEXT NOT NULL,
      nomCientific TEXT NOT NULL
    );

    CREATE TABLE Data (
      id INT PRIMARY KEY AUTO_INCREMENT,
      dia DATE NOT NULL,
      humitatMaxima REAL NOT NULL,
      humitatMinima REAL NOT NULL,
      temperaturaMitjana REAL NOT NULL,
      pluja REAL DEFAULT NULL
    );

    CREATE TABLE Naixement (
      id INT PRIMARY KEY AUTO_INCREMENT,
      data_id INT NOT NULL,
      hora TIME NOT NULL,
      estat TEXT NOT NULL,
      quantitat INT NOT NULL,
      FOREIGN KEY (data_id) REFERENCES Data(id)
    );

    
    
    INSERT INTO Papallones (nom, nomCientific) VALUES ('Papallona del arboç', 'Charaxes jasius');
    
    
    
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('19-05-2018', 24, 15, 11,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '08:00', 'dolent', '16');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '14:00', 'dolent', '24');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '20:00', 'excel·lent', '20');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('20-05-2018', 23, 13, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '08:00', 'bo', '16');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '14:00', 'bo', '25');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '20:00', 'bo', '22');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('21-05-2018', 26, 14, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '08:00', 'bo', '17');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '14:00', 'bo', '26');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '20:00', 'bo', '23');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('22-05-2018', 28, 16, 18,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '08:00', 'bo', '18');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '14:00', 'excel·lent', '26');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '20:00', 'prou bo', '23');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('23-05-2018', 29, 19, 25,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '08:00', 'bo', '21');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '14:00', 'bo', '29');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '20:00', 'bo', '26');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('24-05-2018', 31, 19, 32,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '08:00', 'bo', '23');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '14:00', 'bo', '30');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '20:00', 'dolent', '26');
  
    INSERT INTO Papallones (nom, nomCientific) VALUES ('Papallona reina', 'Papilio machaon');
    
    
    
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('19-05-2018', 23, 16, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '08:00', 'excel·lent', '17');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '14:00', 'excel·lent', '21');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '20:00', 'excel·lent', '20');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('20-05-2018', 24, 14, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '08:00', 'bo', '17');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '14:00', 'bo', '24');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '20:00', 'bo', '22');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('21-05-2018', 26, 14, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '08:00', 'bo', '18');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '14:00', 'bo', '26');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '20:00', 'bo', '23');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('22-05-2018', 27, 17, 18,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '08:00', 'bo', '18');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '14:00', 'excel·lent', '27');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '20:00', 'prou bo', '25');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('23-05-2018', 29, 20, 25,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '08:00', 'bo', '22');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '14:00', 'bo', '29');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '20:00', 'bo', '26');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('24-05-2018', 30, 20, 32,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '08:00', 'bo', '24');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '14:00', 'bo', '30');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '20:00', 'dolent', '26');
  
    INSERT INTO Papallones (nom, nomCientific) VALUES ('Papallona de les ortigues', 'Aglais urticae');
    
    
    
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('19-05-2018', 22, 11, 11,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '08:00', 'dolent', '11');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '14:00', 'dolent', '22');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '20:00', 'excel·lent', '17');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('20-05-2018', 23, 9, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '08:00', 'bo', '11');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '14:00', 'bo', '23');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '20:00', 'bo', '19');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('21-05-2018', 24, 9, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '08:00', 'bo', '13');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '14:00', 'bo', '24');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '20:00', 'bo', '20');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('22-05-2018', 24, 9, 7, 2,6);
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '08:00', 'bo', '12');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '14:00', 'pessim', '24');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '20:00', 'pessim', '20');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('23-05-2018', 27, 10, 11,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '08:00', 'bo', '11');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '14:00', 'bo', '27');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '20:00', 'bo', '23');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('24-05-2018', 28, 12, 11,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '08:00', 'bo', '13');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '14:00', 'prou bo', '28');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '20:00', 'dolent', '23');
  
    INSERT INTO Papallones (nom, nomCientific) VALUES ('Papallona zebrada', 'Iphiclides podalirius');
    
    
    
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('19-05-2018', 24, 14, 11,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '08:00', 'prou bo', '14');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '14:00', 'bo', '23');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '20:00', 'dolent', '20');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('20-05-2018', 25, 11, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '08:00', 'bo', '15');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '14:00', 'prou bo', '25');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '20:00', 'bo', '21');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('21-05-2018', 26, 11, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '08:00', 'bo', '15');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '14:00', 'bo', '26');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '20:00', 'bo', '21');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('22-05-2018', 27, 13, 7,1,9);
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '08:00', 'bo', '15');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '14:00', 'excel·lent', '27');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '20:00', 'pluja', '22');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('23-05-2018', 29, 14, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '08:00', 'bo', '16');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '14:00', 'bo', '29');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '20:00', 'bo', '25');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('24-05-2018', 30, 16, 22,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '08:00', 'bo', '18');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '14:00', 'prou bo', '30');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '20:00', 'dolent', '25');
  
    INSERT INTO Papallones (nom, nomCientific) VALUES ('Papallona de la c blanca', 'Polygonia c-album');
    
    
    
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('19-05-2018', 24, 14, 11,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '08:00', 'prou bo', '14');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '14:00', 'bo', '23');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '20:00', 'dolent', '20');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('20-05-2018', 25, 11, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '08:00', 'bo', '14');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '14:00', 'prou bo', '25');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '20:00', 'bo', '21');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('21-05-2018', 26, 11, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '08:00', 'bo', '15');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '14:00', 'bo', '26');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '20:00', 'bo', '21');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('22-05-2018', 27, 13, 7,null 1,5);
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '08:00', 'bo', '15');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '14:00', 'excel·lent', '27');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '20:00', 'pluja', '22');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('23-05-2018', 29, 14, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '08:00', 'bo', '16');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '14:00', 'bo', '29');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '20:00', 'bo', '25');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('24-05-2018', 30, 16, 22,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '08:00', 'bo', '18');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '14:00', 'prou bo', '30');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '20:00', 'dolent', '25');
  
    INSERT INTO Papallones (nom, nomCientific) VALUES ('Papallona atles', 'Attacus atlas');
    
    
    
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('19-05-2018', 18, 8, 11,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '08:00', 'dolent', '8');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '14:00', 'dolent', '18');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '19-05-2018'), '20:00', 'dolent', '14');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('20-05-2018', 20, 7, 11,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '08:00', 'bo', '8');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '14:00', 'prou bo', '20');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '20-05-2018'), '20:00', 'bo', '15');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('21-05-2018', 20, 8, 14,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '08:00', 'bo', '9');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '14:00', 'excel·lent', '20');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '21-05-2018'), '20:00', 'prou bo', '17');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('22-05-2018', 20, 5, 7,13);
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '08:00', 'bo', '9');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '14:00', 'pluja', '19');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '22-05-2018'), '20:00', 'pluja', '16');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('23-05-2018', 23, 7, 11,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '08:00', 'bo', '8');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '14:00', 'bo', '23');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '23-05-2018'), '20:00', 'bo', '19');
  
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('24-05-2018', 24, 9, 11,null );
    
    
    
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '08:00', 'bo', '10');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '14:00', 'prou bo', '24');
  
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '24-05-2018'), '20:00', 'dolent', '19');
  