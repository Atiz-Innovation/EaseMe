# New Member Report - Fields

| Field Name         | Data Type | Description                     | Example Value      |
|--------------------|-----------|---------------------------------|--------------------|
| report_id          | String    | รหัสรายงาน                     | REP-NM-001         |
| report_date        | Date      | วันที่ของรายงาน                 | 2024-03-01         |
| user_id            | String    | รหัสสมาชิก                      | USR-002            |
| full_name          | String    | ชื่อ-นามสกุล                    | วรัชญ์ สดใส        |
| email              | String    | อีเมล                           | warat@email.com    |
| phone              | String    | เบอร์โทร                        | 0823456789         |
| store_name         | String    | ร้านค้าต้นสังกัด (ถ้ามี)        | ABC Clinic         |
| store_type         | Enum      | ประเภทร้านค้า                   | ซาลอน              |
| package_name       | String    | แพ็กเกจที่เลือกใช้               | Salon Starter      |
| registration_date  | Date      | วันสมัคร                         | 2024-01-05         |
| activation_date    | Date      | วันเปิดใช้งาน                    | 2024-01-06         |
| expiry_date        | Date      | วันหมดอายุ                       | 2024-12-31         |
| registration_channel| Enum     | ช่องทางสมัคร                     | Admin              |
| member_status      | Enum      | สถานะสมาชิก (Active/Trial/Expired)| Active             |
| starting_points    | Number    | แต้มเริ่มต้น                     | 50                 |