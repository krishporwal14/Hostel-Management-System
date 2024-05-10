UPDATE Rooms
SET capacity = capacity + 5
WHERE room_number = '21';

UPDATE Employees
SET phone_number = '8975186346'
WHERE employee_id = 'SAB21303653' AND hostel_id = 'SAB';

UPDATE Employees
SET date_of_join = '2024-13-02'
WHERE employee_id = 'SAB21303653' AND hostel_id = 'SAB';

UPDATE Dependents
SET age = '61'
WHERE student_id = 'SAB2300368';

UPDATE Fees
SET mode_of_payment = 'cash'
WHERE student_id = 'SAB2300333' AND date = '2023-12-27';

SELECT hostel_id, AVG(salary) AS avg_salary
FROM Employees
GROUP BY hostel_id;

SELECT r.room_number, COUNT(sra.student_id) AS num_students
FROM Rooms r
LEFT JOIN Student_room_assignment sra ON r.room_number = sra.room_number
GROUP BY r.room_number;

SELECT s.hostel_id, SUM(f.pending) AS total_pending_fees
FROM Students s
INNER JOIN Fees f ON s.student_id = f.student_id
GROUP BY s.hostel_id;

SELECT *
FROM Employees
WHERE date_of_join < '2024-01-01'
ORDER BY salary DESC;

SELECT s.student_id, AVG(d.age) AS avg_dependent_age
FROM Students s
LEFT JOIN Dependents d ON s.student_id = d.student_id
GROUP BY s.student_id;

SELECT hostel_id, COUNT(room_number) AS num_rooms
FROM Rooms
GROUP BY hostel_id
ORDER BY num_rooms DESC;

SELECT student_id, SUM(amount) AS total_fees_paid
FROM Fees
GROUP BY student_id
ORDER BY total_fees_paid DESC;

SELECT hostel_id, MIN(age) AS min_age
FROM Students
GROUP BY hostel_id;

SELECT s.student_id, s.name
FROM Students s
LEFT JOIN Fees f ON s.student_id = f.student_id
WHERE f.student_id IS NULL;

SELECT r.room_number, COUNT(sra.student_id) AS num_students_assigned, h.hostel_name AS hostel_branch
FROM Rooms r
LEFT JOIN Student_room_assignment sra ON r.room_number = sra.room_number
JOIN Hostel_Branch h ON r.hostel_id = h.hostel_id
GROUP BY r.room_number, h.hostel_name;

SELECT s.*, hb.hostel_name AS hostel_name, hb.address AS hostel_address
FROM Students s
JOIN Hostel_Branch hb ON s.hostel_id = hb.hostel_id;

SELECT hb.hostel_id, hb.hostel_name, hb.address, COUNT(r.room_number) AS num_rooms, SUM(r.capacity) AS total_capacity
FROM Hostel_Branch hb
LEFT JOIN Rooms r ON hb.hostel_id = r.hostel_id
GROUP BY hb.hostel_id;

SELECT e.*, hb.hostel_name AS hostel_name, hb.address AS hostel_address
FROM Employees e
JOIN Hostel_Branch hb ON e.hostel_id = hb.hostel_id
WHERE e.date_of_leave IS NULL;

SELECT s.*, d.name AS dependent_name, d.relation
FROM Students s
JOIN Dependents d ON s.student_id = d.student_id;

SELECT SUM(f.amount) AS total_fees_paid
FROM Students s
JOIN Fees f ON s.student_id = f.student_id;

SELECT hb.hostel_id, hb.hostel_name AS hostel_name, r.room_number, COUNT(sra.student_id) AS num_students
FROM Hostel_Branch hb
JOIN Rooms r ON hb.hostel_id = r.hostel_id
LEFT JOIN Student_room_assignment sra ON r.room_number = sra.room_number
GROUP BY hb.hostel_id, r.room_number;

SELECT hb.hostel_id, AVG(s.age) AS avg_age
FROM Hostel_Branch hb
JOIN Students s ON hb.hostel_id = s.hostel_id
GROUP BY hb.hostel_id;

SELECT s.*, SUM(f.pending) AS total_pending_fees
FROM Students s
JOIN Fees f ON s.student_id = f.student_id
GROUP BY s.student_id;

SELECT e.*
FROM Employees e
JOIN (
    SELECT hostel_id, MAX(salary) AS max_salary
    FROM Employees
    GROUP BY hostel_id
) AS max_salary_per_hostel ON e.hostel_id = max_salary_per_hostel.hostel_id AND e.salary = max_salary_per_hostel.max_salary;

SELECT s.*
FROM Students s
JOIN Student_room_assignment sra ON s.student_id = sra.student_id
JOIN Rooms r ON sra.room_number = r.room_number AND sra.hostel_id = r.hostel_id
JOIN (
    SELECT hostel_id, AVG(capacity) AS avg_capacity
    FROM Rooms
    GROUP BY hostel_id
) AS avg_capacity_per_hostel ON r.hostel_id = avg_capacity_per_hostel.hostel_id
WHERE r.capacity > avg_capacity_per_hostel.avg_capacity;
