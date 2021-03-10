/*
Navicat MySQL Data Transfer

Source Server         : XAMPP
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : namyuenh_ita64

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-03-10 11:38:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID หมวดหมู่',
  `name` varchar(255) NOT NULL COMMENT 'หมวดหมู่',
  `create_date` date NOT NULL COMMENT 'วันที่สร้าง',
  `cat_id` int(11) DEFAULT NULL COMMENT 'id ha_category',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`) USING BTREE,
  CONSTRAINT `group_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `ha_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('137', '1. บันทึกข้อความลงนามคำสั่ง และปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', '2020-12-20', '14');
INSERT INTO `group` VALUES ('138', '2. คำสั่ง มาตรการ กลไก หรือระบบในการดำเนินการกำหนดให้มีการเผยแพร่ข้อมูลผ่านเว็บไซต์ของหน่วยงาน โดยผู้บริหารสูงสุดของหน่วยงาน', '2020-12-20', '14');
INSERT INTO `group` VALUES ('139', '3. กรอบแนวทางการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน รายละเอียดเนื้อหาในข้อ 2) ข้อ 2.1 ถึงข้อ 2.3', '2020-12-20', '14');
INSERT INTO `group` VALUES ('140', '4. รายงานผลการติดตามการดำเนินงาน และสรุปปัญหาอุปสรรคการดำเนินงานเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน โดยผู้บริหารสูงสุดของหน่วยงาน ต้องเป็นรายงานของปีงบประมาณ พ.ศ. 2563', '2020-12-20', '14');
INSERT INTO `group` VALUES ('141', '1.1 ข้อมูลผู้บริหาร แสดงรายนามของผู้บริหารของหน่วยงาน ประกอบด้วย ชื่อ-นามสกุล ตำแหน่ง รูปถ่าย หมายเลขโทรศัพท์', '2020-12-20', '15');
INSERT INTO `group` VALUES ('142', '1.2 นโยบายของผู้บริหาร', '2020-12-20', '15');
INSERT INTO `group` VALUES ('143', '1.3 โครงสร้างหน่วยงาน', '2020-12-20', '15');
INSERT INTO `group` VALUES ('144', '1.4 หน้าที่และอำนาจของหน่วยงานตามกฎหมายจัดตั้ง หรือกฎหมายอื่นที่เกี่ยวข้อง', '2020-12-20', '15');
INSERT INTO `group` VALUES ('145', '1.5 กฎหมายที่เกี่ยวข้องกับการดำเนินงาน หรือการปฏิบัติงานของหน่วยงาน', '2020-12-20', '15');
INSERT INTO `group` VALUES ('146', '1.6 ข่าวประชาสัมพันธ์ ที่แสดงข้อมูลข่าวสารที่เกี่ยวกับการดำเนินงานตามหน้าที่และอำนาจ และภารกิจของหน่วยงาน และเป็นข้อมูลข่าวสารที่เกิดขึ้นในปีงบประมาณ พ.ศ. 2564', '2020-12-20', '15');
INSERT INTO `group` VALUES ('147', '1.7 ข้อมูลการติดต่อ ประกอบด้วย ที่อยู่หน่วยงาน หมายเลขโทรศัพท์ หมายเลขโทรสาร ที่อยู่ไปรษณีย์อิเล็กทรอนิกส์ แผนที่ตั้งหน่วยงาน', '2020-12-20', '15');
INSERT INTO `group` VALUES ('148', '1.8 ช่องทางการรับฟังความคิดเห็น ที่บุคคลภายนอกสามารถแสดงความคิดเห็นต่อการดำเนินงานตามหน้าที่และอำนาจตามภารกิจของหน่วยงาน', '2020-12-20', '15');
INSERT INTO `group` VALUES ('149', '1.9 วิสัยทัศน์ พันธกิจ ค่านิยม MOPH', '2020-12-20', '15');
INSERT INTO `group` VALUES ('150', '1.10 ยุทธศาสตร์ของประเทศ โดยรวม', '2020-12-20', '15');
INSERT INTO `group` VALUES ('151', '1.11 พระราชบัญญัติมาตรฐานทางจริยธรรม พ.ศ. 2562', '2020-12-20', '15');
INSERT INTO `group` VALUES ('152', '1.12 ประมวลจริยธรรมข้าราชการพลเรือน พ.ศ. 2552', '2020-12-20', '15');
INSERT INTO `group` VALUES ('153', '1.13 ข้อบังคับสำนักงานปลัดกระทรวงสาธารณสุขว่าด้วยจรรยาข้าราชการสำนักงานปลัดกระทรวงสาธารณสุข พ.ศ. 2560', '2020-12-20', '15');
INSERT INTO `group` VALUES ('154', '1.14 อินโฟกราฟฟิกคณะกรรมการจริยธรรม ประจำสำนักงานปลัดกระทรวงสาธารณสุข ชุดปัจจุบัน', '2020-12-20', '15');
INSERT INTO `group` VALUES ('155', '1.15 จรรยาบรรณกระทรวงสาธารณสุข (MOPH Code of Conduct)', '2020-12-20', '15');
INSERT INTO `group` VALUES ('156', '2. นโยบายและยุทธศาสตร์ของหน่วยงาน', '2020-12-20', '15');
INSERT INTO `group` VALUES ('157', '3. แผนปฏิบัติการประจำปีของหน่วยงาน และการติดตามประเมินผลการดำเนินงานตามแผนปฏิบัติการประจำปีของหน่วยงาน (แผนปฏิบัติการประจำปีของหน่วยงาน ทุกแผน)', '2020-12-20', '15');
INSERT INTO `group` VALUES ('158', '4. แผนการใช้จ่ายงบประมาณประจำปีของหน่วยงาน และการติดตามประเมินผลการดำเนินงานตามแผนการใช้จ่ายงบประมาณประจำปีของหน่วยงาน', '2020-12-20', '15');
INSERT INTO `group` VALUES ('159', '5. หลักเกณฑ์ / ขั้นตอนการแก้ไขปัญหาในกรณีที่มีการร้องเรียนเรื่องการปฏิบัติงาน หรือการให้บริการของเจ้าหน้าที่', '2020-12-20', '15');
INSERT INTO `group` VALUES ('160', '6. หลักเกณฑ์ / ขั้นตอนการแก้ไขปัญหาในกรณีที่มีการร้องเรียนเรื่องการทุจริตและประพฤติมิชอบ', '2020-12-20', '15');
INSERT INTO `group` VALUES ('161', '7. รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการ', '2020-12-20', '15');
INSERT INTO `group` VALUES ('162', '8. รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ', '2020-12-20', '15');
INSERT INTO `group` VALUES ('163', '9.1 การวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีที่ผ่านมา (ปีงบประมาณ พ.ศ. 2563)', '2020-12-20', '15');
INSERT INTO `group` VALUES ('164', '9.2 แผนการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปี', '2020-12-20', '15');
INSERT INTO `group` VALUES ('165', '9.3 ผลการดำเนินการตามแผนการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีประจำปีตามรอบระยะเวลาที่กำหนดในกรอบแนวทาง', '2020-12-20', '15');
INSERT INTO `group` VALUES ('166', '9.4 ประกาศสำนักงานปลัดกระทรวงสาธารณสุขว่าด้วยแนวทางปฏิบัติงานเพื่อตรวจสอบบุคลากรในหน่วยงานด้านการจัดซื้อจัดจ้าง พ.ศ. 2560 และแบบแสดงความบริสุทธิ์ใจในการจัดซื้อจัดจ้างของหน่วยงานในการเปิดเผยข้อมูลความขัดแย้งทางผลประโยชน์ของหัวหน้าเจ้าหน้าที่', '2020-12-20', '15');
INSERT INTO `group` VALUES ('167', '9.5 แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน ปีงบประมาณ พ.ศ. 2564 (แบบ สขร. 1)', '2020-12-20', '15');
INSERT INTO `group` VALUES ('168', '10. คู่มือการปฏิบัติงานตามภารกิจหลักและภารกิจสนับสนุนของหน่วยงาน', '2020-12-20', '15');
INSERT INTO `group` VALUES ('169', '11. คู่มือขั้นตอนการให้บริการ (ภารกิจให้บริการประชาชนตามพระราชบัญญัติการอํานวยความสะดวกในการพิจารณาอนุญาตของทางราชการ พ.ศ. 2558) (ถ้ามี)', '2020-12-20', '15');
INSERT INTO `group` VALUES ('170', '1. บันทึกข้อความเสนอรายงานผู้บริหารรับทราบ และสั่งการให้นำรายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2563 ไปเผยแพร่ผ่านเว็บไซต์ของหน่วยงาน', '2020-12-20', '16');
INSERT INTO `group` VALUES ('171', '2. รายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2563 มีลักษณะเป็นรูปเล่มรายงาน โดยต้องนำเสนอข้อมูลการวิเคราะห์อย่างเป็นระบบ ตามข้อ 2. ครบทั้ง 4 องค์ประกอบ คือ (1) การวิเคราะห์ความเสี่ยง (2) การวิเคราะห์ปัญหาอุปสรรค / ข้อจำกัด', '2020-12-20', '16');
INSERT INTO `group` VALUES ('172', '1.1 บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', '2020-12-20', '17');
INSERT INTO `group` VALUES ('173', '1.2 หนังสือจัดสรรงบประมาณ', '2020-12-20', '17');
INSERT INTO `group` VALUES ('174', '1.3 แผนการจัดซื้อจัดจ้างและการจัดหาพัสดุของหน่วยงาน ประจำปีงบประมาณ พ.ศ. 2564', '2020-12-20', '17');
INSERT INTO `group` VALUES ('175', '1.4 คำสั่งมอบหมายการปิดประกาศ หรือปลดประกาศ', '2020-12-20', '17');
INSERT INTO `group` VALUES ('176', '2.1 หนังสือรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', '2020-12-20', '17');
INSERT INTO `group` VALUES ('177', '2.2 รายงานผลการดำเนินการตามแผนการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ..ศ. 2564', '2020-12-20', '17');
INSERT INTO `group` VALUES ('178', '3.1 หนังสือแจ้งเวียนหลักฐานเกี่ยวกับแนวทางการตรวจสอบถึงความเกี่ยวข้องระหว่างเจ้าหน้าที่ที่เกี่ยวข้องกับการจัดซื้อจัดจ้าง และผู้เสนองาน เพื่อป้องกันผลประโยชน์ทับซ้อนเป็นคำสั่ง / ระเบียบ / ประกาศ ฯลฯ และการควบคุม กำกับ สอบทาน (ประกาศสำนักงานปลัดกระทรวงสาธาร', '2020-12-20', '17');
INSERT INTO `group` VALUES ('179', '3.2 หนังสือขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', '2020-12-20', '17');
INSERT INTO `group` VALUES ('180', '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 1 ชุดใบสำคัญการเบิกจ่าย เดือนตุลาคม 2563 - ธันวาคม 2563 ชุดที่ 1', '2020-12-20', '17');
INSERT INTO `group` VALUES ('181', '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 1 ชุดใบสำคัญการเบิกจ่าย เดือนตุลาคม 2563 - ธันวาคม 2563 ชุดที่ 2', '2020-12-20', '17');
INSERT INTO `group` VALUES ('182', '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 1  ใบสำคัญการเบิกจ่าย เดือนธันวาคม 2563 (*สำหรับหน่วยงานที่มีการแนบมาก่อนหน้าแล้ว)', '2020-12-20', '17');
INSERT INTO `group` VALUES ('183', '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 2 ชุดใบสำคัญการเบิกจ่าย เดือนมกราคม 2564 - มีนาคม 2564 ชุดที่ 1', '2020-12-20', '17');
INSERT INTO `group` VALUES ('184', '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 2 ชุดใบสำคัญการเบิกจ่าย เดือนมกราคม 2564 - มีนาคม 2564 ชุดที่ 2', '2020-12-20', '17');
INSERT INTO `group` VALUES ('185', '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 3 ชุดใบสำคัญการเบิกจ่าย เดือนเมษายน 2564 - มิถุนายน 2564', '2020-12-20', '17');
INSERT INTO `group` VALUES ('186', '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 4 ชุดใบสำคัญการเบิกจ่าย เดือนกรกฎาคม 2564 - กันยายน 2564', '2020-12-20', '17');
INSERT INTO `group` VALUES ('187', '1. บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', '2020-12-20', '18');
INSERT INTO `group` VALUES ('188', '2. แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน (แบบ สขร. 1) ไตรมาสที่ 1 แสดงแบบ สขร. 1 เดือนตุลาคม 2563', '2020-12-20', '18');
INSERT INTO `group` VALUES ('189', '2. แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน (แบบ สขร. 1) ไตรมาสที่ 1 แสดงแบบ สขร. 1 เดือนพฤศจิกายน 2563', '2020-12-20', '18');
INSERT INTO `group` VALUES ('190', '2. แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน (แบบ สขร. 1) ไตรมาสที่ 1 แสดงแบบ สขร. 1 เดือนธันวาคม 2563', '2020-12-20', '18');
INSERT INTO `group` VALUES ('191', '2. แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน (แบบ สขร. 1) ไตรมาสที่ 2 แสดงแบบ สขร. 1 เดือนมกราคม 2564 - มีนาคม 2564', '2020-12-20', '18');
INSERT INTO `group` VALUES ('192', '2. แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน (แบบ สขร. 1) ไตรมาสที่ 3 แสดงแบบ สขร. 1 เดือนเมษายน 2564 -มิถุนายน 2564', '2020-12-20', '18');
INSERT INTO `group` VALUES ('193', '2. แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน (แบบ สขร. 1) ไตรมาสที่ 4 แสดงแบบ สขร. 1 เดือนกรกฎาคม 2564 - กันยายน 2564', '2020-12-20', '18');
INSERT INTO `group` VALUES ('194', '1. บันทึกข้อความลงนามในประกาศผลการปฏิบัติราชการประจำปีของบุคลากรในหน่วยงาน ระดับดีเด่น และดีมาก และปรากฎการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', '2020-12-20', '19');
INSERT INTO `group` VALUES ('195', '2. ประกาศรายงานการประเมินผลการปฏิบัติราชการประจำปีของบุคลากรในหน่วยงาน ระดับดีเด่น และดีมาก', '2020-12-20', '19');
INSERT INTO `group` VALUES ('196', 'หลักฐานประกาศรายงานการประเมินผลการปฏิบัติราชการประจำปีของบุคลากรในหน่วยงาน ระดับดีเด่น และดีมาก ไตรมาสที่ 1 หลักฐานประกาศรายงานการประเมินผล ฯ - รอบ 2 ปีงบประมาณ พ.ศ. 2563 (เมษายน 2563 - กันยายน 2563)', '2020-12-20', '19');
INSERT INTO `group` VALUES ('197', 'EB1 หน่วยงานมีการกำหนดมาตรการ และวางระบบการเผยแพร่ข้อมูลต่อสาธารณะ ผ่านเว็บไซต์ของหน่วยงาน', '2021-03-10', '20');
INSERT INTO `group` VALUES ('198', 'EB2 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', '2021-03-10', '20');
INSERT INTO `group` VALUES ('199', 'EB3 หน่วยงานมีรายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีงบประมาณ พ.ศ. 2563', '2021-03-10', '21');
INSERT INTO `group` VALUES ('200', 'EB4 หน่วยงานมีมาตรการ และวางระบบเพื่อส่งเสริมความโปร่งใสในการจัดซื้อจัดจ้างและการจัดหาพัสดุ ปีงบประมาณ พ.ศ. 2564', '2021-03-10', '21');
INSERT INTO `group` VALUES ('201', 'EB5 หน่วยงานมีการสรุปผลการดำเนินการจัดซื้อจัดจ้างในรอบเดือน ประจำปีงบประมาณ พ.ศ. 2564', '2021-03-10', '21');
INSERT INTO `group` VALUES ('202', 'EB6 ผู้บริหารแสดงนโยบายการบริหารและพัฒนาทรัพยากรบุคคล', '2021-03-10', '22');
INSERT INTO `group` VALUES ('203', 'EB7 หน่วยงานมีการกำหนดมาตรการ และระบบการบริหารผลการปฏิบัติงานและการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ ** (หน่วยงานของท่านเข้าเกณฑ์ กรณีดำเนินการใหม่ / ทบทวน หรือ กรณีใช้หลักเกณฑ์เดิมที่ยังคงใช้บังคับในปีงบประมาณ พ.ศ. 2563 ให้กรอกข้อมูล', '2021-03-10', '22');
INSERT INTO `group` VALUES ('204', 'EB8 หน่วยงานมีการรายงานการประเมินและเกี่ยวกับการประเมินผลการปฏิบัติราชการประจำปีของบุคลากรในหน่วยงาน และเปิดเผยผลการปฏิบัติราชการ ระดับดีเด่น และระดับดีมาก ในที่เปิดเผยให้ทราบ รอบปีงบประมาณที่ผ่านมา และรอบปีงบประมาณ', '2021-03-10', '22');
INSERT INTO `group` VALUES ('205', 'EB9 หน่วยงานมีการอบรมให้ความรู้แก่เจ้าหน้าที่ภายในหน่วยงานเกี่ยวกับการเสริมสร้างและพัฒนาทางด้านจริยธรรมและการรักษาวินัยรวมทั้งการป้องกันมิให้กระทำผิดวินัย', '2021-03-10', '22');
INSERT INTO `group` VALUES ('206', 'EB10 หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียน และช่องทางการร้องเรียน', '2021-03-10', '23');
INSERT INTO `group` VALUES ('207', 'EB11 หน่วยงานมีข้อมูลเชิงสถิติเรื่องร้องเรียน', '2021-03-10', '23');
INSERT INTO `group` VALUES ('208', 'EB12 หน่วยงานของท่านเปิดโอกาสให้ผู้มีส่วนได้ส่วนเสียมีโอกาสเข้ามามีส่วนร่วมในการดำเนินงานตามภารกิจของหน่วยงาน', '2021-03-10', '23');
INSERT INTO `group` VALUES ('209', 'EB13 หน่วยงานมีการกำหนดมาตรการและระบบในการป้องกันการรับสินบน', '2021-03-10', '24');
INSERT INTO `group` VALUES ('210', 'EB14 หน่วยงานมีการจัดทำแนวทางปฏิบัติเกี่ยวกับการใช้ทรัพย์สินของราชการที่ถูกต้อง', '2021-03-10', '25');
INSERT INTO `group` VALUES ('211', 'EB15 หน่วยงานมีขั้นตอนการขออนุญาตเพื่อยืมทรัพย์สินของราชการไปใช้ปฏิบัติในหน่วยงาน', '2021-03-10', '25');
INSERT INTO `group` VALUES ('212', 'EB16 หน่วยงานมีการเผยแพร่เจตจำนงสุจริตของผู้บริหารต่อสาธารณชน', '2021-03-10', '26');
INSERT INTO `group` VALUES ('213', 'EB17 หน่วยงานมีแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีของหน่วยงาน', '2021-03-10', '26');
INSERT INTO `group` VALUES ('214', 'EB18 หน่วยงานมีรายงานการกำกับติดตามการดำเนินงานตามแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปีของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีของหน่วยงาน', '2021-03-10', '26');
INSERT INTO `group` VALUES ('215', 'EB19 หน่วยงานมีการวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนของหน่วยงาน', '2021-03-10', '27');
INSERT INTO `group` VALUES ('216', 'EB20 หน่วยงานมีการจัดการความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อน โดยการกำหนดมาตรการ และวางระบบเพื่อจัดการความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนของหน่วยงาน ', '2021-03-10', '27');
INSERT INTO `group` VALUES ('217', 'EB21 หน่วยงานมีการอบรมให้ความรู้ภายในหน่วยงาน เรื่องการป้องกันผลประโยชน์ทับซ้อน', '2021-03-10', '27');
INSERT INTO `group` VALUES ('218', 'EB22 หน่วยงานมีการเสริมสร้างวัฒนธรรมสุจริตและต่อต้านการทุจริตภายใต้แนวคิด \"จิตพอเพียงต้านทุจริต\"', '2021-03-10', '28');
INSERT INTO `group` VALUES ('219', 'EB23 หน่วยงาน มีการรวมกลุ่มของบุคลากรในหน่วยงานในนาม \"ชมรม STRONG …\"', '2021-03-10', '28');
INSERT INTO `group` VALUES ('220', 'EB24 หน่วยงานมีนโยบายและมีแนวปฏิบัติที่เคารพสิทธิมนุษยชนและศักดิ์ศรีของผู้ปฏิบัติงาน มาตรการในการป้องกันและแก้ไขปัญหาการล่วงละเมิดหรือคุกคามทางเพศในการทำงาน', '2021-03-10', '28');

-- ----------------------------
-- Table structure for ha_category
-- ----------------------------
DROP TABLE IF EXISTS `ha_category`;
CREATE TABLE `ha_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID หมวดหมู่',
  `name` varchar(255) NOT NULL COMMENT 'หมวดหมู่',
  `create_date` date NOT NULL COMMENT 'วันที่สร้าง',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ha_category
-- ----------------------------
INSERT INTO `ha_category` VALUES ('14', 'ตัวชี้วัดที่ 1 การเปิดเผยข้อมูล EB1 หน่วยงานมีการกำหนดมาตรการ และวางระบบการเผยแพร่ข้อมูลต่อสาธารณะ ผ่านเว็บไซต์ของหน่วยงาน', '2020-03-16');
INSERT INTO `ha_category` VALUES ('15', 'ตัวชี้วัดที่ 1 การเปิดเผยข้อมูล EB2 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', '2020-03-16');
INSERT INTO `ha_category` VALUES ('16', 'ตัวชี้วัดที่ 2 การจัดซื้อจัดจ้างและการจัดหาพัสดุ EB3 หน่วยงานมีรายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีงบประมาณ พ.ศ. 2563', '2020-03-16');
INSERT INTO `ha_category` VALUES ('17', 'ตัวชี้วัดที่ 2 การจัดซื้อจัดจ้างและการจัดหาพัสดุ EB4 หน่วยงานมีมาตรการ และวางระบบเพื่อส่งเสริมความโปร่งใสในการจัดซื้อจัดจ้างและการจัดหาพัสดุ ปีงบประมาณ พ.ศ. 2564', '2020-03-16');
INSERT INTO `ha_category` VALUES ('18', 'ตัวชี้วัดที่ 2 การจัดซื้อจัดจ้างและการจัดหาพัสดุ EB5 หน่วยงานมีการสรุปผลการดำเนินการจัดซื้อจัดจ้างในรอบเดือน ประจำปีงบประมาณ พ.ศ. 2564', '2020-03-16');
INSERT INTO `ha_category` VALUES ('19', 'ตัวชี้วัดที่ 3 การบริหารและพัฒนาทรัพยากรบุคคล', '2020-12-20');
INSERT INTO `ha_category` VALUES ('20', 'ตัวชี้วัดที่ 1 การเปิดเผยข้อมูล', '2021-03-10');
INSERT INTO `ha_category` VALUES ('21', 'ตัวชี้วัดที่ 2 การจัดซื้อจัดจ้างและการจัดหาพัสดุ', '2021-03-10');
INSERT INTO `ha_category` VALUES ('22', 'ตัวชี้วัดที่ 3 การบริหารและพัฒนาทรัพยากรบุคคล', '2021-03-10');
INSERT INTO `ha_category` VALUES ('23', 'ตัวชี้วัดที่ 4 การส่งเสริมความโปร่งใส', '2021-03-10');
INSERT INTO `ha_category` VALUES ('24', 'ตัวชี้วัดที่ 5 ตัวชี้วัดการรับสินบน', '2021-03-10');
INSERT INTO `ha_category` VALUES ('25', 'ตัวชี้วัดที่ 6 ตัวชี้วัดการใช้ทรัพย์สินของราชการ', '2021-03-10');
INSERT INTO `ha_category` VALUES ('26', 'ตัวชี้วัดที่ 7 ตัวชี้วัดการดำเนินงานเพื่อป้องกันการทุจริต', '2021-03-10');
INSERT INTO `ha_category` VALUES ('27', 'ตัวชี้วัดที่ 8 การป้องกันผลประโยชน์ทับซ้อน', '2021-03-10');
INSERT INTO `ha_category` VALUES ('28', 'ตัวชี้วัดที่ 9 การเสริมสร้างวัฒนธรรมองค์กร', '2021-03-10');

-- ----------------------------
-- Table structure for ha_documents
-- ----------------------------
DROP TABLE IF EXISTS `ha_documents`;
CREATE TABLE `ha_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) DEFAULT NULL COMMENT 'หลายเลข referent สำหรับอัพโหลดไฟล์ ajax',
  `title` varchar(255) DEFAULT NULL COMMENT 'ชื่องาน',
  `description` text DEFAULT NULL COMMENT 'รายละเอียด',
  `covenant` varchar(255) DEFAULT NULL COMMENT 'file',
  `docs` text DEFAULT NULL COMMENT 'เอกสารประกอบ',
  `create_date` timestamp NULL DEFAULT current_timestamp() COMMENT 'สร้างวันที่',
  `cat_id` int(11) DEFAULT NULL COMMENT 'ID หมวดหมู่หลัก',
  `group_id` int(11) DEFAULT NULL COMMENT 'ID หมวดหมู่ย่อย',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE,
  CONSTRAINT `ha_documents_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`),
  CONSTRAINT `ha_documents_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `ha_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ha_documents
-- ----------------------------

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1429928899');
INSERT INTO `migration` VALUES ('m000000_000001_CreateRbacTables', '1429929043');
INSERT INTO `migration` VALUES ('m000000_000002_CreateUserTables', '1429941926');
INSERT INTO `migration` VALUES ('m000000_000003_ChangeTokenColumn', '1429941926');
INSERT INTO `migration` VALUES ('m140209_132017_init', '1435203411');
INSERT INTO `migration` VALUES ('m140403_174025_create_account_table', '1435203411');
INSERT INTO `migration` VALUES ('m140504_113157_update_tables', '1435203411');
INSERT INTO `migration` VALUES ('m140504_130429_create_token_table', '1435203411');
INSERT INTO `migration` VALUES ('m140830_171933_fix_ip_field', '1435203411');
INSERT INTO `migration` VALUES ('m140830_172703_change_account_table_name', '1435203411');
INSERT INTO `migration` VALUES ('m141222_110026_update_ip_field', '1435203411');
INSERT INTO `migration` VALUES ('m141222_135246_alter_username_length', '1552026516');
INSERT INTO `migration` VALUES ('m150614_103145_update_social_account_table', '1552026516');
INSERT INTO `migration` VALUES ('m150623_212711_fix_username_notnull', '1552026516');
INSERT INTO `migration` VALUES ('m151218_234654_add_timezone_to_profile', '1552026516');
INSERT INTO `migration` VALUES ('m160929_103127_add_last_login_at_to_user_table', '1552026516');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `public_email` varchar(255) DEFAULT NULL,
  `gravatar_email` varchar(255) DEFAULT NULL,
  `gravatar_id` varchar(32) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `timezone` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', 'นรินทร์ จุลทัศน์', '', 'chulatatnarin@gmail.com', '678d2e240fa3f326524f38859770f0f5', 'โรงพยาบาลน้ำยืน', 'http://namyuenhosp.in.th/', 'IT', null);
INSERT INTO `profile` VALUES ('3', null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('4', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for social_account
-- ----------------------------
DROP TABLE IF EXISTS `social_account`;
CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `data` text DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  UNIQUE KEY `account_unique_code` (`code`),
  KEY `fk_user_account` (`user_id`),
  CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of social_account
-- ----------------------------

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of token
-- ----------------------------

-- ----------------------------
-- Table structure for uploads
-- ----------------------------
DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) DEFAULT NULL,
  `file_name` varchar(150) DEFAULT NULL COMMENT 'ชื่อไฟล์',
  `real_filename` varchar(150) DEFAULT NULL COMMENT 'ชื่อไฟล์จริง',
  `create_date` timestamp NULL DEFAULT current_timestamp(),
  `type` int(11) DEFAULT NULL COMMENT 'ประเภท',
  PRIMARY KEY (`upload_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uploads
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `last_login_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'chulatatnarin@gmail.com', '$2y$12$IYk2q2O76JYcJUbLol0EputYiZXJdwdeMqKEubekqAzahqbAHchwi', 'cvHiM7kFUIajP2Bvnw4MgvBvyY7h0xbs', '1552026751', null, null, '127.0.0.1', '1435206956', '1587011302', '0', '1615341579');
INSERT INTO `user` VALUES ('3', 'turakarn', 'turakarn22@gmail.com', '$2y$12$dJm6BfjZa0CrK2lWIvN48e2OUweEEDSxUzSpi9PoUEYJcrAhOWgu6', 'LUcR-_BEbzR1SEEjgKXpDFi7tiWitQML', '1587701603', null, null, '183.89.83.15', '1587701603', '1587701603', '0', '1587701618');
INSERT INTO `user` VALUES ('4', 'aaa', 'aaa@gmail.com', '$2y$12$GhPbmWnGqeS5HH/wTRtoEe9aafK5e9kLdH.FXDJttQBhRYV2ghLr.', '4ANWx0HNSqAmAIn3NGtlNBZnG7Twjndf', '1612396029', null, null, '171.5.54.232', '1612396029', '1612396029', '0', '1612396058');
