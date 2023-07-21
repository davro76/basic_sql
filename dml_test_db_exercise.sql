--Data Manipulation Language

--Exercise 5.7 Using the ALTER TABLE statement, add a new column named shipregion to the orders
--table. The fields should be nullable and contain integers.

ALTER TABLE orders 
ADD COLUMN shipregion INTEGER NULL;


--Exercise 5.8 Using the ALTER TABLE statement, change the data type of the column shipregion from
--INTEGER to CHARACTER with length 8. The fields may contain NULLvalues.

ALTER TABLE orders 
ALTER COLUMN shipregion TYPE CHAR(8);


--Exercise 5.9 Delete the formerly created column shipregion.
ALTER TABLE orders
DROP COLUMN shipregion;


--Exercise 5.11 Re-create the tables customers and orders, enhancing their definition with all primary
--and foreign keys constraints.
ALTER TABLE customers
ADD CONSTRAINTS prim_customers PRIMARY KEY (customerid); 


--add primary and foreign keys to orders table
ALTER TABLE orders
ADD CONSTRAINT primary_orders PRIMARY KEY (orderid),
ADD CONSTRAINT foreign_key FOREIGN KEY (customerid) REFERENCES customers (customerid);
 
 
 --Exercise 5.12 Using SQLServer Management Studio, try to insert a new row into the orders table
--with the following values:
--(10, 'ord01', getdate(), getdate(), 100.0, 'Windstar', 'Ocean', 1)
--Why isn’t that working?
INSERT INTO orders (
orderid,
    customerid,
    orderdate,
    shippeddate,
    freight,
    shipname,
    shipaddress,
    quantity)
VALUES(10, 'ord01', getdate(), getdate(), 100.0, 'Windstar', 'Ocean', 1)





--Exercise 5.13 Using the ALTER TABLE statement, add the current system date and time as the default
--value to the orderdate column of the orders table.

ALTER TABLE orders
ALTER COLUMN orderdate SET DEFAULT CURRENT_TIMESTAMP;

--5.14 Using the ALTER TABLE statement, create an integrity constraint that limits the
--possible values of the quantity column in the orders table to values between 1 and 30.

ALTER TABLE orders 
ADD CONSTRAINT quantity_range CHECK(quantity>=1 AND quantity<=30); 

--Exercise5.15 Rename the city column of the customers table. The new name is town.
ALTER TABLE customers
RENAME city TO tow; 

--Exercise 5.16 Delete the primary key of the customers table. Why isn’t that working?
ALTER TABLE customers 
DROP CONSTRAINT prim_customers;
/* Because prim_customers is refferenced as foreign key for orders table, so it cannot be delete without using the CASCADE method*/

--Exercise 5.17 Delete the integrity constraint called prim_empl
ALTER TABLE 
DROP CONSTRAINT prim_empl;

--6.2 Get the names and numbers of all departments located in Dallas:
SELECT dept_no, dept_name from department
WHERE location ='Dallas';

--6.3 Get the last and first names of all employees with employee numbers greater than or
--equal to 15000:
SELECT emp_lname, emp_fname FROM employee 
WHERE emp_no >=15000;

--6.4 Get the project names for all projects with a budget > 60000 £. The current rate of
--exchange is 0.51 £ per 1.
SELECT project_name FROM project 
WHERE budget*0.51 >60000;

--6.5 Get the employee numbers for all employees who work for either project p1 or project
--p2 (or both)
SELECT emp_no FROM works_on
WHERE project_no = 'p1' OR project_no = 'p2'; 


--6.6 Get the employee numbers and first names of all employees who do not belong to the
--department d2
SELECT emp_no, emp_fname 


--6.7 Get the employee numbers and first names of all employees who do not belong to the
--department d2
SELECT emp_no, emp_fname FROM employee
WHERE dept_no NOT 'd2';

--6.8 Get all the columns for every employee whose employee number equals 29346, 28559,
--or 25348
SELECT * 
FROM employee
WHERE emp_no IN (29346, 28559,25348);

--6.9 Get all columns for every employee whose employee number is neither 10102 nor
--9031
SELECT *
FROM employee 
WHERE emp_no NOT IN (10102, 9031)


--6.10 Get the names and budgets for all projects with a budget between 95,000 and
--120,000, inclusive
SELECT project_name, budget 
FROM project
WHERE budget BETWEEN 95000 AND 120000;


--6.11 Get the names of all projects with a budget less than 100,000 and greater than
--150,000
SELECT project_name, budget 
FROM project
WHERE budget NOT BETWEEN 100000 AND 150000;

--or
/*SELECT project_name, budget 
FROM project
WHERE budget < 100000 AND budget >150000;*/



--6.12 Get employee numbers and corresponding project numbers for employees with unknown
--jobs who work on project p2
SELECT emp_no, project_no
FROM works_on
WHERE (jobs IS NULL) AND project_no ='p2';


--6.13 Get the first and last names and numbers of all employees whose first name contains the
--letter a as the second character
SELECT emp_fname, emp_lname, emp_no 
FROM employee
WHERE fname LIKE '_a%'; 

--Get full details of all departments whose location begins with a character in the range C
--through F
SELECT * 
FROM department 
WHERE location LIKE '[c-F]%';
