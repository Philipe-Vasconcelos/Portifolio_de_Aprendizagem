# Lab 4 - Analytics com Microsoft Excel e SQL

# Query 1 - Número de vendas por segmento
SELECT tbl1.Segmento, Count(*) AS Numero_Vendas
FROM [Vendas] tbl1
Group by tbl1.Segmento

# Query 2 - Média de custo por categoria
SELECT tbl1.Categoria, ROUND(AVG(tbl1.Custo),2) AS Media_Custo
FROM [Vendas] tbl1
Group by tbl1.Categoria

# Query 3 - Total de vendas por fabricante
SELECT Fabricante, SUM(ValorVenda) AS TotalVenda
FROM Vendas
Group by Fabricante

# Query 4 - Média de valor venda dos produtos vendidos em Belo Horizonte ordenado por produto
SELECT Cidade, Produto, ROUND(AVG(ValorVenda),2) AS Media_ValorVenda
FROM Vendas
Where Cidade = 'Belo Horizonte'
Group by Cidade, Produto
Order By Produto

# Query 5 - Média de valor venda dos produtos vendidos em Belo Horizonte, somente se a média for superior a 500, ordenado por produto
SELECT Cidade, Produto, ROUND(AVG(ValorVenda),2) AS Media_ValorVenda
FROM Vendas
Where Cidade = 'Belo Horizonte'
Group by Cidade, Produto
Having ROUND(AVG(ValorVenda),2) > 500
Order By Produto


