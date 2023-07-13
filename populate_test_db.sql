
--populate test_db database

--sales table
INSERT INTO sales (order_no, order_date, ship_date)
VALUES
  (1, '2023-01-01', '2023-01-05'),
  (2, '2023-01-02', '2023-01-06'),
  (3, '2023-01-03', '2023-01-07'),
  (4, '2023-01-04', '2023-01-08'),
  (5, '2023-01-05', '2023-01-09'),
  (6, '2023-01-06', '2023-01-10'),
  (7, '2023-01-07', '2023-01-11'),
  (8, '2023-01-08', '2023-01-12'),
  (9, '2023-01-09', '2023-01-13'),
  (10, '2023-01-10', '2023-01-14'),
  (11, '2023-01-11', '2023-01-15'),
  (12, '2023-01-12', '2023-01-16'),
  (13, '2023-01-13', '2023-01-17'),
  (14, '2023-01-14', '2023-01-18'),
  (15, '2023-01-15', '2023-01-19'),
  (16, '2023-01-16', '2023-01-20');
  

--customers
INSERT INTO customers (customerid, companyname, contactename, address, city, phone, fax)
VALUES
  ('C001', 'ABC Company', 'John Smith', '123 Main St', 'New York', '123-456-7890', '123-456-7891'),
  ('C002', 'XYZ Corp', 'Jane Doe', '456 Elm St', 'Los Angeles', '987-654-3210', '987-654-3211'),
  ('C003', 'EFG Ltd.', 'Mike Johnson', '789 Oak St', 'Chicago', '555-123-4567', '555-123-4568'),
  ('C004', '123 Industries', 'Sarah Williams', '321 Pine St', 'Houston', '222-333-4444', '222-333-4445'),
  ('C005', 'PQR Corp', 'David Brown', '567 Maple St', 'San Francisco', '999-888-7777', '999-888-7778'),
  ('C006', 'LMN Ltd.', 'Emily Taylor', '890 Cedar St', 'Seattle', '444-555-6666', '444-555-6667'),
  ('C007', 'RST Ind', 'Michael Anderson', '123 Oak St', 'Boston', '777-888-9999', '777-888-9990'),
  ('C008', 'UVW Corp', 'Olivia Davis', '456 Pine St', 'Atlanta', '111-222-3333', '111-222-3334'),
  ('C009', 'IJK Ltd.', 'Daniel Johnson', '789 Maple St', 'Denver', '666-777-8888', '666-777-8889'),
  ('C010', 'MNO Ind', 'Sophia Wilson', '321 Cedar St', 'Miami', '333-444-5555', '333-444-5556'),
  ('C011', 'GHI Corp', 'Jacob Brown', '654 Elm St', 'Dallas', '888-999-0000', '888-999-0001'),
  ('C012', 'ABC Company', 'Emma Thompson', '987 Pine St', 'Phoenix', '444-555-6666', '444-555-6667'),
  ('C013', 'XYZ Corp', 'Ava Harris', '234 Maple St', 'San Diego', '777-888-9999', '777-888-9990'),
  ('C014', 'EFG Ltd.', 'Logan Martinez', '567 Cedar St', 'Washington', '111-222-3333', '111-222-3334'),
  ('C015', '123 Ind', 'Harper Adams', '890 Oak St', 'Austin', '666-777-8888', '666-777-8889'),
  ('C016', 'PQR Corp', 'Harper Adams', '123 Pine St', 'Portland', '333-444-5555', '333-444-5556');


--orders
INSERT INTO orders (orderid, customerid, orderdate, shippeddate, freight, shipname, shipaddress, quantity)
VALUES
  (1001, 'C001', '2023-01-10', '2023-01-15', 150.50, 'ABC Company', '123 Main St', 10),
  (1002, 'C002', '2023-02-05', '2023-02-08', 75.20, 'XYZ Corp', '456 Elm St', 5),
  (1003, 'C003', '2023-03-12', '2023-03-15', 200.00, 'EFG Ltd.', '789 Oak St', 8),
  (1004, 'C004', '2023-04-20', '2023-04-25', 120.75, '123 Industries', '321 Pine St', 15),
  (1005, 'C005', '2023-05-15', '2023-05-18', 80.90, 'PQR Corp', '567 Maple St', 12),
  (1006, 'C006', '2023-06-02', '2023-06-05', 45.50, 'LMN Ltd.', '890 Cedar St', 7),
  (1007, 'C007', '2023-07-08', '2023-07-10', 95.30, 'RST Ind', '123 Oak St', 9),
  (1008, 'C008', '2023-08-14', '2023-08-17', 55.60, 'UVW Corp', '456 Pine St', 4),
  (1009, 'C009', '2023-09-22', '2023-09-25', 180.25, 'IJK Ltd.', '789 Maple St', 11),
  (1010, 'C010', '2023-10-18', '2023-10-20', 65.40, 'MNO Ind', '321 Cedar St', 6),
  (1011, 'C011', '2023-11-09', '2023-11-12', 100.00, 'GHI Corp', '654 Elm St', 8),
  (1012, 'C012', '2023-12-15', '2023-12-20', 85.75, 'ABC Company', '987 Pine St', 10),
  (1013, 'C013', '2024-01-05', '2024-01-08', 70.25, 'XYZ Corp', '234 Maple St', 6),
  (1014, 'C014', '2024-02-17', '2024-02-20', 110.80, 'EFG Ltd.', '567 Cedar St', 9),
  (1015, 'C015', '2024-03-22', '2024-03-25', 60.50, '123 Ind', '890 Oak St', 5),
  (1016, 'C016', '2024-04-28', '2024-05-02', 75.10, 'PQR Corp', '123 Pine St', 7);


--using COPY to populate table in postgres SQL with csv file 
--COPY schema_name.table_name(col1, col2, ..., coln)
--FROM 'csv path'
--DELIMITER'to_specify'
--CSV HEADER (if the csv first line holds the column names);



