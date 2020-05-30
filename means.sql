/*
Navicat MySQL Data Transfer

Source Server         : means
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : means

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2020-02-14 23:51:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `advert`
-- ----------------------------
DROP TABLE IF EXISTS `advert`;
CREATE TABLE `advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_img` varchar(255) NOT NULL DEFAULT 'img/advert/advertindex01.png',
  `a_href` varchar(255) NOT NULL DEFAULT 'https://www.baidu.com/',
  `a_location` enum('首页底部-广告','网站推荐-广告','首页课程-广告','工具轮播-广告','首页轮播-广告') NOT NULL DEFAULT '首页轮播-广告',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advert
-- ----------------------------
INSERT INTO `advert` VALUES ('1', 'img/advert/advertindex01.png', 'https://www.bjsxt.com/down/9107.html', '首页轮播-广告');
INSERT INTO `advert` VALUES ('2', 'img/advert/advertindex02.png', 'https://www.bjsxt.com/down/8468.html', '首页轮播-广告');
INSERT INTO `advert` VALUES ('3', 'img/advert/advertindex03.png', 'https://www.bjsxt.com/html-java.html', '首页轮播-广告');
INSERT INTO `advert` VALUES ('4', 'img/advert/webadvert01.png', 'https://www.bjsxt.com/down/9107.html', '工具轮播-广告');
INSERT INTO `advert` VALUES ('5', 'img/advert/webadvert02.png', 'https://www.bjsxt.com/down/9107.html', '工具轮播-广告');
INSERT INTO `advert` VALUES ('6', 'img/advert/webadvert03.png', 'https://www.bjsxt.com/html-java.html', '工具轮播-广告');
INSERT INTO `advert` VALUES ('7', 'img/advert/webadvert04.png', 'https://www.bjsxt.com/html-java.html', '工具轮播-广告');
INSERT INTO `advert` VALUES ('8', 'img/advert/courseindex01.png', 'course.html#typecodeJava', '首页课程-广告');
INSERT INTO `advert` VALUES ('9', 'img/advert/courseindex02.png', 'course.html#typecodeHTMLCSS', '首页课程-广告');
INSERT INTO `advert` VALUES ('10', 'img/advert/courseindex03.png', 'course.html#typecodeJava', '首页课程-广告');

-- ----------------------------
-- Table structure for `advertindex`
-- ----------------------------
DROP TABLE IF EXISTS `advertindex`;
CREATE TABLE `advertindex` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `a_type` enum('前沿技术','前端开发','后端开发','移动开发','计算机基础','云计算&大数据','运维&测试','数据库') NOT NULL DEFAULT '前沿技术',
  `a_name` varchar(80) NOT NULL,
  `a_img` varchar(255) NOT NULL,
  `a_money` float NOT NULL,
  `a_level` enum('初级','中级','高级') NOT NULL DEFAULT '初级',
  `a_course` int(11) NOT NULL,
  `a_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `a_name` (`a_name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advertindex
-- ----------------------------
INSERT INTO `advertindex` VALUES ('1', '前沿技术', 'JavaScript玩转机器学习打造你人生中的第一个AI项目', 'img/advert/advert01.png', '308', '高级', '6', '2');
INSERT INTO `advertindex` VALUES ('2', '前沿技术', 'ElasticSearch7+Spark  构建高匹配度搜索服务+千人千面推荐系统', 'img/advert/advert02.png', '499', '中级', '3', '3');
INSERT INTO `advertindex` VALUES ('3', '前沿技术', '从0入门人工智能学习', 'img/advert/advert03.png', '1299', '初级', '12', '2');
INSERT INTO `advertindex` VALUES ('4', '前沿技术', '推荐算法理论与实践', 'img/advert/advert04.png', '620', '初级', '4', '3');
INSERT INTO `advertindex` VALUES ('5', '前端开发', '前端零基础入门', 'img/advert/advert05.png', '299', '初级', '5', '2');
INSERT INTO `advertindex` VALUES ('6', '前端开发', 'Node.js+Koa2框架生态实战 - 从零模拟新浪微博', 'img/advert/advert06.png', '360', '中级', '12', '3');
INSERT INTO `advertindex` VALUES ('7', '前端开发', 'Electron+React+七牛云 实战跨平台桌面应用', 'img/advert/advert07.png', '480', '高级', '10', '5');
INSERT INTO `advertindex` VALUES ('8', '前端开发', 'Vue.js 从入门到精通', 'img/advert/advert08.png', '199', '中级', '4', '3');
INSERT INTO `advertindex` VALUES ('9', '后端开发', 'Java 零基础入门', 'img/advert/advert09.png', '980', '初级', '24', '3');
INSERT INTO `advertindex` VALUES ('10', '后端开发', '告别996，开启Java高效编程之门', 'img/advert/advert10.png', '288', '初级', '12', '2');
INSERT INTO `advertindex` VALUES ('11', '后端开发', 'Go读书社区web开发与高性能架构优化', 'img/advert/advert11.png', '564', '高级', '8', '1');
INSERT INTO `advertindex` VALUES ('12', '后端开发', 'SpringCloud全面进阶之路 ', 'img/advert/advert12.png', '766', '中级', '6', '3');
INSERT INTO `advertindex` VALUES ('13', '移动开发', 'Android 零基础入门', 'img/advert/advert13.png', '245', '初级', '8', '2');
INSERT INTO `advertindex` VALUES ('14', '移动开发', '新版Kotlin从入门到精通', 'img/advert/advert14.png', '498', '中级', '4', '3');
INSERT INTO `advertindex` VALUES ('15', '移动开发', '移动端进阶高级工程师成长路线', 'img/advert/advert15.png', '1562', '初级', '24', '3');
INSERT INTO `advertindex` VALUES ('16', '移动开发', 'Android工程师高薪面试突破路线', 'img/advert/advert16.png', '1600', '中级', '12', '2');
INSERT INTO `advertindex` VALUES ('17', '计算机基础', 'Spark + ElasticSearch 构建电商用户标签系统实现精准营销', 'img/advert/advert17.png', '560', '初级', '10', '3');
INSERT INTO `advertindex` VALUES ('18', '计算机基础', 'Python量化投资', 'img/advert/advert18.png', '423', '中级', '6', '2');
INSERT INTO `advertindex` VALUES ('19', '计算机基础', '系统学习Docker 践行DevOps理念 2019全新升级', 'img/advert/advert19.png', '566', '高级', '4', '3');
INSERT INTO `advertindex` VALUES ('20', '计算机基础', '大数据容器化实践从入门到进阶', 'img/advert/advert20.png', '1420', '中级', '15', '3');
INSERT INTO `advertindex` VALUES ('21', '运维&测试', 'Go读书社区web开发与高性能架构优化', 'img/advert/advert21.png', '564', '高级', '8', '1');
INSERT INTO `advertindex` VALUES ('22', '运维&测试', '从功能测试到自动化测试转型路线', 'img/advert/advert22.png', '302', '初级', '4', '3');
INSERT INTO `advertindex` VALUES ('23', '运维&测试', 'Spark + ElasticSearch 构建电商用户标签系统实现精准营销', 'img/advert/advert23.png', '560', '初级', '10', '3');

-- ----------------------------
-- Table structure for `download`
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `l_types` enum('数据库','运维&测试','云计算&大数据','计算机基础','移动开发','后端开发','前端开发','前沿技术') NOT NULL DEFAULT '前端开发',
  `l_type` varchar(80) NOT NULL,
  `l_name` varchar(80) NOT NULL,
  `l_download` varchar(255) NOT NULL DEFAULT 'download\\HTML.zip',
  `l_img` varchar(255) NOT NULL DEFAULT 'img\\download\\.png',
  `l_describe` text CHARACTER SET utf16 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`l_type`),
  CONSTRAINT `type` FOREIGN KEY (`l_type`) REFERENCES `techology` (`t_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of download
-- ----------------------------
INSERT INTO `download` VALUES ('1', '前端开发', 'HTML/CSS', 'HTML', 'download\\HTML.zip', 'img\\download\\html.png', 'HTML，即超文本标记语言（Hyper Text Markup Language）');
INSERT INTO `download` VALUES ('2', '前端开发', 'HTML/CSS', 'CSS', 'download\\HTML.zip', 'img\\download\\css.png', '层叠样式表（Cascading StyleSheet）');
INSERT INTO `download` VALUES ('3', '前端开发', 'HTML/CSS', 'Bootstap', 'download\\HTML.zip', 'img\\download\\Bootstrap.png', 'Bootstrap，来自 Twitter，是目前最受欢迎的前端框架');
INSERT INTO `download` VALUES ('4', '前端开发', 'HTML/CSS', 'Font Awesome', 'download\\HTML.zip', 'img\\download\\font-awesome.png', 'Font Awesome 是一套绝佳的图标字体库和CSS框架。');
INSERT INTO `download` VALUES ('11', '前端开发', 'JavaScript', 'JavaScript', 'download\\HTML.zip', 'img\\download\\JavaScript.png', 'JavaScript 是 Web 的编程语言。');
INSERT INTO `download` VALUES ('12', '前端开发', 'Vue.js', 'Vue.js', 'download\\HTML.zip', 'img\\download\\12.png', 'Vue.js 是一套构建用户界面的渐进式框架。');
INSERT INTO `download` VALUES ('13', '前端开发', 'React.JS', 'React', 'download\\HTML.zip', 'img\\download\\13.png', 'React 是一个用于构建用户界面的 JAVASCRIPT 库。');
INSERT INTO `download` VALUES ('14', '前端开发', 'Angular', 'AngularJS', 'download\\HTML.zip', 'img\\download\\14.png', 'AngularJS 通过新的属性和表达式扩展了 HTML。');
INSERT INTO `download` VALUES ('15', '前端开发', 'Angular', 'AngularJS2', 'download\\HTML.zip', 'img\\download\\15.png', 'AngularJS2是一款开源的JavaScript库。');
INSERT INTO `download` VALUES ('16', '前端开发', 'Node.js', 'Node.js', 'download\\HTML.zip', 'img\\download\\16.png', 'Node.js 是运行在服务端的 JavaScript。');
INSERT INTO `download` VALUES ('17', '前端开发', 'jQuery', 'jQuery', 'download\\HTML.zip', 'img\\download\\17.png', 'jQuery是一个JavaScript库。');
INSERT INTO `download` VALUES ('18', '前端开发', 'jQuery', 'jQuery UI', 'download\\HTML.zip', 'img\\download\\18.png', 'jQuery UI是建立在jQuery上的一组用户界面交互、特效、小部件及主题。');
INSERT INTO `download` VALUES ('19', '前端开发', 'jQuery', 'jQuery EasyUI', 'download\\HTML.zip', 'img\\download\\19.png', 'jQuery EasyUI是一个基于jQuery的框架。');
INSERT INTO `download` VALUES ('20', '前端开发', 'Sass/Less', 'Sass', 'download\\HTML.zip', 'img\\download\\20.png', 'Sass(Scss)是世界上最成熟、稳定和强大的专业级CSS扩展语言。');
INSERT INTO `download` VALUES ('21', '前端开发', 'Sass/Less', 'Less', 'download\\HTML.zip', 'img\\download\\21.png', 'Less 扩充了 CSS语言。');
INSERT INTO `download` VALUES ('22', '前端开发', 'WebApp', 'WebApp', 'download\\HTML.zip', 'img\\download\\22.png', '基于Web的系统和应用。');
INSERT INTO `download` VALUES ('23', '前端开发', '小程序', '小程序', 'download\\HTML.zip', 'img\\download\\23.png', '以在微信内被便捷地获取和传播。');
INSERT INTO `download` VALUES ('24', '后端开发', 'Java', 'Java', 'download\\HTML.zip', 'img\\download\\24.png', '一种可以撰写跨平台应用软件的面向对象的程序设计语言');
INSERT INTO `download` VALUES ('25', '后端开发', 'SpringBoot', 'SpringBoot', 'download\\HTML.zip', 'img\\download\\25.png', '简化新Spring应用的初始搭建以及开发过程。');
INSERT INTO `download` VALUES ('26', '后端开发', 'Spring Cloud', 'Spring Cloud', 'download\\HTML.zip', 'img\\download\\26.png', '利用Spring Boot的开发便利性巧妙地简化了分布式系统基础设施的开发。');
INSERT INTO `download` VALUES ('27', '后端开发', 'SSM', 'SSM', 'download\\HTML.zip', 'img\\download\\27.png', '框架集由Spring、MyBatis两个开源框架整合而成。');
INSERT INTO `download` VALUES ('28', '后端开发', 'Python', 'Python', 'download\\HTML.zip', 'img\\download\\28.png', 'Python3.x 版本，未来主流版本。');
INSERT INTO `download` VALUES ('29', '后端开发', '爬虫', '爬虫', 'download\\HTML.zip', 'img\\download\\29.png', '按照一定的规则，自动地抓取万维网信息的程序或者脚本。');
INSERT INTO `download` VALUES ('30', '后端开发', 'Django', 'Django', 'download\\HTML.zip', 'img\\download\\30.png', 'Django是一个开放源代码的Web应用框架，由Python写成。');
INSERT INTO `download` VALUES ('31', '后端开发', 'Flask', 'Flask', 'download\\HTML.zip', 'img\\download\\31.png', 'Flask是一个使用 Python 编写的轻量级 Web 应用框架。');
INSERT INTO `download` VALUES ('32', '后端开发', 'Tornado', 'Tornado', 'download\\HTML.zip', 'img\\download\\32.png', 'Tornado是一种 Web 服务器软件的开源版本。');
INSERT INTO `download` VALUES ('33', '后端开发', 'Go', 'Go', 'download\\HTML.zip', 'img\\download\\33.png', 'Go语言是谷歌推出的一种全新的编程语言。');
INSERT INTO `download` VALUES ('34', '后端开发', 'PHP', 'PHP', 'download\\HTML.zip', 'img\\download\\34.png', 'PHP 是一种通用开源脚本语言。');
INSERT INTO `download` VALUES ('35', '后端开发', 'Swoole', 'Swoole', 'download\\HTML.zip', 'img\\download\\35.png', 'Swoole是一个面向生产环境的 PHP 异步网络通信引擎。');
INSERT INTO `download` VALUES ('36', '后端开发', 'C', 'C', 'download\\HTML.zip', 'img\\download\\36.png', '一门通用计算机编程语言。');
INSERT INTO `download` VALUES ('37', '后端开发', 'C++', 'C++', 'download\\HTML.zip', 'img\\download\\37.png', 'C++是在C语言的基础上开发的一种通用编程语言。');
INSERT INTO `download` VALUES ('38', '移动开发', 'Android', 'Android', 'download\\HTML.zip', 'img\\download\\38.png', 'Android 是一种基于Linux的自由及开放源代码的操作系统，主要使用于移动设备。');
INSERT INTO `download` VALUES ('39', '移动开发', 'iOS', 'iOS', 'download\\HTML.zip', 'img\\download\\39.png', '一个移动操作系统。');
INSERT INTO `download` VALUES ('40', '移动开发', 'React native ', 'React native ', 'download\\HTML.zip', 'img\\download\\40.png', 'React Native是一个混合移动应用开发框架。');
INSERT INTO `download` VALUES ('41', '移动开发', 'lonic', 'lonic', 'download\\HTML.zip', 'img\\download\\41.png', 'ionic 是一个强大的 HTML5 应用程序开发框架(HTML5 Hybrid Mobile App Framework )。');
INSERT INTO `download` VALUES ('42', '云计算&大数据', 'Hadoop', 'Hadoop', 'download\\HTML.zip', 'img\\download\\42.png', '一个分布式系统基础架构。');
INSERT INTO `download` VALUES ('43', '云计算&大数据', 'Spark', 'Spark', 'download\\HTML.zip', 'img\\download\\43.png', '一种相似的开源集群计算环境。');
INSERT INTO `download` VALUES ('44', '云计算&大数据', 'Hbase', 'Hbase', 'download\\HTML.zip', 'img\\download\\44.png', 'HBase是一个分布式的、面向列的开源数据库。');
INSERT INTO `download` VALUES ('45', '云计算&大数据', 'Flink', 'Flink', 'download\\HTML.zip', 'img\\download\\45.png', '一种开源流处理框架');
INSERT INTO `download` VALUES ('46', '云计算&大数据', 'Storm', 'Storm', 'download\\HTML.zip', 'img\\download\\46.png', '一个分布式、高容错的实时处理系统。');
INSERT INTO `download` VALUES ('47', '云计算&大数据', '阿里云', '阿里云', 'download\\HTML.zip', 'img\\download\\47.png', '提供安全、可靠的计算和数据处理能力。');
INSERT INTO `download` VALUES ('48', '云计算&大数据', 'Docker', 'Docker', 'download\\HTML.zip', 'img\\download\\48.png', 'Docker 是一个开源的应用容器引擎。');
INSERT INTO `download` VALUES ('49', '云计算&大数据', 'Kubernetes', 'Kubernetes', 'download\\HTML.zip', 'img\\download\\49.png', '一个开源的，用于管理云平台中多个主机上的容器化的应用。');
INSERT INTO `download` VALUES ('50', '数据库', 'MySQL', 'MySQL', 'download\\HTML.zip', 'img\\download\\50.png', 'MySQL是一个关系型数据库管理系统。');
INSERT INTO `download` VALUES ('51', '数据库', 'Redis', 'Redis', 'download\\HTML.zip', 'img\\download\\51.png', '一个高性能的key-value数据库。');
INSERT INTO `download` VALUES ('52', '数据库', 'MongoDB', 'MongoDB', 'download\\HTML.zip', 'img\\download\\52.png', 'Mongo DB 是目前在IT行业非常流行的一种非关系型数据库(NoSql)。');
INSERT INTO `download` VALUES ('53', '后端开发', 'Python', 'Python2.x', 'download\\HTML.zip', 'img\\download\\28.png', 'Python是一种面向对象、解释型计算机程序设计语言。');
INSERT INTO `download` VALUES ('54', '前端开发', 'WebApp', 'Web Service', 'download\\HTML.zip', 'img\\download\\53.png', 'Web Service脚本平台需支持XML+HTTP/');
INSERT INTO `download` VALUES ('55', '计算机基础', '计算机网络', 'HTTP', 'download\\HTML.zip', 'img\\download\\54.png', 'HTTP协议（HyperText Transfer Protocol，超文本传输协议）是因特网上应用最为广泛的一种网络传输协议');
INSERT INTO `download` VALUES ('56', '计算机基础', '计算机网络', 'TCP/IP', 'download\\HTML.zip', 'img\\download\\55.png', 'TCP/IP是因特网的通信协议。');

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `a_type` enum('前沿技术','前端开发','后端开发','移动开发','计算机基础','云计算&大数据','运维&测试','数据库') NOT NULL DEFAULT '前沿技术',
  `a_name` varchar(80) NOT NULL,
  `a_img` varchar(255) NOT NULL,
  `a_money` float NOT NULL,
  `a_level` enum('初级','中级','高级') NOT NULL DEFAULT '初级',
  `a_course` int(11) NOT NULL,
  `a_watch` int(11) NOT NULL,
  `a_describe` varchar(255) NOT NULL DEFAULT '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。',
  `a_download` varchar(255) NOT NULL DEFAULT 'download/HTML.zip',
  PRIMARY KEY (`id`),
  KEY `a_name` (`a_name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1', '前沿技术', 'JavaScript玩转机器学习打造你人生中的第一个AI项目', 'img/advert/advert01.png', '308', '高级', '6', '2', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('2', '前沿技术', 'ElasticSearch7+Spark  构建高匹配度搜索服务+千人千面推荐系统', 'img/advert/advert02.png', '499', '中级', '3', '3', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('3', '前沿技术', '从0入门人工智能学习', 'img/advert/advert03.png', '1299', '初级', '12', '2', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('4', '前沿技术', '推荐算法理论与实践', 'img/advert/advert04.png', '620', '初级', '4', '3', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('5', '前端开发', '前端零基础入门', 'img/advert/advert05.png', '299', '初级', '5', '2', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('6', '前端开发', 'Node.js+Koa2框架生态实战 - 从零模拟新浪微博', 'img/advert/advert06.png', '360', '中级', '12', '3', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('7', '前端开发', 'Electron+React+七牛云 实战跨平台桌面应用', 'img/advert/advert07.png', '480', '高级', '10', '5', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('8', '前端开发', 'Vue.js 从入门到精通', 'img/advert/advert08.png', '199', '中级', '4', '3', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('9', '后端开发', 'Java 零基础入门', 'img/advert/advert09.png', '980', '初级', '24', '3', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('10', '后端开发', '告别996，开启Java高效编程之门', 'img/advert/advert10.png', '288', '初级', '12', '2', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('11', '后端开发', 'Go读书社区web开发与高性能架构优化', 'img/advert/advert11.png', '564', '高级', '8', '1', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('12', '后端开发', 'SpringCloud全面进阶之路 ', 'img/advert/advert12.png', '766', '中级', '6', '3', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('13', '移动开发', 'Android 零基础入门', 'img/advert/advert13.png', '245', '初级', '8', '2', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('14', '移动开发', '新版Kotlin从入门到精通', 'img/advert/advert14.png', '498', '中级', '4', '3', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('15', '移动开发', '移动端进阶高级工程师成长路线', 'img/advert/advert15.png', '1562', '初级', '24', '3', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('16', '移动开发', 'Android工程师高薪面试突破路线', 'img/advert/advert16.png', '1600', '中级', '12', '2', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('17', '计算机基础', 'Spark + ElasticSearch 构建电商用户标签系统实现精准营销', 'img/advert/advert17.png', '560', '初级', '10', '3', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('18', '计算机基础', 'Python量化投资', 'img/advert/advert18.png', '423', '中级', '6', '2', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('19', '计算机基础', '系统学习Docker 践行DevOps理念 2019全新升级', 'img/advert/advert19.png', '566', '高级', '4', '3', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('20', '计算机基础', '大数据容器化实践从入门到进阶', 'img/advert/advert20.png', '1420', '中级', '15', '3', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('21', '运维&测试', 'Go读书社区web开发与高性能架构优化', 'img/advert/advert21.png', '564', '高级', '8', '1', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('22', '运维&测试', '从功能测试到自动化测试转型路线', 'img/advert/advert22.png', '302', '初级', '4', '3', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');
INSERT INTO `project` VALUES ('23', '运维&测试', 'Spark + ElasticSearch 构建电商用户标签系统实现精准营销', 'img/advert/advert23.png', '560', '初级', '10', '3', '2020版Vue.js致力于构建数据驱动的web应用开发框架，是一个精简的MVVM。Vue.js 专注于 MVVM 模型的 ViewModel 层。简单的数据操作，就可以完成页面的更新，当然也有很多类似的框架，如Angular，React，但是Vue以简洁化，轻量级，数据驱动，模块友好等优势深受企业以及前端开发者的喜爱，成为前端开发人员必备的技能。', 'download/HTML.zip');

-- ----------------------------
-- Table structure for `techology`
-- ----------------------------
DROP TABLE IF EXISTS `techology`;
CREATE TABLE `techology` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `t_type` enum('前沿技术','前端开发','后端开发','移动开发','计算机基础','云计算&大数据','运维&测试','数据库') NOT NULL DEFAULT '前沿技术',
  `t_name` varchar(50) NOT NULL,
  `t_Ename` varchar(50) NOT NULL,
  `t_describe` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`t_name`) USING HASH,
  UNIQUE KEY `Ename` (`t_Ename`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of techology
-- ----------------------------
INSERT INTO `techology` VALUES ('1', '前沿技术', '微服务', 'microservice', '一项在云中部署应用和服务的新技术。');
INSERT INTO `techology` VALUES ('2', '前沿技术', '区块链', 'Blockchain', '分布式数据存储、点对点传输、共识机制、加密算法等计算机技术的新型应用模式。');
INSERT INTO `techology` VALUES ('3', '前沿技术', '机器学习', 'machinelearning', '人工智能的核心，是使计算机具有智能的根本途径。');
INSERT INTO `techology` VALUES ('4', '前沿技术', '深度学习', 'DeepLearning', '动机在于建立、模拟人脑进行分析学习的神经网络，它模仿人脑的机制来解释数据，例如图像，声音和文本。');
INSERT INTO `techology` VALUES ('5', '前沿技术', '计算机视觉', 'Computervision', '一门研究如何使机器\"看\"的科学。');
INSERT INTO `techology` VALUES ('6', '前沿技术', '自然语言处理', 'Naturallanguageprocessing', '实现人与计算机之间用自然语言进行有效通信的各种理论和方法。');
INSERT INTO `techology` VALUES ('7', '前沿技术', '数据分析&挖掘', 'DataAnalysis', '用适当的统计分析方法对收集来的大量数据进行分析。');
INSERT INTO `techology` VALUES ('8', '前端开发', 'HTML/CSS', 'HTMLCSS', 'HTML，即超文本标记语言；CSS，层叠样式表。');
INSERT INTO `techology` VALUES ('9', '前端开发', 'JavaScript', 'JavaScript', 'JavaScript 是 Web 的编程语言。');
INSERT INTO `techology` VALUES ('10', '前端开发', 'Vue.js', 'Vue.js', 'Vue.js 是一套构建用户界面的渐进式框架。');
INSERT INTO `techology` VALUES ('11', '前端开发', 'React.JS', 'React.JS', 'React 是一个用于构建用户界面的 JAVASCRIPT 库。');
INSERT INTO `techology` VALUES ('12', '前端开发', 'Angular', 'Angular', 'AngularJS 通过新的属性和表达式扩展了 HTML。');
INSERT INTO `techology` VALUES ('13', '前端开发', 'Node.js', 'Node.js', 'Node.js 是运行在服务端的 JavaScript。');
INSERT INTO `techology` VALUES ('14', '前端开发', 'jQuery', 'jQuery', 'jQuery 是一个 JavaScript 库。');
INSERT INTO `techology` VALUES ('15', '前端开发', 'Sass/Less', 'SassLess', '成熟、稳定和强大的专业级CSS扩展语言。');
INSERT INTO `techology` VALUES ('16', '前端开发', 'WebApp', 'WebApp', '基于Web的系统和应用。');
INSERT INTO `techology` VALUES ('17', '前端开发', '小程序', 'Applet', '以在微信内被便捷地获取和传播。');
INSERT INTO `techology` VALUES ('18', '后端开发', 'Java', 'Java', '一种可以撰写跨平台应用软件的面向对象的程序设计语言。');
INSERT INTO `techology` VALUES ('19', '后端开发', 'SpringBoot', 'SpringBoot', '简化新Spring应用的初始搭建以及开发过程。');
INSERT INTO `techology` VALUES ('20', '后端开发', 'Spring Cloud', 'SpringCloud', '利用Spring Boot的开发便利性巧妙地简化了分布式系统基础设施的开发。');
INSERT INTO `techology` VALUES ('21', '后端开发', 'SSM', 'SSM', '框架集由Spring、MyBatis两个开源框架整合而成。');
INSERT INTO `techology` VALUES ('22', '后端开发', 'Python', 'Python', 'Python3.x 版本，未来主流版本。');
INSERT INTO `techology` VALUES ('23', '后端开发', '爬虫', 'Crawler', '按照一定的规则，自动地抓取万维网信息的程序或者脚本。');
INSERT INTO `techology` VALUES ('24', '后端开发', 'Django', 'Django', 'Django是一个开放源代码的Web应用框架，由Python写成。');
INSERT INTO `techology` VALUES ('25', '后端开发', 'Flask', 'Flask', 'Flask是一个使用 Python 编写的轻量级 Web 应用框架。');
INSERT INTO `techology` VALUES ('26', '后端开发', 'Tornado', 'Tornado', 'Tornado是一种 Web 服务器软件的开源版本。');
INSERT INTO `techology` VALUES ('27', '后端开发', 'Go', 'Go', 'Go语言是谷歌推出的一种全新的编程语言。');
INSERT INTO `techology` VALUES ('28', '后端开发', 'PHP', 'PHP', 'PHP 是一种通用开源脚本语言。');
INSERT INTO `techology` VALUES ('29', '后端开发', 'Swoole', 'Swoole', 'Swoole是一个面向生产环境的 PHP 异步网络通信引擎。');
INSERT INTO `techology` VALUES ('30', '后端开发', 'C', 'C', '一门通用计算机编程语言。');
INSERT INTO `techology` VALUES ('31', '后端开发', 'C++', 'C++', 'C++是在C语言的基础上开发的一种通用编程语言。');
INSERT INTO `techology` VALUES ('32', '移动开发', 'Android', 'Android', 'Android 是一种基于Linux的自由及开放源代码的操作系统，主要使用于移动设备。');
INSERT INTO `techology` VALUES ('33', '移动开发', 'iOS', 'iOS', '一个移动操作系统。');
INSERT INTO `techology` VALUES ('34', '移动开发', 'React native ', 'Reactnative ', 'React Native是一个混合移动应用开发框架。');
INSERT INTO `techology` VALUES ('35', '移动开发', 'lonic', 'lonic', 'ionic 是一个强大的 HTML5 应用程序开发框架(HTML5 Hybrid Mobile App Framework )。');
INSERT INTO `techology` VALUES ('36', '计算机基础', '计算机网络', 'ComputerNetworks', '将地理位置不同的具有独立功能的多台计算机及其外部设备，通过通信线路连接起来。');
INSERT INTO `techology` VALUES ('37', '计算机基础', '算法与数据结构', 'Algorithms', '数据结构是为算法服务的,算法要作用在特定的数据结构之上。。');
INSERT INTO `techology` VALUES ('38', '计算机基础', '数学', 'math', '研究数量、结构、变化、空间以及信息等概念的一门学科。');
INSERT INTO `techology` VALUES ('39', '云计算&大数据', '大数据', 'megadata', '一种规模大到在获取、存储、管理、分析方面大大超出了传统数据库软件工具能力范围的数据集合。');
INSERT INTO `techology` VALUES ('40', '云计算&大数据', 'Hadoop', 'Hadoop', '一个分布式系统基础架构。');
INSERT INTO `techology` VALUES ('41', '云计算&大数据', 'Spark', 'Spark', '一种相似的开源集群计算环境。');
INSERT INTO `techology` VALUES ('42', '云计算&大数据', 'Hbase', 'Hbase', 'HBase是一个分布式的、面向列的开源数据库。');
INSERT INTO `techology` VALUES ('43', '云计算&大数据', 'Flink', 'Flink', '一种开源流处理框架。');
INSERT INTO `techology` VALUES ('44', '云计算&大数据', 'Storm', 'Storm', '一个分布式、高容错的实时处理系统。');
INSERT INTO `techology` VALUES ('45', '云计算&大数据', '阿里云', 'IoT', '提供安全、可靠的计算和数据处理能力。');
INSERT INTO `techology` VALUES ('46', '云计算&大数据', 'Docker', 'Docker', 'Docker 是一个开源的应用容器引擎。');
INSERT INTO `techology` VALUES ('47', '云计算&大数据', 'Kubernetes', 'Kubernetes', '一个开源的，用于管理云平台中多个主机上的容器化的应用。');
INSERT INTO `techology` VALUES ('48', '运维&测试', '运维', 'operations', '对网络、服务器、服务的生命周期各个阶段的运营与维护。');
INSERT INTO `techology` VALUES ('49', '运维&测试', '自动化运维', 'automation', '将IT运维中日常的、大量的重复性工作自动化。');
INSERT INTO `techology` VALUES ('50', '运维&测试', '中间件', 'middleware', '介于应用系统和系统软件之间的一类软件。');
INSERT INTO `techology` VALUES ('51', '运维&测试', 'Linux', 'Linux', 'Linux是一套免费使用和自由传播的类Unix操作系统。');
INSERT INTO `techology` VALUES ('52', '运维&测试', '测试', 'test', '具有试验性质的测量，即测量和试验的综合。');
INSERT INTO `techology` VALUES ('53', '运维&测试', '功能测试', 'functionaltest', '对产品的各功能进行验证。');
INSERT INTO `techology` VALUES ('54', '运维&测试', '性能测试', 'performancetest', '通过自动化的测试工具进行测试。');
INSERT INTO `techology` VALUES ('55', '运维&测试', '自动化测试', 'Automatedtest', '软件测试的自动化。');
INSERT INTO `techology` VALUES ('56', '运维&测试', '接口测试', 'interfacetest', '接口测试是测试系统组件间接口的一种测试。');
INSERT INTO `techology` VALUES ('57', '数据库', 'MySQL', 'MySQL', 'MySQL是一个关系型数据库管理系统。');
INSERT INTO `techology` VALUES ('58', '数据库', 'Redis', 'Redis', '一个高性能的key-value数据库。');
INSERT INTO `techology` VALUES ('59', '数据库', 'MongoDB', 'MongoDB', 'Mongo DB 是目前在IT行业非常流行的一种非关系型数据库(NoSql)。');

-- ----------------------------
-- Table structure for `tool`
-- ----------------------------
DROP TABLE IF EXISTS `tool`;
CREATE TABLE `tool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('','转发','原创') NOT NULL DEFAULT '原创',
  `title` varchar(255) NOT NULL DEFAULT 'eclipse下载,安装,JDk环境配置教程',
  `download` varchar(255) NOT NULL DEFAULT 'download\\tool\\HTML.zip',
  `href` varchar(255) NOT NULL DEFAULT 'https://www.eclipse.org/downloads/',
  `container` text NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'img\\tool\\eclipse.png',
  `time` datetime NOT NULL DEFAULT '2020-02-09 00:00:57',
  `glance` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tool
-- ----------------------------
INSERT INTO `tool` VALUES ('1', '原创', 'python安装 pip安装 easy_install安装 setuptools安装 virtualenv安装', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', 'Python的安装：\n(注意：windows下面在py的安装根目录下的Script目录下自带有，而Linux)\n\n1. 安装必要的准备包\n\na、安装过程将用到gcc，方便起见，安装“Development Tools”:\n\nyum grouplist\n\nyum groupinstall -y \"Development tools\"\n\n \n\nb、另外，Python安装中需要的一些依赖包:\n\nyum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel\n\n \n\n2. 下载安装Python2.7\n\n        目前Python2.7的我装的版本是2.7.9。可以在下面的网站查询：\n\n        https://www.python.org/ftp/python/\n\n \n\n        2.7.11的下载链接是：\n\n        https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz\n\nwget https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz\n\n//或者用root用户安装(普通用户最好最如下):\n\nsudo tar -zxvf /home/hadoop/Python-2.7.9.tgz -C /usr/local/\n\ncd /usr/local/Python-2.7.9/\n\nsudo chown -R hadoop:hadoop /usr/local/Python-2.7.9/\n\nsudo ./configure --prefix=/usr/local/Python-2.7.9  (将在该目', 'img\\tool\\eclipse.png', '2020-01-01 07:00:57', '100');
INSERT INTO `tool` VALUES ('3', '转发', '下载github中单个文件夹', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '参考知乎，直接将需要下载的地址放入：https://minhaskamal.github.io/DownGit/#/home\r\n然后点击下载即可', 'img\\tool\\eclipse.png', '2020-02-11 11:36:27', '1241');
INSERT INTO `tool` VALUES ('4', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('5', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('6', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('7', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('8', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('9', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('10', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('11', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('12', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('13', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('14', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('15', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('16', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('17', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('18', '转发', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('19', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('20', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('21', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('22', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('23', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('24', '原创', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');
INSERT INTO `tool` VALUES ('25', '转发', 'eclipse下载,安装,JDk环境配置教程', 'download\\tool\\HTML.zip', 'https://www.eclipse.org/downloads/', '暑假的生活像“百味瓶”一样，多姿多彩，有快乐的，有惊险的，也有烦恼的，最令我得意的还是那次写书法作品的经历。 　　早晨，金色的阳光洒满大地，阳光透过窗户照到我的小床上，我揉了揉朦胧的双眼。啊，今天还要去练毛笔字呢，我一个鲤鱼打挺从床上翻下来，行色匆匆地走出家门。 　　来到书法班，书法老师笑眯眯地朝我走过来，和蔼可亲地对我说：“你的书法写得不错了，得写副作品《春晓》挂在教室里展览。”我连连点头，心里一阵欢喜，这几年来，我一直苦心、专心地练，终于可以写书法作品了。', 'img\\tool\\eclipse.png', '2020-02-09 00:00:57', '100');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `types` enum('数据库','运维&测试','云计算&大数据','计算机基础','移动开发','后端开发','前端开发','前沿技术') NOT NULL DEFAULT '前沿技术',
  `type` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL DEFAULT '使用卷积神经网络识别手写数字',
  `download` varchar(255) NOT NULL DEFAULT 'download/project/01.mp4',
  PRIMARY KEY (`id`),
  KEY `video-type` (`type`),
  CONSTRAINT `video-type` FOREIGN KEY (`type`) REFERENCES `project` (`a_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '前沿技术', 'JavaScript玩转机器学习打造你人生中的第一个AI项目', '机器学习与神经网络简介', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('2', '前沿技术', 'JavaScript玩转机器学习打造你人生中的第一个AI项目', 'Tensorflow.js', 'download/project/02.mp4');
INSERT INTO `video` VALUES ('3', '前沿技术', 'JavaScript玩转机器学习打造你人生中的第一个AI项目', '线性回归', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('4', '前沿技术', 'JavaScript玩转机器学习打造你人生中的第一个AI项目', '归一化', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('5', '前沿技术', 'JavaScript玩转机器学习打造你人生中的第一个AI项目', '逻辑回归', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('6', '前沿技术', 'JavaScript玩转机器学习打造你人生中的第一个AI项目', '多层神经网络', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('7', '前沿技术', 'JavaScript玩转机器学习打造你人生中的第一个AI项目', '欠拟合与过拟合', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('8', '前沿技术', 'JavaScript玩转机器学习打造你人生中的第一个AI项目', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('9', '前沿技术', 'JavaScript玩转机器学习打造你人生中的第一个AI项目', '使用预训练模型进行图片分类', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('10', '前沿技术', 'JavaScript玩转机器学习打造你人生中的第一个AI项目', '教育迁移学习的图像分类器', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('11', '前沿技术', 'ElasticSearch7+Spark  构建高匹配度搜索服务+千人千面推荐系统', '项目设计', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('12', '前沿技术', 'ElasticSearch7+Spark  构建高匹配度搜索服务+千人千面推荐系统', '项目基础搭建', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('13', '前沿技术', 'ElasticSearch7+Spark  构建高匹配度搜索服务+千人千面推荐系统', '基础服务建设', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('14', '前沿技术', '从0入门人工智能学习', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('15', '前沿技术', '从0入门人工智能学习', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('16', '前沿技术', '从0入门人工智能学习', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('17', '前沿技术', '从0入门人工智能学习', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('18', '前沿技术', '从0入门人工智能学习', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('19', '前沿技术', '推荐算法理论与实践', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('20', '前沿技术', '推荐算法理论与实践', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('21', '前沿技术', '推荐算法理论与实践', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('22', '前沿技术', '推荐算法理论与实践', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('23', '前沿技术', '推荐算法理论与实践', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('24', '前沿技术', '推荐算法理论与实践', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('25', '前端开发', '前端零基础入门', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('26', '前端开发', '前端零基础入门', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('27', '后端开发', '前端零基础入门', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('28', '前端开发', 'Node.js+Koa2框架生态实战 - 从零模拟新浪微博', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('29', '前端开发', 'Electron+React+七牛云 实战跨平台桌面应用', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('30', '前端开发', 'Electron+React+七牛云 实战跨平台桌面应用', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('31', '前端开发', 'Vue.js 从入门到精通', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('32', '后端开发', 'Java 零基础入门', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('33', '后端开发', '告别996，开启Java高效编程之门', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('34', '后端开发', 'Go读书社区web开发与高性能架构优化', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('35', '后端开发', 'SpringCloud全面进阶之路 ', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('36', '移动开发', 'Android 零基础入门', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('37', '移动开发', '新版Kotlin从入门到精通', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('38', '移动开发', '移动端进阶高级工程师成长路线', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('39', '移动开发', 'Android工程师高薪面试突破路线', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('40', '计算机基础', 'Spark + ElasticSearch 构建电商用户标签系统实现精准营销', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('41', '计算机基础', 'Python量化投资', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('42', '计算机基础', '系统学习Docker 践行DevOps理念 2019全新升级', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('43', '计算机基础', '大数据容器化实践从入门到进阶', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('44', '运维&测试', 'Go读书社区web开发与高性能架构优化', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('45', '运维&测试', '从功能测试到自动化测试转型路线', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');
INSERT INTO `video` VALUES ('46', '运维&测试', 'Spark + ElasticSearch 构建电商用户标签系统实现精准营销', '使用卷积神经网络识别手写数字', 'download/project/01.mp4');

-- ----------------------------
-- Table structure for `webpage`
-- ----------------------------
DROP TABLE IF EXISTS `webpage`;
CREATE TABLE `webpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `w_name` varchar(80) NOT NULL,
  `w_type` enum('图片&文档','答疑解惑','学习技术','搜索资源') NOT NULL DEFAULT '图片&文档',
  `w_img` varchar(255) NOT NULL DEFAULT 'img\\webpage\\webpage3.png',
  `w_href` varchar(9999) NOT NULL,
  `w_describe` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `w_name` (`w_name`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webpage
-- ----------------------------
INSERT INTO `webpage` VALUES ('1', '菜鸟教程', '学习技术', 'img/webpage/webpage01.png', 'https://www.runoob.com/', '适合入门小白，基础技术知识，提供代码例子学习。');
INSERT INTO `webpage` VALUES ('2', 'w3cshool', '学习技术', 'img/webpage/webpage02.png', 'https://www.w3cschool.cn/html/', '基础技术知识齐全，简单易懂。');
INSERT INTO `webpage` VALUES ('3', '慕课网', '学习技术', 'img/webpage/webpage03.png', 'https://www.imooc.com/', '完整的技术学习路线，提供视频学习。');
INSERT INTO `webpage` VALUES ('4', '现代 JavaScript 教程', '学习技术', 'img/webpage/webpage04.png', 'https://zh.javascript.info/', '一个深入学习Javascript的网站。');
INSERT INTO `webpage` VALUES ('5', 'MDN', '学习技术', 'img/webpage/webpage05.png', 'https://developer.mozilla.org/zh-CN/', '深入学习前端知识，扎实基础。');
INSERT INTO `webpage` VALUES ('6', 'jQuery插件库', '学习技术', 'img/webpage/webpage06.png', 'http://www.jq22.com/', '提供大量jQuery插件使用方法，例子有非常炫酷的效果。');
INSERT INTO `webpage` VALUES ('7', 'CSDN', '答疑解惑', 'img/webpage/webpage07.png', 'https://www.csdn.net/', '解决软件安装问题，提供代码编写思路。');
INSERT INTO `webpage` VALUES ('8', '博客园', '答疑解惑', 'img/webpage/webpage08.png', 'https://www.cnblogs.com/', '解决各种技术的疑难杂症。');
INSERT INTO `webpage` VALUES ('9', 'php中文网', '搜索资源', 'img/webpage/webpage09.png', 'https://www.php.cn/', '提供各种技术的各个版本的参考手册。');
INSERT INTO `webpage` VALUES ('10', 'GitHub', '搜索资源', 'img/webpage/webpage10.png', 'https://github.com/', '最大的开源项目资源网站。');
INSERT INTO `webpage` VALUES ('11', '源码之家', '搜索资源', 'img/webpage/webpage11.png', 'https://www.mycodes.net/', '使用各种技术建站的项目源代码供我们下载。');
INSERT INTO `webpage` VALUES ('12', 'Iconfont-阿里巴巴矢量图标库', '图片&文档', 'img/webpage/webpage12.png', 'https://www.iconfont.cn/', '提供网站所需的各种小图标。');
INSERT INTO `webpage` VALUES ('13', '开源中国', '搜索资源', 'img/webpage/webpage13.png', 'http://www.oschina.net/ ', '一个提供开源项目资源网站。');
INSERT INTO `webpage` VALUES ('14', '脚本之家', '答疑解惑', 'img/webpage/webpage14.png', 'http://www.jb51.net/ ', '使用项目源代码和解答技术问题。');
INSERT INTO `webpage` VALUES ('15', 'Bootstrap中文网', '学习技术', 'img/webpage/webpage15.png', 'http://www.bootcdn.cn/', '深入学习Bootstrap技术。');
INSERT INTO `webpage` VALUES ('16', '廖雪峰的官方网站', '答疑解惑', 'img/webpage/webpage16.png', 'http://www.liaoxuefeng.com/', '各种前端疑难杂症的大佬的网站。');
INSERT INTO `webpage` VALUES ('17', '前端API查询', '搜索资源', 'img/webpage/webpage17.png', 'https://devdocs.io/', '查找所需的前端API。');
INSERT INTO `webpage` VALUES ('18', 'Iteye论坛', '答疑解惑', 'img/webpage/webpage18.png', 'http://www.iteye.com/', '本站包括了HTML、CSS、Javascript、PHP、C、Python等各种基础编程教程。');
INSERT INTO `webpage` VALUES ('19', '石墨文档', '图片&文档', 'img/webpage/webpage19.png', 'https://shimo.im/', '本站包括了HTML、CSS、Javascript、PHP、C、Python等各种基础编程教程。');
INSERT INTO `webpage` VALUES ('20', 'Google', '搜索资源', 'img/webpage/webpage20.png', 'https://www.google.com/', '最好用，但是要访问需要点技术。');
INSERT INTO `webpage` VALUES ('21', 'BaiDu', '搜索资源', 'img/webpage/webpage21.png', 'https://www.baidu.com/', '搜索结果不一定是你想要的，广告也多。');
INSERT INTO `webpage` VALUES ('22', 'Bing 国际版', '搜索资源', 'img/webpage/webpage22.png', 'https://cn.bing.com/', '国际版搜索英文还是好用的。');
INSERT INTO `webpage` VALUES ('23', 'DuckDuckGo', '搜索资源', 'img/webpage/webpage23.png', 'https://duckduckgo.com/', '从官网的介绍来看这个搜索引擎不收集用户信息，而且没有广告。');
INSERT INTO `webpage` VALUES ('24', 'Gitlogs', '搜索资源', 'img/webpage/webpage24.png', 'https://www.gitlogs.com/', 'Gitlogs 是专门针对 GitHub 项目的搜索引擎，我们通过他可以快速找到想要项目。');
INSERT INTO `webpage` VALUES ('25', '鸠摩搜书', '搜索资源', 'img/webpage/webpage25.png', 'https://www.jiumodiary.com/', '可以用来找一些技术文档手册，很多在百度网盘里。');
INSERT INTO `webpage` VALUES ('26', 'Stack Overflow', '搜索资源', 'img/webpage/webpage26.png', 'https://stackoverflow.com/search', '大部分编程问题都能在这里找到答案。');
INSERT INTO `webpage` VALUES ('27', 'Iconfinder', '图片&文档', 'img/webpage/webpage27.png', 'https://www.iconfinder.com/', '用来查找一些类似 logo 都小图标。');
INSERT INTO `webpage` VALUES ('28', 'TinEye', '图片&文档', 'img/webpage/webpage28.png', 'https://www.tineye.com/', '用图片来检索图片，我们可以上传图片或输入图片的 URL 来检索。');
INSERT INTO `webpage` VALUES ('29', 'SemanticScholar', '搜索资源', 'img/webpage/webpage29.png', 'https://www.semanticscholar.org/', '一个免费学术搜索引擎，其检索结果来自于期刊、学术会议资料或者是学术机构的文献。');
INSERT INTO `webpage` VALUES ('30', 'LibreStock', '图片&文档', 'img/webpage/webpage30.png', 'https://librestock.com/', '可以检索一些优质的高清图片。');
INSERT INTO `webpage` VALUES ('31', ' CC Search', '图片&文档', 'img/webpage/webpage31.png', 'https://ccsearch.creativecommons.org/', 'CC Search 上搜索到的图片资源都是无版权的，我们可以免费的使用。');
INSERT INTO `webpage` VALUES ('32', 'Pexels', '图片&文档', 'img/webpage/webpage32.png', 'https://www.pexels.com/', '高质量的图片网站，可以免费使用。');
INSERT INTO `webpage` VALUES ('33', 'Unsplash', '图片&文档', 'img/webpage/webpage33.png', 'https://unsplash.com/', '免费高清素材网站。');
INSERT INTO `webpage` VALUES ('34', 'Simplenote', '图片&文档', 'img/webpage/webpage34.png', 'https://simplenote.com/', '可帮助您轻松记录笔记、列表、想法等。');
INSERT INTO `webpage` VALUES ('35', 'SmartResize', '图片&文档', 'img/webpage//webpage35.png', 'https://www.smartresize.com/zh-cn', '这个工具基于 JavaScript+HTML5 编写而成的，是一个批量裁剪缩放图片的神器。');
INSERT INTO `webpage` VALUES ('36', 'picdiet', '图片&文档', 'img/webpage/webpage36.png', 'https://www.picdiet.com/zh-cn', '图片压缩工具，能极速压缩 80% 的图片大小，而不损害其质量。');
INSERT INTO `webpage` VALUES ('37', 'TinyPNG', '图片&文档', 'img/webpage/webpage37.png', 'https://tinypng.com/', '免费的在线图片压缩工具，压缩率高，无损画质，直接拖拽使用，很方便。');
