# แผนภาพ State Diagram (Mermaid)

```mermaid
stateDiagram-v2
  [*] --> Idle
  Idle --> Creating: สร้าง Workflow ใหม่
  Creating --> Idle: สร้างสำเร็จ / ยกเลิก
  Idle --> Editing: แก้ไข Workflow
  Editing --> Idle: บันทึกสำเร็จ / ยกเลิก
  Idle --> Deleting: ลบ Workflow
  Deleting --> Idle: ลบสำเร็จ / ยกเลิก
  Idle --> Viewing: ดูรายละเอียด Workflow
  Viewing --> Idle: กลับ
```
