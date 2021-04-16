--------------------------------------------------------
--  파일이 생성됨 - 금요일-4월-16-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TEST_BOARD
--------------------------------------------------------

  CREATE TABLE "C##DONGWOO"."TEST_BOARD" 
   (	"BNO" NUMBER, 
	"TITLE" VARCHAR2(20 BYTE), 
	"CONTENT" VARCHAR2(100 BYTE), 
	"USERID" VARCHAR2(20 BYTE), 
	"CDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"REPLY_COUNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TEST_BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##DONGWOO"."TEST_BOARD_PK" ON "C##DONGWOO"."TEST_BOARD" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TEST_BOARD
--------------------------------------------------------

  ALTER TABLE "C##DONGWOO"."TEST_BOARD" MODIFY ("BNO" NOT NULL ENABLE);
  ALTER TABLE "C##DONGWOO"."TEST_BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "C##DONGWOO"."TEST_BOARD" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "C##DONGWOO"."TEST_BOARD" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "C##DONGWOO"."TEST_BOARD" MODIFY ("CDATE" NOT NULL ENABLE);
  ALTER TABLE "C##DONGWOO"."TEST_BOARD" MODIFY ("REPLY_COUNT" NOT NULL ENABLE);
  ALTER TABLE "C##DONGWOO"."TEST_BOARD" ADD CONSTRAINT "TEST_BOARD_PK" PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  DDL for Trigger TEST_BOARD_BNO_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##DONGWOO"."TEST_BOARD_BNO_TRIGGER" 
before insert on TEST_BOARD
for each row
begin
    select T_BOARD_SEQ.nextval into :new.bno from dual;
end;
/
ALTER TRIGGER "C##DONGWOO"."TEST_BOARD_BNO_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TEST_BOARD_CDATE_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##DONGWOO"."TEST_BOARD_CDATE_TRIGGER" 
before update on TEST_BOARD
for each row
begin
  select sysdate into :new.CDATE from dual;
end;
/
ALTER TRIGGER "C##DONGWOO"."TEST_BOARD_CDATE_TRIGGER" ENABLE;
