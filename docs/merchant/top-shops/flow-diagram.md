#### **flow-diagram.md**
```markdown
# merchant/top-shops - Flow Diagram

```mermaid
flowchart TD
    A[Admin Login] --> B[เข้าหน้า merchant/top-shops]
    B --> C[ดู/ค้นหา/Filter ร้านค้าชั้นนำ]
    B --> D[เพิ่มร้านค้าชั้นนำ]
    C --> E[แก้ไข/ลบร้านค้าชั้นนำ]
    B --> F[Export รายการร้านค้าชั้นนำ]
    D --> G[บันทึก audit log]
    E --> G
```
```
