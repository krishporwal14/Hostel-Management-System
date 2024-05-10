DELIMITER //

CREATE OR REPLACE TRIGGER update_number_of_students
AFTER INSERT ON Students
FOR EACH ROW
BEGIN
    UPDATE Hostel_Branch
    SET number_of_students = number_of_students + 1
    WHERE hostel_id = NEW.hostel_id;
END//

DELIMITER ;

DELIMITER //

CREATE OR REPLACE TRIGGER reduce_number_of_students
AFTER DELETE ON Students
FOR EACH ROW
BEGIN
    UPDATE Hostel_Branch
    SET number_of_students = number_of_students - 1
    WHERE hostel_id = OLD.hostel_id;
END//

DELIMITER ;

DELIMITER //

DELIMITER //

CREATE OR REPLACE TRIGGER update_number_of_rooms
AFTER INSERT ON Rooms
FOR EACH ROW
BEGIN
    UPDATE Hostel_Branch
    SET number_of_rooms = number_of_rooms + 1
    WHERE hostel_id = NEW.hostel_id;
END//

DELIMITER ;

DELIMITER //

CREATE OR REPLACE TRIGGER reduce_number_of_rooms
AFTER DELETE ON rooms
FOR EACH ROW
BEGIN
    UPDATE Hostel_Branch
    SET number_of_rooms = number_of_rooms - 1
    WHERE hostel_id = OLD.hostel_id;
END//

DELIMITER ;
