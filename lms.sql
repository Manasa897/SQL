create schema lms;
use lms;
create table member 
(member_Id Integer primary key,
					first_Name Varchar(30),
                    last_Name varchar(30),
                    email_Address varchar(50),
                    phone_Number bigint);
				
alter table member add level varchar(30);

drop table member;

create table Books 
(bookId integer primary key,
					title varchar(30),
					Booksmember varchar(30),
                    author varchar(30),
                    isbn bigint);
                    
alter table Books add price Double;
drop table Books;
     