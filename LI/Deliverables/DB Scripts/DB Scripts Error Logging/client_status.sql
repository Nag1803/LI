-- Table: client_status

-- DROP TABLE client_status;

CREATE TABLE client_status
(
  status_id serial NOT NULL,
  client_id_source character varying(200),
  process_id integer NOT NULL,
  data_start_date timestamp without time zone,
  data_end_date timestamp without time zone,
  process_start_date timestamp without time zone,
  process_end_date timestamp without time zone,
  status character varying(20),
  rows_affected_count integer,
  email_sent boolean,
  CONSTRAINT prim_key_client_status_id PRIMARY KEY (status_id),
  CONSTRAINT foreign_key_process FOREIGN KEY (process_id)
      REFERENCES process (process_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE client_status
  OWNER TO postgres;
