# Payment Gateway - State Diagram

```mermaid
stateDiagram-v2
    [*] --> Loading
    Loading --> ListLoaded
    Loading --> Error
    ListLoaded --> Edit
    Edit --> ListLoaded
    ListLoaded --> AddNew
    AddNew --> ListLoaded
    ListLoaded --> Delete
    Delete --> ListLoaded
    Error --> Retry
    Retry --> Loading
```
