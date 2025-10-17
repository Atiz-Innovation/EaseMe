# Highly Recommended Deals - Test Cases

- TC01: แสดงรายการดีลแนะนำถูกต้องตามลำดับ priority
- TC02: ค้นหาดีลตามชื่อ, merchant_id, status, วันที่
- TC03: เพิ่มดีลใหม่สำเร็จและแสดงในรายการ
- TC04: แก้ไขดีลสำเร็จ (เช่น เปลี่ยน priority หรือ status)
- TC05: ลบดีลที่ยังไม่ ACTIVE หรือ EXPIRED สำเร็จ
- TC06: Export ข้อมูลดีลเป็น CSV/Excel ได้ถูกต้อง
- TC07: User ที่ไม่มีสิทธิ์ไม่สามารถเพิ่ม/แก้ไข/ลบดีลได้
- TC08: ไม่สามารถแก้ไขหรือลบดีลที่หมดอายุแล้ว (EXPIRED)
- TC09: API แสดง error กรณีข้อมูลซ้ำ (title, period ซ้อน)
- TC10: ระบบเปลี่ยนสถานะเป็น EXPIRED อัตโนมัติเมื่อครบ end_date

