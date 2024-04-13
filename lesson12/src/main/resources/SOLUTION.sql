DELETE m, p, s
    FROM mark m
    JOIN payment p ON m.student_id = p.student_id
    JOIN student s ON m.student_id = s.id
    WHERE s.groupnumber >= 4;

DELETE m, p, s
       FROM mark m
       JOIN payment p ON m.student_id = p.student_id
       JOIN student s ON m.student_id = s.id
       WHERE m.mark < 4;

DELETE p, t
       FROM payment p
       JOIN paymenttype t ON p.type_id = t.id
       WHERE  t.name = 'DAILY';

DELETE FROM mark WHERE mark < 7;