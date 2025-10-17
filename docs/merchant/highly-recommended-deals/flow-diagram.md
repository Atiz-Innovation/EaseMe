#### flow-diagram.md

```markdown
# merchant/highly-recommended-deals - Flow Diagram

```mermaid
flowchart TD
    A[Admin/Merchant Login] --> B[เข้าหน้าดีลแนะนำพิเศษ]
    B --> C[ดู/ค้นหาดีล]
    B --> D[เพิ่มดีลใหม่]
    D --> E[อัปโหลดรูปภาพและข้อมูล]
    C --> F[เลือกดีลเพื่อแก้ไข/เปลี่ยนลำดับ/เปลี่ยนสถานะ]
    B --> G[Export รายการดีล]
    F --> H[ตรวจสอบสถานะดีล]
    H --> I[ดีลหมดอายุ -> เปลี่ยนเป็น EXPIRED อัตโนมัติ]
```
```
