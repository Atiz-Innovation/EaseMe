# Transaction & Payment - Flow Diagram

```mermaid
flowchart TD
    A[User Login] --> B[เข้าหน้า Transaction List]
    B --> C[ค้นหา/Filter รายการธุรกรรม]
    B --> D[คลิกรายการ ดูรายละเอียด]
    D --> E[แก้ไขสถานะ/Remark]
    B --> F[Export ข้อมูลธุรกรรม]
    D --> G[ดูรายละเอียด Payment Gateway]
    D --> H[ย้อนกลับหน้ารายการ]
```
