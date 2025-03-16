create table emp_1287046(
    eid number(6) constraint emp_1287046_eid_pk primary key,
    ename VARCHAR2(25),
    salary number(10),
    hire_date varchar2 (20),
    address varchar2(30)

);

--2no ans

alter table emp_1287046 add(
    dept_id number(8),
    dept_name VARCHAR2(20)
);

--3no ans

insert into emp_1287046 values(1,'sathe',2000,'01-01-2025','Azimpur',101,'AC');
insert into emp_1287046 values(2,'sathe',2000,'01-01-2025','Azimpur',101,'AC');
insert into emp_1287046 values(3,'sathe',2000,'01-01-2025','Azimpur',101,'AC');
insert into emp_1287046 values(4,'sathe',2000,'01-01-2025','Azimpur',101,'AC');



select*from emp_1287046;
order by 1;

--4no ans
create view empVu
    as select ename,dept_name, salary
    from emp_1287046
    where dept_id = 101;

select * from empVu;

--5no qus

create SEQUENCE emp_1287046_eid_seq
    start with 5
    INCREMENT by 1
    Maxvalue 9999
    NOCACHE
    NOCYCLE;


    insert into EMP_1287046 values (emp_1287046_eid_seq.nextval,'sathe',2000,'01-01-2025','Azimpur',101,'AC');
      insert into EMP_1287046 values (emp_1287046_eid_seq.nextval,'sathe',2000,'01-01-2025','Azimpur',101,'AC');

select* from emp_1287046
order by 1;