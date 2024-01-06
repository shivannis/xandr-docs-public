---
title: Set Split Priority
Description: The article shows how to prioritize programmable splits, assign a priority number to each split in the Split Details grid, where impressions are allocated to the split with the lowest priority number, ensuring unique priority assignments for each split within a line item.
ms.date: 10/28/2023
---

# Set split priority

If an impression applies to multiple programmable splits, the impression is assigned to the split with the lowest priority number.

For example, if Split A (priority 1) is targeting "domain=cnn.com", Split B (priority 2) is targeting "city=Boston", and an impression is available from a user in Boston visiting cnn.com, then the impression will be assigned to Split A because it has a higher priority (lower priority number) than Split B.

1. Go to the **Split Details** grid.
1. Set a priority number for each of your line item's splits.

The same priority number can't be set for multiple splits.
