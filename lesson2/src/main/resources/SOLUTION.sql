INSERT INTO student (name, birthday, groupnumber) VALUES ('John', '2010-01-01', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Chris', '2010-02-02', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Carl', '2010-03-03', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Oliver', '2009-03-04', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('James', '2009-07-29', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Lucas', '2009-05-04', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Henry', '2009-11-23', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Jacob', '2009-05-09', 3);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Logan', '2009-03-12', 3);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Melia', '2008-02-24', 4);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Adolf', '2008-07-23', 4);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Ahmed', '2008-12-04', 4);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Margo', '2007-04-03', 5);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Jose', '2007-05-13', 5);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Ed', '2007-01-13', 5);


INSERT INTO subject (name, description, grade) VALUES
    ('Art','Art class for grade 1',1),
    ('Music', 'Music class for grade 1',1),
    ('Geography', 'Geography class for grade 2', 2),
    ('History', 'History class for grade 2', 2),
    ('PE', 'PE class for grade 3', 3),
    ('Math', 'Math class for grade 3', 3),
    ('Science', 'Science class for grade 4', 4),
    ('IT', 'IT class for grade 4', 4),
    ('Science 5', 'Science class for grade 5', 5),
    ('IT 5', 'IT class for grade 5', 5);

INSERT INTO paymenttype (name) VALUES ('DAILY'), ('WEEKLY'), ('MONTHLY');

INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES
(
     (SELECT id FROM paymenttype WHERE name = 'WEEKLY'),
     1000.00,
     CURRENT_TIMESTAMP(),
     (SELECT id FROM student WHERE name = 'John')
), (
    (SELECT id FROM paymenttype WHERE name = 'MONTHLY'),
    4000.00,
    CURRENT_TIMESTAMP(),
    (SELECT id FROM student WHERE name = 'Oliver')
), (
    (SELECT id FROM paymenttype WHERE name = 'WEEKLY'),
    1000.00,
    CURRENT_TIMESTAMP(),
    (SELECT id FROM student WHERE name = 'Henry')
),(
    (SELECT id FROM paymenttype WHERE name = 'DAILY'),
    200.00,
    CURRENT_TIMESTAMP(),
    (SELECT id FROM student WHERE name = 'James')
),(
    (SELECT id FROM paymenttype WHERE name = 'MONTHLY'),
    4000.00,
    CURRENT_TIMESTAMP(),
    (SELECT id FROM student WHERE name = 'Eva')
),(
    (SELECT id FROM paymenttype WHERE name = 'DAILY'),
    200.00,
    CURRENT_TIMESTAMP(),
    (SELECT id FROM student WHERE name = 'Ed')
);

INSERT INTO mark (student_id, subject_id, mark) VALUES
(
    (SELECT id FROM student WHERE name='Chris'),
    (SELECT id FROM subject WHERE name='Art'),
    8
), (
    (SELECT id FROM student WHERE name='Oliver'),
    (SELECT id FROM subject WHERE name='History'),
    5
), (
    (SELECT id FROM student WHERE name='James'),
    (SELECT id FROM subject WHERE name='Geography'),
    9
), (
    (SELECT id FROM student WHERE name='Jacob'),
    (SELECT id FROM subject WHERE name='Math'),
    4
), (
    (SELECT id FROM student WHERE name='Logan'),
    (SELECT id FROM subject WHERE name='PE'),
    9
), (
    (SELECT id FROM student WHERE name='Jose'),
    (SELECT id FROM subject WHERE name='Politics'),
    7
), (
    (SELECT id FROM student WHERE name='Ahmed'),
    (SELECT id FROM subject WHERE name='IT'),
    4
);

