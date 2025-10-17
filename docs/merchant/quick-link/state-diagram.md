# แผนภาพ State Diagram Quick Link (Mermaid)

```mermaid
stateDiagram-v2
  [*] --> Idle
  Idle --> Creating: เพิ่มลิงก์ใหม่
  Creating --> Idle: บันทึกสำเร็จ / ยกเลิก
  Idle --> Editing: แก้ไขลิงก์
  Editing --> Idle: บันทึกสำเร็จ / ยกเลิก
  Idle --> Deleting: ลบลิงก์
  Deleting --> Idle: ลบสำเร็จ / ยกเลิก
  Idle --> Reordering: เปลี่ยนลำดับลิงก์
  Reordering --> Idle: บันทึกสำเร็จ
  Idle --> Viewing: ดูรายละเอียดลิงก์
  Viewing --> Idle: กลับ
```
