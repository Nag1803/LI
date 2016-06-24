-- Table: keen_event_collections

-- DROP TABLE keen_event_collections;

CREATE TABLE keen_event_collections
(
  event_name character varying(200) NOT NULL,
  event_time character varying(100) NOT NULL,
  event_data character varying(99000),
  fetch_date timestamp without time zone,
  CONSTRAINT keen_event_collections_pkey PRIMARY KEY (event_name, event_time)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE keen_event_collections
  OWNER TO postgres;
GRANT ALL ON TABLE keen_event_collections TO application;

-- Table: keen_events

-- DROP TABLE keen_events;

CREATE TABLE keen_events
(
  keen_events_data json,
  response_date timestamp without time zone NOT NULL,
  CONSTRAINT keen_events_pkey PRIMARY KEY (response_date)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE keen_events
  OWNER TO postgres;
GRANT ALL ON TABLE keen_events TO application;


-- Table: fb_ad_accounts

-- DROP TABLE fb_ad_accounts;

CREATE TABLE fb_ad_accounts
(
  adaccount_id character varying(100) NOT NULL,
  adaccount_id_prog character varying(100),
  account_status character varying(10),
  age character varying(50),
  agency_representing_client character varying(50),
  client_based_in_france character varying(50),
  has_written_mandate_from_advertiser character varying(50),
  is_client_paying_invoices character varying(50),
  client_street character varying(50),
  client_street2 character varying(50),
  client_country_code character varying(50),
  business_city character varying(50),
  business_country_code character varying(50),
  business_name character varying(50),
  business_state character varying(50),
  business_street character varying(50),
  business_street2 character varying(50),
  business_zip character varying(50),
  capabilities character varying(1000),
  created_time character varying(50),
  currency character varying(50),
  disable_reason character varying(50),
  end_advertiser character varying(50),
  end_advertiser_name character varying(50),
  funding_source character varying(50),
  funding_source_id character varying(50),
  funding_src_name character varying(50),
  funding_src_type character varying(50),
  has_migrated_permissions character varying(50),
  is_notifications_enabled character varying(50),
  is_personal character varying(50),
  is_prepay_account character varying(50),
  is_tax_id_required character varying(50),
  min_campaign_group_spend_cap character varying(50),
  min_daily_budget character varying(50),
  name character varying(50),
  owner character varying(50),
  offsite_pixels_tos_accepted character varying(50),
  tax_id_status character varying(50),
  tax_id_type character varying(50),
  timezone_id character varying(50),
  timezone_name character varying(50),
  timezone_offset_hours_utc character varying(50),
  rf_spec character varying(1000),
  web_custom_audience_tos character varying(50),
  custom_audience_tos character varying(50),
  user_role character varying(50),
  amount_spent character varying(50),
  spend_cap character varying(50),
  balance character varying(50),
  business_id character varying(50),
  business_name_ character varying(50),
  owner_business_id character varying(50),
  owner_business_name character varying(50),
  last_used_time character varying(50),
  asset_score character varying(50),
  CONSTRAINT "FbTblAdAccounts_pkey" PRIMARY KEY (adaccount_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fb_ad_accounts
  OWNER TO postgres;
GRANT ALL ON TABLE fb_ad_accounts TO application;

-- Table: fb_ad_creatives

-- DROP TABLE fb_ad_creatives;

CREATE TABLE fb_ad_creatives
(
  adcreative_id character varying(500) NOT NULL,
  ad_account_id character varying(500) NOT NULL,
  actor_id character varying(500),
  actor_image_hash character varying(500),
  actor_image_url character varying(500),
  actor_name character varying(500),
  adlabels character varying(500),
  body character varying(500),
  call_to_action_type character varying(500),
  image_hash character varying(500),
  image_url character varying(1000),
  image_crops character varying(500),
  instagram_actor_id character varying(500),
  instagram_permalink_url character varying(500),
  instagram_story_id character varying(500),
  link_og_id character varying(500),
  link_url character varying(500),
  name character varying(500),
  object_id character varying(500),
  object_url character varying(500),
  object_story_id character varying(500),
  object_story_spec_pageid character varying(2000),
  ob_stry_spec_inst_actor_id character varying(500),
  ob_stry_spec_photo_caption character varying(500),
  ob_stry_spec_photo_url character varying(1000),
  ob_stry_spec_photo_hash character varying(500),
  ob_stry_spec_text_data character varying(2000),
  ob_stry_spec_link_url character varying(1000),
  ob_stry_spec_link_msg character varying(2000),
  ob_stry_spec_link_name character varying(500),
  obj_spec_image_caption character varying(500),
  ob_stry_spec_link_attstyle character varying(500),
  ob_stry_spec_link_desc character varying(2000),
  ob_stry_spec_link_image_hash character varying(500),
  ob_stry_spec_link_cta character varying(500),
  ob_stry_spec_link_cta_val character varying(200),
  obj_spec_image_crops character varying(500),
  ob_stry_spec_link_picture character varying(2000),
  ob_stry_spec_link_ms_end_card character varying(500),
  ob_stry_spec_link_ms_opt character varying(500),
  ob_stry_spec_link_max_product_count character varying(500),
  ob_stry_spec_link_additional_image_index character varying(2000),
  ob_stry_spec_link_app_link_spec character varying(2000),
  ob_stry_spec_link_event_id character varying(500),
  ob_stry_spec_link_canvas_enabled character varying(500),
  ob_stry_spec_template_data character varying(2000),
  ob_stry_spec_offer_data character varying(2000),
  ob_stry_spec_video_data character varying(2000),
  object_type character varying(500),
  platform_customizations character varying(500),
  product_set_id character varying(500),
  run_status character varying(500),
  template_url character varying(1000),
  thumbnail_url character varying(1000),
  title character varying(1000),
  url_tags character varying(500),
  applink_treatment character varying(500),
  CONSTRAINT fb_ad_creatives_pkey PRIMARY KEY (adcreative_id, ad_account_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fb_ad_creatives
  OWNER TO postgres;
GRANT ALL ON TABLE fb_ad_creatives TO application;

-- Table: fb_ad_insights_unq_actions

-- DROP TABLE fb_ad_insights_unq_actions;

CREATE TABLE fb_ad_insights_unq_actions
(
  ad_account_id character varying(100) NOT NULL,
  ad_id character varying(50) NOT NULL,
  action_carousel_card_id character varying(200),
  action_carousel_card_name character varying(50),
  action_destination character varying(50),
  action_device character varying(300),
  action_target_id character varying(300),
  action_type character varying(200) NOT NULL,
  action_video_type character varying(200),
  value character varying(200),
  one_d_view character varying(200),
  seven_d_view character varying(200),
  twenty_eight_d_view character varying(200),
  one_d_click character varying(200),
  seven_d_click character varying(200),
  twenty_eight_d_click character varying(200),
  date_start character varying(50) NOT NULL,
  date_stop character varying(50) NOT NULL,
  CONSTRAINT fb_ad_insights_unq_actions_pkey PRIMARY KEY (ad_account_id, ad_id, action_type, date_start, date_stop)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fb_ad_insights_unq_actions
  OWNER TO postgres;
GRANT ALL ON TABLE fb_ad_insights_unq_actions TO application;

-- Table: fb_ad_labels

-- DROP TABLE fb_ad_labels;

CREATE TABLE fb_ad_labels
(
  id character varying(100) NOT NULL,
  account character varying(100) NOT NULL,
  name character varying(200),
  created_time character varying(200),
  updated_time character varying(200),
  CONSTRAINT fb_ad_labels_pkey PRIMARY KEY (id, account)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fb_ad_labels
  OWNER TO postgres;
GRANT ALL ON TABLE fb_ad_labels TO application;

-- Table: fb_ad_users

-- DROP TABLE fb_ad_users;

CREATE TABLE fb_ad_users
(
  user_id character varying(100) NOT NULL,
  ad_account_id character varying NOT NULL,
  user_permissions character varying(50),
  user_role character varying(50),
  CONSTRAINT fb_ad_users_pkey PRIMARY KEY (user_id, ad_account_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fb_ad_users
  OWNER TO postgres;
GRANT ALL ON TABLE fb_ad_users TO application;

-- Table: fb_ads

-- DROP TABLE fb_ads;

CREATE TABLE fb_ads
(
  ad_id character varying(100) NOT NULL,
  ad_account_id character varying(50) NOT NULL,
  adset_id character varying(50),
  campaign_adset_id character varying(50),
  campaign_bid_type character varying(50),
  action_type character varying(50),
  conversion_id character varying(50),
  created_time character varying(50),
  creative_id character varying(50),
  eff_status character varying(50),
  last_updated_by_app_id character varying(50),
  name character varying(2000),
  updated_time character varying(50),
  campaign_id character varying(50),
  CONSTRAINT ads_data_pkey PRIMARY KEY (ad_id, ad_account_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fb_ads
  OWNER TO postgres;
GRANT ALL ON TABLE fb_ads TO application;

-- Table: fb_ads_perf_data

-- DROP TABLE fb_ads_perf_data;

CREATE TABLE fb_ads_perf_data
(
  ad_account_id character varying(200) NOT NULL,
  ad_account_name character varying(200),
  campaign_id character varying(200) NOT NULL,
  campaign_name character varying(200),
  adset_id character varying(200) NOT NULL,
  adset_name character varying(200),
  ad_id character varying(200) NOT NULL,
  ad_name character varying(200),
  buying_type character varying(100),
  action_carousel_card_id character varying(100),
  action_carousel_card_name character varying(500),
  actions character varying(10000),
  unique_actions character varying(10000),
  total_actions character varying(200),
  total_uniq_actions character varying(200),
  action_value character varying(10000),
  total_action_value character varying(200),
  impressions character varying(200),
  social_impressions character varying(200),
  social_clicks character varying(200),
  unique_impressions character varying(200),
  unique_social_impressions character varying(200),
  unique_clicks character varying(200),
  unique_social_clicks character varying(200),
  spend character varying(200),
  frequency character varying(200),
  social_spend character varying(200),
  deeplink_clicks character varying(200),
  app_store_clicks character varying(200),
  website_clicks character varying(200),
  cost_per_inline_post_engagement character varying(200),
  inline_link_clicks character varying(200),
  cost_per_inline_link_click character varying(200),
  inline_post_engagement character varying(200),
  call_to_action_clicks character varying(200),
  newsfeed_avg_position character varying(200),
  newsfeed_impressions character varying(200),
  newsfeed_clicks character varying(200),
  reach character varying(200),
  social_reach character varying(200),
  ctr character varying(200),
  unique_ctr character varying(200),
  unique_link_clicks_ctr character varying(200),
  cpm character varying(200),
  cpp character varying(200),
  cost_per_total_action character varying(200),
  cost_per_action_type character varying(10000),
  cost_per_unique_click character varying(200),
  cost_per_10_sec_video_view character varying(10000),
  cost_per_unique_action_type character varying(2000),
  relevance_score character varying(10000),
  website_ctr character varying(10000),
  video_avg_sec_watched_actions character varying(10000),
  video_avg_pct_watched_actions character varying(10000),
  video_p25_watched_actions character varying(10000),
  video_p50_watched_actions character varying(10000),
  video_p75_watched_actions character varying(10000),
  video_p95_watched_actions character varying(10000),
  video_p100_watched_actions character varying(10000),
  video_complete_watched_actions character varying(10000),
  video_10_sec_watched_actions character varying(10000),
  video_15_sec_watched_actions character varying(10000),
  video_30_sec_watched_actions character varying(10000),
  estimated_ad_recallers character varying(200),
  estimated_ad_recallers_lower_bound character varying(200),
  estimated_ad_recallers_upper_bound character varying(200),
  estimated_ad_recall_rate character varying(200),
  estimated_ad_recall_rate_lower_bound character varying(200),
  estimated_ad_recall_rate_upper_bound character varying(200),
  cost_per_estimated_ad_recallers character varying(200),
  canvas_avg_view_time character varying(200),
  canvas_avg_view_percent character varying(200),
  place_page_name character varying(500),
  date_start character varying(200) NOT NULL,
  date_stop character varying(200) NOT NULL,
  CONSTRAINT fb_ads_perf_data_pkey PRIMARY KEY (ad_account_id, campaign_id, adset_id, ad_id, date_start, date_stop)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fb_ads_perf_data
  OWNER TO postgres;
GRANT ALL ON TABLE fb_ads_perf_data TO application;

-- Table: fb_ads_perf_data_plc_dev

-- DROP TABLE fb_ads_perf_data_plc_dev;

CREATE TABLE fb_ads_perf_data_plc_dev
(
  ad_account_id character varying(200) NOT NULL,
  ad_account_name character varying(200),
  campaign_id character varying(200),
  campaign_name character varying(200),
  adset_id character varying(200),
  adset_name character varying(200),
  ad_id character varying(200) NOT NULL,
  ad_name character varying(200),
  buying_type character varying(100),
  action_carousel_card_id character varying(100),
  action_carousel_card_name character varying(500),
  actions character varying(10000),
  unique_actions character varying(10000),
  total_actions character varying(200),
  total_uniq_actions character varying(200),
  action_value character varying(10000),
  total_action_value character varying(200),
  impressions character varying(200),
  social_impressions character varying(200),
  social_clicks character varying(200),
  unique_impressions character varying(200),
  unique_social_impressions character varying(200),
  unique_clicks character varying(200),
  unique_social_clicks character varying(200),
  spend character varying(200),
  frequency character varying(200),
  social_spend character varying(200),
  deeplink_clicks character varying(200),
  app_store_clicks character varying(200),
  website_clicks character varying(200),
  cost_per_inline_post_engagement character varying(200),
  inline_link_clicks character varying(200),
  cost_per_inline_link_click character varying(200),
  inline_post_engagement character varying(200),
  call_to_action_clicks character varying(200),
  newsfeed_avg_position character varying(200),
  newsfeed_impressions character varying(200),
  newsfeed_clicks character varying(200),
  reach character varying(200),
  social_reach character varying(200),
  ctr character varying(200),
  unique_ctr character varying(200),
  unique_link_clicks_ctr character varying(200),
  cpm character varying(200),
  cpp character varying(200),
  cost_per_total_action character varying(200),
  cost_per_action_type character varying(10000),
  cost_per_unique_click character varying(200),
  cost_per_10_sec_video_view character varying(10000),
  cost_per_unique_action_type character varying(2000),
  relevance_score character varying(10000),
  website_ctr character varying(10000),
  video_avg_sec_watched_actions character varying(10000),
  video_avg_pct_watched_actions character varying(10000),
  video_p25_watched_actions character varying(10000),
  video_p50_watched_actions character varying(10000),
  video_p75_watched_actions character varying(10000),
  video_p95_watched_actions character varying(10000),
  video_p100_watched_actions character varying(10000),
  video_complete_watched_actions character varying(10000),
  video_10_sec_watched_actions character varying(10000),
  video_15_sec_watched_actions character varying(10000),
  video_30_sec_watched_actions character varying(10000),
  estimated_ad_recallers character varying(200),
  estimated_ad_recallers_lower_bound character varying(200),
  estimated_ad_recallers_upper_bound character varying(200),
  estimated_ad_recall_rate character varying(200),
  estimated_ad_recall_rate_lower_bound character varying(200),
  estimated_ad_recall_rate_upper_bound character varying(200),
  cost_per_estimated_ad_recallers character varying(200),
  canvas_avg_view_time character varying(200),
  canvas_avg_view_percent character varying(200),
  place_page_name character varying(500),
  impression_device character varying(200) NOT NULL,
  placement character varying(200) NOT NULL,
  date_start character varying(200) NOT NULL,
  date_stop character varying(200),
  CONSTRAINT fb_ads_perf_data_plc_dev_pkey PRIMARY KEY (ad_account_id, ad_id, impression_device, placement, date_start)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fb_ads_perf_data_plc_dev
  OWNER TO postgres;
GRANT ALL ON TABLE fb_ads_perf_data_plc_dev TO application;

-- Table: fb_ads_track_specs

-- DROP TABLE fb_ads_track_specs;

CREATE TABLE fb_ads_track_specs
(
  ad_id character varying(100) NOT NULL,
  ad_account_id character varying(50) NOT NULL,
  action_type character varying(50) NOT NULL,
  application character varying(50),
  conversion_id character varying(50),
  event_type character varying(50),
  event character varying(50),
  event_creator character varying(100),
  fb_pixel character varying(100),
  fb_pixel_event character varying(100),
  object character varying(100),
  object_domain character varying(100),
  offer character varying(200),
  offer_creator character varying(100),
  offsite_pixel character varying(100),
  page character varying(100),
  page_parent character varying(100),
  post character varying(500),
  post_object character varying(100),
  post_object_wall character varying(100),
  post_wall character varying(100),
  product_set_id character varying(100),
  question character varying(100),
  question_creator character varying(100),
  response character varying(100),
  subtype character varying(100),
  CONSTRAINT fb_ads_track_specs_pkey PRIMARY KEY (ad_id, ad_account_id, action_type)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fb_ads_track_specs
  OWNER TO postgres;
GRANT ALL ON TABLE fb_ads_track_specs TO application;

-- Table: fb_adsets

-- DROP TABLE fb_adsets;

CREATE TABLE fb_adsets
(
  adlabels character varying(100),
  adset_schedule character varying(500),
  adset_id character varying(500) NOT NULL,
  ad_account_id character varying(500) NOT NULL,
  bid_amount character varying(500),
  bid_info character varying(500),
  billing_event character varying(500),
  campaign character varying(500),
  campaign_id character varying(500),
  configured_status character varying(500),
  created_time character varying(500),
  creative_sequence character varying(500),
  effective_status character varying(500),
  end_time character varying(500),
  frequency_cap character varying(100),
  frequency_cap_reset_period character varying(100),
  frequency_control_specs_event character varying(2000),
  frequency_control_specs_interval_days character varying(200),
  frequency_control_specs_max_freq character varying(200),
  is_autobid character varying(500),
  lifetime_frequency_cap character varying(100),
  lifetime_imps character varying(200),
  name character varying(200),
  optimization_goal character varying(200),
  product_ad_behavior character varying(100),
  promoted_object character varying(500),
  rf_prediction_id character varying(500),
  rtb_flag character varying(500),
  start_time character varying(500),
  targeting_genders character varying(200),
  targeting_age_min character varying(200),
  targeting_age_max character varying(200),
  targeting_geo_countries character varying(2000),
  targeting_geo_region character varying(200),
  targeting_geo_cities character varying(200),
  targeting_geo_zips character varying(200),
  targeting_interests character varying(500),
  targeting_locales character varying(500),
  targeting_edu_statuses character varying(500),
  targeting_custom_audiences character varying(500),
  targeting_custom_loc_address character varying(500),
  targeting_custom_loc_latitude character varying(200),
  targeting_custom_loc_longitude character varying(200),
  targeting_custom_loc_radius character varying(200),
  targeting_custom_loc_distance_units character varying(200),
  targeting_geo_markets character varying(500),
  targeting_location_types character varying(500),
  targeting_page_types character varying(500),
  updated_time character varying(500),
  use_new_app_click character varying(500),
  pacing_type character varying(500),
  budget_remaining character varying(500),
  daily_budget character varying(500),
  lifetime_budget character varying(500),
  CONSTRAINT fb_adsets_pkey PRIMARY KEY (adset_id, ad_account_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fb_adsets
  OWNER TO postgres;
GRANT ALL ON TABLE fb_adsets TO application;

-- Table: fb_campaigns

-- DROP TABLE fb_campaigns;

CREATE TABLE fb_campaigns
(
  campaign_id character varying(100) NOT NULL,
  adlabels character varying(100),
  ad_account_id character varying(50) NOT NULL,
  buying_type character varying(50),
  can_use_spend_cap character varying(50),
  configured_status character varying(50),
  created_time character varying(50),
  effective_status character varying(50),
  name character varying(500),
  objective character varying(50),
  start_time character varying(50),
  stop_time character varying(50),
  updated_time character varying(50),
  spend_cap character varying(50),
  CONSTRAINT fb_campaigns_pkey PRIMARY KEY (campaign_id, ad_account_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fb_campaigns
  OWNER TO postgres;
GRANT ALL ON TABLE fb_campaigns TO application;

-- Table: fb_conn_objects

-- DROP TABLE fb_conn_objects;

CREATE TABLE fb_conn_objects
(
  conn_obj_id character varying(100) NOT NULL,
  conn_obj_name character varying(200),
  ad_account_id character varying(200) NOT NULL,
  native_app_store_ids character varying(500),
  native_app_targeting_ids character varying(500),
  object_store_urls character varying(1000),
  og_namespace character varying(200),
  og_actions character varying(200),
  og_objects character varying(200),
  picture character varying(1000),
  supported_platforms character varying(2000),
  tabs character varying(10000),
  type character varying(200),
  url character varying(1000),
  logo_url character varying(1000),
  website character varying(1000),
  CONSTRAINT fb_conn_objects_pkey PRIMARY KEY (conn_obj_id, ad_account_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fb_conn_objects
  OWNER TO postgres;
GRANT ALL ON TABLE fb_conn_objects TO application;

-- Table: fb_cust_audiences

-- DROP TABLE fb_cust_audiences;

CREATE TABLE fb_cust_audiences
(
  audience_id character varying(100) NOT NULL,
  ad_account_id character varying(50) NOT NULL,
  approx_count character varying(50),
  data_source_type character varying(200),
  data_source_subtype character varying(200),
  ds_creation_params character varying(500),
  delivery_status_code character varying(50),
  delivery_status_description character varying(500),
  description character varying(500),
  excluded_custom_audiences character varying(500),
  included_custom_audiences character varying(500),
  ext_event_src_adpix_id character varying(500),
  ext_event_src_owner_business character varying(100),
  ext_event_src_owner_ad_acc character varying(100),
  ext_event_src_name character varying(500),
  ext_event_src_creation_time character varying(100),
  ext_event_src_last_fired_time character varying(100),
  ext_event_src_code character varying(100),
  lookalike_audience_ids character varying(100),
  lookalike_country character varying(50),
  lookalike_origin character varying(100),
  lookalike_starting_ratio character varying(100),
  lookalike_ratio character varying(100),
  lookalike_type character varying(100),
  lookalike_is_financial_service character varying(50),
  audience_name character varying(500),
  audience_op_status_code character varying(200),
  audience_op_status_description character varying(500),
  opt_out_link character varying(1000),
  permission_for_actions_can_edit character varying(100),
  permission_for_actions_can_see_insight character varying(50),
  permission_for_actions_can_share character varying(50),
  permission_for_actions_subtype_supports_lookalike character varying(50),
  pixel_id character varying(50),
  rule character varying(1000),
  retention_days character varying(200),
  subtype character varying(200),
  time_created character varying(2000),
  time_updated character varying(200),
  time_content_updated character varying(200),
  CONSTRAINT fb_cust_audiences_pkey PRIMARY KEY (audience_id, ad_account_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fb_cust_audiences
  OWNER TO postgres;
GRANT ALL ON TABLE fb_cust_audiences TO application;

-- Table: ck_leads_by_buyer

-- DROP TABLE ck_leads_by_buyer;

CREATE TABLE ck_leads_by_buyer
(
  transaction_id integer NOT NULL,
  transaction_date timestamp(6) without time zone,
  lead_id character varying(15),
  buyer_id integer,
  buyer_name character varying(100),
  buyer_contract_id integer,
  buyer_contract_name character varying(100),
  currency_id integer,
  currency_symbol character(50),
  currency_name character varying(25),
  currency_abbr character varying(50),
  amount real,
  first_name character varying(50),
  last_name character varying(50),
  email_address character varying(50),
  opted_in boolean,
  phone_home character varying(15),
  address character varying(500),
  city character varying(50),
  state character varying(10),
  zip_code character varying(10),
  best_time character varying(25),
  high_school_grad_year character varying(15),
  military_status character varying(15),
  education_completed character varying(50),
  program character varying(2000),
  location character varying(300),
  ckm_campaign_id character varying(30),
  ckm_key character varying(500),
  ewc character varying(500),
  ewc_date character varying(50),
  is_job_sourced character varying(200),
  is_call_center_sourced character varying(200),
  job_traffic_supplier_name character varying(200),
  country_citizenship character varying(100),
  address_line2 character varying(500),
  source_code character varying(1000),
  testcase character varying(1000),
  lid5 character varying(100),
  safesoft_id character varying(30),
  best_time_to_call character varying(50),
  education_objective character varying(1000),
  client_source_code character varying(1000),
  call_center_source character varying(1000),
  job_site_source character varying(1000),
  address2 character varying(1000),
  job_site_source_name character varying(100),
  country character varying(15),
  traffic_source character varying(1000),
  ewc1 character varying(1000),
  mobile1 character varying(15),
  text_opt1 character varying(500),
  ewc_date1 character varying(30),
  job_related_traffic character varying(1000),
  receive_text character varying(1000),
  lid6 character varying(1000),
  sms_optin_flag character varying(1000),
  are_you_anrn character varying(100),
  military_affiliation character varying(100),
  hs_attend character varying(100),
  start_date character varying(30),
  rn_license character varying(100),
  grad_year character varying(15),
  comment character varying(1000),
  online_interest character varying(100),
  glue_id character varying(15),
  text_opt character varying(1000),
  computer character varying(1000),
  education character varying(1000),
  vafund character varying(1000),
  rep character varying(1000),
  lid1 character varying(1000),
  lid2 character varying(1000),
  lid3 character varying(1000),
  lid4 character varying(1000),
  lid10 character varying(1000),
  lid11 character varying(1000),
  lb_creative character varying(1000),
  respondent_id character varying(30),
  adkey character varying(500),
  universal_lead_id character varying(100),
  enroll_time character varying(50),
  geo_region character varying(1000),
  fb_lead_id character varying(50),
  term_year character varying(25),
  student_id character varying(25),
  lead_date character varying(25),
  lead_source character varying(1000),
  format character varying(25),
  lead_type character varying(25),
  how_heard character varying(50),
  creative character varying(1000),
  utm_source character varying(1000),
  utm_medium character varying(1000),
  utm_content character varying(1000),
  utm_campaign character varying(1000),
  utm_device character varying(1000),
  utm_phone character varying(25),
  utm_term character varying(1000),
  utm_matchtype character varying(50),
  utm_network character varying(100),
  utm_adposition character varying(100),
  middle_name character varying(25),
  gender character varying(40),
  date_of_birth character varying(15),
  license_number character varying(50),
  license_state character varying(15),
  emergency_contact character varying(25),
  emergency_number character varying(25),
  relation_applicant character varying(50),
  emergency_address character varying(1000),
  emergency_city character varying(25),
  emergency_state character varying(15),
  emergency_zip character varying(15),
  veteran character varying(1000),
  disabled character varying(500),
  citizen character varying(25),
  marital_status character varying(10),
  race character varying(1000),
  other_race character varying(1000),
  transportation character varying(500),
  class_time_pref character varying(100),
  hs_name character varying(50),
  hs_address character varying(1000),
  hs_city character varying(25),
  hs_state character varying(20),
  hgs_zip character varying(15),
  grad_date character varying(15),
  initials character varying(15),
  dob character varying(15),
  inquiry_type character varying(50),
  middle_initial character varying(50),
  ewc_time character varying(15),
  contact_method character varying(500),
  interest character varying(1000),
  comments character varying(2000),
  graduation_year character varying(50),
  channel character varying(50),
  consent_flag character varying(50),
  urlus character varying(150),
  how_hear character varying(15),
  registered_nurse character varying(100),
  unrestricted_usnursing_license character varying(100),
  dateof_license_received character varying(100),
  program_code character varying(200),
  graduation_month character varying(50),
  status character varying(150),
  cookie_id character varying(100),
  cid character varying(100),
  "eduLevel" character varying(100),
  utm_key_match character varying(100),
  affiliate_id integer,
  affiliate_name character varying(50),
  utm_ad_position character varying(50),
  sub_affiliate_id integer,
  sub_affiliate_name character varying(50),
  phone_cell character varying(25),
  buyer_lead_id character varying(50),
  phone_work character varying(25),
  CONSTRAINT ck_leads_by_buyer_pkey2 PRIMARY KEY (transaction_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE ck_leads_by_buyer
  OWNER TO postgres;
GRANT ALL ON TABLE ck_leads_by_buyer TO application;

-- Table: ck_leads_by_affiliates

-- DROP TABLE ck_leads_by_affiliates;

CREATE TABLE ck_leads_by_affiliates
(
  publisher_id integer,
  publisher_name character varying(100),
  campaign_id integer,
  campaign_name character varying(100),
  advertiser_id integer,
  advertiser_name character varying(100),
  contract_id integer,
  creative_id integer,
  creative_name integer,
  lead_id integer NOT NULL,
  unique_id character varying(50),
  first_name character varying(50),
  last_name character varying(50),
  state character varying(20),
  zip_code character varying(20),
  email_address character varying(100),
  phone_home character varying(25),
  ip_address character varying(25),
  subpublisher_id integer,
  subid_1 character varying(200),
  user_agent character varying(1000),
  lead_date timestamp(6) without time zone,
  vertical_id integer,
  vertical_name character varying(200),
  vertical_data integer,
  test integer,
  sellable integer,
  approved integer,
  rejected integer,
  thrownout integer,
  paid integer,
  pixel_dropped integer,
  throttled integer,
  price_owed real,
  price_received real,
  returned integer,
  education_completed character varying(1000),
  program character varying(3000),
  lid1 character varying(2000),
  lid2 character varying(2000),
  lid3 character varying(2000),
  lid4 character varying(2000),
  lid5 character varying(2000),
  lid6 character varying(2000),
  lid10 character varying(2000),
  lid11 character varying(2000),
  lb_creative character varying(2000),
  respondent_id character varying(50),
  adkey character varying(2000),
  ckm_campaign_id character varying(2000),
  ckm_key character varying(2000),
  ewc1 character varying(2000),
  mobile1 character varying(30),
  text_opt1 character varying(3000),
  ewc_date1 character varying(50),
  universal_lead_id character varying(100),
  high_school_grad_year character varying(50),
  country_citizenship character varying(50),
  "militaryStatus" character varying(100),
  location character varying(500),
  ewc character varying(2000),
  ewc_date character varying(50),
  is_job_sourced character varying(50),
  is_call_center_sourced character varying(50),
  student_id character varying(50),
  lead_date1 character varying(50),
  status character varying(500),
  cookie_id character varying(1000),
  cid character varying(1000),
  utm_source character varying(1000),
  utm_medium character varying(1000),
  utm_content character varying(1000),
  utm_term character varying(1000),
  utm_device character varying(1000),
  "eduLevel" character varying(1000),
  sms_optin_flag character varying(1000),
  are_you_anrn character varying(100),
  enroll_time character varying(100),
  graduation_year character varying(35),
  channel character varying(1000),
  consent_flag character varying(50),
  urlus character varying(500),
  how_hear character varying(250),
  registered_nurse character varying(50),
  unrestricted_usnursing_license character varying(50),
  geo_region character varying(1000),
  lead_source character varying(1000),
  format character varying(1000),
  lead_type character varying(1000),
  how_heard character varying(500),
  glue_id character varying(500),
  text_opt character varying(1000),
  graduation_month character varying(50),
  program_code character varying(1000),
  country character varying(20),
  traffic_source character varying(1000),
  job_related_traffic character varying(1000),
  creative character varying(1000),
  utm_campaign character varying(1000),
  utm_phone character varying(1000),
  utm_matchtype character varying(1000),
  utm_network character varying(1000),
  utm_adposition character varying(1000),
  job_traffic_supplier_name character varying(1000),
  interest character varying(1000),
  comments character varying(3000),
  dateof_license_received character varying(1000),
  best_time_tocall character varying(500),
  "addressLine2" character varying(2000),
  source_code character varying(2000),
  testcase character varying(100),
  safesoft_id character varying(100),
  computer character varying(1000),
  education character varying(1000),
  vafund character varying(1000),
  rep character varying(1000),
  grad_year character varying(50),
  client_source_code character varying(1000),
  call_center_source character varying(1000),
  job_site_source character varying(1000),
  middle_name character varying(50),
  gender character varying(50),
  date_of_birth character varying(50),
  license_number character varying(100),
  license_state character varying(50),
  emergency_contact character varying(50),
  emergency_number character varying(50),
  relation_applicant character varying(1000),
  emergency_address character varying(1000),
  emergency_city character varying(100),
  emergency_state character varying(50),
  emergency_zip character varying(50),
  veteran character varying(1000),
  disabled character varying(1000),
  citizen character varying(1000),
  marital_status character varying(500),
  race character varying(2000),
  other_race character varying(3000),
  transportation character varying(1000),
  class_time_pref character varying(500),
  hs_name character varying(500),
  hs_address character varying(1000),
  hs_city character varying(100),
  hs_state character varying(50),
  hgs_zip character varying(50),
  grad_date character varying(50),
  initials character varying(50),
  education_objective character varying(1000),
  contact_method character varying(1000),
  comment character varying(3000),
  online_interest character varying(1000),
  receive_text character varying(2000),
  ewc_time character varying(50),
  dob character varying(50),
  start_date character varying(50),
  inquiry_type character varying(100),
  middle_initial character varying(10),
  rn_license character varying(1000),
  bsn_nurse character varying(1000),
  hs_attend character varying(1000),
  address2 character varying(1000),
  military_affiliation character varying(1000),
  date_degree_completed character varying(500),
  student_visa_required character varying(500),
  inquired_before character varying(500),
  utm_key_match character varying(1000),
  utm_ad_position character varying(1000),
  fb_lead_id character varying(100),
  term_year character varying(50),
  job_site_source_name character varying(500),
  preassigned_ada character varying(500),
  omp_offer character varying(1000),
  mobile_phone character varying(50),
  lid7 character varying(2000),
  lid8 character varying(2000),
  lid9 character varying(2000),
  lid12 character varying(2000),
  vertical_fields character varying(50000),
  address character varying(2000),
  city character varying(100),
  reason_name character varying(500),
  phone_cell character varying(25),
  phone_work character varying(25),
  CONSTRAINT ck_leads_by_affiliates_pkey1 PRIMARY KEY (lead_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE ck_leads_by_affiliates
  OWNER TO postgres;
GRANT ALL ON TABLE ck_leads_by_affiliates TO application;

-- Table: ck_posts

-- DROP TABLE ck_posts;

CREATE TABLE ck_posts
(
  post_data json,
  response_date date
)
WITH (
  OIDS=FALSE
);
ALTER TABLE ck_posts
  OWNER TO postgres;
GRANT ALL ON TABLE ck_posts TO application;













