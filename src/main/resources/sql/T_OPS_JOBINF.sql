/*
 Navicat Premium Data Transfer

 Source Server         : cba-TSDOPS
 Source Server Type    : Oracle
 Source Server Version : 120200
 Source Host           : 10.0.0.6:1521
 Source Schema         : TSDOPS

 Target Server Type    : Oracle
 Target Server Version : 120200
 File Encoding         : 65001

 Date: 20/07/2020 18:35:41
*/


-- ----------------------------
-- Table structure for T_OPS_JOBINF
-- ----------------------------
DROP TABLE "TSDOPS"."T_OPS_JOBINF";
CREATE TABLE "TSDOPS"."T_OPS_JOBINF" (
  "ID" NUMBER(20) VISIBLE NOT NULL ,
  "NAME" VARCHAR2(80 BYTE) VISIBLE DEFAULT ' '  NOT NULL ,
  "GRP_NM" VARCHAR2(80 BYTE) VISIBLE DEFAULT 'PUB'  NOT NULL ,
  "URL" VARCHAR2(256 BYTE) VISIBLE DEFAULT ' '  NOT NULL ,
  "CRON" VARCHAR2(80 BYTE) VISIBLE DEFAULT ' '  NOT NULL ,
  "TM_OUT" NUMBER VISIBLE DEFAULT 60  NOT NULL ,
  "REMARK" VARCHAR2(255 BYTE) VISIBLE DEFAULT '' ,
  "REQ_ID" VARCHAR2(64 BYTE) VISIBLE DEFAULT '' ,
  "NOD_ID" VARCHAR2(20 BYTE) VISIBLE DEFAULT '' ,
  "TM_SMP" VARCHAR2(14 BYTE) VISIBLE DEFAULT '' ,
  "UPD_OPR" VARCHAR2(10 BYTE) VISIBLE DEFAULT '' ,
  "STATUS" VARCHAR2(1 BYTE) VISIBLE DEFAULT '1'  NOT NULL ,
  "DELETE_FLAG" VARCHAR2(1 BYTE) VISIBLE DEFAULT '0'  NOT NULL 
);
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBINF"."ID" IS 'ID编号';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBINF"."NAME" IS '名称';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBINF"."GRP_NM" IS '组名';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBINF"."URL" IS '服务URL';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBINF"."CRON" IS '定时表达式';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBINF"."TM_OUT" IS '超时时间';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBINF"."REMARK" IS '配置描述';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBINF"."REQ_ID" IS '交易日志编号';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBINF"."NOD_ID" IS '应用节点名称';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBINF"."TM_SMP" IS '时间戳';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBINF"."UPD_OPR" IS '操作员';
COMMENT ON COLUMN "TSDOPS"."T_OPS_JOBINF"."DELETE_FLAG" IS '是否删除标识，0:未删除，1:已删除';
COMMENT ON TABLE "TSDOPS"."T_OPS_JOBINF" IS '定时任务信息表';

-- ----------------------------
-- Primary Key structure for table T_OPS_JOBINF
-- ----------------------------
ALTER TABLE "TSDOPS"."T_OPS_JOBINF" ADD CONSTRAINT "PK_T_OPS_JOBINF" PRIMARY KEY ("ID");

-- ----------------------------
-- Uniques structure for table T_OPS_JOBINF
-- ----------------------------
ALTER TABLE "TSDOPS"."T_OPS_JOBINF" ADD CONSTRAINT "UI1_T_OPS_JOBINF" UNIQUE ("NAME") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

