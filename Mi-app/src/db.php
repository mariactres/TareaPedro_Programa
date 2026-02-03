<?php
// src/db.php
$config = require __DIR__ . '/../config.php';

$dsn = "mysql:host={$config['host']};dbname={$config['db']};charset=utf8mb4";

$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
];

return new PDO($dsn, $config['user'], $config['pass'], $options);
