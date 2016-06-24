--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: config_table; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE config_table (
    jobname character varying(50),
    key character varying(50),
    value character varying(500),
    id integer NOT NULL
);


ALTER TABLE config_table OWNER TO postgres;

--
-- Name: config_table_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE config_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE config_table_id_seq OWNER TO postgres;

--
-- Name: config_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE config_table_id_seq OWNED BY config_table.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY config_table ALTER COLUMN id SET DEFAULT nextval('config_table_id_seq'::regclass);


--
-- Data for Name: config_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO config_table (jobname, key, value) VALUES ('cake_api', 'API_KEY', '3ODqKwgJVR3ufgDa9VinTSRZiHffqy');
INSERT INTO config_table (jobname, key, value) VALUES ('bing_api', 'BING_GRANT_CODE', '000000004C18501F');
INSERT INTO config_table (jobname, key, value) VALUES ('bing_api', 'REPORTS_DIR', '/home/ubuntu/stage');
INSERT INTO config_table (jobname, key, value) VALUES ('api_adwords', 'KEY_FILE', '/home/ubuntu/keytest-a2fd1768d1c2.p12');
INSERT INTO config_table (jobname, key, value) VALUES ('cake_api', 'STAGING_DIR_PATH', '/home/ubuntu/stage');
INSERT INTO config_table (jobname, key, value) VALUES ('api_adwords', 'TARGET_DIR_PATH', '/home/ubuntu/target');
INSERT INTO config_table (jobname, key, value) VALUES ('api_facebook', 'STAGING_DIR_PATH', '/home/ubuntu/stage');
INSERT INTO config_table (jobname, key, value) VALUES ('common', 'SMTP_PORT', '465');
INSERT INTO config_table (jobname, key, value) VALUES ('api_facebook', 'LOG_DIR_PATH', '/home/ubuntu/logs');
INSERT INTO config_table (jobname, key, value) VALUES ('api_facebook', 'TARGET_DIR_PATH', '/home/ubuntu/target');
INSERT INTO config_table (jobname, key, value) VALUES ('bing_api', 'PHATOM_JS_PATH', '//home//ubuntu//config_files//phantomjs-2.1.1-linu');
INSERT INTO config_table (jobname, key, value) VALUES ('common', 'SMTP_HOST', 'smtp.mail.yahoo.com');
INSERT INTO config_table (jobname, key, value) VALUES ('cake_api', 'LOG_DIR_PATH', '/home/ubuntu/logs');
INSERT INTO config_table (jobname, key, value) VALUES ('common', 'LOG_DIR_PATH', '/home/ubuntu/logs');
INSERT INTO config_table (jobname, key, value) VALUES ('api_facebook', 'ACCESS_TOKEN', 'CAAENfTjtYu4BAMFV0d7DsJ2MERKrd1L7evtIcZBmxNnYzRo73NZCHZCOgrGAHoCyhiPKoW7BE2MGy7PPRSzBHVZB9uZBBtsIqwxKfDdLGryHVZAksaRhLWVHVsaST29CHQeSAqpiOXN6c8VZCvBc6w4TNJaK0bJ7ZAgG7xRpLUzzYAgdlOvXDNzm');
INSERT INTO config_table (jobname, key, value) VALUES ('api_facebook', 'DATE_RANGE', '&date_preset=last_14_days&time_increment=1');
INSERT INTO config_table (jobname, key, value) VALUES ('cake_api', 'COOKIE', 'welcome_shown=0; .auth8=2E5F2167D01AD0696AD8D5EE30D127D6C2E20BD76D2A06983A65EE5FF99536141FC2AB13F7A6936E03EC9805C7F45CA2DF55831C4AA1A85EBAFB60042FBCCA096D741F24B72107008C2EF77B3F9D5D4C363A99F74D300A89A9487BCE4FA3C19CA3846F953F2D8A8D78E6A5E03C858280BE4C7117AEE647AF19B796BDAED4F143DFFAC621A13B19DB9F9B713C882E7FD40F35B5AB9A26AB7050102AFD3E36A76C358C2EFFD1FD35CE9301CFD3498863E66E2AC1375EE1A28B17B51F598D22E6DFCE69CA415629B002CFC1AF51BF820609; .lat=1455590639574');
INSERT INTO config_table (jobname, key, value) VALUES ('api_adwords', 'SERVICE_EMAIL', 'account-1@celtic-artwork-114606.iam.gserviceaccount.com');
INSERT INTO config_table (jobname, key, value) VALUES ('api_adwords', 'ACC_EMAIL', 'vendor-cybyte@level.agency');
INSERT INTO config_table (jobname, key, value) VALUES ('api_adwords', 'DEV_TOKEN', 'qFtCNUWIqR7IYRtyfdx-CA');
INSERT INTO config_table (jobname, key, value) VALUES ('bing_api', 'BING_ACCOUNT_ID', '34001177');
INSERT INTO config_table (jobname, key, value) VALUES ('api_ion', 'SOURCE_DIR_PATH', '/home/ubuntu/ION');
INSERT INTO config_table (jobname, key, value) VALUES ('cake_api', 'GROUP_DIR', 'ASC');
INSERT INTO config_table (jobname, key, value) VALUES ('cake_api', 'BUYER', '180');
INSERT INTO config_table (jobname, key, value) VALUES ('cake_api', 'POSTS_LIMIT', '50');
INSERT INTO config_table (jobname, key, value) VALUES ('cake_api', 'OFFSET', '1');
INSERT INTO config_table (jobname, key, value) VALUES ('cake_api', 'REPORT_ID', '66');
INSERT INTO config_table (jobname, key, value) VALUES ('cake_api', 'REPORT_VIEW_ID', '66');
INSERT INTO config_table (jobname, key, value) VALUES ('cake_api', 'CONTENT_TYPE', 'application/x-www-form-urlencoded; charset=UTF-8');
INSERT INTO config_table (jobname, key, value) VALUES ('keen_api', 'PROJECT_ID', '55b221a490e4bd410e6bac59');
INSERT INTO config_table (jobname, key, value) VALUES ('keen_api', 'READ_KEY', '972dd7a83f4e2030b45216f258b6efdfead6e8683639b5bf10510e4604ede29740f086bf796de0bd388a57ffb8d5554747d00cf6654df3a50cf2f035245ad767cf18c75a969cfa07e631fcd8b832e2273180db02712c7b6e638a7a38d1b17b57c5d4b872d12adde181caf3fbbb10981c');
INSERT INTO config_table (jobname, key, value) VALUES ('api_ion', 'ARCHIVE_DIR_PATH', '/home/ubuntu/ION/archive');
INSERT INTO config_table (jobname, key, value) VALUES ('common', 'USER_NAME', 'cybytetech@yahoo.com');
INSERT INTO config_table (jobname, key, value) VALUES ('bing_api', 'BING_DEV_TOKEN', '012O4Z346L782203');
INSERT INTO config_table (jobname, key, value) VALUES ('keen_api', 'STAGING_DIR_PATH', '/home/ubuntu/stage');
INSERT INTO config_table (jobname, key, value) VALUES ('keen_api', 'LOG_DIR_PATH', '/home/ubuntu/logs');
INSERT INTO config_table (jobname, key, value) VALUES ('common', 'USER_PASSWORD', 'dsmartsystems');
INSERT INTO config_table (jobname, key, value) VALUES ('keen_api', 'TIME_FRAME', '&timeframe=this_6_days');
INSERT INTO config_table (jobname, key, value) VALUES ('bing_api', 'TIME_PERIOD', 'LAST_THREE_MONTHS');
INSERT INTO config_table (jobname, key, value) VALUES ('bing_api', 'APP_TYPE', 'desktop');
INSERT INTO config_table (jobname, key, value) VALUES ('bing_api', 'STAGING_DIR_PATH', '/home/ubuntu/stage');
INSERT INTO config_table (jobname, key, value) VALUES ('bing_api', 'BING_CAMPAIGN_ID', '127721733');
INSERT INTO config_table (jobname, key, value) VALUES ('bing_api', 'BING_CUSTOMER_ID', '13055485');
INSERT INTO config_table (jobname, key, value) VALUES ('bing_api', 'BING_USER_ID', 'vendor-cybyte@level.agency');
INSERT INTO config_table (jobname, key, value) VALUES ('bing_api', 'BING_PASSWORD', '7oCf8lZW');


--
-- Name: config_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('config_table_id_seq', 51, true);


--
-- Name: pk_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY config_table
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

