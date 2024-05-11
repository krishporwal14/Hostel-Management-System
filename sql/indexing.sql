CREATE INDEX IF NOT EXISTS idx_hostel_id ON Hostel_Branch(hostel_id);

CREATE INDEX IF NOT EXISTS idx_room_number ON Rooms(room_number);

CREATE INDEX IF NOT EXISTS idx_hostel_id_rooms ON Rooms(hostel_id);

CREATE INDEX IF NOT EXISTS idx_student_id ON Students(student_id);

CREATE INDEX IF NOT EXISTS idx_hostel_id_students ON Students(hostel_id);

CREATE INDEX IF NOT EXISTS idx_employee_id ON Employees(employee_id);

CREATE INDEX IF NOT EXISTS idx_hostel_id_employees ON Employees(hostel_id);

CREATE INDEX IF NOT EXISTS idx_student_id_sra ON Student_room_assignment(student_id);

CREATE INDEX IF NOT EXISTS idx_hostel_id_sra ON Student_room_assignment(hostel_id);

CREATE INDEX IF NOT EXISTS idx_student_id_dependents ON Dependents(student_id);

CREATE INDEX IF NOT EXISTS idx_student_id_fees ON Fees(student_id);
