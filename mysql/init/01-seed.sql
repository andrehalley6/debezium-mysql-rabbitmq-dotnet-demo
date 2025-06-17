-- Create tables if they don't exist
CREATE TABLE IF NOT EXISTS orders (
  id            BIGINT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(255),
  order_date    DATETIME,
  status        VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS products (
  id    BIGINT AUTO_INCREMENT PRIMARY KEY,
  name  VARCHAR(255),
  sku   VARCHAR(100),
  price DECIMAL(10,2)
);

-- Seed sample rows (safe even on re‑run thanks to INSERT IGNORE)
INSERT IGNORE INTO orders (id, customer_name, order_date, status) VALUES
  (1, 'Alice',  NOW(), 'PENDING'),
  (2, 'Bob',    NOW(), 'SHIPPED');

INSERT IGNORE INTO products (id, name, sku, price) VALUES
  (1, 'Widget',      'WGT-001',  9.99),
  (2, 'Gadget',      'GDT-002', 14.99),
  (3, 'Thingamajig', 'THG-003',  4.50);
