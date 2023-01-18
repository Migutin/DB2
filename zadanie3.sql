CREATE TABLE IF NOT EXISTS Departments (
	DepartmentsID SERIAL PRIMARY KEY,
	name VARCHAR(40) unique NOT NULL
);

CREATE TABLE IF NOT EXISTS Employees (
	EmployeesID SERIAL PRIMARY KEY,
	name VARCHAR(60) unique NOT null,
	DepartmentsID INTEGER references Departments(DepartmentsID),
	chiefID INTEGER references employees(EmployeesID)
);