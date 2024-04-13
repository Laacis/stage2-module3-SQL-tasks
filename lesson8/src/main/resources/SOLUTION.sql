SELECT * FROM student WHERE birthday = (SELECT MAX(birthday) AS max_birth_day FROM student);
SELECT * FROM payment WHERE payment_date = (SELECT date(MIN(payment_date)) AS min_pay_date FROM payment);
SELECT AVG(m.mark) FROM mark m
    JOIN subject sub ON m.subject_id=sub.id
    WHERE sub.name='Math';
SELECT MIN(pay.amount) FROM payment pay
    JOIN paymenttype type ON pay.type_id=type.id
    WHERE type.name='WEEKLY';