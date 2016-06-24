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
-- Name: adwords_clients; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adwords_clients (
    client_id character varying(20),
    active boolean,
    client_name character varying(200)
);


ALTER TABLE adwords_clients OWNER TO postgres;
GRANT ALL ON TABLE adwords_clients TO application;

--
-- Data for Name: adwords_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adwords_clients (client_id, active, client_name) VALUES ('215-537-4594', true, 'LVL- ViaWest');
INSERT INTO adwords_clients (client_id, active, client_name) VALUES ('795-649-7250', true, 'LV - AMS Vans');
INSERT INTO adwords_clients (client_id, active, client_name) VALUES ('746-107-3120', true, 'UB-NCU');
INSERT INTO adwords_clients (client_id, active, client_name) VALUES ('748-394-8367', true, 'LV- Trident');


--
-- PostgreSQL database dump complete
--

