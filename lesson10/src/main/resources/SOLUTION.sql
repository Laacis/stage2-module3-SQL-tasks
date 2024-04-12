SELECT sub.* FROM subject sub
    JOIN (
        SELECT subject_id, AVG(mark) AS avg_mark
        FROM mark
        GROUP BY subject_id
    ) AS avg_sub_mark ON sub.id=avg_sub_mark.subject_id
    WHERE avg_sub_mark.avg_mark > (
        SELECT  AVG(mark) FROM mark
        );

SELECT stud.* FROm student stud JOIN (
    SELECT student_id, AVG(amount) AS avg_pay
    FROM payment
    GROUP BY student_id
    ) AS avg_stud_pay ON stud.id=stud_avg_pay.student_id
    WHERE avg_stud_pay.avg_pay < (
        SELECT AVG(amount) FROM payment
    );