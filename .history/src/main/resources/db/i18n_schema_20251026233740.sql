-- Create tables for internationalization
CREATE TABLE IF NOT EXISTS products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL,
    weight DOUBLE NOT NULL,
    product_category_id INT,
    FOREIGN KEY (product_category_id) REFERENCES product_category(product_category_id)
);

CREATE TABLE IF NOT EXISTS product_translation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    language_id VARCHAR(2) NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    UNIQUE KEY unique_translation (product_id, language_id)
);

CREATE TABLE IF NOT EXISTS product_category_translation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_category_id INT NOT NULL,
    language_id VARCHAR(2) NOT NULL,
    category_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (product_category_id) REFERENCES product_category(product_category_id),
    UNIQUE KEY unique_translation (product_category_id, language_id)
);

-- Insert sample data
INSERT INTO product_category (product_category_id, can_be_shipped) VALUES 
(1, true),
(2, true);

INSERT INTO products (product_id, name, price, weight, product_category_id) VALUES
(1, 'Laptop', 999.99, 2.5, 1),
(2, 'Smartphone', 599.99, 0.2, 1);

-- Insert translations for VI
INSERT INTO product_translation (product_id, language_id, product_name) VALUES
(1, 'VI', 'Máy tính xách tay'),
(2, 'VI', 'Điện thoại thông minh');

INSERT INTO product_category_translation (product_category_id, language_id, category_name) VALUES
(1, 'VI', 'Điện tử'),
(2, 'VI', 'Gia dụng');

-- Insert translations for EN
INSERT INTO product_translation (product_id, language_id, product_name) VALUES
(1, 'EN', 'Laptop'),
(2, 'EN', 'Smartphone');

INSERT INTO product_category_translation (product_category_id, language_id, category_name) VALUES
(1, 'EN', 'Electronics'),
(2, 'EN', 'Home Appliances');

-- Insert translations for ES (Spanish)
INSERT INTO product_translation (product_id, language_id, product_name) VALUES
(1, 'ES', 'Ordenador portátil'),
(2, 'ES', 'Teléfono inteligente');

INSERT INTO product_category_translation (product_category_id, language_id, category_name) VALUES
(1, 'ES', 'Electrónica'),
(2, 'ES', 'Electrodomésticos');

-- Insert translations for FR (French)
INSERT INTO product_translation (product_id, language_id, product_name) VALUES
(1, 'FR', 'Ordinateur portable'),
(2, 'FR', 'Téléphone intelligent');

INSERT INTO product_category_translation (product_category_id, language_id, category_name) VALUES
(1, 'FR', 'Électronique'),
(2, 'FR', 'Électroménager');