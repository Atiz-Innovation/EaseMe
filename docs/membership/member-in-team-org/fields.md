# Member in Team/Org - Fields

| Field Name        | Data Type | Description                           | Example Value         |
|-------------------|-----------|---------------------------------------|-----------------------|
| org_id            | String    | รหัสทีม/องค์กร                        | ORG-01                |
| org_name          | String    | ชื่อทีม/องค์กร                        | ATIZ Partner A        |
| user_id           | String    | รหัสสมาชิกในทีม/องค์กร                | USR-004               |
| full_name         | String    | ชื่อ-นามสกุล                          | วิภาดา ดีใจ           |
| email             | String    | อีเมลสมาชิก                            | vipada@email.com      |
| phone             | String    | เบอร์โทรสมาชิก                        | 0912345678            |
| role_in_team      | Enum      | บทบาทในทีม (Owner/Admin/Staff/Viewer) | Admin                 |
| status            | Enum      | สถานะสมาชิก (Active/Inactive)         | Active                |
| joined_date       | Date      | วันที่เข้าร่วมทีม/องค์กร               | 2024-01-15            |
| last_updated      | DateTime  | วันที่แก้ไขล่าสุด                      | 2024-03-01T10:00      |
| edit_button       | Button    | ปุ่มแก้ไข                              | -                     |
| delete_button     | Button    | ปุ่มลบ                                 | -                     |