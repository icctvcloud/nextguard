SET NAMES 'utf8mb4';
CREATE DATABASE IF NOT EXISTS `guard_admin` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE `guard_admin`;

/*Table structure for table `casbin_rule` */

DROP TABLE IF EXISTS `casbin_rule`;

CREATE TABLE `casbin_rule` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) DEFAULT NULL,
  `v0` varchar(100) DEFAULT NULL,
  `v1` varchar(100) DEFAULT NULL,
  `v2` varchar(100) DEFAULT NULL,
  `v3` varchar(100) DEFAULT NULL,
  `v4` varchar(100) DEFAULT NULL,
  `v5` varchar(100) DEFAULT NULL,
  `v6` varchar(25) DEFAULT NULL,
  `v7` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_casbin_rule` (`ptype`,`v0`,`v1`,`v2`,`v3`,`v4`,`v5`,`v6`,`v7`)
) ENGINE=InnoDB AUTO_INCREMENT=9488 DEFAULT CHARSET=utf8mb4;

/*Data for the table `casbin_rule` */

insert  into `casbin_rule`(`id`,`ptype`,`v0`,`v1`,`v2`,`v3`,`v4`,`v5`,`v6`,`v7`) values (9136,'p','888','/api/createApi','POST','','','','',''),(9137,'p','888','/api/deleteApi','POST','','','','',''),(9142,'p','888','/api/deleteApisByIds','DELETE','','','','',''),(9140,'p','888','/api/getAllApis','POST','','','','',''),(9141,'p','888','/api/getApiById','POST','','','','',''),(9139,'p','888','/api/getApiList','POST','','','','',''),(9138,'p','888','/api/updateApi','POST','','','','',''),(9143,'p','888','/authority/copyAuthority','POST','','','','',''),(9144,'p','888','/authority/createAuthority','POST','','','','',''),(9145,'p','888','/authority/deleteAuthority','POST','','','','',''),(9147,'p','888','/authority/getAuthorityList','POST','','','','',''),(9148,'p','888','/authority/setDataAuthority','POST','','','','',''),(9146,'p','888','/authority/updateAuthority','PUT','','','','',''),(9192,'p','888','/authorityBtn/canRemoveAuthorityBtn','POST','','','','',''),(9191,'p','888','/authorityBtn/getAuthorityBtn','POST','','','','',''),(9190,'p','888','/authorityBtn/setAuthorityBtn','POST','','','','',''),(9124,'p','888','/base/login','POST','','','','',''),(9150,'p','888','/casbin/getPolicyPathByAuthorityId','POST','','','','',''),(9149,'p','888','/casbin/updateCasbin','POST','','','','',''),(9262,'p','888','/cdn/createCdn','POST','','','','',''),(9263,'p','888','/cdn/deleteCdn','DELETE','','','','',''),(9264,'p','888','/cdn/deleteCdnByIds','DELETE','','','','',''),(9266,'p','888','/cdn/findCdn','GET','','','','',''),(9267,'p','888','/cdn/getCdnList','GET','','','','',''),(9265,'p','888','/cdn/updateCdn','PUT','','','','',''),(9246,'p','888','/classes/createClasses','POST','','','','',''),(9247,'p','888','/classes/deleteClasses','DELETE','','','','',''),(9248,'p','888','/classes/deleteClassesByIds','DELETE','','','','',''),(9250,'p','888','/classes/findClasses','GET','','','','',''),(9251,'p','888','/classes/getClassesList','GET','','','','',''),(9249,'p','888','/classes/updateClasses','PUT','','','','',''),(9274,'p','888','/deviceBase/createDevice','POST','','','','',''),(9275,'p','888','/deviceBase/deleteDevice','DELETE','','','','',''),(9276,'p','888','/deviceBase/deleteDeviceByIds','DELETE','','','','',''),(9278,'p','888','/deviceBase/findDevice','GET','','','','',''),(9279,'p','888','/deviceBase/getDeviceList','GET','','','','',''),(9277,'p','888','/deviceBase/updateDevice','PUT','','','','',''),(9224,'p','888','/deviceExtReportServer/changeReportServer','POST','','','','',''),(9218,'p','888','/deviceExtReportServer/createDeviceExtReportServer','POST','','','','',''),(9219,'p','888','/deviceExtReportServer/deleteDeviceExtReportServer','DELETE','','','','',''),(9220,'p','888','/deviceExtReportServer/deleteDeviceExtReportServerByIds','DELETE','','','','',''),(9222,'p','888','/deviceExtReportServer/findDeviceExtReportServer','GET','','','','',''),(9223,'p','888','/deviceExtReportServer/getDeviceExtReportServerList','GET','','','','',''),(9221,'p','888','/deviceExtReportServer/updateDeviceExtReportServer','PUT','','','','',''),(9212,'p','888','/deviceReportServer/createDeviceReportServer','POST','','','','',''),(9213,'p','888','/deviceReportServer/deleteDeviceReportServer','DELETE','','','','',''),(9214,'p','888','/deviceReportServer/deleteDeviceReportServerByIds','DELETE','','','','',''),(9216,'p','888','/deviceReportServer/findDeviceReportServer','GET','','','','',''),(9217,'p','888','/deviceReportServer/getDeviceReportServerList','GET','','','','',''),(9215,'p','888','/deviceReportServer/updateDeviceReportServer','PUT','','','','',''),(9189,'p','888','/email/emailTest','POST','','','','',''),(9161,'p','888','/fileUploadAndDownload/breakpointContinue','POST','','','','',''),(9162,'p','888','/fileUploadAndDownload/breakpointContinueFinish','POST','','','','',''),(9165,'p','888','/fileUploadAndDownload/deleteFile','POST','','','','',''),(9166,'p','888','/fileUploadAndDownload/editFileName','POST','','','','',''),(9160,'p','888','/fileUploadAndDownload/findFile','GET','','','','',''),(9167,'p','888','/fileUploadAndDownload/getFileList','POST','','','','',''),(9163,'p','888','/fileUploadAndDownload/removeChunk','POST','','','','',''),(9164,'p','888','/fileUploadAndDownload/upload','POST','','','','',''),(9244,'p','888','/ipc/allocationIpc','POST','','','','',''),(9238,'p','888','/ipc/createIpc','POST','','','','',''),(9239,'p','888','/ipc/deleteIpc','DELETE','','','','',''),(9240,'p','888','/ipc/deleteIpcByIds','DELETE','','','','',''),(9242,'p','888','/ipc/findIpc','GET','','','','',''),(9243,'p','888','/ipc/getIpcList','GET','','','','',''),(9245,'p','888','/ipc/liveIpc','GET','','','','',''),(9241,'p','888','/ipc/updateIpc','PUT','','','','',''),(9293,'p','888','/ipcDvr/createIpcDvr','POST','','','','',''),(9294,'p','888','/ipcDvr/deleteIpcDvr','DELETE','','','','',''),(9295,'p','888','/ipcDvr/deleteIpcDvrByIds','DELETE','','','','',''),(9297,'p','888','/ipcDvr/findIpcDvr','GET','','','','',''),(9298,'p','888','/ipcDvr/getIpcDvrList','GET','','','','',''),(9296,'p','888','/ipcDvr/updateIpcDvr','PUT','','','','',''),(9286,'p','888','/ipcEvent/createIpcEvent','POST','','','','',''),(9287,'p','888','/ipcEvent/deleteIpcEvent','DELETE','','','','',''),(9288,'p','888','/ipcEvent/deleteIpcEventByIds','DELETE','','','','',''),(9290,'p','888','/ipcEvent/findIpcEvent','GET','','','','',''),(9291,'p','888','/ipcEvent/getIpcEventList','GET','','','','',''),(9292,'p','888','/ipcEvent/setEventHours','PUT','','','','',''),(9289,'p','888','/ipcEvent/updateIpcEvent','PUT','','','','',''),(9280,'p','888','/ipcExtRtsp/createIpcExtRtsp','POST','','','','',''),(9281,'p','888','/ipcExtRtsp/deleteIpcExtRtsp','DELETE','','','','',''),(9282,'p','888','/ipcExtRtsp/deleteIpcExtRtspByIds','DELETE','','','','',''),(9284,'p','888','/ipcExtRtsp/findIpcExtRtsp','GET','','','','',''),(9285,'p','888','/ipcExtRtsp/getIpcExtRtspList','GET','','','','',''),(9283,'p','888','/ipcExtRtsp/updateIpcExtRtsp','PUT','','','','',''),(9125,'p','888','/jwt/jsonInBlacklist','POST','','','','',''),(9232,'p','888','/lowerGb28181Device/createLowerGb28181Device','POST','','','','',''),(9233,'p','888','/lowerGb28181Device/deleteLowerGb28181Device','DELETE','','','','',''),(9234,'p','888','/lowerGb28181Device/deleteLowerGb28181DeviceByIds','DELETE','','','','',''),(9236,'p','888','/lowerGb28181Device/findLowerGb28181Device','GET','','','','',''),(9237,'p','888','/lowerGb28181Device/getLowerGb28181DeviceList','GET','','','','',''),(9235,'p','888','/lowerGb28181Device/updateLowerGb28181Device','PUT','','','','',''),(9151,'p','888','/menu/addBaseMenu','POST','','','','',''),(9159,'p','888','/menu/addMenuAuthority','POST','','','','',''),(9153,'p','888','/menu/deleteBaseMenu','POST','','','','',''),(9155,'p','888','/menu/getBaseMenuById','POST','','','','',''),(9157,'p','888','/menu/getBaseMenuTree','POST','','','','',''),(9152,'p','888','/menu/getMenu','POST','','','','',''),(9158,'p','888','/menu/getMenuAuthority','POST','','','','',''),(9156,'p','888','/menu/getMenuList','POST','','','','',''),(9154,'p','888','/menu/updateBaseMenu','POST','','','','',''),(9299,'p','888','/network/createNetwork','POST','','','','',''),(9300,'p','888','/network/deleteNetwork','DELETE','','','','',''),(9301,'p','888','/network/deleteNetworkByIds','DELETE','','','','',''),(9303,'p','888','/network/findNetwork','GET','','','','',''),(9304,'p','888','/network/getNetworkList','GET','','','','',''),(9302,'p','888','/network/updateNetwork','PUT','','','','',''),(9193,'p','888','/ovaGb28181Server/createOvaGb28181Server','POST','','','','',''),(9194,'p','888','/ovaGb28181Server/deleteOvaGb28181Server','DELETE','','','','',''),(9195,'p','888','/ovaGb28181Server/deleteOvaGb28181ServerByIds','DELETE','','','','',''),(9197,'p','888','/ovaGb28181Server/findOvaGb28181Server','GET','','','','',''),(9198,'p','888','/ovaGb28181Server/getOvaGb28181ServerList','GET','','','','',''),(9196,'p','888','/ovaGb28181Server/updateOvaGb28181Server','PUT','','','','',''),(9206,'p','888','/ovaMediagateCluster/createOvaMediagateCluster','POST','','','','',''),(9207,'p','888','/ovaMediagateCluster/deleteOvaMediagateCluster','DELETE','','','','',''),(9208,'p','888','/ovaMediagateCluster/deleteOvaMediagateClusterByIds','DELETE','','','','',''),(9210,'p','888','/ovaMediagateCluster/findOvaMediagateCluster','GET','','','','',''),(9211,'p','888','/ovaMediagateCluster/getOvaMediagateClusterList','GET','','','','',''),(9209,'p','888','/ovaMediagateCluster/updateOvaMediagateCluster','PUT','','','','',''),(9199,'p','888','/ovaMediagateServer/createOvaMediagateServer','POST','','','','',''),(9200,'p','888','/ovaMediagateServer/deleteOvaMediagateServer','DELETE','','','','',''),(9201,'p','888','/ovaMediagateServer/deleteOvaMediagateServerByIds','DELETE','','','','',''),(9203,'p','888','/ovaMediagateServer/findOvaMediagateServer','GET','','','','',''),(9204,'p','888','/ovaMediagateServer/getOvaMediagateServerList','GET','','','','',''),(9205,'p','888','/ovaMediagateServer/ps_ffmpeg_delete','DELETE','','','','',''),(9202,'p','888','/ovaMediagateServer/updateOvaMediagateServer','PUT','','','','',''),(9225,'p','888','/ovauser/createOvaUser','POST','','','','',''),(9226,'p','888','/ovauser/deleteOvaUser','DELETE','','','','',''),(9227,'p','888','/ovauser/deleteOvaUserByIds','DELETE','','','','',''),(9229,'p','888','/ovauser/findOvaUser','GET','','','','',''),(9230,'p','888','/ovauser/getOvaUserList','GET','','','','',''),(9231,'p','888','/ovauser/setUserVip','POST','','','','',''),(9228,'p','888','/ovauser/updateOvaUser','PUT','','','','',''),(9268,'p','888','/rtspDevice/createRtspDevice','POST','','','','',''),(9269,'p','888','/rtspDevice/deleteRtspDevice','DELETE','','','','',''),(9270,'p','888','/rtspDevice/deleteRtspDeviceByIds','DELETE','','','','',''),(9272,'p','888','/rtspDevice/findRtspDevice','GET','','','','',''),(9273,'p','888','/rtspDevice/getRtspDeviceList','GET','','','','',''),(9271,'p','888','/rtspDevice/updateRtspDevice','PUT','','','','',''),(9252,'p','888','/serviceCategory/createServiceCategory','POST','','','','',''),(9253,'p','888','/serviceCategory/deleteServiceCategory','DELETE','','','','',''),(9254,'p','888','/serviceCategory/deleteServiceCategoryByIds','DELETE','','','','',''),(9256,'p','888','/serviceCategory/findServiceCategory','GET','','','','',''),(9257,'p','888','/serviceCategory/getServiceCategoryList','GET','','','','',''),(9261,'p','888','/serviceCategory/getWorkAreaBySn','GET','','','','',''),(9259,'p','888','/serviceCategory/setIpcAiModelBySn','POST','','','','',''),(9258,'p','888','/serviceCategory/setIpcServiceBySn','POST','','','','',''),(9260,'p','888','/serviceCategory/setWorkAreaBySn','POST','','','','',''),(9255,'p','888','/serviceCategory/updateServiceCategory','PUT','','','','',''),(9187,'p','888','/simpleUploader/checkFileMd5','GET','','','','',''),(9188,'p','888','/simpleUploader/mergeFileMd5','GET','','','','',''),(9186,'p','888','/simpleUploader/upload','POST','','','','',''),(9176,'p','888','/sysDictionary/createSysDictionary','POST','','','','',''),(9177,'p','888','/sysDictionary/deleteSysDictionary','DELETE','','','','',''),(9179,'p','888','/sysDictionary/findSysDictionary','GET','','','','',''),(9180,'p','888','/sysDictionary/getSysDictionaryList','GET','','','','',''),(9178,'p','888','/sysDictionary/updateSysDictionary','PUT','','','','',''),(9172,'p','888','/sysDictionaryDetail/createSysDictionaryDetail','POST','','','','',''),(9173,'p','888','/sysDictionaryDetail/deleteSysDictionaryDetail','DELETE','','','','',''),(9174,'p','888','/sysDictionaryDetail/findSysDictionaryDetail','GET','','','','',''),(9175,'p','888','/sysDictionaryDetail/getSysDictionaryDetailList','GET','','','','',''),(9171,'p','888','/sysDictionaryDetail/updateSysDictionaryDetail','PUT','','','','',''),(9181,'p','888','/sysOperationRecord/createSysOperationRecord','POST','','','','',''),(9184,'p','888','/sysOperationRecord/deleteSysOperationRecord','DELETE','','','','',''),(9185,'p','888','/sysOperationRecord/deleteSysOperationRecordByIds','DELETE','','','','',''),(9182,'p','888','/sysOperationRecord/findSysOperationRecord','GET','','','','',''),(9183,'p','888','/sysOperationRecord/getSysOperationRecordList','GET','','','','',''),(9168,'p','888','/system/getServerInfo','POST','','','','',''),(9169,'p','888','/system/getSystemConfig','POST','','','','',''),(9170,'p','888','/system/setSystemConfig','POST','','','','',''),(9127,'p','888','/user/admin_register','POST','','','','',''),(9133,'p','888','/user/changePassword','POST','','','','',''),(9126,'p','888','/user/deleteUser','DELETE','','','','',''),(9131,'p','888','/user/getUserInfo','GET','','','','',''),(9128,'p','888','/user/getUserList','POST','','','','',''),(9135,'p','888','/user/resetPassword','POST','','','','',''),(9130,'p','888','/user/setSelfInfo','PUT','','','','',''),(9132,'p','888','/user/setUserAuthorities','POST','','','','',''),(9134,'p','888','/user/setUserAuthority','POST','','','','',''),(9129,'p','888','/user/setUserInfo','PUT','','','','',''),(9427,'p','8881','/base/login','POST','','','','',''),(9449,'p','8881','/classes/findClasses','GET','','','','',''),(9450,'p','8881','/classes/getClassesList','GET','','','','',''),(9463,'p','8881','/deviceBase/createDevice','POST','','','','',''),(9464,'p','8881','/deviceBase/deleteDevice','DELETE','','','','',''),(9465,'p','8881','/deviceBase/deleteDeviceByIds','DELETE','','','','',''),(9467,'p','8881','/deviceBase/findDevice','GET','','','','',''),(9468,'p','8881','/deviceBase/getDeviceList','GET','','','','',''),(9466,'p','8881','/deviceBase/updateDevice','PUT','','','','',''),(9447,'p','8881','/ipc/allocationIpc','POST','','','','',''),(9441,'p','8881','/ipc/createIpc','POST','','','','',''),(9442,'p','8881','/ipc/deleteIpc','DELETE','','','','',''),(9443,'p','8881','/ipc/deleteIpcByIds','DELETE','','','','',''),(9445,'p','8881','/ipc/findIpc','GET','','','','',''),(9446,'p','8881','/ipc/getIpcList','GET','','','','',''),(9448,'p','8881','/ipc/liveIpc','GET','','','','',''),(9444,'p','8881','/ipc/updateIpc','PUT','','','','',''),(9482,'p','8881','/ipcDvr/createIpcDvr','POST','','','','',''),(9483,'p','8881','/ipcDvr/deleteIpcDvr','DELETE','','','','',''),(9484,'p','8881','/ipcDvr/deleteIpcDvrByIds','DELETE','','','','',''),(9486,'p','8881','/ipcDvr/findIpcDvr','GET','','','','',''),(9487,'p','8881','/ipcDvr/getIpcDvrList','GET','','','','',''),(9485,'p','8881','/ipcDvr/updateIpcDvr','PUT','','','','',''),(9475,'p','8881','/ipcEvent/createIpcEvent','POST','','','','',''),(9476,'p','8881','/ipcEvent/deleteIpcEvent','DELETE','','','','',''),(9477,'p','8881','/ipcEvent/deleteIpcEventByIds','DELETE','','','','',''),(9479,'p','8881','/ipcEvent/findIpcEvent','GET','','','','',''),(9480,'p','8881','/ipcEvent/getIpcEventList','GET','','','','',''),(9481,'p','8881','/ipcEvent/setEventHours','PUT','','','','',''),(9478,'p','8881','/ipcEvent/updateIpcEvent','PUT','','','','',''),(9469,'p','8881','/ipcExtRtsp/createIpcExtRtsp','POST','','','','',''),(9470,'p','8881','/ipcExtRtsp/deleteIpcExtRtsp','DELETE','','','','',''),(9471,'p','8881','/ipcExtRtsp/deleteIpcExtRtspByIds','DELETE','','','','',''),(9473,'p','8881','/ipcExtRtsp/findIpcExtRtsp','GET','','','','',''),(9474,'p','8881','/ipcExtRtsp/getIpcExtRtspList','GET','','','','',''),(9472,'p','8881','/ipcExtRtsp/updateIpcExtRtsp','PUT','','','','',''),(9428,'p','8881','/jwt/jsonInBlacklist','POST','','','','',''),(9435,'p','8881','/lowerGb28181Device/createLowerGb28181Device','POST','','','','',''),(9436,'p','8881','/lowerGb28181Device/deleteLowerGb28181Device','DELETE','','','','',''),(9437,'p','8881','/lowerGb28181Device/deleteLowerGb28181DeviceByIds','DELETE','','','','',''),(9439,'p','8881','/lowerGb28181Device/findLowerGb28181Device','GET','','','','',''),(9440,'p','8881','/lowerGb28181Device/getLowerGb28181DeviceList','GET','','','','',''),(9438,'p','8881','/lowerGb28181Device/updateLowerGb28181Device','PUT','','','','',''),(9434,'p','8881','/menu/getMenu','POST','','','','',''),(9457,'p','8881','/rtspDevice/createRtspDevice','POST','','','','',''),(9458,'p','8881','/rtspDevice/deleteRtspDevice','DELETE','','','','',''),(9459,'p','8881','/rtspDevice/deleteRtspDeviceByIds','DELETE','','','','',''),(9461,'p','8881','/rtspDevice/findRtspDevice','GET','','','','',''),(9462,'p','8881','/rtspDevice/getRtspDeviceList','GET','','','','',''),(9460,'p','8881','/rtspDevice/updateRtspDevice','PUT','','','','',''),(9451,'p','8881','/serviceCategory/findServiceCategory','GET','','','','',''),(9452,'p','8881','/serviceCategory/getServiceCategoryList','GET','','','','',''),(9456,'p','8881','/serviceCategory/getWorkAreaBySn','GET','','','','',''),(9454,'p','8881','/serviceCategory/setIpcAiModelBySn','POST','','','','',''),(9453,'p','8881','/serviceCategory/setIpcServiceBySn','POST','','','','',''),(9455,'p','8881','/serviceCategory/setWorkAreaBySn','POST','','','','',''),(9429,'p','8881','/user/admin_register','POST','','','','',''),(9432,'p','8881','/user/changePassword','POST','','','','',''),(9431,'p','8881','/user/getUserInfo','GET','','','','',''),(9433,'p','8881','/user/setUserAuthority','POST','','','','',''),(9430,'p','8881','/user/setUserInfo','PUT','','','','','');

/*Table structure for table `device_report_server` */

DROP TABLE IF EXISTS `device_report_server`;

CREATE TABLE `device_report_server` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL COMMENT '共有',
  `is_default` tinyint(1) DEFAULT NULL COMMENT '是否默认',
  `created_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `deleted_by` bigint(20) DEFAULT NULL COMMENT '删除者',
  PRIMARY KEY (`id`),
  KEY `idx_device_report_server_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `device_report_server` */

/*Table structure for table `exa_customers` */

DROP TABLE IF EXISTS `exa_customers`;

CREATE TABLE `exa_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL COMMENT '客户名',
  `customer_phone_data` varchar(191) DEFAULT NULL COMMENT '客户手机号',
  `sys_user_id` bigint(20) unsigned DEFAULT NULL COMMENT '管理ID',
  `sys_user_authority_id` bigint(20) unsigned DEFAULT NULL COMMENT '管理角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_exa_customers_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `exa_customers` */

insert  into `exa_customers`(`id`,`created_at`,`updated_at`,`deleted_at`,`customer_name`,`customer_phone_data`,`sys_user_id`,`sys_user_authority_id`) values (1,'2023-05-08 16:38:52.344','2023-05-08 16:38:52.344',NULL,'张三','123',1,888);

/*Table structure for table `exa_file_chunks` */

DROP TABLE IF EXISTS `exa_file_chunks`;

CREATE TABLE `exa_file_chunks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `exa_file_id` bigint(20) unsigned DEFAULT NULL,
  `file_chunk_number` bigint(20) DEFAULT NULL,
  `file_chunk_path` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_chunks_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `exa_file_chunks` */

/*Table structure for table `exa_file_upload_and_downloads` */

DROP TABLE IF EXISTS `exa_file_upload_and_downloads`;

CREATE TABLE `exa_file_upload_and_downloads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '文件名',
  `url` varchar(191) DEFAULT NULL COMMENT '文件地址',
  `tag` varchar(191) DEFAULT NULL COMMENT '文件标签',
  `key` varchar(191) DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_upload_and_downloads_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `exa_file_upload_and_downloads` */

insert  into `exa_file_upload_and_downloads`(`id`,`created_at`,`updated_at`,`deleted_at`,`name`,`url`,`tag`,`key`) values (1,'2023-05-08 16:07:55.671','2023-05-08 16:07:55.671',NULL,'10.png','https://qmplusimg.henrongyi.top/gvalogo.png','png','158787308910.png'),(2,'2023-05-08 16:07:55.671','2023-05-08 16:07:55.671',NULL,'logo.png','https://qmplusimg.henrongyi.top/1576554439myAvatar.png','png','1587973709logo.png');

/*Table structure for table `exa_files` */

DROP TABLE IF EXISTS `exa_files`;

CREATE TABLE `exa_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_md5` varchar(191) DEFAULT NULL,
  `file_path` varchar(191) DEFAULT NULL,
  `chunk_total` bigint(20) DEFAULT NULL,
  `is_finish` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_files_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `exa_files` */

/*Table structure for table `jwt_blacklists` */

DROP TABLE IF EXISTS `jwt_blacklists`;

CREATE TABLE `jwt_blacklists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `jwt` text COMMENT 'jwt',
  PRIMARY KEY (`id`),
  KEY `idx_jwt_blacklists_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `jwt_blacklists` */

insert  into `jwt_blacklists`(`id`,`created_at`,`updated_at`,`deleted_at`,`jwt`) values (1,'2024-05-22 17:37:05.640','2024-05-22 17:37:05.640',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiZGVhMDQyNjEtOTFiMy00MDNmLTk3MWMtOWJlY2NjY2JmNDEwIiwiSUQiOjEsIlVzZXJuYW1lIjoiYWRtaW4iLCJOaWNrTmFtZSI6IueuoeeQhuWRmCIsIkF1dGhvcml0eUlkIjo4ODgsIkJ1ZmZlclRpbWUiOjg2NDAwLCJpc3MiOiJxbVBsdXMiLCJhdWQiOlsiR1ZBIl0sImV4cCI6MTcxNjk3NDE1MiwibmJmIjoxNzE2MzY5MzUyfQ.f_L1b3jbu-0PJGDBWLq0ywW1EWqkraqiEWuA2W0MZ6w'),(2,'2024-05-26 18:10:02.969','2024-05-26 18:10:02.969',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiZGVhMDQyNjEtOTFiMy00MDNmLTk3MWMtOWJlY2NjY2JmNDEwIiwiSUQiOjEsIlVzZXJuYW1lIjoiYWRtaW4iLCJOaWNrTmFtZSI6IueuoeeQhuWRmCIsIkF1dGhvcml0eUlkIjo4ODgsIkJ1ZmZlclRpbWUiOjg2NDAwLCJpc3MiOiJxbVBsdXMiLCJhdWQiOlsiR1ZBIl0sImV4cCI6MTcxNjk3NTQzMywibmJmIjoxNzE2MzcwNjMzfQ.yV2LHouGd_ofg-518wXCW_vr0nBaTRuJOHWcQnyoOzw');

/*Table structure for table `sys_apis` */

DROP TABLE IF EXISTS `sys_apis`;

CREATE TABLE `sys_apis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL COMMENT 'api路径',
  `description` varchar(191) DEFAULT NULL COMMENT 'api中文描述',
  `api_group` varchar(191) DEFAULT NULL COMMENT 'api组',
  `method` varchar(191) DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`),
  KEY `idx_sys_apis_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_apis` */

insert  into `sys_apis`(`id`,`created_at`,`updated_at`,`deleted_at`,`path`,`description`,`api_group`,`method`) values (1,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/base/login','用户登录(必选)','base','POST'),(2,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/jwt/jsonInBlacklist','jwt加入黑名单(退出，必选)','jwt','POST'),(3,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/user/deleteUser','删除用户','系统用户','DELETE'),(4,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/user/admin_register','用户注册','系统用户','POST'),(5,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/user/getUserList','获取用户列表','系统用户','POST'),(6,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/user/setUserInfo','设置用户信息','系统用户','PUT'),(7,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/user/setSelfInfo','设置自身信息(必选)','系统用户','PUT'),(8,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/user/getUserInfo','获取自身信息(必选)','系统用户','GET'),(9,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/user/setUserAuthorities','设置权限组','系统用户','POST'),(10,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/user/changePassword','修改密码（建议选择)','系统用户','POST'),(11,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/user/setUserAuthority','修改用户角色(必选)','系统用户','POST'),(12,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/user/resetPassword','重置用户密码','系统用户','POST'),(13,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/api/createApi','创建api','api','POST'),(14,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/api/deleteApi','删除Api','api','POST'),(15,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/api/updateApi','更新Api','api','POST'),(16,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/api/getApiList','获取api列表','api','POST'),(17,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/api/getAllApis','获取所有api','api','POST'),(18,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/api/getApiById','获取api详细信息','api','POST'),(19,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/api/deleteApisByIds','批量删除api','api','DELETE'),(20,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/authority/copyAuthority','拷贝角色','角色','POST'),(21,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/authority/createAuthority','创建角色','角色','POST'),(22,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/authority/deleteAuthority','删除角色','角色','POST'),(23,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/authority/updateAuthority','更新角色信息','角色','PUT'),(24,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/authority/getAuthorityList','获取角色列表','角色','POST'),(25,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/authority/setDataAuthority','设置角色资源权限','角色','POST'),(26,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/casbin/updateCasbin','更改角色api权限','casbin','POST'),(27,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/casbin/getPolicyPathByAuthorityId','获取权限列表','casbin','POST'),(28,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/menu/addBaseMenu','新增菜单','菜单','POST'),(29,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/menu/getMenu','获取菜单树(必选)','菜单','POST'),(30,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/menu/deleteBaseMenu','删除菜单','菜单','POST'),(31,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/menu/updateBaseMenu','更新菜单','菜单','POST'),(32,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/menu/getBaseMenuById','根据id获取菜单','菜单','POST'),(33,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/menu/getMenuList','分页获取基础menu列表','菜单','POST'),(34,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/menu/getBaseMenuTree','获取用户动态路由','菜单','POST'),(35,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/menu/getMenuAuthority','获取指定角色menu','菜单','POST'),(36,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/menu/addMenuAuthority','增加menu和角色关联关系','菜单','POST'),(37,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/fileUploadAndDownload/findFile','寻找目标文件（秒传）','分片上传','GET'),(38,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/fileUploadAndDownload/breakpointContinue','断点续传','分片上传','POST'),(39,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/fileUploadAndDownload/breakpointContinueFinish','断点续传完成','分片上传','POST'),(40,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/fileUploadAndDownload/removeChunk','上传完成移除文件','分片上传','POST'),(41,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/fileUploadAndDownload/upload','文件上传示例','文件上传与下载','POST'),(42,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/fileUploadAndDownload/deleteFile','删除文件','文件上传与下载','POST'),(43,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/fileUploadAndDownload/editFileName','文件名或者备注编辑','文件上传与下载','POST'),(44,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/fileUploadAndDownload/getFileList','获取上传文件列表','文件上传与下载','POST'),(45,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/system/getServerInfo','获取服务器信息','系统服务','POST'),(46,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/system/getSystemConfig','获取配置文件内容','系统服务','POST'),(47,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/system/setSystemConfig','设置配置文件内容','系统服务','POST'),(48,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:30.779','/customer/customer','更新客户','客户','PUT'),(49,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:30.779','/customer/customer','创建客户','客户','POST'),(50,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:30.779','/customer/customer','删除客户','客户','DELETE'),(51,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:30.779','/customer/customer','获取单一客户','客户','GET'),(52,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:38.066','/customer/customerList','获取客户列表','客户','GET'),(53,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:05.986','/autoCode/getDB','获取所有数据库','代码生成器','GET'),(54,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:05.986','/autoCode/getTables','获取数据库表','代码生成器','GET'),(55,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:05.986','/autoCode/createTemp','自动化代码','代码生成器','POST'),(56,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:05.986','/autoCode/preview','预览自动化代码','代码生成器','POST'),(57,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:05.986','/autoCode/getColumn','获取所选table的所有字段','代码生成器','GET'),(58,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:05.986','/autoCode/createPlug','自动创建插件包','代码生成器','POST'),(59,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:22.112','/autoCode/installPlugin','安装插件','代码生成器','POST'),(60,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:22.112','/autoCode/createPackage','生成包(package)','包（pkg）生成器','POST'),(61,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:30.779','/autoCode/getPackage','获取所有包(package)','包（pkg）生成器','POST'),(62,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:30.779','/autoCode/delPackage','删除包(package)','包（pkg）生成器','POST'),(63,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:22.112','/autoCode/getMeta','获取meta信息','代码生成器历史','POST'),(64,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:22.112','/autoCode/rollback','回滚自动生成代码','代码生成器历史','POST'),(65,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:22.112','/autoCode/getSysHistory','查询回滚记录','代码生成器历史','POST'),(66,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:22.112','/autoCode/delSysHistory','删除回滚记录','代码生成器历史','POST'),(67,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysDictionaryDetail/updateSysDictionaryDetail','更新字典内容','系统字典详情','PUT'),(68,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysDictionaryDetail/createSysDictionaryDetail','新增字典内容','系统字典详情','POST'),(69,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysDictionaryDetail/deleteSysDictionaryDetail','删除字典内容','系统字典详情','DELETE'),(70,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysDictionaryDetail/findSysDictionaryDetail','根据ID获取字典内容','系统字典详情','GET'),(71,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysDictionaryDetail/getSysDictionaryDetailList','获取字典内容列表','系统字典详情','GET'),(72,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysDictionary/createSysDictionary','新增字典','系统字典','POST'),(73,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysDictionary/deleteSysDictionary','删除字典','系统字典','DELETE'),(74,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysDictionary/updateSysDictionary','更新字典','系统字典','PUT'),(75,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysDictionary/findSysDictionary','根据ID获取字典','系统字典','GET'),(76,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysDictionary/getSysDictionaryList','获取字典列表','系统字典','GET'),(77,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysOperationRecord/createSysOperationRecord','新增操作记录','操作记录','POST'),(78,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysOperationRecord/findSysOperationRecord','根据ID获取操作记录','操作记录','GET'),(79,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysOperationRecord/getSysOperationRecordList','获取操作记录列表','操作记录','GET'),(80,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysOperationRecord/deleteSysOperationRecord','删除操作记录','操作记录','DELETE'),(81,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/sysOperationRecord/deleteSysOperationRecordByIds','批量删除操作历史','操作记录','DELETE'),(82,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/simpleUploader/upload','插件版分片上传','断点续传(插件版)','POST'),(83,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/simpleUploader/checkFileMd5','文件完整度验证','断点续传(插件版)','GET'),(84,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/simpleUploader/mergeFileMd5','上传完成合并文件','断点续传(插件版)','GET'),(85,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/email/emailTest','发送测试邮件','email','POST'),(86,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/email/emailSend','发送邮件示例','email','POST'),(87,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/authorityBtn/setAuthorityBtn','设置按钮权限','按钮权限','POST'),(88,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/authorityBtn/getAuthorityBtn','获取已有按钮权限','按钮权限','POST'),(89,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373',NULL,'/authorityBtn/canRemoveAuthorityBtn','删除按钮','按钮权限','POST'),(90,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:05.986','/chatGpt/getTable','通过gpt获取内容','万用表格','POST'),(91,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:05.986','/chatGpt/createSK','录入sk','万用表格','POST'),(92,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:05.986','/chatGpt/getSK','获取sk','万用表格','GET'),(93,'2023-05-08 16:07:55.373','2023-05-08 16:07:55.373','2024-05-22 17:19:05.986','/chatGpt/deleteSK','删除sk','万用表格','DELETE'),(94,'2023-05-08 16:11:39.428','2023-05-08 16:11:39.428',NULL,'/ovaGb28181Server/createOvaGb28181Server','新增ovaGb28181Server表','ovaGb28181Server','POST'),(95,'2023-05-08 16:11:39.430','2023-05-08 16:11:39.430',NULL,'/ovaGb28181Server/deleteOvaGb28181Server','删除ovaGb28181Server表','ovaGb28181Server','DELETE'),(96,'2023-05-08 16:11:39.432','2023-05-08 16:11:39.432',NULL,'/ovaGb28181Server/deleteOvaGb28181ServerByIds','批量删除ovaGb28181Server表','ovaGb28181Server','DELETE'),(97,'2023-05-08 16:11:39.434','2023-05-08 16:11:39.434',NULL,'/ovaGb28181Server/updateOvaGb28181Server','更新ovaGb28181Server表','ovaGb28181Server','PUT'),(98,'2023-05-08 16:11:39.435','2023-05-08 16:11:39.435',NULL,'/ovaGb28181Server/findOvaGb28181Server','根据ID获取ovaGb28181Server表','ovaGb28181Server','GET'),(99,'2023-05-08 16:11:39.437','2023-05-08 16:11:39.437',NULL,'/ovaGb28181Server/getOvaGb28181ServerList','获取ovaGb28181Server表列表','ovaGb28181Server','GET'),(100,'2023-05-09 13:59:02.652','2023-05-09 13:59:02.652',NULL,'/ovaMediagateServer/createOvaMediagateServer','新增ovaMediagateServer表','ovaMediagateServer','POST'),(101,'2023-05-09 13:59:02.654','2023-05-09 13:59:02.654',NULL,'/ovaMediagateServer/deleteOvaMediagateServer','删除ovaMediagateServer表','ovaMediagateServer','DELETE'),(102,'2023-05-09 13:59:02.657','2023-05-09 13:59:02.657',NULL,'/ovaMediagateServer/deleteOvaMediagateServerByIds','批量删除ovaMediagateServer表','ovaMediagateServer','DELETE'),(103,'2023-05-09 13:59:02.658','2023-05-09 13:59:02.658',NULL,'/ovaMediagateServer/updateOvaMediagateServer','更新ovaMediagateServer表','ovaMediagateServer','PUT'),(104,'2023-05-09 13:59:02.660','2023-05-09 13:59:02.660',NULL,'/ovaMediagateServer/findOvaMediagateServer','根据ID获取ovaMediagateServer表','ovaMediagateServer','GET'),(105,'2023-05-09 13:59:02.662','2023-05-09 13:59:02.662',NULL,'/ovaMediagateServer/getOvaMediagateServerList','获取ovaMediagateServer表列表','ovaMediagateServer','GET'),(106,'2023-05-09 16:19:39.899','2023-05-09 16:19:39.899',NULL,'/ovaMediagateCluster/createOvaMediagateCluster','新增ovaMediagateCluster表','ovaMediagateCluster','POST'),(107,'2023-05-09 16:19:39.902','2023-05-09 16:19:39.902',NULL,'/ovaMediagateCluster/deleteOvaMediagateCluster','删除ovaMediagateCluster表','ovaMediagateCluster','DELETE'),(108,'2023-05-09 16:19:39.904','2023-05-09 16:19:39.904',NULL,'/ovaMediagateCluster/deleteOvaMediagateClusterByIds','批量删除ovaMediagateCluster表','ovaMediagateCluster','DELETE'),(109,'2023-05-09 16:19:39.906','2023-05-09 16:19:39.906',NULL,'/ovaMediagateCluster/updateOvaMediagateCluster','更新ovaMediagateCluster表','ovaMediagateCluster','PUT'),(110,'2023-05-09 16:19:39.908','2023-05-09 16:19:39.908',NULL,'/ovaMediagateCluster/findOvaMediagateCluster','根据ID获取ovaMediagateCluster表','ovaMediagateCluster','GET'),(111,'2023-05-09 16:19:39.911','2023-05-09 16:19:39.911',NULL,'/ovaMediagateCluster/getOvaMediagateClusterList','获取ovaMediagateCluster表列表','ovaMediagateCluster','GET'),(114,'2023-06-29 08:42:55.841','2023-06-29 08:42:55.841',NULL,'/deviceReportServer/createDeviceReportServer','新增deviceReportServer表','deviceReportServer','POST'),(115,'2023-06-29 08:42:55.843','2023-06-29 08:42:55.843',NULL,'/deviceReportServer/deleteDeviceReportServer','删除deviceReportServer表','deviceReportServer','DELETE'),(116,'2023-06-29 08:42:55.845','2023-06-29 08:42:55.845',NULL,'/deviceReportServer/deleteDeviceReportServerByIds','批量删除deviceReportServer表','deviceReportServer','DELETE'),(117,'2023-06-29 08:42:55.850','2023-06-29 08:42:55.850',NULL,'/deviceReportServer/updateDeviceReportServer','更新deviceReportServer表','deviceReportServer','PUT'),(118,'2023-06-29 08:42:55.851','2023-06-29 08:42:55.851',NULL,'/deviceReportServer/findDeviceReportServer','根据ID获取deviceReportServer表','deviceReportServer','GET'),(119,'2023-06-29 08:42:55.854','2023-06-29 08:42:55.854',NULL,'/deviceReportServer/getDeviceReportServerList','获取deviceReportServer表列表','deviceReportServer','GET'),(120,'2023-06-29 09:18:08.869','2023-06-29 09:18:08.869',NULL,'/deviceExtReportServer/createDeviceExtReportServer','新增deviceExtReportServer表','deviceExtReportServer','POST'),(121,'2023-06-29 09:18:08.872','2023-06-29 09:18:08.872',NULL,'/deviceExtReportServer/deleteDeviceExtReportServer','删除deviceExtReportServer表','deviceExtReportServer','DELETE'),(122,'2023-06-29 09:18:08.873','2023-06-29 09:18:08.873',NULL,'/deviceExtReportServer/deleteDeviceExtReportServerByIds','批量删除deviceExtReportServer表','deviceExtReportServer','DELETE'),(123,'2023-06-29 09:18:08.875','2023-06-29 09:18:08.875',NULL,'/deviceExtReportServer/updateDeviceExtReportServer','更新deviceExtReportServer表','deviceExtReportServer','PUT'),(124,'2023-06-29 09:18:08.878','2023-06-29 09:18:08.878',NULL,'/deviceExtReportServer/findDeviceExtReportServer','根据ID获取deviceExtReportServer表','deviceExtReportServer','GET'),(125,'2023-06-29 09:18:08.880','2023-06-29 09:18:08.880',NULL,'/deviceExtReportServer/getDeviceExtReportServerList','获取deviceExtReportServer表列表','deviceExtReportServer','GET'),(126,'2023-06-29 10:25:41.723','2023-06-29 10:25:41.723','2024-05-22 17:18:24.542','/user/createUser','新增user表','user','POST'),(127,'2023-06-29 10:25:41.727','2023-06-29 10:25:41.727','2024-05-22 17:18:24.542','/user/deleteUserByIds','批量删除user表','user','DELETE'),(128,'2023-06-29 10:25:41.730','2023-06-29 10:25:41.730','2024-05-22 17:18:24.542','/user/updateUser','更新user表','user','PUT'),(129,'2023-06-29 10:25:41.733','2023-06-29 10:25:41.733','2024-05-22 17:18:24.542','/user/findUser','根据ID获取user表','user','GET'),(130,'2023-06-29 10:25:41.735','2023-06-29 10:25:41.735','2024-05-22 17:18:24.542','/user/getUserList','获取user表列表','user','GET'),(137,'2023-06-29 10:32:58.821','2023-06-29 10:32:58.821',NULL,'/ovauser/createOvaUser','新增user表','ovauser','POST'),(138,'2023-06-29 10:32:58.823','2023-06-29 10:32:58.823',NULL,'/ovauser/deleteOvaUser','删除user表','ovauser','DELETE'),(139,'2023-06-29 10:32:58.825','2023-06-29 10:32:58.825',NULL,'/ovauser/deleteOvaUserByIds','批量删除user表','ovauser','DELETE'),(140,'2023-06-29 10:32:58.826','2023-06-29 10:32:58.826',NULL,'/ovauser/updateOvaUser','更新user表','ovauser','PUT'),(141,'2023-06-29 10:32:58.828','2023-06-29 10:32:58.828',NULL,'/ovauser/findOvaUser','根据ID获取user表','ovauser','GET'),(142,'2023-06-29 10:32:58.829','2023-06-29 10:32:58.829',NULL,'/ovauser/getOvaUserList','获取user表列表','ovauser','GET'),(143,'2023-06-29 12:51:37.959','2023-06-29 12:51:37.959',NULL,'/ovauser/setUserVip','更新用户vip','ovauser','POST'),(144,'2023-06-29 13:23:42.942','2023-06-29 13:23:42.942',NULL,'/lowerGb28181Device/createLowerGb28181Device','新增lowerGb28181Device表','lowerGb28181Device','POST'),(145,'2023-06-29 13:23:42.945','2023-06-29 13:23:42.945',NULL,'/lowerGb28181Device/deleteLowerGb28181Device','删除lowerGb28181Device表','lowerGb28181Device','DELETE'),(146,'2023-06-29 13:23:42.948','2023-06-29 13:23:42.948',NULL,'/lowerGb28181Device/deleteLowerGb28181DeviceByIds','批量删除lowerGb28181Device表','lowerGb28181Device','DELETE'),(147,'2023-06-29 13:23:42.951','2023-06-29 13:23:42.951',NULL,'/lowerGb28181Device/updateLowerGb28181Device','更新lowerGb28181Device表','lowerGb28181Device','PUT'),(148,'2023-06-29 13:23:42.955','2023-06-29 13:23:42.955',NULL,'/lowerGb28181Device/findLowerGb28181Device','根据ID获取lowerGb28181Device表','lowerGb28181Device','GET'),(149,'2023-06-29 13:23:42.958','2023-06-29 13:23:42.958',NULL,'/lowerGb28181Device/getLowerGb28181DeviceList','获取lowerGb28181Device表列表','lowerGb28181Device','GET'),(150,'2023-06-29 17:08:06.062','2023-06-29 17:08:06.062',NULL,'/deviceExtReportServer/changeReportServer','修改report_server','deviceExtReportServer','POST'),(151,'2023-06-29 17:59:29.102','2023-06-29 17:59:29.102',NULL,'/ipc/createIpc','新增ipc表','ipc','POST'),(152,'2023-06-29 17:59:29.104','2023-06-29 17:59:29.104',NULL,'/ipc/deleteIpc','删除ipc表','ipc','DELETE'),(153,'2023-06-29 17:59:29.108','2023-06-29 17:59:29.108',NULL,'/ipc/deleteIpcByIds','批量删除ipc表','ipc','DELETE'),(154,'2023-06-29 17:59:29.110','2023-06-29 17:59:29.110',NULL,'/ipc/updateIpc','更新ipc表','ipc','PUT'),(155,'2023-06-29 17:59:29.112','2023-06-29 17:59:29.112',NULL,'/ipc/findIpc','根据ID获取ipc表','ipc','GET'),(156,'2023-06-29 17:59:29.115','2023-06-29 17:59:29.115',NULL,'/ipc/getIpcList','获取ipc表列表','ipc','GET'),(157,'2023-06-29 18:06:29.918','2023-06-29 18:06:29.918',NULL,'/classes/createClasses','新增classes表','classes','POST'),(158,'2023-06-29 18:06:29.920','2023-06-29 18:06:29.920',NULL,'/classes/deleteClasses','删除classes表','classes','DELETE'),(159,'2023-06-29 18:06:29.923','2023-06-29 18:06:29.923',NULL,'/classes/deleteClassesByIds','批量删除classes表','classes','DELETE'),(160,'2023-06-29 18:06:29.925','2023-06-29 18:06:29.925',NULL,'/classes/updateClasses','更新classes表','classes','PUT'),(161,'2023-06-29 18:06:29.927','2023-06-29 18:06:29.927',NULL,'/classes/findClasses','根据ID获取classes表','classes','GET'),(162,'2023-06-29 18:06:29.929','2023-06-29 18:06:29.929',NULL,'/classes/getClassesList','获取classes表列表','classes','GET'),(163,'2023-06-29 18:14:58.788','2023-06-29 18:14:58.788',NULL,'/serviceCategory/createServiceCategory','新增serviceCategory表','serviceCategory','POST'),(164,'2023-06-29 18:14:58.790','2023-06-29 18:14:58.790',NULL,'/serviceCategory/deleteServiceCategory','删除serviceCategory表','serviceCategory','DELETE'),(165,'2023-06-29 18:14:58.793','2023-06-29 18:14:58.793',NULL,'/serviceCategory/deleteServiceCategoryByIds','批量删除serviceCategory表','serviceCategory','DELETE'),(166,'2023-06-29 18:14:58.796','2023-06-29 18:14:58.796',NULL,'/serviceCategory/updateServiceCategory','更新serviceCategory表','serviceCategory','PUT'),(167,'2023-06-29 18:14:58.799','2023-06-29 18:14:58.799',NULL,'/serviceCategory/findServiceCategory','根据ID获取serviceCategory表','serviceCategory','GET'),(168,'2023-06-29 18:14:58.802','2023-06-29 18:14:58.802',NULL,'/serviceCategory/getServiceCategoryList','获取serviceCategory表列表','serviceCategory','GET'),(169,'2023-06-29 20:09:58.455','2023-06-29 20:12:01.158',NULL,'/serviceCategory/setIpcServiceBySn','设置服务类型','serviceCategory','POST'),(170,'2023-06-29 21:11:14.951','2023-06-29 21:11:14.951',NULL,'/serviceCategory/setIpcAiModelBySn','设置ai模型','serviceCategory','POST'),(171,'2023-08-04 07:46:28.902','2023-08-04 07:46:28.902',NULL,'/cdn/createCdn','新增cdn表','cdn','POST'),(172,'2023-08-04 07:46:28.904','2023-08-04 07:46:28.904',NULL,'/cdn/deleteCdn','删除cdn表','cdn','DELETE'),(173,'2023-08-04 07:46:28.906','2023-08-04 07:46:28.906',NULL,'/cdn/deleteCdnByIds','批量删除cdn表','cdn','DELETE'),(174,'2023-08-04 07:46:28.908','2023-08-04 07:46:28.908',NULL,'/cdn/updateCdn','更新cdn表','cdn','PUT'),(175,'2023-08-04 07:46:28.910','2023-08-04 07:46:28.910',NULL,'/cdn/findCdn','根据ID获取cdn表','cdn','GET'),(176,'2023-08-04 07:46:28.912','2023-08-04 07:46:28.912',NULL,'/cdn/getCdnList','获取cdn表列表','cdn','GET'),(177,'2023-08-04 08:40:03.352','2023-08-04 08:40:03.352',NULL,'/rtspDevice/createRtspDevice','新增rtspDevice表','rtspDevice','POST'),(178,'2023-08-04 08:40:03.355','2023-08-04 08:40:03.355',NULL,'/rtspDevice/deleteRtspDevice','删除rtspDevice表','rtspDevice','DELETE'),(179,'2023-08-04 08:40:03.358','2023-08-04 08:40:03.358',NULL,'/rtspDevice/deleteRtspDeviceByIds','批量删除rtspDevice表','rtspDevice','DELETE'),(180,'2023-08-04 08:40:03.361','2023-08-04 08:40:03.361',NULL,'/rtspDevice/updateRtspDevice','更新rtspDevice表','rtspDevice','PUT'),(181,'2023-08-04 08:40:03.365','2023-08-04 08:40:03.365',NULL,'/rtspDevice/findRtspDevice','根据ID获取rtspDevice表','rtspDevice','GET'),(182,'2023-08-04 08:40:03.368','2023-08-04 08:40:03.368',NULL,'/rtspDevice/getRtspDeviceList','获取rtspDevice表列表','rtspDevice','GET'),(183,'2023-08-04 08:42:16.924','2023-08-04 08:42:16.924',NULL,'/deviceBase/createDevice','新增device表','deviceBase','POST'),(184,'2023-08-04 08:42:16.927','2023-08-04 08:42:16.927',NULL,'/deviceBase/deleteDevice','删除device表','deviceBase','DELETE'),(185,'2023-08-04 08:42:16.930','2023-08-04 08:42:16.930',NULL,'/deviceBase/deleteDeviceByIds','批量删除device表','deviceBase','DELETE'),(186,'2023-08-04 08:42:16.932','2023-08-04 08:42:16.932',NULL,'/deviceBase/updateDevice','更新device表','deviceBase','PUT'),(187,'2023-08-04 08:42:16.935','2023-08-04 08:42:16.935',NULL,'/deviceBase/findDevice','根据ID获取device表','deviceBase','GET'),(188,'2023-08-04 08:42:16.938','2023-08-04 08:42:16.938',NULL,'/deviceBase/getDeviceList','获取device表列表','deviceBase','GET'),(189,'2023-08-04 10:07:10.327','2023-08-04 10:07:10.327',NULL,'/ipcExtRtsp/createIpcExtRtsp','新增ipcExtRtsp表','ipcExtRtsp','POST'),(190,'2023-08-04 10:07:10.332','2023-08-04 10:07:10.332',NULL,'/ipcExtRtsp/deleteIpcExtRtsp','删除ipcExtRtsp表','ipcExtRtsp','DELETE'),(191,'2023-08-04 10:07:10.334','2023-08-04 10:07:10.334',NULL,'/ipcExtRtsp/deleteIpcExtRtspByIds','批量删除ipcExtRtsp表','ipcExtRtsp','DELETE'),(192,'2023-08-04 10:07:10.337','2023-08-04 10:07:10.337',NULL,'/ipcExtRtsp/updateIpcExtRtsp','更新ipcExtRtsp表','ipcExtRtsp','PUT'),(193,'2023-08-04 10:07:10.341','2023-08-04 10:07:10.341',NULL,'/ipcExtRtsp/findIpcExtRtsp','根据ID获取ipcExtRtsp表','ipcExtRtsp','GET'),(194,'2023-08-04 10:07:10.344','2023-08-04 10:07:10.344',NULL,'/ipcExtRtsp/getIpcExtRtspList','获取ipcExtRtsp表列表','ipcExtRtsp','GET'),(201,'2023-08-11 11:21:08.133','2023-08-11 11:21:08.133','2024-05-22 17:17:57.632','/smallServer/createSmallServer','新增smallServer表','smallServer','POST'),(202,'2023-08-11 11:21:08.139','2023-08-11 11:21:08.139','2024-05-22 17:20:04.483','/smallServer/deleteSmallServer','删除smallServer表','smallServer','DELETE'),(203,'2023-08-11 11:21:08.152','2023-08-11 11:21:08.152','2024-05-22 17:18:24.542','/smallServer/deleteSmallServerByIds','批量删除smallServer表','smallServer','DELETE'),(204,'2023-08-11 11:21:08.157','2023-08-11 11:21:08.157','2024-05-22 17:18:24.542','/smallServer/updateSmallServer','更新smallServer表','smallServer','PUT'),(205,'2023-08-11 11:21:08.159','2023-08-11 11:21:08.159','2024-05-22 17:18:24.542','/smallServer/findSmallServer','根据ID获取smallServer表','smallServer','GET'),(206,'2023-08-11 11:21:08.161','2023-08-11 11:21:08.161','2024-05-22 17:18:24.542','/smallServer/getSmallServerList','获取smallServer表列表','smallServer','GET'),(207,'2023-08-22 18:55:34.929','2023-08-22 18:55:34.929','2024-05-22 17:16:56.388','/goods/createGoods','新增goods表','goods','POST'),(208,'2023-08-22 18:55:34.931','2023-08-22 18:55:34.931','2024-05-22 17:16:56.388','/goods/deleteGoods','删除goods表','goods','DELETE'),(209,'2023-08-22 18:55:34.935','2023-08-22 18:55:34.935','2024-05-22 17:16:56.388','/goods/deleteGoodsByIds','批量删除goods表','goods','DELETE'),(210,'2023-08-22 18:55:34.937','2023-08-22 18:55:34.937','2024-05-22 17:16:56.388','/goods/updateGoods','更新goods表','goods','PUT'),(211,'2023-08-22 18:55:34.940','2023-08-22 18:55:34.940','2024-05-22 17:16:56.388','/goods/findGoods','根据ID获取goods表','goods','GET'),(212,'2023-08-22 18:55:34.942','2023-08-22 18:55:34.942','2024-05-22 17:16:56.388','/goods/getGoodsList','获取goods表列表','goods','GET'),(213,'2023-08-23 08:26:52.568','2023-08-23 08:26:52.568','2024-05-22 17:16:56.388','/goodsPackage/createGoodsPackage','新增goodsPackage表','goodsPackage','POST'),(214,'2023-08-23 08:26:52.571','2023-08-23 08:26:52.571','2024-05-22 17:17:07.661','/goodsPackage/deleteGoodsPackage','删除goodsPackage表','goodsPackage','DELETE'),(215,'2023-08-23 08:26:52.574','2023-08-23 08:26:52.574','2024-05-22 17:17:07.661','/goodsPackage/deleteGoodsPackageByIds','批量删除goodsPackage表','goodsPackage','DELETE'),(216,'2023-08-23 08:26:52.577','2023-08-23 08:26:52.577','2024-05-22 17:17:07.661','/goodsPackage/updateGoodsPackage','更新goodsPackage表','goodsPackage','PUT'),(217,'2023-08-23 08:26:52.579','2023-08-23 08:26:52.579','2024-05-22 17:17:07.661','/goodsPackage/findGoodsPackage','根据ID获取goodsPackage表','goodsPackage','GET'),(218,'2023-08-23 08:26:52.582','2023-08-23 08:26:52.582','2024-05-22 17:17:07.661','/goodsPackage/getGoodsPackageList','获取goodsPackage表列表','goodsPackage','GET'),(224,'2023-08-23 10:30:08.988','2023-08-23 10:30:08.988','2024-05-22 17:18:41.231','/userPayLogs/getUserPayLogsList','获取userPayLogs表列表','userPayLogs','GET'),(225,'2023-08-23 11:05:24.176','2023-08-23 11:05:24.176','2024-05-22 17:17:25.833','/ipcGood/createIpcGood','新增ipcGood表','ipcGood','POST'),(226,'2023-08-23 11:05:24.179','2023-08-23 11:05:24.179','2024-05-22 17:17:25.833','/ipcGood/deleteIpcGood','删除ipcGood表','ipcGood','DELETE'),(227,'2023-08-23 11:05:24.181','2023-08-23 11:05:24.181','2024-05-22 17:17:25.833','/ipcGood/deleteIpcGoodByIds','批量删除ipcGood表','ipcGood','DELETE'),(228,'2023-08-23 11:05:24.183','2023-08-23 11:05:24.183','2024-05-22 17:17:25.833','/ipcGood/updateIpcGood','更新ipcGood表','ipcGood','PUT'),(229,'2023-08-23 11:05:24.185','2023-08-23 11:05:24.185','2024-05-22 17:17:25.833','/ipcGood/findIpcGood','根据ID获取ipcGood表','ipcGood','GET'),(230,'2023-08-23 11:05:24.187','2023-08-23 11:05:24.187','2024-05-22 17:17:25.833','/ipcGood/getIpcGoodList','获取ipcGood表列表','ipcGood','GET'),(231,'2023-08-23 11:09:58.727','2023-08-23 11:09:58.727','2024-05-22 17:17:25.833','/ipcGoodLogs/createIpcGoodLogs','新增ipcGoodLogs表','ipcGoodLogs','POST'),(232,'2023-08-23 11:09:58.730','2023-08-23 11:09:58.730','2024-05-22 17:17:25.833','/ipcGoodLogs/deleteIpcGoodLogs','删除ipcGoodLogs表','ipcGoodLogs','DELETE'),(233,'2023-08-23 11:09:58.733','2023-08-23 11:09:58.733','2024-05-22 17:17:36.102','/ipcGoodLogs/deleteIpcGoodLogsByIds','批量删除ipcGoodLogs表','ipcGoodLogs','DELETE'),(234,'2023-08-23 11:09:58.735','2023-08-23 11:09:58.735','2024-05-22 17:17:36.102','/ipcGoodLogs/updateIpcGoodLogs','更新ipcGoodLogs表','ipcGoodLogs','PUT'),(235,'2023-08-23 11:09:58.737','2023-08-23 11:09:58.737','2024-05-22 17:17:36.102','/ipcGoodLogs/findIpcGoodLogs','根据ID获取ipcGoodLogs表','ipcGoodLogs','GET'),(236,'2023-08-23 11:09:58.739','2023-08-23 11:09:58.739','2024-05-22 17:17:36.102','/ipcGoodLogs/getIpcGoodLogsList','获取ipcGoodLogs表列表','ipcGoodLogs','GET'),(237,'2023-08-23 11:51:58.144','2023-08-23 11:51:58.144','2024-05-22 17:18:41.231','/userWallet/createUserWallet','新增userWallet表','userWallet','POST'),(238,'2023-08-23 11:51:58.146','2023-08-23 11:51:58.146','2024-05-22 17:18:41.231','/userWallet/deleteUserWallet','删除userWallet表','userWallet','DELETE'),(239,'2023-08-23 11:51:58.150','2023-08-23 11:51:58.150','2024-05-22 17:18:41.231','/userWallet/deleteUserWalletByIds','批量删除userWallet表','userWallet','DELETE'),(240,'2023-08-23 11:51:58.152','2023-08-23 11:51:58.152','2024-05-22 17:18:41.231','/userWallet/updateUserWallet','更新userWallet表','userWallet','PUT'),(241,'2023-08-23 11:51:58.155','2023-08-23 11:51:58.155','2024-05-22 17:18:51.948','/userWallet/findUserWallet','根据ID获取userWallet表','userWallet','GET'),(242,'2023-08-23 11:51:58.158','2023-08-23 11:51:58.158','2024-05-22 17:18:51.948','/userWallet/getUserWalletList','获取userWallet表列表','userWallet','GET'),(243,'2023-08-23 14:18:44.339','2023-08-23 14:18:44.339','2024-05-22 17:18:51.948','/userWalletChange/createUserWalletChange','新增userWalletChange表','userWalletChange','POST'),(244,'2023-08-23 14:18:44.342','2023-08-23 14:18:44.342','2024-05-22 17:18:51.948','/userWalletChange/deleteUserWalletChange','删除userWalletChange表','userWalletChange','DELETE'),(245,'2023-08-23 14:18:44.344','2023-08-23 14:18:44.344','2024-05-22 17:18:51.948','/userWalletChange/deleteUserWalletChangeByIds','批量删除userWalletChange表','userWalletChange','DELETE'),(246,'2023-08-23 14:18:44.347','2023-08-23 14:18:44.347','2024-05-22 17:18:51.948','/userWalletChange/updateUserWalletChange','更新userWalletChange表','userWalletChange','PUT'),(247,'2023-08-23 14:18:44.350','2023-08-23 14:18:44.350','2024-05-22 17:18:51.948','/userWalletChange/findUserWalletChange','根据ID获取userWalletChange表','userWalletChange','GET'),(248,'2023-08-23 14:18:44.353','2023-08-23 14:18:44.353','2024-05-22 17:18:51.948','/userWalletChange/getUserWalletChangeList','获取userWalletChange表列表','userWalletChange','GET'),(249,'2023-08-23 15:35:42.062','2023-08-23 15:35:42.062','2024-05-22 17:18:51.948','/userWallet/findUserWalletByUID','用uid查询UserWallet','userWallet','GET'),(250,'2023-08-23 17:24:38.975','2023-08-23 17:24:38.975','2024-05-22 17:18:51.948','/userWallet/rechargeWallet','更新UserWallet','userWallet','PUT'),(251,'2023-08-24 09:20:54.240','2023-08-24 09:20:54.240','2024-05-22 17:17:25.833','/ipcGood/buyIpcGood','购买套餐Ipc','ipcGood','POST'),(252,'2023-08-24 11:11:55.025','2023-08-24 11:15:35.759',NULL,'/ipc/allocationIpc','分配Ipc服务器','ipc','POST'),(253,'2023-08-24 18:46:58.156','2023-08-24 18:46:58.156',NULL,'/ovaMediagateServer/ps_ffmpeg_delete','停止推流','ovaMediagateServer','DELETE'),(254,'2023-09-13 10:17:24.579','2023-09-13 10:17:24.579','2024-05-22 17:17:25.833','/ipcGood/changeIpcGoodType','修改ipc套餐类型','ipcGood','POST'),(255,'2023-09-26 14:05:48.182','2023-09-26 14:05:48.182','2024-05-22 17:18:41.231','/userPackage/createUserPackage','新增userPackage表','userPackage','POST'),(256,'2023-09-26 14:05:48.185','2023-09-26 14:05:48.185','2024-05-22 17:18:24.542','/userPackage/deleteUserPackage','删除userPackage表','userPackage','DELETE'),(257,'2023-09-26 14:05:48.187','2023-09-26 14:05:48.187','2024-05-22 17:18:41.231','/userPackage/deleteUserPackageByIds','批量删除userPackage表','userPackage','DELETE'),(258,'2023-09-26 14:05:48.189','2023-09-26 14:05:48.189','2024-05-22 17:18:41.231','/userPackage/updateUserPackage','更新userPackage表','userPackage','PUT'),(259,'2023-09-26 14:05:48.191','2023-09-26 14:05:48.191','2024-05-22 17:18:41.231','/userPackage/findUserPackage','根据ID获取userPackage表','userPackage','GET'),(260,'2023-09-26 14:05:48.193','2023-09-26 14:05:48.193','2024-05-22 17:18:41.231','/userPackage/getUserPackageList','获取userPackage表列表','userPackage','GET'),(261,'2024-04-12 10:34:22.533','2024-04-12 10:34:22.533',NULL,'/serviceCategory/setWorkAreaBySn','设置区域','serviceCategory','POST'),(262,'2024-04-14 07:28:57.181','2024-04-14 07:28:57.181',NULL,'/ipc/liveIpc','查看实时流','ipc','GET'),(263,'2024-04-18 12:45:45.591','2024-04-18 12:45:45.591',NULL,'/ipcEvent/createIpcEvent','新增ipcEvent表','ipcEvent','POST'),(264,'2024-04-18 12:45:45.593','2024-04-18 12:45:45.593',NULL,'/ipcEvent/deleteIpcEvent','删除ipcEvent表','ipcEvent','DELETE'),(265,'2024-04-18 12:45:45.595','2024-04-18 12:45:45.595',NULL,'/ipcEvent/deleteIpcEventByIds','批量删除ipcEvent表','ipcEvent','DELETE'),(266,'2024-04-18 12:45:45.597','2024-04-18 12:45:45.597',NULL,'/ipcEvent/updateIpcEvent','更新ipcEvent表','ipcEvent','PUT'),(267,'2024-04-18 12:45:45.600','2024-04-18 12:45:45.600',NULL,'/ipcEvent/findIpcEvent','根据ID获取ipcEvent表','ipcEvent','GET'),(268,'2024-04-18 12:45:45.601','2024-04-18 12:45:45.601',NULL,'/ipcEvent/getIpcEventList','获取ipcEvent表列表','ipcEvent','GET'),(269,'2024-04-18 13:47:45.537','2024-04-18 13:47:45.537',NULL,'/ipcDvr/createIpcDvr','新增ipcDvr表','ipcDvr','POST'),(270,'2024-04-18 13:47:45.539','2024-04-18 13:47:45.539',NULL,'/ipcDvr/deleteIpcDvr','删除ipcDvr表','ipcDvr','DELETE'),(271,'2024-04-18 13:47:45.541','2024-04-18 13:47:45.541',NULL,'/ipcDvr/deleteIpcDvrByIds','批量删除ipcDvr表','ipcDvr','DELETE'),(272,'2024-04-18 13:47:45.543','2024-04-18 13:47:45.543',NULL,'/ipcDvr/updateIpcDvr','更新ipcDvr表','ipcDvr','PUT'),(273,'2024-04-18 13:47:45.545','2024-04-18 13:47:45.545',NULL,'/ipcDvr/findIpcDvr','根据ID获取ipcDvr表','ipcDvr','GET'),(274,'2024-04-18 13:47:45.547','2024-04-18 13:47:45.547',NULL,'/ipcDvr/getIpcDvrList','获取ipcDvr表列表','ipcDvr','GET'),(275,'2024-04-19 10:30:35.224','2024-04-19 10:30:35.224',NULL,'/serviceCategory/getWorkAreaBySn','获取区域','serviceCategory','GET'),(276,'2024-04-26 14:47:35.512','2024-04-26 14:47:35.512',NULL,'/ipcEvent/setEventHours','更新ipc监控时间段','ipcEvent','PUT'),(277,'2024-05-24 17:05:58.239','2024-05-24 17:05:58.239',NULL,'/network/createNetwork','新增network表','network','POST'),(278,'2024-05-24 17:05:58.244','2024-05-24 17:05:58.244',NULL,'/network/deleteNetwork','删除network表','network','DELETE'),(279,'2024-05-24 17:05:58.247','2024-05-24 17:05:58.247',NULL,'/network/deleteNetworkByIds','批量删除network表','network','DELETE'),(280,'2024-05-24 17:05:58.250','2024-05-24 17:05:58.250',NULL,'/network/updateNetwork','更新network表','network','PUT'),(281,'2024-05-24 17:05:58.251','2024-05-24 17:05:58.251',NULL,'/network/findNetwork','根据ID获取network表','network','GET'),(282,'2024-05-24 17:05:58.253','2024-05-24 17:05:58.253',NULL,'/network/getNetworkList','获取network表列表','network','GET');

/*Table structure for table `sys_authorities` */

DROP TABLE IF EXISTS `sys_authorities`;

CREATE TABLE `sys_authorities` (
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `authority_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `authority_name` varchar(191) DEFAULT NULL COMMENT '角色名',
  `parent_id` bigint(20) unsigned DEFAULT NULL COMMENT '父角色ID',
  `default_router` varchar(191) DEFAULT 'dashboard' COMMENT '默认菜单',
  PRIMARY KEY (`authority_id`),
  UNIQUE KEY `authority_id` (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8882 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_authorities` */

insert  into `sys_authorities`(`created_at`,`updated_at`,`deleted_at`,`authority_id`,`authority_name`,`parent_id`,`default_router`) values ('2023-05-08 16:07:55.391','2024-05-26 18:06:05.794',NULL,888,'管理员',0,'IpcEvent'),('2024-05-26 18:08:44.029','2024-05-26 18:09:03.746',NULL,8881,'普通用户',888,'IpcEvent');

/*Table structure for table `sys_authority_btns` */

DROP TABLE IF EXISTS `sys_authority_btns`;

CREATE TABLE `sys_authority_btns` (
  `authority_id` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `sys_menu_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单ID',
  `sys_base_menu_btn_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_authority_btns` */

/*Table structure for table `sys_authority_menus` */

DROP TABLE IF EXISTS `sys_authority_menus`;

CREATE TABLE `sys_authority_menus` (
  `sys_base_menu_id` bigint(20) unsigned NOT NULL,
  `sys_authority_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_base_menu_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_authority_menus` */

insert  into `sys_authority_menus`(`sys_base_menu_id`,`sys_authority_authority_id`) values (3,888),(4,888),(5,888),(6,888),(7,888),(10,888),(11,888),(24,888),(24,8881),(31,888),(32,888),(33,888),(34,888),(40,888),(41,888),(42,888),(42,8881),(43,888),(43,8881),(44,888),(44,8881),(45,888),(46,888),(47,888),(48,888),(60,888),(60,8881),(61,888),(62,888),(63,888),(63,8881);

/*Table structure for table `sys_auto_code_histories` */

DROP TABLE IF EXISTS `sys_auto_code_histories`;

CREATE TABLE `sys_auto_code_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `package` varchar(191) DEFAULT NULL,
  `business_db` varchar(191) DEFAULT NULL,
  `table_name` varchar(191) DEFAULT NULL,
  `request_meta` text,
  `auto_code_path` text,
  `injection_meta` text,
  `struct_name` varchar(191) DEFAULT NULL,
  `struct_cn_name` varchar(191) DEFAULT NULL,
  `api_ids` varchar(191) DEFAULT NULL,
  `flag` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_code_histories_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_auto_code_histories` */

/*Table structure for table `sys_auto_codes` */

DROP TABLE IF EXISTS `sys_auto_codes`;

CREATE TABLE `sys_auto_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `package_name` varchar(191) DEFAULT NULL COMMENT '包名',
  `label` varchar(191) DEFAULT NULL COMMENT '展示名',
  `desc` varchar(191) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_codes_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_auto_codes` */

/*Table structure for table `sys_base_menu_btns` */

DROP TABLE IF EXISTS `sys_base_menu_btns`;

CREATE TABLE `sys_base_menu_btns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '按钮关键key',
  `desc` varchar(191) DEFAULT NULL,
  `sys_base_menu_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_btns_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_base_menu_btns` */

/*Table structure for table `sys_base_menu_parameters` */

DROP TABLE IF EXISTS `sys_base_menu_parameters`;

CREATE TABLE `sys_base_menu_parameters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `sys_base_menu_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数为params还是query',
  `key` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数的key',
  `value` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数的值',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_parameters_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_base_menu_parameters` */

/*Table structure for table `sys_base_menus` */

DROP TABLE IF EXISTS `sys_base_menus`;

CREATE TABLE `sys_base_menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `menu_level` bigint(20) unsigned DEFAULT NULL,
  `parent_id` varchar(191) DEFAULT NULL COMMENT '父菜单ID',
  `path` varchar(191) DEFAULT NULL COMMENT '路由path',
  `name` varchar(191) DEFAULT NULL COMMENT '路由name',
  `hidden` tinyint(1) DEFAULT NULL COMMENT '是否在列表隐藏',
  `component` varchar(191) DEFAULT NULL COMMENT '对应前端文件路径',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `active_name` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `default_menu` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `title` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `icon` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `close_tab` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menus_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_base_menus` */

insert  into `sys_base_menus`(`id`,`created_at`,`updated_at`,`deleted_at`,`menu_level`,`parent_id`,`path`,`name`,`hidden`,`component`,`sort`,`active_name`,`keep_alive`,`default_menu`,`title`,`icon`,`close_tab`) values (1,'2023-05-08 16:07:55.628','2023-05-08 16:07:55.628',NULL,0,'0','dashboard','dashboard',0,'view/dashboard/index.vue',1,'',0,0,'仪表盘','odometer',0),(2,'2023-05-08 16:07:55.628','2023-05-08 16:07:55.628','2024-05-22 17:34:30.532',0,'0','about','about',0,'view/about/index.vue',9,'',0,0,'关于我们','info-filled',0),(3,'2023-05-08 16:07:55.628','2024-05-26 18:10:25.061',NULL,0,'0','admin','superAdmin',0,'view/superAdmin/index.vue',3,'',0,0,'超级管理员','user',0),(4,'2023-05-08 16:07:55.628','2024-05-26 18:11:19.602',NULL,0,'3','authority','authority',1,'view/superAdmin/authority/authority.vue',1,'',0,0,'角色管理','avatar',0),(5,'2023-05-08 16:07:55.628','2024-05-26 18:11:23.755',NULL,0,'3','menu','menu',1,'view/superAdmin/menu/menu.vue',2,'',1,0,'菜单管理','tickets',0),(6,'2023-05-08 16:07:55.628','2024-05-26 18:11:27.694',NULL,0,'3','api','api',1,'view/superAdmin/api/api.vue',3,'',1,0,'api管理','platform',0),(7,'2023-05-08 16:07:55.628','2023-05-08 16:07:55.628',NULL,0,'3','user','user',0,'view/superAdmin/user/user.vue',4,'',0,0,'用户管理','coordinate',0),(10,'2023-05-08 16:07:55.628','2023-05-08 16:07:55.628',NULL,0,'3','operation','operation',0,'view/superAdmin/operation/sysOperationRecord.vue',6,'',0,0,'操作历史','pie-chart',0),(11,'2023-05-08 16:07:55.628','2023-05-08 16:07:55.628',NULL,0,'0','person','person',1,'view/person/person.vue',4,'',0,0,'个人信息','message',0),(24,'2023-05-08 16:07:55.628','2023-05-08 16:07:55.628',NULL,0,'0','state','state',0,'view/system/state.vue',8,'',0,0,'服务器状态','cloudy',0),(31,'2023-05-08 16:32:38.291','2024-05-26 18:05:06.443',NULL,0,'0','OvaServer','OvaServer',1,'view/ovaGb28181Server/index.vue',2,'',0,0,'服务器管理','management',0),(32,'2023-05-09 13:45:46.224','2023-05-09 16:22:35.263',NULL,0,'31','ovaGb28181Server','ovaGb28181Server',0,'view/ovaGb28181Server/ovaGb28181Server.vue',0,'',0,0,'Gb28181服务器','list',0),(33,'2023-05-09 14:01:23.855','2023-05-09 14:02:19.402',NULL,0,'31','MediagateServer','MediagateServer',0,'view/ovaMediagateServer/ovaMediagateServer.vue',0,'',0,0,'媒体服务器','list',0),(34,'2023-05-09 16:21:35.103','2023-08-09 11:17:40.187',NULL,0,'31','MediagateCluster','MediagateCluster',0,'view/ovaMediagateCluster/ovaMediagateCluster.vue',0,'',0,0,'媒体服务器群','list',0),(40,'2023-06-29 10:29:15.656','2024-05-22 17:22:25.976',NULL,0,'0','OvaUser','OvaUser',1,'view/ova_user/index.vue',2,'',0,0,'用户管理','management',0),(41,'2023-06-29 13:13:41.670','2023-06-29 13:13:41.670',NULL,0,'40','ova_user','ova_user',0,'view/ova_user/ova_user.vue',0,'',0,0,'用户列表','list',0),(42,'2023-06-29 13:25:31.298','2024-05-22 17:35:42.426',NULL,0,'0','lowerGb28181DeviceMange','lowerGb28181DeviceMange',0,'view/lowerGb28181Device/index.vue',2,'',0,0,'国标设备管理','management',0),(43,'2023-06-29 13:26:12.617','2023-08-04 08:53:19.679',NULL,0,'42','lowerGb28181Device','lowerGb28181Device',0,'view/device/device.vue',0,'',0,0,'设备列表','list',0),(44,'2023-06-29 18:00:26.980','2024-05-22 17:35:52.039',NULL,0,'42','ipc_list','ipc_list',0,'view/ipc/ipc.vue',0,'',0,0,'通道列表','list',0),(45,'2023-06-29 18:08:46.001','2024-05-22 17:22:34.522',NULL,0,'0','dictionary_manage','dictionary_manage',1,'view/classes/index',2,'',0,0,'字典管理','management',0),(46,'2023-06-29 18:09:25.556','2023-06-29 18:09:25.556',NULL,0,'45','classes','classes',0,'view/classes/classes.vue',0,'',0,0,'对象列表','aim',0),(47,'2023-06-29 18:16:04.087','2023-06-29 18:16:04.087',NULL,0,'45','serviceCategory','serviceCategory',0,'view/serviceCategory/serviceCategory.vue',0,'',0,0,'服务列表','list',0),(48,'2023-08-04 07:49:41.110','2023-08-04 07:49:41.110',NULL,0,'31','cdn_list','cdn_list',0,'view/cdn/cdn.vue',0,'',0,0,'cdn列表','list',0),(60,'2024-04-18 12:48:23.565','2024-05-22 17:36:20.556',NULL,0,'42','IpcEvent','IpcEvent',0,'view/ipcEvent/ipcEvent.vue',0,'',0,0,'报警查询','list',0),(61,'2024-05-24 16:29:05.408','2024-05-24 17:07:11.474',NULL,0,'0','networkConfig','networkConfig',0,'view/network/network.vue',1,'',0,0,'网络配置','aim',0),(62,'2024-05-24 16:43:19.792','2024-05-24 17:07:18.538',NULL,0,'61','networkInfo','networkInfo',0,'view/network/network.vue',0,'',0,0,'网络信息','tickets',0),(63,'2024-05-27 10:39:06.151','2024-05-27 10:54:37.932',NULL,'0','0','screenVideo','screenVideo','0','view/screen/screen.vue','2','','0','0','分屏展示','grid','0');

/*Table structure for table `sys_chat_gpt_options` */

DROP TABLE IF EXISTS `sys_chat_gpt_options`;

CREATE TABLE `sys_chat_gpt_options` (
  `sk` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_chat_gpt_options` */

/*Table structure for table `sys_data_authority_id` */

DROP TABLE IF EXISTS `sys_data_authority_id`;

CREATE TABLE `sys_data_authority_id` (
  `sys_authority_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  `data_authority_id_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_authority_authority_id`,`data_authority_id_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_data_authority_id` */

insert  into `sys_data_authority_id`(`sys_authority_authority_id`,`data_authority_id_authority_id`) values (888,888);

/*Table structure for table `sys_dictionaries` */

DROP TABLE IF EXISTS `sys_dictionaries`;

CREATE TABLE `sys_dictionaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '字典名（中）',
  `type` varchar(191) DEFAULT NULL COMMENT '字典名（英）',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `desc` varchar(191) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionaries_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_dictionaries` */

insert  into `sys_dictionaries`(`id`,`created_at`,`updated_at`,`deleted_at`,`name`,`type`,`status`,`desc`) values (1,'2023-05-08 16:07:55.413','2023-05-08 16:07:55.423',NULL,'性别','gender',1,'性别字典'),(2,'2023-05-08 16:07:55.413','2023-05-08 16:07:55.431',NULL,'数据库int类型','int',1,'int类型对应的数据库类型'),(3,'2023-05-08 16:07:55.413','2023-05-08 16:07:55.439',NULL,'数据库时间日期类型','time.Time',1,'数据库时间日期类型'),(4,'2023-05-08 16:07:55.413','2023-05-08 16:07:55.445',NULL,'数据库浮点型','float64',1,'数据库浮点型'),(5,'2023-05-08 16:07:55.413','2023-05-08 16:07:55.451',NULL,'数据库字符串','string',1,'数据库字符串'),(6,'2023-05-08 16:07:55.413','2023-05-08 16:07:55.458',NULL,'数据库bool类型','bool',1,'数据库bool类型');

/*Table structure for table `sys_dictionary_details` */

DROP TABLE IF EXISTS `sys_dictionary_details`;

CREATE TABLE `sys_dictionary_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `label` varchar(191) DEFAULT NULL COMMENT '展示值',
  `value` bigint(20) DEFAULT NULL COMMENT '字典值',
  `status` tinyint(1) DEFAULT NULL COMMENT '启用状态',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `sys_dictionary_id` bigint(20) unsigned DEFAULT NULL COMMENT '关联标记',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionary_details_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_dictionary_details` */

insert  into `sys_dictionary_details`(`id`,`created_at`,`updated_at`,`deleted_at`,`label`,`value`,`status`,`sort`,`sys_dictionary_id`) values (1,'2023-05-08 16:07:55.424','2023-05-08 16:07:55.424',NULL,'男',1,1,1,1),(2,'2023-05-08 16:07:55.424','2023-05-08 16:07:55.424',NULL,'女',2,1,2,1),(3,'2023-05-08 16:07:55.432','2023-05-08 16:07:55.432',NULL,'smallint',1,1,1,2),(4,'2023-05-08 16:07:55.432','2023-05-08 16:07:55.432',NULL,'mediumint',2,1,2,2),(5,'2023-05-08 16:07:55.432','2023-05-08 16:07:55.432',NULL,'int',3,1,3,2),(6,'2023-05-08 16:07:55.432','2023-05-08 16:07:55.432',NULL,'bigint',4,1,4,2),(7,'2023-05-08 16:07:55.439','2023-05-08 16:07:55.439',NULL,'date',0,1,0,3),(8,'2023-05-08 16:07:55.439','2023-05-08 16:07:55.439',NULL,'time',1,1,1,3),(9,'2023-05-08 16:07:55.439','2023-05-08 16:07:55.439',NULL,'year',2,1,2,3),(10,'2023-05-08 16:07:55.439','2023-05-08 16:07:55.439',NULL,'datetime',3,1,3,3),(11,'2023-05-08 16:07:55.439','2023-05-08 16:07:55.439',NULL,'timestamp',5,1,5,3),(12,'2023-05-08 16:07:55.446','2023-05-08 16:07:55.446',NULL,'float',0,1,0,4),(13,'2023-05-08 16:07:55.446','2023-05-08 16:07:55.446',NULL,'double',1,1,1,4),(14,'2023-05-08 16:07:55.446','2023-05-08 16:07:55.446',NULL,'decimal',2,1,2,4),(15,'2023-05-08 16:07:55.452','2023-05-08 16:07:55.452',NULL,'char',0,1,0,5),(16,'2023-05-08 16:07:55.452','2023-05-08 16:07:55.452',NULL,'varchar',1,1,1,5),(17,'2023-05-08 16:07:55.452','2023-05-08 16:07:55.452',NULL,'tinyblob',2,1,2,5),(18,'2023-05-08 16:07:55.452','2023-05-08 16:07:55.452',NULL,'tinytext',3,1,3,5),(19,'2023-05-08 16:07:55.452','2023-05-08 16:07:55.452',NULL,'text',4,1,4,5),(20,'2023-05-08 16:07:55.452','2023-05-08 16:07:55.452',NULL,'blob',5,1,5,5),(21,'2023-05-08 16:07:55.452','2023-05-08 16:07:55.452',NULL,'mediumblob',6,1,6,5),(22,'2023-05-08 16:07:55.452','2023-05-08 16:07:55.452',NULL,'mediumtext',7,1,7,5),(23,'2023-05-08 16:07:55.452','2023-05-08 16:07:55.452',NULL,'longblob',8,1,8,5),(24,'2023-05-08 16:07:55.452','2023-05-08 16:07:55.452',NULL,'longtext',9,1,9,5),(25,'2023-05-08 16:07:55.458','2023-05-08 16:07:55.458',NULL,'tinyint',0,1,0,6);

/*Table structure for table `sys_operation_records` */

DROP TABLE IF EXISTS `sys_operation_records`;

CREATE TABLE `sys_operation_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL COMMENT '请求ip',
  `method` varchar(191) DEFAULT NULL COMMENT '请求方法',
  `path` varchar(191) DEFAULT NULL COMMENT '请求路径',
  `status` bigint(20) DEFAULT NULL COMMENT '请求状态',
  `latency` bigint(20) DEFAULT NULL COMMENT '延迟',
  `agent` varchar(191) DEFAULT NULL COMMENT '代理',
  `error_message` varchar(191) DEFAULT NULL COMMENT '错误信息',
  `body` text COMMENT '请求Body',
  `resp` text COMMENT '响应Body',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `idx_sys_operation_records_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_operation_records` */

insert  into `sys_operation_records`(`id`,`created_at`,`updated_at`,`deleted_at`,`ip`,`method`,`path`,`status`,`latency`,`agent`,`error_message`,`body`,`resp`,`user_id`) values (1,'2024-05-26 18:12:39.363','2024-05-26 18:12:39.363',NULL,'127.0.0.1','POST','/system/getServerInfo',200,227477000,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','','','{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"windows\",\"numCpu\":20,\"compiler\":\"gc\",\"goVersion\":\"go1.21.5\",\"numGoroutine\":12},\"cpu\":{\"cpus\":[0,0,0,0,0,0,0,0,7.6923076923076925,0,0,0,14.285714285714285,0,0,0,7.6923076923076925,15.384615384615385,0,23.076923076923077],\"cores\":12},\"ram\":{\"usedMb\":18293,\"totalMb\":32609,\"usedPercent\":56},\"disk\":{\"usedMb\":368254,\"usedGb\":359,\"totalMb\":778857,\"totalGb\":760,\"usedPercent\":47}}},\"msg\":\"获取成功\"}',1),(2,'2024-05-26 18:13:05.546','2024-05-26 18:13:05.546',NULL,'127.0.0.1','POST','/system/getServerInfo',200,231886500,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','','','{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"windows\",\"numCpu\":20,\"compiler\":\"gc\",\"goVersion\":\"go1.21.5\",\"numGoroutine\":12},\"cpu\":{\"cpus\":[0,0,0,0,0,0,0,0,0,0,7.6923076923076925,0,0,0,0,0,7.6923076923076925,38.46153846153847,15.384615384615385,15.384615384615385],\"cores\":12},\"ram\":{\"usedMb\":18384,\"totalMb\":32609,\"usedPercent\":56},\"disk\":{\"usedMb\":368254,\"usedGb\":359,\"totalMb\":778857,\"totalGb\":760,\"usedPercent\":47}}},\"msg\":\"获取成功\"}',1),(3,'2024-05-26 18:13:08.427','2024-05-26 18:13:08.427',NULL,'127.0.0.1','POST','/system/getServerInfo',200,226876300,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','','','{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"windows\",\"numCpu\":20,\"compiler\":\"gc\",\"goVersion\":\"go1.21.5\",\"numGoroutine\":12},\"cpu\":{\"cpus\":[0,0,0,0,0,0,0,0,7.6923076923076925,0,0,0,0,0,0,0,15.384615384615385,15.384615384615385,23.076923076923077,15.384615384615385],\"cores\":12},\"ram\":{\"usedMb\":18424,\"totalMb\":32609,\"usedPercent\":56},\"disk\":{\"usedMb\":368254,\"usedGb\":359,\"totalMb\":778857,\"totalGb\":760,\"usedPercent\":47}}},\"msg\":\"获取成功\"}',1),(4,'2024-05-26 18:13:19.365','2024-05-26 18:13:19.365',NULL,'127.0.0.1','POST','/system/getServerInfo',200,229620500,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','','','{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"windows\",\"numCpu\":20,\"compiler\":\"gc\",\"goVersion\":\"go1.21.5\",\"numGoroutine\":12},\"cpu\":{\"cpus\":[0,0,0,0,0,0,0,0,7.6923076923076925,0,0,0,0,0,0,0,0,15.384615384615385,0,7.6923076923076925],\"cores\":12},\"ram\":{\"usedMb\":18386,\"totalMb\":32609,\"usedPercent\":56},\"disk\":{\"usedMb\":368254,\"usedGb\":359,\"totalMb\":778857,\"totalGb\":760,\"usedPercent\":47}}},\"msg\":\"获取成功\"}',1),(5,'2024-05-26 18:13:29.364','2024-05-26 18:13:29.364',NULL,'127.0.0.1','POST','/system/getServerInfo',200,228365100,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','','','{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"windows\",\"numCpu\":20,\"compiler\":\"gc\",\"goVersion\":\"go1.21.5\",\"numGoroutine\":12},\"cpu\":{\"cpus\":[0,0,0,0,0,0,0,0,15.384615384615385,0,0,0,0,0,0,0,0,7.6923076923076925,23.076923076923077,7.6923076923076925],\"cores\":12},\"ram\":{\"usedMb\":18367,\"totalMb\":32609,\"usedPercent\":56},\"disk\":{\"usedMb\":368254,\"usedGb\":359,\"totalMb\":778857,\"totalGb\":760,\"usedPercent\":47}}},\"msg\":\"获取成功\"}',1);

/*Table structure for table `sys_user_authority` */

DROP TABLE IF EXISTS `sys_user_authority`;

CREATE TABLE `sys_user_authority` (
  `sys_user_id` bigint(20) unsigned NOT NULL,
  `sys_authority_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_user_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_user_authority` */

insert  into `sys_user_authority`(`sys_user_id`,`sys_authority_authority_id`) values (1,888);

/*Table structure for table `sys_users` */

DROP TABLE IF EXISTS `sys_users`;

CREATE TABLE `sys_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `uuid` varchar(191) DEFAULT NULL COMMENT '用户UUID',
  `username` varchar(191) DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(191) DEFAULT NULL COMMENT '用户登录密码',
  `nick_name` varchar(191) DEFAULT '系统用户' COMMENT '用户昵称',
  `side_mode` varchar(191) DEFAULT 'dark' COMMENT '用户侧边主题',
  `header_img` varchar(191) DEFAULT 'https://qmplusimg.henrongyi.top/gva_header.jpg' COMMENT '用户头像',
  `base_color` varchar(191) DEFAULT '#fff' COMMENT '基础颜色',
  `active_color` varchar(191) DEFAULT '#1890ff' COMMENT '活跃颜色',
  `authority_id` bigint(20) unsigned DEFAULT '888' COMMENT '用户角色ID',
  `phone` varchar(191) DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(191) DEFAULT NULL COMMENT '用户邮箱',
  `enable` bigint(20) DEFAULT '1' COMMENT '用户是否被冻结 1正常 2冻结',
  PRIMARY KEY (`id`),
  KEY `idx_sys_users_deleted_at` (`deleted_at`),
  KEY `idx_sys_users_uuid` (`uuid`),
  KEY `idx_sys_users_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_users` */

insert  into `sys_users`(`id`,`created_at`,`updated_at`,`deleted_at`,`uuid`,`username`,`password`,`nick_name`,`side_mode`,`header_img`,`base_color`,`active_color`,`authority_id`,`phone`,`email`,`enable`) values (1,'2023-05-08 16:07:55.604','2024-04-28 10:36:42.946',NULL,'dea04261-91b3-403f-971c-9beccccbf410','admin','$2a$10$3p/8BZhOj7M.oAZr.25Nuut5ltwDv873Q6e5AnFvgUXrocAfV2XXK','管理员','dark','https://qmplusimg.henrongyi.top/gva_header.jpg','#fff','#1890ff',888,'17611111111','333333333@qq.com',1);

