# Support Report - State Diagram

```mermaid
stateDiagram-v2
    [*] --> Loading
    Loading --> Loaded : โหลดรายงานสำเร็จ
    Loading --> Error : โหลดล้มเหลว
    Loaded --> Filter : Filter ใหม่
    Filter --> Loading
    Loaded --> Export : ส่งออกข้อมูล
    Export --> Loaded
    Loaded --> [*]
    Error --> Retry
    Retry --> Loading
```
