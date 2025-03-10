--Display the first name and join date of the employees 
--who joined between 2002 and 2005.

Select first_name, hire_date
from Employees
where to_char(hire_date, 'yy') between 02 and 05;

Select first_name, hire_date
from Employees
where hire_date between '01-Jan-2002' and '31-Dec-2005';

--Display first name and join date of the employees who is either
--IT Programmer or Sales Man.

Select first_name, hire_date
from Employees
where job_id in ('IT_PROG','SA_MAN');

Select first_name, hire_date
from Employees
where job_id like '%PROG%' or job_id like '%MAN%';


--Display employees who joined after 1st January 2008.

select first_name, last_name, hire_date
from employees
where   hire_date > '01-Jan-08';



--Display details of employee with ID 150 or 160.
 Select * 
 from Employees
 where  Employee_id in (150,160);



--Display first name, salary, commission pct, 
--and hire date for employees with salary less than 10000.

select first_name, salary, Commission_pct, hire_date
from employees
where salary < 10000;
