---
Title : Identifiers: ID Combinations Report
Description : Platform Reporting on Industry IDs provides an insight into the
delivery, performance and unique reach across Industry IDs (RampID,
NetID, UID2) alongside device based IDs. The Identifiers-ID Combination
---


# Identifiers: ID Combinations Report



Platform Reporting on Industry IDs provides an insight into the
delivery, performance and unique reach across Industry IDs (RampID,
NetID, UID2) alongside device based IDs. The Identifiers-ID Combination
Report allows you to understand the breakout and overlap of cookies and
IDs across impressions. This view allows you to view impressions and
associated metrics per combination of ID types.

You can use the report to determine the following:

- The type of IDs present on your purchased impressions.
- The clear distribution of impressions.
- The performance metrics for various combinations of ID types.

<div id="identifiers--id-combinations-report__note_qcp_s35_gyb"


Note: This report does not generate any
information on uniques.



<div id="identifiers--id-combinations-report__section_q13_t35_gyb"
>

## Timeframe

The `report_interval` field in the JSON request can be set to one of the
following:

- custom
- current_hour
- last_hour
- today
- yesterday
- last_48_hours
- last_7_days
- month_to_date
- quarter_to_date
- lifetime

To run a report for a custom time frame, set the `start_date` and
`end_date` fields in your report request. For more details about these
fields, see
<a href="https://wiki.xandr.com/display/api/Report+Service" class="xref"
target="_blank">Report Service</a>.



<div id="identifiers--id-combinations-report__section_dcj_v35_gyb"
>

## Data Retention Period

This report's data is retained for 90 days. For more information about
how quickly reporting data is processed, see <a
href="https://xandr.componize.com/oxygen/app/availability-of-reporting-data.dita"
class="xref" target="_blank">Availability of Reporting Data</a>.



<div id="identifiers--id-combinations-report__section_cmj_w35_gyb"
>

## Dimensions



<div id="identifiers--id-combinations-report__note_rlb_x35_gyb"
class="note important note_important">

Important:

- The **Filter?** column shows whether a dimension can be used as a
  filter as well as being used to group by.
- Some dimensions have attributes. Dimension attributes are a more
  granular element of data about the parent dimension. If a dimension
  has attributes, the name of its attributes will appear below it using
  the following syntax "Dimension_Name:Attribute_Name".
- For all revenue fields, the currency is defined by the Buying Currency
  field.







<table id="identifiers--id-combinations-report__table_fl4_y35_gyb"
class="table frame-all">
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th
id="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th
id="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th
id="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">advertiser_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4">"USD"</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
advertiser currency.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">advertiser_exchange_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">3.4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
advertiser exchange rate</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
id of the advertiser for which impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4">"My
advertiser"</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
name of the advertiser for which impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">"My bidder(123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
bidder that bought the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">billing_period_id</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">1234</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
insertion order's billing period.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">"My Network"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
buyer of the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
creative that we're reporting on the frequency and/or recency of.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">Time
is rounded by the hour.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">deal_alias</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">"My deal"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
Deal Alias associated with the given Deal</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
Deal delivered against</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">device_type</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">"tablet"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
device type on which creative is displayed to the end-users such as
mobiles, laptops, tablets, etc.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">flight_id</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">123456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
start and end date of flight in a billing period under an insertion
order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
targeted country of the advertisement</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">id_types</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
individual identifier combinations that are available in the auction.
Possible values are:

<table id="identifiers--id-combinations-report__table_hp5_dj5_gyb"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1"
class="entry colsep-1 rowsep-1">Dimension Options</th>
<th
id="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2"
class="entry colsep-1 rowsep-1">Rules</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">UID2</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">UID2
is available on the ad request</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">RampID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">Ramp
ID is available on the ad request</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">NetID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">Net
ID is available on the ad request</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">Device
ID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">Traditional
device ID and cookie available on the ad requests</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">UID2-RampID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">Both
UID2 and Ramp ID are available on the ad request</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">UID2-NetID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">Both
UID2 and NetID are available on the ad request</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">RampID-NetID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">Both
RampID and NetID are available on the ad request</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">UID2-Cookie/Device
ID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">Both
UID2 and Cookie/Device ID are available on the ad request</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">RampID-Cookie/DeviceID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">Both
RampID and Cookie/Device ID are available on the ad request</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">NetID-Cookie/DeviceID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">Both
NetID and Cookie/Device ID are available on the ad request</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">UID2-RampID-NetID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">UID2,
RampID and NetID are available on the ad request</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">UID2-RampID-Cookie/DeviceID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">UID2,
RampID and Cookie/Device ID are available on the ad request</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">UID2-NetID-Cookie/DeviceID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">UID2,
NetID and Cookie/Device ID are available on the ad request</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">RampID-NetID-Cookie/DeviceID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">RampID,
NetID and Cookie/Device ID are available on the ad request</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">Device
ID (or Cookie Only)</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">Traditional
device ID and cookie available on the ad requests</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">UID2-RampID-NetID-Cookie</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">UID2,
RampID, NetID and Cookie/Device ID are available on the ad request</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__1">No
ID</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_hp5_dj5_gyb__entry__2">No
industry ID or ANID at time of auction or opt out</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">"Blank"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
type of impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">"My Insertion Order"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
name of insertion order under which the impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">648359</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
id of insertion order under which the impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">12345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
id of line item under which the impression was purchased. For more
information about line items, see <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/working-with-line-items.html"
class="xref" target="_blank">Working with Line Items</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">"My Line Item"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
name of line item under which the impression was purchased. For more
information about line items, see <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/working-with-line-items.html"
class="xref" target="_blank">Working with Line Items</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><ul>
<li><code class="ph codeph">"Banner"</code></li>
<li>"Pop"</li>
<li>"Interstitial"</li>
<li><code class="ph codeph">"Video"</code></li>
<li><code class="ph codeph">"Text"</code></li>
<li><code class="ph codeph">"Expandable"</code></li>
<li><code class="ph codeph">"Skin"</code></li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
media type is the general display style of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">"Newscorp (321)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
publisher on whose inventory this impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">placement</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">"Ivillage 160x600 (456)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
name and ID of the placement through which this impression
occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">placement_group</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">My Placement Group</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
placement group name.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">seller</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
seller of the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">1234</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
ID of the split that purchased the impressions in this data set. Splits
are only applicable to augmented line items. For any rows with a
campaign name, the Split column (if included) will be null.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">"My Split"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
name of the split that purchased the impressions in this data set.
Splits are only applicable to augmented line items. For any rows with a
campaign name, the Split column (if included) will be null.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__1">supply_type</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__4"><code
class="ph codeph">"web"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_fl4_y35_gyb__entry__5">The
supply type is the method of rendering the creative on a device. For
example, for mobiles or tablets, the supply type is a mobile app whereas
for laptops or desktops it is a web app.</td>
</tr>
</tbody>
</table>

<div id="identifiers--id-combinations-report__section_bnb_3j5_gyb"
>

## Metrics



<div id="identifiers--id-combinations-report__note_qz4_3j5_gyb"


Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.







<table id="identifiers--id-combinations-report__table_gs3_jj5_gyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 16%" />
<col style="width: 16%" />
<col style="width: 16%" />
<col style="width: 16%" />
<col style="width: 16%" />
<col style="width: 16%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th
id="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th
id="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__4"
class="entry colsep-1 rowsep-1">Formula</th>
<th
id="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__5"
class="entry colsep-1 rowsep-1">Example</th>
<th
id="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__6"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__1">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__4">MEDIA_COST_DOLLARS</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__5"><code
class="ph codeph">$450.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__6"><p><strong>Default:
True</strong></p>
<p>The total media cost</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__1">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__5"><code
class="ph codeph">125,000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__6"><p><strong>Default:
True</strong></p>
<p>The total number of impressions</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__1">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__5"><code
class="ph codeph">123456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__6"><p><strong>Default:
True</strong></p>
<p>The total number of clicks</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__1"><p><span
class="ph">reseller_revenue</p></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__4">reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__5"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__6">The
revenue from resold impressions. This is only populated when the
impression type is resold.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__1">revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__4">booked
revenue + reseller revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__5"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__6">The
sum of booked revenue and reseller revenue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__1">booked_revenue_cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__4">booked
revenue / imps * 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__5"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__6">The
booked revenue per 1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__1">resold_cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__4">reseller_revenue
/ imps * 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__5"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__6">The
resold revenue per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__1">media_cost_cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__5"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__6">The
media cost per 1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__1">revenue_cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__4">reseller_revenue
+ booked_revenue / imps * 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__5"></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__6">The
revenue per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__1">eCPC</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__4">(MEDIA_COST_DOLLARS
/ CLICKS)</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__5"><code
class="ph codeph">$1.4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__6"><p><strong>Default:
True</strong></p>
<p>The average CPC</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__1">eCTR</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__4">(eCTR:
clicks / total imps)</td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__5"><code
class="ph codeph">0.0002</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identifiers--id-combinations-report__table_gs3_jj5_gyb__entry__6"><p><strong>Default:
True</strong></p>
<p>The average Click-Through Rate</p></td>
</tr>
</tbody>
</table>

<div id="identifiers--id-combinations-report__section_lbz_mj5_gyb"
>

## Examples

The JSON file should include the report_type of
"seller_slot_video_report_network", as well as the columns (dimensions
and metrics) and report_interval that you want to retrieve. You can also
filter for specific dimensions, define granularity (month, day), and
specify the format in which the data should be returned (csv, excel, or
html). For a full explanation of fields that can be included in the JSON
file, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.





**Create the JSON report request**

``` pre
$ cat identity_reporting_combination
  
{
    "report": {
        "report_type":"identity_reporting_combination",
        "columns": [
                            "id_type_combinations",
                            "imps",
                            "clicks",
                            "cost",
                            "eCPC",
                            "eCPM",
                            "eCTR"
                        ],
        "report_interval": "last_48_hours",
        "format":"csv"
    }
}
```



**`POST` the JSON request to get back a report ID.**

``` pre
$curl -b cookie -c cookie -s -d  @identity_reporting_combination "https://api.appnexus.com/report"
{
    "response": {
        "report_id": "52bf975d78de81b6f73035424d3d7b3d",
        "status": "OK",
        "dbg_info": {
            "user::read_limit": 100,
            "user::write_limit": 60,
            "read_limit": 100,
            "write_limit": 60,
            "user::read_limit_seconds": 60,
            "user::write_limit_seconds": 60,
            "read_limit_seconds": 60,
            "write_limit_seconds": 60,
            "instance": "49.bm-report-processor.prod.nym2",
            "version": "1.73.242",
            "time": 895.90907096863,
            "start_microtime": 1688482631,
            "warnings": [],
            "api_cache_hit": "0",
            "output_term": "report_id"
        }
    }
}
```

**Retrieve the status of the report**



Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookie -c cookie -s "https://api.appnexus.com/report?id=52bf975d78de81b6f73035424d3d7b3d"
{
    "response": {
        "status": "OK",
        "report": {
            "id": "52bf975d78de81b6f73035424d3d7b3d",
            "name": "",
            "created_on": "2023-07-04 14:57:11",
            "cache_hit": false,
            "fact_cache_hit": false,
            "fact_cache_error": "",
            "json_request": "{\"report\":{\"report_type\":\"identity_reporting_combination\",\"columns\":[\"id_type_combinations\",\"imps\",\"clicks\",\"cost\",\"eCPC\",\"eCPM\",\"eCTR\"],\"report_interval\":\"last_48_hours\",\"format\":\"csv\",\"grouping\":{\"additional_grouping_sets\":[],\"unselected_implicit_groupings\":[],\"additional_groups_on_bottom\":true},\"timezone\":\"UTC\",\"filters\":[{\"member_id\":\"668\"}],\"reporting_decimal_type\":\"decimal\",\"use_cache\":true},\"extraction_version\":\"refactored\",\"end_date\":1688479200,\"start_date\":1688306400,\"user_id\":\"200537\"}",
            "header_info": "Report type: identity_reporting_combinations\nReport ID: 52bf975d78de81b6f73035424d3d7b3d\nRun at: 2023-07-04 15:00:03 UTC\nRequested Start date: 2023-07-02 15:00:00 UTC\nRequested End date: 2023-07-04 15:00:00 UTC\nTimezone: UTC\n",
            "user_id": "200537",
            "member_id": 0,
            "bidder_id": 0,
            "entity_id": 0,
            "row_count": 47,
            "report_size": 5795,
            "started_on": null,
            "finished_on": null,
            "query_time": null,
            "url": "report-download?id=52bf975d78de81b6f73035424d3d7b3d"
        },
        "execution_status": "ready",
...
```



**Download the report**



To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `url` field of the response to
your previous `GET` call. When identifying the file that you want to
save to, be sure to use the file extension of the file format that you
specified in your initial `POST`.

``` pre
$ curl -b cookie -c cookie -s "https://api.appnexus.com/report-download?id=52bf975d78de81b6f73035424d3d7b3d" > identity_reporting_combination.csv
```

<div id="identifiers--id-combinations-report__note_os4_tj5_gyb"


Note:

- If an error occurs during download, the response header will include
  an HTTP error code and message. Use `-i` or `-v` in your call to
  expose the response header.
- There is a limit of 100,000 rows per report when you download them as
  XLSX and Excel file.








