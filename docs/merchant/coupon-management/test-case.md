# Test Cases สำหรับ Coupon Management

## 1. สร้างคูปองใหม่สำเร็จ
**Input:** ส่งข้อมูลครบถ้วน เช่น code, name, value, วันหมดอายุ, usage_limit
**Expected Output:** สร้างคูปองใหม่ได้ ได้ id และ created_at กลับมา

## 2. สร้างคูปองโดยใช้ code ซ้ำในร้านเดียวกัน
**Input:** ส่ง code ที่ตรงกับคูปองเดิมใน merchant เดียวกัน
**Expected Output:** ระบบแจ้ง error "code already exists"

## 3. สร้างคูปองโดยไม่ใส่ code
**Input:** ไม่ส่ง code
**Expected Output:** ระบบแจ้ง error "code is required"

## 4. แก้ไขชื่อและคำอธิบายคูปองที่ยังไม่ถูกใช้
**Input:** ส่ง name, description ใหม่
**Expected Output:** ข้อมูลคูปองถูกอัปเดต

## 5. แก้ไข type/value ของคูปองที่ถูกใช้ไปแล้ว
**Input:** แก้ไข type หรือ value ของคูปองที่ used_count > 0
**Expected Output:** ระบบแจ้ง error "cannot edit type or value after usage"

## 6. ปิดการใช้งานคูปอง
**Input:** PATCH ฟิลด์ is_active เป็น false
**Expected Output:** คูปองไม่ถูกแสดงในหน้าเลือกของลูกค้า

## 7. ลบคูปองสำเร็จ
**Input:** DELETE id ของคูปอง
**Expected Output:** success = true, คูปองถูกลบออกจากระบบ

## 8. ใช้คูปองเกิน usage_limit หรือหมดอายุ
**Input:** ใช้คูปองที่ usage_limit หมด หรือ end_date ผ่านไปแล้ว
**Expected Output:** ระบบแจ้ง error "coupon is expired or over usage limit"

## 9. ใช้คูปองกับบริการที่ไม่ได้กำหนด
**Input:** ใช้คูปองกับ service_id ที่ไม่อยู่ใน applicable_services
**Expected Output:** ระบบแจ้ง error "coupon not applicable for this service"
