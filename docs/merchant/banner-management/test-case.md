# Test Cases สำหรับ Banner Management

## 1. สร้างแบนเนอร์สำเร็จ
**Input:** ข้อมูลครบถ้วน (title, image_url, link_url, display_order, start_date, end_date, is_active)
**Expected Output:** สร้างแบนเนอร์ใหม่และได้ `id` และ `created_at` กลับมา

## 2. สร้างแบนเนอร์โดยไม่ใส่ title
**Input:** ขาด `title`
**Expected Output:** ระบบแจ้ง error "title is required"

## 3. สร้างแบนเนอร์โดยรูปภาพไม่ถูกต้อง
**Input:** ฟิลด์ `image_url` ไม่เป็น URL หรือไม่ใช่ไฟล์รูป
**Expected Output:** ระบบแจ้ง error "invalid image_url"

## 4. สร้างแบนเนอร์โดยระบุ `end_date` ก่อน `start_date`
**Input:** start_date = "2025-10-20", end_date = "2025-10-10"
**Expected Output:** ระบบแจ้ง error "end_date must be after start_date"

## 5. แก้ไขแบนเนอร์สำเร็จ
**Input:** เปลี่ยน title, image_url, หรือ ข้อมูลอื่น ๆ
**Expected Output:** แบนเนอร์ถูกอัปเดต และได้ `updated_at` กลับมา

## 6. ลบแบนเนอร์สำเร็จ
**Input:** ส่ง id ของแบนเนอร์ที่มีอยู่
**Expected Output:** ระบบลบแบนเนอร์และแจ้ง success

## 7. ปิดการใช้งานแบนเนอร์
**Input:** ตั้งค่า `is_active` เป็น false
**Expected Output:** แบนเนอร์ไม่ถูกแสดงในหน้า UI ลูกค้า

## 8. ลำดับแบนเนอร์ซ้ำกันในร้านเดียวกัน
**Input:** เพิ่มแบนเนอร์อีกอันที่มี `display_order` เท่ากับแบนเนอร์ที่มีอยู่แล้ว
**Expected Output:** ระบบแจ้ง error "display_order must be unique per merchant"
