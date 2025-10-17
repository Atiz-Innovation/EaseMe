# ตารางข้อมูลฟิลด์ (Fields) สำหรับ Banner Management

| Field Name       | Data Type   | Description                          | Example Value                       |
|------------------|------------|--------------------------------------|-------------------------------------|
| id               | String     | รหัสแบนเนอร์ (UUID)                 | "bann-1234-abcd-5678-efgh"          |
| merchant_id      | String     | รหัสร้านค้าที่เป็นเจ้าของแบนเนอร์   | "mch123456"                         |
| title            | String     | ชื่อแบนเนอร์                        | "โปรโมชันลดราคา"                    |
| image_url        | String     | URL รูปภาพแบนเนอร์                   | "https://cdn.example.com/banner1.png"|
| link_url         | String     | URL ปลายทางเมื่อคลิกแบนเนอร์         | "https://shop.example.com/promo1"   |
| display_order    | Integer    | ลำดับการแสดงผล                      | 1                                   |
| is_active        | Boolean    | สถานะเปิดใช้งาน                      | true                                |
| start_date       | DateTime   | วันเริ่มต้นแสดงผล                    | "2025-10-16T00:00:00Z"              |
| end_date         | DateTime   | วันสิ้นสุดแสดงผล                     | "2025-10-31T23:59:59Z"              |
| created_at       | DateTime   | วันที่สร้างแบนเนอร์                  | "2025-10-16T08:00:00Z"              |
| updated_at       | DateTime   | วันที่อัปเดตล่าสุด                    | "2025-10-16T09:00:00Z"              |
