# Member Management - Fields

| Field Name        | Data Type | Description                            | Example Value      |
|-------------------|-----------|----------------------------------------|--------------------|
| user_id           | String    | รหัสสมาชิก/ผู้ใช้งาน                   | USR-001            |
| username          | String    | ชื่อบัญชี                              | siwadon            |
| full_name         | String    | ชื่อ-นามสกุล                           | ศิวดล สดใส         |
| email             | String    | อีเมล                                   | siwadon@email.com  |
| phone_number      | String    | เบอร์โทร                               | 0812345678         |
| store_name        | String    | ร้านค้าต้นสังกัด (ถ้ามี)               | ABC Clinic         |
| store_type        | Enum      | ประเภทร้านค้า (ถ้ามี)                  | คลินิก             |
| package_name      | String    | แพ็กเกจที่ใช้งาน                       | Clinic Pro         |
| start_date        | Date      | วันที่เริ่มใช้งาน                       | 2024-01-01         |
| expiry_date       | Date      | วันหมดอายุ                              | 2024-12-31         |
| status            | Enum      | สถานะสมาชิก (Active/Inactive)          | Active             |
| accumulated_points| Number    | แต้มสะสมปัจจุบัน                       | 500                |
| member_level      | String    | ระดับสมาชิก                             | Gold               |
| join_channel      | Enum      | ช่องทางสมัคร                            | Web                |
| reset_password_button | Button| ปุ่มรีเซ็ตรหัสผ่าน                     | -                  |
| suspend_button    | Button    | ปุ่มระงับสิทธิ์                         | -                  |
| edit_button       | Button    | ปุ่มแก้ไข                               | -                  |
| delete_button     | Button    | ปุ่มลบ                                  | -                  |
