CREATE TABLE `m_publichd` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `url` varchar(200) NOT NULL COMMENT 'url',
  `md5` varchar(32) NOT NULL COMMENT 'url md5',
  `category` int(11) DEFAULT 0 COMMENT '����ID',
  `name` varchar(200) NOT NULL COMMENT '����',
  `magnet` varchar(500) DEFAULT NULL COMMENT 'magnet���ص�ַ',
  `torrent` varchar(500) DEFAULT NULL COMMENT 'torrent���ص�ַ',
  `add_date` int(8) DEFAULT '0' COMMENT '��������',
  `seeds` int(8) DEFAULT '0' COMMENT '������',
  `leechers` int(8) DEFAULT '0' COMMENT 'Ԥ����������',
  `uploader` varchar(50) DEFAULT NULL COMMENT '�ϴ���',
  `size` varchar(20) DEFAULT NULL COMMENT '�ļ���С',
  `create_time` TIMESTAMP DEFAULT current_timestamp COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  UNIQUE KEY `publichd_md5` (`md5`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;