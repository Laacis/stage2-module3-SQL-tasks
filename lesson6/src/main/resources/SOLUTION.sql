SELECT p.* FROM payment p
    JOIN paymenttype type on p.type_id = type.id
    WHERE type.name='MONTHLY';

SELECT m.* FROM mark m
    JOIN subject sub ON  m.subject_id = sub.id WHERE sub.name='Art';

SELECT s.* FROM student s
    JOIN payment pay ON s.id = pay.student_id
    WHERE pay.type_id = (
        SELECT id FROM paymenttype
        WHERE type.name = 'WEEKLY'
    );

SELECT s.* FROM student s
    JOIN mark m ON s.id = m.student_id
    JOIN subject sbj ON m.subject_id = sbj.id
    WHERE sbj.name = 'Math';