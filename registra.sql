create database if not exists db_registra;
use db_registra;

drop table if exists tbl_student; 
create table tbl_student(
 st_ID int unsigned not null auto_increment primary key,
 first_name varchar(100) not null,
 last_name varchar(100) not null,
 birthDate date not null,
 email text not null
--  course_ID int unsigned not null,
 -- foreign key (course_ID) references tbl_course(course_ID)
 -- on delete set null
 -- on update cascade
);

drop table if exists tbl_course;
create table tbl_course(
 course_ID int unsigned not null auto_increment primary key,
 course_name varchar(100) not null,
 weekday ENUM('sunday', 'monday', 'tuesday', 'wednsday', 'thursday', 'friday', 'saterday'),
 course_time TIME,
 location text not null
);

insert ignore into tbl_student(first_name, last_name, birthDate, email) values
('Riw', 'Simms', '2000-08-31', 'lalala.gov'),
('Phil', 'Johnson', '2000-09-11', 'blahblah.gov')
;
select * from tbl_student;

insert into tbl_course values 
(1000, 'CST101', 'tuesday', '10:30:00', 'riverhead')
;
select * from tbl_course;

