# Test Cases สำหรับ Merchant

## 1. สร้างร้านค้าสำเร็จ
**Input:** ส่งข้อมูลชื่อร้าน, เบอร์โทร, ที่อยู่, โลโก้ ครบถ้วน
**Expected Output:** ร้านค้าใหม่ถูกสร้าง ได้ id และ created_at

## 2. สร้างร้านค้าโดยไม่กรอกข้อมูลสำคัญ (เช่น name)
**Input:** ไม่ส่งฟิลด์ name
**Expected Output:** ระบบแจ้ง error "name is required"

## 3. แก้ไขข้อมูลร้านค้าสำเร็จ
**Input:** ส่งฟิลด์ใหม่ เช่น โลโก้, เบอร์โทร
**Expected Output:** ร้านค้าอัปเดตข้อมูลสำเร็จ

## 4. เปลี่ยนสถานะร้านค้าเป็นปิด (is_active: false)
**Input:** PATCH is_active = false
**Expected Output:** ร้านค้าถูกปิดและไม่แสดงในฝั่งลูกค้า

## 5. ดูข้อมูลร้านค้าด้วย id ที่มีอยู่
**Input:** GET /api/v1/merchant/mch123456
**Expected Output:** ได้ข้อมูลร้านค้าตาม id ที่ระบุ

## 6. ดูข้อมูลร้านค้าด้วย id ที่ไม่มีในระบบ
**Input:** GET /api/v1/merchant/notfound
**Expected Output:** ระบบแจ้ง error "merchant not found"

## 7. เพิ่มสาขาใหม่เข้าในร้านค้า
**Input:** อัปเดตรายการ branches
**Expected Output:** branches มี id ของสาขาใหม่

## 8. ส่งข้อมูล email ไม่ถูกต้อง
**Input:** email: "abcspa.com"
**Expected Output:** ระบบแจ้ง error "invalid email format"
