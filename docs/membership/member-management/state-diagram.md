# Member Management - State Diagram

```mermaid
stateDiagram-v2
    [*] --> Loading
    Loading --> ListLoaded
    Loading --> Error
    ListLoaded --> AddNew
    AddNew --> ListLoaded
    ListLoaded --> Edit
    Edit --> ListLoaded
    ListLoaded --> Delete
    Delete --> ListLoaded
    ListLoaded --> Suspend
    Suspend --> ListLoaded
    ListLoaded --> ResetPassword
    ResetPassword --> ListLoaded
    ListLoaded --> Filter
    Filter --> ListLoaded
    ListLoaded --> [*]
    Error --> Retry
    Retry --> Loading
```
