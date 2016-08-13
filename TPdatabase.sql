

use bdm244728483_db;

drop table if exists tbl_Admin;

create table tbl_Admin(
	a_uid	varchar(5) not null primary key,
	a_uname	varchar(8) not null,
	a_upwd	varchar(20) not null,
	a_upower varchar(2),
	a_ulogintime date
);

insert into tbl_Admin (a_uid,a_uname,a_upwd,a_upower) values 
(1,"admin","123456",1);

drop table if exists tbl_User;

create table tbl_User(
	`u_id`  integer(10) NOT NULL AUTO_INCREMENT ,
	`u_name`  varchar(50) NOT NULL ,
	`u_pwd`  varchar(50) NOT NULL ,
	`u_sex`  varchar(1) NOT NULL ,
	`u_ph`  varchar(20) NOT NULL ,
	PRIMARY KEY (`u_id`)
);

drop table if exists tbl_Account;

create table tbl_Account(
	`a_id`  integer(10) NOT NULL AUTO_INCREMENT ,
	`u_id`  integer(10) NOT NULL ,
	`a_type`  integer(2) NOT NULL ,
	`a_num`  integer(10) NULL ,
	PRIMARY KEY (`a_id`),
	foreign key(u_id) references tbl_User(u_id)
);

drop table if exists tbl_Sort;

create table tbl_Sort(
	`s_id`  integer(10) NOT NULL AUTO_INCREMENT ,
	`u_id`  integer(10) NOT NULL ,
	`a_id`  integer(10) NOT NULL ,
	`s_type`  varchar(2) NULL ,
	`s_when`  datetime NULL ,
	`s_where`  varchar(30) NULL ,
	`s_who`  varchar(10) NULL ,
	`s_remark`  varchar(30) NULL ,
	PRIMARY KEY (`s_id`),
	foreign key(u_id) references tbl_User(u_id),
	foreign key(a_id) references tbl_Account(a_id)
);
