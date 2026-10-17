USE internship_task3;

-- Insert organizations
INSERT INTO organizations
(organization_name, email, city)
VALUES
('Tech Solutions', 'contact@techsolutions.com', 'Bengaluru'),
('Data Insights', 'contact@datainsights.com', 'Mysuru'),
('Cloud Systems', 'contact@cloudsystems.com', 'Mangaluru');

-- Insert students
INSERT INTO students
(student_name, email, college, city)
VALUES
('Ananya Rao', 'ananya@example.com', 'ABC Engineering College', 'Mysuru'),
('Rahul Kumar', 'rahul@example.com', 'XYZ Institute of Technology', 'Bengaluru'),
('Priya Shetty', 'priya@example.com', 'Coastal Engineering College', 'Mangaluru'),
('Arjun Nair', 'arjun@example.com', 'ABC Engineering College', 'Mysuru'),
('Sneha Patil', 'sneha@example.com', 'XYZ Institute of Technology', 'Bengaluru');

-- Insert internships
INSERT INTO internships
(organization_id, internship_title, duration_months, stipend, status)
VALUES
(1, 'Data Analyst Intern', 3, 5000, 'Open'),
(1, 'SQL Developer Intern', 4, 6000, 'Open'),
(2, 'Business Analyst Intern', 3, 4000, 'Open'),
(2, 'Python Developer Intern', 6, 8000, 'Closed'),
(3, 'Database Engineer Intern', 3, 5000, 'Open');

-- Insert applications
INSERT INTO applications
(student_id, internship_id, application_date, status)
VALUES
(1, 1, '2026-10-10', 'Pending'),
(2, 2, '2026-10-11', 'Accepted'),
(3, 3, '2026-10-12', 'Pending'),
(4, 4, '2026-10-13', 'Rejected'),
(5, 5, '2026-10-14', 'Pending');

-- Insert mentors
INSERT INTO mentors
(organization_id, mentor_name, email, expertise)
VALUES
(1, 'Arun Kumar', 'arun@techsolutions.com', 'Data Analytics'),
(1, 'Meera Rao', 'meera@techsolutions.com', 'SQL'),
(2, 'Kiran Shetty', 'kiran@datainsights.com', 'Business Analytics'),
(2, 'Divya Nair', 'divya@datainsights.com', 'Python'),
(3, 'Vikram Das', 'vikram@cloudsystems.com', 'Database Engineering');

-- Insert internship mentor assignments
INSERT INTO internship_mentors
(internship_id, mentor_id, assigned_date)
VALUES
(1, 1, '2026-10-10'),
(1, 2, '2026-10-10'),
(2, 2, '2026-10-11'),
(3, 3, '2026-10-12'),
(4, 4, '2026-10-13'),
(5, 5, '2026-10-14');