#### state-diagram.md

```markdown
# merchant/highly-recommended-deals - State Diagram

```mermaid
stateDiagram-v2
    [*] --> Loading
    Loading --> DealListLoaded
    Loading --> Error
    DealListLoaded --> AddDeal
    AddDeal --> DealListLoaded
    DealListLoaded --> EditDeal
    EditDeal --> DealListLoaded
    DealListLoaded --> DeleteDeal
    DeleteDeal --> DealListLoaded
    DealListLoaded --> FilterDeal
    FilterDeal --> DealListLoaded
    DealListLoaded --> ExportDeal
    ExportDeal --> DealListLoaded
    DealListLoaded --> ViewDealDetail
    ViewDealDetail --> DealListLoaded
    DealListLoaded --> [*]
    Error --> Retry
    Retry --> Loading
```
```
