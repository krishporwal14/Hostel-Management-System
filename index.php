<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./styles/style.css">
</head>
<body>
    <?php
        require('db_connect.php');
    ?>
    <div class="min-h-screen bg-neutral-950">
        <nav class="bg-zinc-800 text-white flex items-center p-12">
            <h2>SMJV</h2>
            <u class="flex-1 text-center">
                <li class="list-none inline-block no-underline"><a href="#" class="px-2">Forms</a></li>
                <li class="list-none inline-block no-underline"><a href="#" class="px-2">Hostel</a></li>
                <li class="list-none inline-block no-underline"><a href="#" class="px-2">Student</a></li>
                <li class="list-none inline-block no-underline"><a href="#" class="px-2">Employees</a></li>
                <li class="list-none inline-block no-underline"><a href="#" class="px-2">Rooms</a></li>
                <li class="list-none inline-block no-underline"><a href="#" class="px-2">Fees</a></li>
            </u>
        </nav>
    </div>
    <script src="./scripts/script.js"></script>
</body>
</html>