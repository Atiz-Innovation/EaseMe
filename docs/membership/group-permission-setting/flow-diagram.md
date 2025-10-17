# Group Permission Setting - Flow Diagram

```mermaid
flowchart TD
    A[User Login] --> B[เข้าหน้า Group Permission]
    B --> C[ดูรายการ Permission แต่ละกลุ่ม]
    B --> D[เพิ่ม/แก้ไข/ลบ Permission]
    D --> E[Audit Log]
    B --> F[เปลี่ยนสถานะสิทธิ์]
```