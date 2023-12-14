---
Title : Inventory Forecasting
Description : <b>Note:</b> Inventory forecasting is
ms.date: 10/28/2023
available only to Xandr Ad Server customers.
---


# Inventory Forecasting





<b>Note:</b> Inventory forecasting is
available only to Xandr Ad Server customers.



For a publisher to commit to delivering against an advertiser's budget,
that publisher needs a way to forecast how much inventory is available
for the advertiser to buy. In addition, the publisher needs a way to
discover inventory contention. Inventory contention occurs when there
are multiple line items competing for the same inventory. Understanding
contention is important so the publisher can make prioritization
decisions when conflicts occur.

This page describes:

- What forecasting features are available
- How inventory forecasting works at a high level
- The types of forecasting that are available

Microsoft Monetize Forecasting Tools

You can forecast on standard, guaranteed delivery, and programmatic
guaranteed selling line items. When you create or edit a line item of
either type, there will be a Check
Availability button at the bottom of the **Create** or
Edit screen:

![check availability](media/check-availability.png)

Click Check Availability to open the
**Forecasting** pane. This pane shows you a chart with delivery goals
and capacity for the current line item. Click on **Contending Line
Items** to expand that section and see other line items that are
contending for the same inventory. You can filter the contending line
items based on priority.

![gdali availability](media/gdali-availability.png)

For line items with a vCPM revenue type, the availability and contention
forecast numbers are based on viewable impressions. For more
information, see
<a href="introduction-to-viewability.md" class="xref">Introduction to
Viewability</a>.

Type of Inventory Forecasting

Inventory forecasting provides the following information:

- **Capacity**: The total amount of inventory available.
- **Availability**: The amount of available inventory that isn't already
  booked and matches the proposed targeting and flight dates for the
  line item.

  <b>Note:</b> Although **Availability** is
  returned for standard line item forecasts, it's calculated from the
  perspective of a guaranteed line item. Therefore, **Availability**
  shouldn't be relied on as a definitive availability estimate for
  standard line item types.

  
- **Contention**: The number of line items that will be competing for
  this same inventory given the proposed targeting and flight dates.
- **Delivery**: Whether the line item will deliver in full. (For
  guaranteed delivery line items, see the **Unlikely to Deliver** filter
  in
  <a href="explore-global-line-items.md" class="xref">Explore Global
  Line Items</a>.)

Inventory Forecasting Features

Important features of our forecasting capability include:

- Automatic adjustment to seasonal traffic patterns.
- Spike detection and mitigation.
- Forecasts based on the actual line item and campaign targeting,
  including segment and geographic targeting, and frequency capping.
- Forecasts based on log-level, per-impression data rather than on
  sampling.
- Forecasts that can be made up to 15 months in the future.
- Daily capability and availability data for the full flight of a line
  item.
  

  <b>Note:</b> Forecasting is daily;
  individual start and end times are not considered.

  
- Forecasts that account for multiple impressions required for
  roadblocking.

How Inventory Forecasting Works

Our forecasting solution works by consuming log-level (per-impression)
data directly from the ad server and feeding it into our analysis
engine. The analysis engine then uses that data to generate forecasts by
actually simulating how the ad server will behave in future auctions.
It's able to run this simulation to a high degree of accuracy because it
has access to:

- Large amounts of impression-level historical data about previously
  sold inventory, including how it was targeted.
- Low-level knowledge of the ad server's behavior for
  <a href="guaranteed-delivery-auction-mechanics.md"
  class="xref">Guaranteed Delivery Auction Mechanics</a>, targeting, and
  pacing.

Forecasting for Roadblocks

Forecasting for a line item that includes roadblocks is calculated a
little differently than line items serving a single creative at a time.
With roadblocks, multiple creatives must serve at once for the line item
to deliver, so forecasting takes that into account. For roadblocks,
capacity and availability numbers are calculated per creative, then
summarized using the lowest availability and capacity numbers. These
number are multiplied by the number of creatives in the roadblock to
create a final forecast summary.

See <a href="target-your-inventory-with-roadblocking.md"
class="xref">Target Your Inventory with Roadblocking</a> for general
roadblocking information.

Related Topics

- <a href="create-a-guaranteed-delivery-line-item.md"
  class="xref">Create a Guaranteed Delivery Line Item</a>
- <a
  href="xandr-api/inventory-forecasting-services.md"
  class="xref" target="_blank">Inventory Forecasting Services</a>




