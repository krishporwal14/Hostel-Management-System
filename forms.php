<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forms</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./styles/style.css">
    <link rel="icon" type="image/x-icon" href="./favicon.ico">
</head>

<body>
    <div class="min-h-screen w-full bg-neutral-950 text-white">
        <nav class="bg-zinc-800 flex items-center p-9 justify-between">
            <p class="text-3xl font-bold"><a href="./index.php#dashboard-container">SMJV</a></p>
            <ul class="flex text-center list-none text-xl">
                <li class="inline-block"><a href="./forms.php" class="no-underline active:font-bold px-9">Forms</a></li>
                <li class="inline-block"><a href="./displays/hostel_branch.php" class="no-underline active:font-bold px-9">Hostel</a></li>
                <li class="inline-block"><a href="./displays/students.php" class="no-underline active:font-bold px-9">Student</a></li>
                <li class="inline-block"><a href="./displays/employees.php" class="no-underline active:font-bold px-9">Employees</a></li>
                <li class="inline-block"><a href="./displays/rooms.php" class="no-underline active:font-bold px-9">Rooms</a></li>
                <li class="inline-block"><a href="./displays/fees.php" class="no-underline active:font-bold px-9">Fees</a></li>
            </ul>
        </nav>

        <div class="min-h-screen w-full bg-neutral-950 text-white">
            <?php
            require('./cards.php');
            ?>
        </div>
        <?php require("./footer.php"); ?>
        <script src="./scripts/script.js"></script>
</body>

</html>