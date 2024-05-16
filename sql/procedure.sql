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

-- Procedure to insert a new record into hostel_branch table
DELIMITER //
CREATE PROCEDURE Insert_hostel_branch (
    IN p_hostel_id VARCHAR(255),
    IN p_name VARCHAR(255),
    IN p_address VARCHAR(255),
    IN p_number_of_rooms INT,
    IN p_number_of_students INT
)
BEGIN
    INSERT INTO hostel_branch (hostel_id, hostel_name, address, number_of_rooms, number_of_students)
    VALUES (p_hostel_id, p_name, p_address, p_number_of_rooms, p_number_of_students);
END;
//

-- Procedure to insert a new record into rooms table
CREATE PROCEDURE Insert_room (
    IN p_room_number INT,
    IN p_capacity INT,
    IN p_hostel_id VARCHAR(255)
)
BEGIN
    INSERT INTO rooms (room_number, capacity, hostel_id)
    VALUES (room_number, p_capacity, p_hostel_id);
END;
//

-- Procedure to insert a new record into employees table
CREATE PROCEDURE Insert_employee (
    IN p_emp_id VARCHAR(255),
    IN p_name VARCHAR(255),
    IN p_gender ENUM('Male', 'Female', 'Other'),
    IN p_phone_number VARCHAR(20),
    IN p_hostel_id VARCHAR(255),
    IN p_salary DECIMAL(10, 2),
    IN p_date_of_join DATE,
    IN p_date_of_leave DATE
)
BEGIN
    INSERT INTO employees (employee_id, name, gender, phone_number, hostel_id, salary, date_of_join, date_of_leave)
    VALUES (p_emp_id, p_name, p_gender, p_phone_number, p_hostel_id, p_salary, p_date_of_join, p_date_of_leave);
END;
//

-- Procedure to insert a new record into students table
CREATE PROCEDURE Insert_student (
    IN p_student_id VARCHAR(255),
    IN p_name VARCHAR(255),
    IN p_address VARCHAR(255),
    IN p_age INT,
    IN p_course VARCHAR(100),
    IN p_student_phone_number VARCHAR(20),
    IN p_dependent_phone_number VARCHAR(20),
    IN p_date_of_join DATE,
    IN p_date_of_leave DATE,
    IN p_hostel_id VARCHAR(255)
)
BEGIN
    INSERT INTO students (student_id, name, address, age, course, student_phone_number, dependent_phone_number, date_of_join, date_of_leave, hostel_id)
    VALUES (p_student_id, p_name, p_address, p_age, p_course, p_student_phone_number, p_dependent_phone_number, p_date_of_join, p_date_of_leave, p_hostel_id);
END;
//

-- Procedure to insert a new record into dependents table
CREATE PROCEDURE Insert_dependent (
    IN p_student_id VARCHAR(255),
    IN p_dependent_phone_number VARCHAR(20),
    IN p_name VARCHAR(255),
    IN p_age INT,
    IN p_relation VARCHAR(100)
)
BEGIN
    INSERT INTO dependents (student_id, dependent_phone_number, name, age, relation)
    VALUES (p_student_id, p_dependent_phone_number, p_name, p_age, p_relation);
END;
//

-- Procedure to insert a new record into fees table
CREATE PROCEDURE Insert_fee (
    IN p_student_id VARCHAR(255),
    IN p_date DATE,
    IN p_amount INT,
    IN p_paid_till_date DATE,
    IN p_pending DECIMAL(10, 2),
    IN p_mode_of_payment VARCHAR(100)
)
BEGIN
    INSERT INTO fees (student_id, date, amount, paid_till_date, pending, mode_of_payment)
    VALUES (p_student_id, p_date, p_amount, p_paid_till_date, p_pending, p_mode_of_payment);
END;
//

DELIMITER ;

CALL Insert_Hostel_Branch('Hostel A', '123 Main St', 50, 200);

DROP PROCEDURE IF EXISTS Insert_hostel_branch;

SELECT ROUTINE_NAME FROM information_schema.routines WHERE routine_schema = 'smjv' AND routine_type = 'Procedure';
