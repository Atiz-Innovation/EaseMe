# Member Level & Point System - Fields

| Field Name         | Data Type | Description                       | Example Value   |
|--------------------|-----------|-----------------------------------|-----------------|
| level_id           | String    | รหัสระดับสมาชิก                   | LV-001          |
| member_level_name  | String    | ชื่อระดับสมาชิก                   | Gold            |
| minimum_points     | Number    | แต้มขั้นต่ำสำหรับระดับนี้         | 1000            |
| point_rate         | Number    | อัตราสะสมแต้ม (บาท/1 คะแนน)      | 25              |
| status             | Enum      | สถานะระดับ (Active/Inactive)      | Active          |
| created_date       | Date      | วันที่สร้างระดับ                  | 2024-03-01      |
| last_updated       | DateTime  | วันที่แก้ไขล่าสุด                 | 2024-03-20T11:00|
| edit_button        | Button    | ปุ่มแก้ไขระดับสมาชิก              | -               |
| delete_button      | Button    | ปุ่มลบระดับสมาชิก                 | -               |