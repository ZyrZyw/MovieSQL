/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : m_film

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 03/06/2021 22:37:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for castinfo
-- ----------------------------
-- DROP TABLE IF EXISTS `castinfo`;
CREATE TABLE `castinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `film_id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `film_id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of castinfo
-- ----------------------------
INSERT INTO `castinfo` VALUES (299896, 26266893, '屈楚萧', '刘启/户口');
INSERT INTO `castinfo` VALUES (299897, 26266893, '吴京', '刘培强');
INSERT INTO `castinfo` VALUES (299898, 26266893, '李光洁', '王磊');
INSERT INTO `castinfo` VALUES (299899, 26266893, '吴孟达', '韩子昂');
INSERT INTO `castinfo` VALUES (299900, 26266893, '赵今麦', '韩朵朵');
INSERT INTO `castinfo` VALUES (299901, 26266893, '隋凯', '蒂姆 Tim');
INSERT INTO `castinfo` VALUES (299902, 26266893, '屈菁菁', '周倩/丫头');
INSERT INTO `castinfo` VALUES (299903, 26266893, '张亦驰', '李一一');
INSERT INTO `castinfo` VALUES (299904, 26266893, '杨皓宇', '何连科');
INSERT INTO `castinfo` VALUES (299905, 26266893, '阿尔卡基·沙罗格拉茨基', '马尔洛夫');
INSERT INTO `castinfo` VALUES (299906, 26266893, '李虹辰', '张小强');
INSERT INTO `castinfo` VALUES (299907, 26266893, '杨轶', '溜子/杨捷');
INSERT INTO `castinfo` VALUES (299908, 26266893, '姜志刚', '赵志刚');
INSERT INTO `castinfo` VALUES (299909, 26266893, '张欢', '黄明');
INSERT INTO `castinfo` VALUES (299910, 26266893, '雷佳音', '一哥');
INSERT INTO `castinfo` VALUES (299911, 26266893, '宁浩', '二叔');
INSERT INTO `castinfo` VALUES (299912, 26266893, '刘慈欣', '空间站军官甲');
INSERT INTO `castinfo` VALUES (299913, 26266893, '郭京飞', '空间站军官乙');
INSERT INTO `castinfo` VALUES (299914, 26266893, '王智', '刘启母亲');
INSERT INTO `castinfo` VALUES (299915, 26266893, '张子贤', '黄国盛');
INSERT INTO `castinfo` VALUES (299916, 26266893, '路阳', '安检甲');
INSERT INTO `castinfo` VALUES (299917, 26266893, '张宁', '安检乙');
INSERT INTO `castinfo` VALUES (299918, 26266893, '张小北', '轨道车司机');
INSERT INTO `castinfo` VALUES (299919, 26266893, '饶晓志', '空间站工程师甲');
INSERT INTO `castinfo` VALUES (299920, 26266893, '陶珞依', '教师');
INSERT INTO `castinfo` VALUES (299921, 26266893, '吴晓亮', '中国救援队员甲');
INSERT INTO `castinfo` VALUES (299922, 26266893, '龚格尔', '补给站预警甲');
INSERT INTO `castinfo` VALUES (299923, 26266893, '郭帆', '叉车司机');


-- ----------------------------
-- Table structure for companyinfo
-- ----------------------------
-- DROP TABLE IF EXISTS `companyinfo`;
CREATE TABLE `companyinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo
-- ----------------------------

INSERT INTO `companyinfo` ('中国电影股份有限公司', '北京'),
('北京京西文化旅游股份有限公司', '北京'),
('北京登峰国际', '北京'),
('郭帆文化传媒（北京）有限公司', '北京'),
('阿里巴巴影业', '北京'),
('腾讯影业', '北京'),
('中青新影文化传媒（北京）有限公司', '北京'),
('优酷电影有限公司', '上海'),
('霍尔果斯聚合影联文化传媒有限公司', '新疆'),
('芒果娱乐', '湖南'),
('嘲风影业（北京）有限责任公司', '北京'),
('北京国影纵横电影发行有限公司', '北京'),
('北京耀莱影视文化传媒有限公司', '北京'),
('上海电影(集团)有限公司', '上海'),
('新疆华夏天山电影院线有限责任公司', '新疆');

-- ----------------------------
-- Table structure for director/actorinfo
-- ----------------------------
-- DROP TABLE IF EXISTS `director/actorinfo`;
CREATE TABLE `director/actorinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `birthplace` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `constellatory` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `profession` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58378 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of director/actorinfo
-- ----------------------------

INSERT INTO `director/actorinfo` VALUES ('屈楚萧', '男', '1994-12-28', '四川,眉山', '摩羯座', '演员',),
('吴京', '男', '1974-04-03', '中国,北京', '白羊座', '导演/演员'),
('李光洁', '男', '1981-04-23', '中国,河南,平顶山', '金牛座', '导演/演员'),
('吴孟达', '男', '1952-01-02', '中国,福建,厦门', '摩羯座', '演员'),
('赵今麦', '女', '2002-09-29', '中国,辽宁,沈阳', '天秤座', '演员');
INSERT INTO `director/actorinfo` VALUES ('隋凯', '男', '1985-07-04', '美国,密歇根州', '巨蟹座', '演员');
INSERT INTO `director/actorinfo` VALUES ('屈菁菁', '女', '1990-05-17', '中国,辽宁,沈阳', '金牛座', '演员');
INSERT INTO `director/actorinfo` VALUES ('张亦驰', '男', '1991-01-07', '中国,北京', '摩羯座', '演员');
INSERT INTO `director/actorinfo` VALUES ('杨皓宇', '男', '1974-09-25', '重庆', '天秤座', '演员'),
('阿尔卡基·沙罗格拉茨基 Arkady Sharogradsky','男','1966-09-23','俄罗斯,圣彼得堡','处女座', '演员'),
('杨轶', '男','1983-03-06','中国，北京','双鱼座','演员');
INSERT INTO `director/actorinfo` VALUES ('李虹辰', '男', '1987-08-30', '中国,黑龙江,哈尔滨', '处女座', '演员');
INSERT INTO `director/actorinfo` VALUES ('姜志刚', '男', '2000-01-19', '中国东北', NULL, '演员');
INSERT INTO `director/actorinfo` VALUES ('张欢', '男', NULL, '中国,江苏,徐州', '处女座', '演员');
INSERT INTO `director/actorinfo` VALUES ('雷佳音', '男', '1983-08-29', '中国,辽宁,鞍山', '处女座', '演员');
INSERT INTO `director/actorinfo` VALUES ('宁浩', '男', '1977-09-09', '中国,山西,太原', '处女座', '导演/演员');
INSERT INTO `director/actorinfo` VALUES ('郭京飞', '男', '1979-07-02', '中国,北京', '巨蟹座', '演员');
INSERT INTO `director/actorinfo` VALUES ('王智', '女', '1985-07-29', '中国,辽宁,丹东', '狮子座', '演员');
INSERT INTO `director/actorinfo` VALUES ('张子贤', '男', NULL, '射手座', '演员');
INSERT INTO `director/actorinfo` VALUES ('张宁', '男', '1979-03-16', '中国,北京', '处女座', '演员')，
('路阳','男','1979-11-23','中国,北京','导演/演员');
INSERT INTO `director/actorinfo` VALUES ('张小北', '男', '1975-10-19', '中国', '天秤座', '导演/演员');
INSERT INTO `director/actorinfo` VALUES ('饶晓志', '男', '1980-10-01', '中国,贵州省,遵义市,桐梓县', '天蝎座', '导演/演员'),
('陶珞依','女','1991-03-11','双鱼座','演员'),
('龚格尔','男','1981-03-02','双鱼座','演员');
INSERT INTO `director/actorinfo` VALUES ('吴晓亮', '男', '1985-07-22', '中国,内蒙古,通辽', '巨蟹座', '演员');
INSERT INTO `director/actorinfo` VALUES ('郭帆', '男', '1980-12-15', '中国,山东,济宁', '射手座', '导演/演员');

-- ----------------------------
-- Table structure for directorfilminfo
-- ----------------------------
-- DROP TABLE IF EXISTS `directorfilminfo`;
CREATE TABLE `directorfilminfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `director_id` int NOT NULL,
  `film_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76191 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of directorfilminfo
-- ----------------------------
INSERT INTO `directorfilminfo` VALUES (27, 26266893);
-- ----------------------------
-- Table structure for filminfo
-- ----------------------------
DROP TABLE IF EXISTS `filminfo`;
CREATE TABLE `filminfo`  (
  `film_id` int NOT NULL,
  `film_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `genres` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
--  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `issue` date NULL DEFAULT NULL,
  `runtime` time NULL DEFAULT NULL,
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `languages` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regions` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_count` int NULL DEFAULT NULL,
  `rate` float NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`film_id`) USING BTREE,
  UNIQUE INDEX `film_id_UNIQUE`(`film_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of filminfo
-- ----------------------------
INSERT INTO `filminfo` VALUES (26266893, '流浪地球', '科幻/灾难', '2019-02-05', '02:05:00', '近未来，科学家们发现太阳急速衰老膨胀，短时间内包括地球在内的整个太阳系都将被太阳所吞没。为了自救，人类提出一个名为“流浪地球”的大胆计划，即倾全球之力在地球表面建造上万座发动机和转向发动机，推动地球离开太阳系，用2500年的时间奔往另外一个栖息之地。中国航天员刘培强（吴京饰）在儿子刘启四岁那年前往国际空间站，和国际同侪肩负起领航者的重任。转眼刘启（屈楚萧饰）长大，他带着妹妹朵朵（赵今麦饰）偷偷跑到地表，偷开外公韩子昂（吴孟达饰）的运输车，结果不仅遭到逮捕，还遭遇了全球发动机停摆的事件。为了修好发动机，阻止地球坠入木星，全球开始展开饱和式营救，连刘启他们的车也被强征加入。在与时间赛跑的过程中，无数的人前仆后继，奋不顾身，只为延续百代子孙生存的希望……', '汉语普通话 / 英语 / 俄语 / 法语 / 日语 / 韩语 / 印尼语', '中国大陆', 1058032, 7.9, 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2545472803.jpg');

-- ----------------------------
-- Table structure for user_answer
-- ----------------------------
DROP TABLE IF EXISTS `user_answer`;
CREATE TABLE `user_answer`  (
  `answer_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `adopt` tinyint NOT NULL,
  `answer` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `answer_time` datetime NOT NULL,
  PRIMARY KEY (`answer_id`) USING BTREE,
  UNIQUE INDEX `answer_id_UNIQUE`(`answer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_answer
-- ----------------------------

-- ----------------------------
-- Table structure for user_ask
-- ----------------------------
DROP TABLE IF EXISTS `user_ask`;
CREATE TABLE `user_ask`  (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `question` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adopt` tinyint NOT NULL,
  `question_time` datetime NOT NULL,
  PRIMARY KEY (`question_id`) USING BTREE,
  UNIQUE INDEX `question_id_UNIQUE`(`question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_ask
-- ----------------------------

-- ----------------------------
-- Table structure for user_score
-- ----------------------------
DROP TABLE IF EXISTS `user_score`;
CREATE TABLE `user_score`  (
  `user_id` int NOT NULL,
  `film_id` int NOT NULL,
  `score` int NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `comment_time` datetime NULL DEFAULT NULL,
  `comment_adopt` int NULL DEFAULT 0,
  PRIMARY KEY (`user_id`, `film_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_score
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `user_id` int NOT NULL,
  `nickname` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_id_UNIQUE`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------

