CREATE TABLE proyectos (
    id_proyecto SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    fecha_inicio DATE,
    fecha_fin DATE,
    estado VARCHAR(50) DEFAULT 'En progreso', -- Ejemplo de estados: "En progreso", "Completado", "Cancelado"
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO proyectos (id_usuario, nombre, descripcion, fecha_inicio, fecha_fin)
VALUES (1, 'Proyecto A', 'Descripción del proyecto A', '2024-12-01', '2025-01-15');
