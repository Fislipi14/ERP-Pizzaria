--------------------------------------------------------
--  Arquivo criado - segunda-feira-fevereiro-24-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BKP_PEDIDOS
--------------------------------------------------------

  CREATE TABLE "FILIPE"."BKP_PEDIDOS" 
   (	"IDBKP" NUMBER(*,0), 
	"BKP_IDPEDIDO" NUMBER(*,0), 
	"BKP_ID_CLIENTE" NUMBER(*,0), 
	"BKP_STATUS_PEDIDO" VARCHAR2(15 BYTE), 
	"BKP_VALOR_PEDIDO" NUMBER(10,2), 
	"OPER" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" ;
--------------------------------------------------------
--  DDL for Table BKP_VENDAS
--------------------------------------------------------

  CREATE TABLE "FILIPE"."BKP_VENDAS" 
   (	"BKP_IDVENDA" NUMBER(*,0), 
	"BKP_ID_VENDA" NUMBER(*,0), 
	"BKP_VALOR" NUMBER(10,2), 
	"OPER" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" ;
--------------------------------------------------------
--  DDL for Table CARGOS
--------------------------------------------------------

  CREATE TABLE "FILIPE"."CARGOS" 
   (	"IDCARGO" NUMBER(*,0), 
	"SALARIO" NUMBER(10,2), 
	"OCUPACAO" VARCHAR2(25 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" ;
--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------

  CREATE TABLE "FILIPE"."CLIENTES" 
   (	"IDCLIENTE" NUMBER(*,0), 
	"NOME" VARCHAR2(100 BYTE), 
	"ENDERECO" VARCHAR2(100 BYTE), 
	"TELEFONE" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" ;
--------------------------------------------------------
--  DDL for Table ENTREGAS
--------------------------------------------------------

  CREATE TABLE "FILIPE"."ENTREGAS" 
   (	"IDENTREGA" NUMBER(*,0), 
	"ID_PEDIDO" NUMBER(*,0), 
	"DATA_ENTREGA" DATE, 
	"STATUS_ENTREGA" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "ERP_TESTE" ;
--------------------------------------------------------
--  DDL for Table ESTOQUE
--------------------------------------------------------

  CREATE TABLE "FILIPE"."ESTOQUE" 
   (	"ID_INGREDIENTE" NUMBER(*,0), 
	"QTD" NUMBER(*,0), 
	"DATA_ENTRADA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" ;
--------------------------------------------------------
--  DDL for Table FORNECEDORES
--------------------------------------------------------

  CREATE TABLE "FILIPE"."FORNECEDORES" 
   (	"IDFORNECEDOR" NUMBER(*,0), 
	"NOME" VARCHAR2(100 BYTE), 
	"TELEFONE" VARCHAR2(20 BYTE), 
	"ENDERECO" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" ;
--------------------------------------------------------
--  DDL for Table FORNECEDOR_INGREDIENTE
--------------------------------------------------------

  CREATE TABLE "FILIPE"."FORNECEDOR_INGREDIENTE" 
   (	"ID_FORNECEDOR" NUMBER(*,0), 
	"ID_INGREDIENTE" NUMBER(*,0), 
	"VALOR" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" ;
--------------------------------------------------------
--  DDL for Table FUNCIONARIOS
--------------------------------------------------------

  CREATE TABLE "FILIPE"."FUNCIONARIOS" 
   (	"IDFUNC" NUMBER(*,0), 
	"NOME" VARCHAR2(30 BYTE), 
	"CARGO" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" ;
--------------------------------------------------------
--  DDL for Table HIST_RESTOQUE
--------------------------------------------------------

  CREATE TABLE "FILIPE"."HIST_RESTOQUE" 
   (	"IDRESTOQUE" NUMBER(*,0), 
	"ID_FORNECEDOR" NUMBER(*,0), 
	"ID_INGREDIENTE" NUMBER(*,0), 
	"QTD" NUMBER(*,0), 
	"VALOR_TOTAL" NUMBER(10,2), 
	"DATA_ENTRADA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" ;
--------------------------------------------------------
--  DDL for Table INGREDIENTES
--------------------------------------------------------

  CREATE TABLE "FILIPE"."INGREDIENTES" 
   (	"IDINGREDIENTE" NUMBER(*,0), 
	"NOME" VARCHAR2(100 BYTE), 
	"TIPO_INGREDIENTE" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" ;
--------------------------------------------------------
--  DDL for Table PEDIDO_PRODUTOS
--------------------------------------------------------

  CREATE TABLE "FILIPE"."PEDIDO_PRODUTOS" 
   (	"ID_PEDIDO" NUMBER(*,0), 
	"ID_PRODUTO" NUMBER(*,0), 
	"QUANTIDADE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" ;
--------------------------------------------------------
--  DDL for Table PEDIDOS
--------------------------------------------------------

  CREATE TABLE "FILIPE"."PEDIDOS" 
   (	"IDPEDIDO" NUMBER(*,0), 
	"ID_CLIENTE" NUMBER(*,0), 
	"DATA_PEDIDO" DATE, 
	"STATUS_PEDIDO" VARCHAR2(14 BYTE), 
	"VALOR_PEDIDO" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" ;
--------------------------------------------------------
--  DDL for Table PRODUTOS
--------------------------------------------------------

  CREATE TABLE "FILIPE"."PRODUTOS" 
   (	"IDPRODUTO" NUMBER(*,0), 
	"NOME" VARCHAR2(100 BYTE), 
	"DESCRICAO" CLOB, 
	"VALOR" NUMBER(10,2), 
	"TIPO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" 
 LOB ("DESCRICAO") STORE AS SECUREFILE (
  TABLESPACE "ERP_TESTE" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table VENDAS
--------------------------------------------------------

  CREATE TABLE "FILIPE"."VENDAS" 
   (	"IDVENDA" NUMBER(*,0), 
	"DATA_VENDA" DATE, 
	"VALOR" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "ERP_TESTE" ;
REM INSERTING into FILIPE.BKP_PEDIDOS
