# Test Cases สำหรับ UI Guideline Theme

## 1. สร้างธีมใหม่สำเร็จ
**Input:** ส่งข้อมูลธีมครบถ้วน
**Expected Output:** ธีมใหม่ถูกสร้าง ได้ id และ created_at

## 2. สร้างธีมโดยไม่กรอกชื่อธีม
**Input:** ไม่กรอก name
**Expected Output:** ระบบแจ้ง error "name is required"

## 3. แก้ไขธีมสำเร็จ
**Input:** เปลี่ยนฟิลด์สีหรือฟอนต์
**Expected Output:** ข้อมูลธีมถูกอัปเดต updated_at

## 4. เปิดใช้งานธีมใหม่
**Input:** เปิดใช้งานธีมที่ยังไม่ active
**Expected Output:** ธีมดังกล่าวกลายเป็น is_active = true และธีมอื่นถูกปิด

## 5. ดูรายการธีมทั้งหมด
**Input:** GET ทั้งหมด
**Expected Output:** รายการธีมทั้งหมดในระบบ

## 6. ส่งรหัสสีผิดรูปแบบ
**Input:** primary_color = "blue"
**Expected Output:** ระบบแจ้ง error "invalid color format"

## 7. สร้างธีมโดยใช้ชื่อซ้ำกับธีมที่มีในระบบ
**Input:** name = "Light Theme" ซ้ำ
**Expected Output:** ระบบแจ้ง error "name already exists"

## 8. ลองเปิดใช้งานธีมที่ถูกลบ (กรณี soft delete)
**Input:** PATCH ไปที่ธีมที่ is_deleted = true
**Expected Output:** ระบบแจ้ง error "theme not found"
```
