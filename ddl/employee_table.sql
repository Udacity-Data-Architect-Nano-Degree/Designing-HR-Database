CREATE TABLE employee (
    ID SERIAL PRIMARY KEY,
    EMP_ID VARCHAR(10) NOT NULL,
    EMP_NM VARCHAR(255) NOT NULL,
    EMAIL VARCHAR(255) NOT NULL,
    HIRE_DT DATE NOT NULL,
    JOB_TITLE_ID INT NOT NULL,
    DEPARTMENT_ID INT NOT NULL,
    MANAGER_ID INT,
    EDUCATION_ID INT,
    FOREIGN KEY (JOB_TITLE_ID) REFERENCES job(JOB_TITLE_ID),
    FOREIGN KEY (DEPARTMENT_ID) REFERENCES department(DEPARTMENT_ID),
    FOREIGN KEY (MANAGER_ID) REFERENCES manager(MANAGER_ID),
    FOREIGN KEY (EDUCATION_ID) REFERENCES education(EDUCATION_ID)
);