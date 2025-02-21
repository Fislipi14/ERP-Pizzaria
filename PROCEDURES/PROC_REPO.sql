--------------------------------------------------------
--  Arquivo criado - sexta-feira-fevereiro-21-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure PROC_REPO_ESTOQUE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "FILIPE"."PROC_REPO_ESTOQUE" (v_idfornecedor in integer, v_idingrediente in integer, v_qtd in integer)
IS
    VQTDPROD INTEGER;
    VVALOR_REPO NUMBER;

    ERRO_VALOR_INV EXCEPTION;
    ERRO_ING_DESCONHECIDO EXCEPTION;

    PRAGMA EXCEPTION_INIT(ERRO_VALOR_INV, -20000);
    PRAGMA EXCEPTION_INIT(ERRO_ING_DESCONHECIDO, -20001);

    CURSOR C_AUX IS
    SELECT COUNT(ID_INGREDIENTE) FROM ESTOQUE;

    CURSOR C_VALOR IS
    SELECT VALOR FROM FORNECEDOR_INGREDIENTE
    WHERE ID_INGREDIENTE = v_idingrediente;

BEGIN 

    IF NOT C_AUX%ISOPEN THEN
    OPEN C_AUX;
    END IF;

    LOOP
    FETCH C_AUX INTO VQTDPROD;
    EXIT WHEN C_AUX%NOTFOUND;
    END LOOP;
    CLOSE C_AUX;

    IF NOT C_VALOR%ISOPEN THEN
    OPEN C_VALOR;
    END IF;

    LOOP 
    FETCH C_VALOR INTO VVALOR_REPO;
    EXIT WHEN C_VALOR%NOTFOUND;
    END LOOP;
    CLOSE C_VALOR;

    IF v_idingrediente >= VQTDPROD + 1 OR v_idingrediente <= 0 THEN
    RAISE ERRO_ING_DESCONHECIDO;
    END IF;

    IF v_qtd <=0 THEN
    RAISE ERRO_VALOR_INV;
    END IF;

    UPDATE ESTOQUE SET QTD = QTD + v_qtd, DATA_ENTRADA = TO_DATE(SYSDATE, 'DD-MM-YYYY HH24:MI:SS')
    WHERE ID_INGREDIENTE = v_idingrediente;

    INSERT INTO HIST_RESTOQUE VALUES(SEQ_IDRESTOQUE.NEXTVAL, v_idfornecedor, v_idingrediente, v_qtd, (v_qtd * VVALOR_REPO), TO_DATE(SYSDATE, 'DD-MM-YYYY HH24:MI:SS'));


    EXCEPTION
    WHEN ERRO_VALOR_INV THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('QUANTIDADE INVALIDA');    
        ROLLBACK;
    WHEN ERRO_ING_DESCONHECIDO THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('INGREDIENTE NÃO REGISTRADO NO BANCO');
        ROLLBACK;

END;

/
