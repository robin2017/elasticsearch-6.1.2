 

CREATE DATABASE `test_db`;
USE `test_db`; 


create table `shopping`(
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) not null,
  `category` VARCHAR(255) not null,
  `price` INT,
  PRIMARY key(id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO `shopping` (title,category,price) values 
('小米手机4','小米',3999),
('小米手机6','小米',3999),
('小米手机8','小米',3999),
('小米手机12','小米',3999),
('小米手机16','小米',3999),
('红米手机5','小米',1999),
('红米手机note','小米',1599),
('navoa7','华为',1999);