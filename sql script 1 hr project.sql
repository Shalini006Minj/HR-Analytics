SELECT * FROM hr_data.humanres_db;
Drop table HR_DBase;
Select * from HR_DBase;

-- created a dummy table where analysis will be performed
CREATE TABLE HR_DBase AS 
SELECT
	EmployeeID,
    Age,
    CASE
		WHEN Age <= 30 THEN '<= 30 years'
        ELSE '> 30 years'
        END AS AgeGroup,
	REPLACE(REPLACE(GENDER, 'Female', 'F'), 'Male', 'M') AS Gender,
    Department,
    REPLACE(REPLACE(Position, 'DataScientist', 'Data Scientist'), 'Marketinganalyst', 'Marketing Analyst') AS Position,
    YearsOfService,
    Salary,
    Case
		WHEN Salary >= 90000 THEN '90K - 100K'
		WHEN Salary >= 80000 THEN '80K - 90K'
        WHEN Salary >= 70000 THEN '70K - 80K'
        WHEN Salary >= 60000 THEN '60K - 70K'
        ELSE '50K - 60K'
        END AS SalaryBucket,
	PerformanceRating,
    WorkHours,
    Attrition,
	Promotion,
	TrainingHours,
	SatisfactionScore,
    LastPromotionDate
from humanres_db; 

Select * from HR_DBase;

-- Objective 1
-- for the entire organization; at company level
SELECT 
    COUNT(*) AS Total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100,2) AS Attrition_Count_percent,
    SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS Total_Active_employees,
    ROUND(AVG(Age),0) AS AvgAge,
    ROUND(AVG(YearsOfService),0) AS AvgYearsOfService,
    ROUND(AVG(Salary),0) AS AvgSalary,
    ROUND(AVG(SatisfactionScore),0) AS AvgSatisfactionScore,
    ROUND(AVG(PerformanceRating),0) AS AvgPerformanceRating,
    ROUND(AVG(WorkHours),0) AS AvgWorkHours,
    ROUND(AVG(TrainingHours),0) AS AvgTrainingHours
FROM HR_DBase;

-- for employees left the company
SELECT 
    COUNT(*) AS Total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100,2) AS Attrition_Count_percent,
    SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS Total_Active_employees,
    ROUND(AVG(Age),0) AS AvgAge,
    ROUND(AVG(YearsOfService),0) AS AvgYearsOfService,
    ROUND(AVG(Salary),0) AS AvgSalary,
    ROUND(AVG(SatisfactionScore),0) AS AvgSatisfactionScore,
    ROUND(AVG(WorkHours),0) AS AvgWorkHours,
    ROUND(AVG(TrainingHours),0) AS AvgTrainingHours
FROM HR_DBase
where attrition = 'Yes';

-- for the employees still working in the company
SELECT 
    COUNT(*) AS Total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100,2) AS Attrition_Count_percent,
    SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS Total_Active_employees,
    ROUND(AVG(Age),0) AS AvgAge,
    ROUND(AVG(YearsOfService),0) AS AvgYearsOfService,
    ROUND(AVG(Salary),0) AS AvgSalary,
    ROUND(AVG(SatisfactionScore),0) AS AvgSatisfactionScore,
    ROUND(AVG(WorkHours),0) AS AvgWorkHours,
    ROUND(AVG(TrainingHours),0) AS AvgTrainingHours
FROM HR_DBase
where attrition = 'No';

-- gender distribution
SELECT Gender, count(Gender),
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) As Total_Y_Count,
    SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) As Total_N_Count,
    Round(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)/count(gender)*100,2) AS Attrition_Yes_Percent,
    Round(SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) / count(gender)*100,2) AS Attrition_No_Percent
FROM hr_dbase
GROUP BY Gender;

-- department wise analysis
SELECT
	Department,
    COUNT(*) AS TotalEmp,
    ROUND(AVG(Salary),0) AS AvgSalary,
    ROUND(AVG(SatisfactionScore),0) AS AvgSatisfactionScore,
    ROUND(AVG(WorkHours),0) AS AvgWorkHours,
    ROUND(AVG(TrainingHours),0) AS AvgTrainingHours,
    ROUND(AVG(YearsOfService),0) AS AvgYearsOfService
FROM hr_dbase
WHERE Attrition = 'Yes'
GROUP BY Department;


SELECT Department, count(Department),
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) As Total_Y_Count,
    Round(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)/count(Department)*100,2) AS Attrition_Yes_Percent
FROM hr_dbase
GROUP BY Department
Order By Department;

-- Position wise analysis
SELECT Position, count(Position),
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) As Total_Y_Count,
    Round(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)/count(Position)*100,2) AS Attrition_Yes_Percent,
    ROUND(AVG(Salary),0) AS AvgSalary,
    ROUND(AVG(SatisfactionScore),0) AS AvgSatisfactionScore
FROM hr_dbase
GROUP BY Position
Order By AvgSalary ASC;


SELECT
  ROW_NUMBER() OVER (ORDER BY position) AS row_num,
  Position,
  Promotion,
  PerformanceRating,
  YearsOfService,
  EmployeeID,
  Attrition
FROM (
  SELECT DISTINCT Position, Promotion, PerformanceRating, YearsOfService, EmployeeID, Attrition
  FROM hr_dbase
  WHERE Promotion = 'No' AND PerformanceRating >= 4 AND YearsOfService > 5 AND Attrition = 'YES'
) AS ATTRITION_YES;

SELECT position, Round(AVG(TrainingHours),0), Round(AVG(SatisfactionScore),0) AS AvgSatisfactionScore
FROM hr_dbase
WHERE Attrition = 'YES'
GROUP BY position
ORDER BY AvgSatisfactionScore;


-- Objective 2
-- effectiveness of training programs on performance rating
SELECT count(*) as Total_employees, Round(AVG(PerformanceRating),0) AS AvgPerformanceRating, ROUND(AVG(TrainingHours),0) AS AvgTrainingHours
FROM hr_dbase
GROUP BY TrainingHours
ORDER BY AvgTrainingHours DESC;

-- effectiveness of training programs on satisfaction score
SELECT Department, count(*) as Total_employees, Round(AVG(SatisfactionScore),0) AS AvgSatisfactionScore, ROUND(AVG(TrainingHours),0) AS AvgTrainingHours
FROM hr_dbase
GROUP BY Department, SatisfactionScore
ORDER BY AvgTrainingHours DESC;

-- effectiveness of training programs on promotion
SELECT Department, count(*) as EMP_COUNT, ROUND(AVG(TrainingHours),0) AS AvgTrainingHours, Promotion
FROM hr_dbase
where promotion = 'No'
GROUP BY TrainingHours, Promotion, Department
ORDER BY TrainingHours DESC;

SELECT Department, count(*) as EMP_COUNT, ROUND(AVG(TrainingHours),0) AS AvgTrainingHours, Promotion
FROM hr_dbase
where promotion = 'Yes'
GROUP BY TrainingHours, Promotion, Department
ORDER BY TrainingHours DESC;






