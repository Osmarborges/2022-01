/*

Requisitos:
Dez consultas complexas devem ser apresentadas.
Para cada consulta, uma descrição explicativa deve ser incluída.
Uma consulta é complexa se 
(i) ela envolve uma sub-consulta correlacionada ou não-correlacionada; 
ou 
(ii) ela envolve operadores de conjunto*/

-- 1 - Listar ID de cliente juridico que pediu 80 litros.
Select P.ID_CLI
From  PEDIDO AS P
WHERE P.QUANTIDADE = 80 AND
P.ID_CLI IN (SELECT C.ID_CLI
					FROM CLIENTE C, cliente_juridico CJ
                    WHERE C.ID_CLI = CJ.ID_CLI );
                                      

-- 2 -  Listar os ids dos clientes que pediram 20, 30 ou 100 litros de chopp
Select C.ID_CLI
FROM CLIENTE C
Where ID_CLI IN (Select ID_CLI
					From Pedido
					Where QUANTIDADE IN (20, 30, 100));
-- 3 - Listar todos os clientes que realizaram pedidos com barril maior que 15 litros ou contendo algum produto de preço MAIOR que R$ 100

(Select C.NOME
From CLIENTE C, PEDIDO P, PRODUTO PROD , PEDIDO_TEM_PRODUTO PTP, PRODUTO_BARRIL PB 
Where C.ID_CLI = P.ID_CLI AND
P.ID_PED = PTP.ID_PED AND
PROD.ID_PROD = PB.ID_PROD AND
PB.CAPACIDADE > 15)
UNION
(SELECT C.NOME
FROM CLIENTE C, PEDIDO P, PRODUTO PROD , PEDIDO_TEM_PRODUTO PTP, PRODUTO_BARRIL PB 
Where C.ID_CLI = P.ID_CLI AND
P.ID_PED = PTP.ID_PED AND 
PTP.ID_PROD = PROD.ID_PROD AND
PROD.PRECO > 100);

-- 4 - liste o preço do litro de chopp presente nos barris dos pedidos feitos e o id dos barris
SELECT RESULTADO.LITRO, RESULTADO.BARRIL AS BAR 
FROM ( SELECT PB.ID_PROD AS BARRIL, CH.VALOR_LITRO AS LITRO
FROM PEDIDO AS P  
INNER JOIN PEDIDO_TEM_PRODUTO AS PTP ON
 P.ID_PED = PTP.ID_PED
 INNER JOIN PRODUTO_BARRIL AS PB ON
 PTP.ID_PROD = PB.ID_PROD
 INNER JOIN CHOPP AS CH ON
 PB.TIPO_DESCRICAO = CH.TIPO_DESCRICAO ) AS RESULTADO 
 group by RESULTADO.LITRO ORDER BY BAR ; 

-- 4 - liste o preço do litro de chopp presente nos barris dos pedidos feitos e o id dos barris
SELECT RESULTADO.LITRO, RESULTADO.BARRIL AS BARRIL_ID 
FROM ( SELECT PB.ID_PROD AS BARRIL, CH.VALOR_LITRO AS LITRO
FROM PEDIDO AS P  
INNER JOIN PEDIDO_TEM_PRODUTO AS PTP ON
 P.ID_PED = PTP.ID_PED
 INNER JOIN PRODUTO_BARRIL AS PB ON
 PTP.ID_PROD = PB.ID_PROD
 INNER JOIN CHOPP AS CH ON
 PB.TIPO_DESCRICAO = CH.TIPO_DESCRICAO ) AS RESULTADO 
 group by RESULTADO.LITRO ORDER BY BARRIL_ID ;
 
 -- 5 - liste os pedidos feitos no dia 20/06/2002 com quantidade maior que 30 litros e o nome dos clientes
 SELECT DATAS.DATA_PED AS DIA, DATAS.ID_CLI AS ID_CLIENTE, DATAS.NOME
 FROM (SELECT DATA_PED, P.ID_CLI, C.NOME
	 FROM PEDIDO P, CLIENTE C
	 WHERE  P.ID_CLI = C.ID_CLI AND
     P.DATA_PED = '2002-06-20' AND
			P.QUANTIDADE > 30) AS DATAS; 
 
-- 6 -  liste o preço do litro de chopp presente nos barris dos pedidos feitos e o id dos clientes e o valor total do pedido
SELECT RESULTADO.LITRO, RESULTADO.ID_CLIENTE , (RESULTADO.LITRO*RESULTADO.QUANTIDADE) AS TOTAL
FROM ( SELECT P.ID_PED AS ID_CLIENTE, CH.VALOR_LITRO AS LITRO, P.QUANTIDADE
FROM PEDIDO AS P  
INNER JOIN PEDIDO_TEM_PRODUTO AS PTP ON
 P.ID_PED = PTP.ID_PED
 INNER JOIN PRODUTO_BARRIL AS PB ON
 PTP.ID_PROD = PB.ID_PROD
 INNER JOIN CHOPP AS CH ON
 PB.TIPO_DESCRICAO = CH.TIPO_DESCRICAO ) AS RESULTADO 
 group by RESULTADO.LITRO ;
 
 -- 7 - liste a quantidade de litros que os clientes juridicos pediram
Select sum(p.quantidade) as total_quantidade
From  PEDIDO AS P
WHERE P.ID_CLI IN (SELECT C.ID_CLI
					FROM CLIENTE C, cliente_juridico CJ
                    WHERE C.ID_CLI = CJ.ID_CLI ); 

-- 8 - Liste o id os pedidos entregues pelo funcionario idair                     
SELECT ID_PED
FROM PEDIDO AS P
WHERE P.CRACHA_ENTREGADOR IN (SELECT FC.CRACHA
								FROM FUNC_ENTREGADOR AS FC, FUNCIONARIO AS F
                                WHERE FC.CRACHA = F.CRACHA AND
								F.NOME LIKE '%IDAIR%');
                                
-- 9 - liste o id e a data do pedido em que a maquina de 3 torneiras foi usada 
SELECT ID_PED, DATA_PED 
FROM PEDIDO P
Where P.ID_PED IN (SELECT PTP.ID_PED 
			FROM PRODUTO PROD , PEDIDO_TEM_PRODUTO PTP, PRODUTO_MAQUINA PM
            WHERE PTP.ID_PROD = PROD.ID_PROD AND
			PROD.ID_PROD = PM.ID_PROD AND
            PM.NRO_TORNEIRAS = 3);
            
-- 10 - liste a marca dos produtos que foram usado no pedido de id 8
SELECT DISTINCT MARCA
FROM PRODUTO AS PROD 
WHERE PROD.ID_PROD IN (SELECT PTP.ID_PROD
						FROM PEDIDO_TEM_PRODUTO PTP
                        WHERE PTP.ID_PED IN(SELECT P.ID_PED
											FROM PEDIDO P
                                            WHERE P.ID_PED = 8));