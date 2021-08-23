CREATE TABLE suppliers (
    id INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone TEXT NOT NULL,
    email VARCHAR(255) NOT NULL,
    brief_data TEXT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(id)

);
CREATE TABLE products (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    code VARCHAR(5) NOT NULL,
    descr TEXT ,
    price INTEGER UNSIGNED NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    supplier INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(supplier) REFERENCES suppliers(id)


);

CREATE TABLE governorates (
    id INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(id)
);

CREATE TABLE stores (
    id INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    storeName VARCHAR(255) NOT NULL,
    storeAddress TEXT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    governorate INTEGER(10) UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(governorate) REFERENCES governorates(id)

);
CREATE TABLE st_pr(
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    storeId INTEGER UNSIGNED NOT NULL  ,
    productId INTEGER UNSIGNED NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(id),
    FOREIGN KEY(storeId) REFERENCES stores(id),
    FOREIGN KEY(productId) REFERENCES products(id)



);