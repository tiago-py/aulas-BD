create database vendas;
use vendas;
CREATE TABLE Clientes (
ClienteID INT PRIMARY KEY,
NomeCliente VARCHAR(100)
);


INSERT INTO Clientes (ClienteID, NomeCliente) VALUES (1, 'João');
INSERT INTO Clientes (ClienteID, NomeCliente) VALUES (2, 'Maria');
INSERT INTO Clientes (ClienteID, NomeCliente) VALUES (3, 'Carlos');
INSERT INTO Clientes (ClienteID, NomeCliente) VALUES (4, 'Juliana');
INSERT INTO Clientes (ClienteID, NomeCliente) VALUES (5, 'Antônio');


CREATE TABLE Pedidos (
PedidoID INT PRIMARY KEY,
ClienteID INT,
NomeProduto VARCHAR(100),
Quantidade INT
);


INSERT INTO Pedidos (PedidoID, ClienteID, NomeProduto, Quantidade) VALUES (1, 1, 'Livro', 3);
INSERT INTO Pedidos (PedidoID, ClienteID, NomeProduto, Quantidade) VALUES (2, 1, 'Caneta', 10);
INSERT INTO Pedidos (PedidoID, ClienteID, NomeProduto, Quantidade) VALUES (3, 2, 'Caderno', 2);
INSERT INTO Pedidos (PedidoID, ClienteID, NomeProduto, Quantidade) VALUES (4, 3, 'Lápis', 5);
INSERT INTO Pedidos (PedidoID, ClienteID, NomeProduto, Quantidade) VALUES (5, 5, 'Borracha', 1);

select 
	pedidos.PedidoID, 
    pedidos.Quantidade,
	clientes.NomeCliente
from pedidos 
right join clientes 
on pedidos.ClienteID = clientes.ClienteID;

select 
	pedidos.PedidoID, 
    pedidos.Quantidade,
	clientes.NomeCliente
from pedidos 
left join clientes 
on pedidos.ClienteID = clientes.ClienteID;

select 
	pedidos.PedidoID, 
    pedidos.Quantidade,
	clientes.NomeCliente
from pedidos 
inner join clientes 
on pedidos.ClienteID = clientes.ClienteID;