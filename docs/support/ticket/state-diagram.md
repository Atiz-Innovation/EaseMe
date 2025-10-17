# support/ticket - State Diagram

```mermaid
stateDiagram-v2
    [*] --> Loading
    Loading --> TicketListLoaded
    Loading --> Error
    TicketListLoaded --> AddTicket
    AddTicket --> TicketListLoaded
    TicketListLoaded --> EditTicket
    EditTicket --> TicketListLoaded
    TicketListLoaded --> DeleteTicket
    DeleteTicket --> TicketListLoaded
    TicketListLoaded --> FilterTicket
    FilterTicket --> TicketListLoaded
    TicketListLoaded --> ExportTicket
    ExportTicket --> TicketListLoaded
    TicketListLoaded --> ViewTicketDetail
    ViewTicketDetail --> TicketListLoaded
    TicketListLoaded --> [*]
    Error --> Retry
    Retry --> Loading
```
