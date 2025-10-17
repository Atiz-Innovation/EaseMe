# Admin/User Management - Fields

| Field Name         | Data Type | Description                         | Example Value        |
|--------------------|-----------|-------------------------------------|----------------------|
| user_id            | String    | รหัสผู้ดูแลระบบ/ผู้ใช้งาน          | ADM-001              |
| username           | String    | ชื่อบัญชี                           | admin                |
| full_name          | String    | ชื่อ-นามสกุล                        | ศิวดล สดใส           |
| email              | String    | อีเมล                                | siwadon@email.com    |
| phone_number       | String    | เบอร์โทร                            | 0812345678           |
| role               | Enum      | บทบาท (Owner/Manager/Staff)         | Owner                |
| status             | Enum      | สถานะบัญชี (Active/Inactive)        | Active               |
| created_date       | Date      | วันที่สร้างบัญชี                    | 2024-01-01           |
| last_login         | Date      | เข้าสู่ระบบล่าสุด                   | 2024-02-01           |
| reset_password_button | Button | ปุ่มรีเซ็ตรหัสผ่าน                  | -                    |
| manage_permission_button | Button | ปุ่มกำหนดสิทธิ์                  | -                    |
| edit_button        | Button    | ปุ่มแก้ไข                            | -                    |
| delete_button      | Button    | ปุ่มลบ                               | -                    |