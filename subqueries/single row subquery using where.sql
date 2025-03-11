select last_name, job_id, salary
from employees
where job_id = (
        select job_id
        from employees
        where last_name = 'Taylor')
 And salary>
        (select salary
        from employees
        where last_name = 'Taylor'
        );