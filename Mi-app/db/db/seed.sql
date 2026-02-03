-- db/seed.sql
-- Datos de prueba (>= 20 registros)

USE appdb;

INSERT INTO users (name, email) VALUES
('Ana Torres','ana.torres@example.com'),
('Luis Perez','luis.perez@example.com'),
('Marta Gomez','marta.gomez@example.com'),
('Diego Ruiz','diego.ruiz@example.com'),
('Sofia Martin','sofia.martin@example.com'),
('Carlos Vega','carlos.vega@example.com'),
('Elena Diaz','elena.diaz@example.com'),
('Javier Molina','javier.molina@example.com'),
('Lucia Santos','lucia.santos@example.com'),
('Pablo Navarro','pablo.navarro@example.com');

INSERT INTO projects (name) VALUES
('Web corporativa'),
('Intranet'),
('App movil');

INSERT INTO tasks (user_id, project_id, title, status) VALUES
(1,1,'Crear landing page','doing'),
(1,1,'Optimizar SEO','todo'),
(2,1,'Configurar Analytics','done'),
(2,2,'Disenar dashboard','doing'),
(3,2,'Migrar contenidos','todo'),
(3,3,'Definir endpoints API','doing'),
(4,3,'Prototipo pantallas','done'),
(4,2,'Revisar permisos','todo'),
(5,1,'Maquetar seccion contacto','done'),
(5,3,'Notificaciones push','todo'),
(6,2,'Integracion SSO','doing'),
(6,1,'Mejorar rendimiento','todo'),
(7,3,'Testing funcional','doing'),
(7,2,'Documentacion usuarios','todo'),
(8,1,'Ajustes de accesibilidad','done'),
(8,2,'Exportacion CSV','todo'),
(9,3,'Publicacion en store','todo'),
(9,1,'Corregir bugs UI','doing'),
(10,2,'Monitorizacion','done');
