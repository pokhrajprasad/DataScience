use space

select * from employee

create NONCLUSTERED INDEX NC_inx_City on employee(city)

select * from employee where city = 'Delhi'
create index Nc_in_age on employee(age)

create NONCLUSTERED index inx_NC on employee(name,age)

drop index employee.inx_NC
drop index employee.Nc_in_age
drop index employee.NC_inx_City

alter table employee add CONSTRAINT Pri_key_id primary key(id)
alter table employee DROP CONSTRAINT pri_key_id

create CLUSTERED index CLS_IND_NAME on employee(name)

drop index employee.CLS_IND_NAME

alter table employee add CONSTRAINT Pri_key_id PRIMARY KEY NONCLUSTERED(id)

select * from employee

create CLUSTERED index CLS_IND_NAME on employee(name)

drop index employee.CLS_IND_NAME

alter table employee drop constraint Pri_key_id

alter table employee add CONSTRAINT pri_key_id primary key(id)

select * from employee
