--------------------------------------------------------
--  Arquivo criado - segunda-feira-fevereiro-24-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View V_MAIS_VENDIDOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "FILIPE"."V_MAIS_VENDIDOS" ("NOME", "TIPO", "VENDIDO") AS 
  SELECT NOME, TIPO, COUNT(*) AS VENDIDO FROM PEDIDO_PRODUTOS
INNER JOIN PRODUTOS
ON IDPRODUTO = ID_PRODUTO
GROUP BY NOME, TIPO
;
--------------------------------------------------------
--  DDL for View V_RELATORIO_ESTOQUE
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "FILIPE"."V_RELATORIO_ESTOQUE" ("FORNECEDOR", "INGREDIENTE", "CUSTO", "QTD") AS 
  SELECT A.NOME AS FORNECEDOR,
       C.NOME AS INGREDIENTE,
       B.VALOR AS CUSTO,
       D.QTD 
FROM FORNECEDORES A
INNER JOIN FORNECEDOR_INGREDIENTE B
ON A.IDFORNECEDOR = B.ID_FORNECEDOR
FULL JOIN INGREDIENTES C
ON C.IDINGREDIENTE = B.ID_INGREDIENTE
FULL JOIN ESTOQUE D
ON D.ID_INGREDIENTE = C.IDINGREDIENTE
ORDER BY 1
;
--------------------------------------------------------
--  DDL for View V_REL_PEDIDOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "FILIPE"."V_REL_PEDIDOS" ("CLIENTE", "PEDIDO", "VALOR") AS 
  SELECT C.NOME AS CLIENTE,
       PR.NOME AS PEDIDO,
       PR.VALOR
FROM CLIENTES C
INNER JOIN PEDIDOS P
ON C.IDCLIENTE = P.ID_CLIENTE
INNER JOIN PEDIDO_PRODUTOS PP 
ON P.IDPEDIDO = PP.ID_PEDIDO
INNER JOIN PRODUTOS PR
ON PR.IDPRODUTO = PP.ID_PRODUTO
;
--------------------------------------------------------
--  DDL for View V_VENDAS_MES
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "FILIPE"."V_VENDAS_MES" ("IDVENDA", "DATA_VENDA", "VALOR") AS 
  SELECT IDVENDA, DATA_VENDA, VALOR FROM VENDAS
WHERE TO_CHAR(DATA_VENDA, 'Month') = F_VENDA_MES()
;
REM INSERTING into FILIPE.V_MAIS_VENDIDOS
SET DEFINE OFF;
Insert into FILIPE.V_MAIS_VENDIDOS (NOME,TIPO,VENDIDO) values ('Pizza Pepperoni','Pizza','1');
Insert into FILIPE.V_MAIS_VENDIDOS (NOME,TIPO,VENDIDO) values ('Refrigerante 2L','Bebida','6');
Insert into FILIPE.V_MAIS_VENDIDOS (NOME,TIPO,VENDIDO) values ('Pizza Margherita','Pizza','22');
Insert into FILIPE.V_MAIS_VENDIDOS (NOME,TIPO,VENDIDO) values ('Sorvete de Chocolate','Sobremesa','1');
REM INSERTING into FILIPE.V_RELATORIO_ESTOQUE
SET DEFINE OFF;
Insert into FILIPE.V_RELATORIO_ESTOQUE (FORNECEDOR,INGREDIENTE,CUSTO,QTD) values ('Fornecedor A','Molho Branco','2,15','22');
Insert into FILIPE.V_RELATORIO_ESTOQUE (FORNECEDOR,INGREDIENTE,CUSTO,QTD) values ('Fornecedor A','Molho de Tomate','5','33');
Insert into FILIPE.V_RELATORIO_ESTOQUE (FORNECEDOR,INGREDIENTE,CUSTO,QTD) values ('Fornecedor A','Refrigerante 2L','4,25','78');
Insert into FILIPE.V_RELATORIO_ESTOQUE (FORNECEDOR,INGREDIENTE,CUSTO,QTD) values ('Fornecedor B','Pimentão','1,25','10');
Insert into FILIPE.V_RELATORIO_ESTOQUE (FORNECEDOR,INGREDIENTE,CUSTO,QTD) values ('Fornecedor B','Mussarela','3,5','40');
Insert into FILIPE.V_RELATORIO_ESTOQUE (FORNECEDOR,INGREDIENTE,CUSTO,QTD) values ('Fornecedor C','Pepperoni','7,25','29');
Insert into FILIPE.V_RELATORIO_ESTOQUE (FORNECEDOR,INGREDIENTE,CUSTO,QTD) values ('Fornecedor C','Frango','9,5','134');
Insert into FILIPE.V_RELATORIO_ESTOQUE (FORNECEDOR,INGREDIENTE,CUSTO,QTD) values ('Fornecedor D','Parmesão','6','4');
Insert into FILIPE.V_RELATORIO_ESTOQUE (FORNECEDOR,INGREDIENTE,CUSTO,QTD) values ('Fornecedor D','Sorvete','9,5','91');
Insert into FILIPE.V_RELATORIO_ESTOQUE (FORNECEDOR,INGREDIENTE,CUSTO,QTD) values ('Fornecedor D','Cebola','2','4');
Insert into FILIPE.V_RELATORIO_ESTOQUE (FORNECEDOR,INGREDIENTE,CUSTO,QTD) values ('Fornecedor E','Presunto','3','84');
Insert into FILIPE.V_RELATORIO_ESTOQUE (FORNECEDOR,INGREDIENTE,CUSTO,QTD) values ('Fornecedor E','Manjericão','4,75','35');
REM INSERTING into FILIPE.V_REL_PEDIDOS
SET DEFINE OFF;
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Pepperoni','125,69');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Refrigerante 2L','15,62');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Sorvete de Chocolate','26,83');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Pizza Margherita','99');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Refrigerante 2L','15,62');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Refrigerante 2L','15,62');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Refrigerante 2L','15,62');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Refrigerante 2L','15,62');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Carlos Silva','Refrigerante 2L','15,62');
Insert into FILIPE.V_REL_PEDIDOS (CLIENTE,PEDIDO,VALOR) values ('Mariana Souza','Pizza Margherita','99');
REM INSERTING into FILIPE.V_VENDAS_MES
SET DEFINE OFF;
Insert into FILIPE.V_VENDAS_MES (IDVENDA,DATA_VENDA,VALOR) values ('1',to_date('20/02/25','DD/MM/RR'),'35');
Insert into FILIPE.V_VENDAS_MES (IDVENDA,DATA_VENDA,VALOR) values ('61',to_date('23/02/25','DD/MM/RR'),'10');
Insert into FILIPE.V_VENDAS_MES (IDVENDA,DATA_VENDA,VALOR) values ('62',to_date('23/02/25','DD/MM/RR'),'30');
Insert into FILIPE.V_VENDAS_MES (IDVENDA,DATA_VENDA,VALOR) values ('41',to_date('22/02/25','DD/MM/RR'),'29,8');
Insert into FILIPE.V_VENDAS_MES (IDVENDA,DATA_VENDA,VALOR) values ('21',to_date('20/02/25','DD/MM/RR'),'15');
