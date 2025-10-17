# Income & Sales Report - Fields

| Field Name         | Data Type | Description                   | Example Value       |
|--------------------|-----------|-------------------------------|---------------------|
| report_id          | String    | รหัสรายงาน                   | REP-001             |
| report_date        | Date      | วันที่ของรายงาน               | 2024-03-01          |
| store_name         | String    | ชื่อร้านค้า                   | ABC Clinic          |
| merchant_id        | String    | รหัสร้านค้า                   | MCH-001             |
| transaction_id     | String    | รหัสธุรกรรม                   | TXN-10001           |
| product_service    | String    | ชื่อสินค้า/บริการ             | เลเซอร์หน้าใส      |
| item_sold          | Number    | จำนวนสินค้าหรือบริการ         | 10                  |
| sale_amount        | Number    | ยอดขาย                        | 10000               |
| gp                 | Number    | กำไรขั้นต้น                   | 2000                |
| commission         | Number    | ค่าคอมมิชชั่น                 | 500                 |
| payment_gateway_fee| Number    | ค่าธรรมเนียม Gateway          | 100                 |
| net_revenue        | Number    | รายได้สุทธิหลังหักค่าธรรมเนียม| 9400                |
| transaction_status | Enum      | สถานะธุรกรรม                  | Success             |
| payment_method     | Enum      | วิธีการชำระเงิน               | QR                  |
| channel            | Enum      | ช่องทางขาย                    | Marketplace         |
| operator           | String    | ผู้ทำรายการ                    | admin               |
| transaction_date   | Date      | วันที่ทำธุรกรรม                | 2024-03-01          |
| transaction_time   | Time      | เวลาทำธุรกรรม                  | 10:01               |
| export_button      | Button    | ปุ่มส่งออกรายงาน               | -                   |
