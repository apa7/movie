CREATE TABLE `m_douban_cast` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '��Ŀid',
  `name` varchar(50) NOT NULL COMMENT '������',
  `alt` varchar(100) NOT NULL COMMENT 'Ӱ����ĿURL',
  `avatar_small` varchar(100) DEFAULT NULL COMMENT 'Ӱ��ͷ�� 420px x 600px',
  `avatar_medium` varchar(100) DEFAULT NULL COMMENT 'Ӱ��ͷ�� 140px x 200px',
  `avatar_large` varchar(100) DEFAULT NULL COMMENT 'Ӱ��ͷ�� 70px x 100px',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '��Ա��';