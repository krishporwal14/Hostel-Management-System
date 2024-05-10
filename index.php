<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SMJV Hostel Management System</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./styles/style.css">
    <link rel="icon" type="image/x-icon" href="./favicon.ico">
</head>

<body>
    <?php
    require('./db_connect.php');
    // Total Number of Rooms Chart
    $totalNumberOfRoomsLables = array();
    $totalNumberOfRoomsData = array();
    $queryTotalNumberOfRooms = "SELECT hostel_name, number_of_rooms FROM hostel_branch";
    $totalNumberOfRoomsResults = $conn->query($queryTotalNumberOfRooms);
    if ($totalNumberOfRoomsResults->num_rows > 0) {
        foreach ($totalNumberOfRoomsResults as $row) {
            $totalNumberOfRoomsLables[] = $row['hostel_name'];
            $totalNumberOfRoomsData[] = $row['number_of_rooms'];
        }
    }

    // Total Number of Students Chart
    $totalNumberOfStudentsLables = array();
    $totalNumberOfStudentsData = array();
    $queryTotalNumberOfStudents = "SELECT hostel_name, number_of_students FROM hostel_branch";
    $totalNumberOfStudentsResults = $conn->query($queryTotalNumberOfStudents);
    if ($totalNumberOfStudentsResults->num_rows > 0) {
        foreach ($totalNumberOfStudentsResults as $row) {
            $totalNumberOfStudentsLables[] = $row['hostel_name'];
            $totalNumberOfStudentsData[] = $row['number_of_students'];
        }
    }

    // Age Chart
    $studentDemographicsData = array();
    $queryAgeChart = "SELECT age, COUNT(*) as count FROM students GROUP BY age";
    $ageChartResults = $conn->query($queryAgeChart);
    if ($ageChartResults->num_rows > 0) {
        while ($row = $ageChartResults->fetch_assoc()) {
            $studentDemographicsData[$row['age']] = $row['count'];
        }
    }

    // Courses Chart
    $studentCoursesData = array();
    $queryCoursesChart = "SELECT course, COUNT(*) as count FROM students GROUP BY course";
    $coursesChartResults = $conn->query($queryCoursesChart);
    if ($coursesChartResults->num_rows > 0) {
        while ($row = $coursesChartResults->fetch_assoc()) {
            $studentCoursesData[$row['course']] = $row['count'];
        }
    }

    // Employee Chart
    $salaries = array(); // Array to store salaries
    $queryEmployeeChart = "SELECT salary FROM employees";
    $employeeChartResults = $conn->query($queryEmployeeChart);
    if ($employeeChartResults->num_rows > 0) {
        while ($row = $employeeChartResults->fetch_assoc()) {
            $salaries[] = $row['salary'];
        }
    }
    // Define salary range labels in rupees
    $labels = array('< ₹40k', '₹40k - ₹50k', '₹50k - ₹60k', '> ₹60k');
    // Count the number of employees in each salary range
    $count = array_fill(0, 4, 0); // Initialize count array
    foreach ($salaries as $salary) {
        if ($salary < 40000) {
            $count[0]++;
        } elseif ($salary >= 40000 && $salary < 50000) {
            $count[1]++;
        } elseif ($salary >= 50000 && $salary < 60000) {
            $count[2]++;
        } else {
            $count[3]++;
        }
    }

    // Dependent Chart
    // Fetch data from the Dependents table
    $ageCounts = array(); // Array to store counts of dependents based on age range
    $queryDependentChart = "SELECT FLOOR(age / 10) * 10 AS age_range, COUNT(*) AS count FROM dependents GROUP BY FLOOR(age / 10) * 10";
    $dependentChartResults = $conn->query($queryDependentChart);
    if ($dependentChartResults->num_rows > 0) {
        while ($row = $dependentChartResults->fetch_assoc()) {
            $ageCounts[$row['age_range']] = $row['count'];
        }
    }
    ?>
    <div class="min-h-screen w-full bg-neutral-950 text-white">
        <nav class="bg-zinc-800 flex items-center p-9 justify-between">
            <p class="text-3xl font-bold"><a href="./index.php#dashboard-container">SMJV</a></p>
            <ul class="flex text-center list-none text-xl">
                <li class="inline-block"><a href="./forms.php" class="no-underline active:font-bold px-9">Forms</a></li>
                <li class="inline-block"><a href="https://app.powerbi.com/groups/me/reports/2899d63e-c726-45d2-b2e7-9c63e1648ada/ReportSection?experience=power-bi" target="_blank" class="no-underline active:font-bold px-9">Dashboard</a></li>
                <li class="inline-block"><a href="./displays/hostel_branch.php" class="no-underline active:font-bold px-9">Hostel</a></li>
                <li class="inline-block"><a href="./displays/students.php" class="no-underline active:font-bold px-9">Student</a></li>
                <li class="inline-block"><a href="./displays/employees.php" class="no-underline active:font-bold px-9">Employees</a></li>
                <li class="inline-block"><a href="./displays/rooms.php" class="no-underline active:font-bold px-9">Rooms</a></li>
                <li class="inline-block"><a href="./displays/fees.php" class="no-underline active:font-bold px-9">Fees</a></li>
            </ul>
        </nav>

        <div id="dashboard-container" class="grid grid-rows-3">
            <div id="first-container" class="m-3 p-5 rounded-lg bg-zinc-800">
                <div class="heading mb-4">
                    <h1 class="text-2xl font-bold">Total Number of Rooms and Students</h1>
                </div>
                <div class="grid grid-cols-2 gap-5">
                    <div id="totalNumberOfRoomsChartContainer" class="flex justify-center items-center container rounded-lg p-3" style="background-color: #111111;">
                        <canvas id="totalNumberOfRoomsChart"></canvas>
                    </div>
                    <div id="totalNumberOfStudentsChartContainer" class="flex justify-center items-center container rounded-lg p-3" style="background-color: #111111;">
                        <canvas id="totalNumberOfStudentsChart"></canvas>
                    </div>
                </div>
            </div>
            <div id="second-container" class="m-3 p-5 rounded-lg bg-zinc-800">
                <div class="heading mb-4">
                    <h1 class="text-2xl font-bold">Students</h1>
                </div>
                <div class="grid grid-cols-3 gap-5">
                    <div id="ageChartContainer" class="col-span-1 flex justify-center items-center container rounded-lg p-3" style="background-color: #111111;">
                        <canvas id="ageChart"></canvas>
                    </div>
                    <div id="coursesChartContainer" class="col-span-2 flex justify-center items-center container rounded-lg p-3" style="background-color: #111111;">
                        <canvas id="coursesChart"></canvas>
                    </div>
                </div>
            </div>
            <div class="grid grid-cols-2 gap-5">
                <div id="third-container" class="m-3 p-5 rounded-lg bg-zinc-800">
                    <div class="heading mb-4">
                        <h1 class="text-2xl font-bold">Employees</h1>
                    </div>
                    <div class="flex justify-center items-center">
                        <div id="employeeChartContainer" class="flex justify-center items-center container rounded-lg p-3" style="background-color: #111111;">
                            <canvas id="employeeChart" height="300"></canvas>
                        </div>
                    </div>
                </div>
                <div id="fourth-container" class="m-3 p-5 rounded-lg bg-zinc-800">
                    <div class="heading mb-4">
                        <h1 class="text-2xl font-bold">Dependents</h1>
                    </div>
                    <div class="flex justify-center items-center">
                        <div id="dependentChartContainer" class="flex justify-center items-center container rounded-lg p-3" style="background-color: #111111;">
                            <canvas id="dependentChart" height="300"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php require("./footer.php"); ?>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    </div>
    <script src="./scripts/script.js"></script>
    <script>
        var totalNumberOfRoomsData = {
            labels: <?php echo json_encode($totalNumberOfRoomsLables); ?>,
            datasets: [{
                data: <?php echo json_encode($totalNumberOfRoomsData); ?>,
                backgroundColor: ['#FFE605', '#00FFF5', '#FF05C8']
            }]
        }
        var totalNumberOfStudentsData = {
            labels: <?php echo json_encode($totalNumberOfStudentsLables); ?>,
            datasets: [{
                data: <?php echo json_encode($totalNumberOfStudentsData); ?>,
                backgroundColor: ['#FFE605', '#00FFF5', '#FF05C8']
            }]
        }
        var studentDemographics = <?php echo json_encode($studentDemographicsData); ?>;
        var ageGroups = Object.keys(studentDemographics);
        var counts = Object.values(studentDemographics);
        var studentDemographicsData = {
            labels: ageGroups,
            datasets: [{
                data: counts,
                backgroundColor: ['#FFE605', '#00FFF5', '#FF05C8', '#FFD500', '#00FFB7', '#FF0592', '#FF8C00', '#00FF80', '#FF0573', '#FFB400', '#00FFCC', '#FF05A6', '#FF5733']
            }]
        };
        var course = <?php echo json_encode($studentCoursesData); ?>;
        var courses = Object.keys(course);
        var counts = Object.values(course);
        var studentCoursesData = {
            labels: courses,
            datasets: [{
                label: 'Number of Students',
                backgroundColor: ['#FFE605', '#00FFF5', '#FF05C8'],
                borderWidth: 0,
                data: counts
            }]
        }
        var employeeData = {
            labels: <?php echo json_encode($labels); ?>, // Labels for the chart
            datasets: [{
                label: 'Employee Salary Distribution', // Dataset label
                data: <?php echo json_encode($count); ?>, // Data values
                backgroundColor: '#FF05C8',
                borderWidth: 0
            }]
        }
        var dependentData = {
            labels: <?php echo json_encode(array_keys($ageCounts)); ?>, // Labels for the chart
            datasets: [{
                label: 'Dependent Age Distribution', // Dataset label
                data: <?php echo json_encode(array_values($ageCounts)); ?>, // Data values
                backgroundColor: '#00FFF5',
                borderWidth: 0
            }]
        }

        window.onload = function() {
            var ctx1 = document.getElementById("totalNumberOfRoomsChart").getContext("2d");
            window.myPie = new Chart(ctx1, {
                type: 'pie',
                data: totalNumberOfRoomsData,
                options: {
                    responsive: false,
                    elements: {
                        arc: {
                            borderWidth: 0 // remove border from pie chart
                        }
                    }
                }
            });
            var ctx2 = document.getElementById("totalNumberOfStudentsChart").getContext("2d");
            window.myPie = new Chart(ctx2, {
                type: 'pie',
                data: totalNumberOfStudentsData,
                options: {
                    responsive: false,
                    elements: {
                        arc: {
                            borderWidth: 0 // remove border from pie chart
                        }
                    }
                }
            });
            var ctx3 = document.getElementById("ageChart").getContext("2d");
            window.myPie = new Chart(ctx3, {
                type: 'pie',
                data: studentDemographicsData,
                options: {
                    responsive: false,
                    elements: {
                        arc: {
                            borderWidth: 0 // remove border from pie chart
                        }
                    }
                }
            });
            var ctx4 = document.getElementById('coursesChart').getContext('2d');
            window.myBar = new Chart(ctx4, {
                type: 'bar',
                data: studentCoursesData,
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
            var ctx5 = document.getElementById('employeeChart').getContext('2d');
            window.myBar = new Chart(ctx5, {
                type: 'bar',
                data: employeeData,
                options: {
                    responsive: false,
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
            var ctx6 = document.getElementById('dependentChart').getContext('2d');
            window.myBar = new Chart(ctx6, {
                type: 'bar',
                data: dependentData,
                options: {
                    responsive: false,
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
        };
    </script>
</body>

</html>