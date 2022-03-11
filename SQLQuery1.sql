create database Student

use Student

-- 1st table--
create table studentD (stu_id int identity, stu_name varchar(20), stu_roll int );

insert into studentD  (stu_name,stu_roll) values 
('Nitin',54),
('fazal',54),
('ashkeen',54),
('ritu',54),
('ritika',54);

-- 2nd table --

create table studentS (teacher_id int identity not null , stu_sub varchar(20), sub_teacher varchar(20) );

insert into studentS(stu_sub,sub_teacher) values 
('Os','Shelly'),
('math','Amit kumar'),
('c++','lalit Johri'),
('Java','Arvind Shukla'),
('DBMS','Ritu Nagela');


-- update in 1st table --

update studentD set stu_roll = 56 where stu_id = 2;
update studentD set stu_roll = 57 where stu_id = 3;
update studentD set stu_roll = 58 where stu_id = 4;
update studentD set stu_roll = 59 where stu_id = 5;

select * from studentD ;
select * from studentS;

-- DISTINCT --

SELECT DISTINCT stu_name,stu_roll
FROM studentD;

SELECT COUNT(DISTINCT stu_name) FROM studentD;

SELECT Count(*) AS Details  
FROM (SELECT DISTINCT stu_roll FROM studentD) AS d;


-- OR & AND & NOT --
select * from studentD where stu_roll = 56 or stu_name = 'nitin';
select * from studentS where stu_sub = 'Os' and sub_teacher = 'shelly';
SELECT * FROM studentD
WHERE NOT stu_name='Nitin';

-- ORDER BY --
SELECT * FROM studentD ORDER BY stu_name  desc; 

-- Select OFF --
SELECT TOP 25 PERCENT * FROM studentD;

-- MAX & MIN --

SELECT MAX(stu_roll) AS LargestPrice
FROM studentD;

-- count & sum --
SELECT COUNT(stu_roll) AS CountstuRoll
FROM studentD;

SELECT AVG(stu_roll) AS AvgstuRoll
FROM studentD;

SELECT SUM(Stu_roll) AS SumstuRoll
FROM studentD;

--lIke--
SELECT * FROM studentD
WHERE stu_name LIKE '_a%';


-- inner join --
select stu_name,stu_roll,stu_sub,sub_teacher
from studentD
inner join studentS ON studentD.stu_id=studentS.teacher_id;