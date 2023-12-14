---
Title : Peer Approval
Description : Peer Approval provides a way for you to ensure that augmented line items
ms.date: 10/28/2023
are reviewed and approved by a second user before they can be set to
active. This allows you to catch any possible setup errors before the
---


# Peer Approval



Peer Approval provides a way for you to ensure that augmented line items
are reviewed and approved by a second user before they can be set to
active. This allows you to catch any possible setup errors before the
line item starts spending.

The Peer Approval feature is not activated for all clients. If you want
to have your account enabled for the Peer Approval feature, contact your
account representative.

User Settings

To designate that a user must receive approval for any line items they
create before they can set them to Active, select the
User must have peer approval checkbox
on the user's account. This will cause an
Approval Status field to appear on all
line items they create.

Line Item Creation Workflow

For all line items created by a user who is required to request peer
approval, the Approval Status field
will initially be set to Pending. The line item's
State field can not be set to Active
until the Approval Status field is set
to Approved.

Line items with Approval Status set to
Pending must be reviewed by a user other than the creator of the line
item. Once reviewed, the line item can either be Rejected (with comments
explaining what corrections need to be made) or Approved.

- If the line item's Approval Status
  is set to Rejected, the changes
  suggested by the Approver must be made and saved. The line item's
  Approval Status will be reset to
  Pending.
- If the line item's Approval Status
  is set to Approved, the line item's
  Status field can be set to
  Active.

<table id="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__1"
class="entry">Line Item status</th>
<th
id="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__2"
class="entry">Approval Status</th>
<th
id="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__3"
class="entry">Next action required</th>
<th
id="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__4"
class="entry">Who can perform the action</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__1">Inactive</td>
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__2">Pending</td>
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__3">Line
item must be reviewed and marked as Rejected or Approved.</td>
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__4">Any
user (with line item edit permissions) who did not create the line
item</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__1">Inactive</td>
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__2">Approved</td>
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__3">The
line item Status field can be set to
Active.</td>
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__4">Any
user (with line item edit permissions)</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__1">Inactive</td>
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__2">Rejected</td>
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__3">The
line item must be corrected to address the reasons for rejection. Once
these changes are made and saved, the <span
class="ph uicontrol">Approval Status will be reset to
Pending.</td>
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__4">Any
user (with line item edit permissions)</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__1">Inactive</td>
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__2">Not
Required</td>
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__3">No
review of the line item is needed because the user who created it does
not have the Approval Status checkbox
selected in their user profile. The line item <span
class="ph uicontrol">Status field can be set to <span
class="ph uicontrol">Active at any time.</td>
<td class="entry"
headers="ID-00001fa6__table-91f9a93c-77b2-48e9-bef6-90beb285b23a__entry__4">N/A</td>
</tr>
</tbody>
</table>




