--创建一个bbs数据库，准备为bbs项目存储数据
create database  bbs charset=utf8;

--为bbs数据库创建一个用户表
create table  users
(
	userid int primary key auto_increment,
	username varchar(20) not null,
	password varchar(20) not null,
	headImage varchar(200) default 'images/head/1.gif'
)charset=utf8;

--位用户表添加测试数据
insert into  users values(null,'double-tian','tiantian',default);
insert into  users values(null,'double-pan','panpan','images/head/2.gif');
insert into  users values(null,'double-jian','jianjian','images/head/3.gif');


/* Drop Tables */

DROP TABLE BANKUAI;
DROP TABLE USERS;




/* Create Tables */

CREATE TABLE BANKUAI
(
	-- 这是存储板块的id
	ID INT NOT NULL AUTO_INCREMENT COMMENT '这是存储板块的id',
	NAME VARCHAR(20) NOT NULL UNIQUE,
	IMAGE VARCHAR(200) DEFAULT 'images/bankuai/1.jpg',
	CREATEIME VARCHAR(20),
	DESCRIPTION VARCHAR(2000) DEFAULT '版主有点懒',
	USERID INT NOT NULL UNIQUE,
	PRIMARY KEY (ID)
);


CREATE TABLE USERS
(
	USERID INT NOT NULL,
	USERNAME VARCHAR(20) NOT NULL,
	PASSWORD VARCHAR(20) NOT NULL,
	HEADIMAGE VARCHAR(200) DEFAULT 'images/head/1.gif',
	PRIMARY KEY (USERID)
);



/* Create Foreign Keys */

ALTER TABLE BANKUAI
	ADD FOREIGN KEY (USERID)
	REFERENCES USERS (USERID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;

