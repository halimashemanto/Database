        // 1. Create a table and name using your ID preceded by emp (as emp106588), which
have 5 fields as eid, ename, salary, hire_date and address with appropriate data
types and create primary key on eid.      

--1no ans

create table emp_1287046(
    eid number(6) constraint emp_1287046_eid_pk primary key,
    ename VARCHAR2(25),
    salary number(10),
    hire_date varchar2 (20),
    address varchar2(30)
);

        //2. Add two new columns named ‘department_id’ ,’dept_name’ ALTER Table
Command.

--2no ans

alter table emp_1287046 add(
    dept_id number(8),
    dept_name VARCHAR2(20)
);

        //3. Insert values to the table.

--3no ans

insert into emp_1287046 values(1,'sathe',2000,'01-01-2025','Azimpur',101,'AC');
insert into emp_1287046 values(2,'sathe',2000,'01-01-2025','Azimpur',101,'AC');
insert into emp_1287046 values(3,'sathe',2000,'01-01-2025','Azimpur',101,'AC');
insert into emp_1287046 values(4,'sathe',2000,'01-01-2025','Azimpur',101,'AC');



select*from emp_1287046;
order by 1;

        //4. Create a view that which contains ename , dept_name and salary in department 80.


--4no ans
create view empVu
    as select ename,dept_name, salary
    from emp_1287046
    where dept_id = 101;

select * from empVu;

        //5. Create a sequence?

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

        //6. Give an appropriate example of insert data from subqueries .


--- 6 no ans

INSERT INTO EMP(eid,ename,salary,hire_date,address,department_id,dept_name)
SELECT employee_id,first_name||' '||last_name,salary,hire_date,country_name,department_id,department_name
FROM employees NATURAL JOIN departments NATURAL JOIN locations NATURAL JOIN countries
WHERE department_id = 100;

SELECT * FROM emp;