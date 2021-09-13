DROP DATABASE IF EXISTS employeeTracker_DB;
CREATE DATABASE employeeTracker_DB;
USE employeeTracker_DB;
CREATE TABLE Department (
    department_name INT NOT NULL AUTO_INCREMENT,
    department_id VARCHAR(100) NOT NULL,
    PRIMARY KEY (department_id)
);
CREATE TABLE Employee (
    employee_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL, 
    last_name VARCHAR(100) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES Employee(employee_id),
    PRIMARY KEY (employee_id)
);
CREATE TABLE Roles (
    role_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES(department_id),
    PRIMARY KEY (role_id)
);

INSERT INTO Department (department_name)
VALUES ('Admin');
INSERT INTO Department (department_name)
VALUES ('Marketing');
INSERT INTO Department (department_name)
VALUES ('Sales');;

INSERT INTO Employee (employee_id, first_name, last_name, role_id, manager_id)
VALUES ('Moira', 'Rose', 1, NULL);
INSERT INTO Employee (employee_id, first_name, last_name, role_id, manager_id)
VALUES ('Johnny', 'Rose', 2, NULL);
INSERT INTO Employee (employee_id, first_name, last_name, role_id, manager_id)
VALUES ('David', 'Rose', 3, NULL);
INSERT INTO Employee (employee_id, first_name, last_name, role_id, manager_id)
VALUES ('Alexis', 'Rose', 1, 1);
INSERT INTO Employee (employee_id, first_name, last_name, role_id, manager_id)
VALUES ('Stevie', 'Budd', 1, 1);
INSERT INTO Employee (employee_id, first_name, last_name, role_id, manager_id)
VALUES ('Roland', 'Schitt', 1, 1);


INSERT INTO Roles (role_id, title, department_id)
VALUES (1, 'Admin Manager', 1);
INSERT INTO Roles (role_id, title, department_id)
VALUES (2, 'Marketing Manager', 2);
INSERT INTO Roles (role_id, title, department_id)
VALUES (3, 'Sales Manager', 3);
INSERT INTO Roles (role_id, title, department_id)
VALUES (4, 'Marketing Assistant', 1);
INSERT INTO Roles (role_id, title, department_id)
VALUES (5, 'Admin Assistant', 1);
INSERT INTO Roles (role_id, title, department_id)
VALUES (6, 'Sales Assistant', 1);