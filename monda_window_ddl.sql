CREATE TABLE role_type(
    rt_id INT,
    rt_name VARCHAR2(4000) UNIQUE,
    PRIMARY KEY(rt_id)
    );
/
CREATE TABLE monda_user(
    mu_id INT,
    rt_id INT DEFAULT 1 NOT NULL,
    mu_fn VARCHAR2(4000),
    mu_ln VARCHAR2(4000),
    mu_username VARCHAR2(4000) UNIQUE NOT NULL,
    mu_password VARCHAR2(4000) NOT NULL,
    PRIMARY KEY(mu_id),
    FOREIGN KEY(rt_id) REFERENCES role_type(rt_id)
);
/
--SEQUENCES
CREATE SEQUENCE monda_user_seq START WITH 1 INCREMENT BY 1;

/
--TRIGGERS
CREATE OR REPLACE TRIGGER monda_user_seq_trg
BEFORE INSERT ON monda_user
FOR EACH ROW
BEGIN
IF :new.mu_id IS NULL THEN
  SELECT monda_user_seq.NEXTVAL INTO :new.mu_id FROM dual;
END IF;
END;
