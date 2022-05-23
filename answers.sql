 /* QUESTION 1
SELECT all columns from the film table. 

--select * FROM film;
 */


/*  QUESTION 2
SELECT district,phone,postal_code from “address” table.

-- SELECT district, phone, postal_code FROM address; */


/*  QUESTION 3
SELECT address, district,postal_code and concat them and get as “full_address”.

--SELECT address || district || postal_code FROM address AS full_address */

/*  QUESTION 4
SELECT customers whose name starts with “J”

--SELECT * FROM customer WHERE first_name ILIKE 'J%'; */


/*  QUESTION 5
SELECT payments that amount value is between 3 and 5

--SELECT * FROM payment WHERE amount BETWEEN 3 AND 5;
 */ 

 
/*  QUESTION 6
SELECT payments that happened between 2007-02-15 and 2007-02-20

 --SELECT * FROM payment WHERE payment_date BETWEEN '2007-02-15' AND '2007-02-20'; 
 */ 
 
/*  QUESTION 7
SELECT movies that are in inventory. (hint: use sub-query)
 
  --SELECT * FROM inventory WHERE film_id IN (SELECT film_id FROM inventory) */

/* QUESTION 8
SELECT payments  that amount between 4-6 order desc by payment_date

--SELECT * from payment WHERE amount BETWEEN 4 AND 6 ORDER BY payment_date DESC; */


/*  QUESTION 9
SELECT first 5 customers ORDER by name DESC
 
 --SELECT * FROM customer ORDER BY first_name DESC LIMIT 5; */
 
/*  QUESTION 10
SELECT first 5 customers ORDER by name ASC  but skip the first 10
 
 --SELECT * FROM customer ORDER BY first_name ASC LIMIT 5 OFFSET 10; */
 
 
 /* QUESTION 11
Insert 5 customers into the database.
 
 INSERT INTO customer(
    store_id,
    first_name, 
    last_name,
    email,
    address_id
)  VALUES(
    '2',
    'Peter',
    'Awesomness',
    'peter@peter.com',
    '3'
)
 

 INSERT INTO customer(
    store_id,
    first_name, 
    last_name,
    email,
    address_id
)  VALUES(
    '2',
    'Peter',
    'Awesomness',
    'peter2@peter.com',
    '3'
)

 INSERT INTO customer(
    store_id,
    first_name, 
    last_name,
    email,
    address_id
)  VALUES(
    '2',
    'Peter',
    'Awesomness',
    'peter3@peter.com',
    '3'
)

 INSERT INTO customer(
    store_id,
    first_name, 
    last_name,
    email,
    address_id
)  VALUES(
    '2',
    'Peter',
    'Awesomness',
    'peter4@peter.com',
    '3'
)

 INSERT INTO customer(
    store_id,
    first_name, 
    last_name,
    email,
    address_id
)  VALUES(
    '2',
    'Peter',
    'Awesomness',
    'peter5@peter.com',
    '3'
)
 */
 
/*  QUESTION 12
Edit the second customer’s name

UPDATE customer SET last_name='Petersen', email='peter100@gmail.com' WHERE customer_id=604;
 */

 
/*  QUESTION 13
Delete the last customer 

DELETE FROM customer WHERE customer_id=604; */

/*     QUESTION 14
Get total payment that is above the average of all payments, join staff who made rental and customer. Data should be as in the image.

SELECT 
customer.first_name AS customer_first_name,
customer.last_name AS customer_last_name,
staff.first_name AS staff_first_name,
staff.last_name AS staff_last_name,
SUM(payment.amount) AS total_paid
FROM customer
JOIN payment ON payment.customer_id=customer.customer_id
JOIN staff ON payment.staff_id=staff.staff_id
GROUP BY customer.customer_id, staff.staff_id, payment.payment_id
HAVING SUM(payment.amount) > (SELECT AVG(amount) FROM payment)
ORDER BY total_paid DESC;
 */


/* QUESTION 15 - EXTRA
select all payments which happened between 2007-02-15 - 2007-02-20 and join customers who made payment

SELECT * FROM payment
JOIN customer ON payment.customer_id=customer.customer_id
WHERE payment_date BETWEEN '2007-02-15' AND '2007-02-20'
ORDER BY amount DESC
LIMIT 20
 */

/* QUESTION 16 - EXTRA
3- select all films and sort by title

SELECT * FROM film
ORDER BY title ASC
LIMIT 250
 */

/* QUESTION 17 - EXTRA
4- select  all payments where amount between 2-5 join staff and customer

SELECT * FROM payment
JOIN customer ON payment.customer_id=customer.customer_id
WHERE amount BETWEEN 2 AND 5
ORDER BY amount DESC
LIMIT 250

 */
