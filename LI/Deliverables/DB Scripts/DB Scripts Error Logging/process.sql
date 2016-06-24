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
-- Name: process; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE process (
    process_id integer NOT NULL,
    process_name character varying(50),
    source_id integer NOT NULL,
    process_desc text,
    active boolean
);


ALTER TABLE process OWNER TO postgres;

--
-- Name: process_process_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE process_process_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE process_process_id_seq OWNER TO postgres;

--
-- Name: process_process_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE process_process_id_seq OWNED BY process.process_id;


--
-- Name: process_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY process ALTER COLUMN process_id SET DEFAULT nextval('process_process_id_seq'::regclass);


--
-- Data for Name: process; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (5, 'FETCH_CONN_OBJECTS', 1, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (7, 'FETCH_ADLABELS', 1, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (8, 'FETCH_ADCREATIVES', 1, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (9, 'FETCH_CUST_AUD', 1, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (10, 'FETCH_TARG_SENTENCE_LINES', 1, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (11, 'FETCH_ADS_INSIGHTS', 2, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (12, 'FETCH_INSIGHTS_PLC_DEV', 2, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (13, 'FETCH_AD_UNIQUE_ACTIONS', 2, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (14, 'LOAD_ADS_UNIQUE_ACTIONS', 2, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (15, 'LOAD_CONN_OBJECTS', 1, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (16, 'LOAD_CREATIVE_RESPONSE', 1, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (17, 'GetAdsInfo', 3, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (18, 'GetAdGrpsInfo', 3, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (19, 'GetCampaignsInfo', 3, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (20, 'bing_ad_perf_report', 4, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (21, 'bing_search_query_perf_report', 4, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (22, 'bing_keyword_performance_report', 4, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (23, 'leads_by_buyers', 5, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (24, 'leads_by_affiliates', 5, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (25, 'cake_posts', 5, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (26, 'keen_collections', 6, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (27, 'keen_event_collections', 6, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (28, 'ACCOUNT_PERFORMANCE_REPORT', 8, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (29, 'KEYWORD_PERFORMANCE_REPORT', 8, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (30, 'DESTINATION_URL_REPORT', 8, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (31, 'AD_PERFORMANCE_REPORT_CONFIG', 8, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (33, 'CLICK_PERFORMANCE_REPORT', 8, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (34, 'SEARCH_QUERY_PERFORMANCE_REPORT', 8, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (1, 'FETCH_AD_ACCOUNTS', 1, 'Fectch the Ad Accounts', true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (2, 'FETCH_ADS', 1, 'Fetch the Ads per each AdAccount', true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (3, 'FETCH_CAMPAIGNS', 1, 'Fetch the Campaigns', true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (4, 'FETCH_ADSETS', 1, 'Fetch AdSets', true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (35, 'ALL_ADWORDS_CLIENTS_LOAD', 8, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (36, 'master_keen_events', 6, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (37, 'master_cake', 5, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (38, 'FETCH_DATA_PER_ACCOUNT', 1, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (39, 'FETCH_INSIGHTS_ALL_ADS', 2, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (6, 'FETCH_USERS', 1, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (40, 'MASTER_BING_PERFORMANCE', 4, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (41, 'MASTER_BING_CONFIG', 3, NULL, true);
INSERT INTO process (process_id, process_name, source_id, process_desc, active) VALUES (32, 'AD_PERFORMANCE_REPORT_TIME_BOUND', 8, NULL, true);


--
-- Name: process_process_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('process_process_id_seq', 41, true);


--
-- Name: prim_key_process; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY process
    ADD CONSTRAINT prim_key_process PRIMARY KEY (process_id);


--
-- PostgreSQL database dump complete
--

