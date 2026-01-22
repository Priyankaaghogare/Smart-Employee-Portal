⭐🏢 Smart Employee Portal (Spring Boot + JSP + JDBC) : 

A simple CRUD-based employee management web application built using Spring Boot, JSP, Spring MVC, and JDBC.
It allows users to register, login, add employees, view employee list, edit employee details, and delete records through a clean Bootstrap UI.

🧑‍💻 Author : 
Priyanka Ghogare
Java Developer | Spring Boot | JDBC | Hibernate 

📜 License : 
This project is intended for educational and practice purposes only, aimed at improving programming skills.

📌 Features : 

✔ User Registration & Login

✔ Add New Employees

✔ View All Employees

✔ Update Employee Details

✔ Delete Employee Records

✔ Clean UI using Bootstrap

✔ MVC-based structured flow

✔ JDBC Database Connectivity


🛠 Tech Stack : 

| Layer        | Technology      |
| ------------ | --------------- |
| Language     | Java            |
| Framework    | Spring Boot     |
| UI           | JSP + Bootstrap |
| Backend      | Spring MVC      |
| Database     | MySQL           |
| Connectivity | JDBC            |
| Server       | Embedded Tomcat |

📁 Project Structure : 

SmartEmployeePortal/

 ├── src/main/java/
 
 │    └── com.example.controller
 
 │    └── com.example.model
 
 │    └── com.example.dao
 
 │    └── com.example.service
 
 ├── src/main/resources/
 
 │    └── application.properties
 
 ├── src/main/webapp/
 
 │    └── WEB-INF/jsp/
 
 │         └── login.jsp
 
 │         └── register.jsp
 
 │         └── employees.jsp
 
 │         └── edit.jsp
 
 └── pom.xml

⚙️ Setup & Installation : 

1️⃣ Clone the repository

git clone https://github.com/your-username/smart-employee-portal.git

2️⃣ Configure Database

Create a MySQL database:

CREATE DATABASE employee_db;

Update your application.properties:

spring.datasource.url=jdbc:mysql://localhost:3306/employee_db

spring.datasource.username=youruser

spring.datasource.password=yourpassword

3️⃣ Build & Run

Using Maven:
mvn spring-boot:run

4️⃣ Access the App

Open browser:
http://localhost:8080/

🚀 Usage Flow : 

1) Register a new user
2) Login with credentials
3) Add employees
4) View employee list
5) Edit or delete employees

🖥️ Screens / Use Flow (Console) : 

| Action                      | Page            |
| --------------------------- | --------------- |
| Home Page                   | `/`             |
| Login Page                  | `/login`        |
| Register Page               | `/register`     |
| Employee List (After Login) | `/loginsuccess` |

📂 Key Modules : 

🔹 User & Employee Module

1) Register new employee
2) Login using basic form auth
3) View employee list

🔹 Admin Controls

1) Edit employee
2) Delete employee
   

🌐 Application Output / Screens : 

1. Home Page

URL: http://localhost:7070/

Displays navigation bar with Home, About, Contact, Login, Register

Shows a simple <h1>Home Page</h1> message

Bootstrap navbar is responsive

2. Register Page

URL: http://localhost:7070/register

Users can register a new employee by entering:

ID (number)

Name (text)

Age (number)

Salary (number)

Button: Register

After registration, redirected to login page

Example:

| ID  | Name     | Age | Salary |
| --- | -------- | --- | ------ |
| 101 | Priyanka | 24  | 40000  |



URL: http://localhost:7070/login

Users login with:

Name

ID

Admin login:

Name: admin

ID: 1

After login:

Admin → adminlogin.jsp (view all employees)

Employee → loginsuccess.jsp (view only their record)

4. Admin Login / Dashboard

URL: http://localhost:7070/loginsuccess (after admin login)

Table listing all employees:

| Select | ID  | Name     | Age | Salary | Actions       |
| ------ | --- | -------- | --- | ------ | ------------- |
| ○      | 101 | Priyanka | 24  | 40000  | EDIT / DELETE |
| ○      | 102 | Rahul    | 27  | 50000  | EDIT / DELETE |


Buttons:

EDIT → takes to edit.jsp to update employee info

DELETE → deletes the selected employee

5. Employee Login / Dashboard

URL: http://localhost:7070/studentlogin (after employee login)

Shows only their own data in a table:

| Select | ID  | Name     | Age | Salary | Actions       |
| ------ | --- | -------- | --- | ------ | ------------- |
| ○      | 101 | Priyanka | 24  | 40000  | EDIT / DELETE |


URL: http://localhost:7070/edit

Pre-filled form with employee details
Fields editable: ID, Name, Age, Salary
Update button → saves changes to DB and redirects to studentlogin.jsp (or admin dashboard if admin)

7. Delete Operation

1) Selecting an employee and clicking DELETE:
2) Removes employee from MySQL DB
3) Refreshes the list
4) Admin sees updated table
5) Employee sees empty table if their record was deleted

⚡ Flow Summary

1) Register → Login → Redirect to Dashboard
2) Admin → View all → Edit/Delete any record
3) Employee → View own record → Edit/Delete own record
4) DB updates automatically with Spring Data JPA

💡 Example Scenario:

1) Register Priyanka → ID: 101, Age: 24, Salary: 40000
2) Register Rahul → ID: 102, Age: 27, Salary: 50000
3) Login as Admin → sees both Priyanka and Rahul
4) Admin edits Rahul’s salary → 55000 → Table updates
5) Login as Priyanka → sees only Priyanka’s info


