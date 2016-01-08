/*
SQLyog Community v12.16 (64 bit)
MySQL - 5.5.23 : Database - web_starter_kit
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`web_starter_kit` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `web_starter_kit`;

/*Table structure for table `paises` */

DROP TABLE IF EXISTS `paises`;

CREATE TABLE `paises` (
  `country_id` int(5) NOT NULL AUTO_INCREMENT,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL,
  `spanish_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=latin1;

/*Data for the table `paises` */

insert  into `paises`(`country_id`,`iso2`,`short_name`,`long_name`,`iso3`,`numcode`,`un_member`,`calling_code`,`cctld`,`spanish_name`) values 
(1,'AF','Afghanistan','Islamic Republic of Afghanistan','AFG','004','yes','93','.af','Afganist&aacute;n'),
(2,'AX','Aland Islands','&Aring;land Islands','ALA','248','no','358','.ax','Islas &Acirc;land'),
(3,'AL','Albania','Republic of Albania','ALB','008','yes','355','.al','Albania'),
(4,'DZ','Algeria','People\'s Democratic Republic of Algeria','DZA','012','yes','213','.dz','Argelia'),
(5,'AS','American Samoa','American Samoa','ASM','016','no','1+684','.as','Samoa Americana'),
(6,'AD','Andorra','Principality of Andorra','AND','020','yes','376','.ad','Andorra'),
(7,'AO','Angola','Republic of Angola','AGO','024','yes','244','.ao','Angola'),
(8,'AI','Anguilla','Anguilla','AIA','660','no','1+264','.ai','Anguilla'),
(9,'AQ','Antarctica','Antarctica','ATA','010','no','672','.aq','Ant&aacute;rtida'),
(10,'AG','Antigua and Barbuda','Antigua and Barbuda','ATG','028','yes','1+268','.ag','Antigua y Barbuda'),
(11,'AR','Argentina','Argentine Republic','ARG','032','yes','54','.ar','Argentina'),
(12,'AM','Armenia','Republic of Armenia','ARM','051','yes','374','.am','Armenia'),
(13,'AW','Aruba','Aruba','ABW','533','no','297','.aw','Aruba'),
(14,'AU','Australia','Commonwealth of Australia','AUS','036','yes','61','.au','Australia'),
(15,'AT','Austria','Republic of Austria','AUT','040','yes','43','.at','Austria'),
(16,'AZ','Azerbaijan','Republic of Azerbaijan','AZE','031','yes','994','.az','Azerbaiy&aacute;n'),
(17,'BS','Bahamas','Commonwealth of The Bahamas','BHS','044','yes','1+242','.bs','Bahamas'),
(18,'BH','Bahrain','Kingdom of Bahrain','BHR','048','yes','973','.bh','Bahrein'),
(19,'BD','Bangladesh','People\'s Republic of Bangladesh','BGD','050','yes','880','.bd','Bangladesh'),
(20,'BB','Barbados','Barbados','BRB','052','yes','1+246','.bb','Barbados'),
(21,'BY','Belarus','Republic of Belarus','BLR','112','yes','375','.by','Bielorrusia'),
(22,'BE','Belgium','Kingdom of Belgium','BEL','056','yes','32','.be','B&eacute;lgica'),
(23,'BZ','Belize','Belize','BLZ','084','yes','501','.bz','Belice'),
(24,'BJ','Benin','Republic of Benin','BEN','204','yes','229','.bj','Ben&iacute;n'),
(25,'BM','Bermuda','Bermuda Islands','BMU','060','no','1+441','.bm','Bermudas'),
(26,'BT','Bhutan','Kingdom of Bhutan','BTN','064','yes','975','.bt','But&aacute;n'),
(27,'BO','Bolivia','Plurinational State of Bolivia','BOL','068','yes','591','.bo','Bolivia'),
(28,'BQ','Bonaire, Sint Eustatius and Saba','Bonaire, Sint Eustatius and Saba','BES','535','no','599','.bq','Caribe Neerland&eacute;s'),
(29,'BA','Bosnia and Herzegovina','Bosnia and Herzegovina','BIH','070','yes','387','.ba','Bosnia-Herzegovina'),
(30,'BW','Botswana','Republic of Botswana','BWA','072','yes','267','.bw','Botswana'),
(31,'BV','Bouvet Island','Bouvet Island','BVT','074','no','NONE','.bv','Isla Bouvet'),
(32,'BR','Brazil','Federative Republic of Brazil','BRA','076','yes','55','.br','Brasil'),
(33,'IO','British Indian Ocean Territory','British Indian Ocean Territory','IOT','086','no','246','.io','Territorio Brit&aacute;nico del Oc&eacute;ano Indico'),
(34,'BN','Brunei','Brunei Darussalam','BRN','096','yes','673','.bn','Brunei Darussalam'),
(35,'BG','Bulgaria','Republic of Bulgaria','BGR','100','yes','359','.bg','Bulgaria'),
(36,'BF','Burkina Faso','Burkina Faso','BFA','854','yes','226','.bf','Burkina Faso'),
(37,'BI','Burundi','Republic of Burundi','BDI','108','yes','257','.bi','Burundi'),
(38,'KH','Cambodia','Kingdom of Cambodia','KHM','116','yes','855','.kh','Camboya'),
(39,'CM','Cameroon','Republic of Cameroon','CMR','120','yes','237','.cm','Camer&uacute;n'),
(40,'CA','Canada','Canada','CAN','124','yes','1','.ca','Canad&aacute;'),
(41,'CV','Cape Verde','Republic of Cape Verde','CPV','132','yes','238','.cv','Cabo Verde'),
(42,'KY','Cayman Islands','The Cayman Islands','CYM','136','no','1+345','.ky','Islas Caim&aacute;n'),
(43,'CF','Central African Republic','Central African Republic','CAF','140','yes','236','.cf','Rep&uacute;blica Centroafricana'),
(44,'TD','Chad','Republic of Chad','TCD','148','yes','235','.td','Chad'),
(45,'CL','Chile','Republic of Chile','CHL','152','yes','56','.cl','Chile'),
(46,'CN','China','People\'s Republic of China','CHN','156','yes','86','.cn','China'),
(47,'CX','Christmas Island','Christmas Island','CXR','162','no','61','.cx','Isla de Navidad, Isla Christmas'),
(48,'CC','Cocos (Keeling) Islands','Cocos (Keeling) Islands','CCK','166','no','61','.cc','Islas Cocos'),
(49,'CO','Colombia','Republic of Colombia','COL','170','yes','57','.co','Colombia'),
(50,'KM','Comoros','Union of the Comoros','COM','174','yes','269','.km','Comores'),
(51,'CG','Congo','Republic of the Congo','COG','178','yes','242','.cg','Rep&uacute;blica del Congo'),
(52,'CK','Cook Islands','Cook Islands','COK','184','some','682','.ck','Islas Cook'),
(53,'CR','Costa Rica','Republic of Costa Rica','CRI','188','yes','506','.cr','Costa Rica'),
(54,'CI','Cote d\'ivoire (Ivory Coast)','Republic of C&ocirc;te D\'Ivoire (Ivory Coast)','CIV','384','yes','225','.ci','Costa de Marfil'),
(55,'HR','Croatia','Republic of Croatia','HRV','191','yes','385','.hr','Croacia'),
(56,'CU','Cuba','Republic of Cuba','CUB','192','yes','53','.cu','Cuba'),
(57,'CW','Curacao','Cura&ccedil;ao','CUW','531','no','599','.cw','Curazao'),
(58,'CY','Cyprus','Republic of Cyprus','CYP','196','yes','357','.cy','Chipre'),
(59,'CZ','Czech Republic','Czech Republic','CZE','203','yes','420','.cz','Rep&uacute;blica Checa'),
(60,'CD','Democratic Republic of the Congo','Democratic Republic of the Congo','COD','180','yes','243','.cd','Rep&uacute;blica Democr&aacute;tica del Congo'),
(61,'DK','Denmark','Kingdom of Denmark','DNK','208','yes','45','.dk','Dinamarca'),
(62,'DJ','Djibouti','Republic of Djibouti','DJI','262','yes','253','.dj','Djibouti'),
(63,'DM','Dominica','Commonwealth of Dominica','DMA','212','yes','1+767','.dm','Dominica'),
(64,'DO','Dominican Republic','Dominican Republic','DOM','214','yes','1+809, 8','.do','Rep&uacute;blica Dominicana'),
(65,'EC','Ecuador','Republic of Ecuador','ECU','218','yes','593','.ec','Ecuador'),
(66,'EG','Egypt','Arab Republic of Egypt','EGY','818','yes','20','.eg','Egiipto'),
(67,'SV','El Salvador','Republic of El Salvador','SLV','222','yes','503','.sv','El Salvador'),
(68,'GQ','Equatorial Guinea','Republic of Equatorial Guinea','GNQ','226','yes','240','.gq','Guinea Ecuatorial'),
(69,'ER','Eritrea','State of Eritrea','ERI','232','yes','291','.er','Eritrea'),
(70,'EE','Estonia','Republic of Estonia','EST','233','yes','372','.ee','Estonia'),
(71,'ET','Ethiopia','Federal Democratic Republic of Ethiopia','ETH','231','yes','251','.et','Etiop&iacute;a'),
(72,'FK','Falkland Islands (Malvinas)','The Falkland Islands (Malvinas)','FLK','238','no','500','.fk','Islas Malvinas'),
(73,'FO','Faroe Islands','The Faroe Islands','FRO','234','no','298','.fo','Islas Feroe'),
(74,'FJ','Fiji','Republic of Fiji','FJI','242','yes','679','.fj','Fiyi'),
(75,'FI','Finland','Republic of Finland','FIN','246','yes','358','.fi','Finlandia'),
(76,'FR','France','French Republic','FRA','250','yes','33','.fr','Francia'),
(77,'GF','French Guiana','French Guiana','GUF','254','no','594','.gf','Guayana Francesa'),
(78,'PF','French Polynesia','French Polynesia','PYF','258','no','689','.pf','Polinesia Francesa'),
(79,'TF','French Southern Territories','French Southern Territories','ATF','260','no',NULL,'.tf','Tierras Australes Frencesas'),
(80,'GA','Gabon','Gabonese Republic','GAB','266','yes','241','.ga','Gab&oacute;n'),
(81,'GM','Gambia','Republic of The Gambia','GMB','270','yes','220','.gm','Gambia'),
(82,'GE','Georgia','Georgia','GEO','268','yes','995','.ge','Georgia'),
(83,'DE','Germany','Federal Republic of Germany','DEU','276','yes','49','.de','Alemania'),
(84,'GH','Ghana','Republic of Ghana','GHA','288','yes','233','.gh','Ghana'),
(85,'GI','Gibraltar','Gibraltar','GIB','292','no','350','.gi','Gibraltar'),
(86,'GR','Greece','Hellenic Republic','GRC','300','yes','30','.gr','Grecia'),
(87,'GL','Greenland','Greenland','GRL','304','no','299','.gl','Groenlandia'),
(88,'GD','Grenada','Grenada','GRD','308','yes','1+473','.gd','Granada'),
(89,'GP','Guadaloupe','Guadeloupe','GLP','312','no','590','.gp','Guadalupe'),
(90,'GU','Guam','Guam','GUM','316','no','1+671','.gu','Guam'),
(91,'GT','Guatemala','Republic of Guatemala','GTM','320','yes','502','.gt','Guatemala'),
(92,'GG','Guernsey','Guernsey','GGY','831','no','44','.gg','Guernsey'),
(93,'GN','Guinea','Republic of Guinea','GIN','324','yes','224','.gn','Rep&uacute;blica Guinea'),
(94,'GW','Guinea-Bissau','Republic of Guinea-Bissau','GNB','624','yes','245','.gw','Guinea Bissau'),
(95,'GY','Guyana','Co-operative Republic of Guyana','GUY','328','yes','592','.gy','Guyana'),
(96,'HT','Haiti','Republic of Haiti','HTI','332','yes','509','.ht','Haiti'),
(97,'HM','Heard Island and McDonald Islands','Heard Island and McDonald Islands','HMD','334','no','NONE','.hm','Islas de Heard y McDonald'),
(98,'HN','Honduras','Republic of Honduras','HND','340','yes','504','.hn','Honduras'),
(99,'HK','Hong Kong','Hong Kong','HKG','344','no','852','.hk','Hong Kong'),
(100,'HU','Hungary','Hungary','HUN','348','yes','36','.hu','Hungr&iacute;a'),
(101,'IS','Iceland','Republic of Iceland','ISL','352','yes','354','.is','Islandia'),
(102,'IN','India','Republic of India','IND','356','yes','91','.in','India'),
(103,'ID','Indonesia','Republic of Indonesia','IDN','360','yes','62','.id','Indonesia'),
(104,'IR','Iran','Islamic Republic of Iran','IRN','364','yes','98','.ir','Ir&aacute;n'),
(105,'IQ','Iraq','Republic of Iraq','IRQ','368','yes','964','.iq','Iraq'),
(106,'IE','Ireland','Ireland','IRL','372','yes','353','.ie','Irlanda'),
(107,'IM','Isle of Man','Isle of Man','IMN','833','no','44','.im','Isla Man'),
(108,'IL','Israel','State of Israel','ISR','376','yes','972','.il','Israel'),
(109,'IT','Italy','Italian Republic','ITA','380','yes','39','.jm','Italia'),
(110,'JM','Jamaica','Jamaica','JAM','388','yes','1+876','.jm','Jamaica'),
(111,'JP','Japan','Japan','JPN','392','yes','81','.jp','Jap&oacute;n'),
(112,'JE','Jersey','The Bailiwick of Jersey','JEY','832','no','44','.je','Jersey'),
(113,'JO','Jordan','Hashemite Kingdom of Jordan','JOR','400','yes','962','.jo','Jordania'),
(114,'KZ','Kazakhstan','Republic of Kazakhstan','KAZ','398','yes','7','.kz','Kazajst&aacute;n'),
(115,'KE','Kenya','Republic of Kenya','KEN','404','yes','254','.ke','Kenia'),
(116,'KI','Kiribati','Republic of Kiribati','KIR','296','yes','686','.ki','Kiribati'),
(117,'XK','Kosovo','Republic of Kosovo','---','---','some','381','','Kosovo'),
(118,'KW','Kuwait','State of Kuwait','KWT','414','yes','965','.kw','Kuwait'),
(119,'KG','Kyrgyzstan','Kyrgyz Republic','KGZ','417','yes','996','.kg','Kirguist&aacute;n'),
(120,'LA','Laos','Lao People\'s Democratic Republic','LAO','418','yes','856','.la','Laos'),
(121,'LV','Latvia','Republic of Latvia','LVA','428','yes','371','.lv','Letonia'),
(122,'LB','Lebanon','Republic of Lebanon','LBN','422','yes','961','.lb','L&iacute;bano'),
(123,'LS','Lesotho','Kingdom of Lesotho','LSO','426','yes','266','.ls','Lesotho'),
(124,'LR','Liberia','Republic of Liberia','LBR','430','yes','231','.lr','Liberia'),
(125,'LY','Libya','Libya','LBY','434','yes','218','.ly','Libia'),
(126,'LI','Liechtenstein','Principality of Liechtenstein','LIE','438','yes','423','.li','Liechtenstein'),
(127,'LT','Lithuania','Republic of Lithuania','LTU','440','yes','370','.lt','Lituania'),
(128,'LU','Luxembourg','Grand Duchy of Luxembourg','LUX','442','yes','352','.lu','Luxemburgo'),
(129,'MO','Macao','The Macao Special Administrative Region','MAC','446','no','853','.mo','Macao'),
(130,'MK','Macedonia','The Former Yugoslav Republic of Macedonia','MKD','807','yes','389','.mk','Macedonia'),
(131,'MG','Madagascar','Republic of Madagascar','MDG','450','yes','261','.mg','Madagascar'),
(132,'MW','Malawi','Republic of Malawi','MWI','454','yes','265','.mw','Malawi'),
(133,'MY','Malaysia','Malaysia','MYS','458','yes','60','.my','Malasia'),
(134,'MV','Maldives','Republic of Maldives','MDV','462','yes','960','.mv','Maldivas'),
(135,'ML','Mali','Republic of Mali','MLI','466','yes','223','.ml','Mal&iacute;'),
(136,'MT','Malta','Republic of Malta','MLT','470','yes','356','.mt','Malta'),
(137,'MH','Marshall Islands','Republic of the Marshall Islands','MHL','584','yes','692','.mh','Islas Marshall'),
(138,'MQ','Martinique','Martinique','MTQ','474','no','596','.mq','Martinica'),
(139,'MR','Mauritania','Islamic Republic of Mauritania','MRT','478','yes','222','.mr','Mauritania'),
(140,'MU','Mauritius','Republic of Mauritius','MUS','480','yes','230','.mu','Mauricio'),
(141,'YT','Mayotte','Mayotte','MYT','175','no','262','.yt','Mayotte'),
(142,'MX','Mexico','United Mexican States','MEX','484','yes','52','.mx','M&eacute;xico'),
(143,'FM','Micronesia','Federated States of Micronesia','FSM','583','yes','691','.fm','Micronesia'),
(144,'MD','Moldava','Republic of Moldova','MDA','498','yes','373','.md','Modavia'),
(145,'MC','Monaco','Principality of Monaco','MCO','492','yes','377','.mc','M&oacute;naco'),
(146,'MN','Mongolia','Mongolia','MNG','496','yes','976','.mn','Mongolia'),
(147,'ME','Montenegro','Montenegro','MNE','499','yes','382','.me','Montenegro'),
(148,'MS','Montserrat','Montserrat','MSR','500','no','1+664','.ms','Montserrat'),
(149,'MA','Morocco','Kingdom of Morocco','MAR','504','yes','212','.ma','Marruecos'),
(150,'MZ','Mozambique','Republic of Mozambique','MOZ','508','yes','258','.mz','Mozambique'),
(151,'MM','Myanmar (Burma)','Republic of the Union of Myanmar','MMR','104','yes','95','.mm','Myanmar (Birmania)'),
(152,'NA','Namibia','Republic of Namibia','NAM','516','yes','264','.na','Namibia'),
(153,'NR','Nauru','Republic of Nauru','NRU','520','yes','674','.nr','Nauru'),
(154,'NP','Nepal','Federal Democratic Republic of Nepal','NPL','524','yes','977','.np','Nepal'),
(155,'NL','Netherlands','Kingdom of the Netherlands','NLD','528','yes','31','.nl','Pa&iacute;ses Bajos, Holanda'),
(156,'NC','New Caledonia','New Caledonia','NCL','540','no','687','.nc','Nueva Caledonia'),
(157,'NZ','New Zealand','New Zealand','NZL','554','yes','64','.nz','Nueva Zelanda'),
(158,'NI','Nicaragua','Republic of Nicaragua','NIC','558','yes','505','.ni','Nicaragua'),
(159,'NE','Niger','Republic of Niger','NER','562','yes','227','.ne','Niger'),
(160,'NG','Nigeria','Federal Republic of Nigeria','NGA','566','yes','234','.ng','Nigeria'),
(161,'NU','Niue','Niue','NIU','570','some','683','.nu','Niue'),
(162,'NF','Norfolk Island','Norfolk Island','NFK','574','no','672','.nf','Norfolk Island'),
(163,'KP','North Korea','Democratic People\'s Republic of Korea','PRK','408','yes','850','.kp','Corea del Norte'),
(164,'MP','Northern Mariana Islands','Northern Mariana Islands','MNP','580','no','1+670','.mp','Marianas del Norte'),
(165,'NO','Norway','Kingdom of Norway','NOR','578','yes','47','.no','Noruega'),
(166,'OM','Oman','Sultanate of Oman','OMN','512','yes','968','.om','Om&aacute;man'),
(167,'PK','Pakistan','Islamic Republic of Pakistan','PAK','586','yes','92','.pk','Pakist&aacute;n'),
(168,'PW','Palau','Republic of Palau','PLW','585','yes','680','.pw','Palau'),
(169,'PS','Palestine','State of Palestine (or Occupied Palestinian Territory)','PSE','275','some','970','.ps','Palestina'),
(170,'PA','Panama','Republic of Panama','PAN','591','yes','507','.pa','Panam&aacute;'),
(171,'PG','Papua New Guinea','Independent State of Papua New Guinea','PNG','598','yes','675','.pg','Pap&uacute;a-Nueva Guinea'),
(172,'PY','Paraguay','Republic of Paraguay','PRY','600','yes','595','.py','Paraguay'),
(173,'PE','Peru','Republic of Peru','PER','604','yes','51','.pe','Per&uacute;'),
(174,'PH','Phillipines','Republic of the Philippines','PHL','608','yes','63','.ph','Filipinas'),
(175,'PN','Pitcairn','Pitcairn','PCN','612','no','NONE','.pn','Isla Pitcairn'),
(176,'PL','Poland','Republic of Poland','POL','616','yes','48','.pl','Polonia'),
(177,'PT','Portugal','Portuguese Republic','PRT','620','yes','351','.pt','Portugal'),
(178,'PR','Puerto Rico','Commonwealth of Puerto Rico','PRI','630','no','1+939','.pr','Puerto Rico'),
(179,'QA','Qatar','State of Qatar','QAT','634','yes','974','.qa','Qatar'),
(180,'RE','Reunion','R&eacute;union','REU','638','no','262','.re','Reuni&oacute;n'),
(181,'RO','Romania','Romania','ROU','642','yes','40','.ro','Rumania'),
(182,'RU','Russia','Russian Federation','RUS','643','yes','7','.ru','Federaci&oacute;n Rusa'),
(183,'RW','Rwanda','Republic of Rwanda','RWA','646','yes','250','.rw','Ruanda'),
(184,'BL','Saint Barthelemy','Saint Barth&eacute;lemy','BLM','652','no','590','.bl','San Barolom&eacute;'),
(185,'SH','Saint Helena','Saint Helena, Ascension and Tristan da Cunha','SHN','654','no','290','.sh','Santa Elena'),
(186,'KN','Saint Kitts and Nevis','Federation of Saint Christopher and Nevis','KNA','659','yes','1+869','.kn','San Cristobal y Nevis'),
(187,'LC','Saint Lucia','Saint Lucia','LCA','662','yes','1+758','.lc','Santa Luc&iacute;a'),
(188,'MF','Saint Martin','Saint Martin','MAF','663','no','590','.mf','San Mart&iacute;n'),
(189,'PM','Saint Pierre and Miquelon','Saint Pierre and Miquelon','SPM','666','no','508','.pm','San Pedro y Miquel&oacute;n'),
(190,'VC','Saint Vincent and the Grenadines','Saint Vincent and the Grenadines','VCT','670','yes','1+784','.vc','San Vincente y Granadinas'),
(191,'WS','Samoa','Independent State of Samoa','WSM','882','yes','685','.ws','Samoa'),
(192,'SM','San Marino','Republic of San Marino','SMR','674','yes','378','.sm','San Marino'),
(193,'ST','Sao Tome and Principe','Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe','STP','678','yes','239','.st','San Tom&eacute; y Principe'),
(194,'SA','Saudi Arabia','Kingdom of Saudi Arabia','SAU','682','yes','966','.sa','Arabia Saudita'),
(195,'SN','Senegal','Republic of Senegal','SEN','686','yes','221','.sn','Senegal'),
(196,'RS','Serbia','Republic of Serbia','SRB','688','yes','381','.rs','Serbia'),
(197,'SC','Seychelles','Republic of Seychelles','SYC','690','yes','248','.sc','Seychelles'),
(198,'SL','Sierra Leone','Republic of Sierra Leone','SLE','694','yes','232','.sl','Sierra Leona'),
(199,'SG','Singapore','Republic of Singapore','SGP','702','yes','65','.sg','Singapur'),
(200,'SX','Sint Maarten','Sint Maarten','SXM','534','no','1+721','.sx','Sint Maarten'),
(201,'SK','Slovakia','Slovak Republic','SVK','703','yes','421','.sk','Eslovaquia'),
(202,'SI','Slovenia','Republic of Slovenia','SVN','705','yes','386','.si','Eslovenia'),
(203,'SB','Solomon Islands','Solomon Islands','SLB','090','yes','677','.sb','Islas Salom&oacute;n'),
(204,'SO','Somalia','Somali Republic','SOM','706','yes','252','.so','Somalia'),
(205,'ZA','South Africa','Republic of South Africa','ZAF','710','yes','27','.za','Sud&aacute;frica'),
(206,'GS','South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands','SGS','239','no','500','.gs','Sudo Georgia y los Islas Sandwich del Sur'),
(207,'KR','South Korea','Republic of Korea','KOR','410','yes','82','.kr','Corea del Sur'),
(208,'SS','South Sudan','Republic of South Sudan','SSD','728','yes','211','.ss','Sud&aacute;n del Sur'),
(209,'ES','Spain','Kingdom of Spain','ESP','724','yes','34','.es','Espa&ntilde;a'),
(210,'LK','Sri Lanka','Democratic Socialist Republic of Sri Lanka','LKA','144','yes','94','.lk','Sri Lanka'),
(211,'SD','Sudan','Republic of the Sudan','SDN','729','yes','249','.sd','Sud&aacute;n'),
(212,'SR','Suriname','Republic of Suriname','SUR','740','yes','597','.sr','Surinam'),
(213,'SJ','Svalbard and Jan Mayen','Svalbard and Jan Mayen','SJM','744','no','47','.sj','Isla Jan Mayen y Archipi&eacute;lago de Svalbard'),
(214,'SZ','Swaziland','Kingdom of Swaziland','SWZ','748','yes','268','.sz','Swazilandia'),
(215,'SE','Sweden','Kingdom of Sweden','SWE','752','yes','46','.se','Suecia'),
(216,'CH','Switzerland','Swiss Confederation','CHE','756','yes','41','.ch','Suiza'),
(217,'SY','Syria','Syrian Arab Republic','SYR','760','yes','963','.sy','Siria'),
(218,'TW','Taiwan','Republic of China (Taiwan)','TWN','158','former','886','.tw','Taiwan'),
(219,'TJ','Tajikistan','Republic of Tajikistan','TJK','762','yes','992','.tj','Tadjikistan'),
(220,'TZ','Tanzania','United Republic of Tanzania','TZA','834','yes','255','.tz','Tanzania'),
(221,'TH','Thailand','Kingdom of Thailand','THA','764','yes','66','.th','Tailandia'),
(222,'TL','Timor-Leste (East Timor)','Democratic Republic of Timor-Leste','TLS','626','yes','670','.tl','Timor Oriental'),
(223,'TG','Togo','Togolese Republic','TGO','768','yes','228','.tg','Togo'),
(224,'TK','Tokelau','Tokelau','TKL','772','no','690','.tk','Tokelau'),
(225,'TO','Tonga','Kingdom of Tonga','TON','776','yes','676','.to','Tonga'),
(226,'TT','Trinidad and Tobago','Republic of Trinidad and Tobago','TTO','780','yes','1+868','.tt','Trinidad y Tobago'),
(227,'TN','Tunisia','Republic of Tunisia','TUN','788','yes','216','.tn','T&uacute;ez'),
(228,'TR','Turkey','Republic of Turkey','TUR','792','yes','90','.tr','Turqu&iacute;a'),
(229,'TM','Turkmenistan','Turkmenistan','TKM','795','yes','993','.tm','Turkmenistan'),
(230,'TC','Turks and Caicos Islands','Turks and Caicos Islands','TCA','796','no','1+649','.tc','Islas Turcas y Caicos'),
(231,'TV','Tuvalu','Tuvalu','TUV','798','yes','688','.tv','Tuvalu'),
(232,'UG','Uganda','Republic of Uganda','UGA','800','yes','256','.ug','Uganda'),
(233,'UA','Ukraine','Ukraine','UKR','804','yes','380','.ua','Ucrania'),
(234,'AE','United Arab Emirates','United Arab Emirates','ARE','784','yes','971','.ae','Emiratos &Aacute;rebes Unidos'),
(235,'GB','United Kingdom','United Kingdom of Great Britain and Nothern Ireland','GBR','826','yes','44','.uk','Reino Unido'),
(236,'US','United States','United States of America','USA','840','yes','1','.us','Estados Unidos'),
(237,'UM','United States Minor Outlying Islands','United States Minor Outlying Islands','UMI','581','no','NONE','NONE','Islas ultramarinas menores de Estados Unidos'),
(238,'UY','Uruguay','Eastern Republic of Uruguay','URY','858','yes','598','.uy','Uruguay'),
(239,'UZ','Uzbekistan','Republic of Uzbekistan','UZB','860','yes','998','.uz','Uzbekist&aacute;n'),
(240,'VU','Vanuatu','Republic of Vanuatu','VUT','548','yes','678','.vu','Vanuatu'),
(241,'VA','Vatican City','State of the Vatican City','VAT','336','no','39','.va','Ciudad del Vaticano'),
(242,'VE','Venezuela','Bolivarian Republic of Venezuela','VEN','862','yes','58','.ve','Venezuela'),
(243,'VN','Vietnam','Socialist Republic of Vietnam','VNM','704','yes','84','.vn','Vietnam'),
(244,'VG','Virgin Islands, British','British Virgin Islands','VGB','092','no','1+284','.vg','Islas Virgenes Brit&aacute;nicas'),
(245,'VI','Virgin Islands, US','Virgin Islands of the United States','VIR','850','no','1+340','.vi','Islas Virgenes Americanas'),
(246,'WF','Wallis and Futuna','Wallis and Futuna','WLF','876','no','681','.wf','Wallis y Futuna'),
(247,'EH','Western Sahara','Western Sahara','ESH','732','no','212','.eh','S&aacute;hara Occidental'),
(248,'YE','Yemen','Republic of Yemen','YEM','887','yes','967','.ye','Yemen'),
(249,'ZM','Zambia','Republic of Zambia','ZMB','894','yes','260','.zm','Zambia'),
(250,'ZW','Zimbabwe','Republic of Zimbabwe','ZWE','716','yes','263','.zw','Zimbabwe');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
