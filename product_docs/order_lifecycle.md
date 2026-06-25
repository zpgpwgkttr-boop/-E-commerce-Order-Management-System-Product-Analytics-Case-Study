Order Lifecycle

Overview

This document describes the full lifecycle of an order in the E-commerce Order Management System (OMS), including all possible states and transitions.

⸻

Order Statuses

1. Created

Order is created by the customer but not yet paid.

2. Paid

Payment is successfully completed.

3. Processing

Order is being prepared in the warehouse.

4. Shipped

Order has been handed to the delivery service.

5. Delivered

Order has been successfully delivered to the customer.

⸻

Alternative States

Cancelled

Order is cancelled by the customer or system before shipment.

Returned

Order is returned by the customer after delivery.

Failed

Order cannot be completed due to payment or stock issues.

⸻

State Transitions

Created → Paid → Processing → Shipped → Delivered

Possible exceptions:

* Created → Cancelled
* Paid → Cancelled
* Shipped → Returned
* Created → Failed

⸻

Business Rules

* An order cannot be shipped before payment is confirmed.
* Cancellation is not allowed after shipment.
* Returned orders must be previously marked as Delivered.
