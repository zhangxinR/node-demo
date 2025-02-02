/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3307
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 23/07/2019 16:37:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article_table
-- ----------------------------
DROP TABLE IF EXISTS `article_table`;
CREATE TABLE `article_table`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author_src` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_time` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `summary` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n_like` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_table
-- ----------------------------
INSERT INTO `article_table` VALUES (1, 'blue', 'images/face_opt.png', '每年被骗百亿美元，中国企业在海外为什么老受骗？', 1563347580, '在预防和惩治外贸诈骗上，国家应该为企业撑腰。\r\n\r\n\r\n\r\n7月初，长城汽车被俄罗斯代理骗取5840万美元的新闻引发社会关注。\r\n\r\n\r\n\r\n翌日，长城汽车发布澄清公告，声明外贸纠纷属实，但否认被骗，并表示对本公司的影响并不大。\r\n\r\n\r\n\r\n长城汽车是否被骗，有待考证，却也为国内企业上了生动一课：外贸有骗术，交易需谨慎！\r\n\r\n\r\n\r\n1. 外贸陷阱多，一不小心就被收割 \r\n\r\n\r\n\r\n长城汽车在俄罗斯的外贸纠纷，不禁让人想起了15年前长虹在美国受骗。\r\n\r\n\r\n\r\n2004年，一则刊登在《深圳商报》头版头条的新闻把长虹在美国被骗的消息抖了出来——《传长虹在美国遭巨额诈骗，受骗金额可能高达数亿》。\r\n\r\n\r\n\r\n\r\n\r\n图片来源：人民网官方报道\r\n\r\n\r\n\r\n随后，长虹被骗的消息坐实，引发商界震动。\r\n\r\n\r\n\r\n改革开放后，我国家电行业飞速发展。到90年代末，随着国内市场的饱和，彩电行业的利润大大降低，不少国内彩电巨头都把眼光盯向了海外市场。作为家电行业的领军企业之一，四川长虹更是雄心勃勃地想在北美市场分一杯羹。\r\n\r\n\r\n\r\n孰料事与愿违，长虹上了美国APEX公司这条贼船。\r\n\r\n\r\n\r\nAPEX这家华人公司在成为长虹北美销售的主要中间商后，收货很积极，付款不及时，长期拖欠长虹数额惊人的货款。\r\n\r\n\r\n\r\n2004年，长虹年报显示一次性计提亏损超过30亿元。从长虹2002~2005年的财报看出，应收APEX公司的销售余款占当年海外销售额的比例从最初的69.1%在三年内上升到133.65%。巨额的应收账款大幅度减少了长虹的现金流量净额，从1999年的30亿元急剧下降到2002年的-30亿元，给公司经营造成极其恶劣的影响。时至今日，长虹在北美交的学费仍然是应收账款管理中的著名反例。\r\n\r\n\r\n\r\n\r\n\r\n图片来源：CNKI检索部分结果截图\r\n\r\n\r\n\r\n虽然曝出新闻的都是大企业，但事实上从涉及的交易总额来看，小企业在对外贸易中吃亏可能更多。\r\n\r\n\r\n\r\n因为大企业的风险控制机制即使再不完善，也总比小企业好。只不过大企业单次涉案金额大，容易搞出个大新闻。\r\n\r\n\r\n\r\n2005年，中国商务部研究院就曾经估算过，每年外贸诈骗给中国企业造成的损失至少有数十亿美元。十多年过去，每年百亿美元的诈骗损失也属保守估计。\r\n\r\n\r\n\r\n\r\n\r\n图片来源：《中国对外贸易》杂志刊文\r\n\r\n\r\n\r\n由于小企业的财务管理和风险控制更不完善、漏洞更多，骗子的诈骗方式也花样迭出。多数时候，骗子利用了海外的特殊政策，中国企业只能吃哑巴亏。\r\n\r\n\r\n\r\n臭名昭著的“土耳其骗局”，就让中国企业吃了不少亏。\r\n\r\n\r\n\r\n骗子们先注册一个土耳其的空头公司，由该公司出面将中国出口的货物骗到土耳其海关，故意拖延时间。依据土耳其海关执行条例——\r\n\r\n\r\n\r\n超过45天无人认领的货物，海关有权没收拍卖，而原收货人有优先获得该货物的权利。\r\n\r\n\r\n\r\n如果中国公司傻等，骗子公司就在45天后以低价将货物买走，然后再高价卖出分赃；如果中国公司察觉并欲通过某些介入将货物取回的话，面对的将是一连串敲诈，土耳其骗子公司会先要求支付仓储费用，之后还会继续设置更多障碍和陷阱，一步步将中国公司的钱骗完。\r\n\r\n\r\n\r\n广交会是外贸交易盛会，也是外贸诈骗的重灾区。\r\n\r\n\r\n\r\n去年四月份在微博上流传着一段老外诈骗惯犯在会场被抓的视频。还有热心网友整理了一份广交会外国老赖的名单，这份名单每年都在延长。\r\n\r\n\r\n\r\n\r\n\r\n去年四月份老外诈骗惯犯在广交会会场被抓\r\n\r\n\r\n\r\n除了直接诈骗中国生产商的产品和货款之外，利用高科技为噱头的骗术更加隐蔽。\r\n\r\n\r\n\r\n2014年10月，因无法量产提供符合苹果要求的蓝宝石屏幕，GTAT宣布破产。消息曝出后，GTAT在中国涉嫌设备合同诈骗的丑闻也被披露出来。\r\n\r\n\r\n\r\n\r\n\r\nGTAT在中国涉嫌设备合同诈骗丑闻被曝出\r\n\r\n\r\n\r\n原来，GTAT是苹果的人造蓝宝石屏幕技术服务商，利用信息不对称，忽悠很多中国企业采购其并不成熟的屏幕生产设备，甚至投资建厂，投入大量资金。\r\n\r\n\r\n\r\nGTAT破产，导致中国企业受损十几亿，巨额的前期投入血本无归。\r\n\r\n\r\n\r\n2. 中国企业，为什么总被骗？ \r\n\r\n\r\n\r\n冤有头债有主，做了冤大头，肯定有原因。\r\n\r\n\r\n\r\n反躬自省，部分中国企业内部管理有问题。\r\n\r\n\r\n\r\n企业的内部管理是个大问题，企业越大，可能出现的问题就越大。\r\n\r\n\r\n\r\n以长虹为例，企业对应收账款的监管问题就充分暴露出来。第一年看到有应收账款的显著增长但是不重视，第二年应收账款没有收回并还呈现小幅度继续增长，到了第三年坏账计提额大，发现款项可能一分钱都收不回。最终落得这样一个境地：货物出去，钱没回来，不但没有收益，更没有现金来支撑下一轮的生产循环，企业经营进退维谷。\r\n\r\n\r\n\r\n实事求是地看，外贸流程复杂，国外信用体系认证陌生，也给骗子提供了可乘之机。\r\n\r\n\r\n\r\n做对外出口，难度显然比国内生意大。比如出口货物时，企业需要关注的不仅仅是货真与价实，还有包括但不限于：付款方式和渠道、备货、包装、通关手续、装船、运输保险、提单、结汇等。\r\n\r\n\r\n\r\n\r\n\r\n图片来源：作者自制\r\n\r\n\r\n\r\n对很多小企业来说，无法把控住所有风险，在整个外贸流程里难免会存在纰漏，这些纰漏往往就成为被骗子利用的空子。\r\n\r\n\r\n\r\n很多国内的企业和当地政府对国外的信用认证体系不了解，加之“崇洋媚外”的心理作祟，轻易就相信了国外骗子。\r\n\r\n\r\n\r\n骗子们靠大方的出手或者制作精美的公司网页来营造一个大公司的假象，骗取了国内公司的信任。\r\n\r\n\r\n\r\n高明的骗术，也让人防不胜防。\r\n\r\n\r\n\r\n骗子的骗术花样翻新与时俱进，甚至是多种骗术并用，让中国企业彻底昏头。\r\n\r\n\r\n\r\n除了前文提到的几种之外，还有——\r\n\r\n\r\n\r\n伪装成知名买方的代理人，大量收货，混淆买方与中间商，让中国销售方傻傻分不清；\r\n\r\n\r\n\r\n勾结货代无单放货，货代又未在中国营业注册，无法追偿；\r\n\r\n\r\n\r\n利用金融管理落后国家的银行，不按国际规则操作，未经允许就私自放单等。\r\n\r\n\r\n\r\n怕骗子忽悠，更怕骗子组团忽悠，一般分六步走：\r\n\r\n\r\n\r\n第一步，骗子先是以国外采购商的身份接近中国外贸企业，签订采购合同，一切都很正常。\r\n\r\n\r\n\r\n第二步，付款的时候，采购商会以高出货值多倍的金额打款，更离奇的是，付款的海外账户并不是合同中约定的账户。\r\n\r\n\r\n\r\n第三步，采购商利用诸多借口欺骗中国企业，并说多出的款项是因为采购商在中国国内的另一个供应商没有美金账号，需要通过现在的账户中转代付。\r\n\r\n\r\n\r\n第四步，很多中国企业本着发展长期生意的目的，都爽快地做了资金中转站。\r\n\r\n\r\n\r\n第五步，当超额款项被提走，货物也安全到港后，新一组骗子就出现了。他们假装成支付货款的账户所有者，报案称，因为自己受骗，所以才把钱打到了错误的账户。\r\n\r\n\r\n\r\n第六步，此时，接受款项的中国公司和最早的采购公司早就人间蒸发了。中国公司只能把钱全数退回，不然将面临海外法律的制裁。\r\n\r\n\r\n\r\n真是“道高一尺，魔高一丈”。\r\n\r\n\r\n\r\n3. 骗我中国企业者，虽远必打 \r\n\r\n\r\n\r\n随着中国日益开放，中国企业走出国门，把产品卖到外国，既是必需，亦是必然。\r\n\r\n\r\n\r\n面对越来越复杂的外贸形势，中国企业又该如何避免外贸诈骗？\r\n\r\n\r\n\r\n就企业而言，一是要完善内部管理特别是风控机制，提高警惕，避免踩雷，二是要团结起来，共享信息，帮助同行及时识破骗术。\r\n\r\n\r\n\r\n更为重要的是，国家要为企业撑腰。\r\n\r\n\r\n\r\n在《华为是“专利流氓”？美国参议员急了》一文，我介绍了华为要求Verizon支付10亿美元的专利费，美国参议员马可·卢比奥跳出来，倒打一耙指责华为是“专利流氓”。\r\n\r\n\r\n\r\n\r\n\r\n马可·卢比奥推特指责华为是“专利流氓”\r\n\r\n\r\n\r\n马可·卢比奥虽是异类，但美国保护自己本国企业，也是传统。\r\n\r\n\r\n\r\n最典型莫过于《美国陷阱》中案例，美国利用“长臂管辖”、《反海外腐败法》等司法武器打击美国企业商业竞争对手。\r\n\r\n\r\n\r\n在《波音战空客、美欧撕破脸：启示中国必须要造自己的大飞机》中，我也介绍了美国欧洲支持本国航空工业，达成美欧垄断的格局。\r\n\r\n\r\n\r\n在预防和惩治外贸诈骗上，国家应该为企业撑腰。比如建立外企黑名单制度，及时公开黑名单警示企业，限制黑名单内的企业与中国开展业务。必要时，帮助中国企业追诉外国骗子。\r\n\r\n\r\n\r\n骗我中国企业者，虽远必打。', '骗我中国企业者，虽远必打。', 33);
INSERT INTO `article_table` VALUES (2, '谷雨数据©', 'images/face_opt.png', '有多少大汗淋漓的人在假装健身？', 1563347580, '头图来自：东方IC；本文来自微信公众号：谷雨数据 （ID：guyudata）；数据编辑：李璋；出品：谷雨工作室×镝次元\r\n\r\n\r\n\r\n打开职场人的朋友圈，可以没有晒加班，但\"吃草\"、\"撸铁\"、\"夜跑\"永远少不了。为啥职场人喜欢晒健身？健身这件事，除了可以\"燃烧卡路里\"，是否还有别的妙用？\r\n\r\n\r\n\r\n多少白领爱健身？\r\n\r\n\r\n\r\n\"游泳健身，了解一下？\"最近几年，健身房的传单发遍了一线城市的地铁口。中国的健身房都开在哪？\r\n\r\n\r\n\r\n健身内容平台GymSquare发布的《2018中国健身行业数据报告》显示，上海、北京、深圳是中国健身房最多的三个城市，其中上海和北京的门店数量均超过4500家，遥遥领先。\r\n\r\n\r\n\r\n这些健身房，瞄准的就是一线城市的白领群体。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n根据国内一家招聘平台发布的《白领健身报告》，85.5%的被调查白领去过健身房，其中平均每周都去的占83.8%，近四成每周去健身房3次及以上，当然每周去1到2次最为常见。\r\n\r\n\r\n\r\n除了去健身房，在家配合健身APP健身也相当流行。对相关APP的统计数据显示，2018年6月，健身运动APP的用户规模已经超过1亿人，这些用户同样集中在一线城市。\r\n\r\n\r\n\r\n健身，是白领们无声的广场舞。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n为啥他们这么爱健身？\r\n\r\n\r\n\r\n每个职场人都在为事业\"奋斗\"。久坐不动、饮食不规律、频繁熬夜等是一线城市白领群体的生活常态。这些都会造成身体处于亚健康状态。\r\n\r\n\r\n\r\n和上一辈相比，虽然如今的白领不用风吹日晒，用着一尘不染的iMac，但最后的结果，大家都是在拼体力赚钱。\r\n\r\n\r\n\r\n根据全球职场平台LinkedIn发布的成功认知调查，超六成职场人将\"身体健康\"视为最看重的成功指标，这个比例甚至超过了\"职业晋升\"。\r\n\r\n\r\n\r\n《一线城市白领健康状况及就医行为报告》显示，颈椎病、干眼症、鼠标手、肩周炎等是白领群体的常见病。\r\n\r\n\r\n\r\n对他们来说，身体锻炼，是一种\"刚需\"。\r\n\r\n\r\n\r\n然而，健身的功能不只锻炼身体那么简单。\r\n\r\n\r\n\r\n《白领健身报告》显示，保持身材是白领们健身的主要目的，其次是为了缓解压力、舒缓心情。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n在竞争激烈的职场，保持好身材和好的精神面貌，是提升职业形象的不二法门。\r\n\r\n\r\n\r\n可以说，健身是白领朋友圈里最\"政治正确\"的话题，是\"骗赞\"的最佳手段。\r\n\r\n\r\n\r\n值得一提的是，30.1%的白领去健身房是为了交朋友。\r\n\r\n\r\n\r\n不管男生女生，热爱健身的人都显得目标感强，追求更好的自身状态，对异性有吸引力。同时，健身也为陌生人搭讪提供了不显唐突的理由。\r\n\r\n\r\n\r\n健身房社交俨然成为线下社交的新趋势。\r\n\r\n\r\n\r\n调查还显示，工作、生活太忙成为降低健身频率的最主要原因。天气原因、距离太远、情绪不高等都可能产（都）生（是）影（借）响（口）。\r\n\r\n\r\n\r\n还有6.2%的人勇敢地承认，自己就是单纯因为\"懒\"。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n为健身可以花多少钱？\r\n\r\n\r\n\r\n爱运动是当下中产阶级的重要标签之一。\r\n\r\n\r\n\r\nLinkedIn在2018年发布的《职场心态洞察报告》显示，运动健身已经成为一线城市职场人占比最高的兴趣爱好，超过47%的职场人会在这项上投资。\r\n\r\n\r\n\r\n没有高尔夫俱乐部的会员卡，没有骑马、潜水、登山、滑雪等特长，办一张健身卡还是比较简单的。\r\n\r\n\r\n\r\n《白领健身报告》显示，高档连锁的大型健身房最受职场精英们的欢迎。\r\n\r\n\r\n\r\n在2017年不到一年的时间里，白领们在健身房的花费3000-5000元的人最多，占47.6%，基本上是高档连锁型健身房一张年卡的价格。还有21.9%的人花费在5000元以上，应该包括请私教的费用。\r\n\r\n\r\n\r\n据另一份《职场再学习调查报告》，2017年上半年，白领们用在职场学习的花费集中在500-2000元，这些费用主要用于考证、线上线下培训、在职学历教育等。\r\n\r\n\r\n\r\n比较之后不难看出，职场精英们在身体上的投入远超过在脑子上的投入。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n白领们舍得为健身花钱，然而有多少人是办了卡之后再也没去过？就像把跑步机买回家，最后沦为\"晾衣架\"一样，健身卡也可能沦为一张\"洗澡卡\"。\r\n\r\n\r\n\r\n想在事业上有所成就的白领们，即便是办了一张健身卡，也往往把时间奉献给了白天的工作和晚上的邮件。\r\n\r\n\r\n\r\n他们之中，不知有多少最终在一次次的\"健身焦虑\"中，慢慢度过自己肥胖的中年。', '健身，是白领们无声的广场舞。', 0);

-- ----------------------------
-- Table structure for banner_table
-- ----------------------------
DROP TABLE IF EXISTS `banner_table`;
CREATE TABLE `banner_table`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sub_title` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `src` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '这是banner表格' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner_table
-- ----------------------------
INSERT INTO `banner_table` VALUES (1, '海边的风景', '黄色', 'images/1.jpg');
INSERT INTO `banner_table` VALUES (2, '也是海边的风景', '蓝色', 'images/2.jpg');
INSERT INTO `banner_table` VALUES (3, '河边的风景', '黑色的', 'images/3.jpg');

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table`  (
  `ID` int(11) NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `src` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
