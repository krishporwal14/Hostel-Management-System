<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SMJV Hostel Management System</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./styles/style.css">
</head>
<body>
    <?php
        require('db_connect.php');
    ?>
    <div class="min-h-screen w-full bg-neutral-950 text-white">
        <?php 
            require('./nav.php');
            require('./cards.php');
        ?>
    </div>
    <script src="./scripts/script.js"></script>
</body>
</html>
