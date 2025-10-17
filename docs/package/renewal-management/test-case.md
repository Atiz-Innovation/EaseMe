# Test Cases สำหรับ Package Renewal Management

## 1. ต่ออายุแพ็กเกจแบบ Manual สำเร็จ
**Input:** ส่งข้อมูล package_id, merchant_id, user_id, payment_reference, amount ถูกต้อง
**Expected Output:** รายการ renewal ถูกสร้าง renewal_status = "pending" หรือ "success" (ตามผลชำระเงิน)

## 2. ต่ออายุอัตโนมัติสำเร็จ
**Input:** ตั้งค่า auto-renewal แล้วระบบ trigger อัตโนมัติ
**Expected Output:** สถานะ renewal_status = "success", วันหมดอายุถูกขยาย

## 3. ต่ออายุล้มเหลวเนื่องจากจ่ายเงินไม่สำเร็จ
**Input:** ชำระเงินล้มเหลว
**Expected Output:** สถานะ renewal_status = "failed", มีการแจ้งเตือน error

## 4. ดูประวัติการต่ออายุของร้านค้า
**Input:** ส่ง merchant_id ที่มีหลายรายการ renewal
**Expected Output:** ได้รายการ renewal ทั้งหมดที่เกี่ยวข้อง

## 5. ดูสถานะการต่ออายุล่าสุดของแพ็กเกจ
**Input:** ส่ง package_id
**Expected Output:** ได้ renewal_status และ expired_date ล่าสุด

## 6. ตั้งค่าต่ออายุอัตโนมัติสำเร็จ
**Input:** PUT /api/v1/package/renewal/auto, is_auto_renewal: true
**Expected Output:** success: true, message: "ตั้งค่าต่ออายุอัตโนมัติสำเร็จ"

## 7. ต่ออายุ Manual ซ้ำในช่วงเวลาเดียวกัน
**Input:** ส่ง request manual renewal ซ้ำก่อนรายการเดิมเสร็จสิ้น
**Expected Output:** ระบบแจ้ง error "มีรายการต่ออายุรอดำเนินการอยู่แล้ว"

## 8. ตรวจสอบ expired_date หลังต่ออายุสำเร็จ
**Input:** ต่ออายุสำเร็จ
**Expected Output:** expired_date ใหม่ถูกขยายตามเงื่อนไขแพ็กเกจ
