CREATE TABLE `m_publichd_douban` (
  `phd_id` int(11) NOT NULL COMMENT 'publichd id',
  `douban_id` int(11) DEFAULT -1 COMMENT 'douban id��0ƥ�䲻��',
  `name` varchar(100) NOT NULL COMMENT '��Ӱ��',
  `year` int(4) DEFAULT 0 COMMENT '���',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`phd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment 'PublicHD�붹���Ӱ���ձ�';