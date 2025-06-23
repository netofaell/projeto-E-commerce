-- consultas realizadas para desafio de projeto no BD E-commerce

-- As queries descritas abaixo utilizarão cláusulas de ordenação, agupamento, junção, filtros e seleções simples.


-- Ordene por primeiro nome e sobrenome todos os clientes :
select * from clients order by Fname, Lname;

-- Quantos pedidos foram feitos por cada cliente?
SELECT idOrderClient, COUNT(idOrder) AS NumeroDePedidos
FROM orders 
GROUP BY idOrderClient;

-- Algum vendedor também é fornecedor?
SELECT DISTINCT
   idPSeller AS Vendedor,idPSupplier AS Fornecedor
  FROM seller v 
  JOIN supplier f ON v. idPSeller = f.idPSupplier; 
    
-- Mostre a relaçao nome dos fornecedores e nome dos produtos:
SELECT F.idPSupplier,P.Pname 
FROM supplier F jOIN Product P ON F.idPSupplier = P.idProduct;

-- selecione primeiro nome e segundo nome dos clientes da seguinte localidade:
select Fname,Lname
  from clients 
where clients.Address = 'são lourenço - Teixeira de freitas';







 