# ตารางข้อมูลฟิลด์ (Fields) สำหรับ Quick Link

| Field Name     | Data Type   | Description                                | Example Value                    |
|----------------|------------|--------------------------------------------|----------------------------------|
| id             | String     | รหัสลิงก์ด่วน (UUID)                      | "qlk-1234abcd-5678efgh"          |
| merchant_id    | String     | รหัสร้านค้าที่เป็นเจ้าของลิงก์ด่วน        | "mch123456"                      |
| label          | String     | ข้อความหรือชื่อที่แสดงบนลิงก์             | "จองคิวด่วน"                     |
| url            | String     | URL ปลายทางที่ต้องการลิงก์ไป               | "https://line.me/ti/p/xxxxxx"    |
| icon_url       | String     | URL สำหรับไอคอน (ถ้ามี)                    | "https://cdn.example.com/line.png"|
| order          | Integer    | ลำดับการแสดงผลของลิงก์                    | 1                                |
| is_active      | Boolean    | สถานะเปิดใช้งานลิงก์ด่วน                   | true                             |
| created_at     | DateTime   | วันที่สร้างลิงก์ด่วน                       | "2025-10-16T07:00:00Z"           |
| updated_at     | DateTime   | วันที่อัปเดตข้อมูลล่าสุด                    | "2025-10-16T08:45:00Z"           |
