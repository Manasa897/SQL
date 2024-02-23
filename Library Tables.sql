create schema lms;

create table library_member(member_id int primary key,first_name varchar(25),last_name varchar(25),email_address varchar(35),phone_number bigint,membership_level varchar(10),address_id int,foreign key(address_id) references address(address_id));
create table address(address_id int primary key,line1 varchar(30),line2 varchar(30),city varchar(20),state char(2),zip int);
create table checkout(id int primary key,isbn bigint,member_id int,checkout_date datetime,due_date datetime,is_returned boolean,foreign key(isbn) references book_isbn(isbn),foreign key(member_id) references library_member(member_id));
create table book_isbn(isbn bigint primary key,book_id int,foreign key(book_id) references book(book_id)) ;
create table book(book_id int primary key,title varchar(45),author_name varchar(50), year_published int,quantity int);

insert into book values(1,"Introduction to Java","Manasa",2012,30);
insert into book values(2,"Numpy and Pandas","Ravi",2010,30);
insert into book values(3,"Convolutional Neural Networks","Sravani",2011,30);
insert into book values(4,"Django MVT Frame work","Kumari",2014,30);
insert into book values(5,"Introuction to Flask Web Development","Srinivas",2016,30);
insert into book values(6,"Graph Neural Networks","Hanshitha",2013,30);

-- inserting into  table book_isbn
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,1);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,2);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,3);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,4);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,5);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,6);
--
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,6);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,5);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,4);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,3);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,2);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,1);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,1);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,2);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,3);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,4);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,5);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,6);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,1);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,2);
--
insert into address values(11,"2206 west hickory","david street","denton",'TX',76201);
insert into address values(12,"1174 UC Denton","south bonnie brae street","denton",'TX',76202);
insert into address values(13,"1706 wood hill apartments","teasley lane","denton",'TX',76205);
insert into address values(14,"1555 Oaks Of Denton ","Fry Street","denton",'TX',76203);
insert into address values(15,"East Park Apartments","Welch Street","denton",'TX',76204);
insert into address values(16,"621 The Beverley At Denton","West University Drive","denton",'TX',76206);
--
insert into library_member values(401,"Manas","Mallela","mallela5@gmail.com",4697020642,"silver",11);
insert into library_member values(402,"Sravs","Mallela","srsvs5@gmail.com",4697020111,"silver",11);
insert into library_member values(403,"Swetha","Mallela","ramyaananthoju15@gmail.com",4697020222,"gold",12);
insert into library_member values(404,"Ravi","Alathur","ravi45@gmail.com",4697020333,"platinum",13);
insert into library_member values(405,"Krishna","Thummala","krishna77@gmail.com",4697020444,"platinum",14);
insert into library_member values(406,"Harsha","Th","harsha99@gmail.com",4697020555,"silver",15);
insert into library_member values(407,"Hanshitha","Chowdary","honey66@gmail.com",4697020666,"gold",16);
insert into library_member values(408,"Kumari","Mallela","kumari89@gmail.com",4697020777,"silver",14);
insert into library_member values(409,"Srinivas","Mallela","srinivas55@gmail.com",4697020888,"platinum",14);
insert into library_member values(410,"Sailaja","Alathur","sailaja3@gmail.com",4697020999,"silver",12);
