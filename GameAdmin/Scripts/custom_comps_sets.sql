/* Table: CUSTOM_COMPS_SETS */

CREATE TABLE CUSTOM_COMPS_SETS (
    NUMBER VARCHAR(10) NOT NULL,
    ID INTEGER NOT NULL,
    ID_PROG INTEGER NOT NULL,
    DESCRIPTION VARCHAR(150) NOT NULL,
    NETWORK_NAME VARCHAR(30) NOT NULL);



/* Triggers definition */


SET TERM ^ ;





/* Trigger: CUSTOM_COMPS_SETS_AD0 */
CREATE TRIGGER CUSTOM_COMPS_SETS_AD0 FOR CUSTOM_COMPS_SETS
ACTIVE AFTER DELETE POSITION 0
as
begin
 update comps set HASHSUM=HASHSUM+1 where ID=OLD.ID;
  /* Trigger text */
end
^

/* Trigger: CUSTOM_COMPS_SETS_AD1 */
CREATE TRIGGER CUSTOM_COMPS_SETS_AD1 FOR CUSTOM_COMPS_SETS
ACTIVE AFTER DELETE POSITION 1
as
begin
 update comps_sets set BUSY=BUSY-1
 where ID_PROG=OLD.ID_PROG;
end
^

/* Trigger: CUSTOM_COMPS_SETS_BI0 */
CREATE TRIGGER CUSTOM_COMPS_SETS_BI0 FOR CUSTOM_COMPS_SETS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  update comps set HASHSUM=HASHSUM+1 where ID=NEW.ID;/* Trigger text */
end
^

/* Trigger: CUSTOM_COMPS_SETS_BI1 */
CREATE TRIGGER CUSTOM_COMPS_SETS_BI1 FOR CUSTOM_COMPS_SETS
ACTIVE BEFORE INSERT POSITION 1
as
begin
 update comps_sets set BUSY=BUSY+1
 where ID_PROG=NEW.ID_PROG;
end
^

/* Trigger: CUSTOM_COMPS_SETS_BU0 */
CREATE TRIGGER CUSTOM_COMPS_SETS_BU0 FOR CUSTOM_COMPS_SETS
ACTIVE BEFORE UPDATE POSITION 0
as
begin
  update comps set HASHSUM=HASHSUM+1 where (ID=NEW.ID) or (ID=OLD.ID);
    /* Trigger text */
end
^


SET TERM ; ^