/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : exp4

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 19/01/2021 13:31:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `customer_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customer_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_rank` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('C1001', '黄燕', '3', '13913167516', '601268652', 'ming05@hotmail.com');
INSERT INTO `customer` VALUES ('C1002', '余敏', '2', '15329275632', '323146519', 'yongcao@gang.cn');
INSERT INTO `customer` VALUES ('C1003', '李红霞', '3', '13859530051', '311822931', 'juandeng@gmail.com');
INSERT INTO `customer` VALUES ('C1004', '郭伟', '3', '18633873931', '2333971', 'chao46@mx.net');
INSERT INTO `customer` VALUES ('C1005', '孙瑞', '2', '13308561763', '633336648', 'qiang70@leijun.cn');
INSERT INTO `customer` VALUES ('C1006', '孙丹', '1', '18543158787', '483399221', 'amo@yangwei.cn');
INSERT INTO `customer` VALUES ('C1007', '段帆', '2', '18588969713', '482630273', 'yuanli@gmail.com');
INSERT INTO `customer` VALUES ('C1008', '张秀英', '2', '18037024932', '633264200', 'jiezhong@mg.cn');
INSERT INTO `customer` VALUES ('C1009', '刘凤兰', '2', '18940393456', '63346574', 'okong@13.cn');
INSERT INTO `customer` VALUES ('C1010', '王敏', '3', '18930657285', '884446345', 'ming14@wei.cn');
INSERT INTO `customer` VALUES ('C1011', '李杰', '2', '18676532109', '29514666', 'jingsu@yangming.cn');
INSERT INTO `customer` VALUES ('C1012', '陈海燕', '2', '15641308031', '432679405', 'guiying62@gmail.com');
INSERT INTO `customer` VALUES ('C1013', '李帆', '2', '18898471720', '393055462', 'yanxie@fangqin.cn');
INSERT INTO `customer` VALUES ('C1014', '符文', '2', '13944630163', '373007622', 'idai@hotmail.com');
INSERT INTO `customer` VALUES ('C1015', '陆宁', '3', '15909571719', '291388022', 'kliao@83.net');
INSERT INTO `customer` VALUES ('C1016', '朱红梅', '2', '13697530119', '246212195', 'pinggu@gu.cn');
INSERT INTO `customer` VALUES ('C1017', '李桂珍', '3', '15859700742', '615058250', 'juan38@gmail.com');
INSERT INTO `customer` VALUES ('C1018', '刘桂兰', '2', '15782052515', '787947107', 'jiesun@qiangyang.cn');
INSERT INTO `customer` VALUES ('C1019', '李桂荣', '2', '15656528100', '191630345', 'xiazhong@weili.cn');
INSERT INTO `customer` VALUES ('C1020', '刘瑜', '3', '15034953998', '203207831', 'liwei@gmail.com');
INSERT INTO `customer` VALUES ('C1021', '吴红梅', '3', '13023714112', '765174709', 'xiulan92@zou.cn');
INSERT INTO `customer` VALUES ('C1022', '魏丽', '2', '13757007773', '646736673', 'juan58@co.cn');
INSERT INTO `customer` VALUES ('C1023', '孟丹丹', '1', '15035873320', '289674749', 'xiulan88@wufu.cn');
INSERT INTO `customer` VALUES ('C1024', '张洋', '2', '13241239618', '374275150', 'tbai@ming.cn');
INSERT INTO `customer` VALUES ('C1025', '岑丽娟', '2', '15837730576', '525166172', 'xiuying95@gmail.com');
INSERT INTO `customer` VALUES ('C1026', '屈欣', '2', '14703021401', '804101636', 'xiuying08@hotmail.com');
INSERT INTO `customer` VALUES ('C1027', '毛荣', '2', '15862421796', '695548418', 'kongjing@juanliu.cn');
INSERT INTO `customer` VALUES ('C1028', '尚霞', '3', '15662452547', '29431716', 'yanyong@liang.cn');
INSERT INTO `customer` VALUES ('C1029', '姚淑华', '2', '18133363886', '712426077', 'guiyingqin@gmail.com');
INSERT INTO `customer` VALUES ('C1030', '杨凯', '1', '13278239207', '312167912', 'chao96@xiulanqiu.cn');
INSERT INTO `customer` VALUES ('C1031', '刘涛', '3', '15313588178', '117192434', 'xxiao@pingtan.cn');
INSERT INTO `customer` VALUES ('C1032', '吴颖', '1', '13248425017', '339561831', 'wyin@jingyang.com');
INSERT INTO `customer` VALUES ('C1033', '韩桂花', '2', '13831562627', '389160135', 'fang55@xionghu.cn');
INSERT INTO `customer` VALUES ('C1034', '郑春梅', '2', '14545620173', '176975065', 'yangmao@minqiao.cn');
INSERT INTO `customer` VALUES ('C1035', '陈志强', '3', '18982339083', '893700615', 'umeng@juntao.cn');
INSERT INTO `customer` VALUES ('C1036', '李勇', '3', '13743208063', '306551467', 'jieqiu@sf.net');
INSERT INTO `customer` VALUES ('C1037', '石洋', '1', '15024002900', '863511218', 'yong48@yahoo.com');
INSERT INTO `customer` VALUES ('C1038', '陈雷', '3', '14788484313', '344078436', 'fliao@yahoo.com');
INSERT INTO `customer` VALUES ('C1039', '罗兵', '2', '14748053738', '557136268', 'juan73@hotmail.com');
INSERT INTO `customer` VALUES ('C1040', '刘萍', '2', '13501711274', '644978942', 'yanliang@xionghao.cn');
INSERT INTO `customer` VALUES ('C1041', '孟强', '3', '13214952721', '390153638', 'na07@gmail.com');
INSERT INTO `customer` VALUES ('C1042', '张桂英', '3', '15884362658', '394653078', 'lyi@yahoo.com');
INSERT INTO `customer` VALUES ('C1043', '陈洁', '3', '14543491267', '751604569', 'jpan@hotmail.com');
INSERT INTO `customer` VALUES ('C1044', '叶磊', '2', '13225340297', '975316157', 'leiqin@hotmail.com');
INSERT INTO `customer` VALUES ('C1045', '王琳', '1', '15397595349', '133237842', 'yinqiang@natao.net');
INSERT INTO `customer` VALUES ('C1046', '班丹丹', '2', '13789082614', '337326735', 'vmao@xm.net');
INSERT INTO `customer` VALUES ('C1047', '李丽丽', '2', '15324662188', '381693781', 'chao11@nasong.cn');
INSERT INTO `customer` VALUES ('C1048', '王艳', '2', '15682242243', '205523594', 'changming@weizhao.cn');
INSERT INTO `customer` VALUES ('C1049', '张杨', '2', '15506968045', '585331181', 'ydu@hotmail.com');
INSERT INTO `customer` VALUES ('C1050', '唐桂花', '2', '18869176203', '672330101', 'xiulan78@gmail.com');
INSERT INTO `customer` VALUES ('C1051', '贾林', '3', '13496769414', '975223706', 'suchao@yahoo.com');
INSERT INTO `customer` VALUES ('C1052', '姜阳', '2', '13831133689', '102422404', 'junpeng@yahoo.com');
INSERT INTO `customer` VALUES ('C1053', '李桂珍', '3', '13553174667', '290271586', 'akang@gmail.com');
INSERT INTO `customer` VALUES ('C1054', '江秀梅', '1', '15249001540', '184463857', 'xjiang@gmail.com');
INSERT INTO `customer` VALUES ('C1055', '郑兵', '1', '13571890473', '521503334', 'qiangzeng@renli.cn');
INSERT INTO `customer` VALUES ('C1056', '王瑜', '2', '15996266274', '668793842', 'jgong@hotmail.com');
INSERT INTO `customer` VALUES ('C1057', '王桂英', '3', '13541751188', '830283324', 'mjin@yanfang.cn');
INSERT INTO `customer` VALUES ('C1058', '吴金凤', '2', '15376514034', '800273794', 'ltian@74.cn');
INSERT INTO `customer` VALUES ('C1059', '范玉英', '2', '18151326029', '461214123', 'yonggong@yong.cn');
INSERT INTO `customer` VALUES ('C1060', '白彬', '2', '15581075624', '34569630', 'qiangang@gmail.com');
INSERT INTO `customer` VALUES ('C1061', '郭利', '1', '15526573154', '469985980', 'wei84@yahoo.com');
INSERT INTO `customer` VALUES ('C1062', '孙俊', '1', '13324140356', '45968527', 'qiang70@gmail.com');
INSERT INTO `customer` VALUES ('C1063', '李萍', '2', '18866009606', '182013093', 'yongwen@00.org');
INSERT INTO `customer` VALUES ('C1064', '周颖', '1', '13163039963', '264168366', 'wenyan@chao.net');
INSERT INTO `customer` VALUES ('C1065', '刘芳', '3', '18149663595', '410316770', 'taodong@18.cn');
INSERT INTO `customer` VALUES ('C1066', '庄洁', '3', '13657346598', '185285274', 'ping86@jieyin.net');
INSERT INTO `customer` VALUES ('C1067', '李刚', '2', '18048965765', '533436268', 'dingchao@yan.cn');
INSERT INTO `customer` VALUES ('C1068', '张桂荣', '1', '15537156016', '344976481', 'xulei@gmail.com');
INSERT INTO `customer` VALUES ('C1069', '范志强', '3', '15503243758', '874157165', 'fchang@jc.net');
INSERT INTO `customer` VALUES ('C1070', '顾玉华', '2', '14565279762', '413441871', 'mxiang@hotmail.com');
INSERT INTO `customer` VALUES ('C1071', '吴英', '2', '18793973751', '972578795', 'lei33@bw.cn');
INSERT INTO `customer` VALUES ('C1072', '刘秀芳', '1', '15817742572', '51291324', 'taoliang@hotmail.com');
INSERT INTO `customer` VALUES ('C1073', '耿秀兰', '2', '13403523507', '294212555', 'fdeng@gmail.com');
INSERT INTO `customer` VALUES ('C1074', '陈倩', '1', '15671185283', '329537811', 'tgao@yahoo.com');
INSERT INTO `customer` VALUES ('C1075', '张飞', '1', '15003568395', '651975995', 'zwen@uv.cn');
INSERT INTO `customer` VALUES ('C1076', '张婷', '2', '15279436981', '691388698', 'wangfang@gmail.com');
INSERT INTO `customer` VALUES ('C1077', '黄瑜', '1', '13724073167', '955716238', 'xia92@hotmail.com');
INSERT INTO `customer` VALUES ('C1078', '林桂花', '1', '15986635791', '126994933', 'xiulansu@junjie.cn');
INSERT INTO `customer` VALUES ('C1079', '刘强', '1', '18068402333', '423769685', 'xiongxia@hotmail.com');
INSERT INTO `customer` VALUES ('C1080', '何军', '1', '13674984972', '969975075', 'bjiang@hotmail.com');
INSERT INTO `customer` VALUES ('C1081', '汪桂花', '2', '18988713491', '572869427', 'jing65@leimeng.cn');
INSERT INTO `customer` VALUES ('C1082', '李淑珍', '3', '13208332891', '525090963', 'vfeng@kang.cn');
INSERT INTO `customer` VALUES ('C1083', '王秀兰', '1', '13213739260', '841338234', 'ming41@leixiulan.com');
INSERT INTO `customer` VALUES ('C1084', '赵辉', '1', '13103912737', '740207749', 'tzou@jun.cn');
INSERT INTO `customer` VALUES ('C1085', '周超', '1', '18556438823', '593490792', 'dengming@xiulanjun.cn');
INSERT INTO `customer` VALUES ('C1086', '岳阳', '1', '13051909244', '915150138', 'molei@gmail.com');
INSERT INTO `customer` VALUES ('C1087', '杨霞', '1', '15675099282', '859870136', 'gang02@yahoo.com');
INSERT INTO `customer` VALUES ('C1088', '雷莉', '1', '15613570104', '26589330', 'tianfang@liuguo.cn');
INSERT INTO `customer` VALUES ('C1089', '张俊', '1', '18938633611', '481790454', 'juansong@jiegang.cn');
INSERT INTO `customer` VALUES ('C1090', '张洋', '1', '15528614751', '133488918', 'hlu@zengduan.cn');
INSERT INTO `customer` VALUES ('C1091', '刘建军', '2', '13766914030', '386433753', 'tangang@hotmail.com');
INSERT INTO `customer` VALUES ('C1092', '姜玉珍', '1', '18237518344', '314736201', 'hpan@ai.net');
INSERT INTO `customer` VALUES ('C1093', '易瑞', '2', '18063958045', '765992548', 'sshen@maoxia.com');
INSERT INTO `customer` VALUES ('C1094', '吴丽', '3', '13982834841', '190780650', 'daiwei@ma.cn');
INSERT INTO `customer` VALUES ('C1095', '房浩', '3', '13399375165', '953895213', 'na23@gmail.com');
INSERT INTO `customer` VALUES ('C1096', '赵颖', '2', '15313639465', '826051561', 'jingyin@gmail.com');
INSERT INTO `customer` VALUES ('C1097', '杨俊', '3', '15771279601', '151222648', 'fang43@gmail.com');
INSERT INTO `customer` VALUES ('C1098', '涂建平', '1', '18290959735', '615258265', 'min93@gmail.com');
INSERT INTO `customer` VALUES ('C1099', '樊鑫', '2', '13644172925', '244857553', 'yinxiulan@yahoo.com');
INSERT INTO `customer` VALUES ('C1100', '张彬', '3', '13561534941', '728600548', 'fangyin@junxiulan.cn');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `employee_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employee_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `employee_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `supervisor_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `employee_rank` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`employee_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('E1001', '老板', '18921435625', '0', '新手', '1');
INSERT INTO `employee` VALUES ('E1002', '模型主管', '13022761608', '1', '老手', '2');
INSERT INTO `employee` VALUES ('E1003', '渲染主管', '14505351602', '2', '新手', '2');
INSERT INTO `employee` VALUES ('E1004', '后期主管', '13676635195', '3', '新手', '2');
INSERT INTO `employee` VALUES ('E1005', '谢涛', '13884520114', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1006', '邹晨', '13738684121', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1007', '魏晶', '13944057029', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1008', '黄浩', '14521396514', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1009', '萧华', '13648827334', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1010', '冉涛', '13370084939', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1011', '崔凤英', '14737240005', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1012', '刘宁', '15989839121', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1013', '彭海燕', '13112667581', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1014', '王林', '15314558994', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1015', '倪鹏', '18867177901', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1016', '贾坤', '15821357317', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1017', '秦静', '18558741194', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1018', '文瑞', '14741184117', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1019', '桑帅', '15900438117', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1020', '李玉', '14591335632', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1021', '刘东', '15773277633', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1022', '侯飞', '14541215588', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1023', '高云', '13355712259', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1024', '张凤英', '14732507498', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1025', '蒋丽丽', '14747026841', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1026', '邓桂英', '18877264635', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1027', '李红', '13673415144', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1028', '金帆', '15961448470', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1029', '初宁', '18733561065', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1030', '庄桂英', '15934179137', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1031', '高海燕', '18553375393', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1032', '张凤兰', '13424764021', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1033', '张浩', '15358603969', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1034', '廖宁', '18685215448', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1035', '张建', '15111489961', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1036', '刘慧', '15812095646', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1037', '黄飞', '15643058378', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1038', '马荣', '13662035694', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1039', '廉丹丹', '13613142011', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1040', '杨强', '13068025482', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1041', '赵玉', '18204379106', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1042', '石欣', '13338804431', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1043', '叶芳', '13531284102', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1044', '原晨', '14562554148', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1045', '李文', '14518374124', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1046', '孟倩', '18262531837', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1047', '冯红霞', '13238654118', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1048', '王林', '13554270878', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1049', '李淑英', '18277216033', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1050', '郭楠', '18873719230', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1051', '宋艳', '15007866899', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1052', '李芳', '18645065936', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1053', '尤俊', '18645451548', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1054', '阙桂兰', '15954887656', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1055', '石坤', '13408231359', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1056', '李建军', '13255745679', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1057', '刁伟', '14760821562', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1058', '洪桂芳', '18512608466', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1059', '刘瑞', '18900792877', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1060', '康平', '14768473324', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1061', '齐娜', '13652414724', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1062', '沈桂花', '13670007866', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1063', '武浩', '15559593711', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1064', '张海燕', '15179125175', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1065', '徐丽丽', '18997622207', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1066', '王梅', '13618038180', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1067', '曾桂荣', '15140408457', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1068', '李峰', '13580108489', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1069', '王瑜', '18298698666', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1070', '崔云', '13956953206', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1071', '朱芳', '13198320595', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1072', '王淑兰', '13198437735', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1073', '周建平', '13595733567', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1074', '汪健', '15346885926', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1075', '李小红', '18224576429', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1076', '任丹丹', '13517643182', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1077', '吴玲', '15983958409', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1078', '梁波', '13546890058', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1079', '徐建平', '18762311878', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1080', '张峰', '13731034332', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1081', '季帆', '14512008431', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1082', '何金凤', '14767542348', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1083', '丁畅', '13278195265', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1084', '周丽丽', '15117727675', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1085', '周鹏', '18280058595', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1086', '王宁', '15053943734', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1087', '李桂花', '18827330179', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1088', '陶瑞', '13006922114', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1089', '余建平', '13690722036', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1090', '金冬梅', '13400823570', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1091', '鞠冬梅', '18191745941', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1092', '包刚', '15600388945', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1093', '魏淑兰', '13675352231', '2', '老手', '3');
INSERT INTO `employee` VALUES ('E1094', '张桂芝', '18689692709', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1095', '史秀芳', '18679874814', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1096', '孙平', '18784325753', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1097', '梁海燕', '18235916870', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1098', '张桂香', '15873919303', '1', '新手', '3');
INSERT INTO `employee` VALUES ('E1099', '李红', '18646382687', '3', '新手', '3');
INSERT INTO `employee` VALUES ('E1100', '吴秀兰', '15711226205', '3', '新手', '3');

-- ----------------------------
-- Table structure for employee_salary
-- ----------------------------
DROP TABLE IF EXISTS `employee_salary`;
CREATE TABLE `employee_salary`  (
  `employee_salary_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employee_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project_number` int(0) NULL DEFAULT NULL,
  `attendance` float NULL DEFAULT NULL,
  `salary` float NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`employee_salary_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_salary
-- ----------------------------
INSERT INTO `employee_salary` VALUES ('1001', 'E1001', 3, 0.98, 63215, '2021-01-05');
INSERT INTO `employee_salary` VALUES ('1002', 'E1002', 5, 0.89, 45632, '2021-01-04');
INSERT INTO `employee_salary` VALUES ('1003', 'E1003', 12, 0.96, 156325, '2021-01-16');
INSERT INTO `employee_salary` VALUES ('1004', 'E1004', 6, 1, 80000, '2021-01-06');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `project_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `employee_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_date` date NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_date` date NULL DEFAULT NULL,
  `project_money` float NULL DEFAULT NULL,
  PRIMARY KEY (`project_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('P1001', '中华地产承包', 'C1002', 'E1001', '2021-01-16', '0', NULL, 5000);
INSERT INTO `project` VALUES ('P1002', '重庆房地产', 'C1001', 'E1002', '2021-01-06', '1', '2021-01-10', 10000);
INSERT INTO `project` VALUES ('P1003', '南岸房地产', 'C1003', 'E1003', '2021-01-01', '0', NULL, 6540);
INSERT INTO `project` VALUES ('P1004', '双福房地产', 'C1002', 'E1001', '2021-01-01', '0', NULL, 96420);
INSERT INTO `project` VALUES ('P1005', '重庆房地产', 'C1001', 'E1003', '2021-01-06', '1', '2021-01-10', 10000);

-- ----------------------------
-- Table structure for project_salary
-- ----------------------------
DROP TABLE IF EXISTS `project_salary`;
CREATE TABLE `project_salary`  (
  `project_salary_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `employee_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quality` float NULL DEFAULT NULL,
  `project_money` float NULL DEFAULT NULL,
  `employee_money` float NULL DEFAULT NULL,
  PRIMARY KEY (`project_salary_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_salary
-- ----------------------------
INSERT INTO `project_salary` VALUES ('1001', 'P1001', '中华地产承包', 'C1002', 'E1002', 0.8, 5000, NULL);
INSERT INTO `project_salary` VALUES ('1002', 'P1001', '中华地产承包', 'C1002', 'E1001', 0.9, 5000, NULL);
INSERT INTO `project_salary` VALUES ('1003', 'P1001', '中华地产承包', 'C1002', 'E1003', 1, 5000, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `root` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('E1001', '123456', '1');
INSERT INTO `users` VALUES ('E1002', '666666', '2');
INSERT INTO `users` VALUES ('E1003', '666666', '2');
INSERT INTO `users` VALUES ('E1004', '333333', '2');
INSERT INTO `users` VALUES ('E1005', '123456', '3');
INSERT INTO `users` VALUES ('E1006', '123456', '3');
INSERT INTO `users` VALUES ('E1007', '123456', '3');
INSERT INTO `users` VALUES ('E1008', '123456', '3');
INSERT INTO `users` VALUES ('E1009', '123456', '3');
INSERT INTO `users` VALUES ('E1010', '123456', '3');
INSERT INTO `users` VALUES ('E1011', '123456', '3');
INSERT INTO `users` VALUES ('E1012', '123456', '3');
INSERT INTO `users` VALUES ('E1013', '123456', '3');
INSERT INTO `users` VALUES ('E1014', '123456', '3');
INSERT INTO `users` VALUES ('E1015', '123456', '3');
INSERT INTO `users` VALUES ('E1016', '123456', '3');
INSERT INTO `users` VALUES ('E1017', '123456', '3');
INSERT INTO `users` VALUES ('E1018', '123456', '3');
INSERT INTO `users` VALUES ('E1019', '123456', '3');
INSERT INTO `users` VALUES ('E1020', '123456', '3');
INSERT INTO `users` VALUES ('E1021', '123456', '3');
INSERT INTO `users` VALUES ('E1022', '123456', '3');
INSERT INTO `users` VALUES ('E1023', '123456', '3');
INSERT INTO `users` VALUES ('E1024', '123456', '3');
INSERT INTO `users` VALUES ('E1025', '123456', '3');
INSERT INTO `users` VALUES ('E1026', '123456', '3');
INSERT INTO `users` VALUES ('E1027', '123456', '3');
INSERT INTO `users` VALUES ('E1028', '123456', '3');
INSERT INTO `users` VALUES ('E1029', '123456', '3');
INSERT INTO `users` VALUES ('E1030', '123456', '3');
INSERT INTO `users` VALUES ('E1031', '123456', '3');
INSERT INTO `users` VALUES ('E1032', '123456', '3');
INSERT INTO `users` VALUES ('E1033', '123456', '3');
INSERT INTO `users` VALUES ('E1034', '123456', '3');
INSERT INTO `users` VALUES ('E1035', '123456', '3');
INSERT INTO `users` VALUES ('E1036', '123456', '3');
INSERT INTO `users` VALUES ('E1037', '123456', '3');
INSERT INTO `users` VALUES ('E1038', '123456', '3');
INSERT INTO `users` VALUES ('E1039', '123456', '3');
INSERT INTO `users` VALUES ('E1040', '123456', '3');
INSERT INTO `users` VALUES ('E1041', '123456', '3');
INSERT INTO `users` VALUES ('E1042', '123456', '3');
INSERT INTO `users` VALUES ('E1043', '123456', '3');
INSERT INTO `users` VALUES ('E1044', '123456', '3');
INSERT INTO `users` VALUES ('E1045', '123456', '3');
INSERT INTO `users` VALUES ('E1046', '123456', '3');
INSERT INTO `users` VALUES ('E1047', '123456', '3');
INSERT INTO `users` VALUES ('E1048', '123456', '3');
INSERT INTO `users` VALUES ('E1049', '123456', '3');
INSERT INTO `users` VALUES ('E1050', '123456', '3');
INSERT INTO `users` VALUES ('E1051', '123456', '3');
INSERT INTO `users` VALUES ('E1052', '123456', '3');
INSERT INTO `users` VALUES ('E1053', '123456', '3');
INSERT INTO `users` VALUES ('E1054', '123456', '3');
INSERT INTO `users` VALUES ('E1055', '123456', '3');
INSERT INTO `users` VALUES ('E1056', '123456', '3');
INSERT INTO `users` VALUES ('E1057', '123456', '3');
INSERT INTO `users` VALUES ('E1058', '123456', '3');
INSERT INTO `users` VALUES ('E1059', '123456', '3');
INSERT INTO `users` VALUES ('E1060', '123456', '3');
INSERT INTO `users` VALUES ('E1061', '123456', '3');
INSERT INTO `users` VALUES ('E1062', '123456', '3');
INSERT INTO `users` VALUES ('E1063', '123456', '3');
INSERT INTO `users` VALUES ('E1064', '123456', '3');
INSERT INTO `users` VALUES ('E1065', '123456', '3');
INSERT INTO `users` VALUES ('E1066', '123456', '3');
INSERT INTO `users` VALUES ('E1067', '123456', '3');
INSERT INTO `users` VALUES ('E1068', '123456', '3');
INSERT INTO `users` VALUES ('E1069', '123456', '3');
INSERT INTO `users` VALUES ('E1070', '123456', '3');
INSERT INTO `users` VALUES ('E1071', '123456', '3');
INSERT INTO `users` VALUES ('E1072', '123456', '3');
INSERT INTO `users` VALUES ('E1073', '123456', '3');
INSERT INTO `users` VALUES ('E1074', '123456', '3');
INSERT INTO `users` VALUES ('E1075', '123456', '3');
INSERT INTO `users` VALUES ('E1076', '123456', '3');
INSERT INTO `users` VALUES ('E1077', '123456', '3');
INSERT INTO `users` VALUES ('E1078', '123456', '3');
INSERT INTO `users` VALUES ('E1079', '123456', '3');
INSERT INTO `users` VALUES ('E1080', '123456', '3');
INSERT INTO `users` VALUES ('E1081', '123456', '3');
INSERT INTO `users` VALUES ('E1082', '123456', '3');
INSERT INTO `users` VALUES ('E1083', '123456', '3');
INSERT INTO `users` VALUES ('E1084', '123456', '3');
INSERT INTO `users` VALUES ('E1085', '123456', '3');
INSERT INTO `users` VALUES ('E1086', '123456', '3');
INSERT INTO `users` VALUES ('E1087', '123456', '3');
INSERT INTO `users` VALUES ('E1088', '123456', '3');
INSERT INTO `users` VALUES ('E1089', '123456', '3');
INSERT INTO `users` VALUES ('E1090', '123456', '3');
INSERT INTO `users` VALUES ('E1091', '123456', '3');
INSERT INTO `users` VALUES ('E1092', '123456', '3');
INSERT INTO `users` VALUES ('E1093', '123456', '3');
INSERT INTO `users` VALUES ('E1094', '123456', '3');
INSERT INTO `users` VALUES ('E1095', '123456', '3');
INSERT INTO `users` VALUES ('E1096', '123456', '3');
INSERT INTO `users` VALUES ('E1097', '123456', '3');
INSERT INTO `users` VALUES ('E1098', '123456', '3');
INSERT INTO `users` VALUES ('E1099', '123456', '3');
INSERT INTO `users` VALUES ('E1100', '123456', '3');

-- ----------------------------
-- Triggers structure for table employee
-- ----------------------------
DROP TRIGGER IF EXISTS `employee_add`;
delimiter ;;
CREATE TRIGGER `employee_add` AFTER INSERT ON `employee` FOR EACH ROW insert into users(username,password,root) values(new.employee_id,'123456',new.position)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table employee
-- ----------------------------
DROP TRIGGER IF EXISTS `employee_delete1`;
delimiter ;;
CREATE TRIGGER `employee_delete1` AFTER DELETE ON `employee` FOR EACH ROW delete from users where username=old.employee_id
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table employee
-- ----------------------------
DROP TRIGGER IF EXISTS `employee_delete2`;
delimiter ;;
CREATE TRIGGER `employee_delete2` AFTER DELETE ON `employee` FOR EACH ROW delete from employee_salary where employee_id=old.employee_id
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table employee
-- ----------------------------
DROP TRIGGER IF EXISTS `employee_delete3`;
delimiter ;;
CREATE TRIGGER `employee_delete3` AFTER DELETE ON `employee` FOR EACH ROW delete from project_salary where employee_id=old.employee_id
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
