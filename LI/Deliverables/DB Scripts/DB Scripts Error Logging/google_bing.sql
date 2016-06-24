-- Table: adw_acc_perf_report_1

-- DROP TABLE adw_acc_perf_report_1;

CREATE TABLE adw_acc_perf_report_1
(
  client_id character varying(20),
  account character varying(50) NOT NULL,
  currency character varying(10),
  time_zone character varying(50),
  can_manage_clients character varying(10),
  client_name character varying(50),
  customer_id character varying(20),
  auto_tagging_enabled character varying(10),
  test_account character varying(10),
  company_name character varying(50),
  active_view_avg_cpm character varying(15),
  active_view_viewable_impressions character varying(15),
  avg_cpc character varying(15),
  avg_cpm character varying(15),
  avg_position character varying(10),
  click_conversion_rate character varying(10),
  clicks character varying(10),
  content_lost_is_budget character varying(10),
  content_impr_share character varying(10),
  content_lost_is_rank character varying(10),
  total_conv_value character varying(50),
  converted_clicks character varying(10),
  cost character varying(20),
  cost_converted_click character varying(20),
  ctr character varying(20),
  impressions character varying(10),
  invalid_click_rate character varying(10),
  invalid_clicks character varying(10),
  search_lost_is_budget character varying(10),
  search_exact_match_is character varying(20),
  search_impr_share character varying(20),
  search_lost_is_rank character varying(20),
  value_converted_click character varying(10),
  view_through_conv character varying(10),
  date timestamp(6) without time zone NOT NULL,
  CONSTRAINT adw_acc_perf_report_1_pkey PRIMARY KEY (account, date)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_acc_perf_report_1
  OWNER TO postgres;
  
GRANT ALL ON TABLE adw_acc_perf_report_1 TO application;
    
-- Table: adw_acc_perf_report_2

-- DROP TABLE adw_acc_perf_report_2;

CREATE TABLE adw_acc_perf_report_2
(
  client_id character varying(20) NOT NULL,
  account character varying(50) NOT NULL,
  conversion_type character varying(50),
  conversion_category character varying(50),
  conversion_tracker_id character varying(50),
  date timestamp(6) without time zone NOT NULL,
  CONSTRAINT adw_acc_perf_report_2_pkey PRIMARY KEY (client_id, account, date)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_acc_perf_report_2
  OWNER TO postgres;
GRANT ALL ON TABLE adw_acc_perf_report_2 TO application;

-- Table: adw_ad_perf_report_config

-- DROP TABLE adw_ad_perf_report_config;

CREATE TABLE adw_ad_perf_report_config
(
  client_id character varying NOT NULL,
  ad_id numeric(19,0) NOT NULL,
  account character varying(50) NOT NULL,
  ad_group_id numeric(19,0) NOT NULL,
  ad_group character varying(50),
  campaign_id numeric(19,0) NOT NULL,
  campaign character varying(50),
  destination_url character varying(500),
  final_url character varying(500),
  tracking_template character varying(500),
  custom_parameter character varying(100),
  customer_id numeric(19,0),
  date character varying(10) NOT NULL,
  CONSTRAINT adw_ad_perf_report_config_pkey PRIMARY KEY (client_id, ad_id, account, ad_group_id, campaign_id, date)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_ad_perf_report_config
  OWNER TO postgres;
GRANT ALL ON TABLE adw_ad_perf_report_config TO application;

-- Table: adw_ad_performance_report_1

-- DROP TABLE adw_ad_performance_report_1;

CREATE TABLE adw_ad_performance_report_1
(
  client_id character varying(50) NOT NULL,
  account character varying(50),
  campaign_id character varying(11) NOT NULL,
  campaign character varying(50),
  ad_group_id bigint NOT NULL,
  ad_group character varying(50),
  ad_id bigint NOT NULL,
  ad character varying(100),
  currency character varying(50),
  time_zone character varying(50),
  active_view_average_cpm character varying(11),
  "active_View_viewable_impressions" character varying(11),
  disapproval_reasons character varying(500),
  ad_group_state character varying(50),
  ad_type character varying(50),
  avg_cpm character varying(19),
  avg_position character varying(20),
  campaign_state character varying(50),
  click_conversion_rate character varying(50),
  clicks character varying(11),
  total_conv_value character varying(20),
  converted_clicks character varying(11),
  cost character varying(11),
  cost_converted_click character varying(11),
  ad_approval_status character varying(50),
  destination_url character varying(2000),
  app_final_url character varying(2000),
  mobile_final_url character varying(2000),
  final_url character varying(2000),
  tracking_template character varying(2000),
  custom_parameter character varying(2000),
  ctr character varying(50),
  client_name character varying(50),
  description_line_1 character varying(50),
  description_line_2 character varying(50),
  device_preference character varying(50),
  display_url character varying(2000),
  customer_id character varying(20),
  gmail_forwards character varying(11),
  gmail_saves character varying(11),
  gmail_clicks_to_website character varying(11),
  image_ad_url character varying(2000),
  image_ad_name character varying(100),
  impressions character varying(11),
  is_negative character varying(20),
  label_ids character varying(100),
  labels character varying(100),
  company_name character varying(200),
  ad_state character varying(50),
  trademarks character varying(50),
  value_converted_click character varying(20),
  view_through_conv character varying(20),
  date timestamp(6) without time zone NOT NULL,
  keyword_id character varying(50) NOT NULL,
  device character varying(50) NOT NULL,
  top_vs_other character varying(50) NOT NULL,
  CONSTRAINT adw_ad_performance_report_1_pkey PRIMARY KEY (client_id, campaign_id, ad_group_id, ad_id, date, keyword_id, device, top_vs_other)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_ad_performance_report_1
  OWNER TO postgres;
GRANT ALL ON TABLE adw_ad_performance_report_1 TO application;


-- Table: adw_ad_performance_report_2

-- DROP TABLE adw_ad_performance_report_2;

CREATE TABLE adw_ad_performance_report_2
(
  client_id character varying(20) NOT NULL,
  ad_group_id bigint NOT NULL,
  campaign_id integer NOT NULL,
  ad_id bigint NOT NULL,
  click_conersion_rate character varying(50),
  ace_indicator character varying(50),
  converted_clicks_ace_indicator character varying(50),
  cost_per_converted_click_ace_indicator character varying(50),
  "cost_Ace_indicator" character varying(50),
  cpc_ace_indicator character varying(50),
  cpm_ace_indicator character varying(50),
  ctr_ace_indicator character varying(50),
  impressions_ace_indicator character varying(50),
  positions_ace_indicator character varying(50),
  view_through_conv_ace_indicator character varying(50),
  date timestamp(6) without time zone NOT NULL,
  keyword_id character varying(50) NOT NULL,
  device character varying(50) NOT NULL,
  top_vs_other character varying(50) NOT NULL,
  CONSTRAINT adw_ad_performance_report_2_pkey PRIMARY KEY (client_id, ad_group_id, campaign_id, ad_id, date, keyword_id, device, top_vs_other)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_ad_performance_report_2
  OWNER TO postgres;
GRANT ALL ON TABLE adw_ad_performance_report_2 TO application;

-- Table: adw_ad_performance_report_3

-- DROP TABLE adw_ad_performance_report_3;

CREATE TABLE adw_ad_performance_report_3
(
  client_id character varying(20) NOT NULL,
  ad_group_id bigint NOT NULL,
  campaign_id integer NOT NULL,
  ad_id bigint NOT NULL,
  conversion_category character varying(50),
  conversion_type character varying(50),
  conversion_tracker_id character varying(50),
  date timestamp(6) without time zone NOT NULL,
  keyword_id character varying(50) NOT NULL,
  device character varying(50) NOT NULL,
  top_vs_other character varying(50) NOT NULL,
  CONSTRAINT adw_ad_performance_report_3_pkey PRIMARY KEY (client_id, ad_group_id, campaign_id, ad_id, date, keyword_id, device, top_vs_other)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_ad_performance_report_3
  OWNER TO postgres;
GRANT ALL ON TABLE adw_ad_performance_report_3 TO application;

-- Table: adw_click_performance_report

-- DROP TABLE adw_click_performance_report;

CREATE TABLE adw_click_performance_report
(
  client_id character varying(20) NOT NULL,
  google_click_id character varying(150) NOT NULL,
  account character varying(25),
  ad_type character varying(30),
  ad_group_id bigint,
  ad_group character varying(80),
  ad_group_state character varying(80),
  network character varying(80),
  network_with_search_partners character varying(80),
  campaign_id integer,
  campaign character varying(70),
  campaign_state character varying(30),
  city character varying(30),
  click_type character varying(30),
  "country_Territory" character varying(30),
  ad_id bigint,
  keyword_id bigint,
  device character varying(70),
  customer_id character varying(80),
  keyword_placement character varying(100),
  metro_area character varying(80),
  month_of_year character varying(80),
  page character varying(80),
  region character varying(80),
  top_vs_other character varying(80),
  user_list_id character varying(80),
  date timestamp(6) without time zone NOT NULL,
  CONSTRAINT adw_click_performance_report_pkey PRIMARY KEY (client_id, google_click_id, date)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_click_performance_report
  OWNER TO postgres;
GRANT ALL ON TABLE adw_click_performance_report TO application;

-- Table: adw_dest_url

-- DROP TABLE adw_dest_url;

CREATE TABLE adw_dest_url
(
  client_id character varying(20) NOT NULL,
  account character varying(500),
  ad_group_id numeric(19,0) NOT NULL,
  ad_group character varying(500),
  campaign_id numeric(19,0) NOT NULL,
  campaign character varying(500),
  destination_url character varying(500) NOT NULL,
  ext_customer_id numeric(19,0),
  CONSTRAINT adw_dest_url_pkey PRIMARY KEY (client_id, ad_group_id, campaign_id, destination_url)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_dest_url
  OWNER TO postgres;
GRANT ALL ON TABLE adw_dest_url TO application;

-- Table: adw_dest_url_criteria

-- DROP TABLE adw_dest_url_criteria;

CREATE TABLE adw_dest_url_criteria
(
  client_id character varying(20) NOT NULL,
  account character varying(17) NOT NULL,
  ad_group_id numeric(19,0) NOT NULL,
  ad_group character varying(15),
  campaign_id numeric(19,0) NOT NULL,
  campaign character varying(23),
  keyword_placement character varying(35),
  destination_url character varying(158) NOT NULL,
  ext_customer_id numeric(19,0),
  CONSTRAINT adw_dest_url_criteria_pkey PRIMARY KEY (client_id, account, ad_group_id, campaign_id, destination_url)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_dest_url_criteria
  OWNER TO postgres;
GRANT ALL ON TABLE adw_dest_url_criteria TO application;

-- Table: adw_kw_perf_report_1

-- DROP TABLE adw_kw_perf_report_1;

CREATE TABLE adw_kw_perf_report_1
(
  client_id character varying(20) NOT NULL,
  keyword_id numeric(20,0) NOT NULL,
  currency character varying(10),
  account character varying(30),
  time_zone character varying(50),
  ad_group_id numeric(20,0),
  ad_group character varying(100),
  ad_group_state character varying(20),
  approval_status character varying(20),
  bid_strategy_id character varying(10),
  bid_strategy_name character varying(50),
  bid_strategy_type character varying(50),
  conversion_optimizer_bid_type character varying(50),
  campaign_id character varying(11),
  campaign character varying(50),
  campaign_state character varying(20),
  max_cpc character varying(20),
  max_cpc_source character varying(20),
  max_cpm character varying(20),
  keyword character varying(100),
  destination_url character varying(350),
  client_name character varying(100),
  enhanced_cpc_enabled character varying(20),
  customer_id character varying(10),
  app_final_url character varying(350),
  mobile_final_url character varying(350),
  final_url character varying(350),
  first_page_cpc character varying(11),
  is_negative character varying(20),
  match_type character varying(20),
  label_ids character varying(20),
  labels character varying(20),
  company_name character varying(100),
  quality_score character varying(10),
  keyword_state character varying(20),
  top_of_page_cpc character varying(20),
  tracking_template character varying(200),
  custom_parameter character varying(200),
  active_view_avg_cpm character varying(11),
  active_view_viewable_impressions character varying(11),
  avg_cpc character varying(20),
  avg_cpm character varying(20),
  avg_position character varying(20),
  click_conversion_rate character varying(20),
  clicks character varying(20),
  total_conv_value character varying(20),
  converted_clicks character varying(20),
  cost character varying(20),
  ctr character varying(20),
  gmail_forwards character varying(11),
  gmail_saves character varying(11),
  gmail_clicks_to_website character varying(11),
  impressions character varying(11),
  value_converted_click character varying(20),
  view_through_conv character varying(11),
  date timestamp without time zone NOT NULL,
  top_vs_other character varying(100) NOT NULL,
  device character varying(100) NOT NULL,
  CONSTRAINT adw_kw_perf_report_1_pkey PRIMARY KEY (client_id, keyword_id, date, top_vs_other, device)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_kw_perf_report_1
  OWNER TO postgres;
GRANT ALL ON TABLE adw_kw_perf_report_1 TO application;


-- Table: adw_kw_perf_report_2

-- DROP TABLE adw_kw_perf_report_2;

CREATE TABLE adw_kw_perf_report_2
(
  client_id character varying(20) NOT NULL,
  keyword_id numeric(20,0) NOT NULL,
  ad_group_id numeric(20,0),
  click_conversion_rate_ace_indicator character varying(50),
  clicks_ace_indicator character varying(50),
  converted_clicks_ace_indicator character varying(50),
  cost_converted_click_ace_indicator character varying(50),
  cost_ace_indicator character varying(50),
  cpc_ace_indicator character varying(50),
  cpm_ace_indicator character varying(50),
  ctr_ace_indicator character varying(50),
  impressions_ace_indicator character varying(50),
  position_ace_indicator character varying(50),
  view_through_conv_ace_indicator character varying(50),
  date timestamp(6) without time zone NOT NULL,
  top_vs_other character varying(100) NOT NULL,
  device character varying(100) NOT NULL,
  CONSTRAINT adw_kw_perf_report_2_pkey PRIMARY KEY (client_id, keyword_id, date, top_vs_other, device)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_kw_perf_report_2
  OWNER TO postgres;
GRANT ALL ON TABLE adw_kw_perf_report_2 TO application;

-- Table: adw_kw_perf_report_3

-- DROP TABLE adw_kw_perf_report_3;

CREATE TABLE adw_kw_perf_report_3
(
  client_id character varying(20) NOT NULL,
  keyword_id numeric(20,0) NOT NULL,
  ad_group_id numeric(20,0),
  conversion_type_name character varying(50),
  conversion_category character varying(50),
  conversion_tracker_id character varying(50),
  date timestamp(6) without time zone NOT NULL,
  top_vs_other character varying(100) NOT NULL,
  device character varying(100) NOT NULL,
  CONSTRAINT adw_kw_perf_report_3_pkey PRIMARY KEY (client_id, keyword_id, date, top_vs_other, device)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_kw_perf_report_3
  OWNER TO postgres;
GRANT ALL ON TABLE adw_kw_perf_report_3 TO application;

-- Table: adw_search_query_performance_report

-- DROP TABLE adw_search_query_performance_report;

CREATE TABLE adw_search_query_performance_report
(
  client_id character varying(20) NOT NULL,
  ad_group_id bigint NOT NULL,
  campaign_id integer NOT NULL,
  ad_id bigint NOT NULL,
  customer_id character varying(20),
  keyword_id bigint NOT NULL,
  search_term character varying(500) NOT NULL,
  currency character varying(3),
  account character varying(100),
  time_zone character varying(24),
  ad_group character varying(100),
  ad_group_state character varying(100),
  campaign character varying(100),
  campaign_state character varying(100),
  client_name character varying(100),
  destination_url character varying(1000),
  final_url character varying(1000),
  keyword character varying(200),
  company_name character varying(100),
  avg_cpc character varying(20),
  avg_cpm character varying(20),
  avg_position character varying(20),
  click_conversion_rate character varying(20),
  clicks character varying(20),
  total_conv_value character varying(20),
  converted_clicks character varying(20),
  cost character varying(20),
  cost_converted_click character varying(20),
  ctr character varying(20),
  impressions character varying(20),
  value_converted_click character varying(20),
  view_through_conv character varying(20),
  date timestamp(6) without time zone NOT NULL,
  CONSTRAINT adw_search_query_performance_report_pkey PRIMARY KEY (client_id, ad_group_id, campaign_id, ad_id, keyword_id, search_term, date)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_search_query_performance_report
  OWNER TO postgres;
GRANT ALL ON TABLE adw_search_query_performance_report TO application;

-- Table: adw_search_query_performance_report_1

-- DROP TABLE adw_search_query_performance_report_1;

CREATE TABLE adw_search_query_performance_report_1
(
  client_id character varying(20) NOT NULL,
  "Ad_group_ID" bigint NOT NULL,
  "Conversion_Tracker_Id" integer,
  "Campaign_ID" integer NOT NULL,
  "Ad_ID" bigint NOT NULL,
  "Customer_ID" character varying(20),
  "Keyword_ID" bigint NOT NULL,
  "Search_term" character varying(500) NOT NULL,
  "Conversion_name" character varying(50),
  "Day" timestamp(6) without time zone NOT NULL,
  CONSTRAINT adw_search_query_performance_report_1_pkey PRIMARY KEY (client_id, "Ad_group_ID", "Campaign_ID", "Ad_ID", "Keyword_ID", "Search_term", "Day")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adw_search_query_performance_report_1
  OWNER TO postgres;
GRANT ALL ON TABLE adw_search_query_performance_report_1 TO application;

-- Table: bing_ad_performance_report

-- DROP TABLE bing_ad_performance_report;

CREATE TABLE bing_ad_performance_report
(
  account_name character varying(100),
  account_number character varying(50),
  account_id character varying(50) NOT NULL,
  campaign_name character varying(200),
  campaign_id character varying(50) NOT NULL,
  ad_group_name character varying(200),
  ad_id character varying(50) NOT NULL,
  ad_group_id character varying(50) NOT NULL,
  ad_title character varying(50),
  ad_description character varying(500),
  ad_type character varying(100) NOT NULL,
  currency_code character varying(100),
  ad_distribution character varying(500) NOT NULL,
  impressions character varying(50),
  clicks character varying(50),
  ckr character varying(100),
  average_cpc character varying(50),
  spend character varying(50),
  average_position character varying(50),
  conversions character varying(50),
  conversion_rate character varying(50),
  cost_per_conversion character varying(50),
  average_cpm character varying(50),
  pricing_model character varying(50) NOT NULL,
  destination_url character varying(5000),
  language character varying(200) NOT NULL,
  display_url character varying(100),
  business_listing_id character varying(50),
  business_listing_name character varying(50),
  business_cat_id character varying(50),
  business_cat_name character varying(50),
  ad_status character varying(50),
  network character varying(50) NOT NULL,
  top_vs_other character varying(100) NOT NULL,
  bidded_match_type character varying(100) NOT NULL,
  match_type character varying(50) NOT NULL,
  device_os character varying(50) NOT NULL,
  assists character varying(50),
  extended_cost character varying(50),
  revenue character varying(50),
  return_on_ad_spend character varying(50),
  cost_per_assist character varying(50),
  revenue_per_conversion character varying(50),
  revenue_per_assist character varying(50),
  tracking_template character varying(500),
  final_url character varying(100),
  final_mobile_url character varying(100),
  final_app_url character varying(100),
  gregorian_date character varying(50) NOT NULL,
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






















