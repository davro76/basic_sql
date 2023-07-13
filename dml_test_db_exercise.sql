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

/* using postgres sql the SET clause has to be use if we want to alter a column add a default value or not null*/









