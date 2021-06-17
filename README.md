# PlantMore
一个基于JavaWeb的校园绿植交易系统
# CSDN博客链接

# 数据库脚本
-- 删除数据库
DROP DATABASE IF EXISTS PLANTMORE ;

-- 创建数据库
CREATE DATABASE PLANTMORE CHARACTER SET UTF8 ;

-- 使用MicroMall数据库
USE PLANTMORE ;

-- 删除数据表
/*先删从表再删除主表*/
DROP TABLE IF EXISTS details ;
DROP TABLE IF EXISTS orders ;
DROP TABLE IF EXISTS member ;
DROP TABLE IF EXISTS goods;
DROP TABLE IF EXISTS item ;
DROP TABLE IF EXISTS admin ;
DROP TABLE IF EXISTS shopcar ;

-- 创建数据表
# 1.创建商品类型表
CREATE TABLE item (
    iid         INT AUTO_INCREMENT ,
    title       VARCHAR(200) NOT NULL ,
    CONSTRAINT pk_iid PRIMARY KEY (iid)
) engine = innodb ;/*支持外键以及事务处理*/

# 2.创建管理员信息表
CREATE TABLE admin (
    aid         VARCHAR(50) ,
    password    VARCHAR(32) NOT NULL ,
    lastdate    DATETIME ,
    CONSTRAINT pk_aid PRIMARY KEY (aid)
) engine = innodb ;

# 3.创建用户信息表
CREATE TABLE member (
    mid         VARCHAR(50) ,
    password    VARCHAR(32) NOT NULL ,
    name        VARCHAR(50) ,
    phone       VARCHAR(50) ,
    address     VARCHAR(100) ,
    code        VARCHAR(100) ,
    status      INT ,
    regdate     DATETIME NOT NULL ,
    photo       VARCHAR(50) DEFAULT 'nophoto.jpg' ,
    CONSTRAINT pk_mid PRIMARY KEY (mid)
) engine = innodb ;

# 4.创建商品信息表
CREATE TABLE goods (
    gid         INT AUTO_INCREMENT ,
    iid         INT ,
    aid         VARCHAR(20) ,
    title       VARCHAR(50) ,
    pubdate     DATETIME ,
    price       FLOAT ,
    amount      INT ,
    bow         INT ,
    note        TEXT ,
    photo       VARCHAR(100) ,
    status      INT,
    CONSTRAINT pk_gid PRIMARY KEY (gid) ,
    CONSTRAINT fk_iid FOREIGN KEY (iid) REFERENCES item(iid) ON DELETE SET NULL ,
    CONSTRAINT fk_aid FOREIGN KEY (aid) REFERENCES admin(aid) ON DELETE SET NULL
) engine = innodb ;

# 5.订单信息表
CREATE TABLE orders (
    oid         INT AUTO_INCREMENT ,
    mid         VARCHAR(50) ,
    name        VARCHAR(50) ,
    phone       VARCHAR(50) ,
    address     VARCHAR(50) ,
    credate     DATETIME ,
    pay         FLOAT ,
    CONSTRAINT pk_oid PRIMARY KEY (oid) ,
    CONSTRAINT fk_mid FOREIGN KEY (mid) REFERENCES member(mid) ON DELETE CASCADE
) engine = innodb ;

# 6.创建订单详情表
CREATE TABLE details (
    odid        INT AUTO_INCREMENT ,
    oid         INT NOT NULL ,
    gid         INT ,
    title       VARCHAR(50) NOT NULL ,
    price       FLOAT NOT NULL ,
    amount      INT NOT NULL ,
    CONSTRAINT pk_odid PRIMARY KEY (odid) ,
    CONSTRAINT fk_oid FOREIGN KEY (oid) REFERENCES orders(oid) ON DELETE CASCADE ,
    CONSTRAINT fk_gid FOREIGN KEY (gid) REFERENCES goods(gid) ON DELETE SET NULL
) engine = innodb ;

# 6.创建购物车详情表
CREATE TABLE shopcar(
    gid INT ,
    mid VARCHAR(50) ,
    amount INT ,
    CONSTRAINT fk_gid3 FOREIGN KEY(gid) REFERENCES goods(gid) ON DELETE CASCADE ,
    CONSTRAINT fk_mid3 FOREIGN KEY(mid) REFERENCES member(mid) ON DELETE CASCADE
) engine = innodb ;

-- 编写测试数据
# 1.增加商品分类信息
INSERT INTO item (title) VALUES ('竹子') ;
INSERT INTO item (title) VALUES ('多肉') ;
INSERT INTO item (title) VALUES ('铃兰') ;
INSERT INTO item (title) VALUES ('万年青') ;
INSERT INTO item (title) VALUES ('菖蒲') ;
INSERT INTO item (title) VALUES ('三色堇') ;
INSERT INTO item (title) VALUES ('榕树') ;

# 2.增加管理员信息：admin/hello
INSERT INTO admin (aid, password) VALUES ('admin', '5D41402ABC4B2A76B9719D911017C592') ;

-- 提交事务
COMMIT ;
