use space

select * from company
select * from project
select * from employee

select CONCAT(Upper(SUBSTRING(e.name,1,3)),Lower(SUBSTRING(e.department,1,1)),Upper(SUBSTRING(p.Project_name,1,2)),Lower(SUBSTRING(c.technology,1,2))) as Username,
CONCAT(Lower(SUBSTRING(e.name,1,2)),Upper(SUBSTRING(e.city,1,3)),Lower(concat(p.pincode,1,2,c.count,1,2,c.zone))) as PASSWORD
from company c 
inner join project p on c.CID = p.Pid
inner join employee e on c.CID = e.id