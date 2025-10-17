# Organization/Team List - Fields

| Field Name     | Data Type | Description                           | Example Value        |
|----------------|-----------|---------------------------------------|----------------------|
| org_id         | String    | รหัสทีม/องค์กร                        | ORG-01               |
| org_name       | String    | ชื่อทีม/องค์กร                        | ATIZ Partner A       |
| org_type       | Enum      | ประเภท (Partner/Internal/Franchise)   | Partner              |
| owner_name     | String    | ชื่อ Owner/หัวหน้าทีม                 | ศิวดล สดใส           |
| owner_email    | String    | อีเมล Owner                            | siwadon@email.com    |
| owner_phone    | String    | เบอร์ Owner                            | 0812345678           |
| member_list    | Array     | รายชื่อสมาชิก (UserID, Name, Role)    | [USR-004, ...]       |
| description    | Text      | รายละเอียดเพิ่มเติมเกี่ยวกับทีม/องค์กร   | Partner กลุ่ม A      |
| status         | Enum      | สถานะ (Active/Inactive/Suspended)     | Active               |
| created_date   | Date      | วันที่สร้างทีม/องค์กร                  | 2024-01-01           |
| last_updated   | DateTime  | วันที่อัปเดตล่าสุด                     | 2024-01-31T10:00     |
| edit_button    | Button    | ปุ่มแก้ไข                              | -                    |
| delete_button  | Button    | ปุ่มลบ                                 | -                    |