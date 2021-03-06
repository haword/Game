/* Table: COMPS_SETS */

CREATE TABLE COMPS_SETS (
    NAME VARCHAR(30) NOT NULL,
    PATH VARCHAR(150) NOT NULL,
    ICON BLOB SUB_TYPE 2 SEGMENT SIZE 1 NOT NULL,
    ICON_NAME VARCHAR(30) NOT NULL,
    ID_PROG INTEGER NOT NULL,
    HASH INTEGER NOT NULL,
    BUSY INTEGER NOT NULL,
    VALID SMALLINT NOT NULL);



/* Triggers definition */


SET TERM ^ ;





/* Trigger: COMPS_SETS_AD0 */
CREATE TRIGGER COMPS_SETS_AD0 FOR COMPS_SETS
ACTIVE AFTER DELETE POSITION 1
as
begin
 delete from custom_comps_sets where ID_PROG=OLD.ID_PROG;
  /* Trigger text */
end
^

/* Trigger: COMPS_SETS_AU0 */
CREATE TRIGGER COMPS_SETS_AU0 FOR COMPS_SETS
ACTIVE AFTER UPDATE POSITION 0
as
begin
 update comps set HASHSUM=HASHSUM+1
 where ID in (select ID from custom_comps_sets
 where ID_PROG=new.ID_PROG);

end
^

/* Trigger: COMPS_SETS_BD0 */
CREATE TRIGGER COMPS_SETS_BD0 FOR COMPS_SETS
ACTIVE BEFORE DELETE POSITION 0
as
begin
 update comps set HASHSUM=HASHSUM+1
 where ID in (select ID from custom_comps_sets
 where ID_PROG=old.ID_PROG);
end
^


SET TERM ; ^
