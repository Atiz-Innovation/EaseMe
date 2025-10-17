# Test Cases สำหรับ Workflow Automation

## 1. สร้าง workflow สำหรับแจ้งเตือนวันเกิดลูกค้า
**Input:** ข้อมูลครบถ้วน name, trigger_type = "birthday", actions อย่างน้อย 1 รายการ
**Expected Output:** Workflow ถูกสร้างสำเร็จ มี id, created_at กลับมา

## 2. สร้าง workflow โดยไม่ระบุ actions
**Input:** ส่งข้อมูล actions เป็น array ว่าง
**Expected Output:** ระบบแจ้ง error "actions is required"

## 3. สร้าง workflow โดย trigger_config ผิด type
**Input:** trigger_type = "birthday", trigger_config = {"wrong_field": 1}
**Expected Output:** ระบบแจ้ง error "invalid trigger config"

## 4. แก้ไข workflow เพื่อเพิ่ม action ใหม่
**Input:** ส่ง action ใหม่เพิ่มใน workflow เดิม
**Expected Output:** Workflow ถูกอัปเดตสำเร็จ มี updated_at กลับมา

## 5. ปิด workflow (is_active = false)
**Input:** แก้ไข is_active เป็น false
**Expected Output:** Workflow ไม่ทำงานเมื่อเกิด trigger

## 6. ลบ workflow ที่มีใช้งานอยู่
**Input:** ลบ workflow ที่ is_active = true
**Expected Output:** Workflow ถูกลบสำเร็จ ไม่ทำงานอีกต่อไป

## 7. ดูรายการ workflow ทั้งหมด
**Input:** เรียก API GET workflows
**Expected Output:** ได้ array ข้อมูล workflow ทั้งหมด

## 8. สร้าง workflow ซ้ำชื่อกับ workflow เดิม
**Input:** name ซ้ำกับ workflow ที่มีอยู่แล้ว
**Expected Output:** ระบบแจ้ง error "workflow name already exists"
