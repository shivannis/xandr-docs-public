---
Title : Network Analytics Report
Description : This report lets you view both buy- and sell-side data for your
Network. For more granular analytics on a
---


# Network Analytics Report





This report lets you view both buy- and sell-side data for your
Network. For more granular analytics on a
specific advertiser or publisher, use the **Advertiser Analytics** and
**Publisher Analytics** reports.

**Time Frame**

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



**Data Retention Period**

Most data in this report is maintained permanently (exceptions noted
below). After:

- 100 days, you are no longer able to report on hourly data (however,
  daily, monthly and cumulative intervals are still available)
- 14 months, you are no longer able to report on individual:
  - Creatives
  - Placements
  - Brands

In some cases Analytics reports can show delivery that does not match
<a href="dates-and-times-in-reporting.html" class="xref">Dates and Times
in Reporting</a> for a given advertiser or publisher. This is due to the
way that Analytics reporting data older than 100 days and 14 months is
aggregated. The data from Billing reports are kept in non-aggregated
form indefinitely.

**Real Time Data**

Real Time Data is a new feature being offered within this report (not
all users have access yet). Traditionally, reports have had a 2 hour
built-in delay to allow for a fuller reconciliation with conversions,
impressions and other metrics associated with transactions. However, in
some cases, it is important to have up-to-the-minute information even if
it has not been fully reconciled yet. Dimensions which support the
real-time option are marked with the clock icon.

<img
src="../images/network-analytics-report/real-time-data-reporting.jpg"
class="image" />

- To use this new feature, set the Real Time
  Data field to **Included**. This will cause the data in your
  report to contain both real-time and the more fully reconciled batch
  file data. If you want the report to break out the real-time data from
  batch file data, select the **Real-Time status** checkbox.
- Do not use information in the real-time data portion of your report to
  bill your clients as that data may change slightly once fully
  reconciled within 2 to 4 hours. For more information about how quickly
  reporting data is processed, see
  <a href="availability-of-reporting-data.html" class="xref">Availability
  of Reporting Data</a>.

**Time ranges including dates occurring greater than 45 days ago:** If
you create a Network analytics report with the
Range field set to "Lifetime",
"Quarter to Date" or "Custom" (where the end date is greater than 45
days from today), your report (regardless of metrics included) will be
added to a special queue for "resource-intensive" reports. As a result,
the report may take longer than usual to complete. In addition, these
resource-intensive reports may, due to the amount of data being
requested, fail before being completed. If your report fails to
complete, you will receive a notification. If your report request fails,
you can: - rerun the report at a later time. - use a report type other
than Network Analytics. - alter the way you
structure your reports (if possible) so they do not include dates
greater than 45 days ago.

If you are frequently requesting Network
analytics reports which include dates longer than 45 day ago, you may
need to consider running these reports via the API, caching the data and
using <a
href="https://docs.xandr.com/bundle/xandr-api/page/bulk-reporting-feeds.html"
class="xref" target="_blank">Bulk Reporting Feeds</a> or <a
href="https://docs.xandr.com/bundle/log-level-data/page/log-level-data-feeds.html"
class="xref" target="_blank">Log-Level Data Feeds</a> (LLD).

**Currency 2.0**





Note: By enabling
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









## Dimensions





Important:

- The **Filter?** column shows
  whether a dimension can be used as a filter as well as being used to
  group by.
- Some dimensions have attributes. Dimension attributes are a more
  granular element of data about the parent dimension. If a dimension
  has attributes, the name of its attributes will appear below it using
  the following syntax "Dimension_Name:Attribute_Name".
- For all revenue fields, the currency is defined by the
  Buying Currency field.







<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001b7c__entry__1" class="entry">Column</th>
<th id="ID-00001b7c__entry__2" class="entry">Filter?</th>
<th id="ID-00001b7c__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Adjustments</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">Changes to <span
class="ph">Network reported revenue based on factors such as
revenue, conversions, clicks, or impressions reported by their
advertisers or agencies' ad servers.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Buyer</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The buyer of this
impression.

Note: The name might be "Default"; or
"Default Error", which means that there was no buyer for the impression,
and a default creative was served.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Seller</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The seller of this
impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Seller Type</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3"><span
class="ph">Xandr buckets sellers into different types for billing
purposes. For more information about the different seller types, see
"Seller Types" below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Advertiser</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The advertiser whose
creative served on this impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Publisher</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The publisher on whose
inventory this impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Placement Group</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The placement group
(simply a collection of placements) which includes the placement through
which this impression occurred.
<p>For impressions older than 100 days, the ID will be 0.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Placement</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The name and ID of the
placement through which this impression occurred.

Note: For impressions older than 100
days, placements will be aggregated into one row with <code
class="ph codeph">-1</code> as the ID and a generic name.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Insertion Order</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The insertion order
under which this impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Insertion Order:
Type</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The insertion order
type (e.g., Legacy IO, Seamless IO).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Insertion Order:
State</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The state of the
insertion order (e.g., active, inactive).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Insertion Order: Start
Date</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The start date of the
insertion order (for legacy insertion orders).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Insertion Order: End
Date</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The end date of the
insertion order (for legacy insertion orders).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Insertion Order: Imps
Budget (daily)</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The daily impression
budget of the insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Insertion Order: Imps
Budget (lifetime)</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The lifetime
impression budget of the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Insertion Order:
Revenue Budget (daily)</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The daily budget in
revenue for the insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Insertion Order:
Revenue Budget (lifetime)</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The lifetime budget in
revenue for the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Insertion Order
(lifetime) Pacing</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The lifetime pacing
budget for the insertion order.

Note: This dimension is applicable to
legacy insertion orders, but not for seamless insertion orders.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Insertion Order:
Billing Code</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The billing code
associated with the insertion order (if there is one).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Insertion Order:
Comments</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The comments
associated with the insertion order (if there are any).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">IO: Type (reporting
label)</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">A custom reporting
label field used to list the insertion order type (e.g., Branding IO).
This is not the same as the <strong>Type</strong> attribute described
above. You may only select one reporting label per report.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">IO: Sales Rep
(reporting label)</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">A customer reporting
label field used to list the sales representative associated with the
insertion order. You may only select one reporting label per
report.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">IO: Trafficker
(reporting label)</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">A customer reporting
label field used to list the trafficker associated with the insertion
order. You may only select one reporting label per report.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Line Item</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The line item under
which this impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Line Item: Type</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The line item type
(e.g., Standard, Augmented).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Line Item: State</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The state of the line
item (e.g., active, inactive).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Line Item: Start
Date</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The start date of the
line item.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Line Item: End
Date</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The start date of the
line item.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Line Item: Imps Budget
(daily)</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The daily impression
budget of the line item.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Line Item: Imps Budget
(lifetime)</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The lifetime
impression budget of the line item.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Line Item: Revenue
Budget (daily) Adv Currency</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The daily revenue
budget of the line item. This dimension is available only when Currency
2.0 is disabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Line Item (lifetime)
Pacing</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The lifetime pacing
budget for the line item.

Note: This dimension is applicable to
standard line items, but not for seamless line items.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Line Item: Revenue
Budget (lifetime) Adv Currency</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The lifetime revenue
budget of the line item. This dimension is available only when Currency
2.0 is disabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Line Item:
Comments</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">Any comments that have
been entered for this line item.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">LI: Type (reporting
label)</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">A custom reporting
label field used to list the line item type (e.g., Retargeting LI). This
is not the same as the <strong>Type</strong> attribute described above.
You may only select one reporting label per report.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">LI: Sales Rep
(reporting label)</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">A custom reporting
label field containing the sales representative. You may only select one
reporting label per report.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">LI: Trafficker
(reporting label)</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">A custom reporting
label field containing the trafficker. You may only select one reporting
label per report.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Flight</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The line item flight
under which the impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Flight: Start
Date</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The start date of the
line item flight under which the impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Flight: End Date</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The end date of the
line item flight under which the impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Flight: Imps Budget
(daily)</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The daily budget in
impressions for the flight.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Flight: Imps Budget
(lifetime)</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The lifetime budget in
impressions for the flight.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Flight: Revenue Budget
(daily) Advertiser Currency</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The daily budget in
revenue for the flight. This dimension is available only when Currency
2.0 is disabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Flight: Revenue Budget
(lifetime) Advertiser Currency</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The liftime budget in
revenue for the flight. This dimension is available only when Currency
2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Campaign</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The campaign which
purchased this impression. (Does not apply to all advertisers.)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Split</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The name and ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any rows with a campaign name,
the Split column (if included) will be null.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Media Type</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The media type
associated with the creative that served on this impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Brand</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The brand associated
with the creative. Xandr keeps a list of
advertiser brands in our systems that can be applied to a creative when
it's uploaded. For impression type "Resold", no information is available
in the Brand field for this
report.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Country</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The country in which
the impression took place. For impression requests for which we received
no indication that the ad was rendered (i.e., non-transacted), country
information <strong>is not</strong> provided.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Size</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The size of the
creative (e.g., 320x50).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Bid Type</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">See "Bid Types" below
for definitions of the different types of bids.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Advertiser
Currency</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The default currency
of the advertiser in this impression. This dimension is available only
when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Publisher
Currency</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The default currency
of the publisher in this impression. This dimension is available only
when Currency 2.0 is disabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Impression Type</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">See <strong>Impression
Types</strong> below for definitions of the different types of
impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Payment Rule</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The payment rule in
effect for this impression's auction, if any.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Revenue Type</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The basis on which the
advertiser has agreed to pay you for the impression. For more
information, see <strong>Revenue Types</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Payment Type</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">How the buyer is
paying for the impression. See <strong>Payment Types</strong> for
definitions of the different payment types.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Campaign Priority</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The bidding priority
of the campaign that purchased this impression. (Does not apply to all
advertisers.)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Billing Period</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The insertion order's
billing period.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Billing Period: Start
Date</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The start date of the
insertion order's billing period.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Billing Period: End
Date</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The end date of the
insertion order's billing period.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Billing Period: Booked
Imps Budget (daily)</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The daily impression
budget of the insertion order's billing period.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Billing Period: Booked
Imps Budget (lifetime)</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The lifetime
impression budget of the insertion order's billing period.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Billing Period:
Billing Period: Revenue Budget (daily) Buying Currency</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The daily revenue
budget of the insertion order's billing period. This dimension is
available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Billing Period:
Billing Period: Revenue Budget (lifetime) Buying Currency</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The lifetime revenue
budget of the insertion order's billing period. This dimension is
available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Billing Period:
External Code</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The custom code for
the billing period.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Deal</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The deal associated
with the transaction for the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Adv: Salesperson
(reporting label)</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The salesperson
associated with this advertiser's account. This is a reporting
label.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Adv: Account Manager
(reporting label)</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The account manager
associated with this advertiser's account. This is a reporting
label.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Advertiser Type
(advertiser)</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The type of the
advertiser who purchased this impression. This is a reporting
label.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Salesperson
(publisher)</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The salesperson
associated with this publisher's account. This is a publisher reporting
label.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Pub: Account Manager
(reporting label)</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The account manager
associated with this publisher's account. This is a publisher reporting
label.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Campaign: Test/Control
(reporting label)</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The name of the
control group the user who viewed this impression belonged to, if
any.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Buying Currency</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The transaction
currency that the buyer used to purchase the impression. Including this
dimension will cause most monetary metrics to be displayed in the buying
currency. This dimension is available only when Currency 2.0 is
disabled.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Selling Currency</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The transaction
currency used by the seller to sell this impression. Including this
dimension will cause most monetary metrics to be displayed in the
selling currency. This dimension is available only when Currency 2.0 is
disabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Creative</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The creative served
for the impression.

Note: For impressions older than 100
days, creatives will be aggregated into one row with 0 as the
creative_id. For external click or impression trackers, <code
class="ph codeph">creative_id</code> will be External Clicks or
"External Imps".
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Creative Code</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The optional code
applied to the creative used.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">External Code</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The name and ID of the
external inventory code passed in the ad call and predefined by the
publisher. For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/external-inventory-code-service.html"
class="xref" target="_blank">External Inventory Code Service.</a></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Deal Type</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The type of deal.
Options are <strong>Open Auction</strong>, <strong>Private
Auction</strong>, <strong>First Look</strong>, or <strong>Programmatic
Guaranteed</strong>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Filtered Request
Reason</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The reason why the
impression request was filtered out by Xandr
inventory quality controls and the auction was not held. Possible
reasons are:
<ul>
<li>Invalid Domain</li>
<li>Invalid IP</li>
<li>Suspected Domain Detection Tampering</li>
<li><p>Unknown</p>
<p><strong>Valid Impression</strong> is also a possible <strong>Filtered
Request Reason</strong>, but in that case, an auction was held and it
was not filtered.</p></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Clearing Event</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The underlying auction
event that was transacted (e.g., impression, viewable impression,
completed video).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Buyer Seat Code</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The Custom Buyer Seat
ID (submitted by DSP) that was used to bid on the impression</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Buyer Seat Name</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">The display name for
the buyer seat code</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Code 1</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">An alias added to the
placement object that is reportable as a sub-dimension of Placement. The
report shows the current value of the alias and does not reflect
historical values. This information is only reportable to Sellers.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__1">Code 2</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">An alias added to the
placement object that is reportable as a sub-dimension of Placement. The
report shows the current value of the alias and does not reflect
historical values. This information is only reportable to Sellers.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Code 3</td>
<td class="entry" headers="ID-00001b7c__entry__2">No</td>
<td class="entry" headers="ID-00001b7c__entry__3">An alias added to the
placement object that is reportable as a sub-dimension of Placement. The
report shows the current value of the alias and does not reflect
historical values. This information is only reportable to Sellers.</td>
</tr>
</tbody>
</table>











Note: You can also filter on a
particular number of impressions using the **Minimum Impressions**
filter.









## Metrics





Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.







<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001b7c__entry__262" class="entry">Column</th>
<th id="ID-00001b7c__entry__263" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Include Adjustments
in Reported Data</td>
<td class="entry" headers="ID-00001b7c__entry__263">Check to include
adjustments in the report should be included in the report.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Imps</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Imps (master
creative)</td>
<td class="entry" headers="ID-00001b7c__entry__263">The number of
page-level roadblocks that served the master creative.

Note: Alpha-Beta Notice:
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Imps (blank)</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
impressions in which a blank creative served.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Imps (default)</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
impressions in which a default creative served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Imps (default
error)</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
impressions in which a default creative served due to timeout
issue.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Imps (kept)</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
impressions in which one of your managed advertisers served a
creative.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Imps (PSA)</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
impressions in which a public service announcement served because no
other creative was eligible.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Imps (PSA
error)</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
impressions in which a public service announcement served due to timeout
issue.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Imps (resold)</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
impressions sold to a third-party buyer.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Imps (RTB)</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
impressions in which your creative served on third-party inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Impression
Requests</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
ad calls (impression requests).


Warning: This metric is typically
inaccurate for video inventory due to occasional delays in receiving
video events, which can lead to inflated request totals based on the
assumption that the video has expired. For a better video request
metric, you should use Ad Requests in the <a
href="seller-fill-and-delivery-network-report.html" class="xref">Seller
Fill and Delivery Network Report</a> or <a
href="network-video-analytics-report.html" class="xref">Network Video
Analytics Report</a>.

</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Clicks</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
clicks across all impressions. For Invest DSP, clicks from all media
types are supported. For external DSPs, only clicks from Native and
Video media types are supported.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Total
Conversions</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
post-view and post-click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Post View
Conversions</td>
<td class="entry" headers="ID-00001b7c__entry__263">The number of
post-view conversions. For more information about how we attribute
post-view (and other) conversions, see <a
href="conversion-attribution.html" class="xref">Conversion
Attribution</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Post Click
Convs</td>
<td class="entry" headers="ID-00001b7c__entry__263">The number of
post-click conversions. For more information about how we attribute
post-view (and other) conversions, see <a
href="conversion-attribution.html" class="xref">Conversion
Attribution</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">CTR</td>
<td class="entry" headers="ID-00001b7c__entry__263">The click-through
rate – the ratio of clicks to impressions, expressed as a
percentage.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Conversion Rate</td>
<td class="entry" headers="ID-00001b7c__entry__263">The ratio of
conversions to impressions, expressed as a percentage.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Booked Revenue</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total booked
revenue (does not include resold revenue).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Revenue</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total revenue;
the sum of booked and resold revenue.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">RPM Including
fees</td>
<td class="entry"
headers="ID-00001b7c__entry__263"><strong>Deprecated.</strong> Revenue
minus fees per thousand impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Booked Revnue
eCPC</td>
<td class="entry" headers="ID-00001b7c__entry__263">Booked revenue per
click.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Booked Revnue
eCPA</td>
<td class="entry" headers="ID-00001b7c__entry__263">Booked revenue per
acquisition.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Cost</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total media cost
across direct publishers and RTB inventory.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Profit</td>
<td class="entry" headers="ID-00001b7c__entry__263">Booked revenue minus
total cost.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Profit (net
commissions/gross serving fees)</td>
<td class="entry"
headers="ID-00001b7c__entry__263"><strong>Deprecated.</strong> The
profit after subtracting serving fees and commissions (does not include
data costs).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">PPM Including
Fees</td>
<td class="entry"
headers="ID-00001b7c__entry__263"><strong>Deprecated.</strong> Profit
per thousand impressions (includes commissions and serving fees).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Buyer Media Cost
eCPM</td>
<td class="entry" headers="ID-00001b7c__entry__263">The effective cost
per thousand impressions (eCPM) based on media cost.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Buyer Media Cost
eCPC</td>
<td class="entry" headers="ID-00001b7c__entry__263">The effective cost
per click (eCPC) based on media cost.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Buyer Media Cost
eCPA</td>
<td class="entry" headers="ID-00001b7c__entry__263">The effective cost
per acquisition (eCPA) based on media cost.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">vCPM</td>
<td class="entry" headers="ID-00001b7c__entry__263">Media Cost per
thousand viewable impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Commissions</td>
<td class="entry" headers="ID-00001b7c__entry__263"><p><span
class="ph">Commissions for standard line items, $0 for
ALIs.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Serving Fees</td>
<td class="entry" headers="ID-00001b7c__entry__263"><p>Serving fees for
standard line items, $0 for ALIs. This value will be displayed in USD as
well as potentially the Buying Currency (if you've selected that
dimension).</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Total <span
class="ph">Network RPM</td>
<td class="entry" headers="ID-00001b7c__entry__263">The revenue per 1000
impressions, including defaults, PSAs, and errors. For more information
about these impression types, see <strong>Impression
Types</strong> below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Total RPM</td>
<td class="entry" headers="ID-00001b7c__entry__263">The revenue per 1000
impressions, including defaults, PSAs, and errors. For more information
about these impression types, see <strong>Impression
Types</strong> below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">CPM</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total media cost
per 1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">CPM Including
Fees</td>
<td class="entry"
headers="ID-00001b7c__entry__263"><strong>Deprecated.</strong> The cost
per 1000 impressions including serving fees (does not include
commissions or data costs).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">PPM</td>
<td class="entry"
headers="ID-00001b7c__entry__263"><strong>Deprecated.</strong> The total
profit per 1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Viewable Imps</td>
<td class="entry" headers="ID-00001b7c__entry__263">The number of
measured impressions that were viewable, per the IAB Viewability
definition, which states that an impression is viewable if 50% of the
pixels are in-view during 1 consecutive second.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">View-Measured
Imps</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Viewability
Rate</td>
<td class="entry" headers="ID-00001b7c__entry__263">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Viewability
Measurement Rate</td>
<td class="entry" headers="ID-00001b7c__entry__263">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">CPVM</td>
<td class="entry" headers="ID-00001b7c__entry__263">The cost per 1000
viewable impressions.

Note: Alpha-Beta Notice:
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Imps (master
creative)</td>
<td class="entry" headers="ID-00001b7c__entry__263">The number of
page-level roadblocks that served the master creative.

Note: Alpha-Beta Notice:
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Feature Costs</td>
<td class="entry" headers="ID-00001b7c__entry__263">Costs incurred when
using a platform feature such as cross-device.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Segment Data
Costs</td>
<td class="entry" headers="ID-00001b7c__entry__263">All costs related to
using segments in the data marketplace. Applicable when specific
segments are applied in line items and associated pricing is displayed
in the platform.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Filtered
Requests</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
bid requests for which Xandr did not hold an
auction due to inventory quality concerns. See <strong>Filtered Request
Reason</strong> (under <strong>Dimensions</strong>) for a list of the
possible reasons.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Avg. Bid
Reduction</td>
<td class="entry" headers="ID-00001b7c__entry__263">The average bid
reduction you gained on the line item. This value represents the
difference (as a percentage) between your bid and the actual media cost
you paid for the impression you won (e.g., due to bid reduction). This
value is only valid for RTB bidding (i.e., not Managed). Currently, this
value is not accurately calculated for line items which have the <span
class="ph uicontrol">Pay Per field set to "View" and
<strong>Buying Strategy</strong> set to "RTB".</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Clearing Event
Units</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
events purchased (for the associated Clearing Event). When buying a
Clearing Event other than impression (e.g., viewable impressions), the
number of billed events will be less than the number of
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Clearing Event Buyer
Media Cost eCPM</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total media cost
per 1000 events (for the associated Clearing Event).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Pub: Salesperson
(reporting label)</td>
<td class="entry" headers="ID-00001b7c__entry__263">The sales person
providing for reporting on the publisher.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Partner Fees</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total amount of
third-party costs, budgeted using <a href="partner-fees.html"
class="xref">Partner Fees</a>, that have accrued on an augmented line
item over the reported period of time.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Total Cost</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total amount of
costs accrued over the reported period of time. This generally includes
two types of costs, budgeted costs (media cost, feature cost, data
segment cost, partner fees, serving fees, commissions) and publisher
revenue if you track publisher payouts on the platform.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Total Cost eCPM</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total cost per
1,000 imps.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Total Cost eCPC</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total cost per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Total Cost eCPA</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total cost per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Profit eCPM</td>
<td class="entry" headers="ID-00001b7c__entry__263">Profit per thousand
impressions.

Note: This new field defines "profit"
as booked revenue minus total cost.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Profit eCPC</td>
<td class="entry" headers="ID-00001b7c__entry__263">Profit per click.

Note: This new field defines "profit"
as booked revenue minus total cost.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Profit eCPA</td>
<td class="entry" headers="ID-00001b7c__entry__263">Profit per
conversion.

Note: This new field defines "profit"
as booked revenue minus total cost.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Profit Margin</td>
<td class="entry" headers="ID-00001b7c__entry__263">Profit divided by
Booked Revenue.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Network Profit</td>
<td class="entry" headers="ID-00001b7c__entry__263">The sum of booked
revenue and reseller revenue minus total cost.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Network Profit
eCPM</td>
<td class="entry" headers="ID-00001b7c__entry__263">Network profit per
thousand impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Network Profit
eCPC</td>
<td class="entry" headers="ID-00001b7c__entry__263">Network profit per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Network Profit
eCPA</td>
<td class="entry" headers="ID-00001b7c__entry__263">Network profit per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Network Profit
Margin</td>
<td class="entry" headers="ID-00001b7c__entry__263">Network profit
margin.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Post-View Cross
Device Conversions</td>
<td class="entry" headers="ID-00001b7c__entry__263">The number of
post-view Cross Device conversions. For more information about how we
attribute post-view (and other) conversions, see <a
href="conversion-attribution.html" class="xref">Conversion
Attribution</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Video Skips</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
times a user skipped the video. Use this metric for reporting when
buying skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Video Starts</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">25% Video
Complete</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
times the video creatives completed 25% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">50% Video
Complete</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
times the video creatives completed 50% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">75% Video
Complete</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
times the video creatives completed 75% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Video
Completions</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
times the video creatives played for the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Videos Served</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
video responses served to the player. An ad response occurs when the
VAST document (XML) is served in response to a request. An ad response
doesn't necessarily indicate a successful impression. For an impression,
the first frame of the video must be served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Video Errors</td>
<td class="entry" headers="ID-00001b7c__entry__263">The total number of
times a video error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Revenue Per Video
Complete</td>
<td class="entry" headers="ID-00001b7c__entry__263">The revenue per
video completion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Cost Per Video
Complete</td>
<td class="entry" headers="ID-00001b7c__entry__263">The cost per video
completion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Video Completion
Rate</td>
<td class="entry" headers="ID-00001b7c__entry__263">The ratio of video
completions to impressions, expressed as a percentage (video
completions/total impressions).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__262">Video Start
Rate</td>
<td class="entry" headers="ID-00001b7c__entry__263">The percentage of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__262">Video Skip Rate</td>
<td class="entry" headers="ID-00001b7c__entry__263">The percentage of
times the user opted to skip the video.</td>
</tr>
</tbody>
</table>



**Seller Types**



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001b7c__entry__422" class="entry">Name</th>
<th id="ID-00001b7c__entry__423" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__422">direct</td>
<td class="entry" headers="ID-00001b7c__entry__423">When you purchased
inventory from a seller with whom you have a managed relationship.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__422">real time</td>
<td class="entry" headers="ID-00001b7c__entry__423">When you purchase
inventory from a seller on the open exchange.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__422">unknown</td>
<td class="entry" headers="ID-00001b7c__entry__423">The seller type is
not identifiable. You shouldn't see this turn up in your reports. If you
do, please contact <a href="https://help.xandr.com" class="xref"
target="_blank">Xandr support</a>.</td>
</tr>
</tbody>
</table>



**Revenue Types**



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001b7c__entry__430" class="entry">Name</th>
<th id="ID-00001b7c__entry__431" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__430">No Payment</td>
<td class="entry" headers="ID-00001b7c__entry__431"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__430">Flat CPM</td>
<td class="entry" headers="ID-00001b7c__entry__431">A flat payment per
1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__430">Cost plus CPM</td>
<td class="entry" headers="ID-00001b7c__entry__431">Cost (what you spend
on inventory) plus an extra CPM.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__430">Cost plus
margin</td>
<td class="entry" headers="ID-00001b7c__entry__431">Cost (what you spend
on inventory) plus a percentage of what you spend.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__430">CPC</td>
<td class="entry" headers="ID-00001b7c__entry__431">A flat payment per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__430">CPA</td>
<td class="entry" headers="ID-00001b7c__entry__431">A flat payment per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__430">Revshare</td>
<td class="entry" headers="ID-00001b7c__entry__431">A payment on a
revshare basis (CPC or CPA).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__430">Estimated CPM</td>
<td class="entry" headers="ID-00001b7c__entry__431">The estimated
payment per 1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__430">CPVM</td>
<td class="entry" headers="ID-00001b7c__entry__431">A flat payment per
1000 viewable impressions.</td>
</tr>
</tbody>
</table>



**Payment Types**



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001b7c__entry__450" class="entry">Name</th>
<th id="ID-00001b7c__entry__451" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__450">No Payment</td>
<td class="entry" headers="ID-00001b7c__entry__451"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__450">CPM</td>
<td class="entry" headers="ID-00001b7c__entry__451">Payment per 1000
impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__450">CPC</td>
<td class="entry" headers="ID-00001b7c__entry__451">Payment per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__450">CPA</td>
<td class="entry" headers="ID-00001b7c__entry__451">Payment per
action.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__450">Owner CPM</td>
<td class="entry" headers="ID-00001b7c__entry__451">Publisher is paid on
a CPM basis.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__450">Owner revshare</td>
<td class="entry" headers="ID-00001b7c__entry__451">Publisher is paid on
a Revshare basis (CPC or CPA).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__450">CPVM</td>
<td class="entry" headers="ID-00001b7c__entry__451">Payment per 1000
viewable impressions.</td>
</tr>
</tbody>
</table>



**Impression Types**



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001b7c__entry__466" class="entry">Value</th>
<th id="ID-00001b7c__entry__467" class="entry">Name</th>
<th id="ID-00001b7c__entry__468" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__466">1</td>
<td class="entry" headers="ID-00001b7c__entry__467">Blank</td>
<td class="entry" headers="ID-00001b7c__entry__468">No creative
served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__466">2</td>
<td class="entry" headers="ID-00001b7c__entry__467">PSA</td>
<td class="entry" headers="ID-00001b7c__entry__468">A public service
announcement served because no other creative was eligible.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__466">3</td>
<td class="entry" headers="ID-00001b7c__entry__467">Default Error</td>
<td class="entry" headers="ID-00001b7c__entry__468">A default creative
served due to a timeout issue.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__466">4</td>
<td class="entry" headers="ID-00001b7c__entry__467">Default</td>
<td class="entry" headers="ID-00001b7c__entry__468">A default creative
served because no line item bid or no other creative was eligible.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__466">5</td>
<td class="entry" headers="ID-00001b7c__entry__467">Kept</td>
<td class="entry" headers="ID-00001b7c__entry__468">One of your managed
advertisers served a creative.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__466">6</td>
<td class="entry" headers="ID-00001b7c__entry__467">Resold</td>
<td class="entry" headers="ID-00001b7c__entry__468">The impression was
sold to a third-party buyer.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__466">7</td>
<td class="entry" headers="ID-00001b7c__entry__467">RTB</td>
<td class="entry" headers="ID-00001b7c__entry__468">Your creative served
on third-party inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__466">8</td>
<td class="entry" headers="ID-00001b7c__entry__467">PSA Error</td>
<td class="entry" headers="ID-00001b7c__entry__468">A public service
announcement served due to a timeout issue.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__466">9</td>
<td class="entry" headers="ID-00001b7c__entry__467">External
Impression</td>
<td class="entry" headers="ID-00001b7c__entry__468">An impression from
an impression tracker.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__466">10</td>
<td class="entry" headers="ID-00001b7c__entry__467">External Click</td>
<td class="entry" headers="ID-00001b7c__entry__468">A click from a click
tracker.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__466">11</td>
<td class="entry" headers="ID-00001b7c__entry__467">Insertion</td>
<td class="entry" headers="ID-00001b7c__entry__468">Your creative served
on third-party inventory where it persists across page-loads and
sessions.</td>
</tr>
</tbody>
</table>



**Bid Types**





Note: The term "give up" is appended to
the bid types below if the valuation of the line item for that
impression falls below the venue's "give up price".







<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001b7c__entry__502" class="entry">Name</th>
<th id="ID-00001b7c__entry__503" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__502">Manual</td>
<td class="entry" headers="ID-00001b7c__entry__503">Base CPM bid. Only
applies when you are bidding with a CPM goal, whether it's Base, EAP, or
ECP.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__502">Learn</td>
<td class="entry" headers="ID-00001b7c__entry__503">Learn bid. Only
applies when you are bidding with optimization (CPA, CPC, or margin) and
we do not yet have enough data to bid optimized.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__502">Optimized</td>
<td class="entry" headers="ID-00001b7c__entry__503">Optimized bid. Only
applies when you are bidding with optimization (CPA, CPC, or margin) and
we have enough data to bid optimized.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__502">Unknown</td>
<td class="entry" headers="ID-00001b7c__entry__503">The node was in an
unknown optimization phase.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__502">Optimized give
up</td>
<td class="entry" headers="ID-00001b7c__entry__503">The bid was
"Optimized", but was below the venue's "give up" price.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__502">Learn give up</td>
<td class="entry" headers="ID-00001b7c__entry__503">The bid was "Learn",
but was below the venue's "give up" price.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__502">Manual give up</td>
<td class="entry" headers="ID-00001b7c__entry__503">The bid was
"Manual", but was below the venue's "give up" price.</td>
</tr>
</tbody>
</table>







## To Run Your Report

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
    

    Important: For an explanation of
    how grouping and filtering work, see
    <a href="dimensions-metrics-filtering-and-grouping.html"
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
    

    Warning: The more dimensions you
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
      

      Tip: The maximum size of the
      report that can be downloaded from the UI is 100 MB. Also, there
      is a limit of 100,000 rows per report when downloading as XLSX and
      Excel file. If the size of the report is more than that, you can
      try to download it using the <a
      href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
      class="xref" target="_blank">API</a> for that reporting service
      (The limit here is 10 million rows).

      
    - <span id="ID-00001b7c__d10e107">**Export, send results via
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
6.  <span id="ID-00001b7c__d10e136">Click Run
    report to send your report request.





## Related Topics



- <a href="working-with-insertion-orders.html" class="xref">Working with
  Insertion Orders</a>
- <a href="working-with-line-items.html" class="xref">Working with Line
  Items</a>
- <a href="reporting-labels.html" class="xref">Reporting Labels</a>
- <a href="create-an-insertion-order.html" class="xref">Create an
  Insertion Order</a>
- <a href="bidding-priority.html" class="xref">Bidding Priority</a>
- <a href="give-up-price.html" class="xref">Give Up Price</a>
- <a href="create-an-augmented-line-item-ali.html" class="xref"
  title="You create augmented line items (ALIs) to define your financial relationship with an advertiser, set up targeting for an advertising campaign, and schedule your advertisements to run.">Create
  an Augmented Line Item</a>
- <a href="analytics-reporting.html" class="xref">Analytics Reporting</a>








