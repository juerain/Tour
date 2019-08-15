SET NAMES UTF8;
DROP DATABASE IF EXISTS cy;
CREATE DATABASE cy CHARSET=UTF8;
USE cy;

#????
CREATE TABLE cy_user(
  uid INT(11) PRIMARY KEY not NULL auto_increment,
  phone VARCHAR(65),   #???
  email VARCHAR(65),   #??
  upwd VARCHAR(128),    #??
  sex BOOLEAN,        #性别
  age INT(11),      #年龄
  headurl VARCHAR(65),  #头像路径
  attention BOOLEAN,    #关注标识
  attents INT,          #关注人数
  dizhi VARCHAR       #地址

);
INSERT INTO cy_user VALUES(null,"15555555555","123456@qq.com",md5('123456'),1,22,"image/head1.jpg",0,66,"北京"),
(null,"15555555555","123456@qq.com",md5('123456'),1,22,"image/head1.jpg",0,66,"北京"),
(null,"15555555555","123456@qq.com",md5('123456'),1,22,"image/head1.jpg",0,66,"北京"),
(null,"15555555555","123456@qq.com",md5('123456'),1,22,"image/head1.jpg",0,66,"北京"),
(null,"15555555555","123456@qq.com",md5('123456'),1,22,"image/head1.jpg",0,66,"北京"),
(null,"15555555555","123456@qq.com",md5('123456'),1,22,"image/head1.jpg",0,66,"北京"),
(null,"15555555555","123456@qq.com",md5('123456'),1,22,"image/head1.jpg",0,66,"北京"),
(null,"15555555555","123456@qq.com",md5('123456'),1,22,"image/head1.jpg",0,66,"北京"),
(null,"15555555555","123456@qq.com",md5('123456'),1,22,"image/head1.jpg",0,66,"北京");


CREATE TABLE cy_attent_user(
  uid INT(11) PRIMARY KEY not NULL auto_increment,
  phone VARCHAR(65),   #???
  email VARCHAR(65),   #??
  upwd VARCHAR(128),    #??
  sex BOOLEAN,        #性别
  age INT(11),      #年龄
  headurl VARCHAR(65),  #头像路径
  attention BOOLEAN,    #关注标识
  attents INT,          #关注人数
  dizhi VARCHAR       #地址
);



#??
#?????
CREATE TABLE cy_home_card(
  cid INT(11) PRIMARY KEY not NULL auto_increment,
  headsrc VARCHAR(128),  #????
  user VARCHAR(65),  #???
  nickname VARCHAR(65),  #??
  imgsrc VARCHAR(128)   #????
);

INSERT INTO cy_home_card VALUES(null,"image/head1.jpg","djidjf","dddd","image/food1.jpg"),
(null,"image/head2.jpg","djidjf","dddd","image/food2.jpg"),
(null,"image/head3.jpg","djidjf","dddd","image/food3.jpg"),
(null,"image/head4.jpg","djidjf","dddd","image/food4.jpg"),
(null,"image/head5.jpg","djidjf","dddd","image/food5.jpg");

#???
#???????
CREATE TABLE cy_fu_recommend(
  cid INT(11) PRIMARY KEY not NULL auto_increment,
  src VARCHAR(128),  #????
  user VARCHAR(65),  #???
  nickname VARCHAR(65)  #??
);

INSERT INTO cy_fu_recommend VALUES(null,"image/head1.jpg","djidjf","dddd"),
(null,"image/head2.jpg","djidjf","dddd"),
(null,"image/head3.jpg","djidjf","dddd"),
(null,"image/head4.jpg","djidjf","dddd"),
(null,"image/head5.jpg","djidjf","dddd");

#??????
CREATE TABLE cy_search_img(
  iid INT(11) PRIMARY KEY not NULL auto_increment,
  src VARCHAR(128)  #????
);

INSERT INTO cy_search_img VALUES(null,"image/food1.jpg"),
(null,"image/food2.jpg"),
(null,"image/food3.jpg"),
(null,"image/food4.jpg"),
(null,"image/food5.jpg");


#????????
CREATE TABLE cy_search_detail(
  did INT(11) PRIMARY KEY not NULL auto_increment,
  user VARCHAR(65),  #???
  nickname VARCHAR(65),  #??
  src VARCHAR(128),  #????
  lovenum INT,      #????
  comment VARCHAR(128)  #??
);

INSERT INTO cy_search_detail VALUES(null,"djidjf","dddd","image/food1.jpg",555,"?????"),
(null,"djidjf","dddd","image/food2.jpg",555,"?????"),
(null,"djidjf","dddd","image/food3.jpg",555,"?????"),
(null,"djidjf","dddd","image/food4.jpg",555,"?????"),
(null,"djidjf","dddd","image/food5.jpg",555,"?????");
