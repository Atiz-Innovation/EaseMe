# ตารางข้อมูลฟิลด์ (Fields) สำหรับ UI Guideline Theme

| Field Name     | Data Type | Description                                 | Example Value                  |
|----------------|-----------|---------------------------------------------|--------------------------------|
| id             | String    | รหัสธีม (UUID)                              | "theme-01"                     |
| name           | String    | ชื่อธีม                                     | "Light Theme"                  |
| description    | String    | คำอธิบายธีม                                | "ธีมสีสว่างสำหรับระบบ"         |
| primary_color  | String    | รหัสสีหลัก (Hex/RGB)                        | "#1976d2"                      |
| secondary_color| String    | รหัสสีรอง                                   | "#e3f2fd"                      |
| accent_color   | String    | รหัสสีเน้น                                  | "#ff9800"                      |
| background     | String    | สีพื้นหลัง                                  | "#fafafa"                      |
| font_family    | String    | ฟอนต์หลักที่ใช้ในระบบ                       | "Prompt, Arial, sans-serif"    |
| font_size      | String    | ขนาดฟอนต์พื้นฐาน                            | "16px"                         |
| border_radius  | String    | ขอบมนขององค์ประกอบ UI                       | "8px"                          |
| spacing_unit   | String    | หน่วยระยะห่างมาตรฐาน                        | "4px"                          |
| is_active      | Boolean   | สถานะธีม (เปิดใช้งาน/ปิดใช้งาน)            | true                           |
| created_at     | DateTime  | วันที่สร้างธีม                              | "2025-10-16T08:00:00Z"         |
| updated_at     | DateTime  | วันที่อัปเดตธีมล่าสุด                       | "2025-10-16T09:00:00Z"         |
