# Test Cases สำหรับ Plan Subscription

## 1. สร้างแผนสมาชิกสำเร็จ
**Input:** ส่ง name, price, billing_cycle, services_included, trial_days
**Expected Output:** ได้ id และ created_at ของแผนสมาชิกใหม่

## 2. สร้างแผนสมาชิกโดยไม่ระบุชื่อ
**Input:** ไม่ส่ง name
**Expected Output:** ระบบแจ้ง error "name is required"

## 3. สร้างแผนสมาชิกโดยไม่ใส่ราคา
**Input:** ไม่ส่ง price
**Expected Output:** ระบบแจ้ง error "price is required"

## 4. แก้ไขราคาแผนสมาชิกสำเร็จ
**Input:** แก้ไข price เป็น 1099
**Expected Output:** updated_at อัปเดต, ข้อมูลเปลี่ยนแปลง

## 5. ลบแผนสมาชิกที่ยังไม่มีผู้สมัคร
**Input:** ส่ง id ที่ sold_count = 0
**Expected Output:** ลบสำเร็จ, success: true

## 6. ลบแผนสมาชิกที่มีลูกค้าสมัครแล้ว
**Input:** ส่ง id ที่ sold_count > 0
**Expected Output:** ระบบแจ้ง error "cannot delete subscription plan with active subscribers"

## 7. ปิดขายแผนสมาชิก
**Input:** เปลี่ยน is_active เป็น false
**Expected Output:** แผนสมาชิกไม่แสดงในหน้าเลือกซื้อของลูกค้า

## 8. ซื้อแผนสมาชิกเกิน purchase_limit
**Input:** ลูกค้าเดียวกันซื้อเกิน limit
**Expected Output:** error "purchase limit exceeded"

## 9. สมัครแผนสมาชิกมีรอบทดลองใช้ฟรี
**Input:** trial_days > 0
**Expected Output:** ลูกค้าได้รับสิทธิ์ทดลองใช้ฟรีก่อนเริ่มชำระจริง

## 10. ระบบต่ออายุอัตโนมัติสำเร็จ
**Input:** ลูกค้าครบกำหนดรอบบิล, auto_renew = true
**Expected Output:** ระบบตัดเงินรอบใหม่/ขยายอายุสมาชิกอัตโนมัติ
