USE churn_db;
GO

CREATE TABLE dbo.customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    email VARCHAR(100),
    address VARCHAR(255),
    phone VARCHAR(25),
    plan_type VARCHAR(20),
    join_date DATE
);

CREATE TABLE dbo.[usage] (
    usage_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT,
    minutes_used INT,
    data_used_gb FLOAT,
    sms_count INT,
    usage_date DATE,
    FOREIGN KEY (customer_id) REFERENCES dbo.customers(customer_id)
);

CREATE TABLE dbo.payments (
    payment_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT,
    amount FLOAT,
    payment_method VARCHAR(30),
    payment_date DATE,
    FOREIGN KEY (customer_id) REFERENCES dbo.customers(customer_id)
);

CREATE TABLE dbo.complaints (
    complaint_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT,
    complaint_type VARCHAR(50),
    complaint_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES dbo.customers(customer_id)
);

CREATE TABLE dbo.churn (
    churn_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT,
    is_churned BIT,
    churn_date DATE,
    FOREIGN KEY (customer_id) REFERENCES dbo.customers(customer_id)
);
