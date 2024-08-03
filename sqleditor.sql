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



SQL> create table dept(
  2  Dno number (3) primary key,
  3  Dname varchar(15) not null,
  4  Zone varchar(10) Default 'North');

Table created.

SQL> create table emp()
  2  
SQL> create table emp(
  2  empcode number(30) primary key,\
  3  
SQL> create table emp(
  2  empcode number(30) primary key,
  3  name varchar(15),
  4  deptno number(3) references dept(Dno),
  5  salary numeric(7,1));

Table created.

SQL> insert all
  2  
SQL> alter table dept where Dno number(3) primary key set Dno varchar(3)primary key;
alter table dept where Dno number(3) primary key set Dno varchar(3)primary key
                 *
ERROR at line 1:
ORA-01735: invalid ALTER TABLE option 


SQL> insert all
  2  into dept values(1,'operations')
  3  into dept values(2,'finance,'west')
  4  select * from dual;
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> insert all
  2  into dept values(1,'operations')
  3  into dept values(2,'finance','west')
  4  select * from dual;
into dept values(1,'operations')
     *
ERROR at line 2:
ORA-00947: not enough values 


SQL> insert all
  2  into dept values(1,'operations',)
  3  into dept values(2,'finance','west')
  4  select * from dual;
into dept values(1,'operations',)
                                *
ERROR at line 2:
ORA-00936: missing expression 


SQL> insert all
  2  into dept values(1,'operations','north')
  3  into dept values(2,'finance','west')
  4  into dept values(3,'sales','south')
  5  into dept values(5,'human resource','west')
  6  select * from dual;

4 rows created.

SQL> insert all
  2  into emp values(100,'ramesh',1,100000)
  3  into emp values(101,'mukesh',2,120000)
  4  into emp values(102,'suresh',1,100000)
  5  into emp values(108,'rajesh',3,140000)
  6  into emp values(110,'dinesh',2,120000)
  7  select * from dual;

5 rows created.

SQL> select Dno,name,salary from dept;
select Dno,name,salary from dept
                *
ERROR at line 1:
ORA-00904: "SALARY": invalid identifier 


SQL> select Dno,name from dept;
select Dno,name from dept
           *
ERROR at line 1:
ORA-00904: "NAME": invalid identifier 


SQL> select Dno,name from dept,emp;

       DNO NAME                                                                 
---------- ---------------                                                      
         1 ramesh                                                               
         2 ramesh                                                               
         3 ramesh                                                               
         5 ramesh                                                               
         1 mukesh                                                               
         2 mukesh                                                               
         3 mukesh                                                               
         5 mukesh                                                               
         1 suresh                                                               
         2 suresh                                                               
         3 suresh                                                               

       DNO NAME                                                                 
---------- ---------------                                                      
         5 suresh                                                               
         1 rajesh                                                               
         2 rajesh                                                               
         3 rajesh                                                               
         5 rajesh                                                               
         1 dinesh                                                               
         2 dinesh                                                               
         3 dinesh                                                               
         5 dinesh                                                               

20 rows selected.

SQL> spoof off;
SP2-0042: unknown command "spoof off" - rest of line ignored.
SQL> spool off;
SQL> create table marks(
  2  regno number(3),
  3  mark1 number(3) check(mark1>=0 and mark1<=100),
  4  mark2 number(3) check(marks2 between 0 and 100),
  5  total number(3),\
  6  
SQL> create table marks(
  2    2  regno number(3),
  3    3  mark1 number(3) check(mark1>=0 and mark1<=100),
  4    4  mark2 number(3) check(marks2 between 0 and 100),
  5    5  total number(3),
  6  
SQL> 
SQL> create table marks(
  2      regno number(3),
  3      mark1 number(3) check(mark1>=0 and mark1<=100),
  4      mark2 number(3) check(marks2 between 0 and 100),
  5      total number(3),
  6  	grade char(2) check(grade in ('A+','A','B','C','D','E','F'));
    mark2 number(3) check(marks2 between 0 and 100),
                                                   *
ERROR at line 4:
ORA-02438: Column check constraint cannot reference other columns 


SQL> create table marks(
  2    2      regno number(3),
  3    3      mark1 number(3) check(mark1>=0 and mark1<=100),
  4    4      mark2 number(3) check(mark2 between 0 and 100),
  5    5      total number(3),
  6    6     grade char(2) check(grade in ('A+','A','B','C','D','E','F'));
  2      regno number(3),
  *
ERROR at line 2:
ORA-00904: : invalid identifier 


SQL> 
SQL> create table marks(
  2          regno number(3),
  3          mark1 number(3) check(mark1>=0 and mark1<=100),
  4          mark2 number(3) check(mark2 between 0 and 100),
  5          total number(3),
  6         grade char(2) check(grade in ('A+','A','B','C','D','E','F'));
       grade char(2) check(grade in ('A+','A','B','C','D','E','F'))
                                                                  *
ERROR at line 6:
ORA-00907: missing right parenthesis 


SQL> create table marks(
  2          regno number(3),
  3          mark1 number(3) check(mark1>=0 and mark1<=100),
  4          mark2 number(3) check(mark2 between 0 and 100),
  5          total number(3),
  6         grade char(2) check(grade in ('A+','A','B','C','D','E','F')));

Table created.

SQL> insert into marks(1,101,50,90,'B');
insert into marks(1,101,50,90,'B')
                  *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> insert into marks values(1,101,50,90,'B');
insert into marks values(1,101,50,90,'B')
*
ERROR at line 1:
ORA-02290: check constraint (MCA020.SYS_C0090273) violated 


SQL> insert into marks values(1,100,50,90,'B');

1 row created.

SQL> insert into marks values(2,99,30,80,'Z');
insert into marks values(2,99,30,80,'Z')
*
ERROR at line 1:
ORA-02290: check constraint (MCA020.SYS_C0090275) violated 


SQL> insert into marks values(3,49,1000,80,'A');
insert into marks values(3,49,1000,80,'A')
                              *
ERROR at line 1:
ORA-01438: value larger than specified precision allowed for this column 


SQL> spool off;
