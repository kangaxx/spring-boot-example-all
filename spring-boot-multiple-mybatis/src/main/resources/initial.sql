CREATE DATABASE springbootdb;

CREATE DATABASE springbootdb_second;

CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_name` varchar(25) DEFAULT NULL COMMENT '用户名称',
  `description` varchar(25) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8

CREATE TABLE `school` (
  `id` bigint(20) AUTO_INCREMENT NOT NULL,
  `school_name` varchar(64) DEFAULT NULL COMMENT '学校名',
  `school_describe` varchar(128) DEFAULT NULL COMMENT '学校描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

insert into `springbootdb`.`user` ( `user_name`, `description`) values ( 'shuai', 'so handsome');

insert into `springbootdb_second`.`school` ( `school_name`, `school_describe`) values ( '清华', '自强不息，厚德载物');

DROP DATABASE IF EXISTS `db_yl_test`;
CREATE DATABASE `db_yl_test`;
USE `db_yl_test`;
DROP TABLE IF EXISTS `user_source_1`;
CREATE TABLE `user_source_1` (
  `user_id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `user_source_2`;
CREATE TABLE user_source_2 (
    `user_id`  bigint(11) unsigned NOT NULL,
	`user_no` varchar(10) NOT NULL UNIQUE,
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
	PRIMARY KEY (`user_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `user_target`;
CREATE TABLE user_target (
    `user_id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
    `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
	`user_no` varchar(10) NOT NULL UNIQUE,
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
	PRIMARY KEY (`user_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;