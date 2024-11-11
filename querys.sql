-- 1. Listar todos os clientes que não tenham realizado uma compra
SELECT c.*
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);


-- 2. Listar os produtos que não tenham sido comprados
SELECT c.*
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);


-- 3. Listar os produtos sem estoque
SELECT p.*
FROM products p
WHERE NOT EXISTS (
    SELECT 1
    FROM stocks s
    WHERE s.product_id = p.product_id AND s.quantity > 0
);


-- 4. Agrupar a quantidade de vendas por marca em cada loja
SELECT 
    s.store_name,
    b.brand_name,
    COUNT(oi.item_id) AS total_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN brands b ON p.brand_id = b.brand_id
JOIN orders o ON oi.order_id = o.order_id
JOIN stores s ON o.store_id = s.store_id
GROUP BY s.store_name, b.brand_name;


-- 5. Listar os funcionários que não estejam relacionados a um pedido
SELECT s.*
FROM staffs s
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.staff_id = s.staff_id
);
