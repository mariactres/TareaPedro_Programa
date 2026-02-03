-- db/queries.sql
USE appdb;

-- INNER JOIN: listar tareas con su usuario y proyecto
SELECT
  t.id,
  t.title,
  t.status,
  u.name AS user_name,
  p.name AS project_name,
  t.created_at
FROM tasks t
INNER JOIN users u ON t.user_id = u.id
INNER JOIN projects p ON t.project_id = p.id
ORDER BY t.id;

-- (Opcional) Contar tareas por estado
SELECT status, COUNT(*) AS total
FROM tasks
GROUP BY status
ORDER BY total DESC;
