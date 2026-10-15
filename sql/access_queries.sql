-- SQL view of the six queries in retail_orders_database.accdb (Microsoft Access SQL).
-- Built with the Access query designer; this file makes them readable without Access.

-- 1. Low Stock (select query with a parameter): which products are running low?
SELECT Products.[Product Name], Products.Quantity
FROM Products
WHERE Products.Quantity < [What quantity you wish to check?];

-- 2. Price update (update query): raise all prices of the category chosen on the main form by 12 %.
UPDATE Products
SET Products.Price = [Products]![Price] * 1.12
WHERE Products.Category = [Forms]![Main form]![CategoryDropdown];

-- 3. Sales Order (update query): reduce stock when an order is entered on the Orders form.
UPDATE Products
SET Products.Quantity = [Quantity] - [Forms]![Orders]![Qty]
WHERE Products.[Product ID] = [Forms]![Orders]![ProductID];

-- 4. Hossain (append query): add a new employee record.
INSERT INTO Employees (EmployeeID, [Employee Name], [Date Employed])
VALUES (850, 'Hossain', #07/14/2026#);

-- 5. Delete Orders (delete query): clear the Orders table.
DELETE Orders.*
FROM Orders;

-- 6. Delete Products (delete query): clear the Products table.
DELETE Products.*
FROM Products;
