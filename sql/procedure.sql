DELIMITER //

CREATE OR REPLACE PROCEDURE get_students_in_hostel(
    hostel_id_param VARCHAR(255)
)
BEGIN
    SELECT *
    FROM Students
    WHERE hostel_id = hostel_id_param;
END //

DELIMITER ;

DELIMITER //

CREATE OR REPLACE PROCEDURE calculate_total_fees(
    student_id_param VARCHAR(255),
    total_fees OUT DECIMAL
)
BEGIN
    SELECT SUM(amount) INTO total_fees
    FROM Fees
    WHERE student_id = student_id_param;
END //

DELIMITER ;

DELIMITER //

CREATE OR REPLACE PROCEDURE assign_room_to_student(
    student_id_param VARCHAR(255),
    hostel_id_param VARCHAR(255),
    room_number_param INT
)
BEGIN
    INSERT INTO Student_room_assignment (student_id, hostel_id, room_number)
    VALUES (student_id_param, hostel_id_param, room_number_param);
END //

DELIMITER ;

DELIMITER //

CREATE OR REPLACE PROCEDURE update_employee_salary(
    employee_id_param VARCHAR(255),
    new_salary_param DECIMAL
)
BEGIN
    UPDATE Employees
    SET salary = new_salary_param
    WHERE employee_id = employee_id_param;
END //

DELIMITER ;
