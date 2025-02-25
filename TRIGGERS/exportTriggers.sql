--------------------------------------------------------
--  Arquivo criado - terça-feira-fevereiro-25-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger T_BKP_PEDIDOS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "FILIPE"."T_BKP_PEDIDOS" 
AFTER INSERT OR UPDATE ON PEDIDOS
FOR EACH ROW
BEGIN 
    IF INSERTING THEN
        INSERT INTO BKP_PEDIDOS VALUES(SEQ_BKP_PEDIDOS.NEXTVAL, :NEW.IDPEDIDO, :NEW.ID_CLIENTE, :NEW.STATUS_PEDIDO, :NEW.VALOR_PEDIDO, 'I');
    ELSIF UPDATING THEN 
        INSERT INTO BKP_PEDIDOS VALUES(SEQ_BKP_PEDIDOS.NEXTVAL, :NEW.IDPEDIDO, :NEW.ID_CLIENTE, :NEW.STATUS_PEDIDO, :NEW.VALOR_PEDIDO, 'U');
    END IF;
END;
/
ALTER TRIGGER "FILIPE"."T_BKP_PEDIDOS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_BKP_VENDAS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "FILIPE"."T_BKP_VENDAS" 
AFTER INSERT OR UPDATE ON VENDAS
FOR EACH ROW
BEGIN 
    IF INSERTING THEN
        INSERT INTO BKP_VENDAS VALUES(SEQ_IDBKP_VENDAS.NEXTVAL, :NEW.IDVENDA, :NEW.VALOR, 'I');
    ELSIF UPDATING THEN 
        INSERT INTO BKP_VENDAS VALUES(SEQ_IDBKP_VENDAS.NEXTVAL, :NEW.IDVENDA, :NEW.VALOR, 'U');
    END IF;
END;
/
ALTER TRIGGER "FILIPE"."T_BKP_VENDAS" ENABLE;
