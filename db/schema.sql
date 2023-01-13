-- Drops the employees_db if it exists currently --
DROP DATABASE IF EXISTS employees_db;
-- Creates the employees database --
CREATE DATABASE employees_db;
-- Uses the employees database --
USE employees_db;


CREATE TABLE department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    names VARCHAR(30) NOT NULL
);

CREATE TABLE roles  (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL(10,0),
    department_id INT
    -- CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(department_id) ON DELETE SET NULL
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    roles_id INT,
    manager_id INT
    -- CONSTRAINT fk_roles FOREIGN KEY (role_id) REFERENCES roles(roles_id) ON DELETE SET NULL,
    -- CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);