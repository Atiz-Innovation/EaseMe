# Transaction & Payment - Test Cases

## 1. Transaction List & Filter
- TC01: แสดงรายการธุรกรรมตามวันที่, ร้าน, สถานะ, วิธีชำระเงิน ถูกต้อง
- TC02: ค้นหาด้วย Transaction ID ได้ถูกต้อง
- TC03: Filter สถานะ Success/Pending/Failed ได้ถูกต้อง

## 2. Transaction Detail
- TC04: คลิกดูรายละเอียดธุรกรรม แสดงข้อมูลครบถ้วน

## 3. Change Status & Remark
- TC05: เปลี่ยนสถานะธุรกรรมแล้วข้อมูลเปลี่ยนจริง
- TC06: เพิ่ม/แก้ไข Remark ได้และแสดงในหน้ารายละเอียด

## 4. Export
- TC07: Export รายการธุรกรรมเป็น CSV/Excel ได้ถูกต้อง
- TC08: Filter แล้ว Export ได้เฉพาะข้อมูลที่เลือก

## 5. Permission
- TC09: User ที่ไม่มีสิทธิ์ ไม่สามารถแก้ไข/Export/ดูรายละเอียดธุรกรรมผู้อื่นได้

## 6. Error Handling
- TC10: กรณี API error หรือไม่มีข้อมูล แสดงข้อความ error ถูกต้อง
