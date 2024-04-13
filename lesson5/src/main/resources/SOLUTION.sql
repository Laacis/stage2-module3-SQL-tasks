SELECT * FROM payment WHERE amount >= 500;

SELECT * FROM student
         WHERE birthday <= DATEADD('20240413', INTERVAL -20 YEAR);

SELECT * FROM student
    WHERE groupnumber = 10
    AND birthday >= DATEADD('20240413', INTERVAL -20 YEAR);

SELECT * FROM student
    WHERE name LIKE 'Mike%'
    OR groupnumber BETWEEN 4 AND 6;

SELECT * FROM payment
    WHERE payment_date >= DATEADD('20240413', INTERVAL -8 MONTH);

SELECT * FROM student WHERE name LIKE 'A%';

SELECT * FROM student
    WHERE (name LIKE 'Roxi%' AND groupnumber=4)
    OR (name LIKE 'Tallie%' AND groupnumber=9);