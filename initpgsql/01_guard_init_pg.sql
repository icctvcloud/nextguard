CREATE DATABASE guard WITH ENCODING 'UTF8';

\c guard;

CREATE TABLE "cdn" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(255) NOT NULL DEFAULT '',
  "publish" VARCHAR(255) NOT NULL DEFAULT '',
  "rtmp_public" VARCHAR(255) NOT NULL DEFAULT '',
  "rtmp_private" VARCHAR(255) NOT NULL DEFAULT '',
  "flv_public" VARCHAR(255) NOT NULL DEFAULT '',
  "flv_private" VARCHAR(255) NOT NULL DEFAULT '',
  "hls_public" VARCHAR(255) NOT NULL DEFAULT '',
  "hls_private" VARCHAR(255) NOT NULL DEFAULT '',
  "secret_key" VARCHAR(255) NOT NULL DEFAULT '',
  "secret_algorithm" VARCHAR(255) NOT NULL DEFAULT '',
  "register_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL
);

-- 创建索引
CREATE INDEX "idx_cdn_deleted_at" ON "cdn" ("deleted_at");

INSERT INTO "cdn"("name","publish","rtmp_public","rtmp_private","flv_public","flv_private","hls_public","hls_private","secret_key","secret_algorithm","register_time","created_at","updated_at","deleted_at") VALUES('local','rtmp://127.0.0.1:19351/live/%s','','','%s://%s/live/%s.live.flv','','%s://%s/live/%s/hls.fmp4.m3u8','','','simple',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,NULL);


CREATE TABLE "classes" (
  "id" SERIAL PRIMARY KEY,
  "type" varchar(32) NOT NULL DEFAULT '',
  "name" varchar(32) NOT NULL DEFAULT '',
  "sustained_displacement" SMALLINT DEFAULT '1',
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL
);

CREATE INDEX "idx_classes_deleted_at" ON "classes" ("deleted_at");

INSERT INTO "classes"("type","name","sustained_displacement","created_at","updated_at","deleted_at") VALUES
('person', '人', 0, CURRENT_TIMESTAMP, NULL, NULL),('bicycle', '自行车', 1, NOW(), NULL, NULL),('car', '汽车', 1, CURRENT_TIMESTAMP, NULL, NULL),('motorcycle', '摩托车', 1, CURRENT_TIMESTAMP, NULL, NULL),('airplane','飞机', 1, CURRENT_TIMESTAMP, NULL, NULL),('bus','公交车', 1, CURRENT_TIMESTAMP, NULL, NULL),('train','火车', 1, CURRENT_TIMESTAMP, NULL, NULL),('truck','卡车', 1, CURRENT_TIMESTAMP, NULL, NULL),('boat','船', 1, CURRENT_TIMESTAMP, NULL, NULL),('traffic light','交通灯', 1, CURRENT_TIMESTAMP, NULL, NULL),('fire hydrant','消防栓', 1, CURRENT_TIMESTAMP, NULL, NULL),('stop sign','停车标志', 1, CURRENT_TIMESTAMP, NULL, NULL),('parking meter','停车收费器', 1, CURRENT_TIMESTAMP, NULL, NULL),('bench','长凳', 1, CURRENT_TIMESTAMP, NULL, NULL),('bird','鸟', 1, CURRENT_TIMESTAMP, NULL, NULL),('cat','猫', 1, CURRENT_TIMESTAMP, NULL, NULL),('dog','狗', 1, CURRENT_TIMESTAMP, NULL, NULL),('horse','马', 1, CURRENT_TIMESTAMP, NULL, NULL),('sheep','羊', 1, CURRENT_TIMESTAMP, NULL, NULL),('cow','母牛', 1, CURRENT_TIMESTAMP, NULL, NULL),('elephant','大象', 1, CURRENT_TIMESTAMP, NULL, NULL),('bear','熊', 1, CURRENT_TIMESTAMP, NULL, NULL),('zebra','斑马', 1, CURRENT_TIMESTAMP, NULL, NULL),('giraffe','长颈鹿', 1, CURRENT_TIMESTAMP, NULL, NULL),('backpack','背包', 1, CURRENT_TIMESTAMP, NULL, NULL),('umbrella','雨伞', 1, CURRENT_TIMESTAMP, NULL, NULL),('handbag','手提包', 1, CURRENT_TIMESTAMP, NULL, NULL);


CREATE TABLE  "device" (
  "id" SERIAL PRIMARY KEY,
  "uuid" varchar(64) DEFAULT NULL,
  "user_id" integer NOT NULL,
  "type" SMALLINT DEFAULT NULL,
  "name" varchar(255) DEFAULT NULL,
  "online" SMALLINT DEFAULT NULL,
  "offline_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "comment" varchar(255) DEFAULT NULL,
  "register_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL,
  "url" varchar(191) DEFAULT NULL,
  "last_online_time" TIMESTAMPTZ DEFAULT NULL,
  CONSTRAINT unique_device_uuid UNIQUE (uuid)
);

CREATE INDEX idx_device_deleted_at ON device ("deleted_at");


CREATE TABLE  "event_config" (
  "ipc_id" SERIAL PRIMARY KEY,
  "user_id" integer NOT NULL,
  "config" varchar(1024) DEFAULT NULL,
  "store_period" integer NOT NULL DEFAULT '1',
  "min_motion_area" integer NOT NULL DEFAULT '300',
  "resize_width" integer NOT NULL DEFAULT '640',
  "seconds_after_detection" integer DEFAULT '1'
);

CREATE SEQUENCE  "hibernate_sequence";

CREATE TABLE  "ipc" (
  "id" SERIAL PRIMARY KEY,
  "user_id" integer NOT NULL,
  "ova_sn" varchar(64) DEFAULT NULL,
  "name" varchar(255) NOT NULL,
  "comment" varchar(255) DEFAULT NULL,
  "connect_type" SMALLINT DEFAULT NULL,
  "longitube" varchar(255) DEFAULT NULL,
  "latitube" varchar(255) DEFAULT NULL,
  "codec" integer NOT NULL DEFAULT 0,
  "audio" integer NOT NULL DEFAULT 0,
  "mute" integer NOT NULL DEFAULT 1,
  "resolution" varchar(16) DEFAULT NULL,
  "status" SMALLINT DEFAULT NULL,
  "online" SMALLINT DEFAULT NULL,
  "offline_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "registered_time" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "deleted" integer NOT NULL DEFAULT '0',
  "ova_mediagate_cluster_id" SMALLINT DEFAULT NULL,
  "image_snapshot" SMALLINT DEFAULT NULL,
  "dvr" SMALLINT DEFAULT NULL,
  "event" SMALLINT DEFAULT NULL,
  "face_recognition" SMALLINT DEFAULT 0,
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL,
  "last_online_time" TIMESTAMPTZ DEFAULT NULL,
  CONSTRAINT unique_ipc_ova_sn UNIQUE (ova_sn)
);

CREATE INDEX idx_ipc_deleted_at ON ipc ("deleted_at");


CREATE TABLE  "ipc_ai_conf" (
  "id" SERIAL PRIMARY KEY,
  "ipc_id" integer NOT NULL DEFAULT 0,
  "ai_conf" JSON NOT NULL
);


CREATE TABLE  "ipc_check" (
  "id" SERIAL PRIMARY KEY,
  "ipc_id" integer NOT NULL,
  "ova_sn" varchar(64) NOT NULL,
  "ova_mediagate_server_id" integer NOT NULL,
  "cdn_id" integer NOT NULL,
  "start_time" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "mediagate_param" varchar(2048) DEFAULT NULL,
  "finish" integer NOT NULL DEFAULT '0',
  "finish_time" TIMESTAMPTZ DEFAULT NULL,
  "connect_type" integer NOT NULL DEFAULT '0',
  "connect_param" varchar(1024) DEFAULT NULL,
  "check_result" varchar(4096) DEFAULT NULL
);


CREATE TABLE  "ipc_dvr" (
  "id" SERIAL PRIMARY KEY,
  "uuid" varchar(64) DEFAULT NULL,
  "user_id" integer NOT NULL,
  "ipc_id" integer NOT NULL,
  "ova_sn" varchar(64) NOT NULL,
  "name" varchar(255) DEFAULT NULL,
  "start_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "end_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "duration" integer DEFAULT NULL,
  "url" varchar(256) DEFAULT NULL,
  "status" SMALLINT DEFAULT NULL,
  "dvr_server_id" SMALLINT DEFAULT NULL,
  "stream" varchar(128) DEFAULT NULL,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL,
  "created_at" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT unique_ipc_dvr_uuid UNIQUE (uuid),
  CONSTRAINT unique_ipc_dvr_url UNIQUE (url)
);

CREATE INDEX idx_ipc_dvr_deleted_at ON ipc_dvr ("deleted_at");


CREATE TABLE  "ipc_dvr_config" (
  "ipc_id" SERIAL PRIMARY KEY,
  "user_id" integer NOT NULL,
  "config" varchar(1024) DEFAULT NULL,
  "store_period" integer NOT NULL DEFAULT '1'
);


CREATE TABLE  "ipc_event" (
  "id" SERIAL PRIMARY KEY,
  "uuid" varchar(64) DEFAULT NULL,
  "user_id" integer DEFAULT NULL,
  "sipid" varchar(255) DEFAULT NULL,
  "channelid" varchar(255) DEFAULT NULL,
  "content" varchar(255) DEFAULT NULL,
  "pic_url" varchar(255) DEFAULT NULL,
  "created_at" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "category_id" integer DEFAULT '1',
  "stream" varchar(256) DEFAULT NULL,
  "dvr_id" bigint DEFAULT NULL,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL,
  CONSTRAINT unique_ipc_event_uuid UNIQUE (uuid)
);

CREATE INDEX idx_ipc_event_deleted_at ON ipc_event ("deleted_at");


CREATE TABLE  "ipc_ext_gb28181" (
  "id" SERIAL PRIMARY KEY,
  "ipc_id" integer NOT NULL,
  "lower_gb28181_device_id" integer NOT NULL,
  "chid" varchar(255) DEFAULT NULL,
  "sipid" varchar(255) DEFAULT NULL,
  "canalarm" integer NOT NULL DEFAULT '0',
  "created_at" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ DEFAULT NULL
);


CREATE TABLE  "ipc_ext_onvif" (
  "id" SERIAL PRIMARY KEY,
  "ipc_id" integer DEFAULT NULL,
  "onvif_device_id" integer NOT NULL,
  "url" varchar(256) DEFAULT NULL,
  "verified" integer DEFAULT NULL,
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL
);

CREATE INDEX idx_ipc_ext_onvif_deleted_at ON ipc_ext_onvif ("deleted_at");


CREATE TABLE  "ipc_ext_rtsp" (
  "id" SERIAL PRIMARY KEY,
  "ipc_id" integer NOT NULL,
  "rtsp_device_id" integer NOT NULL,
  "url" varchar(255) DEFAULT NULL,
  "verified" integer DEFAULT NULL,
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL
);

CREATE INDEX idx_ipc_ext_rtsp_deleted_at ON ipc_ext_rtsp ("deleted_at");


CREATE TABLE  "ipc_service_category" (
  "id" SERIAL PRIMARY KEY,
  "ova_sn" varchar(64) NOT NULL DEFAULT '0',
  "category_id" integer NOT NULL DEFAULT '1',
  "class_ids" varchar(256) NOT NULL DEFAULT '0',
  "leave_ones_post_time" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "intrusion_time" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "work_area" TEXT,
  "status" SMALLINT DEFAULT '0',
  CONSTRAINT unique_ipc_service_category_ova_sn UNIQUE (ova_sn)
);


CREATE TABLE  "live_player" (
  "id" SERIAL PRIMARY KEY,
  "ipc_id" integer NOT NULL,
  "ova_sn" varchar(64) NOT NULL,
  "live_id" integer NOT NULL,
  "player_id" varchar(256) DEFAULT NULL,
  "start_time" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "finish" integer NOT NULL DEFAULT '0',
  "finish_time" TIMESTAMPTZ DEFAULT NULL,
  "ip" varchar(32) DEFAULT NULL,
  "mediaserver" varchar(32) DEFAULT NULL
);


CREATE TABLE  "lower_gb28181_device" (
  "id" SERIAL PRIMARY KEY,
  "user_id" SMALLINT DEFAULT NULL,
  "sip_server_id" integer NOT NULL,
  "name" varchar(255) DEFAULT NULL,
  "sipid" varchar(255) DEFAULT NULL,
  "password" varchar(255) DEFAULT NULL,
  "ip" varchar(255) DEFAULT NULL,
  "port" SMALLINT DEFAULT NULL,
  "online" SMALLINT DEFAULT NULL,
  "offline_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "comment" varchar(255) DEFAULT NULL,
  "register_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL,
  "device_id" SMALLINT DEFAULT NULL,
  CONSTRAINT unique_lower_gb28181_device_sipid UNIQUE (sipid)
);

CREATE INDEX idx_lower_gb28181_device_deleted_at ON lower_gb28181_device ("deleted_at");


CREATE TABLE  "open_api" (
  "id" SERIAL PRIMARY KEY,
  "user_uuid" varchar(64) NOT NULL DEFAULT '',
  "app_id" varchar(32) NOT NULL DEFAULT '',
  "token_with_ip" SMALLINT DEFAULT '1',
  "app_secret" varchar(128) NOT NULL DEFAULT '',
  "callback" varchar(256) DEFAULT '',
  "created_at" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ DEFAULT NULL,
  CONSTRAINT unique_open_api_user_uuid UNIQUE (user_uuid)
);

INSERT INTO "open_api" ("id","user_uuid","app_id","token_with_ip","app_secret","callback","created_at","updated_at","deleted_at") VALUES(1,'ac736a7c-f6e4-11ee-a4ed-d85ed345deda',SUBSTRING(MD5(CAST(RANDOM() AS TEXT)), 1, 16),0,SUBSTRING(MD5(CAST(RANDOM() AS TEXT)), 1, 16),'',NULL,CURRENT_TIMESTAMP,NULL);


CREATE TABLE  "ova_gb28181_server" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar(255) DEFAULT NULL,
  "sipid" varchar(255) DEFAULT NULL,
  "sip_ip" varchar(255) DEFAULT NULL,
  "sip_port" bigint DEFAULT NULL,
  "api_ip" varchar(255) DEFAULT NULL,
  "api_port" bigint DEFAULT NULL,
  "online" bigint DEFAULT NULL,
  "offline_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "comment" varchar(255) DEFAULT NULL,
  "register_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL,
  "created_by" integer DEFAULT NULL,
  "updated_by" integer DEFAULT NULL,
  "deleted_by" integer DEFAULT NULL,
  "sys_user_id" integer DEFAULT NULL,
  "sys_user_authority_id" integer DEFAULT NULL,
  "user_id" smallint DEFAULT NULL,
  "sip_server_id" smallint DEFAULT NULL,
  "password" varchar(255) DEFAULT NULL,
  "device_id" smallint DEFAULT NULL
);

CREATE INDEX idx_ova_gb28181_server_deleted_at ON ova_gb28181_server ("deleted_at");

INSERT INTO "ova_gb28181_server" ("id","name","sipid","sip_ip","sip_port","api_ip","api_port","online","offline_time","comment","register_time","created_at","updated_at","deleted_at","created_by","updated_by","deleted_by","sys_user_id","sys_user_authority_id","user_id","sip_server_id","password","device_id") VALUES(1,'s1','32011400000000000001','127.0.0.1',5060,'127.0.0.1',9199,0,NULL,'本地',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL);


CREATE TABLE  "ova_mediagate_cluster" (
  "id" SERIAL PRIMARY KEY,
  "ova_mediagate_server_ids" varchar(1024) NOT NULL,
  "register_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "status" smallint DEFAULT NULL,
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL
);

CREATE INDEX idx_ova_mediagate_cluster_deleted_at ON ova_mediagate_cluster ("deleted_at");

INSERT INTO "ova_mediagate_cluster" ("id","ova_mediagate_server_ids","register_time","status","created_at","updated_at","deleted_at") VALUES(1,'1',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,NULL);


CREATE TABLE  "ova_mediagate_server" (
  "id" SERIAL PRIMARY KEY,
  "cdn_id" smallint DEFAULT NULL,
  "api" varchar(255) DEFAULT NULL,
  "ps_in" varchar(255) DEFAULT NULL,
  "domain" varchar(32) DEFAULT NULL,
  "protocol" varchar(16) DEFAULT NULL,
  "status" smallint DEFAULT NULL,
  "comment" varchar(255) DEFAULT NULL,
  "register_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "online" smallint DEFAULT NULL,
  "offline_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "api_secret" varchar(255) DEFAULT '',
  "name" varchar(255) DEFAULT '',
  "dvr_server_id" smallint DEFAULT NULL,
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL
);

CREATE INDEX idx_ova_mediagate_server_deleted_at ON ova_mediagate_server ("deleted_at");

INSERT INTO "ova_mediagate_server" ("id","cdn_id","api","ps_in","domain","protocol","status","comment","register_time","online","offline_time","api_secret","name","dvr_server_id","created_at","updated_at","deleted_at") VALUES(1,1,'127.0.0.1:19191','127.0.0.1','127.0.0.1','http',1,'',CURRENT_TIMESTAMP,0,NULL,'disable','local',1,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,NULL);


CREATE TABLE  "role" (
  "id" SERIAL PRIMARY KEY,
  "role_name" varchar(16) NOT NULL,
  "code" varchar(64) NOT NULL,
  "created_at" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE  "rtsp_device" (
  "id" SERIAL PRIMARY KEY,
  "username" varchar(255) DEFAULT NULL,
  "password" varchar(255) DEFAULT NULL,
  "ip" varchar(255) DEFAULT NULL,
  "port" smallint DEFAULT NULL,
  "device_id" smallint DEFAULT NULL,
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL
);

CREATE INDEX idx_rtsp_device_deleted_at ON rtsp_device ("deleted_at");

CREATE TABLE  "onvif_device" (
  "id" SERIAL PRIMARY KEY,
  "username" varchar(255) DEFAULT NULL,
  "password" varchar(255) DEFAULT NULL,
  "ip" varchar(255) DEFAULT NULL,
  "web_port" varchar(6) DEFAULT '80',
  "port" varchar(6) DEFAULT '554',
  "device_id" smallint DEFAULT NULL,
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL
);

CREATE INDEX idx_onvif_device_deleted_at ON onvif_device ("deleted_at");


CREATE TABLE  "service_category" (
  "id" SERIAL PRIMARY KEY,
  "category" varchar(32) NOT NULL DEFAULT '',
  "category_en" varchar(32) NOT NULL DEFAULT '',
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL
);

CREATE INDEX idx_service_category_deleted_at ON service_category ("deleted_at");

INSERT INTO "service_category"("id","category","category_en","created_at","updated_at","deleted_at") VALUES(1,'入侵','invasion',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL);


CREATE TABLE  "small_server" (
  "id" SERIAL PRIMARY KEY,
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL,
  "domain" varchar(32) DEFAULT NULL,
  "ip" varchar(32) DEFAULT NULL,
  "user_id" smallint DEFAULT NULL
);

CREATE INDEX idx_small_server_deleted_at ON small_server ("deleted_at");


CREATE TABLE  "sys_menu" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar(32) DEFAULT NULL,
  "icon" varchar(128) DEFAULT '#',
  "parent_id" integer DEFAULT '0',
  "order_num" integer DEFAULT '0',
  "path" varchar(256) DEFAULT '',
  "component" varchar(256) DEFAULT '',
  "menu_type" varchar(1) DEFAULT '',
  "perms" varchar(128) DEFAULT '',
  "created_at" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "remark" varchar(512) DEFAULT NULL
);


CREATE TABLE   "sys_role" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar(30) DEFAULT NULL,
  "code" varchar(100) DEFAULT NULL,
  "create_time" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "update_time" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "remark" varchar(500) DEFAULT NULL
);

CREATE TABLE   "sys_role_menu" (
  "id" SERIAL PRIMARY KEY,
  "role_id" integer NOT NULL,
  "menu_id" integer NOT NULL
);

CREATE TABLE   "sys_user_role" (
  "id" SERIAL PRIMARY KEY,
  "user_id" integer DEFAULT NULL,
  "role_id" integer NOT NULL,
  "register_time" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_sys_user_role ON sys_user_role ("user_id");


CREATE TABLE   "upload_log" (
  "id" SERIAL PRIMARY KEY,
  "ova_sn" varchar(128) DEFAULT '',
  "ipc_user_id" integer DEFAULT '0',
  "file_name" varchar(256) NOT NULL DEFAULT '',
  "remote_url" varchar(256) NOT NULL DEFAULT '',
  "type" smallint NOT NULL DEFAULT '0',
  "size" integer NOT NULL DEFAULT '0',
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ DEFAULT NULL
);

CREATE INDEX ipc_user_id_created_at ON upload_log ("deleted_at");


CREATE TABLE   "user" (
  "id" SERIAL PRIMARY KEY,
  "username" varchar(255) NOT NULL,
  "uuid" varchar(64) NOT NULL,
  "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
  "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL,
  "password" varchar(255) DEFAULT NULL,
  "register_time" TIMESTAMPTZ(3) DEFAULT NULL,
  "parent_id" smallint DEFAULT NULL
);

CREATE INDEX idx_user_deleted_at ON "user" ("deleted_at");

INSERT INTO "user" ("id","username","uuid","created_at","updated_at","deleted_at","password","register_time","parent_id") VALUES(1,'user1','ac736a7c-f6e4-11ee-a4ed-d85ed345deda',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,NULL,SUBSTRING(MD5(CAST(RANDOM() AS TEXT)), 1, 16),NULL,NULL);


CREATE TABLE  "video_live" (
  "id" SERIAL PRIMARY KEY,
  "ipc_id" integer NOT NULL,
  "ova_sn" varchar(64) NOT NULL,
  "ova_mediagate_server_id" integer NOT NULL,
  "cdn_id" integer NOT NULL,
  "rtmp_publish" varchar(2048) DEFAULT NULL,
  "rtmp_public" varchar(2048) DEFAULT NULL,
  "flv_public" varchar(2048) DEFAULT NULL,
  "hls_public" varchar(2048) DEFAULT NULL,
  "rtmp_private" varchar(2048) DEFAULT NULL,
  "flv_private" varchar(2048) DEFAULT NULL,
  "hls_private" varchar(2048) DEFAULT NULL,
  "start_time" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "publish_time" TIMESTAMPTZ DEFAULT NULL,
  "mediagate_param" varchar(2048) DEFAULT NULL,
  "finish" integer NOT NULL DEFAULT '0',
  "finish_time" TIMESTAMPTZ DEFAULT NULL,
  "connect_type" integer NOT NULL DEFAULT '0',
  "connect_param" varchar(1024) DEFAULT NULL,
  "player_count" integer NOT NULL DEFAULT '0',
  "stream" varchar(256) DEFAULT NULL,
  "alarm" integer NOT NULL DEFAULT '0'
);


CREATE TABLE  "network" (
   "id" SERIAL PRIMARY KEY,
   "ip" varchar(32) NOT NULL,
   "domain" varchar(64) NOT NULL,
   "protocol" varchar(16) DEFAULT NULL,
   "created_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
   "updated_at" TIMESTAMPTZ(3) DEFAULT CURRENT_TIMESTAMP,
   "deleted_at" TIMESTAMPTZ(3) DEFAULT NULL
 );
 
CREATE INDEX idx_network_deleted_at ON network ("deleted_at");
 
CREATE TABLE  "storage" (
   "id" SERIAL PRIMARY KEY,
   "storage_day" integer NOT NULL DEFAULT '0'
 );
 
INSERT INTO "storage" ("id","storage_day") VALUES(1,0);


CREATE OR REPLACE PROCEDURE insert_ipc_and_gb28181(
    IN p_user_id int,
    IN p_name varchar(255),
    IN p_longitube varchar(255),
    IN p_latitube varchar(255),
    IN p_lower_gb28181_device_id int,
    IN p_chid varchar(255),
    IN p_sipid varchar(255),
    IN p_mediagate_cluster_id int
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_ipc_id int;
BEGIN
    INSERT INTO ipc (user_id, name, longitube, latitube, connect_type, online, ova_mediagate_cluster_id, event) 
    VALUES (p_user_id, p_name, p_longitube, p_latitube, 1, 1, p_mediagate_cluster_id, 1);

    SELECT lastval() INTO v_ipc_id;

    UPDATE ipc 
    SET ova_sn = SUBSTRING(MD5(CAST(RANDOM() AS TEXT)), 1, 32)
    WHERE id = v_ipc_id;

    INSERT INTO ipc_ext_gb28181 (ipc_id, lower_gb28181_device_id, chid, sipid) 
    VALUES (v_ipc_id, p_lower_gb28181_device_id, p_chid, p_sipid);
END;
$$;

CREATE OR REPLACE PROCEDURE insert_ipc_and_rtsp(
    IN p_user_id int,
    IN p_name varchar(255),
    IN p_rtsp_device_id int,
    IN p_url varchar(255),
    IN p_mediagate_cluster_id int
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_ipc_id int;
BEGIN
    INSERT INTO ipc (user_id, name, connect_type, online, ova_mediagate_cluster_id) 
    VALUES (p_user_id, p_name, 2, 1, p_mediagate_cluster_id);

    SELECT lastval() INTO v_ipc_id;

    UPDATE ipc 
    SET ova_sn = SUBSTRING(MD5(CAST(RANDOM() AS TEXT)), 1, 32)
    WHERE id = v_ipc_id;

    INSERT INTO ipc_ext_rtsp (ipc_id, url, rtsp_device_id) 
    VALUES (v_ipc_id, p_url, p_rtsp_device_id);
END;
$$;