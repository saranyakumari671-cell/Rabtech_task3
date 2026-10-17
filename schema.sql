CREATE DATABASE IF NOT EXISTS internship_task3;
USE internship_task3;

CREATE TABLE organizations (
    organization_id INT AUTO_INCREMENT PRIMARY KEY,
    organization_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    city VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    college VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE internships (
    internship_id INT AUTO_INCREMENT PRIMARY KEY,
    organization_id INT NOT NULL,
    internship_title VARCHAR(100) NOT NULL,
    duration_months INT NOT NULL,
    stipend DECIMAL(10,2) DEFAULT 0 CHECK (stipend >= 0),
    status VARCHAR(20) NOT NULL DEFAULT 'Open'
        CHECK (status IN ('Open', 'Closed')),
    FOREIGN KEY (organization_id)
        REFERENCES organizations(organization_id)
);

CREATE TABLE applications (
    application_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    internship_id INT NOT NULL,
    application_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'Pending'
        CHECK (status IN ('Pending', 'Accepted', 'Rejected')),
    FOREIGN KEY (student_id)
        REFERENCES students(student_id),
    FOREIGN KEY (internship_id)
        REFERENCES internships(internship_id),
    UNIQUE (student_id, internship_id)
);

CREATE TABLE mentors (
    mentor_id INT AUTO_INCREMENT PRIMARY KEY,
    organization_id INT NOT NULL,
    mentor_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    expertise VARCHAR(100) NOT NULL,
    FOREIGN KEY (organization_id)
        REFERENCES organizations(organization_id)
);

CREATE TABLE internship_mentors (
    internship_id INT NOT NULL,
    mentor_id INT NOT NULL,
    assigned_date DATE NOT NULL,
    PRIMARY KEY (internship_id, mentor_id),
    FOREIGN KEY (internship_id)
        REFERENCES internships(internship_id),
    FOREIGN KEY (mentor_id)
        REFERENCES mentors(mentor_id)
);