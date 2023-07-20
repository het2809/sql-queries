USE employees;

SELECT EMP_NO,
DEPARTMENT,
SALARY,
AVG(SALARY) OVER() 
FROM EMPLOYEES; 

SELECT EMP_NO,
DEPARTMENT,
SALARY,
AVG(SALARY) OVER() , 
MIN(SALARY) OVER() , 
MAX(SALARY) OVER() 
FROM EMPLOYEES; 
	-- --OR
SELECT MAX(SALARY),
MiN(SALARY),
AVG(SALARY),DEPARTMENT
 FROM EMPLOYEES 
 GROUP BY DEPARTMENT;

SELECT DEPARTMENT,
AVG(SALARY) ,
 MAX(SALARY) , 
 MIN(SALARY)
 FROM EMPLOYEES 
 GROUP BY DEPARTMENT;

SELECT EMP_NO,
DEPARTMENT,
SALARY,
AVG(SALARY) OVER() ,
MIN(SALARY) OVER() ,
MAX(SALARY) OVER() 
FROM EMPLOYEES;

 SELECT * ,
 MAX(SALARY) OVER() 
 FROM EMPLOYEES 
 GROUP BY DEPARTMENT;
 
  SELECT * ,
  MAX(SALARY) OVER(PARTITION BY DEPARTMENT) 
  FROM EMPLOYEES;
  
  SELECT DEPARTMENT ,
  SALARY ,
  MAX(SALARY) OVER(PARTITION BY DEPARTMENT) AS MAX_SALARY,
  MIN(SALARY) OVER(PARTITION BY DEPARTMENT)AS MIN_SALARY,
  AVG(SALARY) OVER(PARTITION BY DEPARTMENT)AS AVG_SALARY 
  FROM EMPLOYEES;
  
  SELECT DEPARTMENT ,
  SALARY ,
  MAX(SALARY) OVER(PARTITION BY DEPARTMENT) AS MAX_SALARY,
  MIN(SALARY) OVER(PARTITION BY DEPARTMENT)AS MIN_SALARY,
  AVG(SALARY) OVER(PARTITION BY DEPARTMENT)AS AVG_SALARY,
  COUNT(*) OVER(PARTITION BY DEPARTMENT)AS COUNT 
  FROM EMPLOYEES;


