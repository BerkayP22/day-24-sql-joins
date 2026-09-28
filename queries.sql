-- 1. Sipariş ve müşteri (INNER JOIN)
SELECT o.Id, c.Name FROM Orders o INNER JOIN Customers c ON c.Id = o.CustomerId;
-- 2. Ürün ve sipariş kalemi
SELECT p.Name, oi.Quantity FROM Products p INNER JOIN OrderItems oi ON oi.ProductId = p.Id;
-- 3. Tüm müşteriler, varsa siparişleri
SELECT c.Name, o.Id FROM Customers c LEFT JOIN Orders o ON o.CustomerId = c.Id;
-- 4. Tüm ürünler, varsa sipariş kalemleri
SELECT p.Name, oi.OrderId FROM Products p LEFT JOIN OrderItems oi ON oi.ProductId = p.Id;
-- 5. Sipariş, müşteri ve ürün
SELECT o.Id, c.Name, p.Name FROM Orders o JOIN Customers c ON c.Id = o.CustomerId JOIN OrderItems oi ON oi.OrderId = o.Id JOIN Products p ON p.Id = oi.ProductId;
-- 6. Sipariş kalemi tutarı
SELECT oi.OrderId, p.Name, oi.Quantity * p.Price AS Total FROM OrderItems oi JOIN Products p ON p.Id = oi.ProductId;
-- 7. RIGHT JOIN ile siparişi olmayan müşteri de görünür
SELECT o.Id, c.Name FROM Orders o RIGHT JOIN Customers c ON c.Id = o.CustomerId;
-- 8. Siparişi olmayan müşteriler
SELECT c.Name FROM Customers c LEFT JOIN Orders o ON o.CustomerId = c.Id WHERE o.Id IS NULL;
