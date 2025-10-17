# ตารางข้อมูลฟิลด์ (Fields) สำหรับ Notification Settings

| Field Name          | Data Type   | Description                                 | Example Value          |
|---------------------|------------|---------------------------------------------|------------------------|
| id                  | String     | รหัสตั้งค่าการแจ้งเตือน (UUID)            | "ntf-001a2b3c"         |
| user_id             | String     | รหัสผู้ใช้ที่ตั้งค่าการแจ้งเตือน           | "usr123456"            |
| channel             | String     | ช่องทางการรับแจ้งเตือน (email, sms, push)  | "email"                |
| is_enabled          | Boolean    | เปิด/ปิดการแจ้งเตือนช่องทางนี้             | true                   |
| notification_type   | String     | ประเภทการแจ้งเตือน (promotion, booking, system, ฯลฯ) | "promotion"   |
| time_window_start   | Time       | เวลาเริ่มต้นที่ต้องการรับแจ้งเตือน         | "08:00"                |
| time_window_end     | Time       | เวลาสิ้นสุดที่ต้องการรับแจ้งเตือน          | "22:00"                |
| created_at          | DateTime   | วันที่สร้างการตั้งค่านี้                    | "2025-10-16T09:00:00Z" |
| updated_at          | DateTime   | วันที่อัปเดตล่าสุด                          | "2025-10-16T09:30:00Z" |
