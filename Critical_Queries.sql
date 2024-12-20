-- 1. Get the product with the most reviews
SELECT product.id, product.name, COUNT(review.id)
FROM product
JOIN review ON product.id = review.product_id
GROUP BY product.id, product.name
ORDER BY COUNT(review.id) DESC
LIMIT 1;


-- 2. Get the product with the highest average rating
SELECT product.id, product.name, AVG(review.rating)
FROM product
JOIN review ON product.id = review.product_id
GROUP BY product.id, product.name
ORDER BY AVG(review.rating) DESC
LIMIT 1;


-- 3. Get the most expensive product ordered by users whose names start with 'E'
SELECT product.id, product.name, product.price
FROM product
WHERE product.id IN (
    SELECT orders.product_id
    FROM orders
    WHERE orders.user_id IN (
        SELECT "user".id
        FROM "user"
        WHERE "user".first_name ILIKE 'E%'
    )
)
ORDER BY product.price DESC
LIMIT 1;


-- 4. Get the total number of products ordered by each user
SELECT "user".id, "user".first_name, "user".last_name, SUM(orders.quantity)
FROM "user"
JOIN orders ON "user".id = orders.user_id
GROUP BY "user".id, "user".first_name, "user".last_name
ORDER BY SUM(orders.quantity) DESC;


-- 5. Get the most expensive product in each category
SELECT category.name, product.id, product.name, product.price
FROM product
JOIN category ON product.category_id = category.id
WHERE product.price IN (
    SELECT MAX(product.price)
    FROM product
    GROUP BY product.category_id
)
ORDER BY category.name;


-- 6. Get the total amount spent by each user
SELECT "user".id, "user".first_name, "user".last_name, SUM(product.price * orders.quantity)
FROM "user"
JOIN orders ON "user".id = orders.user_id
JOIN product ON orders.product_id = product.id
GROUP BY "user".id, "user".first_name, "user".last_name
ORDER BY SUM(product.price * orders.quantity) DESC;


-- 7. Get the most ordered product
SELECT product.id, product.name, product_total.total_quantity
FROM product
JOIN (
    SELECT orders.product_id, SUM(orders.quantity) AS total_quantity
    FROM orders
    GROUP BY orders.product_id
) product_total ON product.id = product_total.product_id
ORDER BY product_total.total_quantity DESC
LIMIT 1;


-- 8. Get products that have no reviews
SELECT product.id, product.name
FROM product
WHERE product.id NOT IN (
    SELECT review.product_id
    FROM review
);


-- 9. Get products that have not been ordered
SELECT product.id, product.name
FROM product
WHERE product.id NOT IN (
    SELECT orders.product_id
    FROM orders
);


-- 10. Get users with more than one card
SELECT "user".id, "user".first_name, "user".last_name
FROM "user"
WHERE "user".id IN (
    SELECT card.user_id
    FROM card
    GROUP BY card.user_id
    HAVING COUNT(card.id) > 1
);


-- 11. Get users without a default address
SELECT "user".id, "user".first_name, "user".last_name
FROM "user"
WHERE "user".id NOT IN (
    SELECT address.user_id
    FROM address
    WHERE address.is_default = TRUE
);


-- 12. Get the category of the most ordered product
SELECT category.name
FROM category
JOIN product ON category.id = product.category_id
WHERE product.id = (
    SELECT orders.product_id
    FROM orders
    GROUP BY orders.product_id
    ORDER BY SUM(orders.quantity) DESC
    LIMIT 1
);


-- 13. Get total spending of users who have placed at least one order
SELECT "user".id, "user".first_name, "user".last_name, spending_summary.total_spent
FROM "user"
JOIN (
    SELECT orders.user_id, SUM(product.price * orders.quantity) AS total_spent
    FROM orders
    JOIN product ON orders.product_id = product.id
    GROUP BY orders.user_id
) spending_summary ON "user".id = spending_summary.user_id
ORDER BY spending_summary.total_spent DESC;


-- 14. Get users who ordered the most expensive product
SELECT "user".id, "user".first_name, "user".last_name
FROM "user"
WHERE "user".id IN (
    SELECT orders.user_id
    FROM orders
    WHERE orders.product_id = (
        SELECT product.id
        FROM product
        ORDER BY product.price DESC
        LIMIT 1
    )
);


-- 15. Get the most ordered product in the last month
SELECT product.id, product.name
FROM product
WHERE product.id = (
    SELECT orders.product_id
    FROM orders
    WHERE orders.order_date >= CURRENT_DATE - INTERVAL '1 month'
    GROUP BY orders.product_id
    ORDER BY SUM(orders.quantity) DESC
    LIMIT 1
);