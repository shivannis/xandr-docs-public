---
Title : Using Multiple Campaigns with a Guaranteed Line Item
Description : When setting up a guaranteed line item, you may want to run more than
one campaign under that line item. Running more than one campaign
---


# Using Multiple Campaigns with a Guaranteed Line Item



When setting up a guaranteed line item, you may want to run more than
one campaign under that line item. Running more than one campaign
enables several interesting use cases, including:

- When an advertiser needs a line item to deliver during only certain
  date ranges within the overall flight.
- When an advertiser needs to implement multiple targeting strategies
  for a single guaranteed line item.

To enable these and other use cases, you can opt to **use campaign-level
settings** when creating a guaranteed line item. This will allow you to
configure multiple campaigns beneath that line item. Campaigns can be
created and edited as follows:

- Use the Campaign Shells section as a
  lightweight way to set up campaigns directly from the line item
  creation screen.
- After saving a guaranteed line item with campaign-level settings
  enabled, navigate directly to the underlying campaigns to edit their
  settings and/or create additional campaigns.

This page describes several use cases for campaigns, how to create and
edit campaigns, and how a campaign inherits targeting from its parent
line item.



Important: This feature is currently
not available to all clients.



For instructions on adding campaign shells during guaranteed line item
setup, see <a href="create-a-guaranteed-delivery-line-item.html"
class="xref">Create a Guaranteed Delivery Line Item</a>.

Use Cases of Campaign Shells

- <a
  href="using-multiple-campaigns-with-a-guaranteed-line-item.html#ID-0000056c__b-8f9a6822-c48e-4183-b34d-ea3e5199610a"
  class="xref">Deliver during multiple date ranges within a flight</a>
- <a
  href="using-multiple-campaigns-with-a-guaranteed-line-item.html#ID-0000056c__b-ea26a346-cb8a-415c-a957-50d399c33404"
  class="xref">Execute multiple targeting strategies</a>

Deliver during multiple date ranges within a flight

Advertisers sometimes need a line item to deliver only during certain
date ranges within the overall flight.

For example, an advertiser may require that the media buy is active
during two separate periods of time within the line item's total flight,
with a gap of a few days in between. A line item with a 20-day overall
flight could be scheduled to serve during two discrete date ranges
within the flight:

- *Date range 1* is ten days long, running from days 1-10 of the flight.
- *Date range 2* is five days long, running from days 15-20 of the
  flight.

Despite the five day break in the middle of the flight, the line item
should still deliver evenly on eligible days, such that:

- Two-thirds (2/3) of total delivery occurs during the 10 days of *Date
  range 1*
- One-third (1/3) of total delivery occurs during the 5 days of *Date
  range 2*

**Execute multiple targeting strategies**

Advertisers may wish to execute multiple targeting strategies with a
single guaranteed line item.

For example, an advertiser buying media for a regional group of auto
dealerships can target users with different creatives depending on which
dealership location is closest to the user.

As another example, an agency might provide multiple sets of creatives,
each targeted to a different user segment: one set of creatives
targeting male users, one targeting female users.

Setting up Campaign Shells

Campaign shells are only available during guaranteed line item setup.
For instructions, see
<a href="create-a-guaranteed-delivery-line-item.html"
class="xref">Create a Guaranteed Delivery Line Item</a>.

Creating or Editing Campaigns Directly

After a guaranteed line item that uses campaign-level settings has been
created, settings on its child campaigns can still be edited; campaigns
can also be added at any time. There are two ways to navigate to
campaigns from the
<a href="explore-line-items.html" class="xref">Line Items</a> screen:

**Method 1**: You can click the numbered button in the
Campaigns column of the grid, which
will take you to a list of the campaigns under your guaranteed line
item.

**Method 2**: You can also navigate to the
<a href="view-line-item-details.html" class="xref">Line Item Details</a>
screen and create or edit campaigns from there.

How a Campaign Inherits Targeting from its Parent Line Item

By default, your guaranteed line item will target all direct inventory.
As you add targeting settings, less and less inventory will be targeted.
One way to think of the inventory volume available to a line item is as
a pipe that funnels into narrower and narrower pipes as you continue to
add targeting criteria.

Campaigns that you create using the Campaign Shells feature can only
further limit the targeting applied by their parent line item. Using the
pipe analogy, they can only act as "narrower pipes" that receive
inventory that has been "funneled" to them through the line item's
targeting. As each campaign adds its own targeting (e.g., date ranges),
it further narrows its scope to a different subset of the line item's
overall inventory.

Related Topics

- <a href="create-a-guaranteed-delivery-line-item.html"
  class="xref">Create a Guaranteed Delivery Line Item</a>
- <a href="guaranteed-delivery.html" class="xref">Guaranteed Delivery</a>
- <a href="guaranteed-outcomes-auction-mechanics.html"
  class="xref">Guaranteed Outcomes Auction Mechanics</a>
- <a href="guaranteed-delivery-pacing.html" class="xref">Guaranteed
  Delivery Pacing</a>




