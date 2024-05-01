<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Form</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./styles/style.css">
</head>
<body>
    <div class="min-h-screen bg-neutral-950 text-white pt-5">
        <div class="bg-zinc-800 mx-auto p-4 rounded-lg container">
            <div class="flex justify-between items-center">
                <h2 class="text-2xl font-bold">Employee's Details</h2>
                <a onclick="history.back()">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="4" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 19.5 3 12m0 0 7.5-7.5M3 12h18" />
                    </svg>
                </a>
            </div>
            <form action="#" method="POST" class="flex flex-col max-w rounded px-8 pt-6 pb-2">
                <div class="grid grid-cols-2 gap-5 mb-4">
                    <div>
                        <label for="employee_id" class="block text-white text-md font-bold mb-1">Employee ID:</label>
                        <input type="text" id="employee_id" name="employee_id" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Employee ID">
                    </div>
                    <div>
                        <label for="name" class="block text-white text-md font-bold mb-1">Name:</label>
                        <input type="text" id="name" name="name" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Name">
                    </div>
                </div>
                <div class="mb-4">
                    <label for="gender" class="block text-white text-md font-bold mb-1">Gender:</label>
                    <select id="gender" name="gender" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline">
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                    </select>
                </div>
                <div class="grid grid-cols-2 gap-5 mb-4">
                    <div>
                        <label for="phone_number" class="block text-white text-md font-bold mb-1">Phone Number:</label>
                        <input type="number" id="phone_number" name="phone_number" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Phone Number">
                    </div>
                    <div>
                        <label for="salary" class="block text-white text-md font-bold mb-1">Salary:</label>
                        <input type="number" id="salary" name="salary" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Salary">
                    </div>
                </div>
                <div class="grid grid-cols-2 gap-5 mb-4">
                    <div>
                        <label for="date_of_join" class="block text-white text-md font-bold mb-1">Date of Join:</label>
                        <input type="date" id="date_of_join" name="date_of_join" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline accent-black">
                    </div>
                    <div>
                        <label for="date_of_leave" class="block text-white text-md font-bold mb-1">Date of Leave:</label>
                        <input type="date" id="date_of_leave" name="date_of_leave" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline accent-black">
                    </div>
                </div>
                <div>
                    <button type="submit" class="bg-cyan-800 hover:bg-cyan-900 text-white w-full font-bold py-3 px-4 rounded-lg focus:outline-none focus:shadow-outline">Add Employee</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>