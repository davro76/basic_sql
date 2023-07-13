-- create test_db database and related tables


-- test_db database
CREATE DATABASE test_db; 


--tables 

--customers
CREATE TABLE customers (
    customerid CHAR(5) not null,
    companyname VARCHAR(40) NOT NULL,
    contactename CHAR(30) NULL,
    address VARCHAR(60) NULL,
    city CHAR(15) NULL,
    phone CHAR(24) NULL,
    fax CHAR(24) NULL
)

-- orders
CREATE TABLE orders(
    orderid INTEGER NOT NULL,
    customerid CHAR(5) not NULL,
    orderdate DATE NULL,
    shippeddate DATE NULL,
    freight MONEY NULL,
    shipname VARCHAR(40) NULL,
    shipaddress VARCHAR(60) NULL,
    quantity INTEGER NULL
);