<?php
$pdo = require __DIR__ . '/../src/db.php';

$sql = "
SELECT t.id, t.title, u.name AS user_name, p.name AS project_name
FROM tasks t
INNER JOIN users u ON t.user_id = u.id
INNER JOIN projects p ON t.project_id = p.id
ORDER BY t.id
";

$data = $pdo->query($sql)->fetchAll();
?>
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<title>Aplicación PHP + MariaDB</title>
</head>
<body>
<h1>Listado de tareas</h1>
<table border="1">
<tr>
<th>ID</th><th>Tarea</th><th>Usuario</th><th>Proyecto</th>
</tr>
<?php foreach ($data as $row): ?>
<tr>
<td><?= $row['id'] ?></td>
<td><?= htmlspecialchars($row['title']) ?></td>
<td><?= htmlspecialchars($row['user_name']) ?></td>
<td><?= htmlspecialchars($row['project_name']) ?></td>
</tr>
<?php endforeach; ?>
</table>
</body>
</html>
