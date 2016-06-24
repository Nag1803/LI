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
-- Name: client_source; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE client_source (
    client_id integer NOT NULL,
    source_id integer NOT NULL,
    client_id_source character varying(50),
    id integer NOT NULL,
    active boolean
);


ALTER TABLE client_source OWNER TO postgres;

--
-- Name: client_source_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE client_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE client_source_id_seq OWNER TO postgres;

--
-- Name: client_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE client_source_id_seq OWNED BY client_source.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY client_source ALTER COLUMN id SET DEFAULT nextval('client_source_id_seq'::regclass);


--
-- Data for Name: client_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (1, 2, '700773130034236', 5, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (1, 8, '795-649-7250', 6, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (2, 2, '817060385072176', 7, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (2, 8, '348-269-2361', 8, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (3, 2, '639118259533057', 9, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (3, 8, '776-901-3886', 10, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (4, 2, '692043110907238', 11, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (4, 8, '626-384-1526', 12, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (5, 8, '854-094-7689', 13, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (6, 8, '976-894-7083', 14, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (7, 2, '805332576244957', 15, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (7, 8, '613-652-9730', 16, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (8, 2, '1385679154999141', 17, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (8, 8, '606-457-6908', 18, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (9, 2, '754969934614555', 19, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (9, 8, '215-537-4594', 20, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (10, 2, '830677767043771', 21, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (10, 8, '722-632-5667', 22, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (11, 8, '102-544-8795', 23, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (12, 2, '692403330871216', 24, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (12, 8, '746-107-3120', 25, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (13, 2, '573702826074601', 26, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (13, 8, '443-716-0724', 27, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (14, 2, '757608991017316', 28, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (14, 8, '186-258-8473', 29, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (15, 8, '686-448-9121', 30, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (16, 8, '521-242-5228', 31, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (17, 2, '532948410150043', 32, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (17, 8, '486-013-3761', 33, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (18, 8, '285-303-0008', 34, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (19, 2, '10152828474186788', 35, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (19, 8, '959-194-7912', 36, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (20, 8, '621-700-9583', 37, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (21, 2, '', 38, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (21, 8, '234-297-9820', 39, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (22, 8, '981-922-5986', 40, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (23, 2, '777331689045046', 41, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (24, 2, '803906013054280', 42, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (25, 2, '621770834601133', 43, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (26, 2, '828730783905136', 44, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (27, 2, '1504014096478235', 45, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (28, 6, '55b221a490e4bd410e6bac59', 46, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (29, 5, '3ODqKwgJVR3ufgDa9VinTSRZiHffqy', 47, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (1, 1, '700773130034236', 48, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (2, 1, '817060385072176', 49, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (3, 1, '639118259533057', 50, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (4, 1, '692043110907238', 51, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (7, 1, '805332576244957', 52, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (8, 1, '1385679154999141', 53, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (9, 1, '754969934614555', 54, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (10, 1, '830677767043771', 55, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (11, 1, '692403330871216', 56, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (13, 1, '573702826074601', 57, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (14, 1, '757608991017316', 58, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (17, 1, '532948410150043', 59, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (19, 1, '10152828474186788', 60, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (23, 1, '777331689045046', 61, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (24, 1, '803906013054280', 62, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (25, 1, '621770834601133', 63, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (26, 1, '828730783905136', 64, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (27, 1, '1504014096478235', 65, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (1, 4, '41051291', 66, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (1, 3, '41051291', 67, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (2, 3, '42070253', 68, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (2, 4, '42070253', 69, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (3, 3, '46040053', 70, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (3, 4, '46040053', 71, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (4, 3, '47068143', 72, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (4, 4, '47068143', 73, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (5, 3, '50037687', 74, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (5, 4, '50037687', 75, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (6, 3, '50050709', 76, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (6, 4, '50050709', 77, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (7, 3, '79037903', 78, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (7, 4, '79037903', 79, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (8, 3, '2637998', 80, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (8, 4, '2637998', 81, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (9, 3, '3302271', 82, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (9, 4, '3302271', 83, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (10, 3, '2673205', 84, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (10, 4, '2673205', 85, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (11, 3, '2605352', 86, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (11, 4, '2605352', 87, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (12, 3, '1563286', 88, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (12, 4, '1563286', 89, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (13, 3, '2533842', 90, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (13, 4, '2533842', 91, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (14, 3, '2394704', 92, true);
INSERT INTO client_source (client_id, source_id, client_id_source, id, active) VALUES (14, 4, '2394704', 93, true);


--
-- Name: client_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('client_source_id_seq', 93, true);


--
-- Name: pk_clientsource_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY client_source
    ADD CONSTRAINT pk_clientsource_id PRIMARY KEY (id);


--
-- Name: foreign_key_client; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY client_source
    ADD CONSTRAINT foreign_key_client FOREIGN KEY (client_id) REFERENCES client(client_id);


--
-- PostgreSQL database dump complete
--

