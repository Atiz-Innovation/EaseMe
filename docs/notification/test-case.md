# Test Cases สำหรับ Notification

## 1. ผู้ใช้รับรายการแจ้งเตือน
**Input:** GET /api/v1/notification?user_id=user_12345
**Expected Output:** ได้รายการแจ้งเตือนที่ถูกต้องตาม user_id

## 2. ผู้ใช้กดอ่านแจ้งเตือน
**Input:** PUT /api/v1/notification/{id}/read
**Expected Output:** แจ้งเตือนเปลี่ยนสถานะ is_read เป็น true, read_at ถูกอัปเดต

## 3. ส่งแจ้งเตือนใหม่สำเร็จ
**Input:** POST /api/v1/notification (ข้อมูลครบถ้วน)
**Expected Output:** ได้ id และ sent_at ของแจ้งเตือนใหม่

## 4. ส่งแจ้งเตือนโดยขาด field สำคัญ
**Input:** POST /api/v1/notification (ไม่ส่ง user_id)
**Expected Output:** ระบบแจ้ง error "user_id is required"

## 5. ลบแจ้งเตือนสำเร็จ
**Input:** DELETE /api/v1/notification/{id}
**Expected Output:** แจ้งเตือนถูกลบสำเร็จ

## 6. ลบแจ้งเตือนที่ไม่มีอยู่ในระบบ
**Input:** DELETE /api/v1/notification/{fake_id}
**Expected Output:** ระบบแจ้ง error "Notification not found"

## 7. ผู้ใช้ดูแจ้งเตือนที่ถูกลบไปแล้ว
**Input:** GET /api/v1/notification?user_id=user_12345 (หลังลบแจ้งเตือน)
**Expected Output:** แจ้งเตือนที่ถูกลบไม่ปรากฎในรายการ

## 8. ตรวจสอบการอ่านแจ้งเตือนหลายรายการ
**Input:** PUT /api/v1/notification/{id}/read (อ่านหลายรายการ)
**Expected Output:** แจ้งเตือนแต่ละรายการถูกเปลี่ยนสถานะ is_read เป็น true
