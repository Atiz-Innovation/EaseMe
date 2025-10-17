# ตารางข้อมูลฟิลด์ (Fields) สำหรับ Integration Settings

| Field Name      | Data Type | Description                                   | Example Value              |
|-----------------|-----------|-----------------------------------------------|----------------------------|
| id              | String    | รหัสการตั้งค่า (UUID)                        | "itg-01b23c4d-5678"        |
| system_name     | String    | ชื่อระบบภายนอกที่เชื่อมต่อ                  | "LINE OA"                  |
| config_key      | String    | คีย์การตั้งค่า (เช่น client_id, api_url)     | "api_url"                  |
| config_value    | String    | ค่าการตั้งค่า                                | "https://api.line.me"      |
| is_active       | Boolean   | สถานะการเปิดใช้งานการเชื่อมต่อนี้           | true                       |
| created_by      | String    | ผู้ที่สร้างการตั้งค่านี้                      | "admin01"                  |
| created_at      | DateTime  | วันที่สร้าง                                   | "2025-10-16T08:00:00Z"     |
| updated_at      | DateTime  | วันที่อัปเดตล่าสุด                            | "2025-10-16T08:15:00Z"     |
| description     | String    | คำอธิบายเกี่ยวกับการตั้งค่านี้               | "ตั้งค่า API สำหรับ LINE OA"|
