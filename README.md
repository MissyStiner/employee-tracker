# Employee Tracker | SQL

## Description
This is a command-line application that can be used to manage a company's employee database.

## GitHub URL
https://github.com/MissyStiner/employee-tracker

## Walkthrough Demo Video URL
https://watch.screencastify.com/v/uX8GY9UfXrELlpjn94Ds

## User Story
AS A business owner<br>
I WANT to be able to view and manage the departments, roles, and employees in my company<br>
SO THAT I can organize and plan my business

## Acceptance Criteria
GIVEN a command-line application that accepts user input<br>
WHEN I start the application<br>
THEN I am presented with the following options: view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role<br>
WHEN I choose to view all departments<br>
THEN I am presented with a formatted table showing department names and department ids<br>
WHEN I choose to view all roles<br>
THEN I am presented with the job title, role id, the department that role belongs to, and the salary for that role<br>
WHEN I choose to view all employees<br>
THEN I am presented with a formatted table showing employee data, including employee ids, first names, last names, job titles, departments, salaries, and managers that the employees report to<br>
WHEN I choose to add a department<br>
THEN I am prompted to enter the name of the department and that department is added to the database<br>
WHEN I choose to add a role<br>
THEN I am prompted to enter the name, salary, and department for the role and that role is added to the database
WHEN I choose to add an employee<br>
THEN I am prompted to enter the employee’s first name, last name, role, and manager and that employee is added to the database<br>
WHEN I choose to update an employee role<br>
THEN I am prompted to select an employee to update and their new role and this information is updated in the database

## Mock-Up
![image](./assets/12-sql-homework-demo-01.gif)

#### Database schema design
![image](./assets/12-sql-homework-demo-02.png)<br>

Schema contains the following three tables:

#### Department

- id: INT PRIMARY KEY

- name: VARCHAR(30) to hold department name

#### Role

- id: INT PRIMARY KEY

- title: VARCHAR(30) to hold role title

- salary: DECIMAL to hold role salary

- department_id: INT to hold reference to department role belongs to

#### Employee

- id: INT PRIMARY KEY

- first_name: VARCHAR(30) to hold employee first name

- last_name: VARCHAR(30) to hold employee last name

- role_id: INT to hold reference to employee role

- manager_id: INT to hold reference to another employee that is manager of the current employee. This field might be null if the employee has no manager.