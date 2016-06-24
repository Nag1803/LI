-- Table: client_process_err

-- DROP TABLE client_process_err;

CREATE TABLE client_process_err
(
  err_id serial NOT NULL,
  status_id integer,
  error_text text,
  CONSTRAINT pk_err_id PRIMARY KEY (err_id),
  CONSTRAINT foreign_key_status FOREIGN KEY (status_id)
      REFERENCES client_status (status_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE client_process_err
  OWNER TO postgres;
