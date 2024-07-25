SHOW databases;
USE techielakshay;
-- 1 
SELECT Learner_SOJ, COUNT(*)
FROM learners
WHERE Learner_SOJ IN ('SOT1', 'SOT2', 'SOT3')
GROUP BY Learner_SOJ;

-- 2	display the number of students joined in diffrent courses
SELECT Learner_selectedCourse, COUNT(*) as no_of_students
FROM learners
GROUP BY Learner_selectedCourse;

-- 3 
SELECT Learner_SOJ ,Learner_exp
FROM learners 
WHERE Learner_SOJ = 'SOT1' 
AND Learner_exp = (SELECT MAX(Learner_exp) FROM learners 
WHERE Learner_SOJ = 'SOT1');

-- 4 display the record of those students not having experience of 4 years
--  and source of joining is sot1
select learnerId , learner_firstName from learners 
where NOT Learner_exp > 4 and Learner_SOJ = "SOT1";

-- 5 dipaly the number of students having years of experience in 
-- btw 1 to 3
select * from learners 
where Learner_exp >= 1 and Learner_exp <= 3 ;
-- or we can use between keyword'
select * from learners 
where Learner_exp between 1 and 3;

-- 6 display the record of those students not having experience of 4 years
--  or source of joining is sot1
select learnerId , learner_firstName from learners 
where NOT Learner_exp > 4 or Learner_SOJ = "SOT1";
