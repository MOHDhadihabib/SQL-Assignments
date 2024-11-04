Create proc DB_CREATE 
as 
Create database DB_storeprocedure
go

exec DB_CREATE

Use DB_storeprocedure

Create proc TB_Create
as
Create table info(
id int primary key not null identity(1,1),
Name varchar(255) not null ,
Course varchar(255) not null
)
go

exec TB_Create

Create proc Show_tb 
as
select * from info
go

exec Show_tb

Create proc td_Insert
@name varchar(255),
@course varchar(255)
as
insert into info values(@name,@course)
go

exec td_Insert @name = 'Muhammad Hadi',@course='HDSE'
exec td_Insert @name ='Balach zehri' , @course = 'ADSE'
exec td_Insert @name ='Ali Husnain', @course = 'HDSE2'
exec td_Insert @name ='Zain' ,@course='ADSE'
exec td_Insert @name ='Imam Ali' ,@course='HDSE1'
exec td_Insert @name ='Shaaf' ,@course='HDSE'
exec td_Insert @name ='khizar' ,@course='HDSE2'

Create proc td_update
@id int,
@name varchar(255),
@Course varchar(255)
as
update info  set name=@name , Course=@course where id=@id
go

exec td_update @name='Sajid' , @course='HDSE2' , @id=1

Create proc Td_delete 
@id int
as 
Delete from info where id=@id
go

Exec Td_delete @id=1

create proc td_search
@name varchar(255)
as
select * from info where name=@name
go

Exec td_search @name='Balach zehri'