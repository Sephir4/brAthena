CREATE TABLE IF NOT EXISTS `skill_unit_db` (
	`ID` smallint(2) unsigned NOT NULL default '0',
	`UnitID` smallint(2) unsigned NOT NULL default '0',
	`UnitID2` smallint(2) unsigned NOT NULL default '0',
	`Layout` tinyint(1) signed NOT NULL default '0',
	`Range` tinyint(1) signed NOT NULL default '0',
	`Interval` smallint(2) signed NOT NULL default '0',
	`Target` text NOT NULL,
	`Flag` smallint(2) unsigned NOT NULL default '0',
	PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


/*
 Skill Unit
 Descri��o: -
 Cabe�alho: REPLACE INTO `skill_unit_db` VALUES ('ID,UnitID,UnitID2,Layout,Range,Interval,Target,Flag');
*/ 

REPLACE INTO skill_unit_db VALUES (12,0x7e,'',0,0,'-1','all',0x003);			--  'MG_SAFETYWALL'
REPLACE INTO skill_unit_db VALUES (18,0x7f,'','-1',0,20,'enemy',0x010);			--  'MG_FIREWALL'
REPLACE INTO skill_unit_db VALUES (21,0x86,'',0,2,1000,'enemy',0x018);			--  'MG_THUNDERSTORM'
REPLACE INTO skill_unit_db VALUES (25,0x85,'',1,0,'-1','all',0x003);			--  'AL_PNEUMA'
REPLACE INTO skill_unit_db VALUES (27,0x81,0x80,0,0,'-1','all',0x00E);			--  'AL_WARP'
REPLACE INTO skill_unit_db VALUES (47,0x86,'',0,2,1000,'enemy',0x080);			--  'AC_SHOWER'
REPLACE INTO skill_unit_db VALUES (70,0x83,'','-1',1,1000,'all',0x018);			--  'PR_SANCTUARY'
REPLACE INTO skill_unit_db VALUES (79,0x84,'','-1',1,3000,'enemy',0x018);			--  'PR_MAGNUS'
REPLACE INTO skill_unit_db VALUES (80,0x87,0x88,0,1,2000,'enemy',0x006);		--  'WZ_FIREPILLAR'
REPLACE INTO skill_unit_db VALUES (83,0x86,'',0,3,1000,'enemy',0x010);			--  'WZ_METEOR'
REPLACE INTO skill_unit_db VALUES (85,0x86,'',0,'6:6:6:6:6:6:6:6:6:6:8',1250,'enemy',0x018);--  'WZ_VERMILION'
REPLACE INTO skill_unit_db VALUES (87,0x8d,'','-1',0,'-1','all',0x010);			--  'WZ_ICEWALL'
REPLACE INTO skill_unit_db VALUES (89,0x86,'',0,5,450,'enemy',0x018);			--  'WZ_STORMGUST'
REPLACE INTO skill_unit_db VALUES (91,0x86,'',0,2,1000,'enemy',0x010);			--  'WZ_HEAVENDRIVE'
REPLACE INTO skill_unit_db VALUES (92,0x8e,'',2,0,'-1','enemy',0x010);			--  'WZ_QUAGMIRE'
REPLACE INTO skill_unit_db VALUES (115,0x90,'',0,1,1000,'enemy',0x006);			--  'HT_SKIDTRAP'
REPLACE INTO skill_unit_db VALUES (116,0x93,'',0,1,1000,'enemy',0x006);			--  'HT_LANDMINE'
REPLACE INTO skill_unit_db VALUES (117,0x91,'',0,1,1000,'enemy',0x006);			--  'HT_ANKLESNARE'
REPLACE INTO skill_unit_db VALUES (118,0x94,'',0,1,1000,'enemy',0x006);			--  'HT_SHOCKWAVE'
REPLACE INTO skill_unit_db VALUES (119,0x95,'',0,1,1000,'enemy',0x006);			--  'HT_SANDMAN'
REPLACE INTO skill_unit_db VALUES (120,0x96,'',0,1,1000,'enemy',0x006);			--  'HT_FLASHER'
REPLACE INTO skill_unit_db VALUES (121,0x97,'',0,1,1000,'enemy',0x006);			--  'HT_FREEZINGTRAP'
REPLACE INTO skill_unit_db VALUES (122,0x8f,'',0,1,1000,'enemy',0x006);			--  'HT_BLASTMINE'
REPLACE INTO skill_unit_db VALUES (123,0x98,'',0,1,1000,'enemy',0x006);			--  'HT_CLAYMORETRAP'
REPLACE INTO skill_unit_db VALUES (125,0x99,'',0,1,1000,'all',0x000);			--  'HT_TALKIEBOX'
REPLACE INTO skill_unit_db VALUES (140,0x92,'','-1',0,1000,'enemy',0x000);		--  'AS_VENOMDUST'
REPLACE INTO skill_unit_db VALUES (220,0xb0,'',0,0,'-1','all',0x002);			--  'RG_GRAFFITI'
REPLACE INTO skill_unit_db VALUES (229,0xb1,'',0,1,500,'enemy',0x006);			--  'AM_DEMONSTRATION'
REPLACE INTO skill_unit_db VALUES (254,0x86,'','-1',0,300,'enemy',0x010);			--  'CR_GRANDCROSS'
REPLACE INTO skill_unit_db VALUES (285,0x9a,'',3,0,'-1','all',0x010);			--  'SA_VOLCANO'
REPLACE INTO skill_unit_db VALUES (286,0x9b,'',3,0,'-1','all',0x010);			--  'SA_DELUGE'
REPLACE INTO skill_unit_db VALUES (287,0x9c,'',3,0,'-1','all',0x010);			--  'SA_VIOLENTGALE'
REPLACE INTO skill_unit_db VALUES (288,0x9d,'','3:3:4:4:5',0,'-1','all',0x010);		--  'SA_LANDPROTECTOR'
REPLACE INTO skill_unit_db VALUES (306,0x9e,'',4,0,4000,'enemy',0x200);			--  'BD_LULLABY'
REPLACE INTO skill_unit_db VALUES (307,0x9f,'',4,0,'-1','enemy',0x220);			--  'BD_RICHMANKIM'
REPLACE INTO skill_unit_db VALUES (308,0xa0,'',4,0,'-1','enemy',0x200);			--  'BD_ETERNALCHAOS'
REPLACE INTO skill_unit_db VALUES (309,0xa1,'',4,0,'-1','party',0x200);			--  'BD_DRUMBATTLEFIELD'
REPLACE INTO skill_unit_db VALUES (310,0xa2,'',4,0,'-1','party',0x200);			--  'BD_RINGNIBELUNGEN'
REPLACE INTO skill_unit_db VALUES (311,0xa3,'',4,0,'-1','all',0x200);			--  'BD_ROKISWEIL'
REPLACE INTO skill_unit_db VALUES (312,0xa4,'',4,0,'-1','party',0x240);			--  'BD_INTOABYSS'
REPLACE INTO skill_unit_db VALUES (313,0xa5,'',4,0,'-1','party',0x200);			--  'BD_SIEGFRIED'
REPLACE INTO skill_unit_db VALUES (317,0xa6,'',3,0,3000,'enemy',0x400);			--  'BA_DISSONANCE'
REPLACE INTO skill_unit_db VALUES (319,0xa7,'',3,0,'-1','all',0x440);			--  'BA_WHISTLE'
REPLACE INTO skill_unit_db VALUES (320,0xa8,'',3,0,'-1','all',0x440);			--  'BA_ASSASSINCROSS'
REPLACE INTO skill_unit_db VALUES (321,0xa9,'',3,0,'-1','all',0x440);			--  'BA_POEMBRAGI'
REPLACE INTO skill_unit_db VALUES (322,0xaa,'',3,0,5000,'all',0xC40);			--  'BA_APPLEIDUN'
REPLACE INTO skill_unit_db VALUES (325,0xab,'',3,0,3000,'enemy',0x100);			--  'DC_UGLYDANCE'
REPLACE INTO skill_unit_db VALUES (327,0xac,'',3,0,'-1','all',0x140);			--  'DC_HUMMING'
REPLACE INTO skill_unit_db VALUES (328,0xad,'',3,0,'-1','enemy',0x100);			--  'DC_DONTFORGETME'
REPLACE INTO skill_unit_db VALUES (329,0xae,'',3,0,'-1','all',0x140);			--  'DC_FORTUNEKISS'
REPLACE INTO skill_unit_db VALUES (330,0xaf,'',3,0,'-1','all',0x140);			--  'DC_SERVICEFORYOU'
REPLACE INTO skill_unit_db VALUES (336,0xb2,'',0,'-1','-1','noone',0x000);			--  'WE_CALLPARTNER'
REPLACE INTO skill_unit_db VALUES (339,0x86,'','-1',0,'300','enemy',0x000);		--  'NPC_DARKGRANDCROSS'
REPLACE INTO skill_unit_db VALUES (362,0xb4,'',0,2,'300','all',0x000);			--  'HP_BASILICA'
REPLACE INTO skill_unit_db VALUES (369,0xb3,'','-1',0,10000,'all',0x008);			--  'PA_GOSPEL'
REPLACE INTO skill_unit_db VALUES (395,0xb5,'',4,0,'-1','all',0x200);			--  'CG_MOONLIT'
REPLACE INTO skill_unit_db VALUES (404,0xb6,'','-1',0,'-1','all',0x000);			--  'PF_FOGWALL'
REPLACE INTO skill_unit_db VALUES (405,0xb7,'',0,0,'-1','enemy',0x000);			--  'PF_SPIDERWEB'
REPLACE INTO skill_unit_db VALUES (409,0xb2,'',0,'-1','-1','noone',0x000);			--  'WE_CALLBABY'
REPLACE INTO skill_unit_db VALUES (410,0xb2,'',0,'-1','-1','noone',0x000);			--  'WE_CALLPARENT'
REPLACE INTO skill_unit_db VALUES (428,0x86,'',0,1,100,'enemy',0x000);			--  'SG_SUN_WARM'
REPLACE INTO skill_unit_db VALUES (429,0x86,'',0,1,100,'enemy',0x000);			--  'SG_MOON_WARM'
REPLACE INTO skill_unit_db VALUES (430,0x86,'',0,1,100,'enemy',0x000);			--  'SG_STAR_WARM'
REPLACE INTO skill_unit_db VALUES (484,0xb8,'',2,0,500,'enemy',0x808);			--  'HW_GRAVITATION'
REPLACE INTO skill_unit_db VALUES (488,0xb9,'',3,0,'-1','all',0x200);			--  'CG_HERMODE'
REPLACE INTO skill_unit_db VALUES (516,0x86,'',3,0,100,'enemy',0x000);			--  'GS_DESPERADO'
REPLACE INTO skill_unit_db VALUES (521,0xbe,'',0,2,1000,'enemy',0x000);			--  'GS_GROUNDDRIFT'
REPLACE INTO skill_unit_db VALUES (527,0xbc,'','-1',0,2000,'enemy',0x018);		--  'NJ_TATAMIGAESHI'
REPLACE INTO skill_unit_db VALUES (535,0xbd,'','-1',0,20,'enemy',0x010);			--  'NJ_KAENSIN'
REPLACE INTO skill_unit_db VALUES (538,0xbb,'','1:1:1:2:2:2:3:3:3:4',0,'-1','all',0x010);	--  'NJ_SUITON'
REPLACE INTO skill_unit_db VALUES (670,0xc7,'',1,'4:7:10:13:16:19:22:25:28:31',1000,'all',0x008);	--  'NPC_EVILLAND'
REPLACE INTO skill_unit_db VALUES (2032,0xe1,'',2,0,1000,'enemy',0x018);		--  'GC_POISONSMOKE'
REPLACE INTO skill_unit_db VALUES (2044,0xca,'',0,3,1000,'all',0x018);			--  'AB_EPICLESIS'
REPLACE INTO skill_unit_db VALUES (2214,0x86,'',0,5,100,'enemy',0x080);			--  'WL_CHAINLIGHTNING'
REPLACE INTO skill_unit_db VALUES (2216,0xcb,'','-1',2,2000,'enemy',0x018);		--  'WL_EARTHSTRAIN'
REPLACE INTO skill_unit_db VALUES (2238,0xd8,'',0,1,1000,'enemy',0x006);		--  'RA_ELECTRICSHOCKER'
REPLACE INTO skill_unit_db VALUES (2239,0xd9,'',0,1,1000,'enemy',0x006);		--  'RA_CLUSTERBOMB'
REPLACE INTO skill_unit_db VALUES (2249,0xd2,'',0,1,1000,'enemy',0x022);		--  'RA_MAGENTATRAP'
REPLACE INTO skill_unit_db VALUES (2250,0xd3,'',0,1,1000,'enemy',0x022);		--  'RA_COBALTTRAP'
REPLACE INTO skill_unit_db VALUES (2251,0xd4,'',0,1,1000,'enemy',0x022);		--  'RA_MAIZETRAP'
REPLACE INTO skill_unit_db VALUES (2252,0xd5,'',0,1,1000,'enemy',0x022);		--  'RA_VERDURETRAP'
REPLACE INTO skill_unit_db VALUES (2253,0xd6,'',0,1,1000,'enemy',0x002);		--  'RA_FIRINGTRAP'
REPLACE INTO skill_unit_db VALUES (2254,0xd7,'',0,1,1000,'enemy',0x002);		--  'RA_ICEBOUNDTRAP'
REPLACE INTO skill_unit_db VALUES (2273,0xe2,'',1,0,500,'friend',0x000);		--  'NC_NEUTRALBARRIER'
REPLACE INTO skill_unit_db VALUES (2274,0xe3,'',1,0,500,'all',0x000);			--  'NC_STEALTHFIELD'
REPLACE INTO skill_unit_db VALUES (2299,0xcc,'',0,1,1000,'all',0x006);			--  'SC_MANHOLE'
REPLACE INTO skill_unit_db VALUES (2300,0xcd,'',0,1,1000,'all',0x006);			--  'SC_DIMENSIONDOOR'
REPLACE INTO skill_unit_db VALUES (2301,0xce,'',0,2,'-1','all',0x00E);			--  'SC_CHAOSPANIC'
REPLACE INTO skill_unit_db VALUES (2302,0xcf,'',0,2,'-1','all',0x002);			--  'SC_MAELSTROM'
REPLACE INTO skill_unit_db VALUES (2303,0xd0,'',0,2,'-1','all',0x018);			--  'SC_BLOODYLUST'
REPLACE INTO skill_unit_db VALUES (2304,0xd1,'',0,2,'-1','enemy',0x000);			--  'SC_FEINTBOMB'
REPLACE INTO skill_unit_db VALUES (2319,0xec,'',0,3,5000,'all',0x000);			--  'LG_BANDING'
REPLACE INTO skill_unit_db VALUES (2414,0xda,'',0,0,1000,'enemy',0x008);		--  'WM_REVERBERATION'
REPLACE INTO skill_unit_db VALUES (2418,0xdb,'',0,5,300,'enemy',0x800);			--  'WM_SEVERE_RAINSTORM'
REPLACE INTO skill_unit_db VALUES (2419,0xde,'',0,1,1000,'enemy',0x010);		--  'WM_POEMOFNETHERWORLD'
REPLACE INTO skill_unit_db VALUES (2443,0xdc,'',0,1,1000,'enemy',0x00A);		--  'SO_FIREWALK'
REPLACE INTO skill_unit_db VALUES (2444,0xdd,'',0,1,1000,'enemy',0x00A);		--  'SO_ELECTRICWALK'
REPLACE INTO skill_unit_db VALUES (2446,0x86,'',0,'3:3:3:4:4',1000,'enemy',0x018);	--  'SO_EARTHGRAVE'
REPLACE INTO skill_unit_db VALUES (2447,0x86,'',0,'3:3:3:4:4',1000,'enemy',0x018);	--  'SO_DIAMONDDUST'
REPLACE INTO skill_unit_db VALUES (2449,0x86,'',0,'3:3:4:4:5',500,'enemy',0x018);	--  'SO_PSYCHIC_WAVE'
REPLACE INTO skill_unit_db VALUES (2450,0xe0,'',3,0,500,'enemy',0x010);			--  'SO_CLOUD_KILL'
REPLACE INTO skill_unit_db VALUES (2452,0xe4,'',0,3,3000,'all',0x010);			--  'SO_WARMER'
REPLACE INTO skill_unit_db VALUES (2453,0xeb,'',0,'1:1:2:2:3',1000,'enemy',0x010);	--  'SO_VACUUM_EXTREME'
REPLACE INTO skill_unit_db VALUES (2465,0xf1,'',0,2,1000,'all',0x010);			--  'SO_FIRE_INSIGNIA'
REPLACE INTO skill_unit_db VALUES (2466,0xf2,'',0,2,1000,'all',0x010);			--  'SO_WATER_INSIGNIA'
REPLACE INTO skill_unit_db VALUES (2467,0xf3,'',0,2,1000,'all',0x010);			--  'SO_WIND_INSIGNIA'
REPLACE INTO skill_unit_db VALUES (2468,0xf4,'',0,2,1000,'all',0x010);			--  'SO_EARTH_INSIGNIA'
REPLACE INTO skill_unit_db VALUES (2479,0xe5,'',0,1,1000,'enemy',0x002);		--  'GN_THORNS_TRAP'
REPLACE INTO skill_unit_db VALUES (2482,0xe6,0x7f,'-1',1,'-1','all',0x000);			--  'GN_WALLOFTHORN'
REPLACE INTO skill_unit_db VALUES (2485,0xe7,'',0,3,1000,'enemy',0x098);		--  'GN_DEMONIC_FIRE'
REPLACE INTO skill_unit_db VALUES (2487,0xe8,'',0,3,1000,'enemy',0x000);		--  'GN_FIRE_EXPANSION_SMOKE_POWDER'
REPLACE INTO skill_unit_db VALUES (2488,0xe9,'',0,3,1000,'enemy',0x000);		--  'GN_FIRE_EXPANSION_TEAR_GAS'
REPLACE INTO skill_unit_db VALUES (2490,0xea,'',0,1,1000,'enemy',0x000);		--  'GN_HELLS_PLANT'
REPLACE INTO skill_unit_db VALUES (8020,0xf5,'',0,3,'2300:2100:1900:1700:1500','enemy',0x018);	--  'MH_POISON_MIST'
REPLACE INTO skill_unit_db VALUES (8033,0x7e,'',0,0,'-1','all',0x003);			--  'MH_STEINWAND'
REPLACE INTO skill_unit_db VALUES (8025,0x86,'',0,'2:2:3:3:4',1000,'enemy',0x018);	--  'MH_XENO_SLASHER'
REPLACE INTO skill_unit_db VALUES (8041,0xf6,'','1:1:2:2:3',0,1000,'enemy',0x018);	--  'MH_LAVA_SLIDE'
REPLACE INTO skill_unit_db VALUES (8043,0xf7,'',0,1,1000,'enemy',0x018);		--  'MH_VOLCANIC_ASH'
REPLACE INTO skill_unit_db VALUES (8208,0x86,'',0,2,1000,'enemy',0x080);		--  'MA_SHOWER'
REPLACE INTO skill_unit_db VALUES (8209,0x90,'',0,1,1000,'enemy',0x006);		--  'MA_SKIDTRAP'
REPLACE INTO skill_unit_db VALUES (8210,0x93,'',0,0,1000,'enemy',0x006);		--  'MA_LANDMINE'
REPLACE INTO skill_unit_db VALUES (8211,0x95,'',0,1,1000,'enemy',0x006);		--  'MA_SANDMAN'
REPLACE INTO skill_unit_db VALUES (8212,0x97,'',0,1,1000,'enemy',0x006);		--  'MA_FREEZINGTRAP'
REPLACE INTO skill_unit_db VALUES (8403,0xed,'','-1',1,1000,'enemy',0x018);		--  'EL_FIRE_MANTLE'
REPLACE INTO skill_unit_db VALUES (8406,0xee,'',0,1,'-1','friend',0x018);			--  'EL_WATER_BARRIER'
REPLACE INTO skill_unit_db VALUES (8409,0xef,'',0,1,'-1','friend',0x018);			--  'EL_ZEPHYR'
REPLACE INTO skill_unit_db VALUES (8412,0xf0,'',0,1,'-1','friend',0x018);			--  'EL_POWER_OF_GAIA'