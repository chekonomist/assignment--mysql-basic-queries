
# [Example]
# 1 Write a query to display the full name (FIRST_NAME + LAST_NAME) for all employees whose first name is 'John'.

SELECT FIRST_NAME, LAST_NAME
FROM Employees
WHERE
  FIRST_NAME = 'John';

# [Your Work Below]

# 1 Write a query to select all record from employees where
last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.

SELECT *
FROM Employees
WHERE
  (LAST_NAME= "Blake") OR
  (LAST_NAME = "Scott") OR
  (LAST_NAME= "King") OR
  (LAST_NAME= "Ford")
  ;

# 2 Write a query to display the full name (FIRST_NAME + LAST_NAME)
and SALARY for all employees whose salary that is greater than $15,000.

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM Employees
WHERE
  SALARY > 15000
  ;

# 2 Write a query to display the full name (FIRST_NAME + LAST_NAME)
and DEPARTMENT_ID of all employees in departments 30 or 100
in ascending order.

SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID
FROM Employees
WHERE
  (DEPARTMENT_ID = 30 OR DEPARTMENT_ID=100)
ORDER BY DEPARTMENT_ID ASC
  ;

# 3 Write a query to display the full name (FIRST_NAME + LAST_NAME)
and SALARY for all employees whose salary is not in the range $10,000
through $15,000 and are in department 30 or 100.

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM Employees
WHERE
  (SALARY NOT BETWEEN 10000 AND 15000) AND
  (DEPARTMENT_ID = 30 OR DEPARTMENT_ID = 100)
  ;

# 4 Write a query to display the full name (FIRST_NAME + LAST_NAME)
and HIRE_DATE for all employees who were hired in 1987.

SELECT FIRST_NAME, LAST_NAME, HIRE_DATE
FROM Employees
WHERE
  YEAR(HIRE_DATE)=1987
  ;


# 5 Write a query to display the first name of all employees
who have both "b" and "c" in their first name.

SELECT FIRST_NAME
FROM Employees
  WHERE
  UPPER(FIRST_NAME) LIKE '%C%' OR
  UPPER(FIRST_NAME) LIKE '%B%'
  ;


# 6 Write a query to display the last name, job, and salary
for all employees whose job is that of a Programmer (IT_PROG) or
a Shipping Clerk (SH_CLERK), and whose salary is not equal
to $4,500, $10,000 or $15,000.

SELECT LAST_NAME, JOB_ID, SALARY
FROM Employees
WHERE
  (JOB_ID = 'IT_PROG' OR JOB_ID = 'SH_CLERK') AND
  (SALARY != 4500 OR SALARY != 10000 OR SALARY != 15000)
  ;

# 7 Write a query to display the last name of employees whose names have exactly 6 characters.

SELECT LAST_NAME
FROM Employees
WHERE
  LAST_NAME LIKE '______'
  ;

# 8 Write a query to display the last name of employees having 'e' as the third character.

SELECT LAST_NAME
FROM Employees
WHERE
  LAST_NAME LIKE '__e%'
  ;

# 9 Write a query to display the unique values of JOBS_ID available in the employees table.

SELECT DISTINCT JOB_ID
FROM Employees
;

----------------
