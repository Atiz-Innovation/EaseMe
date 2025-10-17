-- Example schema for core system tables (Admin Console/EaseMe)

-- User/Member Table
CREATE TABLE members (
    user_id VARCHAR(32) PRIMARY KEY,
    username VARCHAR(64) NOT NULL,
    full_name VARCHAR(128),
    email VARCHAR(128) UNIQUE,
    phone_number VARCHAR(32),
    member_level VARCHAR(32),
    status VARCHAR(16) DEFAULT 'Active',
    join_channel VARCHAR(32),
    start_date DATE,
    expiry_date DATE,
    accumulated_points INT DEFAULT 0
);

-- Merchant Table
CREATE TABLE merchants (
    merchant_id VARCHAR(32) PRIMARY KEY,
    store_name VARCHAR(128) NOT NULL,
    store_type VARCHAR(32),
    status VARCHAR(16) DEFAULT 'Active',
    account_manager VARCHAR(128),
    branch_count INT DEFAULT 1,
    onboard_date DATE,
    go_live_date DATE
);

-- Coupon Table
CREATE TABLE coupons (
    coupon_id VARCHAR(32) PRIMARY KEY,
    coupon_name VARCHAR(128),
    coupon_type VARCHAR(32),
    discount_amount DECIMAL(10,2),
    min_spend DECIMAL(10,2),
    usage_limit INT,
    start_date DATE,
    expiry_date DATE,
    status VARCHAR(16) DEFAULT 'Active'
);

-- Transaction Table
CREATE TABLE transactions (
    transaction_id VARCHAR(32) PRIMARY KEY,
    merchant_id VARCHAR(32),
    user_id VARCHAR(32),
    transaction_date DATETIME,
    transaction_status VARCHAR(16),
    payment_method VARCHAR(32),
    gmv DECIMAL(10,2),
    commission_rate FLOAT,
    net_revenue DECIMAL(10,2),
    FOREIGN KEY (merchant_id) REFERENCES merchants(merchant_id),
    FOREIGN KEY (user_id) REFERENCES members(user_id)
);

-- Support Ticket Table
CREATE TABLE support_tickets (
    ticket_id VARCHAR(32) PRIMARY KEY,
    category VARCHAR(64),
    subject VARCHAR(128),
    status VARCHAR(16) DEFAULT 'Open',
    created_by VARCHAR(32),
    created_date DATETIME,
    assigned_to VARCHAR(32),
    resolution_note TEXT,
    update_date DATETIME
);

-- Knowledge Base Table
CREATE TABLE knowledge_base (
    article_id VARCHAR(32) PRIMARY KEY,
    title VARCHAR(128),
    category VARCHAR(64),
    content TEXT,
    status VARCHAR(16) DEFAULT 'Published',
    created_by VARCHAR(32),
    created_date DATETIME,
    updated_by VARCHAR(32),
    updated_date DATETIME
);

-- (add more schema for other menu/submenu as needed)
