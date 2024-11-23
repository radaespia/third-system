CREATE TABLE ProblemasDeSalud(
    id SERIAL PRIMARY KEY,
    nombre_problema VARCHAR(100) NOT NULL
);

CREATE TABLE Usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    numero_identificacion VARCHAR(20) UNIQUE NOT NULL,
    edad INT CHECK (edad >= 0),  -- Verifica que la edad sea un número positivo
    id_problema_salud INT,  -- Relación con la tabla ProblemasDeSalud
    FOREIGN KEY (id_problema_salud) REFERENCES ProblemasDeSalud(id) ON DELETE SET NULL
);


INSERT INTO ProblemasDeSalud (nombre_problema) VALUES ('vision');
INSERT INTO ProblemasDeSalud (nombre_problema) VALUES ('auiditivo');
INSERT INTO ProblemasDeSalud (nombre_problema) VALUES ('movilidad');


INSERT INTO Usuarios (nombre, apellido, numero_identificacion, edad, id_problema_salud)
VALUES ('Juan', 'Pérez', '123456789', 45, 1);  -- Asocia a Juan con "probleama de salud"
INSERT INTO Usuarios (nombre, apellido, numero_identificacion, edad, id_problema_salud)
VALUES ('Ana', 'García', '987654321', 30, 2);  -- Asocia a Ana con "probleama de salud"
INSERT INTO Usuarios (nombre, apellido, numero_identificacion, edad, id_problema_salud)
VALUES ('Luis', 'Martínez', '111222333', 60, 3);  -- Asocia a Luis con "probleama de salud"

SELECT * FROM Usuarios;
