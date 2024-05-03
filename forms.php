<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forms</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./styles/style.css">
</head>

<body>
    <div class="min-h-screen w-full bg-neutral-950 text-white">
        <nav class="bg-zinc-800 flex items-center p-9 justify-between">
            <p class="text-3xl">SMJV</p>
            <ul class="flex text-center list-none text-xl">
                <li class="inline-block"><a href="./forms.php" class="no-underline px-9">Forms</a></li>
                <li class="inline-block"><a href="./index.php#dashboard-container" class="no-underline px-9">Dashboard</a></li>
            </ul>
        </nav>

        <div class="min-h-screen w-full bg-neutral-950 text-white">
            <?php
            require('./cards.php');
            ?>
        </div>
        <script src="./scripts/script.js"></script>
</body>

</html>