<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Employee</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./styles/style.css">
    <link rel="icon" type="image/x-icon" href="../favicon.ico">
</head>

<body>
    <div class="text-white"><?php require('../nav.php') ?></div>
    <div class="min-h-screen bg-neutral-950 text-white pt-5">
        <div class="bg-zinc-800 mx-auto p-4 rounded-lg container">
            <div class="flex justify-between items-center">
                <h2 class="text-2xl font-bold">Search Employee's Details</h2>
                <a onclick="history.back()">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="4" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 19.5 3 12m0 0 7.5-7.5M3 12h18" />
                    </svg>
                </a>
            </div>
            <form action="#" id="searchForm" method="POST" class="flex flex-col max-w rounded px-8 pt-6 pb-2">
                <div class="mb-4">
                    <div>
                        <label for="employee_id" class="block text-white text-md font-bold mb-1">Employee ID:</label>
                        <input type="text" id="employee_id" name="employee_id" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Employee ID">
                    </div>
                </div>
                <div>
                    <button type="submit" onclick="submitSearchForm()" class="bg-cyan-800 hover:bg-cyan-900 text-white w-full font-bold py-3 px-4 rounded-lg focus:outline-none focus:shadow-outline">Search Employee</button>
                </div>
            </form>
            <div class="m-4">
                <?php
                require("../db_connect.php");
                // Check if the form is submitted
                try {
                    if ($_SERVER["REQUEST_METHOD"] == "POST") {
                        // Retrieve form data
                        $employee_id = $_POST["employee_id"];
                        // Prepare SQL statement
                        $sql = "SELECT * FROM employees WHERE employee_id='$employee_id';";
                        // Execute SQL statement
                        $result = $conn->query($sql);
                        // Check if there are any rows returned
                        if ($result->num_rows > 0) {
                            // Loop through each row of data
                            while ($row = $result->fetch_assoc()) {
                                // Output the data in a new data div
                                echo '<div class="data p-3 rounded-lg m-3" style="background-color: #111111;">';
                                echo '<p class="text-md"><strong>Employee ID:</strong> ' . $row['employee_id'] . '</p>';
                                echo '<p class="text-md"><strong>Name:</strong> ' . $row['name'] . '</p>';
                                echo '<p class="text-md"><strong>Gender:</strong> ' . $row['gender'] . '</p>';
                                echo '<p class="text-md"><strong>Phone Number:</strong> ' . $row['phone_number'] . '</p>';
                                echo '<p class="text-md"><strong>Salary:</strong> ' . $row['salary'] . ' Rs.' . '</p>';
                                echo '<p class="text-md"><strong>Date of Join:</strong> ' . $row['date_of_join'] . '</p>';
                                echo '<p class="text-md"><strong>Date of Leave:</strong> ' . $row['date_of_leave'] . '</p>';
                                echo '<p class="text-md"><strong>Hostel ID:</strong> ' . $row['hostel_id'] . '</p>';
                                echo '</div>';
                            }
                        } else {
                            // If no rows are returned, display a message
                            echo '<div class="data p-3 rounded-lg" style="background-color: #111111;">';
                            echo '<p class="text-md font-bold">No employees found.</p>';
                            echo '</div>';
                        }
                    }
                } catch (Exception $e) {
                    // Catch any exceptions that occur and show in an alert
                ?>
                    <script>
                        alert("Error: <?php echo $e->getMessage(); ?>");
                    </script>
                <?php
                }
                ?>
            </div>
        </div>
        <?php require("../footer.php"); ?>
    </div>
    <script src="../scripts/script.js"></script>
</body>

</html>