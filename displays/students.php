<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Students</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./styles/style.css">
    <link rel="icon" type="image/x-icon" href="../favicon.ico">
</head>

<body>
    <div class="text-white"><?php require('../nav.php') ?></div>
    <div class="min-h-screen w-full bg-neutral-950 text-white pt-5">
        <div class="bg-zinc-800 mx-auto p-4 rounded-lg container">
            <div class="heading mb-4">
                <h1 class="text-2xl font-bold">Students</h1>
            </div>
            <?php
            // Include the database connection file
            require('../db_connect.php');
            $query = "SELECT * FROM students";
            $result = $conn->query($query);
            // Check if there are any rows returned
            if ($result->num_rows > 0) {
                // Loop through each row of data
                while ($row = $result->fetch_assoc()) {
                    // Output the data in a new data div
                    echo '<div class="data p-3 rounded-lg m-3" style="background-color: #111111;">';
                    echo '<p class="text-md"><strong>Student ID:</strong> ' . $row['student_id'] . '</p>';
                    echo '<p class="text-md"><strong>Name:</strong> ' . $row['name'] . '</p>';
                    echo '<p class="text-md"><strong>Age:</strong> ' . $row['age'] . '</p>';
                    echo '<p class="text-md"><strong>Address:</strong> ' . $row['address'] . '</p>';
                    echo '<p class="text-md"><strong>Course:</strong> ' . $row['course'] . '</p>';
                    echo '<p class="text-md"><strong>Student Phone Number:</strong> ' . $row['student_phone_number'] . '</p>';
                    echo '<p class="text-md"><strong>Dependent Phone Number:</strong> ' . $row['dependent_phone_number'] . '</p>';
                    echo '<p class="text-md"><strong>Date of Join:</strong> ' . $row['date_of_join'] . '</p>';
                    echo '<p class="text-md"><strong>Date of Leave:</strong> ' . $row['date_of_leave'] . '</p>';
                    echo '<p class="text-md"><strong>Hostel ID:</strong> ' . $row['hostel_id'] . '</p>';
                    echo '</div>';
                }
            } else {
                // If no rows are returned, display a message
                echo '<div class="data p-3 rounded-lg" style="background-color: #111111;">';
                echo '<p class="text-md font-bold">No students found.</p>';
                echo '</div>';
            }
            ?>
        </div>
        <?php require("../footer.php"); ?>
    </div>
</body>

</html>