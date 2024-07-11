/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t178`;
CREATE DATABASE IF NOT EXISTS `t178` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t178`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/tushuguanli/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/tushuguanli/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/tushuguanli/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'tushu_types', '图书类型', 1, '图书类型1', NULL, NULL, '2022-03-07 13:05:05'),
	(2, 'tushu_types', '图书类型', 2, '图书类型2', NULL, NULL, '2022-03-07 13:05:05'),
	(3, 'tushu_types', '图书类型', 3, '图书类型3', NULL, NULL, '2022-03-07 13:05:05'),
	(4, 'chubanshe_types', '图书出版社', 1, '图书出版社1', NULL, NULL, '2022-03-07 13:05:05'),
	(5, 'chubanshe_types', '图书出版社', 2, '图书出版社2', NULL, NULL, '2022-03-07 13:05:05'),
	(6, 'chubanshe_types', '图书出版社', 3, '图书出版社3', NULL, NULL, '2022-03-07 13:05:05'),
	(7, 'shujia_types', '所在书架', 1, '书架1', NULL, NULL, '2022-03-07 13:05:05'),
	(8, 'shujia_types', '所在书架', 2, '书架2', NULL, NULL, '2022-03-07 13:05:05'),
	(9, 'shujia_types', '所在书架', 3, '书架3', NULL, NULL, '2022-03-07 13:05:05'),
	(10, 'tushujieyue_types', '借阅状态', 1, '未还', NULL, NULL, '2022-03-07 13:05:05'),
	(11, 'tushujieyue_types', '借阅状态', 2, '已还', NULL, NULL, '2022-03-07 13:05:05'),
	(12, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-03-07 13:05:06'),
	(13, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-03-07 13:05:06'),
	(14, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-03-07 13:05:06'),
	(15, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-03-07 13:05:06'),
	(16, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-07 13:05:06'),
	(17, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-07 13:05:06'),
	(18, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-03-07 13:05:06');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `jiaoshi_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 3, 1, NULL, '发布内容1', NULL, 1, '2022-03-07 13:05:48', '2022-03-07 13:05:48', '2022-03-07 13:05:48'),
	(2, '帖子标题2', 2, 2, NULL, '发布内容2', NULL, 1, '2022-03-07 13:05:48', '2022-03-07 13:05:48', '2022-03-07 13:05:48'),
	(3, '帖子标题3', 2, 3, NULL, '发布内容3', NULL, 1, '2022-03-07 13:05:48', '2022-03-07 13:05:48', '2022-03-07 13:05:48'),
	(4, '帖子标题4', 1, 4, NULL, '发布内容4', NULL, 1, '2022-03-07 13:05:48', '2022-03-07 13:05:48', '2022-03-07 13:05:48'),
	(5, '帖子标题5', 1, 5, NULL, '发布内容5', NULL, 1, '2022-03-07 13:05:48', '2022-03-07 13:05:48', '2022-03-07 13:05:48'),
	(6, NULL, 1, NULL, NULL, '用户评论', 5, 2, '2022-03-07 13:46:50', NULL, '2022-03-07 13:46:50'),
	(7, '1', 1, NULL, NULL, '1', NULL, 1, '2024-04-29 14:16:07', NULL, '2024-04-29 14:16:07');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 1, 'http://localhost:8080/tushuguanli/upload/news1.jpg', '2022-03-07 13:05:48', '公告详情1', '2022-03-07 13:05:48'),
	(2, '公告标题2', 1, 'http://localhost:8080/tushuguanli/upload/news2.jpg', '2022-03-07 13:05:48', '公告详情2', '2022-03-07 13:05:48'),
	(3, '公告标题3', 2, 'http://localhost:8080/tushuguanli/upload/news3.jpg', '2022-03-07 13:05:48', '公告详情3', '2022-03-07 13:05:48'),
	(4, '公告标题4', 1, 'http://localhost:8080/tushuguanli/upload/news4.jpg', '2022-03-07 13:05:48', '公告详情4', '2022-03-07 13:05:48'),
	(5, '公告标题5', 1, 'http://localhost:8080/tushuguanli/upload/news5.jpg', '2022-03-07 13:05:48', '公告详情5', '2022-03-07 13:05:48');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '0cpkdz2hnlmosw9gw5aq6tu2yfmklf0t', '2022-03-07 13:10:43', '2024-04-29 15:14:41'),
	(2, 1, 'a1', 'yonghu', '用户', 'p1nuvzqjqxobd52oq9xwlmv5sivei4gi', '2022-03-07 13:11:41', '2024-04-29 15:15:57');

DROP TABLE IF EXISTS `tushu`;
CREATE TABLE IF NOT EXISTS `tushu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_uuid_number` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushu_name` varchar(200) DEFAULT NULL COMMENT '图书标题 Search111 ',
  `tushu_types` int DEFAULT NULL COMMENT '图书类型 Search111',
  `tushu_photo` varchar(200) DEFAULT NULL COMMENT '图书封面',
  `tushu_zuozhe` varchar(200) DEFAULT NULL COMMENT '图书作者',
  `chubanshe_types` int DEFAULT NULL COMMENT '图书出版社',
  `shujia_types` int DEFAULT NULL COMMENT '所在书架',
  `tushu_number` int DEFAULT NULL COMMENT '图书数量',
  `tushu_content` text COMMENT '图书详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='图书信息';

DELETE FROM `tushu`;
INSERT INTO `tushu` (`id`, `tushu_uuid_number`, `tushu_name`, `tushu_types`, `tushu_photo`, `tushu_zuozhe`, `chubanshe_types`, `shujia_types`, `tushu_number`, `tushu_content`, `insert_time`, `create_time`) VALUES
	(1, '164665834883316', '图书标题1', 2, 'http://localhost:8080/tushuguanli/upload/tushu1.jpg', '图书作者1', 2, 2, 419, '图书详情1', '2022-03-07 13:05:48', '2022-03-07 13:05:48'),
	(2, '164665834883313', '图书标题2', 2, 'http://localhost:8080/tushuguanli/upload/tushu2.jpg', '图书作者2', 2, 1, 447, '图书详情2', '2022-03-07 13:05:48', '2022-03-07 13:05:48'),
	(3, '164665834883315', '图书标题3', 1, 'http://localhost:8080/tushuguanli/upload/tushu3.jpg', '图书作者3', 1, 3, 233, '图书详情3', '2022-03-07 13:05:48', '2022-03-07 13:05:48'),
	(4, '16466583488339', '图书标题4', 1, 'http://localhost:8080/tushuguanli/upload/tushu4.jpg', '图书作者4', 3, 1, 61, '图书详情4', '2022-03-07 13:05:48', '2022-03-07 13:05:48'),
	(5, '16466583488330', '图书标题5', 3, 'http://localhost:8080/tushuguanli/upload/tushu5.jpg', '图书作者5', 2, 2, 267, '图书详情5', '2022-03-07 13:05:48', '2022-03-07 13:05:48');

DROP TABLE IF EXISTS `tushujieyue`;
CREATE TABLE IF NOT EXISTS `tushujieyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tushujieyue_shijian` int DEFAULT NULL COMMENT '借阅时间（天）',
  `tushujieyue_types` int DEFAULT '1' COMMENT '借阅状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '借阅时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='借阅信息';

DELETE FROM `tushujieyue`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/tushuguanli/upload/yonghu1.jpg', 2, '17703786901', '410224199610232001', '1@qq.com', 1, '2022-03-07 13:05:48'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/tushuguanli/upload/yonghu2.jpg', 2, '17703786902', '410224199610232002', '2@qq.com', 1, '2022-03-07 13:05:48'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/tushuguanli/upload/yonghu3.jpg', 1, '17703786903', '410224199610232003', '3@qq.com', 1, '2022-03-07 13:05:48');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
