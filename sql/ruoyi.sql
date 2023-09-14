/*
 Navicat Premium Data Transfer

 Source Server         : mybatis
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : ruoyi

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 14/09/2023 10:07:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for db_class
-- ----------------------------
DROP TABLE IF EXISTS `db_class`;
CREATE TABLE `db_class`  (
  `cls_id` int NOT NULL AUTO_INCREMENT COMMENT '班级id',
  `cls_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班级名称',
  `maj_id` int NOT NULL COMMENT '专业id',
  PRIMARY KEY (`cls_id`) USING BTREE,
  INDEX `maj_id`(`maj_id`) USING BTREE,
  CONSTRAINT `db_class_ibfk_1` FOREIGN KEY (`maj_id`) REFERENCES `db_major` (`maj_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of db_class
-- ----------------------------
INSERT INTO `db_class` VALUES (4, '软件1班', 4);
INSERT INTO `db_class` VALUES (5, '网工1班', 5);
INSERT INTO `db_class` VALUES (6, '电子信息1班', 6);
INSERT INTO `db_class` VALUES (7, '财务1班', 7);
INSERT INTO `db_class` VALUES (8, '市场营销1班', 8);
INSERT INTO `db_class` VALUES (9, '工商管理1班', 9);
INSERT INTO `db_class` VALUES (10, '电子商务1班', 10);
INSERT INTO `db_class` VALUES (11, '物流管理1班', 11);
INSERT INTO `db_class` VALUES (12, '大数据1班', 12);
INSERT INTO `db_class` VALUES (13, '数字媒体1班', 13);
INSERT INTO `db_class` VALUES (14, '工业设计1班', 14);
INSERT INTO `db_class` VALUES (15, '视觉传达1班', 15);
INSERT INTO `db_class` VALUES (16, '商英1班', 16);
INSERT INTO `db_class` VALUES (17, '日语1班', 17);

-- ----------------------------
-- Table structure for db_college
-- ----------------------------
DROP TABLE IF EXISTS `db_college`;
CREATE TABLE `db_college`  (
  `coll_id` int NOT NULL AUTO_INCREMENT COMMENT '学院id',
  `coll_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学院名称',
  PRIMARY KEY (`coll_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of db_college
-- ----------------------------
INSERT INTO `db_college` VALUES (5, '计算机学院');
INSERT INTO `db_college` VALUES (6, '商务管理学院');
INSERT INTO `db_college` VALUES (7, '信息管理与工程学院');
INSERT INTO `db_college` VALUES (8, '数字媒体与设计学院');
INSERT INTO `db_college` VALUES (9, '外国语学院');

-- ----------------------------
-- Table structure for db_course
-- ----------------------------
DROP TABLE IF EXISTS `db_course`;
CREATE TABLE `db_course`  (
  `cou_id` int NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `cou_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课程名称',
  `tea_id` int NOT NULL COMMENT '教师id',
  `cou_credit` float(5, 1) NOT NULL COMMENT '学分',
  `cou_hour` int NOT NULL COMMENT '学时',
  `cou_way` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '考核方式',
  PRIMARY KEY (`cou_id`) USING BTREE,
  INDEX `db_cou_tea`(`tea_id`) USING BTREE,
  CONSTRAINT `db_cou_tea` FOREIGN KEY (`tea_id`) REFERENCES `db_teacher` (`tea_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of db_course
-- ----------------------------
INSERT INTO `db_course` VALUES (8, '移动平台开发', 9, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (9, '系统分析与设计', 10, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (10, '互联网应用开发', 11, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (11, '计算机系统基础', 12, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (12, '软件测试', 13, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (13, '计算机网络', 14, 3.0, 20, '2');
INSERT INTO `db_course` VALUES (14, '数据结构与算法', 15, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (15, '线性代数', 16, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (16, '密码学与网络安全', 17, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (17, '路由与交换技术', 18, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (18, '高等数学', 9, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (19, '电子技术基础', 10, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (20, 'Linux程序设计', 11, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (21, '嵌入式系统基础', 12, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (22, '单片机原理与接口', 13, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (23, '经济学基础', 17, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (24, '经济数学基础', 18, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (25, '会计学', 19, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (26, '审计学', 23, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (27, '公司理财', 24, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (28, '管理学', 17, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (29, '微观经济学', 24, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (30, '宏观经济学', 25, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (31, '运筹学', 21, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (32, '消费心理学', 27, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (33, '财务管理', 28, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (34, '经济法', 32, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (35, '人力资源管理', 30, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (36, '经营管理', 28, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (37, '会计实务', 32, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (38, '营销策划', 31, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (39, '网页配色', 31, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (40, '电商管理务实', 30, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (41, '国际贸易理论', 30, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (42, 'PS设计', 20, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (43, '管理统计学', 28, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (44, '物流运筹学', 21, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (45, '采购与供应管理', 23, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (46, '商品学概论', 21, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (47, '港口物流', 28, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (48, '计量经济学', 25, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (49, '商务数据分析', 31, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (50, '大数据基础设施', 15, 4.0, 20, '2');
INSERT INTO `db_course` VALUES (51, '数据库系统', 30, 4.0, 20, '1');
INSERT INTO `db_course` VALUES (52, '数据仓库与数据挖掘', 30, 4.0, 20, '2');

-- ----------------------------
-- Table structure for db_major
-- ----------------------------
DROP TABLE IF EXISTS `db_major`;
CREATE TABLE `db_major`  (
  `maj_id` int NOT NULL AUTO_INCREMENT COMMENT '专业id',
  `maj_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '专业名称',
  `coll_id` int NOT NULL COMMENT '学院id',
  PRIMARY KEY (`maj_id`) USING BTREE,
  INDEX `db_maj_coll`(`coll_id`) USING BTREE,
  CONSTRAINT `db_maj_coll` FOREIGN KEY (`coll_id`) REFERENCES `db_college` (`coll_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_major
-- ----------------------------
INSERT INTO `db_major` VALUES (4, '软件工程', 5);
INSERT INTO `db_major` VALUES (5, '网络工程', 5);
INSERT INTO `db_major` VALUES (6, '电子信息工程', 5);
INSERT INTO `db_major` VALUES (7, '财务管理', 6);
INSERT INTO `db_major` VALUES (8, '市场营销', 6);
INSERT INTO `db_major` VALUES (9, '工商管理', 6);
INSERT INTO `db_major` VALUES (10, '电子商务', 7);
INSERT INTO `db_major` VALUES (11, '物流管理', 7);
INSERT INTO `db_major` VALUES (12, '大数据管理与应用', 7);
INSERT INTO `db_major` VALUES (13, '数字媒体技术', 8);
INSERT INTO `db_major` VALUES (14, '工业设计', 8);
INSERT INTO `db_major` VALUES (15, '视觉传达设计', 8);
INSERT INTO `db_major` VALUES (16, '商务英语', 9);
INSERT INTO `db_major` VALUES (17, '日语', 9);

-- ----------------------------
-- Table structure for db_score
-- ----------------------------
DROP TABLE IF EXISTS `db_score`;
CREATE TABLE `db_score`  (
  `sco_id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `stu_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学生编号',
  `stu_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学生姓名',
  `cou_id` int NOT NULL COMMENT '课程编号',
  `tea_id` int NOT NULL COMMENT '教师编号',
  `score` float(5, 1) NULL DEFAULT NULL COMMENT '成绩',
  `GPA` float(5, 1) NULL DEFAULT NULL COMMENT '绩点',
  PRIMARY KEY (`sco_id`) USING BTREE,
  INDEX `db_sco_cou`(`cou_id`) USING BTREE,
  INDEX `db_sco_tea`(`tea_id`) USING BTREE,
  CONSTRAINT `db_sco_cou` FOREIGN KEY (`cou_id`) REFERENCES `db_course` (`cou_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `db_sco_tea` FOREIGN KEY (`tea_id`) REFERENCES `db_teacher` (`tea_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of db_score
-- ----------------------------
INSERT INTO `db_score` VALUES (20, '2', '学生A', 8, 9, 88.0, 4.4);
INSERT INTO `db_score` VALUES (21, '2', '学生A', 9, 10, 90.0, 4.5);
INSERT INTO `db_score` VALUES (22, '2', '学生A', 10, 11, 67.0, 3.4);
INSERT INTO `db_score` VALUES (23, '2', '学生A', 11, 12, 69.0, 3.5);
INSERT INTO `db_score` VALUES (24, '2', '学生A', 12, 13, 80.0, 4.0);
INSERT INTO `db_score` VALUES (25, '3', '学生B', 8, 9, 94.0, 4.7);
INSERT INTO `db_score` VALUES (26, '3', '学生B', 9, 10, 78.0, 3.9);
INSERT INTO `db_score` VALUES (27, '3', '学生B', 10, 11, 98.0, 4.9);
INSERT INTO `db_score` VALUES (28, '3', '学生B', 11, 12, 68.0, 3.4);
INSERT INTO `db_score` VALUES (29, '3', '学生B', 12, 13, 68.0, 3.4);
INSERT INTO `db_score` VALUES (30, '4', '学生C', 8, 9, 67.0, 3.4);
INSERT INTO `db_score` VALUES (31, '4', '学生C', 9, 10, 87.0, 4.4);
INSERT INTO `db_score` VALUES (32, '4', '学生C', 10, 11, 57.0, 2.8);
INSERT INTO `db_score` VALUES (33, '4', '学生C', 11, 12, 88.0, 4.4);
INSERT INTO `db_score` VALUES (34, '4', '学生C', 12, 13, 90.0, 4.5);
INSERT INTO `db_score` VALUES (35, '5', '学生D', 8, 9, 90.0, 4.5);
INSERT INTO `db_score` VALUES (36, '5', '学生D', 9, 10, 68.0, 3.4);
INSERT INTO `db_score` VALUES (37, '5', '学生D', 10, 11, 88.0, 4.4);
INSERT INTO `db_score` VALUES (38, '5', '学生D', 11, 12, 68.0, 3.4);
INSERT INTO `db_score` VALUES (39, '5', '学生D', 12, 13, 89.0, 4.5);
INSERT INTO `db_score` VALUES (40, '6', '学生E', 8, 9, 79.0, 4.0);
INSERT INTO `db_score` VALUES (41, '6', '学生E', 9, 10, 89.0, 4.5);
INSERT INTO `db_score` VALUES (42, '6', '学生E', 10, 11, 69.0, 3.5);
INSERT INTO `db_score` VALUES (43, '6', '学生E', 11, 12, 77.0, 3.8);
INSERT INTO `db_score` VALUES (44, '6', '学生E', 12, 13, 90.0, 4.5);
INSERT INTO `db_score` VALUES (45, '7', '学生F', 13, 14, 68.0, 3.4);
INSERT INTO `db_score` VALUES (46, '7', '学生F', 14, 15, 90.0, 4.5);
INSERT INTO `db_score` VALUES (47, '7', '学生F', 15, 16, 77.0, 3.8);
INSERT INTO `db_score` VALUES (48, '7', '学生F', 16, 17, 89.0, 4.5);
INSERT INTO `db_score` VALUES (49, '7', '学生F', 17, 18, 90.0, 4.5);
INSERT INTO `db_score` VALUES (50, '8', '学生G', 13, 14, 55.0, 2.8);
INSERT INTO `db_score` VALUES (51, '8', '学生G', 14, 15, 43.0, 2.1);
INSERT INTO `db_score` VALUES (52, '8', '学生G', 15, 16, 87.0, 4.4);
INSERT INTO `db_score` VALUES (53, '8', '学生G', 16, 17, 67.0, 3.4);
INSERT INTO `db_score` VALUES (54, '8', '学生G', 17, 18, 98.0, 4.9);
INSERT INTO `db_score` VALUES (55, '9', '学生H', 13, 14, 100.0, 5.0);
INSERT INTO `db_score` VALUES (56, '9', '学生H', 14, 15, 89.0, 4.5);
INSERT INTO `db_score` VALUES (57, '9', '学生H', 15, 16, 75.0, 3.8);
INSERT INTO `db_score` VALUES (58, '9', '学生H', 16, 17, 71.0, 3.6);
INSERT INTO `db_score` VALUES (59, '9', '学生H', 17, 18, 82.0, 4.1);
INSERT INTO `db_score` VALUES (60, '10', '学生I', 13, 14, 55.0, 2.8);
INSERT INTO `db_score` VALUES (61, '10', '学生I', 14, 15, 78.0, 3.9);
INSERT INTO `db_score` VALUES (62, '10', '学生I', 15, 16, 67.0, 3.4);
INSERT INTO `db_score` VALUES (63, '10', '学生I', 16, 17, 98.0, 4.9);
INSERT INTO `db_score` VALUES (64, '10', '学生I', 17, 18, 98.0, 4.9);
INSERT INTO `db_score` VALUES (65, '11', '学生J', 13, 14, 45.0, 2.2);
INSERT INTO `db_score` VALUES (66, '11', '学生J', 14, 15, 76.0, 3.8);
INSERT INTO `db_score` VALUES (67, '11', '学生J', 15, 16, 89.0, 4.5);
INSERT INTO `db_score` VALUES (68, '11', '学生J', 16, 17, 45.0, 2.2);
INSERT INTO `db_score` VALUES (69, '11', '学生J', 17, 18, 67.0, 3.4);
INSERT INTO `db_score` VALUES (70, '12', '学生AA', 18, 9, 35.0, 1.8);
INSERT INTO `db_score` VALUES (71, '12', '学生AA', 19, 10, 63.0, 3.2);
INSERT INTO `db_score` VALUES (72, '12', '学生AA', 20, 11, 96.0, 4.8);
INSERT INTO `db_score` VALUES (73, '12', '学生AA', 21, 12, 96.0, 4.8);
INSERT INTO `db_score` VALUES (74, '12', '学生AA', 22, 13, 63.0, 3.2);
INSERT INTO `db_score` VALUES (75, '13', '学生BB', 18, 9, 75.0, 3.8);
INSERT INTO `db_score` VALUES (76, '13', '学生BB', 19, 10, 96.0, 4.8);
INSERT INTO `db_score` VALUES (77, '13', '学生BB', 20, 11, 76.0, 3.8);
INSERT INTO `db_score` VALUES (78, '13', '学生BB', 21, 12, 74.0, 3.7);
INSERT INTO `db_score` VALUES (79, '13', '学生BB', 22, 13, 85.0, 4.2);
INSERT INTO `db_score` VALUES (80, '14', '学生CC', 18, 9, 96.0, 4.8);
INSERT INTO `db_score` VALUES (81, '14', '学生CC', 19, 10, 63.0, 3.2);
INSERT INTO `db_score` VALUES (82, '14', '学生CC', 20, 11, 36.0, 1.8);
INSERT INTO `db_score` VALUES (83, '14', '学生CC', 21, 12, 65.0, 3.2);
INSERT INTO `db_score` VALUES (84, '14', '学生CC', 22, 13, 96.0, 4.8);
INSERT INTO `db_score` VALUES (85, '15', '学生DD', 18, 9, 78.0, 3.9);
INSERT INTO `db_score` VALUES (86, '15', '学生DD', 19, 10, 41.0, 2.1);
INSERT INTO `db_score` VALUES (87, '15', '学生DD', 20, 11, 45.0, 2.2);
INSERT INTO `db_score` VALUES (88, '15', '学生DD', 21, 12, 68.0, 3.4);
INSERT INTO `db_score` VALUES (89, '15', '学生DD', 22, 13, 74.0, 3.7);
INSERT INTO `db_score` VALUES (90, '16', '学生EE', 18, 9, 74.0, 3.7);
INSERT INTO `db_score` VALUES (91, '16', '学生EE', 19, 10, 71.0, 3.6);
INSERT INTO `db_score` VALUES (92, '16', '学生EE', 20, 11, 75.0, 3.8);
INSERT INTO `db_score` VALUES (93, '16', '学生EE', 21, 12, 74.0, 3.7);
INSERT INTO `db_score` VALUES (94, '16', '学生EE', 22, 13, 93.0, 4.7);
INSERT INTO `db_score` VALUES (95, '17', '学生FF', 23, 17, 68.0, 3.4);
INSERT INTO `db_score` VALUES (96, '17', '学生FF', 24, 18, 74.0, 3.7);
INSERT INTO `db_score` VALUES (97, '17', '学生FF', 25, 19, 83.0, 4.2);
INSERT INTO `db_score` VALUES (98, '17', '学生FF', 26, 23, 87.0, 4.4);
INSERT INTO `db_score` VALUES (99, '17', '学生FF', 27, 24, 47.0, 2.4);
INSERT INTO `db_score` VALUES (100, '18', '学生GG', 23, 17, 86.0, 4.3);
INSERT INTO `db_score` VALUES (101, '18', '学生GG', 24, 18, 27.0, 1.4);
INSERT INTO `db_score` VALUES (102, '18', '学生GG', 25, 19, 87.0, 4.4);
INSERT INTO `db_score` VALUES (103, '18', '学生GG', 26, 23, 88.0, 4.4);
INSERT INTO `db_score` VALUES (104, '18', '学生GG', 27, 24, 86.0, 4.3);
INSERT INTO `db_score` VALUES (105, '19', '学生HH', 23, 17, 47.0, 2.4);
INSERT INTO `db_score` VALUES (106, '19', '学生HH', 24, 18, 68.0, 3.4);
INSERT INTO `db_score` VALUES (107, '19', '学生HH', 25, 19, 72.0, 3.6);
INSERT INTO `db_score` VALUES (108, '19', '学生HH', 26, 23, 87.0, 4.4);
INSERT INTO `db_score` VALUES (109, '19', '学生HH', 27, 24, 74.0, 3.7);
INSERT INTO `db_score` VALUES (110, '20', '学生II', 23, 17, 68.0, 3.4);
INSERT INTO `db_score` VALUES (111, '20', '学生II', 24, 18, 86.0, 4.3);
INSERT INTO `db_score` VALUES (112, '20', '学生II', 25, 19, 87.0, 4.4);
INSERT INTO `db_score` VALUES (113, '20', '学生II', 26, 23, 68.0, 3.4);
INSERT INTO `db_score` VALUES (114, '20', '学生II', 27, 24, 78.0, 3.9);
INSERT INTO `db_score` VALUES (115, '21', '学生JJ', 23, 17, 78.0, 3.9);
INSERT INTO `db_score` VALUES (116, '21', '学生JJ', 24, 18, 74.0, 3.7);
INSERT INTO `db_score` VALUES (117, '21', '学生JJ', 25, 19, 68.0, 3.4);
INSERT INTO `db_score` VALUES (118, '21', '学生JJ', 26, 23, 86.0, 4.3);
INSERT INTO `db_score` VALUES (119, '21', '学生JJ', 27, 24, 78.0, 3.9);
INSERT INTO `db_score` VALUES (120, '22', '学生AAA', 28, 17, 68.0, 3.4);
INSERT INTO `db_score` VALUES (121, '22', '学生AAA', 29, 24, 77.0, 3.8);
INSERT INTO `db_score` VALUES (122, '22', '学生AAA', 30, 25, 68.0, 3.4);
INSERT INTO `db_score` VALUES (123, '22', '学生AAA', 31, 21, 77.0, 3.8);
INSERT INTO `db_score` VALUES (124, '22', '学生AAA', 32, 27, 47.0, 2.4);
INSERT INTO `db_score` VALUES (125, '23', '学生BBB', 28, 17, 68.0, 3.4);
INSERT INTO `db_score` VALUES (126, '23', '学生BBB', 29, 24, 69.0, 3.5);
INSERT INTO `db_score` VALUES (127, '23', '学生BBB', 30, 25, 78.0, 3.9);
INSERT INTO `db_score` VALUES (128, '23', '学生BBB', 31, 21, 99.0, 5.0);
INSERT INTO `db_score` VALUES (129, '23', '学生BBB', 32, 27, 78.0, 3.9);
INSERT INTO `db_score` VALUES (130, '24', '学生CCC', 28, 17, 78.0, 3.9);
INSERT INTO `db_score` VALUES (131, '24', '学生CCC', 29, 24, 88.0, 4.4);
INSERT INTO `db_score` VALUES (132, '24', '学生CCC', 30, 25, 68.0, 3.4);
INSERT INTO `db_score` VALUES (133, '24', '学生CCC', 31, 21, 78.0, 3.9);
INSERT INTO `db_score` VALUES (134, '24', '学生CCC', 32, 27, 47.0, 2.4);
INSERT INTO `db_score` VALUES (135, '25', '学生A', 33, 28, 87.0, 4.4);
INSERT INTO `db_score` VALUES (136, '25', '学生A', 34, 32, 68.0, 3.4);
INSERT INTO `db_score` VALUES (137, '25', '学生A', 35, 30, 87.0, 4.4);
INSERT INTO `db_score` VALUES (138, '25', '学生A', 36, 28, 68.0, 3.4);
INSERT INTO `db_score` VALUES (139, '25', '学生A', 37, 32, 47.0, 2.4);
INSERT INTO `db_score` VALUES (140, '26', '学生B', 33, 28, 89.0, 4.5);
INSERT INTO `db_score` VALUES (141, '26', '学生B', 34, 32, 87.0, 4.4);
INSERT INTO `db_score` VALUES (142, '26', '学生B', 35, 30, 68.0, 3.4);
INSERT INTO `db_score` VALUES (143, '26', '学生B', 36, 28, 69.0, 3.5);
INSERT INTO `db_score` VALUES (144, '26', '学生B', 37, 32, 74.0, 3.7);
INSERT INTO `db_score` VALUES (145, '27', '学生C', 33, 28, 69.0, 3.5);
INSERT INTO `db_score` VALUES (146, '27', '学生C', 34, 32, 35.0, 1.8);
INSERT INTO `db_score` VALUES (147, '27', '学生C', 35, 30, 58.0, 2.9);
INSERT INTO `db_score` VALUES (148, '27', '学生C', 36, 28, 96.0, 4.8);
INSERT INTO `db_score` VALUES (149, '27', '学生C', 37, 32, 47.0, 2.4);
INSERT INTO `db_score` VALUES (150, '28', 'A学生', 38, 31, 65.0, 3.2);
INSERT INTO `db_score` VALUES (151, '28', 'A学生', 39, 31, 85.0, 4.2);
INSERT INTO `db_score` VALUES (152, '28', 'A学生', 40, 30, 45.0, 2.2);
INSERT INTO `db_score` VALUES (153, '28', 'A学生', 41, 30, 85.0, 4.2);
INSERT INTO `db_score` VALUES (154, '28', 'A学生', 42, 20, 62.0, 3.1);
INSERT INTO `db_score` VALUES (155, '29', 'B学生', 38, 31, 74.0, 3.7);
INSERT INTO `db_score` VALUES (156, '29', 'B学生', 39, 31, 63.0, 3.2);
INSERT INTO `db_score` VALUES (157, '29', 'B学生', 40, 30, 85.0, 4.2);
INSERT INTO `db_score` VALUES (158, '29', 'B学生', 41, 30, 76.0, 3.8);
INSERT INTO `db_score` VALUES (159, '29', 'B学生', 42, 20, 96.0, 4.8);
INSERT INTO `db_score` VALUES (160, '30', 'C学生', 38, 31, 85.0, 4.2);
INSERT INTO `db_score` VALUES (161, '30', 'C学生', 39, 31, 96.0, 4.8);
INSERT INTO `db_score` VALUES (162, '30', 'C学生', 40, 30, 75.0, 3.8);
INSERT INTO `db_score` VALUES (163, '30', 'C学生', 41, 30, 65.0, 3.2);
INSERT INTO `db_score` VALUES (164, '30', 'C学生', 42, 20, 71.0, 3.6);
INSERT INTO `db_score` VALUES (165, '31', 'D学生', 43, 28, 82.0, 4.1);
INSERT INTO `db_score` VALUES (166, '31', 'D学生', 44, 21, 96.0, 4.8);
INSERT INTO `db_score` VALUES (167, '31', 'D学生', 45, 23, 72.0, 3.6);
INSERT INTO `db_score` VALUES (168, '31', 'D学生', 46, 21, 96.0, 4.8);
INSERT INTO `db_score` VALUES (169, '31', 'D学生', 47, 28, 85.0, 4.2);
INSERT INTO `db_score` VALUES (170, '32', 'E学生', 43, 28, 43.0, 2.1);
INSERT INTO `db_score` VALUES (171, '32', 'E学生', 44, 21, 63.0, 3.2);
INSERT INTO `db_score` VALUES (172, '32', 'E学生', 45, 23, 60.0, 3.0);
INSERT INTO `db_score` VALUES (173, '32', 'E学生', 46, 21, 75.0, 3.8);
INSERT INTO `db_score` VALUES (174, '32', 'E学生', 47, 28, 95.0, 4.8);
INSERT INTO `db_score` VALUES (175, '33', 'F学生', 43, 28, 45.0, 2.2);
INSERT INTO `db_score` VALUES (176, '33', 'F学生', 44, 21, 65.0, 3.2);
INSERT INTO `db_score` VALUES (177, '33', 'F学生', 45, 23, 85.0, 4.2);
INSERT INTO `db_score` VALUES (178, '33', 'F学生', 46, 21, 35.0, 1.8);
INSERT INTO `db_score` VALUES (179, '33', 'F学生', 47, 28, 45.0, 2.2);
INSERT INTO `db_score` VALUES (180, '34', 'AA学生', 48, 25, 87.0, 4.4);
INSERT INTO `db_score` VALUES (181, '34', 'AA学生', 49, 31, 96.0, 4.8);
INSERT INTO `db_score` VALUES (182, '34', 'AA学生', 50, 15, 65.0, 3.2);
INSERT INTO `db_score` VALUES (183, '34', 'AA学生', 51, 30, 48.0, 2.4);
INSERT INTO `db_score` VALUES (184, '34', 'AA学生', 52, 30, 75.0, 3.8);
INSERT INTO `db_score` VALUES (185, '35', 'BB学生', 48, 25, 95.0, 4.8);
INSERT INTO `db_score` VALUES (186, '35', 'BB学生', 49, 31, 85.0, 4.2);
INSERT INTO `db_score` VALUES (187, '35', 'BB学生', 50, 15, 47.0, 2.4);
INSERT INTO `db_score` VALUES (188, '35', 'BB学生', 51, 30, 85.0, 4.2);
INSERT INTO `db_score` VALUES (189, '35', 'BB学生', 52, 30, 65.0, 3.2);
INSERT INTO `db_score` VALUES (190, '36', 'BB学生', 48, 25, 95.0, 4.8);
INSERT INTO `db_score` VALUES (191, '36', 'BB学生', 49, 31, 75.0, 3.8);
INSERT INTO `db_score` VALUES (192, '36', 'BB学生', 50, 15, 65.0, 3.2);
INSERT INTO `db_score` VALUES (193, '36', 'BB学生', 51, 30, 95.0, 4.8);
INSERT INTO `db_score` VALUES (194, '36', 'BB学生', 52, 30, 47.0, 2.4);

-- ----------------------------
-- Table structure for db_set
-- ----------------------------
DROP TABLE IF EXISTS `db_set`;
CREATE TABLE `db_set`  (
  `set_id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `cou_id` int NOT NULL COMMENT '课程id',
  `maj_id` int NOT NULL COMMENT '班级id',
  PRIMARY KEY (`set_id`) USING BTREE,
  INDEX `db_set_cou`(`cou_id`) USING BTREE,
  INDEX `maj_id`(`maj_id`) USING BTREE,
  CONSTRAINT `db_set_cou` FOREIGN KEY (`cou_id`) REFERENCES `db_course` (`cou_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `db_set_ibfk_1` FOREIGN KEY (`maj_id`) REFERENCES `db_major` (`maj_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of db_set
-- ----------------------------
INSERT INTO `db_set` VALUES (7, 8, 4);
INSERT INTO `db_set` VALUES (8, 9, 4);
INSERT INTO `db_set` VALUES (9, 10, 4);
INSERT INTO `db_set` VALUES (10, 11, 4);
INSERT INTO `db_set` VALUES (11, 12, 4);
INSERT INTO `db_set` VALUES (12, 13, 5);
INSERT INTO `db_set` VALUES (13, 14, 5);
INSERT INTO `db_set` VALUES (14, 15, 5);
INSERT INTO `db_set` VALUES (15, 16, 5);
INSERT INTO `db_set` VALUES (16, 17, 5);
INSERT INTO `db_set` VALUES (17, 18, 6);
INSERT INTO `db_set` VALUES (18, 19, 6);
INSERT INTO `db_set` VALUES (19, 20, 6);
INSERT INTO `db_set` VALUES (20, 21, 6);
INSERT INTO `db_set` VALUES (21, 22, 6);
INSERT INTO `db_set` VALUES (22, 23, 7);
INSERT INTO `db_set` VALUES (23, 24, 7);
INSERT INTO `db_set` VALUES (24, 25, 7);
INSERT INTO `db_set` VALUES (25, 26, 7);
INSERT INTO `db_set` VALUES (26, 27, 7);
INSERT INTO `db_set` VALUES (27, 28, 8);
INSERT INTO `db_set` VALUES (28, 29, 8);
INSERT INTO `db_set` VALUES (29, 30, 8);
INSERT INTO `db_set` VALUES (30, 31, 8);
INSERT INTO `db_set` VALUES (31, 32, 8);
INSERT INTO `db_set` VALUES (32, 33, 9);
INSERT INTO `db_set` VALUES (33, 34, 9);
INSERT INTO `db_set` VALUES (34, 35, 9);
INSERT INTO `db_set` VALUES (35, 36, 9);
INSERT INTO `db_set` VALUES (36, 37, 9);
INSERT INTO `db_set` VALUES (37, 38, 10);
INSERT INTO `db_set` VALUES (38, 39, 10);
INSERT INTO `db_set` VALUES (39, 40, 10);
INSERT INTO `db_set` VALUES (40, 41, 10);
INSERT INTO `db_set` VALUES (41, 42, 10);
INSERT INTO `db_set` VALUES (42, 43, 11);
INSERT INTO `db_set` VALUES (43, 44, 11);
INSERT INTO `db_set` VALUES (44, 45, 11);
INSERT INTO `db_set` VALUES (45, 46, 11);
INSERT INTO `db_set` VALUES (46, 47, 11);
INSERT INTO `db_set` VALUES (47, 48, 12);
INSERT INTO `db_set` VALUES (48, 49, 12);
INSERT INTO `db_set` VALUES (49, 50, 12);
INSERT INTO `db_set` VALUES (50, 51, 12);
INSERT INTO `db_set` VALUES (51, 52, 12);

-- ----------------------------
-- Table structure for db_student
-- ----------------------------
DROP TABLE IF EXISTS `db_student`;
CREATE TABLE `db_student`  (
  `stu_id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `stu_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `stu_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学生姓名',
  `cls_id` int NOT NULL COMMENT '班级id',
  `stu_gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '性别',
  `stu_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `stu_avg` float(5, 1) UNSIGNED NULL DEFAULT NULL COMMENT '平均绩点',
  `stu_address` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生源地',
  PRIMARY KEY (`stu_id`) USING BTREE,
  INDEX `db_stu_cls`(`cls_id`) USING BTREE,
  CONSTRAINT `db_stu_cls` FOREIGN KEY (`cls_id`) REFERENCES `db_class` (`cls_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of db_student
-- ----------------------------
INSERT INTO `db_student` VALUES (2, '2220101', '学生A', 4, '1', '1234565', 4.0, '广东');
INSERT INTO `db_student` VALUES (3, '2220102', '学生B', 4, '0', '123456', 4.1, '广东');
INSERT INTO `db_student` VALUES (4, '2220103', '学生C', 4, '0', '123456', 3.9, '广东');
INSERT INTO `db_student` VALUES (5, '2220104', '学生D', 4, '1', '123456', 4.0, '广东');
INSERT INTO `db_student` VALUES (6, '2220105', '学生E', 4, '1', '123456', 4.1, '广东');
INSERT INTO `db_student` VALUES (7, '2220201', '学生F', 5, '0', '123456', 4.1, '广西');
INSERT INTO `db_student` VALUES (8, '2220202', '学生G', 5, '1', '1234567', 3.5, '广东');
INSERT INTO `db_student` VALUES (9, '2220203', '学生H', 5, '0', '123456', 4.2, '广东');
INSERT INTO `db_student` VALUES (10, '2220204', '学生I', 5, '0', '123456', 4.0, '福建');
INSERT INTO `db_student` VALUES (11, '2220205', '学生J', 5, '0', '123456', 3.2, '福建');
INSERT INTO `db_student` VALUES (12, '2220301', '学生AA', 6, '0', '123456', 3.6, '广东');
INSERT INTO `db_student` VALUES (13, '2220302', '学生BB', 6, '0', '123456', 4.1, '广东');
INSERT INTO `db_student` VALUES (14, '2220303', '学生CC', 6, '0', '123456', 3.6, '广东');
INSERT INTO `db_student` VALUES (15, '2220304', '学生DD', 6, '1', '123456', 3.1, '广东');
INSERT INTO `db_student` VALUES (16, '2220305', '学生EE', 6, '1', '123456', 3.9, '广东');
INSERT INTO `db_student` VALUES (17, '2220406', '学生FF', 7, '1', '123456', 3.6, '广东');
INSERT INTO `db_student` VALUES (18, '2220407', '学生GG', 7, '0', '123456', 3.8, '广东');
INSERT INTO `db_student` VALUES (19, '2220408', '学生HH', 7, '2', '123456', 3.5, '福建');
INSERT INTO `db_student` VALUES (20, '2220409', '学生II', 7, '0', '123456', 3.9, '广西');
INSERT INTO `db_student` VALUES (21, '2220410', '学生JJ', 7, '1', '123456', 3.8, '山东');
INSERT INTO `db_student` VALUES (22, '2220501', '学生AAA', 8, '0', '123456', 3.4, '广东');
INSERT INTO `db_student` VALUES (23, '2220502', '学生BBB', 8, '1', '122345', 3.9, '广东');
INSERT INTO `db_student` VALUES (24, '2220503', '学生CCC', 8, '0', '123456', 3.6, '广东');
INSERT INTO `db_student` VALUES (25, '2220601', '学生A', 9, '1', '123456', 3.6, '广东');
INSERT INTO `db_student` VALUES (26, '2220602', '学生B', 9, '0', '123456', 3.9, '广东');
INSERT INTO `db_student` VALUES (27, '2220603', '学生C', 9, '1', '123456', 3.1, '广东');
INSERT INTO `db_student` VALUES (28, '2220701', 'A学生', 10, '1', '123456', 3.4, '广东');
INSERT INTO `db_student` VALUES (29, '2220702', 'B学生', 10, '0', '123456', 3.9, '广东');
INSERT INTO `db_student` VALUES (30, '2220703', 'C学生', 10, '1', '123456', 3.9, '广东');
INSERT INTO `db_student` VALUES (31, '2220801', 'D学生', 11, '0', '123456', 4.3, '广东');
INSERT INTO `db_student` VALUES (32, '2220802', 'E学生', 11, '1', '123456', 3.4, '广东');
INSERT INTO `db_student` VALUES (33, '2220803', 'F学生', 11, '0', '123456', 2.7, '广东');
INSERT INTO `db_student` VALUES (34, '2220901', 'AA学生', 12, '1', '123456', 3.7, '广东');
INSERT INTO `db_student` VALUES (35, '2220902', 'BB学生', 12, '0', '123456', 3.8, '广东');
INSERT INTO `db_student` VALUES (36, '2220903', 'BB学生', 12, '1', '123456', 3.8, '广东');

-- ----------------------------
-- Table structure for db_teacher
-- ----------------------------
DROP TABLE IF EXISTS `db_teacher`;
CREATE TABLE `db_teacher`  (
  `tea_id` int NOT NULL AUTO_INCREMENT COMMENT '教师id',
  `tea_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '教师名称',
  `tea_gender` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '性别',
  `coll_id` int NOT NULL COMMENT '学院id',
  PRIMARY KEY (`tea_id`) USING BTREE,
  INDEX `db_tea_coll`(`coll_id`) USING BTREE,
  CONSTRAINT `db_tea_coll` FOREIGN KEY (`coll_id`) REFERENCES `db_college` (`coll_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_teacher
-- ----------------------------
INSERT INTO `db_teacher` VALUES (9, '教师A', '0', 5);
INSERT INTO `db_teacher` VALUES (10, '教师B', '1', 5);
INSERT INTO `db_teacher` VALUES (11, '教师C', '0', 5);
INSERT INTO `db_teacher` VALUES (12, '教师D', '0', 5);
INSERT INTO `db_teacher` VALUES (13, '教师E', '1', 5);
INSERT INTO `db_teacher` VALUES (14, '教师F', '1', 6);
INSERT INTO `db_teacher` VALUES (15, '教师G', '1', 6);
INSERT INTO `db_teacher` VALUES (16, '教师H', '0', 6);
INSERT INTO `db_teacher` VALUES (17, '教师I', '1', 6);
INSERT INTO `db_teacher` VALUES (18, '教师J', '0', 6);
INSERT INTO `db_teacher` VALUES (19, '教师K', '0', 7);
INSERT INTO `db_teacher` VALUES (20, '教师L', '1', 7);
INSERT INTO `db_teacher` VALUES (21, '教师M', '0', 7);
INSERT INTO `db_teacher` VALUES (22, '教师N', '1', 7);
INSERT INTO `db_teacher` VALUES (23, '教师O', '1', 7);
INSERT INTO `db_teacher` VALUES (24, '教师P', '1', 8);
INSERT INTO `db_teacher` VALUES (25, '教师Q', '0', 8);
INSERT INTO `db_teacher` VALUES (26, '教师R', '0', 8);
INSERT INTO `db_teacher` VALUES (27, '教师S', '1', 8);
INSERT INTO `db_teacher` VALUES (28, '教师T', '0', 8);
INSERT INTO `db_teacher` VALUES (30, '教师U', '1', 9);
INSERT INTO `db_teacher` VALUES (31, '教师V', '0', 9);
INSERT INTO `db_teacher` VALUES (32, '教师W', '1', 9);
INSERT INTO `db_teacher` VALUES (33, '教师X', '1', 9);
INSERT INTO `db_teacher` VALUES (34, '教师Y', '0', 9);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'db_ college', '学院管理', NULL, NULL, 'dbcollege', 'crud', 'com.ruoyi.student', 'student', 'college', '学院', 'AABB', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2023-09-09 14:34:24', '', '2023-09-13 11:32:47', NULL);
INSERT INTO `gen_table` VALUES (2, 'db_major', '专业管理', NULL, NULL, 'DbMajor', 'crud', 'com.ruoyi.student', 'student', 'major', '专业管理', 'AABB', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2023-09-09 15:06:29', '', '2023-09-09 15:07:45', NULL);
INSERT INTO `gen_table` VALUES (3, 'db_teacher', '教师管理', NULL, NULL, 'DbTeacher', 'crud', 'com.ruoyi.student', 'student', 'teacher', '教师管理', 'AABB', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2023-09-09 17:10:02', '', '2023-09-09 17:18:29', NULL);
INSERT INTO `gen_table` VALUES (4, 'db_course', '课程管理', NULL, NULL, 'DbCourse', 'crud', 'com.ruoyi.student', 'student', 'course', '课程管理', 'AABB', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2023-09-09 20:52:03', '', '2023-09-11 10:26:10', NULL);
INSERT INTO `gen_table` VALUES (5, 'db_class', '班级管理', NULL, NULL, 'DbClass', 'crud', 'com.ruoyi.student', 'student', 'class', '班级管理', 'AABB', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2023-09-09 21:01:03', '', '2023-09-09 21:02:24', NULL);
INSERT INTO `gen_table` VALUES (6, 'db_set', '开设管理', NULL, NULL, 'DbSet', 'crud', 'com.ruoyi.student', 'student', 'set', '开发管理', 'AABB', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2023-09-09 21:11:56', '', '2023-09-09 21:12:58', NULL);
INSERT INTO `gen_table` VALUES (7, 'db_student', '学生管理', NULL, NULL, 'DbStudent', 'crud', 'com.ruoyi.student', 'student', 'student', '学生管理', 'AABB', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2023-09-10 14:35:38', '', '2023-09-13 15:34:55', NULL);
INSERT INTO `gen_table` VALUES (8, 'db_score', '成绩管理', NULL, NULL, 'DbScore', 'crud', 'com.ruoyi.student', 'student', 'score', '成绩管理', 'AABB', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2023-09-10 15:08:37', '', '2023-09-10 16:06:56', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'coll_id', '学院id', 'int', 'Long', 'collId', '1', '1', '1', '0', '0', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-09 14:34:24', '', '2023-09-13 11:32:47');
INSERT INTO `gen_table_column` VALUES (2, 1, 'coll_name', '学院名称', 'varchar(20)', 'String', 'collName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-09 14:34:24', '', '2023-09-13 11:32:47');
INSERT INTO `gen_table_column` VALUES (3, 2, 'maj_id', '专业id', 'int', 'Long', 'majId', '1', '1', NULL, '0', NULL, '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-09 15:06:29', '', '2023-09-09 15:07:45');
INSERT INTO `gen_table_column` VALUES (4, 2, 'maj_name', '专业名称', 'varchar(20)', 'String', 'majName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-09 15:06:29', '', '2023-09-09 15:07:45');
INSERT INTO `gen_table_column` VALUES (5, 2, 'coll_id', '学院id', 'int', 'Long', 'collId', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-09-09 15:06:29', '', '2023-09-09 15:07:45');
INSERT INTO `gen_table_column` VALUES (6, 3, 'tea_id', '教师id', 'int', 'Long', 'teaId', '1', '1', NULL, '0', NULL, '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-09 17:10:02', '', '2023-09-09 17:18:29');
INSERT INTO `gen_table_column` VALUES (7, 3, 'tea_name', '教师名称', 'varchar(10)', 'String', 'teaName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-09 17:10:02', '', '2023-09-09 17:18:29');
INSERT INTO `gen_table_column` VALUES (8, 3, 'tea_gender', '性别', 'char(1)', 'String', 'teaGender', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'sys_user_sex', 3, 'admin', '2023-09-09 17:10:02', '', '2023-09-09 17:18:29');
INSERT INTO `gen_table_column` VALUES (9, 3, 'coll_id', '学院id', 'int', 'Long', 'collId', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-09-09 17:10:02', '', '2023-09-09 17:18:29');
INSERT INTO `gen_table_column` VALUES (10, 4, 'cou_id', '课程id', 'int', 'Long', 'couId', '1', '1', NULL, '0', NULL, '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-09 20:52:03', '', '2023-09-11 10:26:10');
INSERT INTO `gen_table_column` VALUES (11, 4, 'cou_name', '课程名称', 'varchar(20)', 'String', 'couName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-09 20:52:03', '', '2023-09-11 10:26:10');
INSERT INTO `gen_table_column` VALUES (12, 4, 'tea_id', '教师id', 'int', 'String', 'teaName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-09-09 20:52:03', '', '2023-09-11 10:26:10');
INSERT INTO `gen_table_column` VALUES (13, 4, 'cou_credit', '学分', 'float(5,1)', 'BigDecimal', 'couCredit', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-09-09 20:52:03', '', '2023-09-11 10:26:10');
INSERT INTO `gen_table_column` VALUES (14, 4, 'cou_hour', '学时', 'int', 'Long', 'couHour', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-09-09 20:52:03', '', '2023-09-11 10:26:10');
INSERT INTO `gen_table_column` VALUES (15, 4, 'cou_way', '考核方式', 'varchar(10)', 'String', 'couWay', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'sys_exam_way', 6, 'admin', '2023-09-09 20:52:03', '', '2023-09-11 10:26:10');
INSERT INTO `gen_table_column` VALUES (16, 5, 'cls_id', '班级id', 'int', 'Long', 'clsId', '1', '1', NULL, '0', NULL, '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-09 21:01:03', '', '2023-09-09 21:02:24');
INSERT INTO `gen_table_column` VALUES (17, 5, 'cls_name', '班级名称', 'varchar(20)', 'String', 'clsName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-09 21:01:03', '', '2023-09-09 21:02:24');
INSERT INTO `gen_table_column` VALUES (18, 5, 'maj_id', '专业id', 'int', 'Long', 'majId', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-09-09 21:01:03', '', '2023-09-09 21:02:24');
INSERT INTO `gen_table_column` VALUES (19, 6, 'set_id', '编号', 'int', 'Long', 'setId', '1', '1', NULL, '0', NULL, '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-09 21:11:56', '', '2023-09-09 21:12:58');
INSERT INTO `gen_table_column` VALUES (20, 6, 'cou_id', '课程id', 'int', 'Long', 'couId', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-09 21:11:56', '', '2023-09-09 21:12:58');
INSERT INTO `gen_table_column` VALUES (21, 6, 'maj_id', '班级id', 'int', 'Long', 'majId', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-09-09 21:11:56', '', '2023-09-09 21:12:58');
INSERT INTO `gen_table_column` VALUES (22, 7, 'stu_number', '学号', 'varchar(15)', 'String', 'stuNumber', '1', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-09-10 14:35:38', '', '2023-09-13 15:34:55');
INSERT INTO `gen_table_column` VALUES (23, 7, 'stu_name', '学生姓名', 'varchar(20)', 'String', 'stuName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-09-10 14:35:38', '', '2023-09-13 15:34:55');
INSERT INTO `gen_table_column` VALUES (24, 7, 'cls_id', '班级id', 'int', 'String', 'clsName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-09-10 14:35:38', '', '2023-09-13 15:34:55');
INSERT INTO `gen_table_column` VALUES (25, 7, 'stu_gender', '性别', 'char(1)', 'String', 'stuGender', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'sys_user_sex', 5, 'admin', '2023-09-10 14:35:38', '', '2023-09-13 15:34:55');
INSERT INTO `gen_table_column` VALUES (26, 7, 'stu_phone', '电话', 'varchar(20)', 'String', 'stuPhone', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-09-10 14:35:38', '', '2023-09-13 15:34:55');
INSERT INTO `gen_table_column` VALUES (27, 7, 'stu_avg', '平均绩点', 'float(5,1) unsigned', 'BigDecimal', 'stuAvg', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-09-10 14:35:38', '', '2023-09-13 15:34:55');
INSERT INTO `gen_table_column` VALUES (28, 7, 'stu_address', '生源地', 'varchar(20)', 'String', 'stuAddress', '0', '0', '0', '1', '1', '1', '0', 'LIKE', 'input', '', 8, 'admin', '2023-09-10 14:35:38', '', '2023-09-13 15:34:55');
INSERT INTO `gen_table_column` VALUES (29, 8, 'sco_id', '编号', 'int', 'Long', 'scoId', '1', '1', NULL, '0', NULL, '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-10 15:08:37', '', '2023-09-10 16:06:56');
INSERT INTO `gen_table_column` VALUES (30, 8, 'stu_number', '学号', 'varchar(15)', 'String', 'stuNumber', '0', '0', '0', '0', '0', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-09-10 15:08:37', '', '2023-09-10 16:06:56');
INSERT INTO `gen_table_column` VALUES (31, 8, 'cou_id', '课程编号', 'int', 'Long', 'couId', '0', '0', '0', '0', '0', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-09-10 15:08:37', '', '2023-09-10 16:06:56');
INSERT INTO `gen_table_column` VALUES (32, 8, 'tea_id', '教师编号', 'int', 'Long', 'teaId', '0', '0', '0', '0', '0', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-09-10 15:08:37', '', '2023-09-10 16:06:56');
INSERT INTO `gen_table_column` VALUES (33, 8, 'score', '成绩', 'float(5,1)', 'BigDecimal', 'score', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-09-10 15:08:37', '', '2023-09-10 16:06:56');
INSERT INTO `gen_table_column` VALUES (34, 8, 'GPA', '绩点', 'float(5,1)', 'BigDecimal', 'gpa', '0', '0', '0', '0', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-09-10 15:08:37', '', '2023-09-10 16:06:56');
INSERT INTO `gen_table_column` VALUES (35, 8, 'stu_name', '学生姓名', 'varchar(10)', 'String', 'stuName', '0', '0', '0', '0', '0', '1', '1', 'LIKE', 'input', '', 3, '', '2023-09-10 15:19:02', '', '2023-09-10 16:06:56');
INSERT INTO `gen_table_column` VALUES (36, 7, 'stu_id', '编号', 'int', 'Long', 'stuId', '1', '1', NULL, '0', NULL, '1', NULL, 'EQ', 'input', '', 1, '', '2023-09-13 14:26:21', '', '2023-09-13 15:34:55');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-09-08 21:17:50', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-09-08 21:17:50', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-09-08 21:17:50', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'N', 'admin', '2023-09-08 21:17:50', 'admin', '2023-09-13 17:15:08', '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-09-08 21:17:50', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-09-08 21:17:50', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-08 21:17:43', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-08 21:17:43', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-08 21:17:43', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-08 21:17:43', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-08 21:17:43', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-08 21:17:43', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-08 21:17:43', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-08 21:17:43', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-08 21:17:43', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-08 21:17:43', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (101, 1, '考试', '1', 'sys_exam_way', NULL, NULL, 'Y', '0', 'admin', NULL, '', NULL, '考试');
INSERT INTO `sys_dict_data` VALUES (102, 2, '考查', '2', 'sys_exam_way', NULL, NULL, 'N', '0', 'admin', NULL, '', NULL, '考查');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-09-08 21:17:49', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '考核方式', 'sys_exam_way', '0', 'admin', '2023-09-11 10:19:02', '', NULL, '课程考核方式');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-09-08 21:17:51', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-09-08 21:17:51', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-09-08 21:17:51', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-08 21:30:21');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-09 14:34:06');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-09 16:00:25');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-09 16:37:47');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-09 17:58:38');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-09 20:49:28');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-10 10:43:22');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-10 12:00:33');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-10 13:16:44');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-10 13:50:43');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-11 08:38:04');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-11 09:19:38');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-11 10:11:45');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-11 14:29:50');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-11 16:40:17');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-11 17:58:22');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-11 18:55:56');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 08:46:26');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-12 09:17:12');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 09:17:17');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 11:30:00');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 14:24:30');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 16:19:31');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 18:02:04');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 18:48:03');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 19:54:38');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 21:58:05');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 22:13:25');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 23:25:22');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 23:30:31');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 08:48:25');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 14:22:54');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 17:06:53');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-13 17:13:17');
INSERT INTO `sys_logininfor` VALUES (134, '老师A', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-09-13 17:13:26');
INSERT INTO `sys_logininfor` VALUES (135, '老师A', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-09-13 17:13:26');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-13 17:13:43');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-13 17:13:48');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 17:13:53');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-13 17:15:25');
INSERT INTO `sys_logininfor` VALUES (140, 'studentA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-09-13 17:15:36');
INSERT INTO `sys_logininfor` VALUES (141, 'studentA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-09-13 17:15:44');
INSERT INTO `sys_logininfor` VALUES (142, 'studentA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 17:17:40');
INSERT INTO `sys_logininfor` VALUES (143, 'studentA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-13 17:18:35');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-09-13 17:18:44');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-09-13 17:18:44');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-09-13 17:18:53');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-09-13 17:18:53');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误3次', '2023-09-13 17:19:10');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-09-13 17:19:10');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-09-13 17:19:20');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误4次', '2023-09-13 17:19:20');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误5次', '2023-09-13 17:19:31');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-09-13 17:19:31');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2023-09-13 17:20:54');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2023-09-13 17:20:54');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-13 17:21:03');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-13 17:21:08');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-13 17:21:13');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2023-09-13 17:23:27');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2023-09-13 17:23:27');
INSERT INTO `sys_logininfor` VALUES (161, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-09-13 17:23:56');
INSERT INTO `sys_logininfor` VALUES (162, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-09-13 17:23:56');
INSERT INTO `sys_logininfor` VALUES (163, 'teacherA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 17:24:13');
INSERT INTO `sys_logininfor` VALUES (164, 'teacherA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-13 17:27:18');
INSERT INTO `sys_logininfor` VALUES (165, 'studentA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-13 17:27:33');
INSERT INTO `sys_logininfor` VALUES (166, 'studentA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-13 17:27:37');
INSERT INTO `sys_logininfor` VALUES (167, 'studentA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 17:27:40');
INSERT INTO `sys_logininfor` VALUES (168, 'studentA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-13 17:27:51');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2023-09-13 17:28:51');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2023-09-13 17:28:51');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 17:29:54');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 19:57:09');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-13 20:06:23');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 20:06:29');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-13 20:50:04');
INSERT INTO `sys_logininfor` VALUES (176, 'teacherA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-09-13 20:50:27');
INSERT INTO `sys_logininfor` VALUES (177, 'teacherA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-09-13 20:50:27');
INSERT INTO `sys_logininfor` VALUES (178, 'teacherA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-13 20:50:34');
INSERT INTO `sys_logininfor` VALUES (179, 'teacherA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-09-13 20:50:42');
INSERT INTO `sys_logininfor` VALUES (180, 'teacherA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-09-13 20:50:42');
INSERT INTO `sys_logininfor` VALUES (181, 'teacherA', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 20:51:02');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 22:18:18');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-14 08:44:46');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2055 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-09-08 21:17:46', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '1', '0', '', 'monitor', 'admin', '2023-09-08 21:17:46', 'admin', '2023-09-12 08:47:04', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-09-08 21:17:46', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '1', '0', '', 'guide', 'admin', '2023-09-08 21:17:46', 'admin', '2023-09-12 08:46:46', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-09-08 21:17:46', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-09-08 21:17:46', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-09-08 21:17:46', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-09-08 21:17:46', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-09-08 21:17:46', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-09-08 21:17:46', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-09-08 21:17:46', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-09-08 21:17:46', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-09-08 21:17:46', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-09-08 21:17:46', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-09-08 21:17:46', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-09-08 21:17:46', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-09-08 21:17:46', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-09-08 21:17:46', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-09-08 21:17:46', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-09-08 21:17:46', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-09-08 21:17:46', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-09-08 21:17:46', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-09-08 21:17:46', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-09-08 21:17:46', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-09-08 21:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '学生管理', 0, 5, 'student', NULL, NULL, 1, 0, 'M', '0', '0', NULL, '404', 'admin', '2023-09-08 21:31:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2001, '学院管理', 2000, 1, 'college', 'student/college/index', NULL, 1, 0, 'C', '0', '0', 'student:college:list', 'edit', 'admin', '2023-09-09 14:37:02', 'admin', '2023-09-09 14:44:01', '学院菜单');
INSERT INTO `sys_menu` VALUES (2002, '学院查询', 2001, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:college:query', '#', 'admin', '2023-09-09 14:37:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '学院新增', 2001, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:college:add', '#', 'admin', '2023-09-09 14:37:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '学院修改', 2001, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:college:edit', '#', 'admin', '2023-09-09 14:37:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '学院删除', 2001, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:college:remove', '#', 'admin', '2023-09-09 14:37:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '学院导出', 2001, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:college:export', '#', 'admin', '2023-09-09 14:37:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '专业管理', 2000, 1, 'major', 'student/major/index', NULL, 1, 0, 'C', '0', '0', 'student:major:list', 'edit', 'admin', '2023-09-09 15:20:35', 'admin', '2023-09-09 16:39:12', '专业管理菜单');
INSERT INTO `sys_menu` VALUES (2008, '专业管理查询', 2007, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:major:query', '#', 'admin', '2023-09-09 15:20:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '专业管理新增', 2007, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:major:add', '#', 'admin', '2023-09-09 15:20:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '专业管理修改', 2007, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:major:edit', '#', 'admin', '2023-09-09 15:20:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '专业管理删除', 2007, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:major:remove', '#', 'admin', '2023-09-09 15:20:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '专业管理导出', 2007, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:major:export', '#', 'admin', '2023-09-09 15:20:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '教师管理', 2000, 1, 'teacher', 'student/teacher/index', NULL, 1, 0, 'C', '0', '0', 'student:teacher:list', 'edit', 'admin', '2023-09-09 17:19:40', 'admin', '2023-09-09 20:50:26', '教师管理菜单');
INSERT INTO `sys_menu` VALUES (2020, '教师管理查询', 2019, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:teacher:query', '#', 'admin', '2023-09-09 17:19:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '教师管理新增', 2019, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:teacher:add', '#', 'admin', '2023-09-09 17:19:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '教师管理修改', 2019, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:teacher:edit', '#', 'admin', '2023-09-09 17:19:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '教师管理删除', 2019, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:teacher:remove', '#', 'admin', '2023-09-09 17:19:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '教师管理导出', 2019, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:teacher:export', '#', 'admin', '2023-09-09 17:19:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '课程管理', 2000, 1, 'course', 'student/course/index', NULL, 1, 0, 'C', '0', '0', 'student:course:list', 'edit', 'admin', '2023-09-09 20:54:47', 'admin', '2023-09-09 21:16:46', '课程管理菜单');
INSERT INTO `sys_menu` VALUES (2026, '课程管理查询', 2025, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:course:query', '#', 'admin', '2023-09-09 20:54:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '课程管理新增', 2025, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:course:add', '#', 'admin', '2023-09-09 20:54:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '课程管理修改', 2025, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:course:edit', '#', 'admin', '2023-09-09 20:54:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '课程管理删除', 2025, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:course:remove', '#', 'admin', '2023-09-09 20:54:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '课程管理导出', 2025, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:course:export', '#', 'admin', '2023-09-09 20:54:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '班级管理', 2000, 1, 'class', 'student/class/index', NULL, 1, 0, 'C', '0', '0', 'student:class:list', 'edit', 'admin', '2023-09-09 21:03:15', 'admin', '2023-09-09 21:16:51', '班级管理菜单');
INSERT INTO `sys_menu` VALUES (2032, '班级管理查询', 2031, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:class:query', '#', 'admin', '2023-09-09 21:03:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '班级管理新增', 2031, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:class:add', '#', 'admin', '2023-09-09 21:03:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '班级管理修改', 2031, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:class:edit', '#', 'admin', '2023-09-09 21:03:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '班级管理删除', 2031, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:class:remove', '#', 'admin', '2023-09-09 21:03:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '班级管理导出', 2031, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:class:export', '#', 'admin', '2023-09-09 21:03:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '开设情况', 2000, 1, 'set', 'student/set/index', NULL, 1, 0, 'C', '0', '0', 'student:set:list', 'edit', 'admin', '2023-09-09 21:14:11', 'admin', '2023-09-09 21:16:57', '开发管理菜单');
INSERT INTO `sys_menu` VALUES (2038, '开发管理查询', 2037, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:set:query', '#', 'admin', '2023-09-09 21:14:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '开发管理新增', 2037, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:set:add', '#', 'admin', '2023-09-09 21:14:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '开发管理修改', 2037, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:set:edit', '#', 'admin', '2023-09-09 21:14:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '开发管理删除', 2037, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:set:remove', '#', 'admin', '2023-09-09 21:14:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '开发管理导出', 2037, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:set:export', '#', 'admin', '2023-09-09 21:14:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '学生管理', 2000, 1, 'student', 'student/student/index', NULL, 1, 0, 'C', '0', '0', 'student:student:list', 'edit', 'admin', '2023-09-10 14:42:50', 'admin', '2023-09-10 15:07:35', '学生管理菜单');
INSERT INTO `sys_menu` VALUES (2044, '学生管理查询', 2043, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:student:query', '#', 'admin', '2023-09-10 14:42:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '学生管理新增', 2043, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:student:add', '#', 'admin', '2023-09-10 14:42:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '学生管理修改', 2043, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:student:edit', '#', 'admin', '2023-09-10 14:42:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '学生管理删除', 2043, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:student:remove', '#', 'admin', '2023-09-10 14:42:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '学生管理导出', 2043, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:student:export', '#', 'admin', '2023-09-10 14:42:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '成绩管理', 2000, 1, 'score', 'student/score/index', NULL, 1, 0, 'C', '0', '0', 'student:score:list', 'edit', 'admin', '2023-09-10 15:39:29', 'admin', '2023-09-10 16:09:25', '成绩管理菜单');
INSERT INTO `sys_menu` VALUES (2050, '成绩管理查询', 2049, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:score:query', '#', 'admin', '2023-09-10 15:39:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '成绩管理新增', 2049, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:score:add', '#', 'admin', '2023-09-10 15:39:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '成绩管理修改', 2049, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:score:edit', '#', 'admin', '2023-09-10 15:39:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '成绩管理删除', 2049, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:score:remove', '#', 'admin', '2023-09-10 15:39:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '成绩管理导出', 2049, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'student:score:export', '#', 'admin', '2023-09-10 15:39:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '成绩分析', 2049, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'student:score:getAvgScore', '#', 'admin', '2023-09-13 20:45:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '学院数量', 2001, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'student:college:selectcount', '#', 'admin', '2023-09-13 20:46:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '学生数量 ', 2043, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'student:student:selectcount', '#', 'admin', '2023-09-13 20:47:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '教师数量', 2019, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'student:teacher:selectcount', '#', 'admin', '2023-09-13 20:48:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '专业数量', 2007, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'student:major:selectcount', '#', 'admin', '2023-09-13 20:48:55', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-09-08 21:17:52', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-09-08 21:17:52', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 267 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"404\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学生管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"student\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-08 21:31:27', 159);
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"db_ college\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 14:34:24', 117);
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"college\",\"className\":\"dbcollege\",\"columns\":[{\"capJavaField\":\"CollId\",\"columnComment\":\"学院id\",\"columnId\":1,\"columnName\":\"coll_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 14:34:24\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"collId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CollName\",\"columnComment\":\"学院名称\",\"columnId\":2,\"columnName\":\"coll_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 14:34:24\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"collName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"AABB\",\"functionName\":\"学院\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"student\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.ruoyi.student\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"学院管理\",\"tableId\":1,\"tableName\":\"db_ college\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 14:36:21', 95);
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_ college\"}', NULL, 0, NULL, '2023-09-09 14:36:24', 255);
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"student/college/index\",\"createTime\":\"2023-09-09 14:37:02\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"学院管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"college\",\"perms\":\"student:college:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 14:44:01', 150);
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"db_major\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 15:06:29', 130);
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"major\",\"className\":\"DbMajor\",\"columns\":[{\"capJavaField\":\"MajId\",\"columnComment\":\"专业id\",\"columnId\":3,\"columnName\":\"maj_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 15:06:29\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"majId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MajName\",\"columnComment\":\"专业名称\",\"columnId\":4,\"columnName\":\"maj_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 15:06:29\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"majName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CollId\",\"columnComment\":\"学院id\",\"columnId\":5,\"columnName\":\"coll_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 15:06:29\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"collId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"AABB\",\"functionName\":\"专业管理\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"student\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.ruoyi.student\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"专业管理\",\"tableId\":2,\"tableName\":\"db_major\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 15:07:45', 198);
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_major\"}', NULL, 0, NULL, '2023-09-09 15:07:49', 144);
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"student/major/index\",\"createTime\":\"2023-09-09 15:20:35\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"专业管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"major\",\"perms\":\"student:major:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 16:39:12', 105);
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"db_teacher\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 17:10:02', 281);
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"teacher\",\"className\":\"DbTeacher\",\"columns\":[{\"capJavaField\":\"TeaId\",\"columnComment\":\"教师id\",\"columnId\":6,\"columnName\":\"tea_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 17:10:02\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"teaId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TeaName\",\"columnComment\":\"教师名称\",\"columnId\":7,\"columnName\":\"tea_name\",\"columnType\":\"varchar(10)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 17:10:02\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teaName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TeaGender\",\"columnComment\":\"性别\",\"columnId\":8,\"columnName\":\"tea_gender\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 17:10:02\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teaGender\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CollId\",\"columnComment\":\"学院id\",\"columnId\":9,\"columnName\":\"coll_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 17:10:02\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 17:12:47', 130);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_teacher\"}', NULL, 0, NULL, '2023-09-09 17:12:51', 236);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"teacher\",\"className\":\"DbTeacher\",\"columns\":[{\"capJavaField\":\"TeaId\",\"columnComment\":\"教师id\",\"columnId\":6,\"columnName\":\"tea_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 17:10:02\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"teaId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2023-09-09 17:12:47\",\"usableColumn\":false},{\"capJavaField\":\"TeaName\",\"columnComment\":\"教师名称\",\"columnId\":7,\"columnName\":\"tea_name\",\"columnType\":\"varchar(10)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 17:10:02\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teaName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2023-09-09 17:12:47\",\"usableColumn\":false},{\"capJavaField\":\"TeaGender\",\"columnComment\":\"性别\",\"columnId\":8,\"columnName\":\"tea_gender\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 17:10:02\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teaGender\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2023-09-09 17:12:47\",\"usableColumn\":false},{\"capJavaField\":\"CollId\",\"columnComment\":\"学院id\",\"columnId\":9,\"columnName\":\"coll_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 17:10:02\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 17:18:29', 212);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_teacher\"}', NULL, 0, NULL, '2023-09-09 17:18:33', 133);
INSERT INTO `sys_oper_log` VALUES (114, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":1,\"params\":{},\"teaGender\":\"2\",\"teaId\":7,\"teaName\":\"许培新\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 18:28:14', 238);
INSERT INTO `sys_oper_log` VALUES (115, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":2,\"params\":{},\"teaGender\":\"0\",\"teaId\":8,\"teaName\":\"陈中\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 18:35:52', 234);
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"student/teacher/index\",\"createTime\":\"2023-09-09 17:19:40\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"教师管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"teacher\",\"perms\":\"student:teacher:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 20:50:26', 81);
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"db_course\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 20:52:04', 146);
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"DbCourse\",\"columns\":[{\"capJavaField\":\"CouId\",\"columnComment\":\"课程id\",\"columnId\":10,\"columnName\":\"cou_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 20:52:03\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"couId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CouName\",\"columnComment\":\"课程名称\",\"columnId\":11,\"columnName\":\"cou_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 20:52:03\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"couName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TeaId\",\"columnComment\":\"教师id\",\"columnId\":12,\"columnName\":\"tea_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 20:52:03\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teaId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CouCredit\",\"columnComment\":\"学分\",\"columnId\":13,\"columnName\":\"cou_credit\",\"columnType\":\"float(5,1)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 20:52:03\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"couCredit\",\"j', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 20:53:39', 179);
INSERT INTO `sys_oper_log` VALUES (119, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_course\"}', NULL, 0, NULL, '2023-09-09 20:53:44', 294);
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"db_class\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 21:01:03', 264);
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"class\",\"className\":\"DbClass\",\"columns\":[{\"capJavaField\":\"ClsId\",\"columnComment\":\"班级id\",\"columnId\":16,\"columnName\":\"cls_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 21:01:03\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"clsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ClsName\",\"columnComment\":\"班级名称\",\"columnId\":17,\"columnName\":\"cls_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 21:01:03\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"clsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MajId\",\"columnComment\":\"专业id\",\"columnId\":18,\"columnName\":\"maj_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 21:01:03\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"majId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"AABB\",\"functionName\":\"班级管理\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"student\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.ruoyi.student\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"班级管理\",\"tableId\":5,\"tableName\":\"db_class\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 21:02:24', 197);
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_class\"}', NULL, 0, NULL, '2023-09-09 21:02:27', 160);
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"db_set\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 21:11:56', 201);
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"set\",\"className\":\"DbSet\",\"columns\":[{\"capJavaField\":\"SetId\",\"columnComment\":\"编号\",\"columnId\":19,\"columnName\":\"set_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 21:11:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"setId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CouId\",\"columnComment\":\"课程id\",\"columnId\":20,\"columnName\":\"cou_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 21:11:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"couId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MajId\",\"columnComment\":\"班级id\",\"columnId\":21,\"columnName\":\"maj_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 21:11:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"majId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"AABB\",\"functionName\":\"开发管理\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"student\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.ruoyi.student\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"开设管理\",\"tableId\":6,\"tableName\":\"db_set\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 21:12:58', 170);
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_set\"}', NULL, 0, NULL, '2023-09-09 21:13:01', 181);
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_set\"}', NULL, 0, NULL, '2023-09-09 21:13:27', 35);
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"student/set/index\",\"createTime\":\"2023-09-09 21:14:11\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2037,\"menuName\":\"开设情况\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"set\",\"perms\":\"student:set:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 21:16:37', 99);
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"student/course/index\",\"createTime\":\"2023-09-09 20:54:47\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2025,\"menuName\":\"课程管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"course\",\"perms\":\"student:course:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 21:16:46', 233);
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"student/class/index\",\"createTime\":\"2023-09-09 21:03:15\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2031,\"menuName\":\"班级管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"class\",\"perms\":\"student:class:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 21:16:51', 111);
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"student/set/index\",\"createTime\":\"2023-09-09 21:14:11\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2037,\"menuName\":\"开设情况\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"set\",\"perms\":\"student:set:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-09 21:16:57', 140);
INSERT INTO `sys_oper_log` VALUES (131, '学院', 1, 'com.ruoyi.student.controller.dbcollegeController.add()', 'POST', 1, 'admin', NULL, '/student/college', '127.0.0.1', '内网IP', '{\"collId\":4,\"collName\":\"艺术设计学院\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-10 10:48:52', 131);
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"db_student\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-10 14:35:38', 281);
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"student\",\"className\":\"DbStudent\",\"columns\":[{\"capJavaField\":\"StuNumber\",\"columnComment\":\"学号\",\"columnId\":22,\"columnName\":\"stu_number\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StuName\",\"columnComment\":\"学生姓名\",\"columnId\":23,\"columnName\":\"stu_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ClsId\",\"columnComment\":\"班级id\",\"columnId\":24,\"columnName\":\"cls_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"clsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StuGender\",\"columnComment\":\"性别\",\"columnId\":25,\"columnName\":\"stu_gender\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-10 14:41:03', 103);
INSERT INTO `sys_oper_log` VALUES (134, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_student\"}', NULL, 0, NULL, '2023-09-10 14:41:10', 393);
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"student/student/index\",\"createTime\":\"2023-09-10 14:42:50\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2043,\"menuName\":\"学生管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"student\",\"perms\":\"student:student:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-10 15:07:35', 163);
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"db_score\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-10 15:08:37', 204);
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/db_score', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-10 15:19:02', 161);
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"score\",\"className\":\"DbScore\",\"columns\":[{\"capJavaField\":\"ScoId\",\"columnComment\":\"编号\",\"columnId\":29,\"columnName\":\"sco_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"scoId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:19:02\",\"usableColumn\":false},{\"capJavaField\":\"StuNumber\",\"columnComment\":\"学号\",\"columnId\":30,\"columnName\":\"stu_number\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:19:02\",\"usableColumn\":false},{\"capJavaField\":\"StuName\",\"columnComment\":\"学生姓名\",\"columnId\":35,\"columnName\":\"stu_name\",\"columnType\":\"varchar(10)\",\"createBy\":\"\",\"createTime\":\"2023-09-10 15:19:02\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CouId\",\"columnComment\":\"课程编号\",\"columnId\":31,\"columnName\":\"cou_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-10 15:38:11', 196);
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_score\"}', NULL, 0, NULL, '2023-09-10 15:38:48', 153);
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"score\",\"className\":\"DbScore\",\"columns\":[{\"capJavaField\":\"ScoId\",\"columnComment\":\"编号\",\"columnId\":29,\"columnName\":\"sco_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"scoId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:38:11\",\"usableColumn\":false},{\"capJavaField\":\"StuNumber\",\"columnComment\":\"学号\",\"columnId\":30,\"columnName\":\"stu_number\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:38:11\",\"usableColumn\":false},{\"capJavaField\":\"StuName\",\"columnComment\":\"学生姓名\",\"columnId\":35,\"columnName\":\"stu_name\",\"columnType\":\"varchar(10)\",\"createBy\":\"\",\"createTime\":\"2023-09-10 15:19:02\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:38:11\",\"usableColumn\":false},{\"capJavaField\":\"CouId\",\"columnComment\":\"课程编号\",\"columnId\":31,\"columnName\":\"cou_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncre', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-10 15:44:09', 194);
INSERT INTO `sys_oper_log` VALUES (141, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_score\"}', NULL, 0, NULL, '2023-09-10 15:44:13', 33);
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"score\",\"className\":\"DbScore\",\"columns\":[{\"capJavaField\":\"ScoId\",\"columnComment\":\"编号\",\"columnId\":29,\"columnName\":\"sco_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"scoId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:44:09\",\"usableColumn\":false},{\"capJavaField\":\"StuNumber\",\"columnComment\":\"学号\",\"columnId\":30,\"columnName\":\"stu_number\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stuNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:44:09\",\"usableColumn\":false},{\"capJavaField\":\"StuName\",\"columnComment\":\"学生姓名\",\"columnId\":35,\"columnName\":\"stu_name\",\"columnType\":\"varchar(10)\",\"createBy\":\"\",\"createTime\":\"2023-09-10 15:19:02\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:44:09\",\"usableColumn\":false},{\"capJavaField\":\"CouId\",\"columnComment\":\"课程编号\",\"columnId\":31,\"columnName\":\"cou_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIn', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-10 15:49:59', 226);
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_score\"}', NULL, 0, NULL, '2023-09-10 15:50:02', 134);
INSERT INTO `sys_oper_log` VALUES (144, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couId\":1,\"params\":{},\"scoId\":13,\"score\":99,\"stuName\":\"学生F\",\"stuNumber\":\"2221203\",\"teaId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-10 15:53:51', 156);
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"score\",\"className\":\"DbScore\",\"columns\":[{\"capJavaField\":\"ScoId\",\"columnComment\":\"编号\",\"columnId\":29,\"columnName\":\"sco_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"scoId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:49:58\",\"usableColumn\":false},{\"capJavaField\":\"StuNumber\",\"columnComment\":\"学号\",\"columnId\":30,\"columnName\":\"stu_number\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stuNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:49:58\",\"usableColumn\":false},{\"capJavaField\":\"StuName\",\"columnComment\":\"学生姓名\",\"columnId\":35,\"columnName\":\"stu_name\",\"columnType\":\"varchar(10)\",\"createBy\":\"\",\"createTime\":\"2023-09-10 15:19:02\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:49:58\",\"usableColumn\":false},{\"capJavaField\":\"CouId\",\"columnComment\":\"课程编号\",\"columnId\":31,\"columnName\":\"cou_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIn', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-10 15:57:11', 219);
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_score\"}', NULL, 0, NULL, '2023-09-10 15:57:14', 144);
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"score\",\"className\":\"DbScore\",\"columns\":[{\"capJavaField\":\"ScoId\",\"columnComment\":\"编号\",\"columnId\":29,\"columnName\":\"sco_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"scoId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:57:10\",\"usableColumn\":false},{\"capJavaField\":\"StuNumber\",\"columnComment\":\"学号\",\"columnId\":30,\"columnName\":\"stu_number\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stuNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:57:10\",\"usableColumn\":false},{\"capJavaField\":\"StuName\",\"columnComment\":\"学生姓名\",\"columnId\":35,\"columnName\":\"stu_name\",\"columnType\":\"varchar(10)\",\"createBy\":\"\",\"createTime\":\"2023-09-10 15:19:02\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 15:57:10\",\"usableColumn\":false},{\"capJavaField\":\"CouId\",\"columnComment\":\"课程编号\",\"columnId\":31,\"columnName\":\"cou_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 15:08:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIn', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-10 16:06:56', 287);
INSERT INTO `sys_oper_log` VALUES (148, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_score\"}', NULL, 0, NULL, '2023-09-10 16:07:00', 138);
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"student/score/index\",\"createTime\":\"2023-09-10 15:39:29\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2049,\"menuName\":\"成绩管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"score\",\"perms\":\"student:score:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-10 16:09:25', 69);
INSERT INTO `sys_oper_log` VALUES (150, '教师管理', 2, 'com.ruoyi.student.controller.DbTeacherController.edit()', 'PUT', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":1,\"collName\":\"计算机学院\",\"params\":{},\"teaGender\":\"2\",\"teaId\":7,\"teaName\":\"老师F\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 10:12:58', 166);
INSERT INTO `sys_oper_log` VALUES (151, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"考核方式\",\"dictType\":\"sys_exam_way\",\"params\":{},\"remark\":\"课程考核方式\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 10:19:02', 124);
INSERT INTO `sys_oper_log` VALUES (152, '字典类型', 9, 'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()', 'DELETE', 1, 'admin', NULL, '/system/dict/type/refreshCache', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 10:19:06', 18);
INSERT INTO `sys_oper_log` VALUES (153, '字典类型', 9, 'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()', 'DELETE', 1, 'admin', NULL, '/system/dict/type/refreshCache', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 10:24:29', 10);
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"DbCourse\",\"columns\":[{\"capJavaField\":\"CouId\",\"columnComment\":\"课程id\",\"columnId\":10,\"columnName\":\"cou_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 20:52:03\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"couId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-09-09 20:53:39\",\"usableColumn\":false},{\"capJavaField\":\"CouName\",\"columnComment\":\"课程名称\",\"columnId\":11,\"columnName\":\"cou_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 20:52:03\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"couName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-09-09 20:53:39\",\"usableColumn\":false},{\"capJavaField\":\"TeaName\",\"columnComment\":\"教师id\",\"columnId\":12,\"columnName\":\"tea_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 20:52:03\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teaName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-09-09 20:53:39\",\"usableColumn\":false},{\"capJavaField\":\"CouCredit\",\"columnComment\":\"学分\",\"columnId\":13,\"columnName\":\"cou_credit\",\"columnType\":\"float(5,1)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 20:52:03\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 10:26:10', 118);
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_course\"}', NULL, 0, NULL, '2023-09-11 10:26:15', 450);
INSERT INTO `sys_oper_log` VALUES (156, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couName\":\"计算机基础\",\"couWay\":\"1\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'tea_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\9.8\\AABB\\ruoyi-admin\\target\\classes\\mapper\\student\\DbCourseMapper.xml]\r\n### The error may involve com.ruoyi.student.mapper.DbCourseMapper.insertDbCourse-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into db_course          ( cou_name,                          cou_credit,             cou_hour,             cou_way )           values ( ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'tea_id\' doesn\'t have a default value\n; Field \'tea_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'tea_id\' doesn\'t have a default value', '2023-09-11 11:18:35', 259);
INSERT INTO `sys_oper_log` VALUES (157, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couName\":\"计算机基础\",\"couWay\":\"2\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'tea_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\9.8\\AABB\\ruoyi-admin\\target\\classes\\mapper\\student\\DbCourseMapper.xml]\r\n### The error may involve com.ruoyi.student.mapper.DbCourseMapper.insertDbCourse-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into db_course          ( cou_name,                          cou_credit,             cou_hour,             cou_way )           values ( ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'tea_id\' doesn\'t have a default value\n; Field \'tea_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'tea_id\' doesn\'t have a default value', '2023-09-11 11:21:21', 121);
INSERT INTO `sys_oper_log` VALUES (158, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":1,\"couHour\":2,\"couName\":\"阿萨打\",\"couWay\":\"1\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'tea_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\9.8\\AABB\\ruoyi-admin\\target\\classes\\mapper\\student\\DbCourseMapper.xml]\r\n### The error may involve com.ruoyi.student.mapper.DbCourseMapper.insertDbCourse-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into db_course          ( cou_name,                          cou_credit,             cou_hour,             cou_way )           values ( ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'tea_id\' doesn\'t have a default value\n; Field \'tea_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'tea_id\' doesn\'t have a default value', '2023-09-11 11:37:23', 129);
INSERT INTO `sys_oper_log` VALUES (159, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":30,\"couId\":7,\"couName\":\"计算机基础\",\"couWay\":\"1\",\"params\":{},\"teaId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 14:30:08', 162);
INSERT INTO `sys_oper_log` VALUES (160, '课程管理', 2, 'com.ruoyi.student.controller.DbCourseController.edit()', 'PUT', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":30,\"couId\":7,\"couName\":\"计算机基础\",\"couWay\":\"1\",\"params\":{},\"teaId\":1,\"teaName\":\"李四\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 14:30:27', 183);
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"student\",\"className\":\"DbStudent\",\"columns\":[{\"capJavaField\":\"StuNumber\",\"columnComment\":\"学号\",\"columnId\":22,\"columnName\":\"stu_number\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 14:41:02\",\"usableColumn\":false},{\"capJavaField\":\"StuName\",\"columnComment\":\"学生姓名\",\"columnId\":23,\"columnName\":\"stu_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 14:41:02\",\"usableColumn\":false},{\"capJavaField\":\"ClsName\",\"columnComment\":\"班级id\",\"columnId\":24,\"columnName\":\"cls_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"clsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-10 14:41:02\",\"usableColumn\":false},{\"capJavaField\":\"StuGender\",\"columnComment\":\"性别\",\"columnId\":25,\"columnName\":\"stu_gender\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlTy', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 16:47:15', 124);
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_student\"}', NULL, 0, NULL, '2023-09-11 16:47:18', 351);
INSERT INTO `sys_oper_log` VALUES (163, '学生管理', 3, 'com.ruoyi.student.controller.DbStudentController.remove()', 'DELETE', 1, 'admin', NULL, '/student/student/2221203', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 19:52:09', 264);
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-09-08 21:17:46\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 08:46:47', 89);
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-09-08 21:17:46\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 08:47:04', 60);
INSERT INTO `sys_oper_log` VALUES (166, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"英语视听说\",\"gpa\":3.3,\"params\":{},\"scoId\":5,\"score\":70,\"stuName\":\"学生C\",\"stuNumber\":\"2221401\",\"teaName\":\"王五\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:18:37', 444);
INSERT INTO `sys_oper_log` VALUES (167, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"英语写作\",\"gpa\":3.3,\"params\":{},\"scoId\":6,\"score\":89,\"stuName\":\"学生C\",\"stuNumber\":\"2221401\",\"teaName\":\"王五五\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:18:45', 77);
INSERT INTO `sys_oper_log` VALUES (168, '学院', 1, 'com.ruoyi.student.controller.dbcollegeController.add()', 'POST', 1, 'admin', NULL, '/student/college', '127.0.0.1', '内网IP', '{\"collId\":5,\"collName\":\"计算机学院\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:22:58', 156);
INSERT INTO `sys_oper_log` VALUES (169, '学院', 1, 'com.ruoyi.student.controller.dbcollegeController.add()', 'POST', 1, 'admin', NULL, '/student/college', '127.0.0.1', '内网IP', '{\"collId\":6,\"collName\":\"商务管理学院\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:25:25', 149);
INSERT INTO `sys_oper_log` VALUES (170, '学院', 1, 'com.ruoyi.student.controller.dbcollegeController.add()', 'POST', 1, 'admin', NULL, '/student/college', '127.0.0.1', '内网IP', '{\"collId\":7,\"collName\":\"信息管理学院\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:25:45', 60);
INSERT INTO `sys_oper_log` VALUES (171, '学院', 1, 'com.ruoyi.student.controller.dbcollegeController.add()', 'POST', 1, 'admin', NULL, '/student/college', '127.0.0.1', '内网IP', '{\"collId\":8,\"collName\":\"数字媒体与设计学院\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:26:03', 150);
INSERT INTO `sys_oper_log` VALUES (172, '学院', 1, 'com.ruoyi.student.controller.dbcollegeController.add()', 'POST', 1, 'admin', NULL, '/student/college', '127.0.0.1', '内网IP', '{\"collId\":9,\"collName\":\"外国语学院\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:26:13', 50);
INSERT INTO `sys_oper_log` VALUES (173, '学院', 2, 'com.ruoyi.student.controller.dbcollegeController.edit()', 'PUT', 1, 'admin', NULL, '/student/college', '127.0.0.1', '内网IP', '{\"collId\":7,\"collName\":\"信息管理与工程学院\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:26:28', 390);
INSERT INTO `sys_oper_log` VALUES (174, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":5,\"majId\":4,\"majName\":\"软件工程\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:26:48', 155);
INSERT INTO `sys_oper_log` VALUES (175, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":5,\"majId\":5,\"majName\":\"网络工程\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:27:02', 169);
INSERT INTO `sys_oper_log` VALUES (176, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":5,\"majId\":6,\"majName\":\"电子信息工程\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:28:30', 166);
INSERT INTO `sys_oper_log` VALUES (177, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":6,\"majId\":7,\"majName\":\"财务管理\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:28:59', 174);
INSERT INTO `sys_oper_log` VALUES (178, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":6,\"majId\":8,\"majName\":\"市场营销\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:29:16', 143);
INSERT INTO `sys_oper_log` VALUES (179, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":6,\"majId\":9,\"majName\":\"工商管理\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:29:43', 185);
INSERT INTO `sys_oper_log` VALUES (180, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":7,\"majId\":10,\"majName\":\"电子商务\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:30:05', 141);
INSERT INTO `sys_oper_log` VALUES (181, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":7,\"majId\":11,\"majName\":\"物流管理\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:30:16', 65);
INSERT INTO `sys_oper_log` VALUES (182, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":7,\"majId\":12,\"majName\":\"大数据管理与应用\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:30:57', 144);
INSERT INTO `sys_oper_log` VALUES (183, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":8,\"majId\":13,\"majName\":\"数字媒体技术\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:31:28', 171);
INSERT INTO `sys_oper_log` VALUES (184, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":8,\"majId\":14,\"majName\":\"工业设计\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:31:42', 141);
INSERT INTO `sys_oper_log` VALUES (185, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":8,\"majId\":15,\"majName\":\"视觉传达设计\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:32:05', 91);
INSERT INTO `sys_oper_log` VALUES (186, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":9,\"majId\":16,\"majName\":\"商务英语\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:32:21', 106);
INSERT INTO `sys_oper_log` VALUES (187, '专业管理', 1, 'com.ruoyi.student.controller.DbMajorController.add()', 'POST', 1, 'admin', NULL, '/student/major', '127.0.0.1', '内网IP', '{\"collId\":9,\"majId\":17,\"majName\":\"日语\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:32:34', 103);
INSERT INTO `sys_oper_log` VALUES (188, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":5,\"params\":{},\"teaGender\":\"0\",\"teaId\":9,\"teaName\":\"教师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:33:06', 145);
INSERT INTO `sys_oper_log` VALUES (189, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":5,\"params\":{},\"teaGender\":\"1\",\"teaId\":10,\"teaName\":\"教师B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:33:14', 170);
INSERT INTO `sys_oper_log` VALUES (190, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":5,\"params\":{},\"teaGender\":\"0\",\"teaId\":11,\"teaName\":\"教师C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:33:23', 119);
INSERT INTO `sys_oper_log` VALUES (191, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":5,\"params\":{},\"teaGender\":\"0\",\"teaId\":12,\"teaName\":\"教师D\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:33:32', 67);
INSERT INTO `sys_oper_log` VALUES (192, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":5,\"params\":{},\"teaGender\":\"1\",\"teaId\":13,\"teaName\":\"教师E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:33:58', 61);
INSERT INTO `sys_oper_log` VALUES (193, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":6,\"params\":{},\"teaGender\":\"1\",\"teaId\":14,\"teaName\":\"教师F\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:35:46', 78);
INSERT INTO `sys_oper_log` VALUES (194, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":6,\"params\":{},\"teaGender\":\"1\",\"teaId\":15,\"teaName\":\"教师G\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:36:02', 150);
INSERT INTO `sys_oper_log` VALUES (195, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":6,\"params\":{},\"teaGender\":\"0\",\"teaId\":16,\"teaName\":\"教师H\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:36:25', 148);
INSERT INTO `sys_oper_log` VALUES (196, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":6,\"params\":{},\"teaGender\":\"1\",\"teaId\":17,\"teaName\":\"教师I\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:36:47', 147);
INSERT INTO `sys_oper_log` VALUES (197, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":6,\"params\":{},\"teaGender\":\"0\",\"teaId\":18,\"teaName\":\"教师J\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:37:01', 147);
INSERT INTO `sys_oper_log` VALUES (198, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":7,\"params\":{},\"teaGender\":\"0\",\"teaId\":19,\"teaName\":\"教师K\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:37:18', 156);
INSERT INTO `sys_oper_log` VALUES (199, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":7,\"params\":{},\"teaGender\":\"1\",\"teaId\":20,\"teaName\":\"教师L\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:38:17', 182);
INSERT INTO `sys_oper_log` VALUES (200, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":7,\"params\":{},\"teaGender\":\"0\",\"teaId\":21,\"teaName\":\"教师M\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:38:30', 141);
INSERT INTO `sys_oper_log` VALUES (201, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":7,\"params\":{},\"teaGender\":\"1\",\"teaId\":22,\"teaName\":\"教师N\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:38:41', 154);
INSERT INTO `sys_oper_log` VALUES (202, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":7,\"params\":{},\"teaGender\":\"1\",\"teaId\":23,\"teaName\":\"教师O\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:39:20', 144);
INSERT INTO `sys_oper_log` VALUES (203, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":8,\"params\":{},\"teaGender\":\"1\",\"teaId\":24,\"teaName\":\"教师P\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:39:36', 141);
INSERT INTO `sys_oper_log` VALUES (204, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":8,\"params\":{},\"teaGender\":\"0\",\"teaId\":25,\"teaName\":\"教师Q\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:39:52', 64);
INSERT INTO `sys_oper_log` VALUES (205, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":8,\"params\":{},\"teaGender\":\"0\",\"teaId\":26,\"teaName\":\"教师R\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:40:12', 142);
INSERT INTO `sys_oper_log` VALUES (206, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":8,\"params\":{},\"teaGender\":\"1\",\"teaId\":27,\"teaName\":\"教师S\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:40:25', 154);
INSERT INTO `sys_oper_log` VALUES (207, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":8,\"params\":{},\"teaGender\":\"0\",\"teaId\":28,\"teaName\":\"教师T\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:40:41', 149);
INSERT INTO `sys_oper_log` VALUES (208, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":8,\"params\":{},\"teaGender\":\"1\",\"teaId\":29,\"teaName\":\"教师U\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:41:00', 170);
INSERT INTO `sys_oper_log` VALUES (209, '教师管理', 3, 'com.ruoyi.student.controller.DbTeacherController.remove()', 'DELETE', 1, 'admin', NULL, '/student/teacher/29', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:41:05', 165);
INSERT INTO `sys_oper_log` VALUES (210, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":9,\"params\":{},\"teaGender\":\"1\",\"teaId\":30,\"teaName\":\"教师U\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:41:22', 146);
INSERT INTO `sys_oper_log` VALUES (211, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":9,\"params\":{},\"teaGender\":\"0\",\"teaId\":31,\"teaName\":\"教师V\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:41:37', 295);
INSERT INTO `sys_oper_log` VALUES (212, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":9,\"params\":{},\"teaGender\":\"1\",\"teaId\":32,\"teaName\":\"教师W\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:41:51', 175);
INSERT INTO `sys_oper_log` VALUES (213, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":9,\"params\":{},\"teaGender\":\"1\",\"teaId\":33,\"teaName\":\"教师X\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:42:04', 177);
INSERT INTO `sys_oper_log` VALUES (214, '教师管理', 1, 'com.ruoyi.student.controller.DbTeacherController.add()', 'POST', 1, 'admin', NULL, '/student/teacher', '127.0.0.1', '内网IP', '{\"collId\":9,\"params\":{},\"teaGender\":\"0\",\"teaId\":34,\"teaName\":\"教师Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:42:15', 141);
INSERT INTO `sys_oper_log` VALUES (215, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":4,\"clsName\":\"软件1班\",\"majId\":4,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:42:53', 179);
INSERT INTO `sys_oper_log` VALUES (216, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":5,\"clsName\":\"网工1班\",\"majId\":5,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:43:12', 157);
INSERT INTO `sys_oper_log` VALUES (217, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":6,\"clsName\":\"电子信息1班\",\"majId\":6,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:43:28', 148);
INSERT INTO `sys_oper_log` VALUES (218, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":7,\"clsName\":\"财务1班\",\"majId\":7,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:43:46', 166);
INSERT INTO `sys_oper_log` VALUES (219, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":8,\"clsName\":\"市场营销\",\"majId\":8,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:44:02', 150);
INSERT INTO `sys_oper_log` VALUES (220, '班级管理', 2, 'com.ruoyi.student.controller.DbClassController.edit()', 'PUT', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":8,\"clsName\":\"市场营销1班\",\"majId\":8,\"majName\":\"市场营销\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:44:13', 145);
INSERT INTO `sys_oper_log` VALUES (221, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":9,\"clsName\":\"工商管理1班\",\"majId\":9,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:44:33', 166);
INSERT INTO `sys_oper_log` VALUES (222, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":10,\"clsName\":\"电子商务1班\",\"majId\":10,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:44:48', 178);
INSERT INTO `sys_oper_log` VALUES (223, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":11,\"clsName\":\"物流管理1班\",\"majId\":11,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:45:05', 188);
INSERT INTO `sys_oper_log` VALUES (224, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":12,\"clsName\":\"大数据1班\",\"majId\":12,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:45:25', 141);
INSERT INTO `sys_oper_log` VALUES (225, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":13,\"clsName\":\"数字媒体1班\",\"majId\":13,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:45:45', 153);
INSERT INTO `sys_oper_log` VALUES (226, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":14,\"clsName\":\"工业设计1班\",\"majId\":14,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:46:17', 148);
INSERT INTO `sys_oper_log` VALUES (227, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":15,\"clsName\":\"视觉传达1班\",\"majId\":15,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:46:45', 155);
INSERT INTO `sys_oper_log` VALUES (228, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":16,\"clsName\":\"商英1班\",\"majId\":16,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:47:25', 87);
INSERT INTO `sys_oper_log` VALUES (229, '班级管理', 1, 'com.ruoyi.student.controller.DbClassController.add()', 'POST', 1, 'admin', NULL, '/student/class', '127.0.0.1', '内网IP', '{\"clsId\":17,\"clsName\":\"日语1班\",\"majId\":17,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:47:42', 138);
INSERT INTO `sys_oper_log` VALUES (230, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":8,\"couName\":\"移动平台开发\",\"couWay\":\"1\",\"params\":{},\"teaId\":9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:49:17', 103);
INSERT INTO `sys_oper_log` VALUES (231, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":9,\"couName\":\"系统分析与设计\",\"couWay\":\"2\",\"params\":{},\"teaId\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:49:37', 71);
INSERT INTO `sys_oper_log` VALUES (232, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":10,\"couName\":\"互联网应用开发\",\"couWay\":\"1\",\"params\":{},\"teaId\":11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:49:56', 118);
INSERT INTO `sys_oper_log` VALUES (233, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":11,\"couName\":\"计算机系统基础\",\"couWay\":\"1\",\"params\":{},\"teaId\":12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:50:21', 165);
INSERT INTO `sys_oper_log` VALUES (234, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":12,\"couName\":\"软件测试\",\"couWay\":\"2\",\"params\":{},\"teaId\":13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:51:02', 147);
INSERT INTO `sys_oper_log` VALUES (235, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":13,\"couName\":\"计算机网络\",\"couWay\":\"1\",\"params\":{},\"teaId\":14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:51:47', 186);
INSERT INTO `sys_oper_log` VALUES (236, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":14,\"couName\":\"数据结构与算法\",\"couWay\":\"2\",\"params\":{},\"teaId\":15}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:52:33', 143);
INSERT INTO `sys_oper_log` VALUES (237, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":15,\"couName\":\"线性代数\",\"couWay\":\"1\",\"params\":{},\"teaId\":16}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:52:54', 170);
INSERT INTO `sys_oper_log` VALUES (238, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":16,\"couName\":\"密码学与网络安全\",\"couWay\":\"1\",\"params\":{},\"teaId\":17}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:54:18', 146);
INSERT INTO `sys_oper_log` VALUES (239, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":17,\"couName\":\"路由与交换技术\",\"couWay\":\"1\",\"params\":{},\"teaId\":18}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:55:50', 188);
INSERT INTO `sys_oper_log` VALUES (240, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":18,\"couName\":\"高等数学\",\"couWay\":\"1\",\"params\":{},\"teaId\":9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:59:18', 78);
INSERT INTO `sys_oper_log` VALUES (241, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":19,\"couName\":\"电子技术基础\",\"couWay\":\"2\",\"params\":{},\"teaId\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:59:34', 143);
INSERT INTO `sys_oper_log` VALUES (242, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":20,\"couName\":\"Linux程序设计\",\"couWay\":\"1\",\"params\":{},\"teaId\":11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 10:59:51', 147);
INSERT INTO `sys_oper_log` VALUES (243, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":21,\"couName\":\"嵌入式系统基础\",\"couWay\":\"1\",\"params\":{},\"teaId\":12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:00:14', 165);
INSERT INTO `sys_oper_log` VALUES (244, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":22,\"couName\":\"单片机原理与接口\",\"couWay\":\"1\",\"params\":{},\"teaId\":13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:00:41', 151);
INSERT INTO `sys_oper_log` VALUES (245, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":8,\"majId\":4,\"params\":{},\"setId\":7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:01:15', 175);
INSERT INTO `sys_oper_log` VALUES (246, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":9,\"majId\":4,\"params\":{},\"setId\":8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:01:20', 173);
INSERT INTO `sys_oper_log` VALUES (247, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":10,\"majId\":4,\"params\":{},\"setId\":9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:01:31', 173);
INSERT INTO `sys_oper_log` VALUES (248, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":11,\"majId\":4,\"params\":{},\"setId\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:01:42', 174);
INSERT INTO `sys_oper_log` VALUES (249, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":12,\"majId\":4,\"params\":{},\"setId\":11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:01:54', 149);
INSERT INTO `sys_oper_log` VALUES (250, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":13,\"majId\":5,\"params\":{},\"setId\":12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:02:12', 175);
INSERT INTO `sys_oper_log` VALUES (251, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":14,\"majId\":5,\"params\":{},\"setId\":13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:02:21', 172);
INSERT INTO `sys_oper_log` VALUES (252, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":15,\"majId\":5,\"params\":{},\"setId\":14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:02:33', 174);
INSERT INTO `sys_oper_log` VALUES (253, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":16,\"majId\":5,\"params\":{},\"setId\":15}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:02:43', 152);
INSERT INTO `sys_oper_log` VALUES (254, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":17,\"majId\":5,\"params\":{},\"setId\":16}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:03:00', 149);
INSERT INTO `sys_oper_log` VALUES (255, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":\"4\",\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"0\",\"stuName\":\"学生A\",\"stuPhone\":\"123456\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'stu_number\' doesn\'t have a default value\r\n### The error may exist in file [D:\\9.8\\AABB\\ruoyi-admin\\target\\classes\\mapper\\student\\DbStudentMapper.xml]\r\n### The error may involve com.ruoyi.student.mapper.DbStudentMapper.insertDbStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into db_student          ( stu_name,             cls_id,             stu_gender,             stu_phone,                          stu_address )           values ( ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'stu_number\' doesn\'t have a default value\n; Field \'stu_number\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'stu_number\' doesn\'t have a default value', '2023-09-13 11:03:28', 131);
INSERT INTO `sys_oper_log` VALUES (256, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"student\",\"className\":\"DbStudent\",\"columns\":[{\"capJavaField\":\"StuNumber\",\"columnComment\":\"学号\",\"columnId\":22,\"columnName\":\"stu_number\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-11 16:47:15\",\"usableColumn\":false},{\"capJavaField\":\"StuName\",\"columnComment\":\"学生姓名\",\"columnId\":23,\"columnName\":\"stu_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-11 16:47:15\",\"usableColumn\":false},{\"capJavaField\":\"ClsName\",\"columnComment\":\"班级id\",\"columnId\":24,\"columnName\":\"cls_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"clsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-11 16:47:15\",\"usableColumn\":false},{\"capJavaField\":\"StuGender\",\"columnComment\":\"性别\",\"columnId\":25,\"columnName\":\"stu_gender\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"sys_user_sex\",\"edit\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:05:49', 97);
INSERT INTO `sys_oper_log` VALUES (257, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_student\"}', NULL, 0, NULL, '2023-09-13 11:06:04', 525);
INSERT INTO `sys_oper_log` VALUES (258, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"college\",\"className\":\"dbcollege\",\"columns\":[{\"capJavaField\":\"CollId\",\"columnComment\":\"学院id\",\"columnId\":1,\"columnName\":\"coll_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 14:34:24\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"1\",\"javaField\":\"collId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-09-09 14:36:21\",\"usableColumn\":false},{\"capJavaField\":\"CollName\",\"columnComment\":\"学院名称\",\"columnId\":2,\"columnName\":\"coll_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 14:34:24\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"collName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-09-09 14:36:21\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"AABB\",\"functionName\":\"学院\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"student\",\"options\":\"{\\\"parentMenuId\\\":\\\"2000\\\"}\",\"packageName\":\"com.ruoyi.student\",\"params\":{\"parentMenuId\":\"2000\"},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"学院管理\",\"tableId\":1,\"tableName\":\"db_ college\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:31:48', 205);
INSERT INTO `sys_oper_log` VALUES (259, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"college\",\"className\":\"dbcollege\",\"columns\":[{\"capJavaField\":\"CollId\",\"columnComment\":\"学院id\",\"columnId\":1,\"columnName\":\"coll_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 14:34:24\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"1\",\"javaField\":\"collId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 11:31:48\",\"usableColumn\":false},{\"capJavaField\":\"CollName\",\"columnComment\":\"学院名称\",\"columnId\":2,\"columnName\":\"coll_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-09 14:34:24\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"collName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 11:31:48\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"AABB\",\"functionName\":\"学院\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"student\",\"options\":\"{\\\"parentMenuId\\\":\\\"2000\\\"}\",\"packageName\":\"com.ruoyi.student\",\"params\":{\"parentMenuId\":\"2000\"},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"学院管理\",\"tableId\":1,\"tableName\":\"db_ college\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:32:47', 80);
INSERT INTO `sys_oper_log` VALUES (260, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"移动平台开发\",\"params\":{},\"scoId\":15,\"score\":100,\"stuName\":\"学生A\",\"stuNumber\":\"22215150101\",\"teaName\":\"教师A\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'stu_number\' in \'field list\'\r\n### The error may exist in file [D:\\9.8\\AABB\\ruoyi-admin\\target\\classes\\mapper\\student\\DbScoreMapper.xml]\r\n### The error may involve com.ruoyi.student.mapper.DbScoreMapper.updateDbScore-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update db_score          SET stu_number = ?,             stu_name = ?,                                       score = ?          where sco_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'stu_number\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'stu_number\' in \'field list\'', '2023-09-13 12:00:53', 42);
INSERT INTO `sys_oper_log` VALUES (261, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"移动平台开发\",\"params\":{},\"scoId\":15,\"score\":100,\"stuName\":\"学生A\",\"stuNumber\":\"22215150101\",\"teaName\":\"教师A\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'stu_id\' cannot be null\r\n### The error may exist in file [D:\\9.8\\AABB\\ruoyi-admin\\target\\classes\\mapper\\student\\DbScoreMapper.xml]\r\n### The error may involve com.ruoyi.student.mapper.DbScoreMapper.updateDbScore-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update db_score          SET stu_id = ?,             stu_name = ?,                                       score = ?          where sco_id = ?\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'stu_id\' cannot be null\n; Column \'stu_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'stu_id\' cannot be null', '2023-09-13 12:03:13', 44);
INSERT INTO `sys_oper_log` VALUES (262, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"移动平台开发\",\"params\":{},\"scoId\":15,\"score\":100,\"stuName\":\"学生A\",\"stuNumber\":\"22215150101\",\"teaName\":\"教师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 12:04:06', 159);
INSERT INTO `sys_oper_log` VALUES (263, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"系统分析与设计\",\"params\":{},\"scoId\":16,\"score\":93,\"stuName\":\"学生A\",\"stuNumber\":\"22215150101\",\"teaName\":\"教师B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 12:04:39', 138);
INSERT INTO `sys_oper_log` VALUES (264, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"互联网应用开发\",\"params\":{},\"scoId\":17,\"score\":68,\"stuName\":\"学生A\",\"stuNumber\":\"22215150101\",\"teaName\":\"教师C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 12:04:46', 174);
INSERT INTO `sys_oper_log` VALUES (265, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"计算机系统基础\",\"params\":{},\"scoId\":18,\"score\":89,\"stuName\":\"学生A\",\"stuNumber\":\"22215150101\",\"teaName\":\"教师D\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 12:04:55', 150);
INSERT INTO `sys_oper_log` VALUES (266, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"软件测试\",\"params\":{},\"scoId\":19,\"score\":90,\"stuName\":\"学生A\",\"stuNumber\":\"22215150101\",\"teaName\":\"教师E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 12:05:00', 51);
INSERT INTO `sys_oper_log` VALUES (267, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/db_student', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 14:26:21', 314);
INSERT INTO `sys_oper_log` VALUES (268, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"student\",\"className\":\"DbStudent\",\"columns\":[{\"capJavaField\":\"StuId\",\"columnComment\":\"编号\",\"columnId\":36,\"columnName\":\"stu_id\",\"columnType\":\"int\",\"createBy\":\"\",\"createTime\":\"2023-09-13 14:26:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"1\",\"javaField\":\"stuId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StuNumber\",\"columnComment\":\"学号\",\"columnId\":22,\"columnName\":\"stu_number\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 14:26:21\",\"usableColumn\":false},{\"capJavaField\":\"StuName\",\"columnComment\":\"学生姓名\",\"columnId\":23,\"columnName\":\"stu_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 14:26:21\",\"usableColumn\":false},{\"capJavaField\":\"ClsName\",\"columnComment\":\"班级id\",\"columnId\":24,\"columnName\":\"cls_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 14:29:17', 98);
INSERT INTO `sys_oper_log` VALUES (269, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"student\",\"className\":\"DbStudent\",\"columns\":[{\"capJavaField\":\"StuId\",\"columnComment\":\"编号\",\"columnId\":36,\"columnName\":\"stu_id\",\"columnType\":\"int\",\"createBy\":\"\",\"createTime\":\"2023-09-13 14:26:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"1\",\"javaField\":\"stuId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 14:29:17\",\"usableColumn\":false},{\"capJavaField\":\"StuNumber\",\"columnComment\":\"学号\",\"columnId\":22,\"columnName\":\"stu_number\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 14:29:17\",\"usableColumn\":false},{\"capJavaField\":\"StuName\",\"columnComment\":\"学生姓名\",\"columnId\":23,\"columnName\":\"stu_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 14:29:17\",\"usableColumn\":false},{\"capJavaField\":\"ClsName\",\"columnComment\":\"班级id\",\"columnId\":24,\"columnName\":\"cls_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isInc', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 14:32:09', 295);
INSERT INTO `sys_oper_log` VALUES (270, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"student\",\"className\":\"DbStudent\",\"columns\":[{\"capJavaField\":\"StuId\",\"columnComment\":\"编号\",\"columnId\":36,\"columnName\":\"stu_id\",\"columnType\":\"int\",\"createBy\":\"\",\"createTime\":\"2023-09-13 14:26:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"1\",\"javaField\":\"stuId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 14:32:08\",\"usableColumn\":false},{\"capJavaField\":\"StuNumber\",\"columnComment\":\"学号\",\"columnId\":22,\"columnName\":\"stu_number\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 14:32:08\",\"usableColumn\":false},{\"capJavaField\":\"StuName\",\"columnComment\":\"学生姓名\",\"columnId\":23,\"columnName\":\"stu_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 14:32:09\",\"usableColumn\":false},{\"capJavaField\":\"ClsName\",\"columnComment\":\"班级id\",\"columnId\":24,\"columnName\":\"cls_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncr', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 14:32:50', 271);
INSERT INTO `sys_oper_log` VALUES (271, '学生管理', 2, 'com.ruoyi.student.controller.DbStudentController.edit()', 'PUT', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":4,\"clsName\":\"4\",\"params\":{},\"stuAddress\":\"广东\",\"stuAvg\":4.4,\"stuGender\":\"1\",\"stuName\":\"学生A\",\"stuNumber\":\"2220101\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-09-13 14:39:59', 6);
INSERT INTO `sys_oper_log` VALUES (272, '学生管理', 3, 'com.ruoyi.student.controller.DbStudentController.remove()', 'DELETE', 1, 'admin', NULL, '/student/student/22215150101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 14:40:58', 234);
INSERT INTO `sys_oper_log` VALUES (273, '学生管理', 2, 'com.ruoyi.student.controller.DbStudentController.edit()', 'PUT', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":4,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"0\",\"stuName\":\"学生A\",\"stuNumber\":\"2220101\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-09-13 14:41:33', 2);
INSERT INTO `sys_oper_log` VALUES (274, '学生管理', 2, 'com.ruoyi.student.controller.DbStudentController.edit()', 'PUT', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":4,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"0\",\"stuName\":\"学生A\",\"stuNumber\":\"2220101\",\"stuPhone\":\"12345\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-09-13 14:52:27', 16);
INSERT INTO `sys_oper_log` VALUES (275, '学生管理', 2, 'com.ruoyi.student.controller.DbStudentController.edit()', 'PUT', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":4,\"params\":{},\"stuAddress\":\"广东 \",\"stuGender\":\"0\",\"stuName\":\"学生A\",\"stuNumber\":\"2220101\",\"stuPhone\":\"12345\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-09-13 14:53:20', 4);
INSERT INTO `sys_oper_log` VALUES (276, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_student\"}', NULL, 0, NULL, '2023-09-13 14:53:52', 262);
INSERT INTO `sys_oper_log` VALUES (277, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"student\",\"className\":\"DbStudent\",\"columns\":[{\"capJavaField\":\"StuId\",\"columnComment\":\"编号\",\"columnId\":36,\"columnName\":\"stu_id\",\"columnType\":\"int\",\"createBy\":\"\",\"createTime\":\"2023-09-13 14:26:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"stuId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 14:32:50\",\"usableColumn\":false},{\"capJavaField\":\"StuNumber\",\"columnComment\":\"学号\",\"columnId\":22,\"columnName\":\"stu_number\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 14:32:50\",\"usableColumn\":false},{\"capJavaField\":\"StuName\",\"columnComment\":\"学生姓名\",\"columnId\":23,\"columnName\":\"stu_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 14:32:50\",\"usableColumn\":false},{\"capJavaField\":\"ClsName\",\"columnComment\":\"班级id\",\"columnId\":24,\"columnName\":\"cls_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncre', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 15:24:57', 306);
INSERT INTO `sys_oper_log` VALUES (278, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"student\",\"className\":\"DbStudent\",\"columns\":[{\"capJavaField\":\"StuId\",\"columnComment\":\"编号\",\"columnId\":36,\"columnName\":\"stu_id\",\"columnType\":\"int\",\"createBy\":\"\",\"createTime\":\"2023-09-13 14:26:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"stuId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 15:24:57\",\"usableColumn\":false},{\"capJavaField\":\"StuNumber\",\"columnComment\":\"学号\",\"columnId\":22,\"columnName\":\"stu_number\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 15:24:57\",\"usableColumn\":false},{\"capJavaField\":\"StuName\",\"columnComment\":\"学生姓名\",\"columnId\":23,\"columnName\":\"stu_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-09-13 15:24:57\",\"usableColumn\":false},{\"capJavaField\":\"ClsName\",\"columnComment\":\"班级id\",\"columnId\":24,\"columnName\":\"cls_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-10 14:35:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncre', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 15:34:55', 309);
INSERT INTO `sys_oper_log` VALUES (279, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"db_student\"}', NULL, 0, NULL, '2023-09-13 15:35:01', 36);
INSERT INTO `sys_oper_log` VALUES (280, '学生管理', 2, 'com.ruoyi.student.controller.DbStudentController.edit()', 'PUT', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsName\":\"4\",\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"1\",\"stuId\":2,\"stuName\":\"学生A\",\"stuNumber\":\"2220101\",\"stuPhone\":\"1234564\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 15:37:21', 166);
INSERT INTO `sys_oper_log` VALUES (281, '学生管理', 2, 'com.ruoyi.student.controller.DbStudentController.edit()', 'PUT', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":4,\"clsName\":\"软件1班\",\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"1\",\"stuId\":2,\"stuName\":\"学生A\",\"stuNumber\":\"2220101\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:10:33', 262);
INSERT INTO `sys_oper_log` VALUES (282, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":4,\"params\":{},\"stuGender\":\"0\",\"stuName\":\"学生B\",\"stuNumber\":\"2220102\",\"stuPhone\":\"123456\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may exist in file [D:\\9.8\\AABB\\ruoyi-admin\\target\\classes\\mapper\\student\\DbStudentMapper.xml]\r\n### The error may involve com.ruoyi.student.mapper.DbStudentMapper.insertDbStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into db_student          ( stu_number,             stu_name,             cls_id,             stu_gender,             stu_phone )           values ( ?,                                       ?,             ? )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2023-09-13 16:17:05', 142);
INSERT INTO `sys_oper_log` VALUES (283, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":4,\"params\":{},\"stuGender\":\"0\",\"stuName\":\"学生B\",\"stuNumber\":\"2220102\",\"stuPhone\":\"123456\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'stu_address\' doesn\'t have a default value\r\n### The error may exist in file [D:\\9.8\\AABB\\ruoyi-admin\\target\\classes\\mapper\\student\\DbStudentMapper.xml]\r\n### The error may involve com.ruoyi.student.mapper.DbStudentMapper.insertDbStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into db_student          ( stu_number,             stu_name,             cls_id,             stu_gender,             stu_phone )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'stu_address\' doesn\'t have a default value\n; Field \'stu_address\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'stu_address\' doesn\'t have a default value', '2023-09-13 16:20:10', 131);
INSERT INTO `sys_oper_log` VALUES (284, '学生管理', 2, 'com.ruoyi.student.controller.DbStudentController.edit()', 'PUT', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":4,\"clsName\":\"软件1班\",\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"1\",\"stuId\":2,\"stuName\":\"学生A\",\"stuNumber\":\"2220101\",\"stuPhone\":\"1234565\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:20:29', 270);
INSERT INTO `sys_oper_log` VALUES (285, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":4,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"0\",\"stuId\":3,\"stuName\":\"学生B\",\"stuNumber\":\"2220102\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:21:41', 276);
INSERT INTO `sys_oper_log` VALUES (286, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":4,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"0\",\"stuId\":4,\"stuName\":\"学生C\",\"stuNumber\":\"2220103\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:22:23', 170);
INSERT INTO `sys_oper_log` VALUES (287, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":4,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"1\",\"stuId\":5,\"stuName\":\"学生D\",\"stuNumber\":\"2220104\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:22:59', 280);
INSERT INTO `sys_oper_log` VALUES (288, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":4,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"1\",\"stuId\":6,\"stuName\":\"学生E\",\"stuNumber\":\"2220105\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:23:22', 188);
INSERT INTO `sys_oper_log` VALUES (289, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":5,\"params\":{},\"stuAddress\":\"广西\",\"stuGender\":\"0\",\"stuId\":7,\"stuName\":\"学生F\",\"stuNumber\":\"2220201\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:24:15', 261);
INSERT INTO `sys_oper_log` VALUES (290, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":5,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"1\",\"stuId\":8,\"stuName\":\"学生G\",\"stuNumber\":\"2220202\",\"stuPhone\":\"1234567\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:24:49', 179);
INSERT INTO `sys_oper_log` VALUES (291, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":5,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"0\",\"stuId\":9,\"stuName\":\"学生H\",\"stuNumber\":\"2220203\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:25:19', 181);
INSERT INTO `sys_oper_log` VALUES (292, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":5,\"params\":{},\"stuAddress\":\"福建\",\"stuGender\":\"0\",\"stuId\":10,\"stuName\":\"学生I\",\"stuNumber\":\"2220204\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:25:52', 236);
INSERT INTO `sys_oper_log` VALUES (293, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":5,\"params\":{},\"stuAddress\":\"福建\",\"stuGender\":\"0\",\"stuId\":11,\"stuName\":\"学生J\",\"stuNumber\":\"2220205\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:26:32', 246);
INSERT INTO `sys_oper_log` VALUES (294, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"移动平台开发\",\"params\":{},\"scoId\":20,\"score\":88,\"stuName\":\"学生A\",\"stuNumber\":\"2220101\",\"teaName\":\"教师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:27:10', 349);
INSERT INTO `sys_oper_log` VALUES (295, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"系统分析与设计\",\"params\":{},\"scoId\":21,\"score\":90,\"stuName\":\"学生A\",\"stuNumber\":\"2220101\",\"teaName\":\"教师B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:27:16', 237);
INSERT INTO `sys_oper_log` VALUES (296, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"互联网应用开发\",\"params\":{},\"scoId\":22,\"score\":67,\"stuName\":\"学生A\",\"stuNumber\":\"2220101\",\"teaName\":\"教师C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:27:22', 268);
INSERT INTO `sys_oper_log` VALUES (297, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"计算机系统基础\",\"params\":{},\"scoId\":23,\"score\":69,\"stuName\":\"学生A\",\"stuNumber\":\"2220101\",\"teaName\":\"教师D\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:27:30', 162);
INSERT INTO `sys_oper_log` VALUES (298, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"软件测试\",\"params\":{},\"scoId\":24,\"score\":80,\"stuName\":\"学生A\",\"stuNumber\":\"2220101\",\"teaName\":\"教师E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:27:36', 154);
INSERT INTO `sys_oper_log` VALUES (299, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"移动平台开发\",\"params\":{},\"scoId\":25,\"score\":94,\"stuName\":\"学生B\",\"stuNumber\":\"2220102\",\"teaName\":\"教师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:27:43', 260);
INSERT INTO `sys_oper_log` VALUES (300, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"系统分析与设计\",\"params\":{},\"scoId\":26,\"score\":78,\"stuName\":\"学生B\",\"stuNumber\":\"2220102\",\"teaName\":\"教师B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:27:52', 144);
INSERT INTO `sys_oper_log` VALUES (301, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"互联网应用开发\",\"params\":{},\"scoId\":27,\"score\":98,\"stuName\":\"学生B\",\"stuNumber\":\"2220102\",\"teaName\":\"教师C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:27:57', 147);
INSERT INTO `sys_oper_log` VALUES (302, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"计算机系统基础\",\"params\":{},\"scoId\":28,\"score\":68,\"stuName\":\"学生B\",\"stuNumber\":\"2220102\",\"teaName\":\"教师D\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:28:02', 228);
INSERT INTO `sys_oper_log` VALUES (303, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"软件测试\",\"params\":{},\"scoId\":29,\"score\":68,\"stuName\":\"学生B\",\"stuNumber\":\"2220102\",\"teaName\":\"教师E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:28:08', 264);
INSERT INTO `sys_oper_log` VALUES (304, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"移动平台开发\",\"params\":{},\"scoId\":30,\"score\":67,\"stuName\":\"学生C\",\"stuNumber\":\"2220103\",\"teaName\":\"教师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:28:30', 265);
INSERT INTO `sys_oper_log` VALUES (305, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"系统分析与设计\",\"params\":{},\"scoId\":31,\"score\":87,\"stuName\":\"学生C\",\"stuNumber\":\"2220103\",\"teaName\":\"教师B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:28:35', 255);
INSERT INTO `sys_oper_log` VALUES (306, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"互联网应用开发\",\"params\":{},\"scoId\":32,\"score\":57,\"stuName\":\"学生C\",\"stuNumber\":\"2220103\",\"teaName\":\"教师C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:28:40', 224);
INSERT INTO `sys_oper_log` VALUES (307, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"计算机系统基础\",\"params\":{},\"scoId\":33,\"score\":88,\"stuName\":\"学生C\",\"stuNumber\":\"2220103\",\"teaName\":\"教师D\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:28:44', 170);
INSERT INTO `sys_oper_log` VALUES (308, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"软件测试\",\"params\":{},\"scoId\":34,\"score\":90,\"stuName\":\"学生C\",\"stuNumber\":\"2220103\",\"teaName\":\"教师E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:28:49', 116);
INSERT INTO `sys_oper_log` VALUES (309, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"移动平台开发\",\"params\":{},\"scoId\":35,\"score\":90,\"stuName\":\"学生D\",\"stuNumber\":\"2220104\",\"teaName\":\"教师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:28:54', 170);
INSERT INTO `sys_oper_log` VALUES (310, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"系统分析与设计\",\"params\":{},\"scoId\":36,\"score\":68,\"stuName\":\"学生D\",\"stuNumber\":\"2220104\",\"teaName\":\"教师B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:28:59', 171);
INSERT INTO `sys_oper_log` VALUES (311, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"互联网应用开发\",\"params\":{},\"scoId\":37,\"score\":88,\"stuName\":\"学生D\",\"stuNumber\":\"2220104\",\"teaName\":\"教师C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:29:02', 153);
INSERT INTO `sys_oper_log` VALUES (312, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"计算机系统基础\",\"params\":{},\"scoId\":38,\"score\":68,\"stuName\":\"学生D\",\"stuNumber\":\"2220104\",\"teaName\":\"教师D\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:29:09', 139);
INSERT INTO `sys_oper_log` VALUES (313, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"软件测试\",\"params\":{},\"scoId\":39,\"score\":89,\"stuName\":\"学生D\",\"stuNumber\":\"2220104\",\"teaName\":\"教师E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:29:16', 143);
INSERT INTO `sys_oper_log` VALUES (314, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"移动平台开发\",\"params\":{},\"scoId\":40,\"score\":79,\"stuName\":\"学生E\",\"stuNumber\":\"2220105\",\"teaName\":\"教师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:29:25', 175);
INSERT INTO `sys_oper_log` VALUES (315, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"系统分析与设计\",\"params\":{},\"scoId\":41,\"score\":89,\"stuName\":\"学生E\",\"stuNumber\":\"2220105\",\"teaName\":\"教师B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:29:31', 63);
INSERT INTO `sys_oper_log` VALUES (316, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"互联网应用开发\",\"params\":{},\"scoId\":42,\"score\":69,\"stuName\":\"学生E\",\"stuNumber\":\"2220105\",\"teaName\":\"教师C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:29:39', 154);
INSERT INTO `sys_oper_log` VALUES (317, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"计算机系统基础\",\"params\":{},\"scoId\":43,\"score\":77,\"stuName\":\"学生E\",\"stuNumber\":\"2220105\",\"teaName\":\"教师D\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:29:45', 141);
INSERT INTO `sys_oper_log` VALUES (318, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"软件测试\",\"params\":{},\"scoId\":44,\"score\":90,\"stuName\":\"学生E\",\"stuNumber\":\"2220105\",\"teaName\":\"教师E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:29:49', 153);
INSERT INTO `sys_oper_log` VALUES (319, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"计算机网络\",\"params\":{},\"scoId\":45,\"score\":68,\"stuName\":\"学生F\",\"stuNumber\":\"2220201\",\"teaName\":\"教师F\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:29:53', 172);
INSERT INTO `sys_oper_log` VALUES (320, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"数据结构与算法\",\"params\":{},\"scoId\":46,\"score\":90,\"stuName\":\"学生F\",\"stuNumber\":\"2220201\",\"teaName\":\"教师G\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:29:57', 139);
INSERT INTO `sys_oper_log` VALUES (321, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"线性代数\",\"params\":{},\"scoId\":47,\"score\":77,\"stuName\":\"学生F\",\"stuNumber\":\"2220201\",\"teaName\":\"教师H\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:30:02', 190);
INSERT INTO `sys_oper_log` VALUES (322, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"密码学与网络安全\",\"params\":{},\"scoId\":48,\"score\":89,\"stuName\":\"学生F\",\"stuNumber\":\"2220201\",\"teaName\":\"教师I\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:30:07', 137);
INSERT INTO `sys_oper_log` VALUES (323, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"路由与交换技术\",\"params\":{},\"scoId\":49,\"score\":90,\"stuName\":\"学生F\",\"stuNumber\":\"2220201\",\"teaName\":\"教师J\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:30:11', 183);
INSERT INTO `sys_oper_log` VALUES (324, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"计算机网络\",\"params\":{},\"scoId\":50,\"score\":55,\"stuName\":\"学生G\",\"stuNumber\":\"2220202\",\"teaName\":\"教师F\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:30:20', 118);
INSERT INTO `sys_oper_log` VALUES (325, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"数据结构与算法\",\"params\":{},\"scoId\":51,\"score\":43,\"stuName\":\"学生G\",\"stuNumber\":\"2220202\",\"teaName\":\"教师G\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:30:23', 108);
INSERT INTO `sys_oper_log` VALUES (326, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"线性代数\",\"params\":{},\"scoId\":52,\"score\":87,\"stuName\":\"学生G\",\"stuNumber\":\"2220202\",\"teaName\":\"教师H\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:30:29', 88);
INSERT INTO `sys_oper_log` VALUES (327, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"密码学与网络安全\",\"params\":{},\"scoId\":53,\"score\":67,\"stuName\":\"学生G\",\"stuNumber\":\"2220202\",\"teaName\":\"教师I\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:30:38', 147);
INSERT INTO `sys_oper_log` VALUES (328, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"路由与交换技术\",\"params\":{},\"scoId\":54,\"score\":98,\"stuName\":\"学生G\",\"stuNumber\":\"2220202\",\"teaName\":\"教师J\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:30:42', 146);
INSERT INTO `sys_oper_log` VALUES (329, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"计算机网络\",\"params\":{},\"scoId\":55,\"score\":100,\"stuName\":\"学生H\",\"stuNumber\":\"2220203\",\"teaName\":\"教师F\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:30:47', 185);
INSERT INTO `sys_oper_log` VALUES (330, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"数据结构与算法\",\"params\":{},\"scoId\":56,\"score\":89,\"stuName\":\"学生H\",\"stuNumber\":\"2220203\",\"teaName\":\"教师G\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:30:53', 170);
INSERT INTO `sys_oper_log` VALUES (331, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"线性代数\",\"params\":{},\"scoId\":57,\"score\":75,\"stuName\":\"学生H\",\"stuNumber\":\"2220203\",\"teaName\":\"教师H\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:31:01', 130);
INSERT INTO `sys_oper_log` VALUES (332, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"密码学与网络安全\",\"params\":{},\"scoId\":58,\"score\":71,\"stuName\":\"学生H\",\"stuNumber\":\"2220203\",\"teaName\":\"教师I\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:31:05', 52);
INSERT INTO `sys_oper_log` VALUES (333, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"路由与交换技术\",\"params\":{},\"scoId\":59,\"score\":82,\"stuName\":\"学生H\",\"stuNumber\":\"2220203\",\"teaName\":\"教师J\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:31:09', 116);
INSERT INTO `sys_oper_log` VALUES (334, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"计算机网络\",\"params\":{},\"scoId\":60,\"score\":55,\"stuName\":\"学生I\",\"stuNumber\":\"2220204\",\"teaName\":\"教师F\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:31:16', 91);
INSERT INTO `sys_oper_log` VALUES (335, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"数据结构与算法\",\"params\":{},\"scoId\":61,\"score\":78,\"stuName\":\"学生I\",\"stuNumber\":\"2220204\",\"teaName\":\"教师G\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:31:21', 96);
INSERT INTO `sys_oper_log` VALUES (336, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"线性代数\",\"params\":{},\"scoId\":62,\"score\":67,\"stuName\":\"学生I\",\"stuNumber\":\"2220204\",\"teaName\":\"教师H\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:31:27', 131);
INSERT INTO `sys_oper_log` VALUES (337, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"密码学与网络安全\",\"params\":{},\"scoId\":63,\"score\":98,\"stuName\":\"学生I\",\"stuNumber\":\"2220204\",\"teaName\":\"教师I\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:31:31', 51);
INSERT INTO `sys_oper_log` VALUES (338, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"路由与交换技术\",\"params\":{},\"scoId\":64,\"score\":98,\"stuName\":\"学生I\",\"stuNumber\":\"2220204\",\"teaName\":\"教师J\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:31:38', 87);
INSERT INTO `sys_oper_log` VALUES (339, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"计算机网络\",\"params\":{},\"scoId\":65,\"score\":45,\"stuName\":\"学生J\",\"stuNumber\":\"2220205\",\"teaName\":\"教师F\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:31:42', 167);
INSERT INTO `sys_oper_log` VALUES (340, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"数据结构与算法\",\"params\":{},\"scoId\":66,\"score\":76,\"stuName\":\"学生J\",\"stuNumber\":\"2220205\",\"teaName\":\"教师G\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:31:46', 107);
INSERT INTO `sys_oper_log` VALUES (341, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"线性代数\",\"params\":{},\"scoId\":67,\"score\":89,\"stuName\":\"学生J\",\"stuNumber\":\"2220205\",\"teaName\":\"教师H\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:31:51', 81);
INSERT INTO `sys_oper_log` VALUES (342, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"密码学与网络安全\",\"params\":{},\"scoId\":68,\"score\":45,\"stuName\":\"学生J\",\"stuNumber\":\"2220205\",\"teaName\":\"教师I\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:31:55', 137);
INSERT INTO `sys_oper_log` VALUES (343, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"路由与交换技术\",\"params\":{},\"scoId\":69,\"score\":67,\"stuName\":\"学生J\",\"stuNumber\":\"2220205\",\"teaName\":\"教师J\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 16:31:59', 72);
INSERT INTO `sys_oper_log` VALUES (344, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2007,2019,2025,2031,2037,2043,2049,2002,2006,2008,2012,2020,2024,2026,2030,2032,2036,2038,2042,2044,2048,2050,2052,2054],\"params\":{},\"roleId\":100,\"roleKey\":\"老师\",\"roleName\":\"老师\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 17:10:23', 817);
INSERT INTO `sys_oper_log` VALUES (345, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2007,2025,2031,2043,2049,2002,2008,2026,2032,2044,2050],\"params\":{},\"roleId\":101,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 17:11:50', 118);
INSERT INTO `sys_oper_log` VALUES (346, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-09-13 17:10:23\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2007,2019,2025,2031,2037,2043,2049,2002,2006,2008,2012,2020,2024,2026,2030,2032,2036,2038,2042,2044,2048,2050,2052,2054],\"params\":{},\"roleId\":100,\"roleKey\":\"teacher\",\"roleName\":\"老师\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 17:12:03', 184);
INSERT INTO `sys_oper_log` VALUES (347, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"学生A\",\"params\":{},\"postIds\":[],\"roleIds\":[101],\"status\":\"0\",\"userId\":100,\"userName\":\"学生A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 17:12:45', 239);
INSERT INTO `sys_oper_log` VALUES (348, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"老师A\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":101,\"userName\":\"老师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 17:13:09', 168);
INSERT INTO `sys_oper_log` VALUES (349, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-09-13 17:12:45\",\"delFlag\":\"0\",\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"studentA\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[101],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":101,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":4,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"学生A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 17:14:13', 193);
INSERT INTO `sys_oper_log` VALUES (350, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-09-13 17:13:09\",\"delFlag\":\"0\",\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"TeacherA\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"teacher\",\"roleName\":\"老师\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"老师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 17:14:35', 175);
INSERT INTO `sys_oper_log` VALUES (351, '用户管理', 4, 'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()', 'PUT', 1, 'admin', NULL, '/system/user/authRole', '127.0.0.1', '内网IP', '{\"roleIds\":\"101\",\"userId\":\"100\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 17:14:44', 151);
INSERT INTO `sys_oper_log` VALUES (352, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"N\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2023-09-08 21:17:50\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 17:15:08', 65);
INSERT INTO `sys_oper_log` VALUES (353, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"成绩分析\",\"menuType\":\"F\",\"orderNum\":6,\"params\":{},\"parentId\":2049,\"perms\":\"student:score:getAvgScore\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 20:45:43', 78);
INSERT INTO `sys_oper_log` VALUES (354, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学院数量\",\"menuType\":\"F\",\"orderNum\":6,\"params\":{},\"parentId\":2001,\"perms\":\"student:college:selectcount\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 20:46:42', 179);
INSERT INTO `sys_oper_log` VALUES (355, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学生数量 \",\"menuType\":\"F\",\"orderNum\":6,\"params\":{},\"parentId\":2043,\"perms\":\"student:student:selectcount\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 20:47:29', 159);
INSERT INTO `sys_oper_log` VALUES (356, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"教师数量\",\"menuType\":\"F\",\"orderNum\":6,\"params\":{},\"parentId\":2019,\"perms\":\"student:teacher:selectcount\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 20:48:11', 169);
INSERT INTO `sys_oper_log` VALUES (357, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"专业数量\",\"menuType\":\"F\",\"orderNum\":6,\"params\":{},\"parentId\":2007,\"perms\":\"student:major:selectcount\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 20:48:55', 149);
INSERT INTO `sys_oper_log` VALUES (358, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-09-13 17:10:23\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2007,2019,2025,2031,2037,2043,2049,2002,2006,2056,2008,2012,2059,2020,2024,2058,2026,2030,2032,2036,2038,2042,2044,2048,2057,2050,2052,2054,2055],\"params\":{},\"roleId\":100,\"roleKey\":\"teacher\",\"roleName\":\"老师\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 20:50:00', 367);
INSERT INTO `sys_oper_log` VALUES (359, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":18,\"majId\":6,\"params\":{},\"setId\":17}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:46:48', 191);
INSERT INTO `sys_oper_log` VALUES (360, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":19,\"majId\":6,\"params\":{},\"setId\":18}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:47:01', 167);
INSERT INTO `sys_oper_log` VALUES (361, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":20,\"majId\":6,\"params\":{},\"setId\":19}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:47:11', 144);
INSERT INTO `sys_oper_log` VALUES (362, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":21,\"majId\":6,\"params\":{},\"setId\":20}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:47:31', 183);
INSERT INTO `sys_oper_log` VALUES (363, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":22,\"majId\":6,\"params\":{},\"setId\":21}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:47:41', 136);
INSERT INTO `sys_oper_log` VALUES (364, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":6,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"0\",\"stuId\":12,\"stuName\":\"学生AA\",\"stuNumber\":\"2220301\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:48:28', 180);
INSERT INTO `sys_oper_log` VALUES (365, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":6,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"0\",\"stuId\":13,\"stuName\":\"学生BB\",\"stuNumber\":\"2220302\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:49:04', 138);
INSERT INTO `sys_oper_log` VALUES (366, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":6,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"0\",\"stuId\":14,\"stuName\":\"学生CC\",\"stuNumber\":\"2220303\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:49:30', 118);
INSERT INTO `sys_oper_log` VALUES (367, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":6,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"1\",\"stuId\":15,\"stuName\":\"学生DD\",\"stuNumber\":\"2220304\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:49:51', 147);
INSERT INTO `sys_oper_log` VALUES (368, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":6,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"1\",\"stuId\":16,\"stuName\":\"学生EE\",\"stuNumber\":\"2220305\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:50:14', 174);
INSERT INTO `sys_oper_log` VALUES (369, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"高等数学\",\"params\":{},\"scoId\":70,\"score\":35,\"stuName\":\"学生AA\",\"stuNumber\":\"2220301\",\"teaName\":\"教师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:59:10', 156);
INSERT INTO `sys_oper_log` VALUES (370, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"高等数学\",\"params\":{},\"scoId\":75,\"score\":75,\"stuName\":\"学生BB\",\"stuNumber\":\"2220302\",\"teaName\":\"教师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:59:19', 175);
INSERT INTO `sys_oper_log` VALUES (371, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"高等数学\",\"params\":{},\"scoId\":80,\"score\":96,\"stuName\":\"学生CC\",\"stuNumber\":\"2220303\",\"teaName\":\"教师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:59:27', 54);
INSERT INTO `sys_oper_log` VALUES (372, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"高等数学\",\"params\":{},\"scoId\":85,\"score\":78,\"stuName\":\"学生DD\",\"stuNumber\":\"2220304\",\"teaName\":\"教师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:59:30', 178);
INSERT INTO `sys_oper_log` VALUES (373, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"高等数学\",\"params\":{},\"scoId\":90,\"score\":74,\"stuName\":\"学生EE\",\"stuNumber\":\"2220305\",\"teaName\":\"教师A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:59:35', 57);
INSERT INTO `sys_oper_log` VALUES (374, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"电子技术基础\",\"params\":{},\"scoId\":71,\"score\":63,\"stuName\":\"学生AA\",\"stuNumber\":\"2220301\",\"teaName\":\"教师B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:59:40', 147);
INSERT INTO `sys_oper_log` VALUES (375, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"电子技术基础\",\"params\":{},\"scoId\":76,\"score\":96,\"stuName\":\"学生BB\",\"stuNumber\":\"2220302\",\"teaName\":\"教师B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 22:59:44', 140);
INSERT INTO `sys_oper_log` VALUES (376, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"电子技术基础\",\"params\":{},\"scoId\":81,\"score\":63,\"stuName\":\"学生CC\",\"stuNumber\":\"2220303\",\"teaName\":\"教师B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:00:09', 99);
INSERT INTO `sys_oper_log` VALUES (377, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"电子技术基础\",\"params\":{},\"scoId\":86,\"score\":41,\"stuName\":\"学生DD\",\"stuNumber\":\"2220304\",\"teaName\":\"教师B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:00:14', 73);
INSERT INTO `sys_oper_log` VALUES (378, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"电子技术基础\",\"params\":{},\"scoId\":91,\"score\":71,\"stuName\":\"学生EE\",\"stuNumber\":\"2220305\",\"teaName\":\"教师B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:00:19', 89);
INSERT INTO `sys_oper_log` VALUES (379, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"Linux程序设计\",\"params\":{},\"scoId\":72,\"score\":96,\"stuName\":\"学生AA\",\"stuNumber\":\"2220301\",\"teaName\":\"教师C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:00:26', 52);
INSERT INTO `sys_oper_log` VALUES (380, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"Linux程序设计\",\"params\":{},\"scoId\":77,\"score\":76,\"stuName\":\"学生BB\",\"stuNumber\":\"2220302\",\"teaName\":\"教师C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:00:30', 141);
INSERT INTO `sys_oper_log` VALUES (381, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"Linux程序设计\",\"params\":{},\"scoId\":82,\"score\":36,\"stuName\":\"学生CC\",\"stuNumber\":\"2220303\",\"teaName\":\"教师C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:00:33', 110);
INSERT INTO `sys_oper_log` VALUES (382, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"Linux程序设计\",\"params\":{},\"scoId\":87,\"score\":45,\"stuName\":\"学生DD\",\"stuNumber\":\"2220304\",\"teaName\":\"教师C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:00:36', 94);
INSERT INTO `sys_oper_log` VALUES (383, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"Linux程序设计\",\"params\":{},\"scoId\":92,\"score\":75,\"stuName\":\"学生EE\",\"stuNumber\":\"2220305\",\"teaName\":\"教师C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:00:41', 121);
INSERT INTO `sys_oper_log` VALUES (384, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"嵌入式系统基础\",\"params\":{},\"scoId\":73,\"score\":96,\"stuName\":\"学生AA\",\"stuNumber\":\"2220301\",\"teaName\":\"教师D\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:00:46', 128);
INSERT INTO `sys_oper_log` VALUES (385, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"嵌入式系统基础\",\"params\":{},\"scoId\":78,\"score\":74,\"stuName\":\"学生BB\",\"stuNumber\":\"2220302\",\"teaName\":\"教师D\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:00:50', 170);
INSERT INTO `sys_oper_log` VALUES (386, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"嵌入式系统基础\",\"params\":{},\"scoId\":83,\"score\":65,\"stuName\":\"学生CC\",\"stuNumber\":\"2220303\",\"teaName\":\"教师D\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:00:58', 73);
INSERT INTO `sys_oper_log` VALUES (387, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"嵌入式系统基础\",\"params\":{},\"scoId\":88,\"score\":68,\"stuName\":\"学生DD\",\"stuNumber\":\"2220304\",\"teaName\":\"教师D\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:01:04', 156);
INSERT INTO `sys_oper_log` VALUES (388, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"嵌入式系统基础\",\"params\":{},\"scoId\":93,\"score\":74,\"stuName\":\"学生EE\",\"stuNumber\":\"2220305\",\"teaName\":\"教师D\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:01:08', 53);
INSERT INTO `sys_oper_log` VALUES (389, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"单片机原理与接口\",\"params\":{},\"scoId\":74,\"score\":63,\"stuName\":\"学生AA\",\"stuNumber\":\"2220301\",\"teaName\":\"教师E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:01:14', 101);
INSERT INTO `sys_oper_log` VALUES (390, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"单片机原理与接口\",\"params\":{},\"scoId\":79,\"score\":85,\"stuName\":\"学生BB\",\"stuNumber\":\"2220302\",\"teaName\":\"教师E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:01:19', 75);
INSERT INTO `sys_oper_log` VALUES (391, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"单片机原理与接口\",\"params\":{},\"scoId\":84,\"score\":96,\"stuName\":\"学生CC\",\"stuNumber\":\"2220303\",\"teaName\":\"教师E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:01:23', 51);
INSERT INTO `sys_oper_log` VALUES (392, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"单片机原理与接口\",\"params\":{},\"scoId\":89,\"score\":74,\"stuName\":\"学生DD\",\"stuNumber\":\"2220304\",\"teaName\":\"教师E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:01:28', 146);
INSERT INTO `sys_oper_log` VALUES (393, '成绩管理', 2, 'com.ruoyi.student.controller.DbScoreController.edit()', 'PUT', 1, 'admin', NULL, '/student/score', '127.0.0.1', '内网IP', '{\"couName\":\"单片机原理与接口\",\"params\":{},\"scoId\":94,\"score\":93,\"stuName\":\"学生EE\",\"stuNumber\":\"2220305\",\"teaName\":\"教师E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:01:32', 76);
INSERT INTO `sys_oper_log` VALUES (394, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":23,\"couName\":\"经济学基础\",\"couWay\":\"1\",\"params\":{},\"teaId\":17}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:07:26', 177);
INSERT INTO `sys_oper_log` VALUES (395, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":24,\"couName\":\"经济数学基础\",\"couWay\":\"2\",\"params\":{},\"teaId\":18}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:08:06', 145);
INSERT INTO `sys_oper_log` VALUES (396, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":25,\"couName\":\"会计学\",\"couWay\":\"1\",\"params\":{},\"teaId\":19}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:08:34', 147);
INSERT INTO `sys_oper_log` VALUES (397, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":26,\"couName\":\"审计学\",\"couWay\":\"2\",\"params\":{},\"teaId\":23}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:08:54', 146);
INSERT INTO `sys_oper_log` VALUES (398, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":27,\"couName\":\"公司理财\",\"couWay\":\"1\",\"params\":{},\"teaId\":24}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:09:29', 304);
INSERT INTO `sys_oper_log` VALUES (399, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":28,\"couName\":\"管理学\",\"couWay\":\"2\",\"params\":{},\"teaId\":17}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:12:27', 160);
INSERT INTO `sys_oper_log` VALUES (400, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":29,\"couName\":\"微观经济学\",\"couWay\":\"2\",\"params\":{},\"teaId\":24}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:13:02', 103);
INSERT INTO `sys_oper_log` VALUES (401, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":30,\"couName\":\"宏观经济学\",\"couWay\":\"2\",\"params\":{},\"teaId\":25}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:13:19', 63);
INSERT INTO `sys_oper_log` VALUES (402, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":31,\"couName\":\"运筹学\",\"couWay\":\"2\",\"params\":{},\"teaId\":21}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:13:40', 146);
INSERT INTO `sys_oper_log` VALUES (403, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":32,\"couName\":\"消费心理学\",\"couWay\":\"1\",\"params\":{},\"teaId\":27}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:13:55', 76);
INSERT INTO `sys_oper_log` VALUES (404, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":33,\"couName\":\"财务管理\",\"couWay\":\"2\",\"params\":{},\"teaId\":28}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:15:51', 150);
INSERT INTO `sys_oper_log` VALUES (405, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":34,\"couName\":\"经济法\",\"couWay\":\"2\",\"params\":{},\"teaId\":32}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:16:08', 149);
INSERT INTO `sys_oper_log` VALUES (406, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":35,\"couName\":\"人力资源管理\",\"couWay\":\"1\",\"params\":{},\"teaId\":30}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:16:45', 168);
INSERT INTO `sys_oper_log` VALUES (407, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":36,\"couName\":\"经营管理\",\"couWay\":\"2\",\"params\":{},\"teaId\":28}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:17:12', 77);
INSERT INTO `sys_oper_log` VALUES (408, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":37,\"couName\":\"会计实务\",\"couWay\":\"1\",\"params\":{},\"teaId\":32}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:17:35', 218);
INSERT INTO `sys_oper_log` VALUES (409, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":23,\"majId\":7,\"params\":{},\"setId\":22}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:18:01', 156);
INSERT INTO `sys_oper_log` VALUES (410, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":24,\"majId\":7,\"params\":{},\"setId\":23}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:18:27', 95);
INSERT INTO `sys_oper_log` VALUES (411, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":27,\"majId\":8,\"params\":{},\"setId\":27}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:20:06', 145);
INSERT INTO `sys_oper_log` VALUES (412, '开发管理', 2, 'com.ruoyi.student.controller.DbSetController.edit()', 'PUT', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":28,\"couName\":\"公司理财\",\"majId\":8,\"majName\":\"市场营销\",\"params\":{},\"setId\":27}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:20:27', 175);
INSERT INTO `sys_oper_log` VALUES (413, '开发管理', 1, 'com.ruoyi.student.controller.DbSetController.add()', 'POST', 1, 'admin', NULL, '/student/set', '127.0.0.1', '内网IP', '{\"couId\":33,\"majId\":9,\"params\":{},\"setId\":32}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:21:58', 56);
INSERT INTO `sys_oper_log` VALUES (414, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":7,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"1\",\"stuId\":17,\"stuName\":\"学生FF\",\"stuNumber\":\"2220406\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:23:43', 152);
INSERT INTO `sys_oper_log` VALUES (415, '学生管理', 1, 'com.ruoyi.student.controller.DbStudentController.add()', 'POST', 1, 'admin', NULL, '/student/student', '127.0.0.1', '内网IP', '{\"clsId\":8,\"params\":{},\"stuAddress\":\"广东\",\"stuGender\":\"0\",\"stuId\":22,\"stuName\":\"学生AAA\",\"stuNumber\":\"2220501\",\"stuPhone\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 23:27:10', 153);
INSERT INTO `sys_oper_log` VALUES (416, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":38,\"couName\":\"营销策划\",\"couWay\":\"1\",\"params\":{},\"teaId\":31}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:49:03', 155);
INSERT INTO `sys_oper_log` VALUES (417, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":39,\"couName\":\"网页配色\",\"couWay\":\"2\",\"params\":{},\"teaId\":31}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:49:18', 147);
INSERT INTO `sys_oper_log` VALUES (418, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":40,\"couName\":\"电商管理务实\",\"couWay\":\"1\",\"params\":{},\"teaId\":30}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:49:41', 147);
INSERT INTO `sys_oper_log` VALUES (419, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":41,\"couName\":\"国际贸易理论\",\"couWay\":\"1\",\"params\":{},\"teaId\":30}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:50:02', 144);
INSERT INTO `sys_oper_log` VALUES (420, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":42,\"couName\":\"PS设计\",\"couWay\":\"2\",\"params\":{},\"teaId\":20}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:50:53', 160);
INSERT INTO `sys_oper_log` VALUES (421, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":43,\"couName\":\"管理统计学\",\"couWay\":\"2\",\"params\":{},\"teaId\":28}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:52:07', 149);
INSERT INTO `sys_oper_log` VALUES (422, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":44,\"couName\":\"物流运筹学\",\"couWay\":\"1\",\"params\":{},\"teaId\":21}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:52:26', 167);
INSERT INTO `sys_oper_log` VALUES (423, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":45,\"couName\":\"采购与供应管理\",\"couWay\":\"2\",\"params\":{},\"teaId\":23}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:52:51', 152);
INSERT INTO `sys_oper_log` VALUES (424, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":46,\"couName\":\"商品学概论\",\"couWay\":\"1\",\"params\":{},\"teaId\":21}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:53:15', 132);
INSERT INTO `sys_oper_log` VALUES (425, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":47,\"couName\":\"港口物流\",\"couWay\":\"1\",\"params\":{},\"teaId\":28}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:53:32', 183);
INSERT INTO `sys_oper_log` VALUES (426, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":48,\"couName\":\"计量经济学\",\"couWay\":\"1\",\"params\":{},\"teaId\":25}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:54:34', 150);
INSERT INTO `sys_oper_log` VALUES (427, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":49,\"couName\":\"商务数据分析\",\"couWay\":\"2\",\"params\":{},\"teaId\":31}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:54:57', 170);
INSERT INTO `sys_oper_log` VALUES (428, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":50,\"couName\":\"大数据基础设施\",\"couWay\":\"2\",\"params\":{},\"teaId\":15}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:55:20', 149);
INSERT INTO `sys_oper_log` VALUES (429, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":51,\"couName\":\"数据库系统\",\"couWay\":\"1\",\"params\":{},\"teaId\":30}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:55:44', 151);
INSERT INTO `sys_oper_log` VALUES (430, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":20,\"couId\":52,\"couName\":\"数据仓库与数据挖掘\",\"couWay\":\"2\",\"params\":{},\"teaId\":30}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 08:56:08', 143);
INSERT INTO `sys_oper_log` VALUES (431, '课程管理', 1, 'com.ruoyi.student.controller.DbCourseController.add()', 'POST', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":4,\"couHour\":88,\"couId\":53,\"couName\":\"士大夫地方\",\"couWay\":\"2\",\"params\":{},\"teaId\":9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 09:36:12', 166);
INSERT INTO `sys_oper_log` VALUES (432, '课程管理', 3, 'com.ruoyi.student.controller.DbCourseController.remove()', 'DELETE', 1, 'admin', NULL, '/student/course/53', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 09:36:32', 109);
INSERT INTO `sys_oper_log` VALUES (433, '课程管理', 2, 'com.ruoyi.student.controller.DbCourseController.edit()', 'PUT', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":3,\"couHour\":20,\"couId\":13,\"couName\":\"计算机网络\",\"couWay\":\"1\",\"params\":{},\"teaId\":14,\"teaName\":\"教师F\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 10:01:20', 105);
INSERT INTO `sys_oper_log` VALUES (434, '课程管理', 2, 'com.ruoyi.student.controller.DbCourseController.edit()', 'PUT', 1, 'admin', NULL, '/student/course', '127.0.0.1', '内网IP', '{\"couCredit\":3,\"couHour\":20,\"couId\":13,\"couName\":\"计算机网络\",\"couWay\":\"2\",\"params\":{},\"teaId\":14,\"teaName\":\"教师F\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 10:01:28', 83);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-09-08 21:17:45', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-09-08 21:17:45', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-09-08 21:17:45', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-09-08 21:17:45', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-09-08 21:17:45', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2023-09-08 21:17:45', '', NULL, '普通角色');
INSERT INTO `sys_role` VALUES (100, '老师', 'teacher', 3, '1', 1, 1, '0', '0', 'admin', '2023-09-13 17:10:23', 'admin', '2023-09-13 20:50:00', NULL);
INSERT INTO `sys_role` VALUES (101, '学生', 'student', 4, '1', 1, 1, '0', '0', 'admin', '2023-09-13 17:11:50', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2002);
INSERT INTO `sys_role_menu` VALUES (100, 2006);
INSERT INTO `sys_role_menu` VALUES (100, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2008);
INSERT INTO `sys_role_menu` VALUES (100, 2012);
INSERT INTO `sys_role_menu` VALUES (100, 2019);
INSERT INTO `sys_role_menu` VALUES (100, 2020);
INSERT INTO `sys_role_menu` VALUES (100, 2024);
INSERT INTO `sys_role_menu` VALUES (100, 2025);
INSERT INTO `sys_role_menu` VALUES (100, 2026);
INSERT INTO `sys_role_menu` VALUES (100, 2030);
INSERT INTO `sys_role_menu` VALUES (100, 2031);
INSERT INTO `sys_role_menu` VALUES (100, 2032);
INSERT INTO `sys_role_menu` VALUES (100, 2036);
INSERT INTO `sys_role_menu` VALUES (100, 2037);
INSERT INTO `sys_role_menu` VALUES (100, 2038);
INSERT INTO `sys_role_menu` VALUES (100, 2042);
INSERT INTO `sys_role_menu` VALUES (100, 2043);
INSERT INTO `sys_role_menu` VALUES (100, 2044);
INSERT INTO `sys_role_menu` VALUES (100, 2048);
INSERT INTO `sys_role_menu` VALUES (100, 2049);
INSERT INTO `sys_role_menu` VALUES (100, 2050);
INSERT INTO `sys_role_menu` VALUES (100, 2052);
INSERT INTO `sys_role_menu` VALUES (100, 2054);
INSERT INTO `sys_role_menu` VALUES (100, 2055);
INSERT INTO `sys_role_menu` VALUES (100, 2056);
INSERT INTO `sys_role_menu` VALUES (100, 2057);
INSERT INTO `sys_role_menu` VALUES (100, 2058);
INSERT INTO `sys_role_menu` VALUES (100, 2059);
INSERT INTO `sys_role_menu` VALUES (101, 2000);
INSERT INTO `sys_role_menu` VALUES (101, 2001);
INSERT INTO `sys_role_menu` VALUES (101, 2002);
INSERT INTO `sys_role_menu` VALUES (101, 2007);
INSERT INTO `sys_role_menu` VALUES (101, 2008);
INSERT INTO `sys_role_menu` VALUES (101, 2025);
INSERT INTO `sys_role_menu` VALUES (101, 2026);
INSERT INTO `sys_role_menu` VALUES (101, 2031);
INSERT INTO `sys_role_menu` VALUES (101, 2032);
INSERT INTO `sys_role_menu` VALUES (101, 2043);
INSERT INTO `sys_role_menu` VALUES (101, 2044);
INSERT INTO `sys_role_menu` VALUES (101, 2049);
INSERT INTO `sys_role_menu` VALUES (101, 2050);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-09-14 08:44:47', 'admin', '2023-09-08 21:17:44', '', '2023-09-14 08:44:46', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-09-08 21:17:44', 'admin', '2023-09-08 21:17:44', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, 'studentA', 'studentA', '00', '', '', '0', '', '$2a$10$fmrg07mB5riGq7RQ.bhe8.jqng.a8yXiG4A7tPFxhFml59WVIFRze', '0', '0', '127.0.0.1', '2023-09-13 17:27:40', 'admin', '2023-09-13 17:12:45', 'admin', '2023-09-13 17:27:40', NULL);
INSERT INTO `sys_user` VALUES (101, NULL, 'teacherA', 'TeacherA', '00', '', '', '0', '', '$2a$10$g6Usu6unntVURvLOPiV/Ye047hxHlY1El0unWNu1xsKwqmwrq9Ltq', '0', '0', '127.0.0.1', '2023-09-13 20:51:02', 'admin', '2023-09-13 17:13:09', 'admin', '2023-09-13 20:51:02', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);
INSERT INTO `sys_user_role` VALUES (101, 100);

-- ----------------------------
-- Triggers structure for table db_score
-- ----------------------------
DROP TRIGGER IF EXISTS `calculate_gpa`;
delimiter ;;
CREATE TRIGGER `calculate_gpa` BEFORE UPDATE ON `db_score` FOR EACH ROW BEGIN
     IF NEW.score IS NOT NULL THEN
        SET NEW.GPA = NEW.score * 0.05;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table db_score
-- ----------------------------
DROP TRIGGER IF EXISTS `update_avg_gpa`;
delimiter ;;
CREATE TRIGGER `update_avg_gpa` AFTER UPDATE ON `db_score` FOR EACH ROW BEGIN
    UPDATE db_student s
    SET stu_avg = (
        SELECT AVG(GPA)
        FROM db_score sc
        WHERE sc.stu_id = s.stu_id
    )
    WHERE s.stu_id = NEW.stu_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table db_student
-- ----------------------------
DROP TRIGGER IF EXISTS `insert_student_trigger`;
delimiter ;;
CREATE TRIGGER `insert_student_trigger` AFTER INSERT ON `db_student` FOR EACH ROW BEGIN
DECLARE done INT DEFAULT FALSE;
    DECLARE cou INT;
		DECLARE tea INT;
    DECLARE c1 CURSOR FOR select DISTINCT db_set.cou_id,tea_id from db_set,db_course,db_class where  db_class.cls_id = New.cls_id and db_class.maj_id = db_set.maj_id and db_set.cou_id =  db_course.cou_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    OPEN c1;
    qq: WHILE done = false DO
        FETCH c1 INTO cou,tea;
        IF done = true THEN
            LEAVE qq;
        END IF;
        insert into db_score(stu_id,stu_name,cou_id,tea_id,score)
		values (NEW.stu_id,New.stu_name,cou,tea,null);    
    END WHILE;
    CLOSE c1;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table db_student
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_student_scores`;
delimiter ;;
CREATE TRIGGER `delete_student_scores` AFTER DELETE ON `db_student` FOR EACH ROW BEGIN
    DELETE FROM db_score WHERE stu_id = OLD.stu_id;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
