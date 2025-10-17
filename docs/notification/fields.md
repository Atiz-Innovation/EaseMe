# ตารางข้อมูลฟิลด์ (Fields) สำหรับ Notification

| Field Name        | Data Type   | Description                         | Example Value                          |
|-------------------|------------|-------------------------------------|----------------------------------------|
| id                | String     | รหัสการแจ้งเตือน (UUID)            | "88a4d9dc-0e56-4b3c-9f44-12a3e6d0c123" |
| user_id           | String     | รหัสผู้รับการแจ้งเตือน             | "user_12345"                           |
| type              | String     | ประเภทการแจ้งเตือน (info, promo, system, warning, etc.) | "promo"                                |
| title             | String     | หัวข้อแจ้งเตือน                     | "โปรโมชั่นใหม่!"                        |
| message           | String     | ข้อความรายละเอียดแจ้งเตือน         | "รับส่วนลด 20% เมื่อซื้อครั้งแรก"       |
| deeplink_url      | String     | URL หรือ Deep Link ไปยังหน้าเป้าหมาย| "app://promo/2025"                     |
| is_read           | Boolean    | สถานะอ่านแล้ว/ยังไม่อ่าน            | false                                  |
| sent_at           | DateTime   | วันที่และเวลาที่ส่งแจ้งเตือน         | "2025-10-16T12:34:56Z"                 |
| read_at           | DateTime   | วันที่และเวลาที่อ่านแจ้งเตือน        | null / "2025-10-16T13:00:00Z"          |
| channel           | String     | ช่องทางการแจ้งเตือน (in-app, email, sms, push) | "in-app"                   |
| metadata          | JSON       | ข้อมูลเพิ่มเติม (optional)           | {"order_id":"od1234567"}               |
