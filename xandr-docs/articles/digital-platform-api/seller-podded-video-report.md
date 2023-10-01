---
Title : **Seller Pod Analytics Report**
Description : <div id="Seller_Pod_Analytics_Report__note-85ea6ada-5a3e-4eb8-953b-f1b0afc7cd89"
Note: This feature is currently in
**Alpha**. It is still under development and may be subjected to changes
---


# **Seller Pod Analytics Report**



<div id="Seller_Pod_Analytics_Report__note-85ea6ada-5a3e-4eb8-953b-f1b0afc7cd89"


Note: This feature is currently in
**Alpha**. It is still under development and may be subjected to changes
without notice. Contact your Xandr Account Representative to get it
enabled.



The **Seller Pod Analytics** **repor**t shows metrics for groups of ads
(aka pods) delivered sequentially in between segments of non-commercial
video programming.

You can use this report to determine the following:

- The number of pods that were sent for Monetization
- The average number of impressions sold per pod
- The average estimate of revenue per pre-roll in comparison to mid-roll
  pod
- The average seconds sold per pod
- The fill rate in seconds
- The number of opportunities to serve impressions if a pod was unfilled

<div id="Seller_Pod_Analytics_Report__section-03428235-b720-4f17-a978-0b341a9874c2"
>

## Timeframe

All dates and times are given in UTC.



The `report_interval` field in the JSON request can be set to one of the
following:

- custom
- today
- yesterday
- last_7_days(not including today)
- month_to_date
- last_month
- quarter_to_date

<div id="Seller_Pod_Analytics_Report__p-2869e267-1d38-4bcc-afc3-2a43b4a8a4d4"
>

To run a report for a custom time frame, set the `start_date` and
`end_date` fields in your report request. For more details about these
fields, see
<a href="https://wiki.xandr.com/display/api/Report+Service" class="xref"
target="_blank">Report Service</a>.

<div id="Seller_Pod_Analytics_Report__note-1cbbfb17-17da-49cb-9a49-28869cd35794"


Note: Data in this report is retained
for 420 days.





<div id="Seller_Pod_Analytics_Report__section-f75e5b54-e165-4d7e-9af1-5b49fa818082"
>

## **Dimensions**

<div id="Seller_Pod_Analytics_Report__p-1dcb9eeb-ca52-4fc9-8b8c-3ff9256f1d6e"
>

<table
id="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1"
class="entry"><strong>Column</strong></th>
<th
id="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2"
class="entry"><strong>Type</strong></th>
<th
id="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3"
class="entry"><strong>Filter?</strong></th>
<th
id="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"
class="entry"><strong>Example</strong></th>
<th
id="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">advertiser_default_currency</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">EUR</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
default currency of the advertiser in this impression. This dimension is
available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">advertiser_default_exchange_rate</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">numeric</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">application</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
application name</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">billing_currency</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">USD</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
transaction currency that the buyer used to purchase this impression.
This dimension is available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">billing_currency_exchange_rate</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">numeric</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">browser</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">webOS Browser (33)</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
name of the browser.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">call_type</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
type of handler that was used to send the impression to Xandr (e.g.,
ttj, ut, mob, ptv, openrtb)</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">city</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">Vienna</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
city in which the user is located.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">country</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">"France"</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
country of the user's location, both name and code, in the format
"France". The string "250" can appear in cases where we don't know the
country or if the country doesn't map correctly to a location in our
database.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">device_type</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">"set top box"</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5"><p>The
type of device on which the impression was served. Possible values
are:</p>
<ul>
<li>"desktops &amp; laptops"</li>
<li>"tablets"</li>
<li>"mobile phones"</li>
<li>"tv"</li>
<li>"game consoles"</li>
<li>"set top box"</li>
<li>"media players"</li>
<li>"other devices"</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">inventory_url</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
URL of the inventory or application package.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">language</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">German (6)</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
language of the creative.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">max_ad_duration</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">numeric</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">15</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">Max
duration of an individual ad within the pod</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">max_duration</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">numeric</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">30</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">Max
duration of the pod the slot served in.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">max_number_ads</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">numeric</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">4</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
maximum number of ads for the pod the slot served in.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">max_vast_version</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">4.0</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
max VAST version supported for the slot.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">member_currency</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">USD</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
currency of the member.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">member_exchange_rate</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">numeric</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">1.24</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">min_ad_duration</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">numeric</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
minimum duration allowed for an individual ad in the pod</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">operating_system</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">"Android 2.3.5 Gingerbread"</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
name of the operating system.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">operating_system_family</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">"Android"</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
name of the operating system family</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">placement</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">My Placement</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
placement name</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">placement_group</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">My Placement Group</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
placement group name</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">placement_set</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">1234</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
ID of the placement set</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">playback_method</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">auto_play_sound_on</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
playback method for the creative, e.g, 'auto-start, sound on'.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">player_height</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">numeric</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
height of the player in pixels</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">player_width</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">numeric</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
width of the player in pixels</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">pod_has_bumpers</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">boolean</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">True
if the pod is configured to use bumper ads</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">publisher</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">My Publisher</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
publisher name.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">publisher_currency</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
default currency of the publisher in this impression. This dimension is
available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">publisher_exchange_rate</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">numeric</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">region</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">Yes</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
region in which the user is located.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">supply_type</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">string</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">mobile_web</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
seller-classified channel to denominate supply in terms of web,
mobile-optimized web, and mobile app impressions. Possible values are
'web', 'mobile_app', and 'mobile_web'.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">supports_vpaid</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">boolean</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">No</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">True
if the player supported VPAID creatives</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">video_content_delivery_type</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">no</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">String</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
type of streaming content delivery: Video on Demand (VOD) or Live.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">video_content_duration</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">no</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">String</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
length of the video content in seconds.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">video_content_genre</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">no</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">String</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
main genre of the program on which the ad will be played, for example,
Cooking, Horror, News, or Football.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">video_content_language</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">no</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">String</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
language of the content</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">video_content_program_type</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">no</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">String</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
format of the video program, for example, Movie, Series, Special, Show,
Event, or Clip.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">video_content_rating</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2">no</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3">String</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
publisher-identified audience group for which the content is rated, for
example, All, Children (7+) , Teens (13+), Young Adults (14+), or Adults
(18+).</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__1">video_context</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__2"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__3"></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__4"><code
class="ph codeph">Pre-Roll</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-d0ef1d31-d60d-41ff-a2a0-0a1ac28fff69__entry__5">The
type of the video creative. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-advertiser-video-analytics.html#NetworkAdvertiserVideoAnalytics-VideoContext"
class="xref" target="_blank">Video Context</a> for possible values.</td>
</tr>
</tbody>
</table>





<div id="Seller_Pod_Analytics_Report__section-5f16fe19-44f3-4da6-982b-e09879a0e4d8"
>

## Metrics

<div id="Seller_Pod_Analytics_Report__p-01b1e422-ef31-4752-9fc7-79494e75ca29"
>

<table
id="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d"
class="table" style="width:100%;">
<colgroup>
<col style="width: 22%" />
<col style="width: 17%" />
<col style="width: 17%" />
<col style="width: 25%" />
<col style="width: 17%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1"
class="entry"><strong>Column</strong></th>
<th
id="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2"
class="entry"><strong>Type</strong></th>
<th
id="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"
class="entry"><strong>Example</strong></th>
<th
id="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4"
class="entry"><strong>Formula</strong></th>
<th
id="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">booked_revenue_dollars</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">money</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">578.98</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">booked_revenue_dollars</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
revenue generated from managed line items.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">clicks</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">3445</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">clicks</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of clicks recorded. For video we record clicks from Xandr Invest
and external DSPs.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">completion_rate</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">double</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.85</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">video_completions
/ impressions</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of impressions that resulted in a completion.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">completions</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">8458</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">completions</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of times the video player reported a completion event</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">cpm</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">money</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">30.56</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">total_revenue
/ total_imps * 1000</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
average revenue per 1000 impressions sold</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">ctr</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">double</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.01</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">clicks
/ total_imps</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
average number of clicks generated on your inventory from all impression
types.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">error_rate</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">double</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.01</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">errors
/ impressions</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
rate of errors per impression</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">errors</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">523</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">errors</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of times the video player reported an error before the impression
was counted</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">first_quartile_rate</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">double</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.94</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">first_quartiles
/ video_starts</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of first quartiles fired by the video player divided by the
number of start events.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">first_quartiles</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">9101</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">first_quartiles</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of times the video player reported a 25% complete event</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">impression_seconds</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">6976</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">creative_duration
* imps</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
total number of seconds served on impressions. If you are using a house
line item to report unsold opportunities then you may wish to filter or
add impression type as a dimension to separate sold and unsold
impression seconds.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">impression_seconds_kept</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">34587</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">impression_seconds_kept</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
total number of seconds resold via managed line items.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">impression_seconds_per_pod</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">double</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">25.9</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">impression_seconds
/ pod_count</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
average duration of impressions sold per ad break.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">impression_seconds_resold</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">435435</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">impression_seconds_resold</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
total number of seconds resold via deals or open exchange.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">impression_seconds_unsold</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">6442</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">impression_seconds_unsold</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
total number of seconds unsold tracked by house line items which have
the default impression type.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">imps
(Kept)</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">2340</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">imps_kept</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
total number of impressions sold by managed line items.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">imps
(Resold)</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">324</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">imps_resold</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
total number of impressions sold to other buyers via open exchange or
deals.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">imps
(Unsold)</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">4523</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">imps_unsold</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
total number of impressions that have blank, default or PSA impression
types. If you are using house line items to count unsold impressions,
these will be recorded here.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">percent_pods_1_imp</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">double</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.43</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">(sum(pod_count)
- sum(pod_no_imps)) / sum(pod_count)</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
percentage of ad breaks (pods) sent to Xandr for monetization that had
at least 1 impression delivered within them.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">pod_available_seconds</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">4534532</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">pod_available_seconds</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
maximum duration that could deliver within the ad breaks (pods).</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">pod_count</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">5345</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">pod_count</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of ad breaks (pods) sent to Xandr for monetization. If multiple
ad breaks are sent in one request, e.g. using cue points, then this will
record the total number of ad breaks, not ad requests sent to
Xandr.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">pod_fill_rate_duration</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">double</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.55</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">sum(impression_seconds_resold
+ impression_seconds_kept) / sum(max_duration * pod_count)</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
total resold and kept seconds divided by the maximum duration that could
deliver within the ad breaks (pods).</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">pod_fill_rate_slots</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">double</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.28</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">sum(imps_kept
+ imps_resold) / sum(imps_resold + imps_kept + imps_unsold)</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
total resold and kept impressions divided by the total impressions
served. This metric can be used when a house line item is being used to
track unsold impressions as default impression types.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">pod_no_imps</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">34</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">pod_no_imps</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of ad breaks where no impression was recorded in any slot.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">pod_slot_opportunities</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">43423</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">sum(unmatched_min_slot_opportunities)
+ sum(imps_resold + imps_kept + imps_unsold)</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">How
many impressions were delivered plus the total remaining opportunities
based on the unfilled duration of the pod and the minimum ad
duration.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">pod_total_max_slots</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">464544</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">max_number_ads
* pod_count</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
maximum number of slots that it would be possible to serve across
pods.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">pods_with_1_impression
or more</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">4534</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">pod_count
- pod_no_imps</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of ad breaks where there was at least 1 impression recorded</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">reseller_revenue_dollars</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">money</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">8370</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">reseller_revenue_dollars</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
total revenue generated from open exchange and deals.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">revenue_per_available_second</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">money</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.01</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">total_revenue
/ (max_duration * pod_count)</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
unit revenue in terms of seconds available to sell.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">revenue_per_click</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">money</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.20</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">total_revenue
/ clicks</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
revenue generated per click event recorded.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">revenue_per_pod_mili</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">money</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">99.12</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">total_revenue
/ pod_count * 1000</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
average revenue per ad break.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">revenue_per_second_sold</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">money</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.5</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">total_revenue
/ impression_seconds</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
revenue per second resold and kept.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">second_quartile_rate</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">double</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.90</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">second_quartiles
/ video_starts</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of second quartiles fired by the video player divided by the
number of start events.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">second_quartiles</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">8912</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">second_quartiles</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of times the video player reported a 50% complete event</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">seconds_per_impression</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">6.8</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">sum(impression_seconds_resold
+ impression_seconds_kept + impression_seconds_unsold) / sum(imps_resold
+ imps_kept + imps_unsold)</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
total seconds on all impressions divided by the total number of
seconds.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">skip_rate</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">double</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.01</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">skips
/ impressions</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of skips divided by the number of impressions recorded</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">skips</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">85</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">skips</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of times the video player reported a skip event</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">start_rate</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">double</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.98</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">starts
/ impressions</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of starts divided by the number of impressions recorded.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">started_video_completion_rate</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">double</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.98</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">video_completions
/ video_starts</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of video starts that resulted in a completion</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">starts</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">9236</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">starts</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of times the video player reported a start event</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">third_quartile_rate</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">double</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">0.87</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">third_quartiles
/ video_starts</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of third quartiles fired by the video player divided by the
number of start events.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">third_quartiles</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">8646</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">third_quartiles</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
number of times the video player reported a 75% complete event</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">total_imps</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">453456</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">imps_kept
+ imps_resold + imps_unsold</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
total number of impressions recorded.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">total_revenue</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">money</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">324.0</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">booked_revenue_dollars
+ reseller_revenue_dollars</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">The
total revenue resold and kept.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__1">unmatched_min_slot_opportunities</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__2">int</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__3"><code
class="ph codeph">5454</code></td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__4">unmatched_min_slot_opportunities</td>
<td class="entry"
headers="Seller_Pod_Analytics_Report__table-aed7cf2a-2950-42a1-bd8d-4f0b5db3462d__entry__5">How
many unfilled slot opportunities there were based on the duration filled
and the minimum possible ad duration. When minimum ad duration is not
set, or equals zero, this value is calculated with a minimum ad duration
of 15 seconds.</td>
</tr>
</tbody>
</table>





<div id="Seller_Pod_Analytics_Report__section-807596c9-b36c-49d1-a849-e1ab89648379"
>

## Example

**Create the JSON-formatted report request**

<div id="Seller_Pod_Analytics_Report__p-f1a2a492-2596-40f9-a9c4-408e3649e647"
>

The JSON file should include the `report_type`
"seller_pod_analytics_report", as well as the `columns` (dimensions and
metrics) and `report_interval` that you want to retrieve. You can also
filters for specific dimensions, define granularity (year, month, day),
and specify the format in which the data should be returned (csv, excel,
or html). For a full explanation of fields that can be included in the
JSON file, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat seller_pod_analytics_report
 
{
    "report":
    {
        "report_type":"seller_pod_analytics_report",
        "columns":[
            "hour",
            "bidder",
            "clicks"
        ],
        "report_interval":"last_48_hours",
        "format":"csv"
    }
}
```





<div id="Seller_Pod_Analytics_Report__p-1abfa221-d8e6-48c1-90bd-5079f3ce2b88"
>

**POST the request to the Reporting Service**

``` pre
$ curl -b cookies -c cookies -X POST -d @seller_pod_analytics_report 'https://api.appnexus.com/report'
{
   "response":{
      "status":"OK",
      "report_id":"097f59fc3ab7d02c5d60db42081d9b69"
   }
}
```



**GET the report status from the Report Service**

<div id="Seller_Pod_Analytics_Report__p-65b01c4c-d615-4938-97e9-e1188adadacd"
>

Make a GET call with the Report ID to retrieve the status of the report.
Continue making this GET call until the {{execution_status}} is "ready".
Then use the \*report-download\* service to save the report data to a
file, as described in the next step.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=097f59fc3ab7d02c5d60db42081d9b69'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:19:53",
         "json_request":"{\"report\":{\"report_type\":\"seller_pod_analytics_report\",\"columns\":[\"hour\",\"bidder\",
            \"clicks\"}}",
         "url": "report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```



**GET the report data from the Report Download Service**

<div id="Seller_Pod_Analytics_Report__p-5b9f56f5-0ca9-47c1-a68c-83119ee0eba9"
>

To download the report data to a file, make another GET call with the
Report ID, but this time to the **report-download** service. You can
find the service and Report ID in the `url` field of the previous GET
response. When identifying the file that you want to save to, be sure to
use the file extension of the "format" that you specified in your
initial POST.

<div id="Seller_Pod_Analytics_Report__note-4d93a45c-52a6-48b9-90a0-4a0e14e92452"
class="note tip note_tip">

Tip: If an error occurs during
download, the response header will include an HTTP error code and
message. Use -i or -v in your call to expose the response header.





``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/seller_pod_analytics_report.csv
```

<div id="Seller_Pod_Analytics_Report__note-e6c2217f-0d82-41cc-b147-cb61f385e383"


Note: There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.






