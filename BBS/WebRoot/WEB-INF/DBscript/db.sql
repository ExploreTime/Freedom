--创建数据库
create database bbs charset=utf8;
--建表
use bbs;
create table users
(
 userId int primary key auto_increment,
 username varchar(20) not null,
 password varchar(20) not null,
 headimage varchar(200) default 'images/101.gif'
)charset=utf8;
drop table users;
--插入数据
insert into users values (null,'jia','小贾','123','images/head/97.gif');
insert into users values (null,'tian','小田','321','images/head/98.gif');
insert into users values (null,'cheng','小甜','123','images/head/99.gif');

CREATE TABLE MOKUAI
(
	ID INT NOT NULL AUTO_INCREMENT,
	NAME VARCHAR(20),
	IMAGE VARCHAR(20),
	DESCRIPTION VARCHAR(200),
	USERID INT NOT NULL UNIQUE,
	PRIMARY KEY (ID)
);


CREATE TABLE USERS
(
	USERID INT NOT NULL,
	USERNAME VARCHAR(20) NOT NULL,
	PASSWORD VARCHAR(20) NOT NULL,
	HEADIMAGE VARCHAR(200) DEFAULT 'images/1.gif',
	PRIMARY KEY (USERID)
);



/* Create Foreign Keys */

ALTER TABLE MOKUAI
	ADD FOREIGN KEY (USERID)
	REFERENCES USERS (USERID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;
