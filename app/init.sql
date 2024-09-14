CREATE TABLE IF NOT EXISTS items
(
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT,
    price FLOAT,
    in_stock BOOLEAN
);

BEGIN;

INSERT INTO items (name, description, price, in_stock) VALUES
('Milk', '1 liter of whole milk', 1.99, TRUE),
('Eggs', 'A dozen organic eggs', 2.99, TRUE),
('Bread', 'Whole wheat bread loaf', 2.49, TRUE),
('Butter', 'Salted butter, 200g', 3.59, TRUE),
('Cheese', 'Cheddar cheese, 250g', 4.99, TRUE),
('Yogurt', 'Greek yogurt, 500g', 3.79, TRUE),
('Apples', 'Fresh red apples, 1kg', 3.49, TRUE),
('Bananas', 'Ripe yellow bananas, 1kg', 1.69, TRUE),
('Orange Juice', '1 liter of orange juice', 2.89, TRUE),
('Chicken Breast', 'Boneless chicken breast, 500g', 5.99, TRUE),
('Ground Beef', 'Lean ground beef, 500g', 6.99, TRUE),
('Pasta', 'Spaghetti pasta, 500g', 1.29, TRUE),
('Tomato Sauce', 'Tomato basil pasta sauce, 400g', 2.49, TRUE),
('Rice', 'Long grain white rice, 1kg', 2.79, TRUE),
('Beans', 'Canned black beans, 400g', 1.19, TRUE),
('Cereal', 'Whole grain cereal, 500g', 3.89, TRUE),
('Oats', 'Rolled oats, 500g', 2.39, TRUE),
('Sugar', 'Granulated sugar, 1kg', 1.49, TRUE),
('Flour', 'All-purpose flour, 1kg', 1.99, TRUE),
('Salt', 'Table salt, 1kg', 0.89, TRUE),
('Pepper', 'Ground black pepper, 50g', 2.59, TRUE),
('Olive Oil', 'Extra virgin olive oil, 500ml', 6.49, TRUE),
('Vinegar', 'Balsamic vinegar, 250ml', 3.79, TRUE),
('Coffee', 'Ground coffee, 250g', 4.99, TRUE),
('Tea', 'Green tea bags, 100g', 3.49, TRUE),
('Honey', 'Pure honey, 250g', 5.99, TRUE),
('Chocolate', 'Dark chocolate, 100g', 2.99, TRUE),
('Cookies', 'Chocolate chip cookies, 200g', 2.69, TRUE),
('Chips', 'Potato chips, 150g', 1.89, TRUE),
('Soda', 'Cola soda, 2 liters', 1.99, TRUE),
('Water', 'Bottled mineral water, 1.5 liters', 0.99, TRUE),
('Toilet Paper', '12-pack toilet paper', 5.49, TRUE),
('Shampoo', 'Herbal shampoo, 400ml', 4.29, TRUE),
('Toothpaste', 'Mint toothpaste, 150g', 2.79, TRUE),
('Soap', 'Bar of soap, 100g', 1.19, TRUE),
('Dish Soap', 'Liquid dish soap, 500ml', 2.29, TRUE),
('Laundry Detergent', 'Powder laundry detergent, 1kg', 5.99, TRUE),
('Paper Towels', '6-pack paper towels', 4.99, TRUE),
('Hand Sanitizer', 'Hand sanitizer, 250ml', 3.49, TRUE),
('Facial Tissue', 'Box of facial tissue, 150 sheets', 2.19, TRUE),
('Mouthwash', 'Mint mouthwash, 500ml', 3.89, TRUE),
('Deodorant', 'Antiperspirant deodorant, 50ml', 2.99, TRUE),
('Shaving Cream', 'Foam shaving cream, 200ml', 2.79, TRUE),
('Razor Blades', 'Pack of 5 razor blades', 4.99, TRUE),
('Toothbrush', 'Soft bristle toothbrush', 1.49, TRUE),
('Body Lotion', 'Moisturizing body lotion, 400ml', 5.79, TRUE),
('Conditioner', 'Hair conditioner, 400ml', 4.29, TRUE),
('Lip Balm', 'Lip balm stick', 1.99, TRUE);

COMMIT;