DELETE student, mark, payment
    FROM student
    JOIN mark ON student.id = mark.student_id
    JOIN payment ON student.id = payment.student_id
    WHERE student.grade >= 4;

DELETE FROM student
    WHERE id IN (SELECT student_id FROM mark WHERE mark < 4);

DELETE payment, paymenttype
    FROM paymenttype
    JOIN payment ON paymenttype.id = payment.type_id
    WHERE paymenttype.name = 'Daily';

DELETE FROM marks WHERE mark < 7;