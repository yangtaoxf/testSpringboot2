-- ----------------------------
-- Table structure for T_OPS_JOBJNL
-- ----------------------------
DROP TABLE "TSDOPS"."T_OPS_JOBJNL";
CREATE TABLE "TSDOPS"."T_OPS_JOBJNL" (
  "ID" NUMBER(20) VISIBLE NOT NULL ,
  "NAME" VARCHAR2(255 BYTE) VISIBLE NOT NULL ,
  "GRP_NM" VARCHAR2(80 BYTE) VISIBLE DEFAULT 'PUB'  NOT NULL ,
  "URL" VARCHAR2(256 BYTE) VISIBLE DEFAULT ' '  NOT NULL ,
  "CRON" VARCHAR2(80 BYTE) VISIBLE DEFAULT ' '  NOT NULL ,
  "TM_OUT" NUMBER VISIBLE DEFAULT 60  NOT NULL ,
  "REMARK" VARCHAR2(255 BYTE) VISIBLE DEFAULT '' ,
  "BEG_TM" VARCHAR2(14 BYTE) VISIBLE DEFAULT ' ' ,
  "END_TM" VARCHAR2(14 BYTE) VISIBLE DEFAULT ' ' ,
  "STATUS" VARCHAR2(1 BYTE) VISIBLE DEFAULT '0' ,
  "RESULT_MSG" VARCHAR2(2048 BYTE) VISIBLE DEFAULT ' ' ,
  "REQ_ID" VARCHAR2(64 BYTE) VISIBLE DEFAULT '' ,
  "NOD_ID" VARCHAR2(20 BYTE) VISIBLE DEFAULT '' ,
  "TM_SMP" VARCHAR2(14 BYTE) VISIBLE DEFAULT '' ,
  "UPD_OPR" VARCHAR2(10 BYTE) VISIBLE DEFAULT '' 
);
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."ID" IS 'ID编号';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."NAME" IS '名称';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."GRP_NM" IS '组名';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."URL" IS '调用url';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."CRON" IS '定时表达式';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."TM_OUT" IS '超时时间';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."REMARK" IS '备注';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."BEG_TM" IS '开始时间(yyyyMMddHHmmss)';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."END_TM" IS '结束时间(yyyyMMddHHmmss)';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."STATUS" IS '状态(I-开始,S-成功,F-失败,T-超时)';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."RESULT_MSG" IS '执行结果信息';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."REQ_ID" IS '交易日志编号';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."NOD_ID" IS '应用节点名称';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."TM_SMP" IS '时间戳';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBJNL"."UPD_OPR" IS '操作员';
COMMENT ON TABLE "TSDOPS"."T_OPS_JOBJNL" IS '定时任务流水表';

-- ----------------------------
-- Primary Key structure for table T_OPS_JOBJNL
-- ----------------------------
ALTER TABLE "TSDOPS"."T_OPS_JOBJNL" ADD CONSTRAINT "PK_T_OPS_JOBJNL" PRIMARY KEY ("ID");
-- ----------------------------
-- Indexes structure for table T_OPS_JOBJNL
-- ----------------------------
CREATE INDEX "TSDOPS"."N11_T_OPS_JOBJNL" ON "TSDOPS"."T_OPS_JOBJNL" ("NAME" ASC);
--------------MYSQL
CREATE TABLE `T_OPS_JOBJNL` (
  `ID` int(20)  NOT NULL ,
  `NAME` VARCHAR(255 )  NOT NULL ,
  `GRP_NM` VARCHAR(80 )  DEFAULT 'PUB'  NOT NULL ,
  `URL` VARCHAR(256 )  DEFAULT ' '  NOT NULL ,
  `CRON` VARCHAR(80 )  DEFAULT ' '  NOT NULL ,
  `TM_OUT` int  DEFAULT 60  NOT NULL ,
  `REMARK` VARCHAR(255 )  DEFAULT '' ,
  `BEG_TM` VARCHAR(14 )  DEFAULT ' ' ,
  `END_TM` VARCHAR(14 )  DEFAULT ' ' ,
  `STATUS` VARCHAR(1 )  DEFAULT '0' ,
  `RESULT_MSG` VARCHAR(2048 )  DEFAULT ' ' ,
  `REQ_ID` VARCHAR(64 )  DEFAULT '' ,
  `NOD_ID` VARCHAR(20 )  DEFAULT '' ,
  `TM_SMP` VARCHAR(14 )  DEFAULT '' ,
  `UPD_OPR` VARCHAR(10 )  DEFAULT ''
);
ALTER TABLE `T_OPS_JOBJNL` ADD CONSTRAINT `PK_T_OPS_JOBJNL` PRIMARY KEY (`ID`);
CREATE INDEX `N11_T_OPS_JOBJNL` ON `T_OPS_JOBJNL` (`NAME`);


