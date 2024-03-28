
INSERT INTO clientes (nome, endereco, email, numero_cll, data_nascimento)
VALUES ('Maria Silva', 'Rua X, 123', 'maria@email.com', '(11) 98765-4321', '1990-05-15'),
    ('João Oliveira', 'Rua Y, 456', 'joao@email.com', '(11) 12345-6789', '1985-10-20'),
    ('Fernanda Santos', 'Rua Z, 789', 'fernanda@email.com', '(11) 29356-7890', '1988-03-25'),
    ('Pedro Souza', 'Rua W, 1011', 'pedro@email.com', '(11) 34567-8771', '1992-07-12');

INSERT INTO produtos (nome, preco, descricao, qt_estoque)
VALUES ('Calça Jeans Azul', 69.99, 'Calça Jeans de corte slim em tom azul', 80),
    ('Vestido Estampado', 49.99, 'Vestido estampado floral em tons de primavera', 120),
    ('Blusa de Moletom', 54.99, 'Blusa de moletom com capuz e estampa abstrata', 90),
    ('Sapato Social Preto', 89.99, 'Sapato social de couro legítimo na cor preta', 60),
    ('Jaqueta de Couro Marrom', 119.99, 'Jaqueta de couro sintético em tom marrom vintage', 70),
    ('Saia Plissada', 39.99, 'Saia plissada em tecido leve com estampa geométrica', 110),
    ('Bermuda Cargo Bege', 29.99, 'Bermuda cargo em sarja na cor bege', 150),
    ('Camisa Polo Listrada', 49.99, 'Camisa polo de piquet com listras horizontais', 85),
    ('Sapatênis Casual Marinho', 74.99, 'Sapatênis casual em couro na cor azul marinho', 75),
    ('Camiseta Branca Básica', 24.99, 'Camiseta de algodão básica na cor branca', 100);

INSERT INTO pedidos (cliente_id, dt_pedido, valor_total, dt_entrega)
VALUES (1, '2024-03-27', 150.00, '2024-04-03'),
       (2, '2024-04-01', 120.00, '2024-04-07'),
       (3, '2024-04-05', 200.00, '2024-04-11'),
       (4, '2024-04-10', 180.00, '2024-04-16');

INSERT INTO pedido_itens (pedido_id, produto_id, quantidade, vl_unit, vl_ttl)
VALUES  (1, 1, 2, 69.99, 139.98),
        (2, 1, 1, 49.99, 49.99),
        (3, 2, 3, 54.99, 164.97),
        (4, 2, 1, 29.99, 29.99);

UPDATE clientes
SET email = 'anagevulski@eaportal.org'
WHERE cliente_id IN (1, 2, 3, 4);

UPDATE produtos
SET qt_estoque = qt_estoque - 5
WHERE produto_id IN (1, 2, 3, 4);

DELETE FROM clientes
WHERE cliente_id IN (3, 4);

DELETE FROM produtos
WHERE produto_id IN (1, 2);
