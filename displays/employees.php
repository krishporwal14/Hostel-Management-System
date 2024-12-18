<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employees</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
    <link rel="stylesheet" href="./styles/style.css">
    <link rel="icon" type="image/x-icon" href="../favicon.ico">
    <script>
        function downloadPDF() {
            const downloadContent = document.getElementById('downloadSection');

            html2pdf().from(downloadContent).set({
                margin: 1,
                filename: 'employees.pdf',
                html2canvas: {
                    scale: 2
                },
                jsPDF: {
                    unit: 'in',
                    format: 'letter',
                    orientation: 'portrait'
                }
            }).save();
        }
    </script>
</head>

<body>
    <div class="text-white"><?php require('../nav.php') ?></div>
    <div class="min-h-screen w-full bg-neutral-950 text-white pt-5">
        <div class="bg-zinc-800 mx-auto p-4 rounded-lg container">
            <div id="downloadSection" class="text-white">
                <div class="heading mb-4">
                    <h1 class="text-2xl font-bold">Employees</h1>
                </div>
                <?php
                // Include the database connection file
                require('../db_connect.php');
                $query = "SELECT * FROM employee_details";
                $result = $conn->query($query);
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
                ?>
            </div>
            <button onclick="downloadPDF()" class="bg-cyan-800 hover:bg-cyan-900 text-white w-full font-bold py-3 px-4 rounded-lg focus:outline-none focus:shadow-outline">Download</button>
        </div>
        <?php require("../footer.php"); ?>
    </div>
</body>

</html>