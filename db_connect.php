<?php
    // Connect to MariaDB
    $dbname = 'smjv';
    $dbuser = 'root';
    $dbpass = 'root@krish';
    $dbhost = 'localhost';
    $conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
?>
