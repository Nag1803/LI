-- Table: bing_ad_grps

-- DROP TABLE bing_ad_grps;

CREATE TABLE bing_ad_grps
(
  account_id character varying(100) NOT NULL,
  adstatus character varying(50),
  id character varying(50) NOT NULL,
  parent_id character varying(50) NOT NULL,
  subtype character varying(50),
  campaign character varying(200),
  ad_group character varying(50),
  website character varying(200),
  sync_time character varying(50),
  client_id character varying(50),
  modified_time character varying(50),
  tracking_template character varying(2000),
  custom_parameters character varying(50),
  final_url character varying(25),
  mobile_url character varying(50),
  time_zone character varying(50),
  budget character varying(50),
  budget_type character varying(50),
  keyword_variant_match_enabled character varying(100),
  campaign_type character varying(50),
  priority character varying(50),
  start_date character varying(50),
  end_date character varying(500),
  network_distribution character varying(500),
  pricing_model character varying(200),
  ad_rotation character varying(200),
  search_network character varying(50),
  search_bid character varying(50),
  content_network character varying(50),
  content_bid character varying(50),
  language character varying(50),
  title character varying(200),
  text character varying(200),
  display_url character varying(500),
  destination_url character varying(5000),
  business_name character varying(500),
  phone_no character varying(500),
  promotion character varying(500),
  editorial_status character varying(500),
  editorial_loc character varying(500),
  editorial_term character varying(500),
  editorial_reasoncode character varying(500),
  editorial_appeal_status character varying(500),
  device_preferance character varying(500),
  keyword character varying(500),
  match_type character varying(500),
  bid character varying(500),
  param1 character varying(500),
  param2 character varying(500),
  param3 character varying(500),
  target character varying(500),
  physical_intent character varying(500),
  bid_adjustment character varying(500),
  radius_target character varying(500),
  name character varying(500),
  CONSTRAINT bing_ad_grps_pkey PRIMARY KEY (account_id, id, parent_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE bing_ad_grps
  OWNER TO postgres;
GRANT ALL ON TABLE bing_ad_grps TO application;


-- Table: bing_ads

-- DROP TABLE bing_ads;

CREATE TABLE bing_ads
(
  account_id character varying(100) NOT NULL,
  adstatus character varying,
  id character varying(50) NOT NULL,
  parent_id character varying(50) NOT NULL,
  subtype character varying(50),
  campaign character varying(200) NOT NULL,
  ad_group character varying(50) NOT NULL,
  website character varying(200),
  sync_time character varying(50),
  client_id character varying(50),
  modified_time character varying(50),
  tracking_template character varying(2000),
  custom_parameters character varying(50),
  final_url character varying(25),
  mobile_url character varying(50),
  time_zone character varying(50),
  budget character varying(50),
  budget_type character varying(50),
  keyword_variant_match_enabled character varying(100),
  campaign_type character varying(50),
  priority character varying(50),
  start_date character varying(50),
  end_date character varying(500),
  network_distribution character varying(500),
  pricing_model character varying(200),
  ad_rotation character varying(200),
  search_network character varying(50),
  search_bid character varying(50),
  content_network character varying(50),
  content_bid character varying(50),
  language character varying(50),
  title character varying(200),
  text character varying(200),
  display_url character varying(500),
  destination_url character varying(5000),
  business_name character varying(20),
  phone_no character varying(20),
  promotion character varying(20),
  editorial_status character varying(20),
  editorial_loc character varying(20),
  editorial_term character varying(20),
  editorial_reasoncode character varying(20),
  editorial_appeal_status character varying(20),
  device_preferance character varying(20),
  keyword character varying(20),
  CONSTRAINT bing_ads_pkey PRIMARY KEY (account_id, id, parent_id, campaign, ad_group)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE bing_ads
  OWNER TO postgres;
GRANT ALL ON TABLE bing_ads TO application;


-- Table: bing_campaigns

-- DROP TABLE bing_campaigns;

CREATE TABLE bing_campaigns
(
  adstatus character varying,
  id character varying(50) NOT NULL,
  parent_id character varying(50) NOT NULL,
  subtype character varying(50),
  campaign character varying(200),
  ad_group character varying(50),
  website character varying(200),
  sync_time character varying(50),
  client_id character varying(50),
  modified_time character varying(50),
  tracking_template character varying(2000),
  custom_parameters character varying(50),
  final_url character varying(25),
  mobile_url character varying(50),
  time_zone character varying(50),
  budget character varying(50),
  budget_type character varying(50),
  keyword_variant_match_enabled character varying(100),
  campaign_type character varying(50),
  priority character varying(50),
  start_date character varying(50),
  end_date character varying(500),
  network_distribution character varying(500),
  pricing_model character varying(200),
  ad_rotation character varying(200),
  search_network character varying(50),
  search_bid character varying(50),
  content_network character varying(50),
  content_bid character varying(50),
  language character varying(50),
  title character varying(200),
  text character varying(200),
  display_url character varying(500),
  destination_url character varying(5000),
  business_name character varying(20),
  phone_no character varying(20),
  promotion character varying(20),
  editorial_status character varying(20),
  editorial_loc character varying(20),
  editorial_term character varying(20),
  editorial_reasoncode character varying(20),
  editorial_appeal_status character varying(20),
  device_preferance character varying(20),
  keyword character varying(20),
  CONSTRAINT bing_campaigns_pkey PRIMARY KEY (id, parent_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE bing_campaigns
  OWNER TO postgres;
GRANT ALL ON TABLE bing_campaigns TO application;


-- Table: bing_ad_performance_report

-- DROP TABLE bing_ad_performance_report;

CREATE TABLE bing_ad_performance_report
(
  account_name character varying(100),
  account_number character varying(100),
  account_id character varying(100) NOT NULL,
  campaign_name character varying(200),
  campaign_id character varying(100) NOT NULL,
  ad_group_name character varying(200),
  ad_id character varying(100) NOT NULL,
  ad_group_id character varying(100) NOT NULL,
  ad_title character varying(250),
  ad_description character varying(5000),
  ad_type character varying(100) NOT NULL,
  currency_code character varying(100),
  ad_distribution character varying(5000) NOT NULL,
  impressions character varying(100),
  clicks character varying(100),
  ckr character varying(100),
  average_cpc character varying(100),
  spend character varying(500),
  average_position character varying(100),
  conversions character varying(100),
  conversion_rate character varying(100),
  cost_per_conversion character varying(100),
  average_cpm character varying(100),
  pricing_model character varying(100) NOT NULL,
  destination_url character varying(5000),
  language character varying(200) NOT NULL,
  display_url character varying(1000),
  business_listing_id character varying(250),
  business_listing_name character varying(500),
  business_cat_id character varying(500),
  business_cat_name character varying(500),
  ad_status character varying(500),
  network character varying(500) NOT NULL,
  top_vs_other character varying(500) NOT NULL,
  bidded_match_type character varying(500) NOT NULL,
  match_type character varying(500) NOT NULL,
  device_os character varying(500) NOT NULL,
  assists character varying(500),
  extended_cost character varying(500),
  revenue character varying(500),
  return_on_ad_spend character varying(500),
  cost_per_assist character varying(500),
  revenue_per_conversion character varying(500),
  revenue_per_assist character varying(500),
  tracking_template character varying(1000),
  final_url character varying(500),
  final_mobile_url character varying(500),
  final_app_url character varying(500),
  gregorian_date character varying(100) NOT NULL,
  CONSTRAINT bing_ad_performance_report_pkey PRIMARY KEY (account_id, campaign_id, ad_id, ad_group_id, ad_type, ad_distribution, pricing_model, language, network, top_vs_other, bidded_match_type, match_type, device_os, gregorian_date)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE bing_ad_performance_report
  OWNER TO postgres;
GRANT ALL ON TABLE bing_ad_performance_report TO application;


-- Table: bing_keyword_performance_report

-- DROP TABLE bing_keyword_performance_report;

CREATE TABLE bing_keyword_performance_report
(
  account_name character varying(100),
  account_number character varying(50),
  account_id bigint NOT NULL,
  gregorian_date timestamp without time zone NOT NULL,
  campaign_name character varying(100) NOT NULL,
  ad_group_name character varying(100) NOT NULL,
  keyword character varying(500),
  keyword_id numeric(20,0) NOT NULL,
  ad_id numeric(20,0) NOT NULL,
  ad_type character varying(100) NOT NULL,
  destination_url character varying(1000),
  current_max_cpc character varying(20),
  currency_code character varying(10),
  match_type character varying(100) NOT NULL,
  ad_distribution character varying(100) NOT NULL,
  impressions character varying(100),
  clicks character varying(100),
  ctr character varying(100),
  avg_cpc character varying(100),
  spend character varying(100),
  avg_position character varying(100),
  conversions character varying(100),
  conversion_rate character varying(100),
  cost_per_conversion character varying(100),
  avg_cpm character varying(100),
  pricing_model character varying(100) NOT NULL,
  bidded_match_type character varying(100) NOT NULL,
  device_type character varying(100) NOT NULL,
  quality_score character varying(100),
  quality_impact character varying(100),
  keyword_relevance character varying(100),
  landing_page_relevance character varying(100),
  landing_page_user_exp character varying(100),
  language character varying(100) NOT NULL,
  hist_quality_score character varying(100),
  hist_keyword_relevance character varying(100),
  hist_landing_page_relevance character varying(100),
  hist_landing_page_user_exp character varying(100),
  business_listing_id character varying(100),
  business_listing_name character varying(100),
  business_cat_id character varying(100),
  business_cat_name character varying(100),
  campaign_status character varying(100),
  account_status character varying(100),
  ad_group_status character varying(100),
  keyword_status character varying(100),
  network character varying(100) NOT NULL,
  top_vs_other character varying(100) NOT NULL,
  device_os character varying(100) NOT NULL,
  assists character varying(100),
  extended_cost character varying(100),
  revenue character varying(100),
  return_on_ad_spend character varying(100),
  cost_per_assist character varying(100),
  revenue_per_conversion character varying(100),
  revenue_per_assist character varying(100),
  bounde_rate character varying(100),
  total_visits character varying(100),
  avg_pages_per_visit character varying(100),
  avg_duration_per_visit character varying(100),
  tracking_template character varying(500),
  custom_parameters character varying(500),
  final_url character varying(1000),
  final_mobile_url character varying(1000),
  final_app_url character varying(1000),
  CONSTRAINT bing_keyword_performance_report_pkey PRIMARY KEY (account_id, gregorian_date, campaign_name, ad_group_name, keyword_id, ad_id, ad_type, match_type, ad_distribution, pricing_model, bidded_match_type, device_type, language, network, top_vs_other, device_os)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE bing_keyword_performance_report
  OWNER TO postgres;
GRANT ALL ON TABLE bing_keyword_performance_report TO application;


-- Table: bing_search_query_performance

-- DROP TABLE bing_search_query_performance;

CREATE TABLE bing_search_query_performance
(
  account_name character varying(100),
  account_number character varying(50),
  account_id character varying(50) NOT NULL,
  gregorian_date character varying(50) NOT NULL,
  campaign_name character varying(200),
  campaign_id character varying(50) NOT NULL,
  ad_group_name character varying(200),
  ad_group_id character varying(50) NOT NULL,
  ad_id character varying(50) NOT NULL,
  ad_type character varying(50) NOT NULL,
  destination_url character varying(2000),
  bidded_match_type character varying(50) NOT NULL,
  match_type character varying(25) NOT NULL,
  status character varying(50),
  ad_status character varying(50),
  impressions character varying(50),
  clicks character varying(50),
  ckr character varying(100),
  average_cpc character varying(50),
  spend character varying(50),
  average_position character varying(50),
  search_query character varying(500) NOT NULL,
  keyword character varying(500),
  product_target character varying(200),
  ad_group_criterion_id character varying(200),
  conversions character varying(50),
  conversion_rate character varying(50),
  cost_per_conversion character varying(50),
  language character varying(50) NOT NULL,
  keyword_id character varying(50) NOT NULL,
  network character varying(200) NOT NULL,
  top_vs_other character varying(200) NOT NULL,
  device_type character varying(25) NOT NULL,
  device_os character varying(25) NOT NULL,
  assists character varying(20),
  extended_cost character varying(20),
  revenue character varying(20),
  return_on_ad_spend character varying(20),
  cost_per_assist character varying(20),
  revenue_per_conversion character varying(20),
  revenue_per_assist character varying(20),
  CONSTRAINT bing_search_query_performance_pkey PRIMARY KEY (account_id, gregorian_date, campaign_id, ad_group_id, ad_id, ad_type, bidded_match_type, match_type, search_query, language, keyword_id, network, top_vs_other, device_type, device_os)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE bing_search_query_performance
  OWNER TO postgres;
GRANT ALL ON TABLE bing_search_query_performance TO application;





