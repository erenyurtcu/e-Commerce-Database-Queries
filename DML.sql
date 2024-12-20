-- Insert instances into the "user" table
INSERT INTO "user" (password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) 
VALUES
-- Superuser
('superpassword123', NULL, TRUE, 'adminahmet', 'Ahmet', 'Yılmaz', 'adminahmet@gmail.com', TRUE, TRUE, NOW()),

-- Normal users
('password123', NULL, FALSE, 'aysekara', 'Ayşe', 'Kara', 'aysekara@gmail.com', FALSE, TRUE, NOW()),
('password456', NULL, FALSE, 'mehmetcelik', 'Mehmet', 'Çelik', 'mehmetcelik@gmail.com', FALSE, TRUE, NOW()),
('password789', NULL, FALSE, 'fatmaturan', 'Fatma', 'Turan', 'fatmaturan@gmail.com', FALSE, TRUE, NOW()),
('passwordabc', NULL, FALSE, 'mustafademir', 'Mustafa', 'Demir', 'mustafademir@gmail.com', FALSE, TRUE, NOW()),
('passworddef', NULL, FALSE, 'eminearslan', 'Emine', 'Arslan', 'eminearslan@gmail.com', FALSE, TRUE, NOW()),
('passwordghi', NULL, FALSE, 'alikaya', 'Ali', 'Kaya', 'alikaya@gmail.com', FALSE, TRUE, NOW()),
('passwordjkl', NULL, FALSE, 'zehraoz', 'Zehra', 'Öz', 'zehraoz@gmail.com', FALSE, TRUE, NOW()),
('passwordmno', NULL, FALSE, 'hasanerdem', 'Hasan', 'Erdem', 'hasanerdem@gmail.com', FALSE, TRUE, NOW()),
('passwordpqr', NULL, FALSE, 'aylingunes', 'Aylin', 'Güneş', 'aylingunes@gmail.com', FALSE, TRUE, NOW()),
('passwordstu', NULL, FALSE, 'omersahin', 'Ömer', 'Şahin', 'omersahin@gmail.com', FALSE, TRUE, NOW());


-- Insert instances into the "category" table
INSERT INTO category (name)
VALUES
('Electronics'),
('Books'),
('Home and Living'),
('Fashion'),
('Toys'),
('Sports and Outdoor'),
('Cosmetics'),
('Musical Instruments'),
('Automotive'),
('Food and Beverages');


-- Insert instances into the "product" table
INSERT INTO product (name, description, price, stock, image, category_id)
VALUES
('Smartphone', 'High-end smartphone with 128GB storage', 799.99, 50, 'smartphone.jpg', 1),
('Laptop', '15-inch laptop with 16GB RAM', 1199.99, 30, 'laptop.jpg', 1),
('Headphones', 'Wireless noise-canceling headphones', 199.99, 100, 'headphones.jpg', 1),
('Fiction Book', 'Best-selling novel by famous author', 14.99, 200, 'fiction_book.jpg', 2),
('Cooking Book', 'Healthy recipes for everyday meals', 19.99, 150, 'cooking_book.jpg', 2),
('Sofa', 'Comfortable 3-seater sofa', 499.99, 20, 'sofa.jpg', 3),
('Table Lamp', 'Modern design table lamp', 39.99, 100, 'table_lamp.jpg', 3),
('T-shirt', 'Cotton T-shirt with unique print', 19.99, 300, 'tshirt.jpg', 4),
('Jeans', 'Classic blue jeans for everyday wear', 49.99, 200, 'jeans.jpg', 4),
('Action Figure', 'Collectible action figure', 29.99, 150, 'action_figure.jpg', 5),
('Board Game', 'Fun strategy board game for families', 39.99, 100, 'board_game.jpg', 5),
('Yoga Mat', 'Non-slip yoga mat for home workouts', 24.99, 150, 'yoga_mat.jpg', 6),
('Basketball', 'Professional-grade basketball', 29.99, 80, 'basketball.jpg', 6),
('Lipstick', 'Long-lasting matte lipstick', 9.99, 250, 'lipstick.jpg', 7),
('Face Cream', 'Hydrating face cream for all skin types', 19.99, 120, 'face_cream.jpg', 7),
('Guitar', 'Acoustic guitar with carrying case', 199.99, 15, 'guitar.jpg', 8),
('Drum Set', '5-piece drum set for beginners', 499.99, 10, 'drum_set.jpg', 8),
('Car Tire', 'All-season car tire for SUVs', 99.99, 40, 'car_tire.jpg', 9),
('Motor Oil', 'High-performance synthetic motor oil', 39.99, 100, 'motor_oil.jpg', 9),
('Chocolate Box', 'Assorted chocolates in a gift box', 14.99, 200, 'chocolate_box.jpg', 10);


-- Insert instances into the "cart" table
INSERT INTO cart (quantity, product_id, user_id)
VALUES
-- User 1
(2, 1, 1),
(1, 3, 1),

-- User 2
(1, 4, 2),
(3, 6, 2),
(2, 7, 2),

-- User 3
(2, 5, 3),

-- User 4
(1, 2, 4),
(4, 8, 4),

-- User 5
(3, 9, 5),
(2, 10, 5),
(1, 3, 5),

-- User 6
(1, 7, 6),

-- User 7
(2, 1, 7),
(3, 4, 7),

-- User 8
(1, 5, 8),
(2, 6, 8),
(3, 9, 8),

-- User 9
(3, 8, 9),

-- User 10
(2, 2, 10),
(1, 10, 10);



-- Insert instances into the "orders" table
INSERT INTO orders (quantity, order_date, product_id, user_id)
VALUES
-- User 1
(2, '2024-12-20 10:15:00', 1, 1),
(1, '2024-12-19 12:30:00', 3, 1),

-- User 2
(1, '2024-12-18 14:45:00', 4, 2),
(3, '2024-12-19 16:00:00', 6, 2),

-- User 3
(2, '2024-12-17 11:00:00', 5, 3),

-- User 4
(1, '2024-12-16 09:30:00', 2, 4),
(4, '2024-12-16 18:45:00', 8, 4),

-- User 5
(3, '2024-12-15 13:15:00', 9, 5),
(2, '2024-12-14 15:30:00', 10, 5),
(1, '2024-12-13 19:00:00', 3, 5),

-- User 6
(1, '2024-12-12 08:45:00', 7, 6),

-- User 7
(2, '2024-12-11 12:00:00', 1, 7),
(3, '2024-12-10 16:30:00', 4, 7),

-- User 8
(1, '2024-12-09 11:15:00', 5, 8),
(2, '2024-12-08 14:00:00', 6, 8),
(3, '2024-12-07 18:00:00', 9, 8),

-- User 9
(3, '2024-12-06 09:30:00', 8, 9),

-- User 10
(2, '2024-12-05 10:45:00', 2, 10),
(1, '2024-12-04 15:15:00', 10, 10);


-- Insert instances into the "card" table
INSERT INTO card (card_number, cardholder_name, expiry_date, cvv, is_default, user_id)
VALUES
-- User 1
('1111222233334444', 'Ahmet Yılmaz', '2025-12-31', '123', TRUE, 1),
('5555666677778888', 'Ahmet Yılmaz', '2026-05-31', '456', FALSE, 1),

-- User 2
('2222333344445555', 'Ayşe Kara', '2024-11-30', '789', TRUE, 2),

-- User 3
('3333444455556666', 'Mehmet Çelik', '2025-10-31', '321', TRUE, 3),
('6666777788889999', 'Mehmet Çelik', '2026-09-30', '654', FALSE, 3),

-- User 4
('4444555566667777', 'Fatma Turan', '2024-12-31', '987', TRUE, 4),

-- User 5
('5555666677778888', 'Mustafa Demir', '2025-08-31', '123', TRUE, 5),
('7777888899990000', 'Mustafa Demir', '2026-07-31', '456', FALSE, 5),

-- User 6
('6666777788889999', 'Emine Arslan', '2025-06-30', '789', TRUE, 6),

-- User 7
('7777888899990000', 'Ali Kaya', '2024-04-30', '321', TRUE, 7),
('9999000011112222', 'Ali Kaya', '2025-03-31', '654', FALSE, 7),

-- User 8

-- User 9
('9999000011112222', 'Hasan Erdem', '2025-12-31', '123', TRUE, 9),
('1111222233334444', 'Hasan Erdem', '2026-05-31', '456', FALSE, 9),

-- User 10
('0000111122223333', 'Aylin Güneş', '2024-11-30', '789', TRUE, 10),
('3333444455556666', 'Aylin Güneş', '2025-10-31', '321', FALSE, 10);



-- Insert instances into the "address" table
INSERT INTO address (street, city, state, postal_code, country, is_default, user_id)
VALUES
-- User 1
('123 Elm Street', 'Istanbul', 'Istanbul', '34000', 'Turkey', TRUE, 1),
('456 Oak Avenue', 'Istanbul', 'Istanbul', '34010', 'Turkey', FALSE, 1),

-- User 2
('789 Maple Drive', 'Ankara', 'Ankara', '06000', 'Turkey', TRUE, 2),

-- User 3
('101 Pine Road', 'Izmir', 'Izmir', '35000', 'Turkey', TRUE, 3),
('202 Cedar Lane', 'Izmir', 'Izmir', '35010', 'Turkey', FALSE, 3),
('303 Birch Way', 'Izmir', 'Izmir', '35020', 'Turkey', FALSE, 3),

-- User 4
('404 Walnut Street', 'Bursa', 'Bursa', '16000', 'Turkey', TRUE, 4),

-- User 5
('505 Ash Avenue', 'Antalya', 'Antalya', '07000', 'Turkey', TRUE, 5),
('606 Fir Boulevard', 'Antalya', 'Antalya', '07010', 'Turkey', FALSE, 5),

-- User 6
('707 Redwood Court', 'Adana', 'Adana', '01000', 'Turkey', TRUE, 6),

-- User 7
('808 Spruce Place', 'Gaziantep', 'Gaziantep', '27000', 'Turkey', TRUE, 7),
('909 Palm Street', 'Gaziantep', 'Gaziantep', '27010', 'Turkey', FALSE, 7),

-- User 8
('1010 Cypress Lane', 'Konya', 'Konya', '42000', 'Turkey', TRUE, 8),
('1111 Willow Way', 'Konya', 'Konya', '42010', 'Turkey', FALSE, 8),

-- User 9
('1212 Poplar Road', 'Samsun', 'Samsun', '55000', 'Turkey', TRUE, 9),

-- User 10
('1313 Chestnut Court', 'Kayseri', 'Kayseri', '38000', 'Turkey', TRUE, 10),
('1414 Magnolia Avenue', 'Kayseri', 'Kayseri', '38010', 'Turkey', FALSE, 10),
('1515 Dogwood Drive', 'Kayseri', 'Kayseri', '38020', 'Turkey', FALSE, 10);




-- Insert instances into the "review" table
INSERT INTO review (rating, comment, created_at, product_id, user_id)
VALUES
-- Product 1
(5, 'Great product! Very satisfied.', '2024-12-01 10:00:00', 1, 1),
(4, 'Good quality, but could be cheaper.', '2024-12-02 12:00:00', 1, 2),

-- Product 2
(4, 'Good value for the price.', '2024-12-02 11:15:00', 2, 3),

-- Product 3
(3, 'Average quality, could be better.', '2024-12-03 09:30:00', 3, 4),
(2, 'Not worth the money.', '2024-12-04 14:00:00', 3, 5),

-- Product 4
(5, 'Excellent! Highly recommend.', '2024-12-04 14:45:00', 4, 6),

-- Product 5
(2, 'Not as expected. Disappointed.', '2024-12-05 16:00:00', 5, 7),
(3, 'Decent quality, but could be better.', '2024-12-05 17:30:00', 5, 8),

-- Product 6
(4, 'Works well, satisfied with the purchase.', '2024-12-06 13:30:00', 6, 9),

-- Product 7
(5, 'Amazing quality, would buy again.', '2024-12-07 12:00:00', 7, 10),
(3, 'It’s okay, not great.', '2024-12-07 14:00:00', 7, 1),

-- Product 8
(3, 'Okay product, but shipping took too long.', '2024-12-08 15:15:00', 8, 2),

-- Product 9
(4, 'Good product, decent quality.', '2024-12-09 14:00:00', 9, 3),
(5, 'Fantastic product! Exceeded expectations.', '2024-12-10 10:30:00', 9, 4),

-- Product 10
(1, 'Terrible experience. Do not recommend.', '2024-12-10 18:30:00', 10, 5),

-- Product 11
(5, 'Perfect, just what I needed.', '2024-12-11 11:45:00', 11, 6),
(4, 'Good quality, but a bit expensive.', '2024-12-11 14:00:00', 11, 7),

-- Product 12
(4, 'Great product for the price.', '2024-12-12 13:00:00', 12, 8),

-- Product 13
(3, 'Meh, it’s okay.', '2024-12-13 14:30:00', 13, 9),
(4, 'Better than I expected.', '2024-12-14 10:00:00', 13, 10),

-- Product 14
(5, 'Top-notch quality!', '2024-12-14 09:45:00', 14, 1),

-- Product 15
(2, 'Not satisfied, expected better.', '2024-12-15 17:15:00', 15, 2),

-- Product 16
(4, 'Pretty decent product.', '2024-12-16 10:15:00', 16, 3),

-- Product 17
(5, 'Fantastic, exceeded my expectations.', '2024-12-17 12:30:00', 17, 4),

-- Product 18
(3, 'Good, but could use some improvements.', '2024-12-18 15:00:00', 18, 5),
(4, 'Liked it, worth the money.', '2024-12-18 16:30:00', 18, 6),

-- Product 19
(4, 'Liked it, worth the money.', '2024-12-19 13:45:00', 19, 7),

-- Product 20
(1, 'Poor quality. Disappointed.', '2024-12-20 18:00:00', 20, 8),
(3, 'It’s okay, but not great.', '2024-12-20 19:30:00', 20, 9);


