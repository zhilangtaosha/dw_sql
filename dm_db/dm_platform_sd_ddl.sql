CREATE TABLE IF NOT EXISTS dm_db.dm_platform_sd (
cal_dt string comment '业务日期',
platform string comment '平台描述',
city_id int comment '城市id',
city_name string comment '城市',
connection_cnt bigint comment '连接对数',
wechat_cnt bigint comment '微聊对数',
call_pairs_cnt bigint comment '电话对数',
first_wechat_cnt bigint comment '首次微聊对数',
xinfang_first_wechat_cnt bigint comment '新房首次微聊对数',
demand_first_wechat_cnt bigint comment '需求找房首次微聊对数',
promotion_survey_first_wechat_cnt bigint comment '推广且实勘房源首次微聊对数(废弃)',
promotion_notsurvey_first_wechat_cnt bigint comment '推广非实勘房源首次微聊对数(废弃)',
notpromotion_survey_first_wechat_cnt bigint comment '非推广实勘房源首次微聊对数(废弃)',
notpromotion_notsurvey_first_wechat_cnt bigint comment '非推广非实勘房源首次微聊对数(废弃)',
landlord_first_wechat_cnt bigint comment '房东首次微聊对数',
broker_first_wechat_cnt bigint comment '顾问首次微聊对数',
push_first_wechat_cnt bigint comment '推荐首次微聊对数',
other_first_wechat_cnt bigint comment '其他首次微聊对数',
uv bigint comment 'UV',
zhaofang_vpuv bigint comment '找房VPUV',
zhaofang_vppv bigint comment '找房VPPV',
fvpuv bigint comment 'FVPUV',
xuanfang_cnt bigint comment '选房单量',
demand_user_cnt bigint comment '发需求用户数',
survey_cnt bigint comment '实勘房源量',
total_verified_inventory_cnt bigint comment '总认证房源量',
non_survey_cnt bigint comment '非实勘房源量',
total_online_inv_cnt bigint comment '在线房源量',
promotion_first_wechat_cnt bigint comment '传统找房(列表找房)首次微聊对数',
online_trans_cnt bigint comment '线上成交数',
esf_online_trans_cnt bigint comment '二手房线上成交数',
xf_online_trans_cnt bigint comment '新房线上成交数',
online_trans_user_cnt bigint comment '线上成交用户数',
esf_online_trans_user_cnt bigint comment '二手房线上成交用户数',
xf_online_trans_user_cnt bigint comment '新房线上成交用户数',
online_visit_cnt bigint comment '线上带看次数',
esf_online_visit_cnt bigint comment '二手房线上带看次数',
xf_online_visit_cnt bigint comment '新房线上带看次数',
online_visit_user_cnt bigint comment '线上带看用户数',
esf_online_visit_user_cnt bigint comment '二手房线上带看用户数',
xf_online_visit_user_cnt bigint comment '新房线上带看用户数',
new_connection_cnt bigint comment '日新连接数',
esf_new_connection_cnt bigint comment '二手房日新连接数',
xf_new_connection_cnt bigint comment '新房日新连接数',
reg_user_cnt bigint comment '注册用户数',
fud bigint comment 'FUD',
wechat_user_cnt bigint comment '微聊用户数',
esf_wechat_user_cnt bigint comment '二手房微聊用户数',
xf_wechat_user_cnt bigint comment '新房微聊用户数',
esf_call_pairs_cnt bigint comment '二手房电话对数',
xf_call_pairs_cnt bigint comment '新房电话对数',
esf_call_user_cnt bigint comment '二手房电话用户数',
xf_call_user_cnt bigint comment '新房电话用户数',
assigned_call_buyer_cnt bigint comment '派电话录入私客数',
xf_total_wechat_cnt bigint comment '新房总微聊对数 单页+派单',
xf_page_wechat_cnt bigint comment '新房单页微聊对数',
xf_paidan_wechat_cnt bigint comment '新房派单微聊对数',
xf_total_first_wechat_cnt bigint comment '新房总首聊对数 单页+派单',
xf_page_first_wechat_cnt bigint comment '新房单页首聊对数',
xf_paidan_first_wechat_cnt bigint comment '新房派单首聊对数',
esf_connection_user_cnt bigint comment '二手房连接用户数',
xf_connection_user_cnt bigint comment '新房连接用户数',
esf_buyer_cnt bigint comment '二手房录入用户数',
xf_buyer_cnt bigint comment '新房录入用户',
xf_vcpv bigint comment '新房楼盘单页pv',
xf_vcud bigint comment '新房楼盘单页ud',
xf_online_loupan_cnt bigint comment '新房在线楼盘数',
xf_coop_loupan_cnt bigint comment '新房合作楼盘数',
esf_30_conn_user_cnt bigint comment '二手房近30天连接用户数',
esf_30_new_buyer_cnt bigint comment '二手房近30天录入用户数',
esf_30_visit_user_cnt bigint comment '二手房近30天带看用户数',
esf_30_trans_user_cnt bigint comment '二手房近30天成交用户数',
on_duty_broker_cnt bigint comment '在职经纪人数',
xf_loupan_subscribe_user_cnt bigint comment '新房订阅用户数',
xf_loupan_subscribe_cnt bigint comment '新房订阅数'
)  PARTITIONED BY (p_dt STRING)
STORED AS ORC;

--modified at 2016-12-15
alter table dm_db.dm_platform_sd change promotion_survey_first_wechat_cnt promotion_survey_first_wechat_cnt bigint comment '推广且实勘房源首次微聊对数(废弃)';
alter table dm_db.dm_platform_sd change promotion_notsurvey_first_wechat_cnt promotion_notsurvey_first_wechat_cnt bigint comment '推广非实勘房源首次微聊对数(废弃)';
alter table dm_db.dm_platform_sd change notpromotion_survey_first_wechat_cnt notpromotion_survey_first_wechat_cnt bigint comment '非推广实勘房源首次微聊对数(废弃)';
alter table dm_db.dm_platform_sd change notpromotion_notsurvey_first_wechat_cnt notpromotion_notsurvey_first_wechat_cnt bigint comment '非推广非实勘房源首次微聊对数(废弃)';

alter table dm_db.dm_platform_sd add columns (
  survey_first_wechat_cnt bigint comment '实勘房源首次微聊对数',
  notsurvey_first_wechat_cnt bigint comment '非实勘房源首次微聊对数',
  marketing_inventory_first_wechat_cnt bigint comment '营销房源首次微聊对数'
  esf_inventory_subscribe_user_cnt bigint comment '二手房订阅用户数',
  esf_inventory_subscribe_cnt bigint comment '二手房订阅数'
);