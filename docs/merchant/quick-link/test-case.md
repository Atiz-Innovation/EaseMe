# Test Cases สำหรับ Quick Link

## 1. สร้างลิงก์ด่วนสำเร็จ
**Input:** ส่งฟิลด์ label, url, icon_url, order, is_active ถูกต้อง
**Expected Output:** ระบบสร้างลิงก์ด่วนใหม่และคืน id, created_at

## 2. สร้างลิงก์ด่วนโดยไม่ใส่ label
**Input:** ไม่ส่ง label
**Expected Output:** ระบบแจ้ง error "label is required"

## 3. สร้างลิงก์ด่วนโดยใส่ url ไม่ถูกต้อง
**Input:** ส่ง url ไม่ใช่รูปแบบ http(s)
**Expected Output:** ระบบแจ้ง error "invalid url format"

## 4. อัปเดตข้อมูลลิงก์ด่วนสำเร็จ
**Input:** เปลี่ยน label หรือ url
**Expected Output:** ระบบอัปเดตข้อมูลและคืน updated_at

## 5. ลบลิงก์ด่วน
**Input:** ส่ง id ของลิงก์ด่วน
**Expected Output:** ระบบลบลิงก์ด่วนสำเร็จ

## 6. ดูรายการลิงก์ด่วนของร้านค้า
**Input:** ส่ง merchant_id ที่มีหลายลิงก์
**Expected Output:** ระบบคืน array ของลิงก์ด่วนทั้งหมดเรียงตาม order

## 7. ทดสอบจำกัดจำนวนลิงก์ด่วน
**Input:** ร้านค้าพยายามสร้างลิงก์เกิน 6 รายการ
**Expected Output:** ระบบแจ้ง error "exceed quick link limit"

## 8. ปิดการใช้งานลิงก์ด่วน
**Input:** อัปเดต is_active เป็น false
**Expected Output:** ลิงก์ด่วนไม่แสดงในหน้า UI ลูกค้า

## 9. สลับลำดับลิงก์ (order)
**Input:** เปลี่ยน order ของลิงก์ 2 รายการ
**Expected Output:** ระบบอัปเดต order ทุกลิงก์ในร้านค้าใหม่อย่างถูกต้อง
