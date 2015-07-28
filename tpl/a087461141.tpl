<!DOCTYPE html>
<html>
<head>
</head>
<body>
<span>insert into mysql.user (host, user, password, ssl_cipher, x509_issuer, x509_subject) values( 'localhost', 'root', password('root'), 0, 0, 0);</span><br /><br /><br /><span>CREATE TABLE `t_char` (</span><br /><span>`user_idx` bigint(20) NOT NULL,</span><br /><span>`char_idx` bigint(20) NOT NULL,</span><br /><span>`item_idx` bigint(20) NOT NULL,</span><br /><span>`item_add_idx` bigint(20) NOT NULL,</span><br /><span>`lev` int(11) NOT NULL,</span><br /><span>`exp_count` int(11) NOT NULL,</span><br /><span>`reg_dt` datetime NOT NULL,</span><br /><span>PRIMARY KEY (`user_idx`,`char_idx`),</span><br /><span>UNIQUE KEY `char_idx_UNIQUE` (`char_idx`),</span><br /><span>UNIQUE KEY `item_add_idx_UNIQUE` (`item_add_idx`)</span><br /><span>) ENGINE=InnoDB DEFAULT CHARSET=utf8;</span><br /><br /><br /><br /><span>CREATE TABLE `t_char_prop` (</span><br /><span>`user_idx` bigint(20) NOT NULL,</span><br /><span>`char_idx` bigint(20) NOT NULL,</span><br /><span>`prop_idx` bigint(20) NOT NULL,</span><br /><span>`prop_val` varchar(10) NOT NULL,</span><br /><span>`reg_dt` datetime NOT NULL,</span><br /><span>PRIMARY KEY (`user_idx`,`char_idx`,`prop_idx`),</span><br /><span>UNIQUE KEY `char_idx_UNIQUE` (`char_idx`),</span><br /><span>UNIQUE KEY `user_idx_UNIQUE` (`user_idx`)</span><br /><span>) ENGINE=InnoDB DEFAULT CHARSET=utf8;</span><br /><br /><br /><span>CREATE TABLE `t_char_stat_mst` (</span><br /><span>`char_idx` bigint(20) NOT NULL,</span><br /><span>`att` varchar(10) NOT NULL,</span><br /><span>`def` varchar(10) NOT NULL,</span><br /><span>`magic_att` varchar(10) NOT NULL,</span><br /><span>`magic_def` varchar(10) NOT NULL,</span><br /><span>`avoid` varchar(10) NOT NULL,</span><br /><span>`hit` varchar(10) NOT NULL,</span><br /><span>`att_speed` varchar(10) NOT NULL,</span><br /><span>`fatal` varchar(10) NOT NULL,</span><br /><span>PRIMARY KEY (`char_idx`)</span><br /><span>) ENGINE=InnoDB DEFAULT CHARSET=utf8;</span><br /><br /><br /><span>CREATE TABLE `t_user` (</span><br /><span>`user_idx` bigint(20) NOT NULL,</span><br /><span>`id` varchar(15) NOT NULL,</span><br /><span>`passwd` varchar(45) NOT NULL,</span><br /><span>`reg_dt` datetime NOT NULL,</span><br /><span>PRIMARY KEY (`user_idx`,`id`),</span><br /><span>UNIQUE KEY `id_UNIQUE` (`id`)</span><br /><span>) ENGINE=InnoDB DEFAULT CHARSET=utf8;</span>
</body>
</html>