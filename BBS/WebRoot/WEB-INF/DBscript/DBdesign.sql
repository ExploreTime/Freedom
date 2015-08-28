
/* Drop Tables */

DROP TABLE TIEZI;
DROP TABLE MOKUAI;
DROP TABLE USERS;



/* Create Tables */

CREATE TABLE MOKUAI
(
	ID INT NOT NULL AUTO_INCREMENT,
	NAME VARCHAR(20),
	IMAGE VARCHAR(50),
	DESCRIPTION VARCHAR(200),
	USERID INT NOT NULL UNIQUE,
	PRIMARY KEY (ID)
);


CREATE TABLE TIEZI
(
	TIEZIID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	TITLE VARCHAR(200),
	content text NOT NULL,
	SENDTIME VARCHAR(20) DEFAULT 'now()' NOT NULL,
	BANKUAIID INT NOT NULL,
	USERID INT NOT NULL,
	STATUS INT,
	CLICKCOUNT INT,
	OWNERID INT
);


CREATE TABLE USERS
(
	USERID INT NOT NULL AUTO_INCREMENT,
	USERNAME VARCHAR(20) NOT NULL unique,
	NICKNAME VARCHAR(20) DEFAULT '匿名哥',
	PASSWORD VARCHAR(20) NOT NULL,
	HEADIMAGE VARCHAR(200) DEFAULT 'images/101.gif',
	signature varchar(50),
	PRIMARY KEY (USERID)
);

alter table USERS add column signature  varchar(50); 
alter table USERS
add constraint UK_Username unique(USERNAME)

/* Create Foreign Keys */

ALTER TABLE TIEZI
	ADD FOREIGN KEY (BANKUAIID)
	REFERENCES MOKUAI (ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE MOKUAI
	ADD FOREIGN KEY (USERID)
	REFERENCES USERS (USERID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE TIEZI
	ADD FOREIGN KEY (USERID)
	REFERENCES USERS (USERID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;
insert into users values (null,'jia','小贾','123','images/head/97.gif','雨带梨花');
insert into users values (null,'tian','小田','321','images/head/98.gif','清溪河拾贝');
insert into users values (null,'cheng','小甜','123','images/head/99.gif','我有一个梦想');
insert into users values (null,'jia1','小贾1','123','images/head/99.gif','梨花带雨');
insert into users values (null,'tian1','小田1','321','images/head/100.gif','清溪河的守护');
insert into users values (null,'cheng1','小甜1','123','images/head/101.gif','爱你一万年');

insert into MOKUAI values(null,'新人交流','images/mukuai/xinren.png','这是新人交流',1);
insert into MOKUAI values(null,'技术交流','images/mukuai/jishu.png','这是技术交流',2);
insert into MOKUAI values(null,'生活','images/mukuai/shenghuo.png','这是生活',3);
insert into MOKUAI values(null,'交流','images/mukuai/chat.jpg','这是交流',4);
insert into MOKUAI values(null,'IT资料群','images/mukuai/ziyuan.png','这是IT资料群',5);
insert into MOKUAI values(null,'娱乐','images/mukuai/game.png','这是娱乐',6);

insert into TIEZI values(null,'我是程序员,我不是修电脑的','王企鹅饿哦发的我佛VD哦床上',now(),1,1,1,245,0);
insert into TIEZI values(null,'我是修电脑,我不是程序员','怕沃尔沃和和和irvdfn',now(),2,2,2,300,0);
insert into TIEZI values(null,'我是程序员,我是修电脑的','ewfioerf',now(),3,3,0,245,0);
insert into TIEZI values(null,'我是程序员,我不是修电脑的','地方看见了电视GV发你看了吧',now(),1,1,1,245,0);
insert into TIEZI values(null,'我是修电脑,我不是程序员','sdgvdfkl',now(),2,2,2,300,0);
insert into TIEZI values(null,'我是程序员,我不会修电脑','你是傻逼吗？我都说了我是程序员，我不是也不会修电脑，别来烦我了，因为我媳妇管的宽，哈哈！',now(),2,3,0,25,0);
insert into TIEZI values(null,'我是程序员,我会修电脑','因为我是程序员，所以修电脑是一项最基本的技能，以后电脑坏了请找贾大爷！',now(),3,1,0,45,0);
insert into TIEZI values(null,'习近平来襄阳视察','今日，国家主席，国家军委主席习近平来襄阳视察，对襄阳近年来取得发展给予充分的肯定，并对以后的发展做出重要指示',now(),3,3,1,1000,0);
insert into TIEZI values(null,'温家宝退休后在干嘛，想知道吗？','前国家总理温家宝在退休后，渐渐淡出人们的视野，今日记着发现你猜他在干嘛，他竟然在打LOL！',now(),3,2,2,800,0);
insert into TIEZI values(null,'章子怡怀孕啦','根据章子怡经纪人透露。章子怡目前已怀孕六个月，但是据其母透露，孩子的父亲竟然是贾大爷',now(),2,2,0,345,0);
insert into TIEZI values(null,'天津爆炸案：市长难辞其咎！','哈哈，这是骗你的',now(),1,3,0,666,0);
insert into TIEZI values(null,'解密毛泽东逝世的十大原因：','中华人名共和国伟大领袖毛泽东的逝世原因竟然是：抽烟过多！',now(),2,3,0,868,0);
insert into TIEZI values(null,'纪念抗战胜利70周年庆典胜利开幕','具体请看新闻联播',now(),3,3,3,567,0);

delete from tiezi