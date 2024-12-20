-- Data definition and data insertion script (DDL and DML)

-- Create the "user" table
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    password VARCHAR(128) NOT NULL,
    last_login TIMESTAMP NULL,
    is_superuser BOOLEAN NOT NULL,
    username VARCHAR(150) UNIQUE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(254) UNIQUE NOT NULL,
    is_staff BOOLEAN NOT NULL,
    is_active BOOLEAN NOT NULL,
    date_joined TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Create the "category" table
CREATE TABLE category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create the "product" table
CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock INTEGER NOT NULL,
    image VARCHAR(255),
    category_id INTEGER NOT NULL REFERENCES category(id)
);

-- Create the "cart" table
CREATE TABLE cart (
    id SERIAL PRIMARY KEY,
    quantity INTEGER NOT NULL,
    product_id INTEGER NOT NULL REFERENCES product(id),
    user_id INTEGER NOT NULL REFERENCES "user"(id)
);

-- Create the "orders" table
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    quantity INTEGER NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    product_id INTEGER NOT NULL REFERENCES product(id),
    user_id INTEGER NOT NULL REFERENCES "user"(id)
);

-- Create the "card" table
CREATE TABLE card (
    id SERIAL PRIMARY KEY,
    card_number VARCHAR(20) NOT NULL,
    cardholder_name VARCHAR(100) NOT NULL,
    expiry_date DATE NOT NULL,
    cvv VARCHAR(10) NOT NULL,
    is_default BOOLEAN NOT NULL,
    user_id INTEGER NOT NULL REFERENCES "user"(id)
);

-- Create the "address" table
CREATE TABLE address (
    id SERIAL PRIMARY KEY,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    country VARCHAR(100) NOT NULL,
    is_default BOOLEAN NOT NULL,
    user_id INTEGER NOT NULL REFERENCES "user"(id)
);

-- Create the "review" table
CREATE TABLE review (
    id SERIAL PRIMARY KEY,
    rating INTEGER NOT NULL,
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    product_id INTEGER NOT NULL REFERENCES product(id),
    user_id INTEGER NOT NULL REFERENCES "user"(id)
);
