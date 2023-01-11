-- Drops the employees_db if it exists currently --
DROP DATABASE IF EXISTS employees_db;
-- Creates the employees database --
CREATE DATABASE employees_db;
-- Uses the employees database --
USE employees_db;

CREATE TABLE department (
    id INT NOT NULL,
    NAME CHAR(30) NOT NULL
    PRIMARY KEY (id)
)

CREATE TABLE role  (
    id INT,
    title CHAR(30),
    salary DECIMAL,
    department_id INT
    FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE SET NULL
    PRIMARY KEY (id)
)

CREATE TABLE employee (
    id INT,
    first_name CHAR(30),
    last_name CHAR(30),
    role_id INT,
    manager_id INT
    FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL
    FOREIGN KEY (manager_id) REFERENCES employee(manager_id) ON DELETE SET NULL
)