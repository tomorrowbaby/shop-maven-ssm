# 辣条商城 

### 用到的技术：

​					![](https://github.com/tomorrowbaby/image/blob/master/Screenshot%20from%202019-05-22%2008-44-44.png)

### 项目架构 ： 

![]()



### 项目前台部分页面展示：


##### 商品详情页面

![Screenshot from 2019-05-21 22-20-10](https://github.com/tomorrowbaby/image/blob/master/Screenshot%20from%202019-05-21%2022-20-10.png)

##### 商城主页

![Screenshot from 2019-05-21 22-19-46](https://github.com/tomorrowbaby/image/blob/master/Screenshot%20from%202019-05-21%2022-19-46.png)

### 商品展示页面

![Screenshot from 2019-05-21 22-19-27](https://github.com/tomorrowbaby/image/blob/master/Screenshot%20from%202019-05-21%2022-19-27.png)

### 商品后台部分页面


![Screenshot from 2019-05-22 09-35-12](https://github.com/tomorrowbaby/image/blob/master/Screenshot%20from%202019-05-22%2009-35-12.png)

![Screenshot from 2019-05-22 09-34-50](https://github.com/tomorrowbaby/image/blob/master/Screenshot%20from%202019-05-22%2009-35-28.png)



### 数据库的建表语句

CREATE TABLE `consignee_management` (
  `consignee_id` int(11) NOT NULL AUTO_INCREMENT,
  `consignee_name` varchar(50) DEFAULT NULL,
  `consignee_address` varchar(1000) DEFAULT NULL,
  `consignee_code` varchar(10) DEFAULT NULL,
  `consignee_phone` varchar(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`consignee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

CREATE TABLE `goods_info` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(200) DEFAULT NULL,
  `goods_price` double DEFAULT NULL,
  `goods_url` varchar(1000) DEFAULT NULL,
  `goods_desc` varchar(2000) DEFAULT NULL,
  `goods_state` varchar(10) DEFAULT NULL,
  `goods_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` int(11) DEFAULT NULL,
  `order_price` double DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

CREATE TABLE `order_management` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_time` datetime DEFAULT NULL,
  `order_total` double DEFAULT NULL,
  `order_state` varchar(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_detail_id` int(11) DEFAULT NULL,
  `consignee_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user_info` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `user_sex` varchar(10) DEFAULT NULL,
  `user_phone` varchar(11) DEFAULT NULL,
  `user_pw` varchar(100) DEFAULT NULL,
  `user_type` varchar(5) DEFAULT NULL,
  `user_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_phone_UNIQUE` (`user_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户信息\\n';



### 图片服务器的搭建（tomcat）

图片服务器的项目名称： shopimg

修改端口号为 ： 9999

在WebContent下建立一个upload的文件夹



=======
# shop-maven-ssm
辣条商城，一共５个模块：用户管理，商品管理，订单管理，地址管理。都是简单的SSM框架的使用，适合练手。
>>>>>>> a71efc8e97a2a2db3208ed878072aa8faab9077d
