create table Tele_dept(D_id int not null identity(1,1) primary key,D_name varchar(50),HOD varchar(20))

insert into Tele_dept(D_name,HOD) values('Admin','ranjith'),('Finance','jenifer'),('Developer','gayathri'),('Networking','kalees')

select * from Tele_dept