-- Trigger to validate number_of_rooms and number_of_students in hostel_branch table
DELIMITER //
CREATE TRIGGER validate_hostel_branch BEFORE INSERT ON hostel_branch
FOR EACH ROW
BEGIN
    IF NEW.number_of_rooms <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Number of rooms must be greater than 0';
    END IF;
    IF NEW.number_of_students < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Number of students cannot be negative';
    END IF;
END;
//

-- Trigger to validate capacity in rooms table
DELIMITER //
CREATE TRIGGER validate_rooms BEFORE INSERT ON rooms
FOR EACH ROW
BEGIN
    IF NEW.capacity <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Capacity must be greater than 0';
    END IF;
END;
//

-- Trigger to validate gender in employees table
DELIMITER //
CREATE TRIGGER validate_employees BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    IF NEW.gender NOT IN ('Male', 'Female', 'Other') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid gender';
    END IF;
END;
//

-- Trigger to validate age in students and dependents table
DELIMITER //
CREATE TRIGGER validate_age BEFORE INSERT ON students
FOR EACH ROW
BEGIN
    IF NEW.age < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Age cannot be negative';
    END IF;
END;
//

CREATE TRIGGER validate_age_dependents BEFORE INSERT ON dependents
FOR EACH ROW
BEGIN
    IF NEW.age < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Age cannot be negative';
    END IF;
END;
//

-- Trigger to validate course in students table
DELIMITER //
CREATE TRIGGER validate_course BEFORE INSERT ON students
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.course) > 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Course name exceeds maximum length (100 characters)';
    END IF;
END;
//

-- Trigger to validate phone_number in employees table
DELIMITER //
CREATE TRIGGER validate_phone_number BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.phone_number) > 10 OR LENGTH(NEW.phone_number) < 10 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Phone number should be of length 10';
    END IF;
END;
//

-- Trigger to validate phone numbers in students and dependents table
DELIMITER //
CREATE TRIGGER validate_phone_number_students BEFORE INSERT ON students
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.student_phone_number) > 10 OR LENGTH(NEW.student_phone_number) < 10 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Student phone number should be of length 10';
    END IF;
END;
//

CREATE TRIGGER validate_phone_number_dependents BEFORE INSERT ON dependents
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.dependent_phone_number) > 10 OR LENGTH(NEW.dependent_phone_number) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Dependent phone number should be of length 10';
    END IF;
END;
//

-- Trigger to validate relation in dependents table
DELIMITER //
CREATE TRIGGER validate_relation BEFORE INSERT ON dependents
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.relation) > 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Relation exceeds maximum length (100 characters)';
    END IF;
END;
//

-- Trigger to validate amount and pending in fees table
DELIMITER //
CREATE TRIGGER validate_fees BEFORE INSERT ON fees
FOR EACH ROW
BEGIN
    IF NEW.amount < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Amount cannot be negative';
    END IF;
    IF NEW.pending < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Pending amount cannot be negative';
    END IF;
END;
//

DELIMITER ;

SELECT TRIGGER_NAME, EVENT_MANIPULATION, EVENT_OBJECT_TABLE, ACTION_TIMING FROM information_schema.triggers WHERE trigger_schema = 'smjv';
