SHOW databases;
CREATE DATABASE if not exists Techielakshay;
use techielakshay;
SELECT database();
show tables;
CREATE TABLE courses(
	course_Id    INT PRIMARY KEY auto_increment not null,
    course_duration   INT not null ,
    course_name   varchar(100) not null,
    course_fee   INT not null
    
);
desc courses;


insert into courses(course_duration , course_name ,course_fee ) values (1 , "The Excel Mastery Course" , 1299 );
insert into courses(course_duration , course_name ,course_fee ) values (2 , "DSA For Interview Prepration " , 4999 );
insert into courses(course_duration , course_name ,course_fee ) values (1 , "SQL Bootcamp" , 1999 );

CREATE TABLE learners (
    LearnerId INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Learner_firstName   VARCHAR(20)  NOT NULL,
    Learner_lastName    VARCHAR(20)  NOT NULL,
    Learner_email       VARCHAR(60) UNIQUE  NOT NULL,
    Learner_phoneNumber     VARCHAR(15)  NOT NULL,
    Learner_enrollmentDate      TIMESTAMP  NOT NULL,
    Learner_selectedCourse      INT  NOT NULL,
    Learner_exp     decimal  NOT NULL,
    Learner_company VARCHAR(40),
    Learner_SOJ VARCHAR(30)  NOT NULL,
    Batch_date TIMESTAMP  NOT NULL,
    Learner_location VARCHAR(40)  NOT NULL,
    FOREIGN KEY (Learner_selectedCourse) REFERENCES courses(course_Id)
);
INSERT INTO learners (Learner_firstName, Learner_lastName, Learner_email, Learner_phoneNumber, Learner_enrollmentDate, Learner_selectedCourse, Learner_exp, Learner_company, Learner_SOJ, Batch_date, Learner_location) VALUES
('John', 'Doe', 'john.doe@example.com', '1234567890', '2023-01-15 10:00:00','2023-01-15 10:00:00', 1, 2, 'TechCorp', 'SOT1', '2023-06-01 10:00:00', 'New York'),
('Jane', 'Smith', 'jane.smith@example.com', '2345678901', '2023-02-20 11:00:00', 2, 1, 'InnoTech', 'SOT2', '2023-07-01 11:00:00', 'Los Angeles'),
('Michael', 'Brown', 'michael.brown@example.com', '3456789012', '2023-03-10 12:00:00', 3, 3, 'WebSolutions', 'SOT3', '2023-08-01 12:00:00', 'Chicago'),
('Emily', 'Davis', 'emily.davis@example.com', '4567890123', '2023-04-25 13:00:00', 1, 2, 'TechCorp', 'SOT1', '2023-09-01 13:00:00', 'Houston'),
('Daniel', 'Wilson', 'daniel.wilson@example.com', '5678901234', '2023-05-30 14:00:00', 2, 1, 'InnoTech', 'SOT2', '2023-10-01 14:00:00', 'Phoenix'),
('Sophia', 'Martinez', 'sophia.martinez@example.com', '6789012345', '2023-06-15 15:00:00', 3, 3, 'WebSolutions', 'SOT3', '2023-11-01 15:00:00', 'Philadelphia'),
('James', 'Taylor', 'james.taylor@example.com', '7890123456', '2023-07-20 16:00:00', 1, 2, 'TechCorp', 'SOT1', '2023-12-01 16:00:00', 'San Antonio'),
('Isabella', 'Anderson', 'isabella.anderson@example.com', '8901234567', '2023-08-25 17:00:00', 2, 1, 'InnoTech', 'SOT2', '2024-01-01 17:00:00', 'San Diego'),
('David', 'Thomas', 'david.thomas@example.com', '9012345678', '2023-09-10 18:00:00', 3, 3, 'WebSolutions', 'SOT3', '2024-02-01 18:00:00', 'Dallas'),
('Olivia', 'Jackson', 'olivia.jackson@example.com', '0123456789', '2023-10-20 19:00:00', 1, 2, 'TechCorp', 'SOT1', '2024-03-01 19:00:00', 'San Jose');

SELECT employee;
insert into employee (FirstName , LastName , Age , Salery , Location ) values ("karan " , "kumar" , 23 , 300000, "Bengluru");
-- DATA ANALYSIS
-- 1. GIVE ME THE NAME OF PERSON HAVING HIGHEST SALERY
SELECT * FROM employee ORDER BY Salery DESC LIMIT 1;

select * from employee where salery = (
	select MAX(Salery) from employee 
) LIMIT 1;
desc employee;

-- 2 get the record of [erson with highest salery of which filter was age 
SELECT * FROM employee where age > 20  ORDER BY Salery DESC LIMIT 1;


-- 3. count the number of enrollments of courses
SELECT COUNT(*) AS NUMBER_OF_ENROLLMENTS FROM learners;

-- 4 .  count the number of enrollments of courses where courses purchased by students is 3[SQL Bootcamp]
SELECT COUNT(*) AS NUMBER_OF_ENROLLMENTS FROM learners WHERE Learner_selectedCourse = 3;



-- 5 COUNT THE NUMBER OF ENROLLMENTS IN THE MONTH OF JAN 
SELECT COUNT(*) FROM learners where  Learner_enrollmentDate like '%-02-%';


-- 6 update the column of company and years of experience of first record
update learners SET Learner_exp = "10" , Learner_company = 'Amazon ' 
where LearnerId = 1;
