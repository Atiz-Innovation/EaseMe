# Group Permission Setting - Fields

| Field Name        | Data Type | Description                       | Example Value          |
|-------------------|-----------|-----------------------------------|------------------------|
| group_id          | String    | รหัสกลุ่ม/ทีม                    | GRP-001                |
| group_name        | String    | ชื่อกลุ่ม/ทีม                    | Partner Group A        |
| org_type          | Enum      | ประเภทกลุ่ม (Partner/Internal/Franchise) | Partner   |
| permission_id     | String    | รหัสสิทธิ์                        | PERM-01               |
| permission_name   | String    | ชื่อสิทธิ์ (View/Edit/Export)     | View Transaction       |
| permission_scope  | String    | ขอบเขตสิทธิ์ (Transaction, Member, Report) | Member    |
| created_by        | String    | ผู้สร้าง/มอบหมายสิทธิ์           | admin                  |
| created_date      | DateTime  | วันที่สร้างสิทธิ์                 | 2024-03-15T10:00       |
| status            | Enum      | สถานะ (Active/Inactive)           | Active                 |
| last_updated      | DateTime  | วันที่แก้ไขล่าสุด                 | 2024-03-20T09:00       |