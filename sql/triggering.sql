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

ALTER TABLE dependents
ADD CONSTRAINT dependents_ibfk_1
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON DELETE CASCADE;

ALTER TABLE fees
ADD CONSTRAINT fees_ibfk_1
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON UPDATE CASCADE;

ALTER TABLE student_room_assignment
ADD CONSTRAINT student_room_assignment_ibfk_1
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON DELETE CASCADE,
ADD CONSTRAINT student_room_assignment_ibfk_2
FOREIGN KEY (room_number)
REFERENCES rooms(room_number)
ON DELETE CASCADE;
