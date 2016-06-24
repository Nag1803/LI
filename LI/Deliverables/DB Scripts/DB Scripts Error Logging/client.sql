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
-- Name: client; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE client (
    client_id integer NOT NULL,
    client_name character varying(50),
    active boolean,
    from_email_id character varying(50),
    success_mail_to character varying(50),
    success_mail_to_cc character varying(50),
    failure_mail_to character varying(50),
    failure_mail_to_cc character varying(50)
);


ALTER TABLE client OWNER TO postgres;

--
-- Name: client_client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE client_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE client_client_id_seq OWNER TO postgres;

--
-- Name: client_client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE client_client_id_seq OWNED BY client.client_id;


--
-- Name: client_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY client ALTER COLUMN client_id SET DEFAULT nextval('client_client_id_seq'::regclass);


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (5, 'Crown Castle', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (6, 'NetworkKing', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (7, 'Sherpa Software', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (8, 'IUP', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (9, 'Viawest', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (10, 'Chatham', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (11, 'Sentric', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (12, 'NCU', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (13, 'Kenny Ross', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (14, 'CREA', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (15, 'RiverLife', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (16, 'United Concordia', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (17, 'Level Interactive', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (18, 'Watson', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (19, 'Carnegie Museum of Art', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (20, 'Route 19', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (21, 'Revive BOC', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (28, 'Keen_ProjectId', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (27, 'University Bound', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (26, 'Austin Hardware', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (25, 'Notre Dame', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (24, 'Brookline', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (23, 'Trident', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (22, 'ServiceLink', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (1, 'AMS', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (29, 'Cake_ApiKey', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (2, 'Infinity Homes', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (4, 'Pitt Katz', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');
INSERT INTO client (client_id, client_name, active, from_email_id, success_mail_to, success_mail_to_cc, failure_mail_to, failure_mail_to_cc) VALUES (3, 'NLC Loans', true, 'cybytetech@yahoo.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com');


--
-- Name: client_client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('client_client_id_seq', 29, true);


--
-- Name: prim_key_client; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY client
    ADD CONSTRAINT prim_key_client PRIMARY KEY (client_id);


--
-- PostgreSQL database dump complete
--

