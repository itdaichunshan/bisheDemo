use bms;
create table admin(
	id int primary key auto_increment,
  	name varchar(20),
  	password varchar(100)
)
create table book(
	id int primary key auto_increment,
	name varchar(23),
	price double,
	type varchar(23),
	num int
)
create table reader(
    id int primary key auto_increment,
    readername varchar(20),
    readertype varchar(23),
    

)
