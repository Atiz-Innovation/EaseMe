# ตารางข้อมูลฟิลด์ (Fields) สำหรับ Plan Subscription

| Field Name           | Data Type   | Description                                            | Example Value                        |
|----------------------|------------|--------------------------------------------------------|--------------------------------------|
| id                   | String     | รหัสแผนสมาชิก (UUID)                                  | "subplan-001-abcdef"                 |
| merchant_id          | String     | รหัสร้านค้าหรือผู้ให้บริการ                           | "mch123456"                          |
| name                 | String     | ชื่อแผนสมาชิก                                         | "ฟิตเนสรายเดือน Premium"            |
| description          | String     | คำอธิบายแผนสมาชิก                                     | "ออกกำลังกายไม่จำกัด ตลอด 30 วัน"   |
| price                | Number     | ราคาต่อรอบสมาชิก (บาท)                                | 999                                  |
| original_price       | Number     | ราคาปกติ (ถ้ามีโปรโมชันลดราคา)                        | 1200                                 |
| discount_percent     | Number     | เปอร์เซ็นต์ส่วนลด (ถ้ามี)                             | 16.75                                |
| billing_cycle        | String     | รอบบิล (เช่น "monthly", "quarterly", "yearly")        | "monthly"                            |
| duration_count       | Integer    | จำนวนรอบที่รวมในแพ็กเกจ (1=รายเดือน, 3=3 เดือน ฯลฯ)  | 1                                    |
| trial_days           | Integer    | จำนวนวันทดลองใช้ฟรี (ถ้ามี)                            | 7                                    |
| services_included    | Array      | รายการบริการ/สิทธิ์ที่รวมในแผน                        | [ { "service_id": "svc100", "quota": 30 } ] |
| auto_renew           | Boolean    | ต่ออายุอัตโนมัติเมื่อครบกำหนด                         | true                                 |
| purchase_limit       | Integer    | จำนวนครั้งสูงสุดที่ลูกค้าซื้อได้ต่อคน                  | 1                                    |
| total_quota          | Integer    | จำนวนแพ็กเกจทั้งหมดที่ขายได้ (null = ไม่จำกัด)         | null                                 |
| sold_count           | Integer    | จำนวนสมาชิกที่สมัครแล้ว                                | 120                                  |
| is_active            | Boolean    | เปิด/ปิดการขายแผนสมาชิก                               | true                                 |
| image_url            | String     | URL รูปภาพประกอบแผนสมาชิก                             | "https://cdn.example.com/sub1.png"   |
| created_at           | DateTime   | วันที่สร้างแผนสมาชิก                                   | "2025-10-16T08:00:00Z"               |
| updated_at           | DateTime   | วันที่อัปเดตล่าสุด                                     | "2025-10-16T09:00:00Z"               |
