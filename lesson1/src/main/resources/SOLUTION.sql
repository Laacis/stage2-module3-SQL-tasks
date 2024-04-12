
CREATE TABLE Student (
    id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR(255),
    birthday DATE NOT NULL,
    group_id INT NOT NULL
);
CREATE TABLE Subject (
    id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR,
    description VARCHAR,
    grade INT NOT NULL
);
CREATE TABLE PaymentType (
    id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR
);
CREATE TABLE Payment (
    id BIGINT NOT NULL PRIMARY KEY,
    type_id BIGINT NOT NULL,
    amount DECIMAL(10,2),
    student_id BIGINT NOT NULL,
    payment_date DATETIME NOT NULL,
    FOREIGN KEY (type_id) REFERENCES PaymentType(id),
    FOREIGN KEY (student_id) REFERENCES Student(id)
);
CREATE TABLE Mark (
    id BIGINT NOT NULL PRIMARY KEY,
    student_id BIGINT NOT NULL,
    subject_id BIGINT NOT NULL,
    mark INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Student(id),
    FOREIGN KEY (subject_id) REFERENCES Subject(id)
);
