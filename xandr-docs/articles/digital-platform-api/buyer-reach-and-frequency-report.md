---
Title : Buyer Reach and Frequency Report
Description : The Buyer Reach and Frequency report shows you the information
ms.date: 10/28/2023
ms.custom: digital-platform-api
associated with two parameters as **"reach"** which is the number of
unique devices or persons exposed to ads and **"frequency"** which is
the average number of times each unique device or person was exposed to
advertisements. It helps to draw meaningful conclusions about the impact
---


# Buyer Reach and Frequency Report





The Buyer Reach and Frequency report shows you the information
associated with two parameters as **"reach"** which is the number of
unique devices or persons exposed to ads and **"frequency"** which is
the average number of times each unique device or person was exposed to
advertisements. It helps to draw meaningful conclusions about the impact
of cross device on conversion use cases. In short, buyers can have an
insight on how cross device impacted the number of times a single person
saw their ads across all their devices using this report as this report
shows historical reach and average frequency on your buying.

The Buyer Reach and Frequency Report offers flexible filtering to
analyze unique devices by facilitating below procedure:

- Pull a **basic running total** of unique devices for their active Line
  Items or Insertion Orders.

- Pull unique devices for these objects over a **defined period of
  time** (for example, past week)

- Now you can **filter and group on specific criteria**, which will
  provide an accurate unique device count across the specified criteria.
  For example, the count of unique devices across Line Items A, B, and
  D, in the US and Canada, for the past month."





## Time Frame

The `report_interval` field in the JSON request can be set to one of the
following:

- custom
- today
- last_hour
- last_24_hours
- yesterday
- last_48_hours
- last_2_days
- last_7_days
- last_14_days
- last_30_days
- last_month
- month_to_date
- quarter_to_date
- lifetime

**Data Retention Period**

Data in this report is retained for 90 days.





<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.









## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="buyer-reach-and-frequency-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="buyer-reach-and-frequency-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="buyer-reach-and-frequency-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="buyer-reach-and-frequency-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="buyer-reach-and-frequency-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The month of the
auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The day of the
auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The hour of the
auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The ID of the
buying member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The targeted
country of the advertisement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"Banner"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The general display
style of the creative</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">media_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The ID of the media
type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">supply_type</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"Mobile App"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The method of
rendering the creative on a device.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">billing_period_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">453</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The ID of the
insertion order's billing period.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">billing_period.start_date</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The start date of
the insertion order's billing period.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">billing_period.end_date</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"2010-02-08"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The end date of the
insertion order's billing period.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">111</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The ID of the split
that purchased the impressions in this data set.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"FirstSplit"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The name of the
split that purchased the impressions in this data set.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">flight</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">32</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The ID of the
flight in a billing period under an insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">flight.start_dt</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The start date of
the flight in a billing period under an insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">flight.end_dt</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"2010-02-03"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The end date of the
flight in a billing period under an insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The ID of the
advertiser for which impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"AdvertiserA"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The name of the
advertiser for which impression was purchased..</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">1122</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The ID of the line
item under which the impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"Line Item 1"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The name of the
line item under which the impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">444</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The ID of the
creative that we're reporting on the frequency and/or recency of.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">creative_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"Q1 2017 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The name of the
creative that we're reporting on the frequency and/or recency of.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The ID of the
insertion order under which the impression was purchased.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"FirstIO(321)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The ID and name of
the insertion order under which the impression was purchased.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">device_type</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"Desktops and Laptops"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The type of the
device where the impression has occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__1">frequency_cap_type</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__4"><code
class="ph codeph">"Classical"</code>, <code
class="ph codeph">"Advanced"</code> or <code
class="ph codeph">"None"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__5">The type of
frequency cap used to limit over-delivery to individual users. When an
ID was available in the request, <code
class="ph codeph">"Classical"</code> is the default frequency cap type.
<code class="ph codeph">"Advanced"</code> refers to "Advanced Frequency
Management" feature.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="buyer-reach-and-frequency-report__entry__136"
class="entry colsep-1 rowsep-1">Column</th>
<th id="buyer-reach-and-frequency-report__entry__137"
class="entry colsep-1 rowsep-1">Type</th>
<th id="buyer-reach-and-frequency-report__entry__138"
class="entry colsep-1 rowsep-1">Example</th>
<th id="buyer-reach-and-frequency-report__entry__139"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="buyer-reach-and-frequency-report__entry__140"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__136">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__137">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__138"><code
class="ph codeph">234123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__139">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__140">The total number
of impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__136">identified_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__137">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__138"><code
class="ph codeph">234123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__139">identified_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__140">The total number
of identified impressions (i.e. those impressions which included a
cookie, device id, etc. as part of the ad request).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__136">unidentified_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__137">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__138"><code
class="ph codeph">234212</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__139">unidentified_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__140">The total number
of unidentified impressions (i.e. those impressions which did not
include a cookie, device id, etc. as part of the ad request).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__136">approx_users_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__137">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__138"><code
class="ph codeph">5654</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__139">approx_users_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__140">The approximate
unique users count who viewed the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__136">average_impression_frequency</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__137">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__138"><code
class="ph codeph">8898</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__139">imps/approx_users_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__140">The number of
impressions viewed by per unique users.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__136">approximate_consumer_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__137">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__138"><code
class="ph codeph">8888</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__139">approximate_consumer_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__140">The approximate
consumer count who viewed the impression due to cross-device audience
extension.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__136">average_consumer_impression_frequency</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__137">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__138"><code
class="ph codeph">7999</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__139">imps/approximate_consumer_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__140">The number of
impressions viewed by per unique consumers due to cross-device audience
extension.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__136">approximate_incremental_devices</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__137">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__138"><code
class="ph codeph">899</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__139">approximate_incremental_devices</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__140">The total number
of unique cookies, mobile or other devices reached by the
impressions</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__136">cross_device_incremental_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__137">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__138"><code
class="ph codeph">6888</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__139">cross_device_incremental_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__140">The number of
impressions which are transacted due to cross-device audience extension.
This represents the number of impressions which were delivered on
devices outside of the targeted segment(s), due to a cross device graph
being applied to extend the reach to more devices owned by a
consumer.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__136">average_identified_impression_frequency</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__137">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__138"><code
class="ph codeph">1.23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__139">identified_imps /
approx_users_count</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__140">The number of
identified impressions viewed per unique users.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__136">estimated_people_reach
(<strong>currently available in the US only</strong>)</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__137">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__138"><code
class="ph codeph">269,266</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__139">unique devices /
device density factor</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-reach-and-frequency-report__entry__140">The estimated
number of people reached, deduplicated across the user-specified
dimensions.</td>
</tr>
</tbody>
</table>



<b>Note:</b>

Xandr has built a probabilistic data science
model to estimate people reach, which is a new metric
(**estimated_people_reach**) available in this report. This model
considers the unique devices reached at the zip code level, and utilizes
publicly available US census data for the total population of each zip
code, in order to estimate the number of people reached for that zip
code. This zip code level data is then aggregated when a report is
pulled by the API so that the buyer can view it at any level of
granularity that is provided by the existing dimensions in the report.





<b>Note:</b>

<a
href="invest_invest-standard/advanced-frequency-management.md"
class="xref" target="_blank">Advanced Frequency Management (AFM)</a>,
which is currently in **beta**, does not take universal identifier
(Universal ID) into account. This is subject to change as the feature
would move into GA. Line items utilising Universal ID targeting should
avoid using AFM until this is completely adapted.







## Example

**Create the JSON report request**

The JSON file should include the `report_type` of
`"buyer_approximate_unique_users_hourly"`, as well as the columns
(dimensions and metrics) and report_interval that you want to retrieve.
You can also filter for specific dimensions, define granularity (year,
month, day), and specify the format in which the data should be returned
(csv, excel, or html). For a full explanation of fields that can be
included in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.



``` pre
$ cat buyer_approximate_unique_users_hourly

{"report":
    {
        "report_type":"buyer_approximate_unique_users_hourly",
        "columns":[
            "hour",
            "buyer_member_id",
            "media_type",
            "supply_type",
            "creative",
            "line_item_id",
            "imps",
            "average_impression_frequency",
            "cross_device_incremental_imps"
        ],
        "report_interval":"last_48_hours",
        "format":"csv"
    }
}
```



**`POST` the request to the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>**

`POST` the JSON request to get back a report ID.



``` pre
$ curl -b cookies -X post -d @buyer_approximate_unique_users_hourly "https://api.appnexus.com/report?advertiser_id=789"

{
   "response":{
      "status":"OK",
      "report_id":"09b6979a6a4c3805bdac8921378d3622"
   }
}
```



**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report?id=09b6979a6a4c3805bdac8921378d3622'

{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2016-12-11 19:15:48",
         "json_request": "{\"report\":{\"report_type\":\"buyer_approximate_unique_users_hourly\",
             \"columns\":[\"hour\",\"buyer_member_id\",
             \"media_type\",\"supply_type\",\"creative\",\"line_item_id\",
             \"imps\",\"average_impression_frequency\",\"cross_device_incremental_imps\"],
             \"report_interval\":\"last_48_hours\",\"format\":\"csv\",\"filters\":[{\"advertiser_id\":\"789\"}]}}",
             "url":"report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```



**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `url` field of the response to
your previous `GET` call. When identifying the file that you want to
save to, be sure to use the file extension of the file format that you
specified in your initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/buyer_approximate_unique_users_hourly.csv
```





<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










