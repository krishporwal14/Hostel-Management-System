<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Form</title>
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
        $room_number = $_POST["room_number"];
        $hostel_id = $_POST["hostel_id"];
        $capacity = $_POST["capacity"];
        // Prepare SQL statement
        $sql = "INSERT INTO rooms (room_number, hostel_id, capacity) VALUES ('$room_number', '$hostel_id', '$capacity')";
        // Execute SQL statement
        if ($conn->query($sql) === TRUE) {
            // Send response to frontend
            $response = array('success' => true);
            echo json_encode($response);
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
        // After the form submission is successful, redirect back to the same page with a success parameter
        header("Location: room_form.php?success=true");
        exit();
    }
?>
    <div class="text-white"><?php require('../nav.php') ?></div>
    <div class="min-h-screen bg-neutral-950 text-white pt-5">
        <div class="bg-zinc-800 mx-auto p-4 rounded-lg container">
            <div class="flex justify-between items-center">
                <h2 class="text-2xl font-bold">Room's Details</h2>
                <a onclick="history.back()">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="4" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 19.5 3 12m0 0 7.5-7.5M3 12h18" />
                    </svg>
                </a>
            </div>
            <form action="#" id="roomForm" method="POST" class="flex flex-col max-w rounded px-8 pt-6 pb-2">
                <div class="grid grid-cols-2 gap-5 mb-4">
                    <div>
                        <label for="room_number" class="block text-white text-md font-bold mb-1">Room Number:</label>
                        <input type="number" id="room_number" name="room_number" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Room Number">
                    </div>
                    <div>
                        <label for="capacity" class="block text-white text-md font-bold mb-1">Capacity:</label>
                        <input type="number" id="capacity" name="capacity" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Capacity">
                    </div>
                </div>
                <div class="mb-4">
                    <label for="hostel_id" class="block text-white text-md font-bold mb-1">Hostel ID:</label>
                    <input type="text" id="hostel_id" name="hostel_id" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Hostel ID">
                </div>
                <div>
                    <button type="submit" onclick="submitRoomForm()" class="bg-cyan-800 hover:bg-cyan-900 text-white w-full font-bold py-3 px-4 rounded-lg focus:outline-none focus:shadow-outline">Add Room</button>
                </div>
            </form>
        </div>
    </div>
    <script src="../scripts/script.js"></script>
</body>

</html>