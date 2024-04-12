SELECT s.* FROM student s
    JOIN (
        SELECT student_id
        FROM mark
        GROUP BY student_id
        HAVING AVG(mark) > 8
) m ON s.id=m.student_id;

SELECT s.id, s.name FROM student s
    JOIN (
        SELECT student_id, MIN(mark) AS min_mark
        FROM mark
        GROUP BY student_id
    ) m ON s.id=m.student_id
    WHERE m.min_mark > 7;

SELECT s.id, s.name FROM student s
    JOIN (
        SELECT student_id
        FROM payment
        WHERE YEAR(payment_date) = 2019
        GROUP BY student_id
        HAVING COUNT(*) >2
    ) pay ON s.id=pay.student_id;