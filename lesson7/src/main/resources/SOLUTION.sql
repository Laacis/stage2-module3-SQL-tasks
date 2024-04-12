SELECT * FROM mark WHERE mark > 6 ORDER BY mark DESC;
SELECT * FROM payment WHERE amount < 300 ORDER BY amount ASC;
SELECT * FROM paymenttype ORDER BY name;
SELECT * FROM student ORDER BY name DESC;
SELECT s.* FROM student s
    JOIN payment pay ON s.id = pay.student_id
    WHERE pay.amount > 1000
    ORDER BY s.birthday ASC;
