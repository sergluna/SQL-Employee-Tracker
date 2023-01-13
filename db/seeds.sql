INSERT INTO department (id, name)
VALUES  ('sales'),
        ('customer service'),
        ('human resources'),
        ('marketing');

INSERT INTO roles (title, salary, department_id)
VALUES  ('sales person',50000, 01),
        ('customer service representative', 35000, 02),
        ('human resource specialist', 45000, 03),
        ('marketing analyst', 50000, 04);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES  ('Tom', 'Sawyer', 1, 4),
        ('Huck', 'Fin', 2, 3),
        ('Hattie', 'McDaniel', 3, 1),
        ('Alonzo', 'Harris', 4, 5);
