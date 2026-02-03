-- db/users.sql
-- Usuario distinto de root con permisos mínimos.
-- IMPORTANTE: cambia la contraseña por una segura antes de ejecutar.

CREATE USER IF NOT EXISTS 'appuser'@'localhost' IDENTIFIED BY '1234';
CREATE USER IF NOT EXISTS 'appuser'@'127.0.0.1' IDENTIFIED BY '1234';

-- Permisos mínimos sobre el esquema (ajusta si tu app necesita escribir)
GRANT SELECT, INSERT, UPDATE, DELETE ON appdb.* TO 'appuser'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON appdb.* TO 'appuser'@'127.0.0.1';

FLUSH PRIVILEGES;
