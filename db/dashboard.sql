-- dashboard.sql
-- Schema เฉพาะสำหรับข้อมูลสถิติและสรุปสำหรับ Dashboard ของระบบ Admin Console

-- ตารางสรุปยอดขายรวม (GMV, GP, Net Revenue) รายวัน/เดือน/ปี
CREATE TABLE dashboard_sales_summary (
    summary_id INT PRIMARY KEY AUTO_INCREMENT,
    summary_type ENUM('daily', 'monthly', 'yearly') NOT NULL,
    summary_date DATE NOT NULL,
    gmv DECIMAL(15,2) DEFAULT 0,           -- ยอดขายรวม (Gross Merchandise Value)
    gp DECIMAL(15,2) DEFAULT 0,            -- กำไรขั้นต้น (Gross Profit)
    net_revenue DECIMAL(15,2) DEFAULT 0,   -- รายได้สุทธิ
    total_transactions INT DEFAULT 0,      -- จำนวนธุรกรรม
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ตารางยอดสมาชิกใหม่/สมาชิกทั้งหมด รายวัน/เดือน/ปี
CREATE TABLE dashboard_member_summary (
    summary_id INT PRIMARY KEY AUTO_INCREMENT,
    summary_type ENUM('daily', 'monthly', 'yearly') NOT NULL,
    summary_date DATE NOT NULL,
    new_members INT DEFAULT 0,
    total_members INT DEFAULT 0,
    active_members INT DEFAULT 0,
    expiring_members INT DEFAULT 0,
    expired_members INT DEFAULT 0,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ตาราง breakdown วิธีชำระเงิน (ยอดขาย/จำนวนธุรกรรมในแต่ละช่องทาง)
CREATE TABLE dashboard_payment_method_stats (
    stats_id INT PRIMARY KEY AUTO_INCREMENT,
    stats_date DATE NOT NULL,
    payment_method VARCHAR(64) NOT NULL,          -- เช่น QR, Credit Card, Cash, PromptPay
    payment_count INT DEFAULT 0,
    payment_amount DECIMAL(15,2) DEFAULT 0,
    summary_type ENUM('daily', 'monthly', 'yearly') DEFAULT 'daily',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ตารางแจ้งเตือน (Alerts/Notifications) ที่แสดงบน Dashboard
CREATE TABLE dashboard_alerts (
    alert_id INT PRIMARY KEY AUTO_INCREMENT,
    alert_type VARCHAR(64) NOT NULL,              -- เช่น merchant_expiry, pending_txn, new_member
    alert_message VARCHAR(256) NOT NULL,
    alert_level ENUM('info', 'warning', 'critical') DEFAULT 'info',
    alert_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    resolved BOOLEAN DEFAULT FALSE
);

-- ตาราง Quick Action Log (บันทึกการกดปุ่มลัด)
CREATE TABLE dashboard_quick_action_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    action_name VARCHAR(128) NOT NULL,            -- เช่น "เพิ่มร้านค้า", "เพิ่มคูปอง"
    user_id VARCHAR(32) NOT NULL,
    action_time DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ตารางเก็บค่ากราฟแนวโน้ม (Trend Data) หากต้องการ pre-calculate
CREATE TABLE dashboard_trend_data (
    trend_id INT PRIMARY KEY AUTO_INCREMENT,
    trend_type ENUM('sales', 'members') NOT NULL, -- sales = ยอดขาย, members = สมาชิกใหม่
    trend_date DATE NOT NULL,
    trend_value DECIMAL(15,2) DEFAULT 0,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- หมายเหตุ: ตารางข้างต้นสามารถปรับหรือขยาย field ได้ตามความต้องการของ Dashboard จริง
