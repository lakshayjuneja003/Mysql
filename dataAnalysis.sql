-- Three tables on which data is present [employee , courses , learners]

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


-- 7 count the number of number_of_companies the students belong to 

SELECT COUNT(DISTINCT Learner_company) as number_of_companies 
FROM learners;
