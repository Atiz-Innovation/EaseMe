# Group Permission Setting - State Diagram

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
    ListLoaded --> ChangeStatus
    ChangeStatus --> ListLoaded
    ListLoaded --> [*]
    Error --> Retry
    Retry --> Loading
```