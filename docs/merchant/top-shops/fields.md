# Top Shops - Fields

| Field Name        | Data Type | Description                          | Example Value         |
|-------------------|-----------|--------------------------------------|----------------------|
| shop_id           | String    | รหัสร้านค้า                         | SHP0001              |
| shop_name         | String    | ชื่อร้านค้า                          | ร้านกาแฟ Atiz        |
| merchant_id       | String    | รหัสผู้ประกอบการ                     | MER001               |
| total_sales       | Number    | ยอดขายรวม (บาท)                      | 120000               |
| total_orders      | Number    | จำนวนคำสั่งซื้อทั้งหมด                | 350                  |
| rating            | Float     | คะแนนความนิยม (สูงสุด 5)             | 4.7                  |
| category          | String    | หมวดหมู่ร้านค้า                      | อาหารและเครื่องดื่ม  |
| location          | String    | ที่ตั้งร้านค้า                        | สยามสแควร์           |
| status            | String    | สถานะร้านค้า (active/inactive)       | active               |
| created_at        | DateTime  | วันที่สร้างข้อมูลร้านค้า              | 2024-10-01T08:00:00Z |
| updated_at        | DateTime  | วันที่อัปเดตข้อมูลล่าสุด              | 2024-10-15T13:10:00Z |

# หมายเหตุ:
- สามารถปรับแต่ง field ตามความเหมาะสมกับระบบร้านค้า
- ควรตรวจสอบความครบถ้วนของข้อมูลก่อนบันทึก

