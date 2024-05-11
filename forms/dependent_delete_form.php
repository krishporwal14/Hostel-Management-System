<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Dependent</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./styles/style.css">
    <link rel="icon" type="image/x-icon" href="../favicon.ico">
    <script>
        // Function to show popup when form is successfully submitted
        function showSuccessPopup() {
            alert("Entry Deleted successfully!");
            // You can customize the popup as per your requirement using modal, toast, or any other library
        }

        // Check if the form was submitted successfully
        <?php
        if (isset($_GET['success']) && $_GET['success'] == 'true') {
            echo 'showSuccessPopup();';
        }
        ?>
    </script>
</head>

<body>
    <?php
    require('../db_connect.php');
    // Check if the form is submitted
    try {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // Retrieve form data
            $student_id = $_POST["student_id"];
            // Prepare SQL statement
            $sql = "DELETE FROM dependents WHERE student_id='$student_id';";
            // Execute SQL statement
            if ($conn->query($sql) === TRUE) {
                // Send response to frontend
                $response = array('success' => true);
                echo json_encode($response);
            } else {
                // Error occurred, show it in an alert
                ?>
                <script>
                    alert("Error: <?php echo $conn->error; ?>");
                </script>
                <?php
            }
            // Redirect back to the form
            header("Location: dependent_delete_form.php?success=true");
            exit();
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
    <div class="text-white"><?php require('../nav.php') ?></div>
    <div class="min-h-screen bg-neutral-950 text-white pt-5">
        <div class="bg-zinc-800 mx-auto p-4 rounded-lg container mb-28">
            <div class="flex justify-between items-center">
                <h2 class="text-2xl font-bold">Delete Dependent's Details</h2>
                <a onclick="history.back()">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="4" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 19.5 3 12m0 0 7.5-7.5M3 12h18" />
                    </svg>
                </a>
            </div>
            <form action="#" id="dependentForm" method="POST" class="flex flex-col max-w rounded px-8 pt-6 pb-2">
                <div class="mb-4">
                    <div>
                        <label for="student_id" class="block text-white text-md font-bold mb-1">Student ID:</label>
                        <input type="text" id="student_id" name="student_id" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Student ID">
                    </div>
                </div>
                <div>
                    <button type="submit" onclick="submitDeleteForm()" class="bg-red-800 hover:bg-red-900 text-white w-full font-bold py-3 px-4 rounded-lg focus:outline-none focus:shadow-outline">Delete Dependent</button>
                </div>
            </form>

        </div>
        <?php require("../footer.php"); ?>
    </div>
    <script src="../scripts/script.js"></script>
</body>

</html>