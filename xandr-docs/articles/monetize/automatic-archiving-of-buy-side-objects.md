---
Title : Automatic Archiving of Buy-Side Objects
Description : Xandr automatically archives campaigns that have
ms.date: 10/28/2023
been identified as "stale" or unused. Archiving reduces the overhead of
---


# Automatic Archiving of Buy-Side Objects



Xandr automatically archives campaigns that have
been identified as "stale" or unused. Archiving reduces the overhead of
managing older campaigns and makes it easier to stay below
<a href="viewing-your-object-limits.md" class="xref">your object
limits</a>. It also releases system resources that
Xandr can use to drive better results for your
active campaigns.



<b>Note:</b> This feature is only enabled for
campaigns using the standard line item..



Archived campaigns can:

- Be viewed in Monetize and in Reporting
- Be clearly distinguished from active campaigns in both UI and API
- Be duplicated
- Be sorted by their **"archived"** status

Archived campaigns cannot:

- Serve
- Be edited
- Be counted against object limits

Archiving Criteria

A campaign is archived if:

- It has not served in 180 days
- It was created or last edited at least 180 days in the past
- It is not in flight
- It does not have a flight date scheduled in the future

Action Required by Clients

**None.** Your stale objects are automatically archived. Archived
objects appear in the UI and their status is
prominently marked. In the API, you can sort them using a flag (see
**Technical Notes** below for more detail).

Preventing an Object from Being Archived

To prevent a campaign from being archived, edit it to extend the last
edit date. You can also set a flight date that occurs in the future.

Technical Notes for API Clients

The following fields have been added to the <a
href="xandr-api/campaign-service.md"
class="xref" target="_blank">Campaign Service</a>:

- `is_archived` (boolean) - indicates whether the object has been
  archived
- `archived_on` (timestamp) - when the object was archived

The **only method allowed** on objects with `is_archived` set to `true`
is `DELETE`.

Related Topics

- <a href="explore-campaigns.md" class="xref">Explore Campaigns</a>
- <a href="view-campaign-details.md" class="xref">View Campaign
  Details</a>
- <a href="viewing-your-object-limits.md" class="xref">Viewing Your
  Object Limits</a>
- <a href="create-a-campaign.md" class="xref">Create a Campaign</a>




