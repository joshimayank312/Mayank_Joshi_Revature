create table students(
	s_id int primary key,
    s_name varchar(50),
    s_age tinyint
);

insert into students (s_id, s_name, s_age) values (1, "Ram", 21);
insert into students (s_id, s_name, s_age) values (2, "Shamam", 21);

select * from students;