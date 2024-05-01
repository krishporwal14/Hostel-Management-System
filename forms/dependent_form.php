<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dependent Form</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./styles/style.css">
    <script>
        // Function to show popup when form is successfully submitted
        function showSuccessPopup() {
            alert("Form submitted successfully!");
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
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Retrieve form data
        $student_id = $_POST["student_id"];
        $dependent_phone_number = $_POST["dependent_phone_number"];
        $name = $_POST["name"];
        $age = $_POST["age"];
        $relation = $_POST["relation"];
        // Prepare SQL statement
        $sql = "INSERT INTO dependents (student_id, dependent_phone_number, name, age, relation) VALUES ('$student_id', '$dependent_phone_number', '$name', $age, '$relation')";
        // Execute SQL statement
        if ($conn->query($sql) === TRUE) {
            // Send response to frontend
            $response = array('success' => true);
            echo json_encode($response);
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
        // After the form submission is successful, redirect back to the same page with a success parameter
        header("Location: dependent_form.php?success=true");
        exit();
    }
?>
    <div class="text-white"><?php require('../nav.php') ?></div>
    <div class="min-h-screen bg-neutral-950 text-white pt-5">
        <div class="bg-zinc-800 mx-auto p-4 rounded-lg container">
            <div class="flex justify-between items-center">
                <h2 class="text-2xl font-bold">Dependent's Details</h2>
                <a onclick="history.back()">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="4" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 19.5 3 12m0 0 7.5-7.5M3 12h18" />
                    </svg>
                </a>
            </div>
            <form action="#" id="dependentForm" method="POST" class="flex flex-col max-w rounded px-8 pt-6 pb-2">
    <div class="grid grid-cols-2 gap-5 mb-4">
        <div>
            <label for="student_id" class="block text-white text-md font-bold mb-1">Student ID:</label>
            <input type="text" id="student_id" name="student_id" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Student ID">
        </div>
        <div>
            <label for="dependent_phone_number" class="block text-white text-md font-bold mb-1">Dependent Phone Number:</label>
            <input type="number" id="dependent_phone_number" name="dependent_phone_number" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Dependent Phone Number">
        </div>
    </div>
    <div class="mb-4">
        <label for="name" class="block text-white text-md font-bold mb-1">Name:</label>
        <input type="text" id="name" name="name" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Name">
    </div>
    <div class="grid grid-cols-2 mb-4 gap-5">
    <div>
        <label for="age" class="block text-white text-md font-bold mb-1">Age:</label>
        <input type="number" id="age" name="age" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Age">
    </div>
    <div>
        <label for="relation" class="block text-white text-md font-bold mb-1">Relation:</label>
        <input type="text" id="relation" name="relation" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Relation">
    </div>
    </div>
    <div>
        <button type="submit" onclick="submitDependentForm()" class="bg-cyan-800 hover:bg-cyan-900 text-white w-full font-bold py-3 px-4 rounded-lg focus:outline-none focus:shadow-outline">Add Dependent</button>
    </div>
</form>

        </div>
    </div>
    <script src="../scripts/script.js"></script>
</body>
</html>
