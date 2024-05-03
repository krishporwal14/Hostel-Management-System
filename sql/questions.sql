SELECT * FROM Employees WHERE hostel_id = 'SAB';

SELECT hostel_id, COUNT(*) AS total_rooms
FROM Rooms
GROUP BY hostel_id;

SELECT r.*
FROM Rooms r
INNER JOIN Student_room_assignment sra ON r.room_number = sra.room_number AND r.hostel_id = sra.hostel_id
WHERE r.hostel_id = 'SAB';

SELECT * FROM Dependents WHERE student_id = 'SAB2300368';

SELECT student_id, SUM(amount) AS total_paid_fees
FROM Fees
WHERE student_id = 'SAB2300368'
GROUP BY student_id;

SELECT student_id, mode_of_payment
FROM Fees
WHERE student_id = 'SAB2300368';

SELECT hostel_id, COUNT(*) AS total_students
FROM Students
GROUP BY hostel_id;

SELECT AVG(age) AS average_age
FROM Students
WHERE hostel_id = 'SAB';

SELECT room_number, capacity
FROM Rooms
WHERE hostel_id = 'SAB';

SELECT student_id, SUM(pending) AS total_pending_fees
FROM Fees
WHERE student_id IN (SELECT student_id FROM Students WHERE hostel_id = 'SAB')
GROUP BY student_id;

SELECT hostel_id, MAX(salary) AS highest_salary
FROM Employees
GROUP BY hostel_id;

SELECT student_id
FROM Fees
WHERE pending > 0;

SELECT student_id, COUNT(*) AS total_dependents
FROM Dependents
GROUP BY student_id;

SELECT *
FROM Students
WHERE date_of_join > '2023-07-11';

SELECT r.room_number, r.hostel_id, COUNT(sra.student_id) AS current_students
FROM Rooms r
LEFT JOIN Student_room_assignment sra ON r.room_number = sra.room_number AND r.hostel_id = sra.hostel_id
GROUP BY r.room_number, r.hostel_id;

SELECT hostel_id, AVG(salary) AS average_salary
FROM Employees
GROUP BY hostel_id;

SELECT COUNT(*) AS total_dependents
FROM Dependents d
JOIN Students s ON d.student_id = s.student_id
WHERE d.age = 69;

SELECT MONTH(date) AS month, YEAR(date) AS year, SUM(amount) AS total_fees_collected
FROM Fees
GROUP BY MONTH(date), YEAR(date);

SELECT MONTH(date) AS month, YEAR(date) AS year, SUM(amount) AS total_fees_collected
FROM Fees
GROUP BY MONTH(date), YEAR(date);

SELECT hostel_id, MIN(age) AS youngest_student_age, MAX(age) AS oldest_student_age
FROM Students
GROUP BY hostel_id;

SELECT *
FROM Employees
WHERE date_of_join >= DATE_SUB(CURRENT_DATE(), INTERVAL 6 MONTH);

SELECT hostel_id, COUNT(*) AS total_rooms, SUM(capacity) AS total_capacity
FROM Rooms
GROUP BY hostel_id;

SELECT s.name AS student_name, s.age, h.hostel_name AS hostel_name
FROM Students s
JOIN Hostel_Branch h ON s.hostel_id = h.hostel_id;

SELECT *
FROM Employees
WHERE date_of_leave >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 YEAR);

SELECT hostel_id, AVG(age) AS average_age
FROM Students
GROUP BY hostel_id;

SELECT s.*, d.*
FROM Students s
JOIN Dependents d ON s.student_id = d.student_id
WHERE d.relation = 'Mother';

SELECT r.room_number, r.capacity, r.hostel_id, COUNT(sra.student_id) AS current_students
FROM Rooms r
LEFT JOIN Student_room_assignment sra ON r.room_number = sra.room_number AND r.hostel_id = sra.hostel_id
GROUP BY r.room_number, r.capacity, r.hostel_id;

SELECT mode_of_payment, SUM(amount) AS total_fees_collected
FROM Fees
GROUP BY mode_of_payment;

SELECT name, age
FROM Students
WHERE date_of_leave IS NULL;

SELECT r.room_number, r.capacity, r.hostel_id, COUNT(sra.student_id) AS current_students
FROM Rooms r
LEFT JOIN Student_room_assignment sra ON r.room_number = sra.room_number AND r.hostel_id = sra.hostel_id
GROUP BY r.room_number, r.capacity, r.hostel_id
HAVING current_students > r.capacity;

SELECT e.employee_id, e.name, COUNT(s.student_id) AS total_students_managed
FROM Employees e
LEFT JOIN Students s ON e.hostel_id = s.hostel_id
GROUP BY e.employee_id, e.name;

SELECT hostel_id, SUM(pending) AS total_pending_fees
FROM Fees
GROUP BY hostel_id
ORDER BY total_pending_fees DESC
LIMIT 1;

SELECT *
FROM Students
WHERE TIMESTAMPDIFF(YEAR, date_of_join, CURRENT_DATE()) < 18;

SELECT d.name AS dependent_name, d.age, s.name AS student_name
FROM Dependents d
JOIN Students s ON d.student_id = s.student_id;

SELECT hostel_id, AVG(salary) AS average_salary
FROM Employees
GROUP BY hostel_id;

SELECT s.*
FROM Students s
LEFT JOIN Fees f ON s.student_id = f.student_id
WHERE f.student_id IS NULL;

SELECT s.name AS student_name, s.address AS student_address, h.hostel_name AS hostel_name, h.address AS hostel_address
FROM Students s
JOIN Hostel_Branch h ON s.hostel_id = h.hostel_id
ORDER BY hostel_name;

SELECT gender, COUNT(*) AS total_employees
FROM Employees
GROUP BY gender;

SELECT *
FROM Rooms r
LEFT JOIN Student_room_assignment sra ON r.room_number = sra.room_number AND r.hostel_id = sra.hostel_id
WHERE sra.student_id IS NULL;

SELECT s.name AS student_name, s.age, f.hostel_id, MAX(f.amount) AS highest_fee_paid
FROM Students s
JOIN Fees f ON s.student_id = f.student_id
GROUP BY f.hostel_id;

SELECT hb.hostel_id, hb.hostel_name, COUNT(r.room_number) AS total_rooms, AVG(r.capacity) AS average_capacity
FROM Hostel_Branch hb
LEFT JOIN Rooms r ON hb.hostel_id = r.hostel_id
GROUP BY hb.hostel_id, hb.hostel_name;

SELECT mode_of_payment, SUM(pending) AS total_pending_fees
FROM Fees
GROUP BY mode_of_payment;

SELECT *
FROM Students
WHERE YEAR(date_of_join) = YEAR(CURRENT_DATE());

SELECT s.name AS student_name, COUNT(d.student_id) AS dependent_count
FROM Students s
LEFT JOIN Dependents d ON s.student_id = d.student_id
GROUP BY s.name;

SELECT e.employee_id, e.name AS employee_name, e.salary, e.hostel_id
FROM Employees e
JOIN (
    SELECT hostel_id, MAX(salary) AS max_salary
    FROM Employees
    GROUP BY hostel_id
) AS max_sal ON e.hostel_id = max_sal.hostel_id AND e.salary = max_sal.max_salary;

SELECT s.*
FROM Students s
JOIN Fees f ON s.student_id = f.student_id
WHERE f.mode_of_payment = 'cash';

SELECT r.room_number, r.capacity, hb.hostel_name AS hostel_name
FROM Rooms r
JOIN Hostel_Branch hb ON r.hostel_id = hb.hostel_id;

SELECT hb.hostel_name AS hostel_name, s.gender, COUNT(s.student_id) AS total_students
FROM Hostel_Branch hb
JOIN Students s ON hb.hostel_id = s.hostel_id
GROUP BY hb.hostel_name, s.gender;

SELECT *
FROM Employees
WHERE YEAR(date_of_join) = YEAR(CURRENT_DATE()) - 1;

SELECT hb.hostel_name AS hostel_name, AVG(s.age) AS average_age
FROM Hostel_Branch hb
JOIN Students s ON hb.hostel_id = s.hostel_id
GROUP BY hb.hostel_name;

SELECT s.*
FROM Students s
LEFT JOIN Fees f ON s.student_id = f.student_id
WHERE f.student_id IS NULL;

SELECT rsa.room_number, COUNT(rsa.student_id) AS total_students
FROM Student_room_assignment rsa
GROUP BY rsa.room_number;

SELECT e.name AS employee_name, e.hostel_id, COUNT(s.student_id) AS total_students_managed
FROM Employees e
LEFT JOIN Students s ON e.hostel_id = s.hostel_id
GROUP BY e.name, e.hostel_id;

SELECT s.student_id, s.name AS student_name, d.name AS dependent_name, d.age AS dependent_age
FROM Students s
JOIN Dependents d ON s.student_id = d.student_id;

SELECT hb.hostel_name AS hostel_name, COUNT(e.employee_id) AS total_employees
FROM Hostel_Branch hb
LEFT JOIN Employees e ON hb.hostel_id = e.hostel_id
GROUP BY hb.hostel_name;

SELECT *
FROM Students
WHERE date_of_leave IS NULL;

SELECT s.name AS student_name, f.amount
FROM Students s
JOIN Fees f ON s.student_id = f.student_id
WHERE f.amount = (SELECT MAX(amount) FROM Fees);

SELECT r.room_number, COUNT(rsa.student_id) AS total_students
FROM Rooms r
LEFT JOIN Student_room_assignment rsa ON r.room_number = rsa.room_number
GROUP BY r.room_number;

SELECT s.*
FROM Students s
JOIN Student_room_assignment rsa ON s.student_id = rsa.student_id
JOIN Rooms r ON rsa.room_number = r.room_number
WHERE r.capacity > 3;

SELECT d.*, s.name AS student_name, s.hostel_id
FROM Dependents d
JOIN Students s ON d.student_id = s.student_id;

SELECT s.*
FROM Students s
JOIN Student_room_assignment rsa ON s.student_id = rsa.student_id
JOIN Rooms r ON rsa.room_number = r.room_number
WHERE r.capacity = 3;

SELECT hb.hostel_name AS hostel_name, COUNT(r.room_number) AS total_rooms
FROM Hostel_Branch hb
LEFT JOIN Rooms r ON hb.hostel_id = r.hostel_id
GROUP BY hb.hostel_name;

SELECT *
FROM Employees
WHERE date_of_join > '2015-01-01';

SELECT s.name AS student_name, SUM(f.amount) AS total_fees_paid
FROM Students s
LEFT JOIN Fees f ON s.student_id = f.student_id
GROUP BY s.name;

SELECT s.*
FROM Students s
LEFT JOIN Student_room_assignment rsa ON s.student_id = rsa.student_id
WHERE rsa.room_number IS NULL;

SELECT s.name AS student_name, d.name AS dependent_name, d.age AS dependent_age
FROM Students s
LEFT JOIN Dependents d ON s.student_id = d.student_id;

SELECT r.room_number
FROM Rooms r
JOIN (
    SELECT room_number, COUNT(student_id) AS occupied_count
    FROM Student_room_assignment
    GROUP BY room_number
) AS occupied ON r.room_number = occupied.room_number
WHERE r.capacity = occupied.occupied_count;

SELECT s.name AS student_name, s.course, f.pending
FROM Students s
JOIN Fees f ON s.student_id = f.student_id
WHERE f.pending > 0;

SELECT name AS employee_name, TIMESTAMPDIFF(YEAR, date_of_join, CURDATE()) AS years_worked
FROM Employees;

SELECT *
FROM Students
WHERE hostel_id = "SAB";

SELECT hostel_id, AVG(salary) AS average_salary
FROM Employees
GROUP BY hostel_id;

SELECT s.name AS student_name, SUM(f.pending) AS total_pending_fees
FROM Students s
JOIN Fees f ON s.student_id = f.student_id
GROUP BY s.name;

SELECT room_number
FROM Rooms
WHERE room_number NOT IN (SELECT room_number FROM Student_room_assignment);

SELECT *
FROM Employees
WHERE date_of_leave > '2023-01-01';

SELECT s.name AS student_name, COUNT(d.student_id) AS num_dependents
FROM Students s
LEFT JOIN Dependents d ON s.student_id = d.student_id
GROUP BY s.name;

SELECT s.name AS student_name
FROM Students s
LEFT JOIN Fees f ON s.student_id = f.student_id
WHERE f.student_id IS NULL;

SELECT hostel_id, COUNT(*) AS total_employees
FROM Employees
GROUP BY hostel_id;

SELECT s.name AS student_name, COUNT(r.room_number) AS num_rooms_assigned
FROM Students s
LEFT JOIN Student_room_assignment rsa ON s.student_id = rsa.student_id
LEFT JOIN Rooms r ON rsa.room_number = r.room_number
GROUP BY s.name;

SELECT d.*, s.name AS student_name
FROM Dependents d
JOIN Students s ON d.student_id = s.student_id;

SELECT s.name AS student_name, SUM(f.paid_till_date) AS total_fees_paid
FROM Students s
JOIN Fees f ON s.student_id = f.student_id
GROUP BY s.name;

SELECT hostel_id, AVG(age) AS average_age
FROM Students
GROUP BY hostel_id;

SELECT name
FROM Students
WHERE date_of_join > '2023-01-01';

SELECT r.room_number, r.capacity, COUNT(sra.student_id) AS num_students_assigned
FROM Rooms r
LEFT JOIN Student_room_assignment sra ON r.room_number = sra.room_number
GROUP BY r.room_number;

SELECT e.name AS employee_name, e.gender, h.hostel_name AS hostel_branch
FROM Employees e
JOIN Hostel_Branch h ON e.hostel_id = h.hostel_id;

SELECT s.name AS student_name, d.name AS dependent_name
FROM Students s
JOIN Dependents d ON s.student_id = d.student_id;

SELECT h.hostel_name AS hostel_branch, COUNT(*) AS total_rooms
FROM Hostel_Branch h
JOIN Rooms r ON h.hostel_id = r.hostel_id
GROUP BY h.hostel_name;

SELECT s.name AS student_name, SUM(f.amount) AS total_fees_paid
FROM Students s
JOIN Fees f ON s.student_id = f.student_id
WHERE EXTRACT(MONTH FROM f.date) = 1 AND EXTRACT(YEAR FROM f.date) = 2023
GROUP BY s.name;

SELECT *
FROM Employees
WHERE EXTRACT(YEAR FROM date_of_join) = 2018 AND date_of_leave IS NULL;

SELECT s.name AS student_name
FROM Students s
JOIN Fees f ON s.student_id = f.student_id
WHERE f.mode_of_payment = 'Credit Card';

SELECT name AS student_name, date_of_leave
FROM Students
WHERE date_of_leave IS NOT NULL;

SELECT hostel_id, course, COUNT(*) AS num_students
FROM Students
GROUP BY hostel_id, course;

SELECT s.name AS student_name, SUM(f.pending) AS total_pending_fees
FROM Students s
JOIN Fees f ON s.student_id = f.student_id
GROUP BY s.name;

SELECT r.room_number, COUNT(sra.student_id) AS num_students_assigned
FROM Rooms r
LEFT JOIN Student_room_assignment sra ON r.room_number = sra.room_number
GROUP BY r.room_number
ORDER BY num_students_assigned DESC;

SELECT s.name AS student_name
FROM Students s
JOIN Student_room_assignment sra ON s.student_id = sra.student_id
JOIN Hostel_Branch h ON sra.hostel_id = h.hostel_id
WHERE h.hostel_name = 'SAB';

SELECT name AS employee_name, date_of_leave
FROM Employees
WHERE date_of_leave IS NOT NULL;

SELECT s.name AS student_name
FROM Students s
JOIN Dependents d ON s.student_id = d.student_id
WHERE d.age > 18;

SELECT mode_of_payment, SUM(amount) AS total_amount_collected
FROM Fees
GROUP BY mode_of_payment;

SELECT h.hostel_name AS hostel_branch, e.name AS employee_name, e.salary
FROM Employees e
JOIN Hostel_Branch h ON e.hostel_id = h.hostel_id
WHERE (e.hostel_id, e.salary) IN (
    SELECT hostel_id, MAX(salary)
    FROM Employees
    GROUP BY hostel_id
);

SELECT r.room_number, COUNT(sra.student_id) AS num_students_assigned, h.hostel_name AS hostel_branch
FROM Rooms r
LEFT JOIN Student_room_assignment sra ON r.room_number = sra.room_number
JOIN Hostel_Branch h ON r.hostel_id = h.hostel_id
GROUP BY r.room_number, h.hostel_name;

SELECT s.name AS student_name FROM Students s JOIN Fees f ON s.student_id = f.student_id WHERE f.pending = 0;
