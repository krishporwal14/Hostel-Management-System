    -- CREATE A DATABASE
    CREATE DATABASE SMJV;
    USE SMJV;

    -- DDL Queries
    -- TO CREATE TABLES
    CREATE TABLE hostel_branch (
        hostel_id VARCHAR(255) PRIMARY KEY,
        hostel_name VARCHAR(255),
        address VARCHAR(255),
        number_of_rooms INT,
        number_of_students INT
    );

    CREATE TABLE rooms (
        room_number INT PRIMARY KEY,
        capacity INT,
        hostel_id VARCHAR(255),
        FOREIGN KEY (hostel_id) REFERENCES hostel_branch(hostel_id)
    );

    CREATE TABLE employees (
        employee_id VARCHAR(255),
        name VARCHAR(255),
        gender VARCHAR(10),
        phone_number VARCHAR(20),
        hostel_id VARCHAR(255),
        salary DECIMAL(10, 2),
        date_of_join DATE,
        date_of_leave DATE,
        PRIMARY KEY (employee_id, hostel_id),
        FOREIGN KEY (hostel_id) REFERENCES hostel_branch(hostel_id)
    );

    CREATE TABLE students (
        student_id VARCHAR(255),
        name VARCHAR(255),
        address VARCHAR(255),
        age INT,
        course VARCHAR(100),
        student_phone_number VARCHAR(20),
        dependent_phone_number VARCHAR(20),
        date_of_join DATE,
        date_of_leave DATE,
        hostel_id VARCHAR(255),
        PRIMARY KEY (student_id, hostel_id),
        FOREIGN KEY (hostel_id) REFERENCES hostel_branch(hostel_id)
    );

    CREATE TABLE student_room_assignment (
        student_id VARCHAR(255),
        hostel_id VARCHAR(255),
        room_number INT,
        FOREIGN KEY (student_id) REFERENCES students(student_id),
        FOREIGN KEY (hostel_id) REFERENCES hostel_branch(hostel_id),
        FOREIGN KEY (room_number) REFERENCES rooms(room_number)
    );

    CREATE TABLE dependents (
        student_id VARCHAR(255) PRIMARY KEY,
        dependent_phone_number VARCHAR(20),
        name VARCHAR(50),
        age INT,
        relation VARCHAR(50),
        FOREIGN KEY (student_id) REFERENCES students(student_id)
    );

    CREATE TABLE fees (
        student_id VARCHAR(255),
        date DATE,
        amount INT,
        paid_till_date DATE,
        pending DECIMAL(10, 2),
        mode_of_payment VARCHAR(50),
        PRIMARY KEY (student_id, date),
        FOREIGN KEY (student_id) REFERENCES students(student_id)
    );
