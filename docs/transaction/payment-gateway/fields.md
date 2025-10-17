# Payment Gateway - Fields

| Field Name      | Data Type | Description                       | Example Value     |
|-----------------|-----------|-----------------------------------|-------------------|
| gateway_id      | String    | รหัส Payment Gateway              | PG-01             |
| gateway_name    | String    | ชื่อ Gateway                      | Omise             |
| status          | Enum      | สถานะ (Active/Inactive)           | Active            |
| fee_structure   | String    | รายละเอียดค่าธรรมเนียม           | 2.9%+10บาท        |
| connected_date  | Date      | วันที่เชื่อมต่อ Gateway           | 2024-01-10        |
| last_updated    | DateTime  | วันที่แก้ไขล่าสุด                 | 2024-03-01T15:20  |
| edit_button     | Button    | ปุ่มแก้ไข Gateway                 | -                 |
| delete_button   | Button    | ปุ่มลบ Gateway                    | -                 |
