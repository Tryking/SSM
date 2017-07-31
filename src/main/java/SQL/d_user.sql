
-- ----------------------------
-- Databas
-- ----------------------------
DROP DATABASE IF EXISTS sampledb;
CREATE DATABASE sampledb DEFAULT CHARACTER SET utf8;
USE sampledb;

-- ----------------------------
-- Table structure for `d_user`
-- ----------------------------
DROP TABLE IF EXISTS `d_user`;
CREATE TABLE `d_user` (
  `id` bigint(11) NOT NULL auto_increment,
  `user_name` varchar(255) default NULL COMMENT '用户名',
  `user_phone` varchar(20) default NULL COMMENT '手机号',
  `user_email` varchar(255) default NULL COMMENT '邮箱地址',
  `user_pwd` varchar(32) default NULL COMMENT '加盐后用户密码',
  `pwd_salt` varchar(6) default NULL COMMENT 'MD5盐',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_time` datetime default NULL COMMENT '最后修改时间',
  `is_delete` tinyint(4) default NULL COMMENT '是否删除，0-未删除；1-已删除',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户登录表';

-- ----------------------------
-- Records of d_user
-- ----------------------------
INSERT INTO `d_user` VALUES ('1', '张三', '13242340574', '1045221654@qq.com', '05126a423a9379d529e4ee61a212fa55', 'KJUYT5', '2017-07-15 23:38:56', '2017-07-15 23:39:09', '0');
INSERT INTO `d_user` VALUES ('2', '李四', '15966430574', '1198224554@qq.com', '98bd3a1bebde01ad363d3c5a0d1e56da', '656JHU', '2017-07-15 23:39:01', '2017-07-15 23:39:13', '0');
INSERT INTO `d_user` VALUES ('3', '王五', '13646790574', '1256221654@qq.com', '5470db9b63c354f6c8d628b80ae2f3c3', '89UIKQ', '2017-07-15 23:39:05', '2017-07-15 23:39:16', '0');
