# แผนภาพ State Diagram (Mermaid)

```mermaid
stateDiagram-v2
  [*] --> Idle
  Idle --> Creating: สร้างธีมใหม่
  Creating --> Idle: สร้างสำเร็จ / ยกเลิก
  Idle --> Editing: แก้ไขธีม
  Editing --> Idle: บันทึกสำเร็จ / ยกเลิก
  Idle --> Activating: เปิดใช้งานธีม
  Activating --> Idle: เปลี่ยนธีมสำเร็จ
  Idle --> Viewing: ดูรายละเอียดธีม
  Viewing --> Idle: กลับ
```
