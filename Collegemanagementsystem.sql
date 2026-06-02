create database if not exists college_db;
use college_db;
create table students(
student_id int primary key,
name varchar(50),
email varchar(100)unique,
gender char(1),
age int check(age>16),
city varchar(50)
);
create table courses(
course_id int primary key,
course_name varchar(100),
credits int);
create table faculty(
faculty_id int primary key,
faculty_name varchar(100),
department varchar(50));
create table enrollments(
enrollment_id int primary key,
student_id int,
course_id int,
foreign key(student_id) references students(student_id),
foreign key(course_id) references courses(course_id),
semester varchar(20),
marks int);
insert into students 
(student_id,name,email,gender,age,city)
values
(1,"Aman","1aman@gmail.com","M",20,"Bhopal"),
(2,"Naman","2Nman@gmail.com","M",21,"Delhi"),
(3,"Amy","3amy@gmail.com","F",19,"Pune"),
(4,"Shruti","4shruti@gmail.com","F",20,"Lucknow"),
(5,"Sania","5Sania@gmail.com","F",20,"Banglore"),
(6,"Archit","6archit@gmail.com","M",18,"Bhopal"),
(7,"Suryansh","7surya@gmail.com","M",20,"Kolkata"),
(8,"Isha","8isha@gmail.com","F",20,"Hyderabad"),
(9,"Alice","9alice@gmail.com","M",22,"Jaipur"),
(10,"Raj","10raj@gmail.com","M",20,"Delhi");

insert into courses
(course_id,course_name,credits)
values
(1001,"AIML",4),
(1002,"AIML",4),
(1003,"AIML",4),
(1004,"AIML",4),
(1005,"AIML",4);

insert into faculty 
(faculty_id,faculty_name,department)
values
(101,"Arya Shukla","Scope"),
(102,"Manit Arora","Scai"),
(103,"Shivaay Rathore","Sasl");

insert into enrollments
(enrollment_id,student_id,course_id,semester,marks)
values
(100001,1,1001,1,89),
(100002,2,1002,1,80),
(100003,3,1003,1,98),
(100004,4,1004,1,67),
(100005,5,1005,1,78),
(100006,6,1001,1,81),
(100007,7,1002,1,90),
(100008,8,1003,1,39),
(100009,9,1004,1,75),
(100010,10,1005,1,69),
(100011,1,1001,2,47),
(100012,2,1002,2,54),
(100013,3,1003,2,96),
(100014,4,1004,2,59),
(100015,5,1005,2,67),
(100016,6,1001,2,88),
(100017,7,1002,2,95),
(100018,8,1003,2,83),
(100019,9,1004,2,19),
(100020,10,1005,2,100);

update students
set city="Patna"
where student_id=3;

update enrollments
set marks=marks+5
where enrollment_id>100000;

delete from enrollments
where student_id=5;
delete from students
where student_id=5;

delete from enrollments
where enrollment_id<100000 and marks<35;

select * from students;
select name,city from students;
select distinct city from students;
select name from students 
where age>20;
select name from students
where city="Delhi";
select * from students 
where city!="Munbai";
select * from enrollments 
where marks between 70 and 90;
select * from students 
where city= "Delhi" or "Chandigarh";
select * from students
where name like "A%";
select * from students
where email like "%gmail.com";
