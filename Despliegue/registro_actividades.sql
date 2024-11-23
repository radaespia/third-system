CREATE TABLE registro_actividades (
    id_registro SERIAL PRIMARY KEY, 
    actividad VARCHAR(255) NOT NULL, -- Descripción de la actividad (ej. "Creó un proyecto", "Completó una tarea")
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO registro_actividades 
VALUES (1, 'Creó el proyecto "Proyecto A"');
