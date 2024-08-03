create table students(
   ID varchar(5),
   name varchar(20),
   dept_name varchar(20),
tot_cred numeric(3,0));

Types of Insert:

insert into students values('001','suresh','cs',9);

insert into students(ID,name,dept_name,tot-cred)
values('010','cheem','cs',99);

INSERT INTO students values('&ID','&name','&dept_name',&tot_cred);
 

insert all
into students values('002','mukesh','ds',8)
into students values('003','ramesh','physics',20)
into students values('004','rajesh','biology',30)
into students values('005','dinesh','mechanical',80)
select * from dual;



