---
Title : Member Analytics Report
Description : This report lets you view both buy- and sell-side data for your
Member. For more granular analytics on a
---


# Member Analytics Report





This report lets you view both buy- and sell-side data for your
Member. For more granular analytics on a
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
<a href="dates-and-times-in-reporting.md" class="xref">Dates and Times
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

![Real Time Data Reporting](media/real-time-data-reporting.png)


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

**Time ranges including dates occurring greater than 45 days ago:** If
you create a Member analytics report with the
Range field set to "Lifetime",
"Quarter to Date" or "Custom" (where the end date is greater than 45
days from today), your report (regardless of metrics included) will be
added to a special queue for "resource-intensive" reports. As a result,
the report may take longer than usual to complete. In addition, these
resource-intensive reports may, due to the amount of data being
requested, fail before being completed. If your report fails to
complete, you will receive a notification. If your report request fails,
you can: - rerun the report at a later time. - use a report type other
than Member Analytics. - alter the way you
structure your reports (if possible) so they do not include dates
greater than 45 days ago.

If you are frequently requesting Member
analytics reports which include dates longer than 45 day ago, you may
need to consider running these reports via the API, caching the data and
using <a
href="xandr-api/bulk-reporting-feeds.md"
class="xref" target="_blank">Bulk Reporting Feeds</a> or <a
href="log-level-data/log-level-data-feeds.md"
class="xref" target="_blank">Log-Level Data Feeds</a> (LLD).

**Currency 2.0**





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









## Dimensions





<b>Important:</b>

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
class="ph">Member reported revenue based on factors such as
revenue, conversions, clicks, or impressions reported by their
advertisers or agencies' ad servers.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__1">Buyer</td>
<td class="entry" headers="ID-00001b7c__entry__2">Yes</td>
<td class="entry" headers="ID-00001b7c__entry__3">The buyer of this
impression.
<div class="note note_note">
<b>Note:</b> The name might be "Default"; or
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
<div class="note note_note">
<b>Note:</b> For impressions older than 100
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

<b>Note:</b> This dimension is applicable to
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
<div class="note note_note">
<b>Note:</b> This dimension is applicable to
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
<div class="note note_note">
<b>Note:</b> For impressions older than 100
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
href="xandr-api/external-inventory-code-service.md"
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
</tbody>
</table>











<b>Note:</b> You can also filter on a
particular number of impressions using the **Minimum Impressions**
filter.









## Metrics





<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.







<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001b7c__entry__253" class="entry">Column</th>
<th id="ID-00001b7c__entry__254" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Report Net
Commissions / Serving Fees</td>
<td class="entry" headers="ID-00001b7c__entry__254">Check to include net
commissions and serving fees in the report.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Include Adjustments
in Reported Data</td>
<td class="entry" headers="ID-00001b7c__entry__254">Check to include
adjustments in the report should be included in the report.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Imps</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Imps (master
creative)</td>
<td class="entry" headers="ID-00001b7c__entry__254">The number of
page-level roadblocks that served the master creative.
<div class="note note_note">
<b>Note:</b> Alpha-Beta Notice:
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Imps (blank)</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
impressions in which a blank creative served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Imps (default)</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
impressions in which a default creative served.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Imps (default
error)</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
impressions in which a default creative served due to timeout
issue.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Imps (kept)</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
impressions in which one of your managed advertisers served a
creative.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Imps (PSA)</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
impressions in which a public service announcement served because no
other creative was eligible.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Imps (PSA
error)</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
impressions in which a public service announcement served due to timeout
issue.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Imps (resold)</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
impressions sold to a third-party buyer.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Imps (RTB)</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
impressions in which your creative served on third-party inventory.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Impression
Requests</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
ad calls (impression requests).


<b>Warning:</b> This metric is typically
inaccurate for video inventory due to occasional delays in receiving
video events, which can lead to inflated request totals based on the
assumption that the video has expired. For a better video request
metric, you should use Ad Requests in the <a
href="seller-fill-and-delivery-network-report.md"
class="xref">seller-fill-and-delivery-network-report.html</a> or <a
href="network-video-analytics-report.md" class="xref">Member Video
Analytics Report</a>.

</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Clicks</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
clicks across all impressions. For Invest DSP, clicks from all media
types are supported. For external DSPs, only clicks from Native and
Video media types are supported.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Total
Conversions</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
post-view and post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Post View
Conversions</td>
<td class="entry" headers="ID-00001b7c__entry__254">The number of
post-view conversions. For more information about how we attribute
post-view (and other) conversions, see <a
href="conversion-attribution.md" class="xref">Conversion
Attribution</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Post Click
Convs</td>
<td class="entry" headers="ID-00001b7c__entry__254">The number of
post-click conversions. For more information about how we attribute
post-view (and other) conversions, see <a
href="conversion-attribution.md" class="xref">Conversion
Attribution</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">CTR</td>
<td class="entry" headers="ID-00001b7c__entry__254">The click-through
rate – the ratio of clicks to impressions, expressed as a
percentage.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Conversion Rate</td>
<td class="entry" headers="ID-00001b7c__entry__254">The ratio of
conversions to impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Booked Revenue</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total booked
revenue (does not include resold revenue).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Revenue</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total revenue;
the sum of booked and resold revenue.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">RPM Including
fees</td>
<td class="entry"
headers="ID-00001b7c__entry__254"><strong>Deprecated.</strong> Revenue
minus fees per thousand impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Booked Revnue
eCPC</td>
<td class="entry" headers="ID-00001b7c__entry__254">Booked revenue per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Booked Revnue
eCPA</td>
<td class="entry" headers="ID-00001b7c__entry__254">Booked revenue per
acquisition.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Cost</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total media cost
across direct publishers and RTB inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Profit</td>
<td class="entry" headers="ID-00001b7c__entry__254">Booked revenue minus
total cost.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Profit (net
commissions/gross serving fees)</td>
<td class="entry"
headers="ID-00001b7c__entry__254"><strong>Deprecated.</strong> The
profit after subtracting serving fees and commissions (does not include
data costs).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">PPM Including
Fees</td>
<td class="entry"
headers="ID-00001b7c__entry__254"><strong>Deprecated.</strong> Profit
per thousand impressions (includes commissions and serving fees).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Buyer Media Cost
eCPM</td>
<td class="entry" headers="ID-00001b7c__entry__254">The effective cost
per thousand impressions (eCPM) based on media cost.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Buyer Media Cost
eCPC</td>
<td class="entry" headers="ID-00001b7c__entry__254">The effective cost
per click (eCPC) based on media cost.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Buyer Media Cost
eCPA</td>
<td class="entry" headers="ID-00001b7c__entry__254">The effective cost
per acquisition (eCPA) based on media cost.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">vCPM</td>
<td class="entry" headers="ID-00001b7c__entry__254">Media Cost per
thousand viewable impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Commissions</td>
<td class="entry" headers="ID-00001b7c__entry__254"><p><span
class="ph">$0.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Total <span
class="ph">Member RPM</td>
<td class="entry" headers="ID-00001b7c__entry__254">The revenue per 1000
impressions, including defaults, PSAs, and errors. For more information
about these impression types, see <strong>Impression
Types</strong> below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Total RPM</td>
<td class="entry" headers="ID-00001b7c__entry__254">The revenue per 1000
impressions, including defaults, PSAs, and errors. For more information
about these impression types, see <strong>Impression
Types</strong> below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">CPM</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total media cost
per 1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">CPM Including
Fees</td>
<td class="entry"
headers="ID-00001b7c__entry__254"><strong>Deprecated.</strong> The cost
per 1000 impressions including serving fees (does not include
commissions or data costs).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">PPM</td>
<td class="entry"
headers="ID-00001b7c__entry__254"><strong>Deprecated.</strong> The total
profit per 1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Viewable Imps</td>
<td class="entry" headers="ID-00001b7c__entry__254">The number of
measured impressions that were viewable, per the IAB Viewability
definition, which states that an impression is viewable if 50% of the
pixels are in-view during 1 consecutive second.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">View-Measured
Imps</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Viewability
Rate</td>
<td class="entry" headers="ID-00001b7c__entry__254">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Viewability
Measurement Rate</td>
<td class="entry" headers="ID-00001b7c__entry__254">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">CPVM</td>
<td class="entry" headers="ID-00001b7c__entry__254">The cost per 1000
viewable impressions.
<div class="note note_note">
<b>Note:</b> Alpha-Beta Notice:
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Imps (master
creative)</td>
<td class="entry" headers="ID-00001b7c__entry__254">The number of
page-level roadblocks that served the master creative.
<div class="note note_note">
<b>Note:</b> Alpha-Beta Notice:
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Feature Costs</td>
<td class="entry" headers="ID-00001b7c__entry__254">Costs incurred when
using a platform feature such as cross-device.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Segment Data
Costs</td>
<td class="entry" headers="ID-00001b7c__entry__254">All costs related to
using segments in the data marketplace. Applicable when specific
segments are applied in line items and associated pricing is displayed
in the platform.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Filtered
Requests</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
bid requests for which Xandr did not hold an
auction due to inventory quality concerns. See <strong>Filtered Request
Reason</strong> (under <strong>Dimensions</strong>) for a list of the
possible reasons.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Avg. Bid
Reduction</td>
<td class="entry" headers="ID-00001b7c__entry__254">The average bid
reduction you gained on the line item. This value represents the
difference (as a percentage) between your bid and the actual media cost
you paid for the impression you won (e.g., due to bid reduction). This
value is only valid for RTB bidding (i.e., not Managed). Currently, this
value is not accurately calculated for line items which have the <span
class="ph uicontrol">Pay Per field set to "View" and
<strong>Buying Strategy</strong> set to "RTB".</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Clearing Event
Units</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
events purchased (for the associated Clearing Event). When buying a
Clearing Event other than impression (e.g., viewable impressions), the
number of billed events will be less than the number of
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Clearing Event Buyer
Media Cost eCPM</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total media cost
per 1000 events (for the associated Clearing Event).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Pub: Salesperson
(reporting label)</td>
<td class="entry" headers="ID-00001b7c__entry__254">The sales person
providing for reporting on the publisher.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Partner Fees</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total amount of
third-party costs, budgeted using <a href="partner-fees.html"
class="xref">Partner Fees</a>, that have accrued on an augmented line
item over the reported period of time.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Total Cost</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total amount of
costs accrued over the reported period of time. This generally includes
two types of costs, budgeted costs (media cost, feature cost, data
segment cost, partner fees, serving fees, commissions) and publisher
revenue if you track publisher payouts on the platform.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Total Cost eCPM</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total cost per
1,000 imps.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Total Cost eCPC</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total cost per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Total Cost eCPA</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total cost per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Profit eCPM</td>
<td class="entry" headers="ID-00001b7c__entry__254">Profit per thousand
impressions.
<div class="note note_note">
<b>Note:</b> This new field defines "profit"
as booked revenue minus total cost.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Profit eCPC</td>
<td class="entry" headers="ID-00001b7c__entry__254">Profit per click.
<div class="note note_note">
<b>Note:</b> This new field defines "profit"
as booked revenue minus total cost.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Profit eCPA</td>
<td class="entry" headers="ID-00001b7c__entry__254">Profit per
conversion.
<div class="note note_note">
<b>Note:</b> This new field defines "profit"
as booked revenue minus total cost.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Profit Margin</td>
<td class="entry" headers="ID-00001b7c__entry__254">Profit divided by
Booked Revenue.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Network Profit</td>
<td class="entry" headers="ID-00001b7c__entry__254">The sum of booked
revenue and reseller revenue minus total cost.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Network Profit
eCPM</td>
<td class="entry" headers="ID-00001b7c__entry__254">Network profit per
thousand impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Network Profit
eCPC</td>
<td class="entry" headers="ID-00001b7c__entry__254">Network profit per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Network Profit
eCPA</td>
<td class="entry" headers="ID-00001b7c__entry__254">Network profit per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Network Profit
Margin</td>
<td class="entry" headers="ID-00001b7c__entry__254">Network profit
margin.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Post-View Cross
Device Conversions</td>
<td class="entry" headers="ID-00001b7c__entry__254">The number of
post-view Cross Device conversions. For more information about how we
attribute post-view (and other) conversions, see <a
href="conversion-attribution.md" class="xref">Conversion
Attribution</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Video Skips</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
times a user skipped the video. Use this metric for reporting when
buying skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Video Starts</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">25% Video
Complete</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
times the video creatives completed 25% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">50% Video
Complete</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
times the video creatives completed 50% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">75% Video
Complete</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
times the video creatives completed 75% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Video
Completions</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
times the video creatives played for the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Videos Served</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
video responses served to the player. An ad response occurs when the
VAST document (XML) is served in response to a request. An ad response
doesn't necessarily indicate a successful impression. For an impression,
the first frame of the video must be served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Video Errors</td>
<td class="entry" headers="ID-00001b7c__entry__254">The total number of
times a video error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Revenue Per Video
Complete</td>
<td class="entry" headers="ID-00001b7c__entry__254">The revenue per
video completion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Cost Per Video
Complete</td>
<td class="entry" headers="ID-00001b7c__entry__254">The cost per video
completion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Video Completion
Rate</td>
<td class="entry" headers="ID-00001b7c__entry__254">The ratio of video
completions to impressions, expressed as a percentage (video
completions/total impressions).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__253">Video Start
Rate</td>
<td class="entry" headers="ID-00001b7c__entry__254">The percentage of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__253">Video Skip Rate</td>
<td class="entry" headers="ID-00001b7c__entry__254">The percentage of
times the user opted to skip the video.</td>
</tr>
</tbody>
</table>



**Seller Types**



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001b7c__entry__413" class="entry">Name</th>
<th id="ID-00001b7c__entry__414" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__413">direct</td>
<td class="entry" headers="ID-00001b7c__entry__414">When you purchased
inventory from a seller with whom you have a managed relationship.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__413">real time</td>
<td class="entry" headers="ID-00001b7c__entry__414">When you purchase
inventory from a seller on the open exchange.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__413">unknown</td>
<td class="entry" headers="ID-00001b7c__entry__414">The seller type is
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
<th id="ID-00001b7c__entry__421" class="entry">Name</th>
<th id="ID-00001b7c__entry__422" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__421">No Payment</td>
<td class="entry" headers="ID-00001b7c__entry__422"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__421">Flat CPM</td>
<td class="entry" headers="ID-00001b7c__entry__422">A flat payment per
1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__421">Cost plus CPM</td>
<td class="entry" headers="ID-00001b7c__entry__422">Cost (what you spend
on inventory) plus an extra CPM.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__421">Cost plus
margin</td>
<td class="entry" headers="ID-00001b7c__entry__422">Cost (what you spend
on inventory) plus a percentage of what you spend.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__421">CPC</td>
<td class="entry" headers="ID-00001b7c__entry__422">A flat payment per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__421">CPA</td>
<td class="entry" headers="ID-00001b7c__entry__422">A flat payment per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__421">Revshare</td>
<td class="entry" headers="ID-00001b7c__entry__422">A payment on a
revshare basis (CPC or CPA).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__421">Estimated CPM</td>
<td class="entry" headers="ID-00001b7c__entry__422">The estimated
payment per 1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__421">CPVM</td>
<td class="entry" headers="ID-00001b7c__entry__422">A flat payment per
1000 viewable impressions.</td>
</tr>
</tbody>
</table>



**Payment Types**



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001b7c__entry__441" class="entry">Name</th>
<th id="ID-00001b7c__entry__442" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__441">No Payment</td>
<td class="entry" headers="ID-00001b7c__entry__442"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__441">CPM</td>
<td class="entry" headers="ID-00001b7c__entry__442">Payment per 1000
impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__441">CPC</td>
<td class="entry" headers="ID-00001b7c__entry__442">Payment per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__441">CPA</td>
<td class="entry" headers="ID-00001b7c__entry__442">Payment per
action.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__441">Owner CPM</td>
<td class="entry" headers="ID-00001b7c__entry__442">Publisher is paid on
a CPM basis.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__441">Owner revshare</td>
<td class="entry" headers="ID-00001b7c__entry__442">Publisher is paid on
a Revshare basis (CPC or CPA).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__441">CPVM</td>
<td class="entry" headers="ID-00001b7c__entry__442">Payment per 1000
viewable impressions.</td>
</tr>
</tbody>
</table>



**Impression Types**



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001b7c__entry__457" class="entry">Value</th>
<th id="ID-00001b7c__entry__458" class="entry">Name</th>
<th id="ID-00001b7c__entry__459" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__457">1</td>
<td class="entry" headers="ID-00001b7c__entry__458">Blank</td>
<td class="entry" headers="ID-00001b7c__entry__459">No creative
served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__457">2</td>
<td class="entry" headers="ID-00001b7c__entry__458">PSA</td>
<td class="entry" headers="ID-00001b7c__entry__459">A public service
announcement served because no other creative was eligible.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__457">3</td>
<td class="entry" headers="ID-00001b7c__entry__458">Default Error</td>
<td class="entry" headers="ID-00001b7c__entry__459">A default creative
served due to a timeout issue.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__457">4</td>
<td class="entry" headers="ID-00001b7c__entry__458">Default</td>
<td class="entry" headers="ID-00001b7c__entry__459">A default creative
served because no line item bid or no other creative was eligible.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__457">5</td>
<td class="entry" headers="ID-00001b7c__entry__458">Kept</td>
<td class="entry" headers="ID-00001b7c__entry__459">One of your managed
advertisers served a creative.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__457">6</td>
<td class="entry" headers="ID-00001b7c__entry__458">Resold</td>
<td class="entry" headers="ID-00001b7c__entry__459">The impression was
sold to a third-party buyer.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__457">7</td>
<td class="entry" headers="ID-00001b7c__entry__458">RTB</td>
<td class="entry" headers="ID-00001b7c__entry__459">Your creative served
on third-party inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__457">8</td>
<td class="entry" headers="ID-00001b7c__entry__458">PSA Error</td>
<td class="entry" headers="ID-00001b7c__entry__459">A public service
announcement served due to a timeout issue.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__457">9</td>
<td class="entry" headers="ID-00001b7c__entry__458">External
Impression</td>
<td class="entry" headers="ID-00001b7c__entry__459">An impression from
an impression tracker.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__457">10</td>
<td class="entry" headers="ID-00001b7c__entry__458">External Click</td>
<td class="entry" headers="ID-00001b7c__entry__459">A click from a click
tracker.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__457">11</td>
<td class="entry" headers="ID-00001b7c__entry__458">Insertion</td>
<td class="entry" headers="ID-00001b7c__entry__459">Your creative served
on third-party inventory where it persists across page-loads and
sessions.</td>
</tr>
</tbody>
</table>



**Bid Types**





<b>Note:</b> The term "give up" is appended to
the bid types below if the valuation of the line item for that
impression falls below the venue's "give up price".







<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001b7c__entry__493" class="entry">Name</th>
<th id="ID-00001b7c__entry__494" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__493">Manual</td>
<td class="entry" headers="ID-00001b7c__entry__494">Base CPM bid. Only
applies when you are bidding with a CPM goal, whether it's Base, EAP, or
ECP.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__493">Learn</td>
<td class="entry" headers="ID-00001b7c__entry__494">Learn bid. Only
applies when you are bidding with optimization (CPA, CPC, or margin) and
we do not yet have enough data to bid optimized.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__493">Optimized</td>
<td class="entry" headers="ID-00001b7c__entry__494">Optimized bid. Only
applies when you are bidding with optimization (CPA, CPC, or margin) and
we have enough data to bid optimized.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__493">Unknown</td>
<td class="entry" headers="ID-00001b7c__entry__494">The node was in an
unknown optimization phase.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__493">Optimized give
up</td>
<td class="entry" headers="ID-00001b7c__entry__494">The bid was
"Optimized", but was below the venue's "give up" price.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001b7c__entry__493">Learn give up</td>
<td class="entry" headers="ID-00001b7c__entry__494">The bid was "Learn",
but was below the venue's "give up" price.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001b7c__entry__493">Manual give up</td>
<td class="entry" headers="ID-00001b7c__entry__494">The bid was
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

      
    - **Export, send results via
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
6.  Click Run
    report to send your report request.





## Related Topics



- <a href="working-with-insertion-orders.md" class="xref">Working with
  Insertion Orders</a>
- <a href="working-with-line-items.md" class="xref">Working with Line
  Items</a>
- <a href="reporting-labels.md" class="xref">Reporting Labels</a>
- <a href="create-an-insertion-order.md" class="xref">Create an
  Insertion Order</a>
- <a href="create-an-augmented-line-item-ali.md" class="xref"
  title="You create augmented line items (ALIs) to define your financial relationship with an advertiser, set up targeting for an advertising campaign, and schedule your advertisements to run.">Create
  an Augmented Line Item</a>
- <a href="analytics-reporting.md" class="xref">Analytics Reporting</a>








