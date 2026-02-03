### Estructura del proyecto

/db
- schema.sql
- seed.sql
- users.sql
- queries.sql

/src
- db.php (conexión a MariaDB mediante PDO)

/public
- index.php (aplicación PHP accesible por navegador)

El directorio `public/` se configura como `DocumentRoot` en Apache.
La aplicación utiliza un usuario de base de datos distinto de root y recupera datos mediante una consulta INNER JOIN.
