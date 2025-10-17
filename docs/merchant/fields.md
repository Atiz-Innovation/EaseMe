# ตารางข้อมูลฟิลด์ (Fields) สำหรับ Merchant

| Field Name      | Data Type   | Description                                             | Example Value              |
|-----------------|------------|---------------------------------------------------------|----------------------------|
| id              | String     | รหัสร้านค้า (UUID)                                     | "mch123456"                |
| name            | String     | ชื่อร้านค้า                                            | "ABC Spa"                  |
| owner_name      | String     | ชื่อเจ้าของร้าน                                         | "คุณสมชาย ใจดี"           |
| phone           | String     | เบอร์โทรศัพท์ร้านค้า                                   | "0812345678"               |
| email           | String     | อีเมลร้านค้า                                           | "abcspa@email.com"         |
| address         | String     | ที่อยู่ร้านค้า                                          | "123 ถนนสุขุมวิท กทม."      |
| province        | String     | จังหวัด                                                | "กรุงเทพมหานคร"            |
| district        | String     | เขต/อำเภอ                                             | "คลองเตย"                  |
| sub_district    | String     | แขวง/ตำบล                                              | "คลองตัน"                  |
| postal_code     | String     | รหัสไปรษณีย์                                           | "10110"                    |
| tax_id          | String     | เลขประจำตัวผู้เสียภาษี                                 | "0105551234567"            |
| business_type   | String     | ประเภทธุรกิจ เช่น สปา, ร้านอาหาร, ฯลฯ                  | "สปา"                      |
| logo_url        | String     | URL โลโก้ร้านค้า                                       | "https://cdn.com/logo.png" |
| is_active       | Boolean    | สถานะร้านค้า (เปิด/ปิด)                                | true                       |
| created_at      | DateTime   | วันที่สร้างร้านค้า                                     | "2025-10-16T08:00:00Z"     |
| updated_at      | DateTime   | วันที่อัปเดตล่าสุด                                     | "2025-10-16T09:00:00Z"     |
| branches        | Array      | รายชื่อสาขา (id ของ branch)                            | ["brn001", "brn002"]       |
