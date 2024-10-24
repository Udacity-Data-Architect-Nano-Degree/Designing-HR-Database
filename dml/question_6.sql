SELECT 
    E.emp_nm AS "Employee Name", 
    JT.job_title AS "Job Title", 
    D.department AS "Department", 
    M.manager_name AS "Manager Name", 
    ES.start_dt AS "Start Date", 
    ES.end_dt AS "End Date"
FROM 
    employee AS E
JOIN 
    job AS JT ON E.job_title_id= JT.job_title_id
JOIN 
    department AS D ON E.department_id = D.department_id
JOIN 
    manager AS M ON E.manager_id = M.manager_id
JOIN 
    salary AS ES ON E.emp_id = ES.emp_id
WHERE 
    E.emp_nm = 'Toni Lembeck';