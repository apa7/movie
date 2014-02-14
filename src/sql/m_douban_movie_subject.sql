CREATE TABLE `m_douban_movie_subject` (
  `id` int(11) NOT NULL COMMENT '��Ŀid',
  `title` varchar(50) NOT NULL COMMENT '������',
  `original_title` varchar(100) DEFAULT '0' COMMENT 'ԭ��',
  `alt` varchar(100) NOT NULL COMMENT '��ĿURL',
  `image_small` varchar(100) DEFAULT NULL COMMENT '��Ӱ����ͼ 288px x 465px',
  `image_medium` varchar(100) DEFAULT NULL COMMENT '��Ӱ����ͼ 96px x 155px',
  `image_large` varchar(100) DEFAULT NULL COMMENT '��Ӱ����ͼ 64px x 103p',
  `rating` int(1) DEFAULT 0 COMMENT '����',
  `pubdates` varchar(50) DEFAULT NULL COMMENT '�����Ŀ�����ǵ�Ӱ��Ϊ��ӳ���ڣ�����ǵ��Ӿ���Ϊ�ײ�����',
  `year` int(4) DEFAULT 0 COMMENT '���',
  `subtype` varchar(20) DEFAULT 'movie' COMMENT '��Ŀ����, movie����tv',
  `casts` varchar(100) DEFAULT NULL COMMENT '��ԱID',
  `directors` varchar(100) DEFAULT NULL COMMENT '����ID',
  `aka` varchar(200) DEFAULT NULL COMMENT '����',
  `summary` varchar(1000) DEFAULT NULL COMMENT '���',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title_year` (`title`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;