<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fees</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./styles/style.css">
    <link rel="icon" type="image/x-icon" href="../favicon.ico">
</head>

<body>
    <div class="text-white"><?php require('../nav.php') ?></div>
    <div class="min-h-screen w-full bg-neutral-950 text-white pt-5">
        <div class="bg-zinc-800 mx-auto p-4 rounded-lg container">
            <div class="heading mb-4">
                <h1 class="text-2xl font-bold">Fees</h1>
            </div>
            <?php
            // Include the database connection file
            require('../db_connect.php');
            $query = "SELECT * FROM student_fee_details";
            $result = $conn->query($query);
            // Check if there are any rows returned
            if ($result->num_rows > 0) {
                // Loop through each row of data
                while ($row = $result->fetch_assoc()) {
                    // Output the data in a new data div
                    echo '<div class="data p-3 rounded-lg m-3" style="background-color: #111111;">';
                    echo '<p class="text-md"><strong>Student ID:</strong> ' . $row['student_id'] . '</p>';
                    echo '<p class="text-md"><strong>Date:</strong> ' . $row['date'] . '</p>';
                    echo '<p class="text-md"><strong>Amount:</strong> ' . $row['amount'] . ' Rs.' . '</p>';
                    echo '<p class="text-md"><strong>Paid Till Date:</strong> ' . $row['paid_till_date'] . '</p>';
                    echo '<p class="text-md"><strong>Pending:</strong> ' . $row['pending'] . ' Rs.' . '</p>';
                    echo '<p class="text-md"><strong>Mode of Payment:</strong> ' . $row['mode_of_payment'] . '</p>';
                    echo '</div>';
                }
            } else {
                // If no rows are returned, display a message
                echo '<div class="data p-3 rounded-lg" style="background-color: #111111;">';
                echo '<p class="text-md font-bold">No fee entry found.</p>';
                echo '</div>';
            }
            ?>
        </div>
        <?php require("../footer.php"); ?>
    </div>
</body>

</html>