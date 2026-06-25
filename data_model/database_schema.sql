Database Schema (OMS)

Users

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    role VARCHAR(50),
    created_at TIMESTAMP
);

Orders

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    status VARCHAR(50),
    total_amount DECIMAL(10,2),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

Order Items

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

Payments

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(50),
    status VARCHAR(50),
    paid_at TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

Shipments

CREATE TABLE shipments (
    shipment_id INT PRIMARY KEY,
    order_id INT,
    carrier VARCHAR(100),
    tracking_number VARCHAR(100),
    status VARCHAR(50),
    shipped_at TIMESTAMP,
    delivered_at TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
