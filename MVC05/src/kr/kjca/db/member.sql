create table member(
	num int primary key auto_increment,
	id varchar(20) ,
	pass varchar(20) not null,
	name varchar(30) not null,
	age int not null,
	email varchar(30) not null,
	phone varchar(30) not null,
	unique key(id)
)

drop table member;

select * from member;

insert into member(id,pass,name, age,email,phone) 
values('admin','admin','관리자',25,'dj7502@daum.net','010-1111-1111');

delete from member;

update member set age=35, phone='010-1111-2222' where id='admin';




