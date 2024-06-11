SET NAMES 'utf8';
CREATE DATABASE IF NOT EXISTS `guard` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;;

USE `guard`;


CREATE TABLE IF NOT EXISTS `cdn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `publish` varchar(255) NOT NULL,
  `rtmp_public` varchar(255) DEFAULT NULL,
  `rtmp_private` varchar(255) DEFAULT NULL,
  `flv_public` varchar(255) DEFAULT NULL,
  `flv_private` varchar(255) DEFAULT NULL,
  `hls_public` varchar(255) DEFAULT NULL,
  `hls_private` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `secret_algorithm` varchar(255) NOT NULL,
  `register_time` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_cdn_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `cdn`(`id`,`name`,`publish`,`rtmp_public`,`rtmp_private`,`flv_public`,`flv_private`,`hls_public`,`hls_private`,`secret_key`,`secret_algorithm`,`register_time`,`created_at`,`updated_at`,`deleted_at`) 
SELECT 1,'local','rtmp://127.0.0.1:19351/live/%s','','','%s://%s/live/%s.live.flv','','%s://%s/live/%s/hls.fmp4.m3u8','','','simple',NOW(),NOW(),NOW(),NULL FROM DUAL 
WHERE NOT EXISTS (SELECT * FROM `cdn`);


CREATE TABLE IF NOT EXISTS  `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` varchar(32) DEFAULT '',
  `name` varchar(32) DEFAULT '',
  `sustained_displacement` tinyint(2) DEFAULT '1' COMMENT '持续位移',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_classes_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

INSERT INTO `classes`(`id`,`type`,`name`,`sustained_displacement`,`created_at`,`updated_at`,`deleted_at`)
SELECT * FROM (SELECT 1, 'person', '人', 0, NOW(), NULL AS updated_at, NULL AS deleted_at UNION
               SELECT 2, 'bicycle', '自行车', 1, NOW(), NULL, NULL UNION
               SELECT 3, 'car', '汽车', 1, NOW(), NULL, NULL UNION
               SELECT 4, 'motorcycle', '摩托车', 1, NOW(), NULL, NULL UNION
			   SELECT 5,'airplane','飞机',1,NOW(),NULL,NULL UNION
			   SELECT 6,'bus','公交车',1,NOW(),NULL,NULL UNION
			   SELECT 7,'train','火车',1,NOW(),NULL,NULL UNION
			   SELECT 8,'truck','卡车',1,NOW(),NULL,NULL UNION
			   SELECT 9,'boat','船',1,NOW(),NULL,NULL UNION
			   SELECT 10,'traffic light','交通灯',1,NOW(),NULL,NULL UNION
			   SELECT 11,'fire hydrant','消防栓',1,NOW(),NULL,NULL UNION
			   SELECT 12,'stop sign','停车标志',1,NOW(),NULL,NULL UNION
			   SELECT 13,'parking meter','停车收费器',1,NOW(),NULL,NULL UNION
			   SELECT 14,'bench','长凳',1,NOW(),NULL,NULL UNION
			   SELECT 15,'bird','鸟',0,NOW(),NULL,NULL UNION
			   SELECT 16,'cat','猫',0,NOW(),NULL,NULL UNION
			   SELECT 17,'dog','狗',0,NOW(),NULL,NULL UNION
			   SELECT 18,'horse','马',0,NOW(),NULL,NULL UNION
			   SELECT 19,'sheep','羊',0,NOW(),NULL,NULL UNION
			   SELECT 20,'cow','母牛',0,NOW(),NULL,NULL UNION
			   SELECT 21,'elephant','大象',0,NOW(),NULL,NULL UNION
			   SELECT 22,'bear','熊',0,NOW(),NULL,NULL UNION
			   SELECT 23,'zebra','斑马',0,NOW(),NULL,NULL UNION
			   SELECT 24,'giraffe','长颈鹿',0,NOW(),NULL,NULL UNION
			   SELECT 25,'backpack','背包',1,NOW(),NULL,NULL UNION
			   SELECT 26,'umbrella','雨伞',1,NOW(),NULL,NULL UNION
			   SELECT 27,'handbag','手提包',1,NOW(),NULL,NULL
			   ) AS tmp
WHERE NOT EXISTS (SELECT * FROM `classes`);


CREATE TABLE IF NOT EXISTS `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(64) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` smallint(6) DEFAULT NULL COMMENT '1:gb28181',
  `name` varchar(255) DEFAULT NULL,
  `online` smallint(6) DEFAULT NULL,
  `offline_time` datetime(3) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `register_time` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `last_online_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uuid` (`uuid`) USING BTREE,
  KEY `idx_device_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `event_config` (
  `ipc_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `config` varchar(1024) DEFAULT NULL COMMENT '00...',
  `store_period` int(11) NOT NULL DEFAULT '1',
  `min_motion_area` int(11) NOT NULL DEFAULT '300',
  `resize_width` int(11) NOT NULL DEFAULT '640',
  `seconds_after_detection` int(11) DEFAULT '1',
  PRIMARY KEY (`ipc_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;


CREATE TABLE IF NOT EXISTS `ipc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ova_sn` varchar(64) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `connect_type` smallint(6) DEFAULT NULL COMMENT '1:gb28181',
  `longitube` varchar(255) DEFAULT NULL,
  `latitube` varchar(255) DEFAULT NULL,
  `codec` int(11) NOT NULL DEFAULT '0',
  `audio` int(11) NOT NULL DEFAULT '0' COMMENT '1:have;0:no audio',
  `mute` int(11) NOT NULL DEFAULT '1' COMMENT '1:mute;0:not mute',
  `resolution` varchar(16) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `online` smallint(6) DEFAULT NULL,
  `offline_time` datetime(3) DEFAULT NULL,
  `registered_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `ova_mediagate_cluster_id` smallint(6) DEFAULT NULL,
  `image_snapshot` smallint(6) DEFAULT NULL,
  `dvr` smallint(6) DEFAULT NULL,
  `event` tinyint(2) DEFAULT NULL,
  `face_recognition` tinyint(2) DEFAULT '0',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `last_online_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ova_sn` (`ova_sn`) USING BTREE,
  KEY `idx_ipc_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `ipc_ai_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ipc_id` int(11) NOT NULL DEFAULT '0' COMMENT 'ipcid',
  `ai_conf` json NOT NULL COMMENT 'ai配置文件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `ipc_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipc_id` int(11) NOT NULL,
  `ova_sn` varchar(64) NOT NULL,
  `ova_mediagate_server_id` int(11) NOT NULL,
  `cdn_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mediagate_param` varchar(2048) DEFAULT NULL,
  `finish` int(11) NOT NULL DEFAULT '0',
  `finish_time` datetime DEFAULT NULL,
  `connect_type` int(11) NOT NULL DEFAULT '0',
  `connect_param` varchar(1024) DEFAULT NULL,
  `check_result` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `ipc_dvr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(64) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `ipc_id` int(11) NOT NULL,
  `ova_sn` varchar(64) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_time` datetime(3) DEFAULT NULL,
  `end_time` datetime(3) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `dvr_server_id` smallint(6) DEFAULT NULL,
  `stream` varchar(128) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uuid` (`uuid`) USING BTREE,
  UNIQUE KEY `url` (`url`) USING BTREE,
  KEY `idx_ipc_dvr_deleted_at` (`deleted_at`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `ipc_dvr_config` (
  `ipc_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `config` varchar(1024) DEFAULT NULL COMMENT '00...',
  `store_period` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ipc_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `ipc_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uuid` varchar(64) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sipid` varchar(255) DEFAULT NULL,
  `channelid` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) DEFAULT '1',
  `stream` varchar(256) DEFAULT NULL,
  `dvr_id` bigint(20) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uuid` (`uuid`) USING BTREE,
  KEY `idx_ipc_event_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `ipc_ext_gb28181` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipc_id` int(11) NOT NULL,
  `lower_gb28181_device_id` int(11) NOT NULL,
  `chid` varchar(255) DEFAULT NULL,
  `sipid` varchar(255) DEFAULT NULL,
  `canalarm` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `ipc_ext_onvif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipc_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `port` varchar(6) DEFAULT '80',
  `rtsp_port` varchar(6) DEFAULT '80',
  `mapping_rtsp_port` varchar(6) DEFAULT '80',
  `url` varchar(256) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL COMMENT 'ipc username/password correct',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_ipc_ext_rtsp_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `ipc_ext_rtsp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipc_id` int(11) NOT NULL,
  `rtsp_device_id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL COMMENT 'ipc username/password correct',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_ipc_ext_rtsp_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `ipc_service_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ova_sn` varchar(64) NOT NULL DEFAULT '0' COMMENT '通道id',
  `category_id` int(11) NOT NULL DEFAULT '1' COMMENT '服务类别id',
  `class_ids` varchar(256) NOT NULL DEFAULT '0' COMMENT '物品id',
  `leave_ones_post_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '离岗时间',
  `intrusion_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '入侵时间',
  `work_area` text COMMENT '区域',
  `status` tinyint(2) DEFAULT '0' COMMENT '0:正常:1:入侵:2:离岗',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ova_sn` (`ova_sn`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `live_player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipc_id` int(11) NOT NULL,
  `ova_sn` varchar(64) NOT NULL,
  `live_id` int(11) NOT NULL,
  `player_id` varchar(256) DEFAULT NULL,
  `start_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `finish` int(11) NOT NULL DEFAULT '0',
  `finish_time` datetime DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `mediaserver` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `lower_gb28181_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` smallint(6) DEFAULT NULL,
  `sip_server_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sipid` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `port` smallint(6) DEFAULT NULL,
  `online` smallint(6) DEFAULT NULL,
  `offline_time` datetime(3) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `register_time` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `device_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sipid` (`sipid`) USING BTREE,
  KEY `idx_lower_gb28181_device_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


CREATE TABLE IF NOT EXISTS `open_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_uuid` varchar(64) NOT NULL DEFAULT '' COMMENT '用户uuid',
  `app_id` varchar(32) NOT NULL DEFAULT '' COMMENT '应用id',
  `token_with_ip` tinyint(2) DEFAULT '1',
  `app_secret` varchar(128) NOT NULL DEFAULT '' COMMENT '应用secret',
  `callback` varchar(256) DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_uuid` (`user_uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

INSERT INTO `open_api` (`id`,`user_uuid`,`app_id`,`token_with_ip`,`app_secret`,`callback`,`created_at`,`updated_at`,`deleted_at`)
SELECT 1,'ac736a7c-f6e4-11ee-a4ed-d85ed345deda',SUBSTRING(MD5(RAND()), 1, 16),0,SUBSTRING(MD5(RAND()), 1, 16),'',NULL,NOW(),NULL FROM DUAL 
WHERE NOT EXISTS (SELECT * FROM `open_api`);


CREATE TABLE IF NOT EXISTS `ova_gb28181_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sipid` varchar(255) DEFAULT NULL,
  `sip_ip` varchar(255) DEFAULT NULL,
  `sip_port` bigint(20) DEFAULT NULL,
  `api_ip` varchar(255) DEFAULT NULL,
  `api_port` bigint(20) DEFAULT NULL,
  `online` bigint(20) DEFAULT NULL,
  `offline_time` datetime(3) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `register_time` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `created_by` mediumint(9) DEFAULT NULL COMMENT '创建者',
  `updated_by` mediumint(9) DEFAULT NULL COMMENT '更新者',
  `deleted_by` mediumint(9) DEFAULT NULL COMMENT '删除者',
  `sys_user_id` mediumint(9) DEFAULT NULL COMMENT '管理ID',
  `sys_user_authority_id` mediumint(9) DEFAULT NULL COMMENT '管理角色ID',
  `user_id` smallint(6) DEFAULT NULL,
  `sip_server_id` smallint(6) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `device_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_ova_gb28181_server_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `ova_gb28181_server` (`id`,`name`,`sipid`,`sip_ip`,`sip_port`,`api_ip`,`api_port`,`online`,`offline_time`,`comment`,`register_time`,`created_at`,`updated_at`,`deleted_at`,`created_by`,`updated_by`,`deleted_by`,`sys_user_id`,`sys_user_authority_id`,`user_id`,`sip_server_id`,`password`,`device_id`)
SELECT 1,'s1','32011400000000000001','118.31.229.186',5060,'127.0.0.1',9199,0,NULL,'本地',NOW(),NOW(),NOW(),NULL,0,0,0,0,0,NULL,NULL,NULL,NULL FROM DUAL 
WHERE NOT EXISTS (SELECT * FROM `ova_gb28181_server`);


CREATE TABLE IF NOT EXISTS `ova_mediagate_cluster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ova_mediagate_server_ids` varchar(1024) NOT NULL,
  `register_time` datetime(3) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_ova_mediagate_cluster_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `ova_mediagate_cluster` (`id`,`ova_mediagate_server_ids`,`register_time`,`status`,`created_at`,`updated_at`,`deleted_at`)
SELECT 1,'1',NOW(),1,NOW(),NOW(),NULL FROM DUAL 
WHERE NOT EXISTS (SELECT * FROM `ova_mediagate_cluster`);


CREATE TABLE IF NOT EXISTS `ova_mediagate_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cdn_id` smallint(6) DEFAULT NULL,
  `api` varchar(255) DEFAULT NULL,
  `ps_in` varchar(255) DEFAULT NULL,
  `domain` varchar(32) DEFAULT NULL COMMENT '域名',
  `protocol` varchar(16) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `register_time` datetime(3) DEFAULT NULL,
  `online` smallint(6) DEFAULT NULL,
  `offline_time` datetime(3) DEFAULT NULL,
  `api_secret` varchar(255) DEFAULT '',
  `name` varchar(255) DEFAULT '',
  `dvr_server_id` smallint(6) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_ova_mediagate_server_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `ova_mediagate_server` (`id`,`cdn_id`,`api`,`ps_in`,`domain`,`protocol`,`status`,`comment`,`register_time`,`online`,`offline_time`,`api_secret`,`name`,`dvr_server_id`,`created_at`,`updated_at`,`deleted_at`)
SELECT 1,1,'127.0.0.1:19191','118.31.229.186','118.31.229.186','http',1,'',NOW(),0,NULL,'disable','local',1,NOW(),NOW(),NULL FROM DUAL 
WHERE NOT EXISTS (SELECT * FROM `ova_mediagate_server`);


CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(16) NOT NULL COMMENT '角色名称',
  `code` varchar(64) NOT NULL COMMENT '权限字符串',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS `rtsp_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `port` smallint(6) DEFAULT NULL,
  `device_id` smallint(6) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_rtsp_device_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS `service_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category` varchar(32) NOT NULL DEFAULT '' COMMENT '服务类别',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_service_category_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

INSERT INTO `service_category`(`id`,`category`,`created_at`,`updated_at`,`deleted_at`)
SELECT * FROM (SELECT 1,'入侵',NOW(), NULL AS updated_at, NULL AS deleted_at 
			   ) AS tmp
WHERE NOT EXISTS (SELECT * FROM `service_category`);

CREATE TABLE IF NOT EXISTS `small_server` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `domain` varchar(32) DEFAULT NULL COMMENT '域名',
  `ip` varchar(32) DEFAULT NULL COMMENT 'ip',
  `user_id` smallint(6) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_small_server_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS  `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(128) DEFAULT '#' COMMENT '菜单图标',
  `parent_id` int(11) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(256) DEFAULT '' COMMENT '路由地址',
  `component` varchar(256) DEFAULT '' COMMENT '组件路径',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型(M目录 C菜单 F按钮)',
  `perms` varchar(128) DEFAULT '' COMMENT '权限标识',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS  `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色主键ID',
  `name` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `code` varchar(100) DEFAULT NULL COMMENT '角色权限字符串',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS  `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `menu_id` int(11) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS  `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK61g3ambult7v7nh59xirgd9nf` (`user_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

CREATE TABLE IF NOT EXISTS  `upload_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ova_sn` varchar(128) DEFAULT '',
  `ipc_user_id` int(11) DEFAULT '0',
  `file_name` varchar(256) NOT NULL DEFAULT '' COMMENT '文件名',
  `remote_url` varchar(256) NOT NULL DEFAULT '' COMMENT '远端地址',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1:图片,2:视频',
  `size` int(11) NOT NULL DEFAULT '0' COMMENT '文件大小',
  `created_at` datetime NOT NULL COMMENT '上传时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `ipc_user_id_created_at` (`ipc_user_id`,`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS  `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `uuid` varchar(64) NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `register_time` datetime(3) DEFAULT NULL,
  `parent_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_user_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `user` (`id`,`username`,`uuid`,`created_at`,`updated_at`,`deleted_at`,`password`,`register_time`,`parent_id`)
SELECT 1,'user1','ac736a7c-f6e4-11ee-a4ed-d85ed345deda',NOW(),NOW(),NULL,SUBSTRING(MD5(RAND()), 1, 16),NULL,NULL FROM DUAL 
WHERE NOT EXISTS (SELECT * FROM `user`);

CREATE TABLE IF NOT EXISTS   `video_live` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipc_id` int(11) NOT NULL,
  `ova_sn` varchar(64) NOT NULL,
  `ova_mediagate_server_id` int(11) NOT NULL,
  `cdn_id` int(11) NOT NULL,
  `rtmp_publish` varchar(2048) DEFAULT NULL,
  `rtmp_public` varchar(2048) DEFAULT NULL,
  `flv_public` varchar(2048) DEFAULT NULL,
  `hls_public` varchar(2048) DEFAULT NULL,
  `rtmp_private` varchar(2048) DEFAULT NULL,
  `flv_private` varchar(2048) DEFAULT NULL,
  `hls_private` varchar(2048) DEFAULT NULL,
  `start_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `publish_time` datetime DEFAULT NULL,
  `mediagate_param` varchar(2048) DEFAULT NULL,
  `finish` int(11) NOT NULL DEFAULT '0',
  `finish_time` datetime DEFAULT NULL,
  `connect_type` int(11) NOT NULL DEFAULT '0',
  `connect_param` varchar(1024) DEFAULT NULL,
  `player_count` int(11) NOT NULL DEFAULT '0',
  `stream` varchar(256) DEFAULT NULL,
  `alarm` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `video_live` */


CREATE TABLE IF NOT EXISTS `network` (
   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
   `ip` varchar(32) NOT NULL COMMENT 'ip',
   `domain` varchar(64) NOT NULL COMMENT '域名',
   `protocol` varchar(16) DEFAULT NULL,
   `created_at` datetime(3) DEFAULT NULL,
   `updated_at` datetime(3) DEFAULT NULL,
   `deleted_at` datetime(3) DEFAULT NULL,
   PRIMARY KEY (`id`),
   KEY `idx_network_deleted_at` (`deleted_at`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
 
CREATE TABLE IF NOT EXISTS `storage` (
   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
   `storage_day` int(11) NOT NULL DEFAULT '0' COMMENT '保存天数',
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
 
INSERT INTO `storage` (`id`,`storage_day`)
SELECT 1,0 FROM DUAL 
WHERE NOT EXISTS (SELECT * FROM `storage`);

/* Procedure structure for procedure `insert_ipc_and_gb28181` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_ipc_and_gb28181` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_ipc_and_gb28181`(
in p_user_id int,
in p_name varchar(255) CHARSET utf8,
in p_longitube varchar(255),
in p_latitube varchar(255),
in p_lower_gb28181_device_id int,
in p_chid varchar(255),
in p_sipid varchar(255),
in p_mediagate_cluster_id int
)
begin
declare v_ipc_id int unsigned default 0;
INSERT INTO ipc (user_id, name,longitube, latitube, connect_type, online,  ova_mediagate_cluster_id,event) VALUES(p_user_id, p_name, p_longitube,p_latitube,1,1,p_mediagate_cluster_id,1);
set v_ipc_id = last_insert_id(); 
update ipc set ova_sn=md5(concat("ova_",p_user_id,'_',v_ipc_id)) where id=v_ipc_id;
INSERT INTO ipc_ext_gb28181 (ipc_id, lower_gb28181_device_id, chid,sipid) VALUES(v_ipc_id,p_lower_gb28181_device_id, p_chid,p_sipid);
end */$$
DELIMITER ;

/* Procedure structure for procedure `insert_ipc_and_rtsp` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_ipc_and_rtsp` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_ipc_and_rtsp`(
in p_user_id int,
in p_name varchar(255) CHARSET utf8,
in p_rtsp_device_id int,
in p_url varchar(255),
in p_mediagate_cluster_id int
)
begin
declare v_ipc_id int unsigned default 0;
INSERT INTO ipc (user_id, name, connect_type, online, ova_mediagate_cluster_id) VALUES(p_user_id, p_name, 2, 1, p_mediagate_cluster_id);
set v_ipc_id = last_insert_id(); 
update ipc set ova_sn=md5(concat("ova_",p_user_id,'_',v_ipc_id)) where id=v_ipc_id;
INSERT INTO ipc_ext_rtsp (ipc_id, url, rtsp_device_id) VALUES(v_ipc_id,p_url,p_rtsp_device_id);
end */$$
DELIMITER ;
