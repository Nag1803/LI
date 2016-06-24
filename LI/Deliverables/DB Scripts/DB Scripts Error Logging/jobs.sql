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
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE jobs (
    "FromEmailID" character varying(50),
    "JobName" character varying(50),
    "JobDescription" character varying(500),
    "JobSuccessEmailID" character varying(150),
    "JobFailureEmailID" character varying(150),
    "CreatedDate" date,
    "UpdatedDate" date,
    "IsActive" smallint,
    "JobSuccess_CC_EmailID" character varying(150),
    "JobFailure_CC_EmailID" character varying(150),
    "JobGroup" character varying(150),
    "JobID" integer NOT NULL
);


ALTER TABLE jobs OWNER TO postgres;

--
-- Name: jobs_JobID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "jobs_JobID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "jobs_JobID_seq" OWNER TO postgres;

--
-- Name: jobs_JobID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "jobs_JobID_seq" OWNED BY jobs."JobID";


--
-- Name: JobID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobs ALTER COLUMN "JobID" SET DEFAULT nextval('"jobs_JobID_seq"'::regclass);


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO jobs ("FromEmailID", "JobName", "JobDescription", "JobSuccessEmailID", "JobFailureEmailID", "CreatedDate", "UpdatedDate", "IsActive", "JobSuccess_CC_EmailID", "JobFailure_CC_EmailID", "JobGroup", "JobID") VALUES ('cybytetech@yahoo.com', 'ALL_ADWORDS_CLIENTS_LOAD', NULL, 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', NULL, NULL, 1, 'thirumaleshm@cybytetech.com', 'thirumaleshm@cybytetech.com', NULL, 4);
INSERT INTO jobs ("FromEmailID", "JobName", "JobDescription", "JobSuccessEmailID", "JobFailureEmailID", "CreatedDate", "UpdatedDate", "IsActive", "JobSuccess_CC_EmailID", "JobFailure_CC_EmailID", "JobGroup", "JobID") VALUES ('cybytetech@yahoo.com', 'FETCH_DATA_PER_ACCOUNT', NULL, 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', NULL, NULL, 1, 'thirumaleshm@cybytetech.com', 'thirumaleshm@cybytetech.com', NULL, 6);
INSERT INTO jobs ("FromEmailID", "JobName", "JobDescription", "JobSuccessEmailID", "JobFailureEmailID", "CreatedDate", "UpdatedDate", "IsActive", "JobSuccess_CC_EmailID", "JobFailure_CC_EmailID", "JobGroup", "JobID") VALUES ('cybytetech@yahoo.com', 'FETCH_INSIGHTS_ALL_ADS', NULL, 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', NULL, NULL, 1, 'thirumaleshm@cybytetech.com', 'thirumaleshm@cybytetech.com', NULL, 5);
INSERT INTO jobs ("FromEmailID", "JobName", "JobDescription", "JobSuccessEmailID", "JobFailureEmailID", "CreatedDate", "UpdatedDate", "IsActive", "JobSuccess_CC_EmailID", "JobFailure_CC_EmailID", "JobGroup", "JobID") VALUES ('cybytetech@yahoo.com', 'ION_DATA', NULL, 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', NULL, NULL, 1, 'thirumaleshm@cybytetech.com', 'thirumaleshm@cybytetech.com', NULL, 1);
INSERT INTO jobs ("FromEmailID", "JobName", "JobDescription", "JobSuccessEmailID", "JobFailureEmailID", "CreatedDate", "UpdatedDate", "IsActive", "JobSuccess_CC_EmailID", "JobFailure_CC_EmailID", "JobGroup", "JobID") VALUES ('cybytetech@yahoo.com', 'MASTER_BING_PERFORMANCE', NULL, 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', NULL, NULL, 1, 'thirumaleshm@cybytetech.com', 'thirumaleshm@cybytetech.com', NULL, 7);
INSERT INTO jobs ("FromEmailID", "JobName", "JobDescription", "JobSuccessEmailID", "JobFailureEmailID", "CreatedDate", "UpdatedDate", "IsActive", "JobSuccess_CC_EmailID", "JobFailure_CC_EmailID", "JobGroup", "JobID") VALUES ('cybytetech@yahoo.com', 'MASTER_BING_CONFIG', NULL, 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', NULL, NULL, 1, 'thirumaleshm@cybytetech.com', 'thirumaleshm@cybytetech.com', NULL, 8);
INSERT INTO jobs ("FromEmailID", "JobName", "JobDescription", "JobSuccessEmailID", "JobFailureEmailID", "CreatedDate", "UpdatedDate", "IsActive", "JobSuccess_CC_EmailID", "JobFailure_CC_EmailID", "JobGroup", "JobID") VALUES ('cybytetech@yahoo.com', 'ALL_ADWORDS_CLIENTS_LOAD_TEMP', NULL, 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', NULL, NULL, 1, 'thirumaleshm@cybytetech.com', 'thirumaleshm@cybytetech.com', NULL, 9);
INSERT INTO jobs ("FromEmailID", "JobName", "JobDescription", "JobSuccessEmailID", "JobFailureEmailID", "CreatedDate", "UpdatedDate", "IsActive", "JobSuccess_CC_EmailID", "JobFailure_CC_EmailID", "JobGroup", "JobID") VALUES ('cybytetech@yahoo.com', 'CLIENT_ERROR_REPORTING', NULL, 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', NULL, NULL, 1, NULL, NULL, NULL, 10);
INSERT INTO jobs ("FromEmailID", "JobName", "JobDescription", "JobSuccessEmailID", "JobFailureEmailID", "CreatedDate", "UpdatedDate", "IsActive", "JobSuccess_CC_EmailID", "JobFailure_CC_EmailID", "JobGroup", "JobID") VALUES ('cybytetech@yahoo.com', 'master_cake', NULL, 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', NULL, NULL, 1, 'thirumaleshm@cybytetech.com', 'thirumaleshm@cybytetech.com', NULL, 2);
INSERT INTO jobs ("FromEmailID", "JobName", "JobDescription", "JobSuccessEmailID", "JobFailureEmailID", "CreatedDate", "UpdatedDate", "IsActive", "JobSuccess_CC_EmailID", "JobFailure_CC_EmailID", "JobGroup", "JobID") VALUES ('cybytetech@yahoo.com', 'master_keen_events', NULL, 'nmadhav@cybytetech.com', 'nmadhav@cybytetech.com', NULL, NULL, 1, 'thirumaleshm@cybytetech.com', 'thirumaleshm@cybytetech.com', NULL, 3);


--
-- Name: jobs_JobID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"jobs_JobID_seq"', 10, true);


--
-- Name: pk_JobID; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY jobs
    ADD CONSTRAINT "pk_JobID" PRIMARY KEY ("JobID");


--
-- PostgreSQL database dump complete
--

