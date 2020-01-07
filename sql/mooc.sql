/*
 Navicat Premium Data Transfer

 Source Server         : MySQL57
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : mooc

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 13/12/2019 15:28:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for catalog
-- ----------------------------
DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `flag` tinyint(1) NULL DEFAULT 0,
  `modify_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `version` int(11) NULL DEFAULT NULL,
  `cname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of catalog
-- ----------------------------
INSERT INTO `catalog` VALUES (1, '2019-05-12 10:52:10', 0, NULL, NULL, 'c', 'c/c++', 'top');
INSERT INTO `catalog` VALUES (2, '2019-05-12 10:53:18', 0, NULL, NULL, 'java', 'Java/框架', 'top');
INSERT INTO `catalog` VALUES (3, '2019-05-12 10:53:18', 0, NULL, NULL, 'h5', 'H5/Js', 'top');
INSERT INTO `catalog` VALUES (4, '2019-06-28 09:34:24', 0, NULL, NULL, 'database', '数据库', 'top');
INSERT INTO `catalog` VALUES (5, '2019-05-12 10:53:18', 0, NULL, NULL, 'linux', 'Linux', 'top');
INSERT INTO `catalog` VALUES (6, '2019-05-12 10:53:18', 0, NULL, NULL, 'app', '移动开发', 'top');
INSERT INTO `catalog` VALUES (7, '2019-05-12 10:53:18', 0, NULL, NULL, 'alg', '数据结构/算法', 'top');
INSERT INTO `catalog` VALUES (8, '2019-05-12 10:53:18', 0, NULL, NULL, 'bigdata', '大数据', 'top');
INSERT INTO `catalog` VALUES (9, '2019-05-12 10:53:18', 0, NULL, NULL, 'block', '区块链', 'top');
INSERT INTO `catalog` VALUES (10, '2019-05-12 10:53:18', 0, NULL, NULL, 'python', 'python/AI', 'top');
INSERT INTO `catalog` VALUES (11, '2019-05-12 10:53:18', 0, NULL, NULL, 'net', '网络/安全', 'top');
INSERT INTO `catalog` VALUES (12, '2019-05-12 10:53:18', 0, NULL, NULL, 'wiki', '计算机理论', 'top');
INSERT INTO `catalog` VALUES (13, '2019-05-12 10:53:18', 0, NULL, NULL, 'interview', '面试', 'top');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `flag` tinyint(1) NULL DEFAULT 0,
  `modify_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `version` int(11) NULL DEFAULT NULL,
  `buy_count` int(11) NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `discount` double NOT NULL,
  `is_free_post` bit(1) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `number` int(11) NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `price` int(11) NOT NULL,
  `property` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (7, '2019-10-12 11:32:03', 0, NULL, NULL, 147, '温州', 1, b'0', '2017夏季新款女装韩版气质修身碎花裙子中长款印花雪纺连衣裙女夏', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_5.jpg', 168, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (8, '2019-10-12 11:33:21', 0, NULL, NULL, 3578, '杭州', 1, b'0', '粉色无袖雪纺连衣裙中长款2017夏季新款女装韩版时尚修身裙子长裙', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_6.jpg', 148, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (9, '2019-10-12 11:47:36', 0, NULL, NULL, 4766, '杭州', 1, b'0', '无袖娃娃裙大码女装棉麻韩版宽松高腰圆领背心裙亚麻连衣裙女夏季', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_7.jpg', 29, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (11, '2019-10-12 11:49:21', 0, NULL, NULL, 1212, '宁波', 1, b'0', '2017夏季新款韩版女装雪纺无袖白色连衣裙夏修身显瘦打底a字裙子', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_9.jpg', 89, '雪纺', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (12, '2019-10-12 11:50:10', 0, NULL, NULL, 8736, '广州', 1, b'0', '夏季2017新款小清新露肩雪纺连衣裙夏女装韩版显瘦气质a字裙子', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_10.jpg', 29, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (13, '2019-10-12 12:27:17', 0, NULL, NULL, 3998, '杭州', 1, b'0', '2017新款女装夏季雪纺连衣裙韩版收腰显瘦气质荷叶边系带印花中裙', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_11.jpg', 138, '雪纺', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (14, '2019-10-12 12:48:18', 0, NULL, NULL, 262, '深圳', 1, b'0', '水墨青华2017夏装新款女装气质时尚通勤短袖修身中长款印花连衣裙', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_1.jpg', 299, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (15, '2019-10-12 12:49:40', 0, NULL, NULL, 5921, '深圳', 1, b'0', '歌兔连衣裙雪纺夏季长裙修身2017新款女装显瘦碎花小清新裙子夏女', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_12.jpg', 79, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (16, '2019-10-12 12:50:45', 0, NULL, NULL, 2432, '东莞', 1, b'0', '长裙女夏季2017新款女装韩版大码收腰显瘦气质印花无袖雪纺连衣裙', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_13.jpg', 158, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (17, '2019-10-12 12:51:30', 0, NULL, NULL, 1333, '东莞', 1, b'0', '新款莫代尔长裙夏季短袖大码女装宽松显瘦大摆连衣裙沙滩度假裙', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_14.jpg', 139, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (18, '2019-10-12 12:52:15', 0, NULL, NULL, 877, '东莞', 1, b'0', '棉麻连衣裙女夏中长款短袖休闲夏天亚麻女装长裙修身显瘦夏季裙子', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_15.jpg', 199, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (19, '2019-10-12 12:53:46', 0, NULL, NULL, 2143, '青岛', 1, b'0', '改良旗袍连衣裙文艺范民族风刺绣2017夏季棉麻女装显瘦短袖中长款', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_16.jpg', 288, '雪纺', '山东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (20, '2019-10-12 12:54:29', 0, NULL, NULL, 5433, '青岛', 1, b'0', '颜域品牌女装2017夏季新款显瘦娃娃领蝴蝶结系带短袖蕾丝连衣裙', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_17.jpg', 99, '雪纺', '山东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (21, '2019-10-12 12:55:43', 0, NULL, NULL, 6158, '济南', 1, b'0', '天天特价2017夏季新款女装气质修身包臀裙女中长款显瘦蕾丝连衣裙', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_18.jpg', 110, '纯棉', '山东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (22, '2019-10-12 12:56:31', 0, NULL, NULL, 58, '杭州', 1, b'0', '欧洲站2017夏季新款女装显瘦竖条纹拼接无袖a字裙中长款连衣裙子', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_19.jpg', 139, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (23, '2019-10-12 12:57:10', 0, NULL, NULL, 3611, '杭州', 1, b'0', '2017夏季新款女装娃娃裙子宽松圆领休闲显瘦a字无袖背心连衣裙女', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_20.jpg', 148, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (24, '2019-10-12 12:58:06', 0, NULL, NULL, 789, '杭州', 1, b'0', '2017夏季新款韩版时尚高腰褶皱雪纺连衣裙圆领无袖中长款女装裙子', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_21.jpg', 288, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (25, '2019-10-12 12:58:36', 0, NULL, NULL, 7645, '杭州', 1, b'0', '连衣裙女夏2017新款潮韩版收腰显瘦夏季女装碎花雪纺气质百褶裙子', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_22.jpg', 98, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (26, '2019-10-12 12:59:06', 0, NULL, NULL, 296, '杭州', 1, b'0', '2017夏季女装潮新款韩版休闲短袖t恤吊带露肩连衣裙子中长款大码', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_23.jpg', 266, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (27, '2019-10-12 13:00:02', 0, NULL, NULL, 589, '杭州', 1, b'0', '女装连衣裙夏季2017新款韩版无袖欧根纱小黑裙蓬蓬裙修身显瘦裙子', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_24.jpg', 138, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (28, '2019-10-12 13:01:01', 0, NULL, NULL, 262, '杭州', 1, b'0', '水墨青华2017夏装新款女装气质时尚通勤短袖修身中长款印花连衣裙', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_25.jpg', 278, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (29, '2019-10-12 13:01:45', 0, NULL, NULL, 776, '广州', 1, b'0', '韩版修身显瘦中长款真丝连衣裙2017夏装新款桑蚕丝印花大摆沙滩裙', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_26.jpg', 195, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (30, '2019-10-12 13:02:29', 0, NULL, NULL, 512, '广州', 1, b'0', '韩都衣舍2017夏新款韩版网纱小清新假两件中长款连衣裙女RW6789瑒', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_27.jpg', 466, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (31, '2019-10-12 13:02:55', 0, NULL, NULL, 777, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_28.jpg', 128, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (32, '2019-10-12 13:03:29', 0, NULL, NULL, 1588, '东莞', 1, b'0', '2017夏季新款女装韩版气质修身碎花裙子中长款印花雪纺连衣裙女夏', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_29.jpg', 299, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (33, '2019-10-12 13:03:55', 0, NULL, NULL, 739, '东莞', 1, b'0', '粉色无袖雪纺连衣裙中长款2017夏季新款女装韩版时尚修身裙子长裙', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_30.jpg', 588, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (34, '2019-10-12 13:05:02', 0, NULL, NULL, 1788, '东莞', 1, b'0', '无袖娃娃裙大码女装棉麻韩版宽松高腰圆领背心裙亚麻连衣裙女夏季', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_31.jpg', 689, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (35, '2019-10-12 13:05:30', 0, NULL, NULL, 6882, '东莞', 1, b'0', '2017夏装新款裙子棉绸中老年女装印花连衣裙妈妈装加大码短袖长裙', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_32.jpg', 179, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (36, '2019-10-12 18:01:17', 0, NULL, NULL, 6882, '东莞', 1, b'0', '2017夏装新款裙子棉绸中老年女装印花连衣裙妈妈装加大码短袖长裙', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_32.jpg', 179, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (57, '2019-10-14 09:45:55', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙1', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_1.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (58, '2019-10-14 09:45:55', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙2', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_2.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (59, '2019-10-14 09:45:55', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙3', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_3.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (60, '2019-10-14 09:45:55', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙4', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_4.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (61, '2019-10-14 09:45:55', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙5', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_5.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (62, '2019-10-14 09:45:55', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙6', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_6.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (63, '2019-10-14 09:45:55', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙7', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_7.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (64, '2019-10-14 09:45:55', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙8', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_8.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (65, '2019-10-14 09:45:55', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙9', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_9.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (66, '2019-10-14 09:45:55', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙10', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_10.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (67, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙1', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_1.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (68, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙2', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_2.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (69, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙3', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_3.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (70, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙4', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_4.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (71, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙5', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_5.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (72, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙6', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_6.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (73, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙7', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_7.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (74, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙8', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_8.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (75, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙9', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_9.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (76, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙10', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_10.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (77, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙11', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_11.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (78, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙12', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_12.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (79, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙13', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_13.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (80, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙14', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_14.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (81, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙15', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_15.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (82, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙16', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_16.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (83, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙17', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_17.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (84, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙18', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_18.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (85, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙19', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_19.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (86, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙20', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_20.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (87, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙21', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_21.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (88, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙22', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_22.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (89, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙23', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_23.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (90, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙24', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_24.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (91, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙25', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_25.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (92, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙26', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_26.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (93, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙27', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_27.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (94, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙28', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_28.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (95, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙29', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_29.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (96, '2019-10-14 09:48:00', 0, NULL, NULL, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙30', 1000, 'http://www.simoniu.com:8080/examdemo/images/api/goodList/pics_small/good_30.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `validate_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `flag` tinyint(1) NULL DEFAULT 0,
  `modify_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `version` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'zhangsan', '123456', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (2, '张三丰', '123456', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (3, NULL, '123456', '910125', '2019-12-08 15:01:19', 0, NULL, NULL, NULL, '17336401051', NULL);

SET FOREIGN_KEY_CHECKS = 1;
