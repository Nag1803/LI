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
-- Name: source; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE source (
    source_id integer NOT NULL,
    source_name character varying(50),
    active boolean
);


ALTER TABLE source OWNER TO postgres;

--
-- Name: source_source_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE source_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE source_source_id_seq OWNER TO postgres;

--
-- Name: source_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE source_source_id_seq OWNED BY source.source_id;


--
-- Name: source_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY source ALTER COLUMN source_id SET DEFAULT nextval('source_source_id_seq'::regclass);


--
-- Data for Name: source; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO source (source_id, source_name, active) VALUES (1, 'Facebook_Configuration', true);
INSERT INTO source (source_id, source_name, active) VALUES (2, 'Facebook_Performance', true);
INSERT INTO source (source_id, source_name, active) VALUES (3, 'Bing_Configuration', true);
INSERT INTO source (source_id, source_name, active) VALUES (4, 'Bing_Performance', true);
INSERT INTO source (source_id, source_name, active) VALUES (5, 'Cake', true);
INSERT INTO source (source_id, source_name, active) VALUES (6, 'Keen', true);
INSERT INTO source (source_id, source_name, active) VALUES (7, 'Adwords_Configuration', true);
INSERT INTO source (source_id, source_name, active) VALUES (8, 'Adwords_Performance', true);


--
-- Name: source_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('source_source_id_seq', 8, true);


--
-- Name: prim_key_source; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY source
    ADD CONSTRAINT prim_key_source PRIMARY KEY (source_id);


--
-- PostgreSQL database dump complete
--

