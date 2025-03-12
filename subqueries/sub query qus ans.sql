// 1 no: create a report that displays the employee number,
last name, salary of all employees
who earn more than average salary 
sort the results in ascending order by salary.//

ANS:

 Select employee_id, last_name, salary 
 from employees 
 where salary > (Select avg(salary)
 from employees)
 ORDER BY 3;
 

// 2 no:write a query that display the employee number and last name
of all employees who work in a departments with any employee
whose last name contains the letter 'u'.

ANS:
            
SELECT employee_id, last_name
from employees
where department_id in
                (select department_id
                from employees
                where last_name like '%u%');


// 3 no; the hr departments needs a report that displays the
last_name, department_id, job_id of all employees
whose department location_id is 1700.

ANS:

select last_name, department_id, job_id
from employees
where department_id in
            (select department_id
            from departments
            where location_id =1700);

// 4no: create a report for HR that displayed the last_name and salary
of every employee who report to king.

ANS:

select last_name, salary
from employees
where manager_id in
            (select employee_id
            from employees
            where last_name ='King');

                            //new qus 12.03.25//

 //57. Display details of departments in which the maximum salary
--is more than 10000.                      

Ans;
               
 SELECT * FROM DEPARTMENTS
 WHERE DEPARTMENT_ID IN
                ( SELECT DEPARTMENT_ID FROM EMPLOYEES
                    GROUP BY DEPARTMENT_ID
                    HAVING MAX(SALARY)>10000);

//-- 58. Display details of departments managed by ‘Smith’.

Ans;

SELECT * FROM DEPARTMENTS
WHERE MANAGER_ID IN
            (SELECT EMPLOYEE_ID 
             FROM EMPLOYEES
             WHERE FIRST_NAME='SMITH');

 //--60. Display employees who did not do any job in the past.
--SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID
--NOT IN (SELECT EMPLOYEE_ID FROM JOB_HISTORY)

Ans;

SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID NOT IN
            (SELECT EMPLOYEE_ID
                FROM JOB_HISTORY);    
