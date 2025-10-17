# Test Cases สำหรับ Notification Settings

## 1. ดูรายการตั้งค่าการแจ้งเตือนสำเร็จ
**Input:** ส่ง `user_id` ที่มีการตั้งค่าแจ้งเตือนในระบบ
**Expected Output:** ได้รายการตั้งค่าทั้งหมดของผู้ใช้

## 2. อัปเดตสถานะเปิด/ปิดการแจ้งเตือนแต่ละช่องทาง
**Input:** เปลี่ยน `is_enabled` จาก true เป็น false
**Expected Output:** ค่า `is_enabled` เปลี่ยนตามที่อัปเดต

## 3. สร้างการตั้งค่าการแจ้งเตือนใหม่
**Input:** ส่งช่องทางและประเภทที่ยังไม่มีใน user
**Expected Output:** มี record ใหม่ในระบบ

## 4. อัปเดตช่วงเวลาการรับแจ้งเตือน
**Input:** เปลี่ยน `time_window_start` และ `time_window_end`
**Expected Output:** ระบบบันทึกช่วงเวลาใหม่

## 5. สร้างการตั้งค่าการแจ้งเตือนโดยไม่ระบุ channel
**Input:** ขาดฟิลด์ `channel`
**Expected Output:** ระบบแจ้ง error "channel is required"

## 6. ตรวจสอบสิทธิ์ user_id
**Input:** ส่ง user_id ที่ไม่มีสิทธิ์
**Expected Output:** ระบบแจ้ง error "unauthorized"

## 7. ลบการตั้งค่าการแจ้งเตือน (ถ้ามี)
**Input:** ส่ง DELETE ไปที่ `/api/v1/notification/settings/{id}`
**Expected Output:** ข้อมูลถูกลบออกจากระบบ (ถ้าฟีเจอร์นี้เปิดใช้งาน)
