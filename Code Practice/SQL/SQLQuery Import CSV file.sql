--Import CSV file
use SPACE

create table Zoo
(Id int, lastname varchar(255), firstname varchar(255), middlename varchar(255), suffix varchar(255))


select * from zoo

bulk insert dbo.zoo
from 'C:\Users\pokhr\Desktop\Work\Data Science\Data\Tiger.csv'
with
(
format = 'CSV',
firstrow = 2
)


select * from zoo