# Test Cases สำหรับ Integration Settings

## 1. ดูรายการ Integration Settings สำเร็จ
**Input:** GET `/api/v1/system/integration-settings`
**Expected Output:** ได้รายการการตั้งค่าทั้งหมด

## 2. เพิ่ม Integration Setting สำเร็จ
**Input:** POST ข้อมูลครบถ้วน (system_name, config_key, config_value, is_active, created_by)
**Expected Output:** ได้ id และ created_at กลับมา

## 3. เพิ่ม Integration Setting โดยขาดข้อมูลสำคัญ
**Input:** POST โดยไม่ระบุ system_name
**Expected Output:** ระบบแจ้ง error "system_name is required"

## 4. แก้ไข config_value สำเร็จ
**Input:** PUT กำหนดค่าใหม่ใน config_value
**Expected Output:** updated_at ถูกอัปเดต และค่าเปลี่ยนแปลงจริง

## 5. แก้ไขสถานะ is_active เป็น false
**Input:** PUT เปลี่ยน is_active จาก true เป็น false
**Expected Output:** ค่า is_active ถูกปรับเป็น false และไม่ถูกใช้งาน

## 6. ลบ Integration Setting สำเร็จ
**Input:** DELETE ด้วย id ที่มีอยู่
**Expected Output:** ระบบคืนค่า success: true และข้อมูลถูกลบ

## 7. ลบ Integration Setting ที่ไม่มีอยู่
**Input:** DELETE ด้วย id ที่ไม่พบในระบบ
**Expected Output:** error "integration setting not found"

## 8. พยายามเข้าถึง API โดยไม่มี token
**Input:** Request โดยไม่มี authentication token
**Expected Output:** error "unauthorized"
