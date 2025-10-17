# Transaction & Payment - Fields

| Field Name           | Data Type | Description                              | Example Value     |
|----------------------|-----------|------------------------------------------|-------------------|
| transaction_id       | String    | รหัสธุรกรรม                              | TXN-10001         |
| transaction_date     | Date      | วันที่ทำธุรกรรม                           | 2024-03-01        |
| transaction_time     | Time      | เวลาทำธุรกรรม                             | 13:45             |
| store_name           | String    | ชื่อร้านค้า                               | ABC Clinic        |
| merchant_id          | String    | รหัสร้านค้า                               | MCH-001           |
| customer_name        | String    | ชื่อลูกค้า (ถ้ามี)                        | สมชาย ใจดี        |
| customer_id          | String    | รหัสลูกค้า (ถ้ามี)                        | CUS-001           |
| product_service      | String    | รายการสินค้า/บริการ                        | เลเซอร์หน้าใส     |
| payment_method       | Enum      | วิธีการชำระเงิน (Credit, QR, Cash, ฯลฯ)   | Credit Card       |
| commission_rate      | Number    | อัตราคอมมิชชั่น (%)                       | 10                |
| gmv                  | Number    | ยอดขายธุรกรรมนี้ (Gross Merchandise Value) | 1000              |
| gp                   | Number    | กำไรขั้นต้น (Gross Profit)                 | 100               |
| payment_gateway_fee  | Number    | ค่าธรรมเนียม Payment Gateway               | 15                |
| net_revenue          | Number    | รายได้สุทธิที่แพลตฟอร์มได้รับ              | 85                |
| net_payout           | Number    | ยอดโอนไปร้านค้า                            | 900               |
| transaction_status   | Enum      | สถานะธุรกรรม (Success/Pending/Failed)      | Success           |
| source               | Enum      | ช่องทางธุรกรรม (Marketplace/Direct/QL)     | Marketplace       |
| operator             | String    | ผู้ทำรายการ (admin/ระบบ/ลูกค้า)            | admin             |
| remark               | String    | หมายเหตุ                                    | ลูกค้าชำระเงินล่าช้า |
| edit_button          | Button    | ปุ่มแก้ไขข้อมูลธุรกรรม                      | -                 |
| mark_status_button   | Button    | ปุ่มเปลี่ยนสถานะธุรกรรม                     | -                 |
| export_button        | Button    | ปุ่มส่งออกข้อมูลธุรกรรม                      | -                 |
