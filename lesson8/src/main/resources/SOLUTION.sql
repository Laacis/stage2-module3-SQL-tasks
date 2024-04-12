SELECT * FROM student WHERE birthday = (SELECT MIN(birthday) FROM student);
SELECT * FROM payment WHERE payment_date = (SELECT MIN(payment_date) FROM payment);
SELECT AVG(m.mark) FROM mark m
    JOIN subject sub ON m.subject_id=sub.id
    WHERE sub.name='Math';
SELECT MIN(pay.amount) FROM payment pay
    JOIN paymenttype type ON pay.type_id=type.id
    WHERE type.name='WEEKLY';