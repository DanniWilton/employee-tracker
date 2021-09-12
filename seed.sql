DROP DATABASE IF EXISTS employeeTracker_DB;
CREATE DATABASE employeeTracker_DB;
USE employeeTracker_DB;
CREATE TABLE Department (

);
CREATE TABLE Employee (

);
CREATE TABLE Roles (

);

INSERT INTO Department (department_name)
VALUES ('Admin');
INSERT INTO Department (department_name)
VALUES ('Marketing');
INSERT INTO Department (department_name)
VALUES ('Sales');;

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ('Moira', 'Rose', 1, NULL);
INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ('Johnny', 'Rose', 2, NULL);
INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ('David', 'Rose', 3, NULL);
INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ('Alexis', 'Rose', 1, 1);
INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ('Stevie', 'Budd', 1, 1);
INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ('Roland', 'Schitt', 1, 1);


INSERT INTO Roles (id, title, department_id)
VALUES (1, 'Admin Manager', 1);
INSERT INTO Roles (id, title, department_id)
VALUES (2, 'Marketing Manager', 1);
INSERT INTO Roles (id, title, department_id)
VALUES (3, 'Sales Manager', 1);
INSERT INTO Roles (id, title, department_id)
VALUES (4, 'Marketing Assistant', 1);
INSERT INTO Roles (id, title, department_id)
VALUES (5, 'Admin Assistant', 1);
INSERT INTO Roles (id, title, department_id)
VALUES (6, 'Sales Assistant', 1);