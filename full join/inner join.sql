SELECT w.last_name emp, m.last_name mgr
 FROM   employees w JOIN employees m
 ON 
   (w.manager_id = m.employee_id);