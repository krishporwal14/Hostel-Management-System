CREATE VIEW Hostel_Student_Details AS
SELECT s.*, hb.hostel_name AS hostel_name, hb.address AS hostel_address
FROM Students s
JOIN Hostel_Branch hb ON s.hostel_id = hb.hostel_id;

CREATE VIEW Room_Assignment_Details AS
SELECT sra.*, s.name AS student_name, s.address AS student_address, r.capacity
FROM Student_room_assignment sra
JOIN Students s ON sra.student_id = s.student_id
JOIN Rooms r ON sra.room_number = r.room_number AND sra.hostel_id = r.hostel_id;

CREATE VIEW Employee_Details AS
SELECT e.*, hb.hostel_name AS hostel_name, hb.address AS hostel_address
FROM Employees e
JOIN Hostel_Branch hb ON e.hostel_id = hb.hostel_id;

CREATE VIEW Dependent_Student_Details AS
SELECT s.*, d.name AS dependent_name, d.relation
FROM Students s
LEFT JOIN Dependents d ON s.student_id = d.student_id;

CREATE VIEW Student_Fee_Details AS
SELECT s.*, f.date, f.amount, f.paid_till_date, f.pending, f.mode_of_payment
FROM Students s
JOIN Fees f ON s.student_id = f.student_id;
