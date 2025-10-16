# Dashboard Fields

| Field Name           | Data Type | Description                              | Example Value    |
|----------------------|-----------|------------------------------------------|------------------|
| total_sales          | Number    | ยอดขายรวม (GMV)                         | 120000           |
| gp                   | Number    | กำไรขั้นต้น                             | 20000            |
| net_revenue          | Number    | รายได้สุทธิที่แพลตฟอร์มได้รับ           | 15000            |
| total_transactions   | Integer   | จำนวนธุรกรรมทั้งหมด                     | 180              |
| new_members          | Integer   | จำนวนสมาชิกใหม่ (ช่วงเวลาที่เลือก)        | 55               |
| active_members       | Integer   | จำนวนสมาชิกที่ยังใช้งานอยู่              | 580              |
| expiring_merchants   | Integer   | จำนวนร้านค้าที่กำลังจะหมดอายุ           | 2                |
| pending_transactions | Integer   | ธุรกรรมที่รอตรวจสอบ                     | 5                |
| sales_trend.labels   | Array     | วันที่แต่ละจุดในกราฟยอดขาย              | ["2024-03-01"]   |
| sales_trend.data     | Array     | ยอดขายในแต่ละวัน                        | [12000]          |
| members_growth.labels| Array     | วันที่แต่ละจุดในกราฟสมาชิกใหม่          | ["2024-03-01"]   |
| members_growth.data  | Array     | จำนวนสมาชิกใหม่ในแต่ละวัน                | [3]              |
| payment_methods      | Array     | สัดส่วนวิธีชำระเงินแต่ละประเภท          | [{"name":"QR","value":60}] |
| alerts               | Array     | รายการแจ้งเตือน                         | [{"type":"merchant_expiry","message":"ร้านค้าใกล้หมดอายุ 2 ราย"}] |
| quick_actions        | Array     | ปุ่มหรือฟังก์ชันลัดบน Dashboard         | [{"action_name":"เพิ่มร้านค้า"}] |
| period               | String    | ช่วงเวลาที่เลือก (daily, weekly, monthly)| "monthly"        |
| from_date            | Date      | วันเริ่มต้นของข้อมูลที่แสดง             | "2024-03-01"     |
| to_date              | Date      | วันสิ้นสุดของข้อมูลที่แสดง              | "2024-03-31"     |
| status               | String    | สถานะการโหลด/แสดงผล ("success"/"error") | "success"        |
| message              | String    | ข้อความ error หรือแจ้งเตือน             | "ไม่พบข้อมูล"    |
