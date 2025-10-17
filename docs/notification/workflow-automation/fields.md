# ตารางข้อมูลฟิลด์ (Fields) สำหรับ Workflow Automation ในระบบ Notification

| Field Name         | Data Type   | Description                                         | Example Value      |
|--------------------|------------|-----------------------------------------------------|--------------------|
| id                 | String     | รหัส workflow (UUID)                                | "wf-8f3d1c2a"      |
| name               | String     | ชื่อ workflow อัตโนมัติ                            | "แจ้งเตือนวันเกิดลูกค้า" |
| description        | String     | คำอธิบาย workflow                                  | "ส่ง SMS อวยพรวันเกิดอัตโนมัติ" |
| is_active          | Boolean    | สถานะเปิดใช้งาน workflow                           | true               |
| trigger_type       | String     | ประเภทเงื่อนไขที่ทำให้ workflow ทำงาน              | "birthday"         |
| trigger_config     | Object     | ค่าคอนฟิกของ trigger (เช่น วัน/เวลาที่ใช้เงื่อนไข) | { "days_before": 0 }|
| actions            | Array      | รายการ action ที่ให้ทำเมื่อ trigger ตรงเงื่อนไข      | [{"type": "send_sms", "template_id": "tmp001"}] |
| created_by         | String     | รหัสผู้สร้าง workflow                              | "admin001"         |
| created_at         | DateTime   | วันที่สร้าง workflow                                | "2025-10-16T08:00:00Z" |
| updated_at         | DateTime   | วันที่อัปเดตล่าสุด                                  | "2025-10-17T09:00:00Z" |

### คำอธิบายเพิ่มเติม
- **trigger_type**: เช่น `"birthday"`, `"purchase_completed"`, `"membership_expired"`
- **trigger_config**: ขึ้นอยู่กับ trigger_type เช่นวันล่วงหน้าสำหรับวันเกิด, หรือ config เงื่อนไขอื่นๆ
- **actions**: เช่น ส่ง SMS, ส่ง LINE, ส่งอีเมล, อัปเดตสถานะ, ฯลฯ
