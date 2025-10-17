# แผนภาพ State Diagram (Mermaid)

```mermaid
stateDiagram-v2
  [*] --> Idle
  Idle --> Creating: สร้างแบนเนอร์ใหม่
  Creating --> Idle: สร้างสำเร็จ / ยกเลิก
  Idle --> Editing: แก้ไขแบนเนอร์
  Editing --> Idle: บันทึกสำเร็จ / ยกเลิก
  Idle --> Deleting: ลบแบนเนอร์
  Deleting --> Idle: ลบสำเร็จ / ยกเลิก
  Idle --> Viewing: ดูรายละเอียดแบนเนอร์
  Viewing --> Idle: กลับ
```
