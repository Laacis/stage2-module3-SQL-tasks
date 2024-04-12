SELECT * FROM payment WHERE amunt >= 500;
SELECT * FROM student
         WHERE birthday <= ADDDATE(CURRENT_DATE(), INTERVAL -20 YEAR);
SELECT * FROM student
    WHERE groupnumber = 10
    AND birthday >= ADDDATE(CURRENT_DATE(), INTERVAL -20 YEAR);
SELECT * FROM student
    WHERE name ='Mike'
    OR groupnumber BETWEEN 4 AND 6;
SELECT * FROM payment
    WHERE payment_date >= ADDDATE(CURRENT_DATE(), INTERVAL -8 MONTH);
SELECT * FROM student WHERE name LIKE 'A%';
SELECT * FROM student
    WHERE (name='Roxi' AND groupnumber=4)
    OR (name='Tallie' AND groupnumber=9);