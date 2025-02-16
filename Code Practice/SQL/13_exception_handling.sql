-- use space

-- select * from employee

-- begin transaction Salary_Employee
-- begin TRY
-- select salary/0 from employee
-- end TRY
-- begin CATCH
-- select ERROR_MESSAGE() as ERROR_MESSAGE
-- end catch

-- begin transaction salary_123
-- begin TRY
-- select salary from employee
-- end TRY
-- begin CATCH
-- select ERROR_MESSAGE() as ERROR_MESSAGE
-- end catch

-- begin transaction Salary_321
--     begin TRY
--         select*,select* name as newly_weekly from employee
--     end TRY
--     begin CATCH
--         select ERROR_MESSAGE() as ERROR_MESSAGE
--     end catch