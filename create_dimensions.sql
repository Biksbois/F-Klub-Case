CREATE TABLE time_dimension (
    surrogate_key SERIAL PRIMARY KEY,
    date_time timestamptz
),

CREATE TABLE costumer_dimension(
    member_id INT PRIMARY KEY,
    active BOOLEAN,
    activation_year INT,
    gender CHAR
),

CREATE TABLE product_dimension(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(69),
    product_availability BOOLEAN,
    price INT,
    alcohol_content DECIMAL,
    quantity INT
),

CREATE TABLE room_dimension(
    room_id INT PRIMARY KEY,
    room_name VARCHAR(69),
    room_description VARCHAR(69)
),

CREATE TABLE sales_fact(
    sale_id INT PRIMARY KEY,
    time_stamp_id INT,
    product_id INT,
    member_id INT,
    room_id INT,
    FOREIGN KEY(time_stamp_id)
    REFERENCES time_dimension(surrogate_key),

    FOREIGN KEY(product_id)
    REFERENCES product_dimension(product_id),

    FOREIGN KEY(member_id)
    REFERENCES costumer_dimension(member_id),

    FOREIGN KEY(room_id)
    REFERENCES room_dimension(room_id),

    sale_price INT
)