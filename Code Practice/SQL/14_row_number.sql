-- use space

-- select*, ROW_NUMBER() over(order by salary desc) as salary_number from employee

-- select*, ROW_NUMBER() over(order by age desc) as Age_number from employee

-- -- Define the CTE
-- WITH RankedEmployees AS (
--     SELECT 
--         *, 
--         ROW_NUMBER() OVER (ORDER BY salary DESC) AS SalaryRank
--     FROM employee
-- )
-- -- Query the CTE
-- SELECT *
-- FROM RankedEmployees
-- WHERE SalaryRank <= 10;
