// Function to format date in yyyy-mm-dd format
function formatDate(date) {
  // Extract year, month, and day from the date object
  const year = date.getFullYear();
  let month = date.getMonth() + 1;
  let day = date.getDate();

  // Add leading zero if month or day is less than 10
  if (month < 10) {
    month = "0" + month;
  }
  if (day < 10) {
    day = "0" + day;
  }

  // Return the formatted date string
  return year + "-" + month + "-" + day;
}

// Function to handle form submission
function submitStudentForm() {
  // Get the date_of_join and date_of_leave input elements
  const dateOfJoinInput = document.getElementById("date_of_join");
  const dateOfLeaveInput = document.getElementById("date_of_leave");

  // Get the current date and format it
  const currentDate = new Date();
  const formattedDate = formatDate(currentDate);

  // Set the formatted date as the value of the date_of_join and date_of_leave inputs
  dateOfJoinInput.value = formattedDate;
  dateOfLeaveInput.value = formattedDate;

  // Submit the form
  document.getElementById("studentForm").submit();
}

// Function to handle form submission
function submitEmployeeForm() {
  // Get the date_of_join and date_of_leave input elements
  const dateOfJoinInput = document.getElementById("date_of_join");
  const dateOfLeaveInput = document.getElementById("date_of_leave");

  // Get the current date and format it
  const currentDate = new Date();
  const formattedDate = formatDate(currentDate);

  // Set the formatted date as the value of the date_of_join and date_of_leave inputs
  dateOfJoinInput.value = formattedDate;
  dateOfLeaveInput.value = formattedDate;

  // Submit the form
  document.getElementById("employeeForm").submit();
}

// Function to handle form submission
function submitRoomForm() {
  // Submit the form
  document.getElementById("roomForm").submit();
}

// Function to handle form submission
function submitStudentRoomAssignmentForm() {
  // Submit the form
  document.getElementById("studentRoomAssignmentForm").submit();
}

// Function to handle form submission
function submitDependentForm() {
  // Submit the form
  document.getElementById("dependentForm").submit();
}

// Function to handle form submission
function submitFeeForm() {
  // Get the date and paid_till_date input elements
  const dateInput = document.getElementById("date");
  const paidTillDateInput = document.getElementById("paid_till_date");

  // Get the current date and format it
  const currentDate = new Date();
  const formattedDate = formatDate(currentDate);

  // Set the formatted date as the value of the date and paid_till_date inputs
  dateInput.value = formattedDate;
  paidTillDateInput.value = formattedDate;

  // Submit the form
  document.getElementById("feeForm").submit();
}
