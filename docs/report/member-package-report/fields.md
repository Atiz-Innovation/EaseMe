# Member Package Report - Fields

| Field Name    | Data Type | Description                           | Example Value       |
|---------------|-----------|---------------------------------------|---------------------|
| report_id     | String    | รหัสรายงาน                           | REP-MBR-001         |
| report_date   | Date      | วันที่ของรายงาน                       | 2024-03-01          |
| package_name  | String    | ชื่อแพ็กเกจ                         | Gold Package        |
| package_id    | String    | รหัสแพ็กเกจ                         | PKG-001             |
| enrolled_users| Number    | จำนวนผู้ใช้ที่ลงทะเบียนในแพ็กเกจ     | 200                 |
| new_users     | Number    | จำนวนผู้ใช้ใหม่ในแพ็กเกจ              | 50                  |
| total_revenue | Number    | รายได้รวมจากแพ็กเกจ                 | 500000              |
| expiry_date   | Date      | วันหมดอายุแพ็กเกจ                    | 2025-06-30          |
| status        | Enum      | สถานะแพ็กเกจ (Active/Inactive)       | Active              |