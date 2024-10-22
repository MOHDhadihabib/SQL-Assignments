CREATE DATABASE ShajraNasab;
USE ShajraNasab;

CREATE TABLE Khandan (
  ID INT NOT NULL PRIMARY KEY identity(1,1),
  NAME NVARCHAR(255),
  DaughterAndSonOf INT,
  FOREIGN KEY (DaughterAndSonOf) REFERENCES Khandan(ID)
);

INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Abdullah', NULL);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Muhammad (SAW)', 1);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Qasim', 2);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Abdullah', 2);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Ibrahim', 2);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Zainab', 2);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Ruqaiya', 2);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Umme-Kulsoom', 2);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Fatima', 2);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Ali', 6);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Aumaima', 6);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Abdullah', 7);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Hassan', 9);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Mohsin', 9);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Hussain', 9);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Zainab', 9);
INSERT INTO Khandan (Name, DaughterAndSonOf) VALUES ('Hazrat Umme-Kulsoom', 9);

SELECT * FROM Khandan;

SELECT a.Name AS 'Name', b.Name AS 'DaughterAndSonOf' 
FROM Khandan a 
INNER JOIN Khandan b 
ON a.DaughterAndSonOf = b.ID;

SELECT a.Name AS 'Name', b.Name AS 'DaughterAndSonOf' 
FROM Khandan a, Khandan b 
WHERE a.DaughterAndSonOf = b.ID;

