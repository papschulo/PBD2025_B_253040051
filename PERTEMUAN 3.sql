USE RetailStoreDB;
GO

SELECT * FROM Production.Product;

SELECT Name, Color
FROM Production.Product;

SELECT Name AS 'Nama Produk' FROM Production.Product

SELECT Name, ListPrice, (ListPrice * 10) AS HargaBaru
FROM Production.Product; 

SELECT Name + '('+ ProductNumber +')' AS PrdukLengkap FROM Production.Product;

SELECT Name + '('+ Color +')' AS ProdukLengkap FROM Production.Product;

SELECT Name + '('+ Color +')' 
AS ProdukLengkap
FROM Production.Product
WHERE Color = 'Black';

