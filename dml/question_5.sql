select department, count(*) from employee
join department on employee.department_id = department.department_id
GROUP BY department