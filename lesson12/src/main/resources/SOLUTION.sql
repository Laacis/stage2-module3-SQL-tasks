DELETE FROM mark WHERE student_id IN (
    SELECT id
    FROM student
    WHERE grade >= 4
);
DELETE FROM payment WHERE student_id IN (
    SELECT id
    FROM student
    WHERE grade >= 4
);
DELETE FROM student WHERE grade >= 4;

DELETE FROM student WHERE id IN (
    SELECT student_id
    FROM mark
    WHERE mark < 4
);

DELETE FROM payment WHERE type_id IN (
    SELECT id
    FROM paymenttype
    WHERE name = 'DAILY'
);
DELETE FROM paymenttype WHERE  name = 'DAILY';

DELETE FROM marks WHERE mark < 7;