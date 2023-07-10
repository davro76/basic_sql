-- Create sample DATABASE
CREATE DATABASE sample_book;

-- Create the Tables

--department
CREATE TABLE department(dept_no char(4) NOT NULL, dept_name char(25) NULL,location CHAR(25)  NULL,
                          CONSTRAINT prim_dept PRIMARY KEY (dept_no));
						  
						 					  --
-- employee
CREATE TABLE employee(emp_no INTEGER NOT NULL, emp_fname CHAR(25) NOT NULL, emp_lname CHAR(20) NOT NULL, dept_no CHAR(4)  NULL,
CONSTRAINT prim_emp PRIMARY KEY (emp_no),
CONSTRAINT foreign_emp FOREIGN KEY (dept_no) REFERENCES department(dept_no));


--project
CREATE TABLE project( project_no CHAR(4) NOT NULL, project_name CHAR(15) NOT NULL, budget FLOAT NULL,
CONSTRAINT prim_proj PRIMARY KEY (project_no));		


--works_on

CREATE TABLE works_on(emp_no INTEGER NOT NULL, project_no CHAR(4) NOT NULL, 
job CHAR(15) NULL, enter_date DATE NULL,CONSTANT prim_works PRIMARY KEY (emp_no, project_no),
CONSTRAINT foreign1_works FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
CONSTRAINT foreign2_works FOREIGN KEY (project_no) ) REFERENCES project(project_no);


						  