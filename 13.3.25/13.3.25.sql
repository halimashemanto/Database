create table retired_employees(
    employee_id number primary key,
    FIRST_NAME VARCHAR2(20), 
LAST_NAME       VARCHAR2(25) NOT NULL ,
EMAIL          VARCHAR2(25) NOT NULL ,
RETIRED_DATE      DATE NOT NULL,
JOB_ID         VARCHAR2(10) NOT NULL ,
SALARY                  NUMBER(8,2)  ,
MANAGER_ID              NUMBER(6)  ,  
DEPARTMENT_ID           NUMBER(4)
);

insert into retired_employees 
  values(301, 'Rick', 'Dayle', 'RDAYLE', '18-MAR-2010', 'AD_PRES', 8000, 124, 90);
insert into retired_employees 
  values(302, 'Meena', 'Rac', 'MRAC', '21-SEP-2011', 'AD_VP', 11000, 149, 90);
insert into retired_employees 
  values(303, 'Mex', 'Haan', 'MHAAN', '13-JAN-2010', 'AD_VP', 9500, 149, 80);
insert into retired_employees 
  values(304, 'Alexandera', 'Runold', 'ARUNOLD', '01-JAN-2011', 'IT_PROG', 7500, 124, 60);
insert into retired_employees 
  values(305, 'Bruk', 'Ernst', 'BERNST', '21-MAY-2010', 'IT_PROG', 6000, 149, 60);
insert into retired_employees 
  values(306, 'Dravid', 'Aust','DAUST', '25-JUN-2009', 'IT_PROG', 4800, 124, 60);
insert into retired_employees 
  values(307, 'Raj', 'Patil', 'RPATIL', '05-FEB-2012', 'IT_PROG', 4800, 201, 60);
insert into retired_employees 
  values(308, 'Rahul', 'Bose', 'RBOSE', '17-AUG-2012', 'FI_MGR', 12008, 124, 100);
insert into retired_employees 
  values(309, 'Dany', 'Fav', 'DFAV', '16-AUG-2011', 'FI_ACCOUNT', 9000, 101, 90);
insert into retired_employees 
  values(310, 'James', 'Ken', 'JKEN', '28-SEP-2010', 'FI_ACCOUNT', 8200, 101, 90);
insert into retired_employees 
  values(311, 'Shana', 'Grag', 'SGRAG', '30-SEP-2010', 'FI_ACCOUNT', 7700, 201, 100);
insert into retired_employees 
  values(312, 'Peter', 'Jois', 'PJOIS', '07-JUN-2014', 'FI_ACCOUNT', 7800, 124, 100);
insert into retired_employees 
  values(313, 'Lui', 'Pops', 'LPOPS', '07-DEC-2010', 'FI_ACCOUNT', 6900, 201, 100);
insert into retired_employees 
  values(314, 'Del', 'Raph', 'DRAPH', '07-DEC-2012', 'PU_MAN', 11000, 101, 30);
insert into retired_employees 
  values(315, 'Alex', 'Khurl', 'AKHURL', '18-MAY-2011', 'PU_CLERK', 3100, 149, 30);

COMMIT;



select * from retired_employees;


 SELECT job_id
 FROM   
employees
 UNION 
SELECT job_id
 FROM   
retired_employees;



 SELECT job_id, department_id
 FROM   
employees
 UNION ALL
 SELECT job_id, department_id
 FROM   
retired_employees
 ORDER BY  job_id;
 
 
 
 SELECT  manager_id,department_id
 FROM   
employees
 INTERSECT
 SELECT manager_id,department_id
 FROM   
retired_employees;


SELECT employee_id, job_id
 FROM employees
 WHERE department_id = 80
 MINUS
 SELECT employee_id, job_id
 FROM retired_employees
 WHERE department_id = 90;
 
 
 
 
 
 
 SELECT location_id, department_name "Department", 
TO_CHAR(NULL) "Warehouse location"  
FROM departments
 UNION
 SELECT location_id, TO_CHAR(NULL) "Department", 
state_province
 FROM locations;
 
 
 
 select * from emp;
 
 insert into emp(emp_id,email,department_id, dept_name, salary, name)
 values(7,'Rakib@gmail.com',101, 'DDD', 20000, 'Rakib');
 
 insert into emp(emp_id,email,department_id, dept_name, salary, name)
 values(7,'RahmatUllah@gmail.com',NULL, 'DDD', 20000, 'Rahmat');



 insert into emp values(8,'Rahmat',30000,'Ullah@gmail.com',NULL,'NT');
 
 commit;
 
 insert into emp(emp_id,email,department_id, dept_name, salary, name)
    
    SELECT employee_id, email, To_char(null), department_name, salary,last_name
    from employees NATURAL JOIN departments; 
 
 rollback;
 
 





 
 select * from emp;
 
 update emp set department_id=150, email='rullah@gmail.com'
 where emp_id=8;
 
 update emp set department_id=150
 where name='Rahmat';
 
 rollback;
 
 commit;