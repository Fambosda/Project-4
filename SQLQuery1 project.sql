#Project 5: Visualization of SQL Data with Power BI using Python Program
#Description: Build a data analysis visuals dashboard using Sales data of a company. Analysis includes the below reports to be developed using Power BI and SQL Data and Using Python Program
#       Emp Avg Sal by Dept
#       Employee Count Bye Dept
#       Sum of Sal by Dept
#     Emp Count by Zip Code
#Technologies Used: Microsoft SQL Server, Microsoft Power BI, Python


select * from EMPLOYEE
select * from EMP_DEPARTMENT

SELECT 
    EMP_DEPARTMENT.Dept_Name,
    AVG(EMPLOYEE.Emp_Sal) AS average_salary
FROM 
    EMPLOYEE
INNER JOIN 
    EMP_DEPARTMENT ON EMPLOYEE.EDept_Id = EMP_DEPARTMENT.Dept_Id
GROUP BY 
    EMP_DEPARTMENT.Dept_Name;



	SELECT 
    EMP_DEPARTMENT.Dept_Name,
    COUNT(EMPLOYEE.Emp_ID) AS Number_of_Employees
FROM 
    EMPLOYEE
INNER JOIN 
    EMP_DEPARTMENT ON EMPLOYEE.EDept_Id = EMP_DEPARTMENT.Dept_Id
GROUP BY 
    EMP_DEPARTMENT.Dept_Name;

	   
	SELECT
	Emp_Zip,
	COUNT(Emp_ID) AS number_of_employees
FROM EMPLOYEE
GROUP BY Emp_Zip