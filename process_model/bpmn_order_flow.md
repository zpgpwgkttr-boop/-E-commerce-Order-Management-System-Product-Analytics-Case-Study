flowchart LR

A[Customer places order] --> B[Order Created]
B --> C[Payment Processing]

C --> D{Payment Success?}

D -- No --> E[Payment Failed]
E --> X[End]

D -- Yes --> F[Order Paid]

F --> G[Warehouse Processing<br/>Picking & Packing]
G --> H[Order Shipped]
H --> I[Delivery Service]
I --> J[Order Delivered]

%% Optional flows
B -.-> K[Cancel Order (before payment)]
F -.-> K

J -.-> L[Return Order]
