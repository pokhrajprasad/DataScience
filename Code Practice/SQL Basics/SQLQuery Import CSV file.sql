--Import CSV file


create table Zoo
(Id int, lastname varchar(255), firstname varchar(255), middlename varchar(255), suffix varchar(255))


select * from zoo

bulk insert dbo.zoo
from 'C:\Users\Lenovo\Desktop\Intellipaat\Batch 27\tiger.csv'
with
(
format = 'CSV',
firstrow = 2
)


select * from zoo