---
Title : Advertiser Analytics Report
Description : The Advertiser Analytics report lets you view buy-side data for a
ms.date: 10/28/2023
specific advertiser. The data available via this report is even more
---


# Advertiser Analytics Report





The Advertiser Analytics report lets you view buy-side data for a
specific advertiser. The data available via this report is even more
granular than what you can get from the
<a href="network-analytics-report.md" class="xref">Network Analytics
Report</a>.

Time Frame

All dates and times are given in UTC.

**Time Ranges**

Time ranges define the time period of the data extracted for the report.
The following is a complete list of time ranges available for reports.

However, all time ranges are not available for every report.



- Custom
- Current Hour
- Last Available Day
- Last Hour
- Today
- Last 24 Hours
- Last 48 Hours
- Yesterday
- Last 2 Days
- Last 7 Days
- Last 7 Available Days
- Last 14 Days
- Last 14 Available Days
- Last 30 Days
- Last 30 Available Days
- Last Month
- Last 100 Days
- Last 365 Days
- Quarter to Date
- Month to Date
- Month to Yesterday
- Lifetime



**Intervals**

Intervals determine how your data is grouped together into rows in the
report response. The following is a complete list of intervals available
for reports. However, all intervals are not available for every report.



- Hourly: Data is grouped into rows by the hour.
- Daily: Data is grouped into rows by the day.
- Monthly: Data is grouped into rows by the month.
- Cumulative: Data is grouped together in one figure, covering the
  entire selected time range.





<b>Note:</b> For impressions older than 100
days, the day will be returned rather than the hour.



For more information about how quickly report data is processed, see
<a href="availability-of-reporting-data.md" class="xref">Availability
of Reporting Data</a>.

Data Retention Period

Most data in this report is maintained permanently (exceptions noted
below). After:

- 100 days, you are no longer able to report on hourly data (however,
  daily, monthly and cumulative intervals are still available)
- 14 months, you are no longer able to report on individual:
  - Creatives
  - Placements
  - Brands

In some cases Analytics reports can show delivery that does not match
statistics shown elsewhere in Microsoft Monetize for
a given advertiser or publisher. This is due to the way that Analytics
reporting data older than 100 days and 14 months is aggregated. The data
from Billing reports are kept in non-aggregated form indefinitely.

Real Time Data

Real Time Data is offered within this report (not all users have
access). Traditionally, reports have had a 2 hour built-in delay to
allow for a fuller reconciliation with conversions, impressions and
other metrics associated with transactions. However, in some cases, it
is important to have up-to-the-minute information even if it has not
been fully reconciled yet. Dimensions which support the real-time option
are marked with the clock icon.

![real time data](media/real-time-data-reporting.png)



- To use this new feature, set the Real Time
  Data field to **Included**. This will cause the data in your
  report to contain both real-time and the more fully reconciled batch
  file data. If you want the report to break out the real-time data from
  batch file data, select the **Real-Time status** checkbox.
- Do not use information in the real-time data portion of your report to
  bill your clients as that data may change slightly once fully
  reconciled within 2 to 4 hours. For more information about how quickly
  reporting data is processed, see
  <a href="availability-of-reporting-data.md" class="xref">Availability
  of Reporting Data</a>.

Currency 2.0





<b>Note:</b> By enabling
Currency 2.0, you can select a
currency for each individual report if you prefer not to use
USD as the default currency. The
report will show all the monetary fields in your report using the
selected currency. For example, if you select
Advertiser, click the
Currency 2.0 toggle to enable it, and
select Japanese Yen (JPY) from the
Currency menu, the report will show
all monetary data in JPY, including data associated with child objects
such as line items.





Dimensions



<b>Important:</b>

The Filter? column shows whether a
dimension can be used as a filter as well as being used to group by.

Some dimensions have *attributes*. Dimension attributes are a more
granular element of data about the parent dimension. If a dimension has
attributes, the name of its attributes will appear below it using the
following syntax: *Dimension_Name:Attribute_Name*

For all revenue fields, the currency is defined by the
Buying Currency field (When Currency
2.0 is disabled).





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a466__entry__1" class="entry">Column</th>
<th id="ID-0000a466__entry__2" class="entry">Filter?</th>
<th id="ID-0000a466__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Seller</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The seller of the
impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Seller Type</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3"><span
class="ph">Xandr buckets sellers into different types for billing
purposes. For more information, see <a
href="advertiser-analytics-report.md#ID-0000a466__ID-0000a78d"
class="xref">Seller Types</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Publisher</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The publisher on whose
inventory this impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Placement</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The placement through
which this impression occurred.

<b>Note:</b> For impressions older than 100
days, placements are aggregated into one row with <code
class="ph codeph">-1</code> as the ID and a generic name.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Line Item</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The line item under
which this impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Line Item: Type</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The line item type
(e.g., Standard, Augmented).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Line Item: Status</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The line item status
(e.g., inactive, active).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Line Item: Start
Date</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The start date of the
line item.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Line Item: End
Date</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The end date of the
line item.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Line Item: Imps Budget
(daily)</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The daily impression
budget of the line item.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Line Item: Imps Budget
(lifetime)</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The lifetime
impression budget of the line item.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Line Item: Revenue
Budget (daily) Adv Currency</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The daily revenue
budget of the line item. This dimension is available only when Currency
2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Line Item: Revenue
Budget (lifetime) Adv Currency</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The lifetime revenue
budget of the line item. This dimension is available only when Currency
2.0 is disabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Line Item:
Comments</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">Any comments that have
been entered for the line item.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Line Item: Type
(reporting label)</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">A custom reporting
label field used to list the line item type (e.g., Retargeting LI). This
is not the same as the Type attribute
described above. You may only select one reporting label per
report.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Line Item: Sales Rep
(reporting label)</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">A custom reporting
label field containing the sales representative. You may only select one
reporting label per report.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Line Item: Trafficker
(reporting label)</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">A custom reporting
label field containing the trafficker. You may only select one reporting
label per report.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Flight</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The line item flight
under which the impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Flight: Start
Date</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The start date of the
flight under which the impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Flight: End Date</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The end date of the
flight under which the impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Flight: Imp Budget
(daily)</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The daily budget in
impressions for the flight.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Flight: Imp Budget
(lifetime)</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The lifetime budget in
impressions for the flight.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Flight: Revenue Budget
(daily) Advertiser Currency</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The daily budget in
revenue for the flight. This dimension is available only when Currency
2.0 is disabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Flight: Revenue Budget
(lifetime) Advertiser Currency</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The lifetime budget in
revenue for the flight. This dimension is available only when Currency
2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Campaign</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The campaign that
purchased this impression. (Does not apply to all advertisers.)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Split</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The name and ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any rows with a campaign name,
the Split column (if included) will be
null.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Creative</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The creative that
served on this impression. For more information about creatives, see <a
href="working-with-creatives.md" class="xref"
title="You can traffic a wide range of creative types, from banners to increasingly pervasive rich media types, through the Xandr platform. Only secure content is supported.">Working
with Creatives</a>.

<b>Note:</b> For impressions older than 100
days, creatives will be aggregated into one row with <code
class="ph codeph">0</code> as the ID and a generic name.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Media Type</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The media type
associated with the creative that served on this impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Country</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The country in which
the impression took place.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Size</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The size of the
creative, e.g., 320x50. There may be situations where the size listed in
the report does not match the size of the placement. This happens when
Promo Sizes come into the equation. When a creative serves into a
placement fulfilling a size in the Promo Sizes Array, the size reported
is the <code class="ph codeph">size</code> of the creative, which could
be different from the promo size or the placement's size.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Bid Type</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">See <a
href="advertiser-analytics-report.md#ID-0000a466__ID-0000a7b5"
class="xref">Bid Types</a> below for definitions of the different types
of bids.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Advertiser
Currency</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The default currency
of the advertiser who purchased this impression. This is set when an
advertiser is created. For more information, see <a
href="create-an-advertiser.md" class="xref">Create an Advertiser</a>.

<b>Tip:</b> To display the cost/revenue in the
local currency, select Adv. Currency
as a dimension.

This dimension is available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Conversion Pixel</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The conversion pixel
that was fired, if any. To view pixel-specific metrics in separate
columns of your report, do both of the following
<ul>
<li>Filter by a set of pixels (up to a maximum of 20 pixels) in the
Conversion Pixel filter</li>
<li>Select the Conversion Pixel dimension</li>
</ul>
<p>For more information about conversion pixels, see <a
href="working-with-conversion-pixels.md" class="xref">Working with
Conversion Pixels</a>.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Revenue Type</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The basis on which the
advertiser has agreed to pay you for the impression. For more
information, see <a
href="advertiser-analytics-report.md#ID-0000a466__ID-0000a7f3"
class="xref">Revenue Types</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Payment Type</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">How the buyer is
paying for the impression. See <a
href="advertiser-analytics-report.md#ID-0000a466__ID-0000a845"
class="xref">Payment Types</a> for definitions of the different payment
types.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Campaign Priority</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The bidding priority
of the campaign that purchased this impression. (Does not apply to all
advertisers.)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Billing Period</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The insertion order's
billing period.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Billing Period: Start
Date</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The start date of the
insertion order's billing period.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Billing Period: End
Date</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The end date of the
insertion order's billing period.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Billing Period: Booked
Imps Budget (daily)</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The daily impression
budget of the insertion order's billing period.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Billing Period: Booked
Imps Budget (lifetime)</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The lifetime
impression budget of the insertion order's billing period.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Billing Period:
Revenue Budget (daily) Buying Currency</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The daily revenue
budget of the insertion order's billing period. This dimension is
available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Billing Period:
Revenue Budget (lifetime) Buying Currency</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The lifetime revenue
budget of the insertion order's billing period. This dimension is
available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Billing Period:
External Code</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The custom code for
the billing period.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Venue</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The venue on which
this impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Deal</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The deal associated
with the transaction for the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Campaign: Test/Control
(reporting label)</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The name of the
control group the user who viewed this impression belonged to, if
any.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Insertion Order</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The insertion order
under which this impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Insertion Order:
Type</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The insertion order
type (e.g., Legacy IO, Seamless IO). For more information, see <a
href="create-an-insertion-order.md" class="xref">Create an Insertion
Order</a></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Insertion Order:
State</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The state of the
insertion order (e.g., active, inactive).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Insertion Order: Start
Date</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The start date of the
insertion order (for legacy insertion orders).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Insertion Order: End
Date</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The end date of the
insertion order (for legacy insertion orders).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Insertion Order: Imps
Budget (daily)</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The daily impression
budget of the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Insertion Order: Imps
Budget (lifetime)</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The lifetime
impression budget of the insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Insertion Order:
Revenue Budget (daily)</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The daily budget in
revenue for the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Insertion Order:
Revenue Budget (lifetime)</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The lifetime budget in
revenue for the insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Insertion Order:
Billing Code</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The billing code
associated with the insertion order (if there is one).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Insertion Order: Type
(reporting label)</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">A custom reporting
label field used to list the insertion order type (e.g., Branding IO).
This is not the same as the Type
attribute described above. You may only select one reporting label per
report.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Insertion Order: Sales
Rep (reporting label)</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">A customer reporting
label field used to list the sales representative associated with the
insertion order. You may only select one reporting label per
report.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Insertion Order:
Trafficker (reporting label)</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">A customer reporting
label field used to list the trafficker associated with the insertion
order. You may only select one reporting label per report.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Buying Currency</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The transaction
currency that the buyer used to purchase this impression. Including this
dimension will cause the monetary metrics to be displayed in the buying
currency. This dimension is available only when Currency 2.0 is
disabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Selling Currency</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">The transaction
currency used by the seller to sell this impression. Including this
dimension will cause most monetary metrics to be displayed in the
selling currency. This dimension is available only when Currency 2.0 is
disabled.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Publisher
Currency</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">This is the currency
in which the publisher sells their inventory. This dimension is
available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Adjustments</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">Changes to <span
class="ph">Network reported revenue based on factors such as
revenue, conversions, clicks, or impressions reported by their
advertisers or agencies' ad servers.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__1">Clearing Event</td>
<td class="entry" headers="ID-0000a466__entry__2">Yes</td>
<td class="entry" headers="ID-0000a466__entry__3">The clearing event
associated with the impression (e.g., Impressions, Views - Standard
Display).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__1">Creative Code</td>
<td class="entry" headers="ID-0000a466__entry__2">No</td>
<td class="entry" headers="ID-0000a466__entry__3">Optional code
associated with the creative that ran.</td>
</tr>
</tbody>
</table>





<b>Note:</b> You can also filter on a
particular number of impressions using the
Minimum Impressions filter.



Seller Types



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a466__entry__202" class="entry">Name</th>
<th id="ID-0000a466__entry__203" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__202">platform</td>
<td class="entry" headers="ID-0000a466__entry__203">When you purchase
platform inventory, you will be charged your contracted auction service
fee.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__202">partner</td>
<td class="entry" headers="ID-0000a466__entry__203">When you purchase
inventory from one of our external supply partners, you will be charged
your contracted auction service fee.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__202">unknown</td>
<td class="entry" headers="ID-0000a466__entry__203">The seller type is
not identifiable. You shouldn't see this turn up in your reports. If you
do, please contact your Xandr support at <a
href="https://help.xandr.com/" class="xref" target="_blank"><span
class="ph">https://help.xandr.com</a>.</td>
</tr>
</tbody>
</table>



Bid Types

Note that the term "give up" is appended to the bid types below if the
valuation for that impression falls below the venue's "give up price".



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a466__entry__210" class="entry">Name</th>
<th id="ID-0000a466__entry__211" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__210">Manual</td>
<td class="entry" headers="ID-0000a466__entry__211">Base CPM bid. Only
applies when you are bidding with a CPM goal whether it's Base, EAP, or
ECP.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__210">Learn</td>
<td class="entry" headers="ID-0000a466__entry__211">Learn bid. Only
applies when you are bidding with optimization (CPA, CPC, or margin) and
we do not yet have enough data to bid optimized.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__210">Optimized</td>
<td class="entry" headers="ID-0000a466__entry__211">Optimized bid. Only
applies when you are bidding with optimization (CPA, CPC, or margin) and
we have enough data to bid optimized.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__210">Unknown</td>
<td class="entry" headers="ID-0000a466__entry__211">The node was in an
unknown optimization phase.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__210">Optimized give
up</td>
<td class="entry" headers="ID-0000a466__entry__211">The bid was
"Optimized" but was below the venue's "give up" price.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__210">Learn give up</td>
<td class="entry" headers="ID-0000a466__entry__211">The bid was "Learn"
but was below the venue's "give up" price.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__210">Manual give up</td>
<td id="ID-0000a466__ID-0000a7f3" class="entry"
headers="ID-0000a466__entry__211">The bid was "Manual" but was below the
venue's "give up" price</td>
</tr>
</tbody>
</table>



Revenue Types



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a466__entry__226" class="entry">Name</th>
<th id="ID-0000a466__entry__227" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__226">No Payment</td>
<td class="entry" headers="ID-0000a466__entry__227"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__226">Flat CPM</td>
<td class="entry" headers="ID-0000a466__entry__227">A flat payment per
1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__226">Cost plus CPM</td>
<td class="entry" headers="ID-0000a466__entry__227">Cost (what you spend
on inventory) plus an extra CPM.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__226">Cost plus
margin</td>
<td class="entry" headers="ID-0000a466__entry__227">Cost (what you spend
on inventory) plus a percentage of what you spend.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__226">CPC</td>
<td class="entry" headers="ID-0000a466__entry__227">A flat payment per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__226">CPA</td>
<td class="entry" headers="ID-0000a466__entry__227">A flat payment per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__226">Revshare</td>
<td class="entry" headers="ID-0000a466__entry__227">A payment on a
revshare basis (CPC or CPA).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__226">Estimated CPM</td>
<td class="entry" headers="ID-0000a466__entry__227">The estimated
payment per 1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__226">CPVM</td>
<td id="ID-0000a466__ID-0000a845" class="entry"
headers="ID-0000a466__entry__227">A flat payment per 1000 viewable
impressions.</td>
</tr>
</tbody>
</table>



Payment Types



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a466__entry__246" class="entry">Name</th>
<th id="ID-0000a466__entry__247" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__246">No Payment</td>
<td class="entry" headers="ID-0000a466__entry__247"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__246">CPM</td>
<td class="entry" headers="ID-0000a466__entry__247">Payment per 1000
impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__246">CPC</td>
<td class="entry" headers="ID-0000a466__entry__247">Payment per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__246">CPA</td>
<td class="entry" headers="ID-0000a466__entry__247">Payment per
action.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__246">Owner CPM</td>
<td class="entry" headers="ID-0000a466__entry__247">Publisher is paid on
a CPM basis.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__246">Owner revshare</td>
<td class="entry" headers="ID-0000a466__entry__247">Publisher is paid on
a Revshare basis (CPC or CPA).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__246">CPVM</td>
<td class="entry" headers="ID-0000a466__entry__247">Payment per 1000
viewable impressions.</td>
</tr>
</tbody>
</table>



Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a466__entry__262" class="entry">Column</th>
<th id="ID-0000a466__entry__263" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Imps</td>
<td class="entry" headers="ID-0000a466__entry__263">The total number of
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Imps (master
creative)</td>
<td class="entry" headers="ID-0000a466__entry__263">The number of
page-level roadblocks that served the master creative.

<b>Note:</b> Alpha-Beta Notice:
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Clicks</td>
<td class="entry" headers="ID-0000a466__entry__263">The total number of
clicks.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">CTR</td>
<td class="entry" headers="ID-0000a466__entry__263">The click-through
rate – the ratio of clicks to impressions, expressed as a
percentage.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Total
Conversions</td>
<td class="entry" headers="ID-0000a466__entry__263">The total number of
post-view and post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Conversion Rate</td>
<td class="entry" headers="ID-0000a466__entry__263">The ratio of
conversions to impressions, expressed as a percentage.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Conversions per
Million</td>
<td class="entry" headers="ID-0000a466__entry__263">The number of
conversions per million impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Click-to-Conv
Rate</td>
<td class="entry" headers="ID-0000a466__entry__263">The ratio of clicks
to conversions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Total Revenue</td>
<td class="entry" headers="ID-0000a466__entry__263">The total revenue;
the sum of booked and resold revenue. This value will be displayed in
USD as well as potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Post View
Conversions</td>
<td class="entry" headers="ID-0000a466__entry__263">The number of
post-view conversions. For more information about how we attribute
post-view (and other) conversions, see <a
href="conversion-attribution.md" class="xref">Conversion
Attribution</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Post View
Revenue</td>
<td class="entry" headers="ID-0000a466__entry__263">The amount of
revenue derived from post-view conversions. This value will be displayed
in USD as well as potentially the Buying Currency (if you've selected
that dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Post Click
Convs</td>
<td class="entry" headers="ID-0000a466__entry__263">The number of
post-click conversions. For more information about how we attribute
post-view (and other) conversions, see <a
href="conversion-attribution.md" class="xref">Conversion
Attribution</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Post Click
Revenue</td>
<td class="entry" headers="ID-0000a466__entry__263">The amount of
revenue derived from post-click conversions. This value will be
displayed in USD as well as potentially the Buying Currency (if you've
selected that dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Revenue eCPM</td>
<td class="entry" headers="ID-0000a466__entry__263">The total revenue,
expressed as eCPM. For definitions of eCPM and other terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>. This value will be displayed
in USD as well as potentially the Buying Currency (if you've selected
that dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Revenue eCPC</td>
<td class="entry" headers="ID-0000a466__entry__263">The total revenue,
expressed as eCPC. For definitons of eCPM and other terms,see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>. This value will be displayed
in USD as well as potentially the Buying Currency (if you've selected
that dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Revenue eCPA</td>
<td class="entry" headers="ID-0000a466__entry__263">The revenue per
conversion or acquisition, expressed as eCPA. For the definition of
eCPA, see the see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>. This value will be displayed
in USD as well as potentially the Buying Currency (if you've selected
that dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Media Cost</td>
<td class="entry" headers="ID-0000a466__entry__263">The total amount of
media cost across both managed publishers and RTB inventory. This value
will be displayed in USD as well as potentially the Buying Currency (if
you've selected that dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Cost eCPM</td>
<td class="entry" headers="ID-0000a466__entry__263">The cost per
thousand impressions. This value will be displayed in USD as well as
potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Cost eCPC</td>
<td class="entry" headers="ID-0000a466__entry__263">The cost per click.
This value will be displayed in USD as well as potentially the Buying
Currency (if you've selected that dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Cost eCPA</td>
<td class="entry" headers="ID-0000a466__entry__263">The cost per
acquisition (conversion). This value will be displayed in USD as well as
potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Profit</td>
<td class="entry" headers="ID-0000a466__entry__263">Booked revenue minus
total cost. This value will be displayed in USD as well as potentially
the Buying Currency (if you've selected that dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Profit eCPM</td>
<td class="entry" headers="ID-0000a466__entry__263">The profit per
thousand impressions. Here profit is defined as the booked revenue minus
total cost. This value will be displayed in USD as well as potentially
the Buying Currency (if you've selected that dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Profit Margin</td>
<td class="entry" headers="ID-0000a466__entry__263">The profit,
expressed as a percentage of revenue. Here profit is defined as the
booked revenue minus total cost. This value will be displayed in USD as
well as potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Post View Conversion
Rate</td>
<td class="entry" headers="ID-0000a466__entry__263">The ratio of
post-view conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Post Click
Conversion Rate</td>
<td class="entry" headers="ID-0000a466__entry__263">The ratio of
post-click conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Commissions</td>
<td class="entry" headers="ID-0000a466__entry__263">The total
commissions that come out of your booked revenue. <span
class="ph">Commissions for standard line items, $0 for ALIs.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Serving Fees</td>
<td class="entry" headers="ID-0000a466__entry__263">The total serving
fees plus media cost. This value will be displayed in USD as well as
potentially the Buying Currency (if you've selected that dimension).
Serving fees for standard line items, $0 for ALIs.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Viewable Imps</td>
<td class="entry" headers="ID-0000a466__entry__263">The number of
measured impressions that were viewable, per the IAB Viewability
definition, which states that an impression is viewable if 50% of the
pixels are in-view during 1 consecutive second.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">View-Measured
Imps</td>
<td class="entry" headers="ID-0000a466__entry__263">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Viewability
Rate</td>
<td class="entry" headers="ID-0000a466__entry__263">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Viewability
Measurement Rate</td>
<td class="entry" headers="ID-0000a466__entry__263">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Clearing Event
Booked Revenue Per Event</td>
<td class="entry" headers="ID-0000a466__entry__263">The total booked
revenue per clearing event.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Total Revenue (net
commissions)</td>
<td class="entry"
headers="ID-0000a466__entry__263"><strong>Deprecated.</strong> The total
revenue minus any commissions owed.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Clearing Events
Booked Revenue CPM</td>
<td class="entry" headers="ID-0000a466__entry__263">The booked revenue
in CPM per event.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Revenue eCPM (net
commissions)</td>
<td class="entry"
headers="ID-0000a466__entry__263"><strong>Deprecated.</strong> The total
revenue, expressed as a cost per mille, minus any commissions owed.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Revenue eCPC (net
commissions)</td>
<td class="entry"
headers="ID-0000a466__entry__263"><strong>Deprecated.</strong> The total
revenue, expressed as a cost per click, minus any commissions owed.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Revenue eCPA (net
commissions)</td>
<td class="entry"
headers="ID-0000a466__entry__263"><strong>Deprecated.</strong> The total
revenue, expressed as a cost per acquisition, minus any commissions
owed.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Booked Revenue
vCPM</td>
<td class="entry" headers="ID-0000a466__entry__263">The booked revenue,
expressed as a viewable CPM.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">vCPM</td>
<td class="entry" headers="ID-0000a466__entry__263">The CPM for viewable
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Media Cost vCPM</td>
<td class="entry" headers="ID-0000a466__entry__263">The media cost
expressed in terms of viewable CPM.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Clearing Event Buyer
Media Cost Per Event</td>
<td class="entry" headers="ID-0000a466__entry__263">The media cost per
clearing event.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Clearing Event Buyer
Media Cost eCPM</td>
<td class="entry" headers="ID-0000a466__entry__263">The total media cost
per 1000 events (for the associated clearing event).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Clearing Event
Units</td>
<td class="entry" headers="ID-0000a466__entry__263">The total number of
events purchased (for the associated Clearing Event). When buying a
Clearing Event other than impression (e.g., viewable impressions), the
number of billed events will be less than the number of
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Partner Fees</td>
<td class="entry" headers="ID-0000a466__entry__263">The total amount of
third-party costs, budgeted using <a href="partner-fees.md"
class="xref">Partner Fees</a>, that have accrued on an augmented line
item over the reported period of time.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Total Cost</td>
<td class="entry" headers="ID-0000a466__entry__263">The total amount of
costs accrued over the reported period of time. This generally includes
two types of costs, budgeted costs (media cost, data cost, partner fees,
serving fees, commissions) and publisher revenue if you track publisher
payouts on the platform.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Total Cost eCPM</td>
<td class="entry" headers="ID-0000a466__entry__263">The total cost per
1,000 imps.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Total Cost eCPC</td>
<td class="entry" headers="ID-0000a466__entry__263">The total cost per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Total Cost eCPA</td>
<td class="entry" headers="ID-0000a466__entry__263">The total cost per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Profit eCPC</td>
<td class="entry" headers="ID-0000a466__entry__263">Profit per click.

<b>Note:</b> This new field defines "profit"
as booked revenue minus total cost.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Profit eCPA</td>
<td class="entry" headers="ID-0000a466__entry__263">Profit per
conversion.

<b>Note:</b> This new field defines "profit"
as booked revenue minus total cost.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Post-View Cross
Device Conversions</td>
<td class="entry" headers="ID-0000a466__entry__263">The number of
post-view Cross Device conversions. For more information about how we
attribute post-view (and other) conversions, see <a
href="conversion-attribution.md" class="xref">Conversion
Attribution</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Post-Click Cross
Device Conversions</td>
<td class="entry" headers="ID-0000a466__entry__263">The number of
post-click Cross Device conversions. For more information about how we
attribute post-view (and other) conversions, see <a
href="conversion-attribution.md" class="xref">Conversion
Attribution</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Video Skips</td>
<td class="entry" headers="ID-0000a466__entry__263">The total number of
times a user skipped the video. Use this metric for reporting when
buying skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Video Starts</td>
<td class="entry" headers="ID-0000a466__entry__263">The total number of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">25% Video
Complete</td>
<td class="entry" headers="ID-0000a466__entry__263">The total number of
times the video creatives completed 25% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">50% Video
Complete</td>
<td class="entry" headers="ID-0000a466__entry__263">The total number of
times the video creatives completed 50% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">75% Video
Complete</td>
<td class="entry" headers="ID-0000a466__entry__263">The total number of
times the video creatives completed 75% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Video
Completions</td>
<td class="entry" headers="ID-0000a466__entry__263">The total number of
times the video creatives played for the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Videos Served</td>
<td class="entry" headers="ID-0000a466__entry__263">The total number of
video responses served to the player. An ad response occurs when the
VAST document (XML) is served in response to a request. An ad response
doesn't necessarily indicate a successful impression. For an impression,
the first frame of the video must be served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Video Errors</td>
<td class="entry" headers="ID-0000a466__entry__263">The total number of
times a video error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Revenue Per Video
Complete</td>
<td class="entry" headers="ID-0000a466__entry__263">The revenue per
video completion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Cost Per Video
Complete</td>
<td class="entry" headers="ID-0000a466__entry__263">The cost per video
completion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Video Completion
Rate</td>
<td class="entry" headers="ID-0000a466__entry__263">The ratio of video
completions to impressions, expressed as a percentage (video
completions/total impressions).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__262">Video Start
Rate</td>
<td class="entry" headers="ID-0000a466__entry__263">The percentage of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__262">Video Skip Rate</td>
<td class="entry" headers="ID-0000a466__entry__263">The percentage of
times the user opted to skip the video.</td>
</tr>
</tbody>
</table>



Custom Viewable Definition Metrics



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a466__entry__394" class="entry">Column</th>
<th id="ID-0000a466__entry__395" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000a466__entry__394">Custom Viewable
Imps</td>
<td class="entry" headers="ID-0000a466__entry__395">The number of
measured impressions that were viewable, per the member-level custom
definition configuration (for more details, contact your <span
class="ph">Xandr account representative).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000a466__entry__394">Custom Viewability
Rate</td>
<td class="entry" headers="ID-0000a466__entry__395">The percentage of
impressions that were viewable, per the member-level custom definition
configuration, out of the total number of impressions measured for
viewability.</td>
</tr>
</tbody>
</table>



To Run Your Report

Follow these steps to run your report.

1.  Select Reporting from the
    appropriate top menu (depending on how your account has been
    configured).
    1.  Or, from the Publishers top menu, click on
        Prebid
        Server Premium \>
        Analytics \>
        Prebid Server Analytics
2.  Select the relevant report from the list. The
    Report screen shows the available
    filters, dimensions, and delivery options for the report. The
    selections you make here will determine what report data is
    delivered to you, and how.
    

    <b>Important:</b> For an explanation of
    how grouping and filtering work, see
    <a href="dimensions-metrics-filtering-and-grouping.md"
    class="xref">Dimensions, Metrics, Filtering, and Grouping</a>.

    
3.  Select the relevant filters to limit the data displayed to just the
    information you want. For example, rather than running a report that
    shows impressions for all inventory sources, you may want to list
    results for just a select few. When you select a filter (by clicking
    Edit), a selection panel appears.
    Select items in the **Available** list (left), then click
    Add to include them in the
    **Chosen** list (right).
4.  Group by Dimension. Grouping allows you to display rows of data in
    the order you prefer.
    

    <b>Warning:</b> The more dimensions you
    group by, the larger the data set that is returned. Larger data sets
    can take substantially longer to process. Be sure to group using
    only the dimensions you need.

    
5.  Choose a delivery option. Once you've selected your filters and
    grouped by your chosen dimensions, you need to choose a delivery
    method. Available delivery methods include:
    - **Run now, show results in screen**: For smaller amounts of data,
      you may want to view the report as soon as possible in your
      browser. You can download the report in XLSX, CSV, Excel/TSV and
      JSON format. However, there is a limit of 100,000 rows per report
      when downloading as XLSX and Excel file.
    - **Run in background, notify me when results are ready to view**: A
      popup notification will let you know when the report is ready to
      view or download.
      

      <b>Tip:</b> The maximum size of the
      report that can be downloaded from the UI is 100 MB. Also, there
      is a limit of 100,000 rows per report when downloading as XLSX and
      Excel file. If the size of the report is more than that, you can
      try to download it using the <a
      href="xandr-api/report-service.md"
      class="xref" target="_blank">API</a> for that reporting service
      (The limit here is 10 million rows).

      
    - <span id="ID-0000a466__d10e107">**Export, send results via
      email**: Run the report in the background and email the results to
      one or more email addresses.
    - **Save as report template**: Save your selected report settings so
      that you can run this report again in the future. You can name
      this template using the text entry field under
      Name this report (its checkbox
      is auto-selected when you choose this option). A saved report can
      be rerun from the Your Reports
      screen.
    - **Add to scheduled reports**: Run this report automatically at
      specified times and have it sent to one or more email addresses.
    - **Name this report**: Give this report with its current settings a
      name for future reference.
6.  <span id="ID-0000a466__d10e136">Click Run
    report to send your report request.

Related Topics

- <a href="network-reporting.md" class="xref">Network Reporting</a>






