SET NAMES UTF8;
DROP DATABASE IF EXISTS cy;
CREATE DATABASE cy CHARSET=UTF8;
USE cy;

#普通用户表
CREATE TABLE cy_user(
  uid INT PRIMARY KEY auto_increment,
  uphone VARCHAR(65),   #手机
  uemail VARCHAR(65),   #邮箱
  upwd VARCHAR(128),    #密码
  uname VARCHAR(65),    #用户名
  usex BOOL,        #性别
  uage INT,      #年龄
  uheadurl VARCHAR(65),  #头像路径
  uattention BOOLEAN DEFAULT 0,    #关注标识
  uattents INT,          #关注人数
  uaddress VARCHAR(65)       #地址
);


INSERT INTO cy_user VALUES(null,"15555555555","123456@qq.com",md5('123456'),"jack",1,22,"image/head1.jpg",0,78,"北京"),
(null,"15555555555","123456@qq.com",md5('123456'),"tom",1,22,"image/head2.jpg",0,66,"河南"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack1",1,25,"image/head3.jpg",0,44,"上海"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack2",1,55,"image/head4.jpg",0,102,"广州"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack3",1,23,"image/head5.jpg",0,64,"天津"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack4",1,23,"image/head6.jpg",0,78,"河北"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack5",1,45,"image/head7.jpg",0,5,"新疆"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack6",1,43,"image/head8.jpg",0,99,"湖南"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack7",1,29,"image/head9.jpg",0,75,"湖北");

#关注用户表
CREATE TABLE cy_attent_user(
  uid INT PRIMARY KEY auto_increment,
  uphone VARCHAR(65),   #???
  uemail VARCHAR(65),   #??
  upwd VARCHAR(128),    #??
  uname VARCHAR(65),
  usex BOOL,        #性别
  uage INT,      #年龄
  uheadurl VARCHAR(65),  #头像路径
  uattention BOOLEAN,    #关注标识
  uattents INT,          #关注人数
  uaddress VARCHAR(65)      #地址
);
INSERT INTO cy_attent_user VALUES(null,"15555555555","123456@qq.com",md5('123456'),"jack",1,22,"image/head1.jpg",1,78,"北京"),
(null,"15555555555","123456@qq.com",md5('123456'),"tom",1,22,"image/head2.jpg",1,66,"河南"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack1",1,25,"image/head3.jpg",1,44,"上海");



#推荐用户表
CREATE TABLE cy_user_recommend(
  uid INT PRIMARY KEY auto_increment,
  uphone VARCHAR(65),   #???
  uemail VARCHAR(65),   #??
  upwd VARCHAR(128),    #??
  uname VARCHAR(65),
  usex BOOL,        #性别
  uage INT,      #年龄
  uheadurl VARCHAR(65),  #头像路径
  uattention BOOLEAN DEFAULT 0,    #关注标识
  uattents INT,          #关注人数
  uaddress VARCHAR(65)       #地址
);


INSERT INTO cy_user_recommend VALUES
(null,"15555555555","123456@qq.com",md5('123456'),"jack2",1,55,"image/head4.jpg",0,102,"广州"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack3",1,23,"image/head5.jpg",0,64,"天津"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack4",1,23,"image/head6.jpg",0,78,"河北"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack5",1,45,"image/head7.jpg",0,5,"新疆"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack6",1,43,"image/head8.jpg",0,99,"湖南"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack7",1,29,"image/head9.jpg",0,75,"湖北"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack8",1,23,"image/head10.jpg",0,78,"河北"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack9",1,45,"image/head11.jpg",0,5,"新疆"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack10",1,43,"image/head8.jpg",0,99,"湖南"),
(null,"15555555555","123456@qq.com",md5('123456'),"jack11",1,29,"image/head9.jpg",0,75,"湖北");



#用户上传图片表
CREATE TABLE user_img(
  umid INT PRIMARY KEY auto_increment,
  uid INT,        #用户id       
  uimgurl VARCHAR(128),   #图片路径
  praise INT         #点赞次数
);
INSERT INTO user_img VALUES(null,0,"image/food1.jpg",66),
(null,0,"image/food2.jpg",69),
(null,0,"image/food3.jpg",69),
(null,0,"image/food4.jpg",69),
(null,0,"image/food5.jpg",69),
(null,0,"image/food6.jpg",69),
(null,0,"image/food7.jpg",69),
(null,0,"image/food8.jpg",69),
(null,0,"image/food9.jpg",69),
(null,1,"image/shop1.jpg",69),
(null,1,"image/shop2.jpg",69),
(null,1,"image/shop3.jpg",69),
(null,1,"image/shop4.jpg",69),
(null,1,"image/shop5.jpg",69),
(null,1,"image/shop6.jpg",69),
(null,1,"image/shop7.jpg",69),
(null,1,"image/shop8.jpg",69),
(null,1,"image/shop9.jpg",69),
(null,2,"image/house1.jpg",69),
(null,2,"image/house2.jpg",69),
(null,2,"image/house3.jpg",69),
(null,2,"image/house4.jpg",69),
(null,2,"image/house5.jpg",69),
(null,2,"image/house6.jpg",69),
(null,2,"image/house7.jpg",69),
(null,2,"image/house8.jpg",69),
(null,2,"image/house9.jpg",69),
(null,3,"image/build1.jpg",69),
(null,3,"image/build2.jpg",69),
(null,3,"image/build3.jpg",69),
(null,3,"image/build4.jpg",69),
(null,3,"image/build5.jpg",69),
(null,3,"image/build6.jpg",69),
(null,3,"image/build7.jpg",69),
(null,3,"image/build8.jpg",69),
(null,3,"image/build9.jpg",69);





#用户详情表
CREATE TABLE cy_user_detail(
  did INT PRIMARY KEY auto_increment,
  uid INT,
  uphone VARCHAR(65),   #手机
  uemail VARCHAR(65),   #邮箱
  upwd VARCHAR(128),    #密码
  uname VARCHAR(65),    #用户名
  usex BOOL,        #性别
  uage INT,      #年龄
  uheadurl VARCHAR(65),  #头像路径
  uattention BOOLEAN,    #关注标识
  uattents INT,          #关注人数
  uaddress VARCHAR(65),       #地址
  uimgurl VARCHAR(128)   #图片路径
);


INSERT INTO cy_user_detail VALUES
(null,0,"15555555555","123456@qq.com",md5('123456'),"jack",1,22,"image/head1.jpg",0,78,"北京","image/food1.jpg"),
(null,0,"15555555555","123456@qq.com",md5('123456'),"tom",1,22,"image/head2.jpg",0,66,"河南","image/food2.jpg"),
(null,0,"15555555555","123456@qq.com",md5('123456'),"jack1",1,25,"image/head3.jpg",0,44,"上海","image/food3.jpg"),
(null,0,"15555555555","123456@qq.com",md5('123456'),"jack2",1,55,"image/head4.jpg",0,102,"广州","image/food4.jpg"),
(null,0,"15555555555","123456@qq.com",md5('123456'),"jack3",1,23,"image/head5.jpg",0,64,"天津","image/food5.jpg"),
(null,0,"15555555555","123456@qq.com",md5('123456'),"jack4",1,23,"image/head6.jpg",0,78,"河北","image/food6.jpg"),
(null,0,"15555555555","123456@qq.com",md5('123456'),"jack5",1,45,"image/head7.jpg",0,5,"新疆","image/food7.jpg"),
(null,0,"15555555555","123456@qq.com",md5('123456'),"jack6",1,43,"image/head8.jpg",0,99,"湖南","image/food8.jpg"),
(null,0,"15555555555","123456@qq.com",md5('123456'),"jack7",1,29,"image/head9.jpg",0,75,"湖北","image/food9.jpg"),
(null,1,"15555555555","123456@qq.com",md5('123456'),"jack",1,22,"image/head1.jpg",0,78,"北京","image/shop1.jpg"),
(null,1,"15555555555","123456@qq.com",md5('123456'),"tom",1,22,"image/head2.jpg",0,66,"河南","image/shop2.jpg"),
(null,1,"15555555555","123456@qq.com",md5('123456'),"jack1",1,25,"image/head3.jpg",0,44,"上海","image/shop3.jpg"),
(null,1,"15555555555","123456@qq.com",md5('123456'),"jack2",1,55,"image/head4.jpg",0,102,"广州","image/shop4.jpg"),
(null,1,"15555555555","123456@qq.com",md5('123456'),"jack3",1,23,"image/head5.jpg",0,64,"天津","image/shop5.jpg"),
(null,1,"15555555555","123456@qq.com",md5('123456'),"jack4",1,23,"image/head6.jpg",0,78,"河北","image/shop6.jpg"),
(null,1,"15555555555","123456@qq.com",md5('123456'),"jack5",1,45,"image/head7.jpg",0,5,"新疆","image/shop7.jpg"),
(null,1,"15555555555","123456@qq.com",md5('123456'),"jack6",1,43,"image/head8.jpg",0,99,"湖南","image/shop8.jpg"),
(null,1,"15555555555","123456@qq.com",md5('123456'),"jack7",1,29,"image/head9.jpg",0,75,"湖北","image/shop9.jpg"),
(null,2,"15555555555","123456@qq.com",md5('123456'),"jack",1,22,"image/house1.jpg",0,78,"北京","image/shop1.jpg"),
(null,2,"15555555555","123456@qq.com",md5('123456'),"tom",1,22,"image/house2.jpg",0,66,"河南","image/shop2.jpg"),
(null,2,"15555555555","123456@qq.com",md5('123456'),"jack1",1,25,"image/house3.jpg",0,44,"上海","image/shop3.jpg"),
(null,2,"15555555555","123456@qq.com",md5('123456'),"jack2",1,55,"image/house4.jpg",0,102,"广州","image/shop4.jpg"),
(null,2,"15555555555","123456@qq.com",md5('123456'),"jack3",1,23,"image/house5.jpg",0,64,"天津","image/shop5.jpg"),
(null,2,"15555555555","123456@qq.com",md5('123456'),"jack4",1,23,"image/house6.jpg",0,78,"河北","image/shop6.jpg"),
(null,2,"15555555555","123456@qq.com",md5('123456'),"jack5",1,45,"image/house7.jpg",0,5,"新疆","image/shop7.jpg"),
(null,2,"15555555555","123456@qq.com",md5('123456'),"jack6",1,43,"image/house8.jpg",0,99,"湖南","image/shop8.jpg"),
(null,2,"15555555555","123456@qq.com",md5('123456'),"jack7",1,29,"image/house9.jpg",0,75,"湖北","image/shop9.jpg"),

(null,3,"15555555555","123456@qq.com",md5('123456'),"jack",1,22,"image/build1.jpg",0,78,"北京","image/shop1.jpg"),
(null,3,"15555555555","123456@qq.com",md5('123456'),"tom",1,22,"image/build2.jpg",0,66,"河南","image/shop2.jpg"),
(null,3,"15555555555","123456@qq.com",md5('123456'),"jack1",1,25,"image/build3.jpg",0,44,"上海","image/shop3.jpg"),
(null,3,"15555555555","123456@qq.com",md5('123456'),"jack2",1,55,"image/build4.jpg",0,102,"广州","image/shop4.jpg"),
(null,3,"15555555555","123456@qq.com",md5('123456'),"jack3",1,23,"image/build5.jpg",0,64,"天津","image/shop5.jpg"),
(null,3,"15555555555","123456@qq.com",md5('123456'),"jack4",1,23,"image/build6.jpg",0,78,"河北","image/shop6.jpg"),
(null,3,"15555555555","123456@qq.com",md5('123456'),"jack5",1,45,"image/build7.jpg",0,5,"新疆","image/shop7.jpg"),
(null,3,"15555555555","123456@qq.com",md5('123456'),"jack6",1,43,"image/build8.jpg",0,99,"湖南","image/shop8.jpg"),
(null,3,"15555555555","123456@qq.com",md5('123456'),"jack7",1,29,"image/build9.jpg",0,75,"湖北","image/shop9.jpg");
