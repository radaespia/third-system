CREATE TABLE tareas (
    id_tarea SERIAL PRIMARY KEY,
    id_proyecto INT REFERENCES proyectos(id_proyecto) ON DELETE CASCADE,
    descripcion TEXT NOT NULL,   
    estado VARCHAR(50) DEFAULT 'Pendiente', -- Ejemplo de estados: "Pendiente", "En progreso", "Completada"
    fecha_limite DATE,
    prioridad VARCHAR(50) DEFAULT 'Media', -- Ejemplo de prioridades: "Alta", "Media", "Baja"
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tareas (id_proyecto, descripcion, asignado_a, estado, fecha_limite, prioridad)
VALUES (1, 'Diseñar la interfaz de usuario', 2, 'Pendiente', '2024-12-15', 'Alta');
