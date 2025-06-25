-- Task 2: Data Insertion and Handling NULLs
-- -
-- -
-- -
-- -
-- -
-- -
-- -
-- -
use ecom_db;
SELECT 
    *
FROM
    customers;

-- Inserting data into Customers table 
insert into customers (customer_id , name , email , address) values
(4, 'Sanjay Thakur' , 'sanjay4@gamil.com' , 'Haryana'),
(5, 'Ajay Mathur' , 'ajay5@gamil.com' , 'Delhi');

insert into products (product_id , name , price , quantity) values 
(7 ,'Camera' , 25700 , null);


-- modified  Some data using 'UPDATE'
UPDATE customers 
SET 
    email = 'Thakursanjay4@gmail.com'
WHERE
    customer_id = 4;


UPDATE products 
SET 
    quantity = 45
WHERE
    product_id = 7;
    

-- Delete data
DELETE FROM customers 
WHERE
    customer_id = 5;    
    
    
SELECT * FROM customers WHERE customer_id IS NULL;
