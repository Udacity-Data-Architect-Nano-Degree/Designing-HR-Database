select e.emp_id, e.emp_nm, j.job_title, d.department
from employee AS e
JOIN department AS d ON e.department_id = d.department_id
JOIN job AS j ON e.job_title_id = j.job_title_id