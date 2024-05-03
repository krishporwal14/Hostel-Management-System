<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hostel Branches</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./styles/style.css">
</head>

<body>
    <div class="text-white"><?php require('../nav.php') ?></div>
    <div class="min-h-screen w-full bg-neutral-950 text-white pt-5">
        <div class="bg-zinc-800 mx-auto p-4 rounded-lg container">
            <div class="heading mb-4">
                <h1 class="text-2xl font-bold">Hostel Branches</h1>
            </div>
            <?php
            // Include the database connection file
            require('../db_connect.php');
            $query = "SELECT * FROM hostel_branch";
            $result = $conn->query($query);
            // Check if there are any rows returned
            if ($result->num_rows > 0) {
                // Loop through each row of data
                while ($row = $result->fetch_assoc()) {
                    // Output the data in a new data div
                    echo '<div class="data p-3 rounded-lg m-3" style="background-color: #111111;">';
                    echo '<p class="text-md"><strong>Hostel ID:</strong> ' . $row['hostel_id'] . '</p>';
                    echo '<p class="text-md"><strong>Name:</strong> ' . $row['hostel_name'] . '</p>';
                    echo '<p class="text-md"><strong>Address:</strong> ' . $row['address'] . '</p>';
                    echo '<p class="text-md"><strong>Number of Rooms:</strong> ' . $row['number_of_rooms'] . '</p>';
                    echo '<p class="text-md"><strong>Number of Students:</strong> ' . $row['number_of_students'] . '</p>';
                    echo '</div>';
                }
            } else {
                // If no rows are returned, display a message
                echo '<div class="data p-3 rounded-lg" style="background-color: #111111;">';
                echo '<p class="text-md font-bold">No hostel branches found.</p>';
                echo '</div>';
            }
            ?>
        </div>
        <?php require("../footer.php"); ?>
    </div>
</body>

</html>
