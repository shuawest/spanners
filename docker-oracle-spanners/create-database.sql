
CREATE USER spanners IDENTIFIED BY password;
GRANT CREATE SESSION TO spanners;
GRANT CONNECT TO spanners;
GRANT RESOURCE TO spanners;

GRANT SELECT ON sys.dba_pending_transactions TO spanners;
GRANT SELECT ON sys.pending_trans$ TO spanners;
GRANT SELECT ON sys.dba_2pc_pending TO spanners;
GRANT EXECUTE ON sys.dbms_xa TO spanners;


CREATE TABLE SPANNERS.SPANNER (
    SPANNER_ID NUMBER NOT NULL,
    SPANNER_NAME VARCHAR2(255),
    SPANNER_SIZE NUMBER,
    SPANNER_OWNER VARCHAR2(255)
);

ALTER TABLE SPANNERS.SPANNER  ADD CONSTRAINT SPANNER_ID_PK PRIMARY KEY (SPANNER_ID);

CREATE SEQUENCE SPANNERS.SPANNER_ID_SEQ;

/*
CREATE OR REPLACE TRIGGER SPANNER_BIR 
BEFORE INSERT ON SPANNERS.SPANNER 
FOR EACH ROW

BEGIN
  SELECT SPANNER_SEQ.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/
*/


