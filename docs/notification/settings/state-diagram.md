# แผนภาพ State Diagram (Mermaid)

```mermaid
stateDiagram-v2
  [*] --> Viewing
  Viewing --> Editing: เลือกเปลี่ยนสถานะหรือช่วงเวลา
  Editing --> Saving: กดบันทึก
  Saving --> Viewing: บันทึกสำเร็จ
  Viewing --> Adding: เพิ่มประเภท/ช่องทางใหม่
  Adding --> Saving: กดบันทึก
  Saving --> Viewing
  Viewing --> [*]: ออกจากเมนู
```
