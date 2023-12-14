---
Title : Device Analytics Report
Description : The Device Analytics report enables you to retrieve buy-side and
ms.date: 10/28/2023
sell-side performance data based on devices where impressions were
served. This is especially important for networks working with in-app
---


# Device Analytics Report





The Device Analytics report enables you to retrieve buy-side and
sell-side performance data based on devices where impressions were
served. This is especially important for networks working with in-app
advertisers who traffic creatives that encourage app installation and
who therefore want confirmation that their creatives are targeting
devices compatible with their apps. It also helps you answer the
following questions:

- How many impressions have you seen for specific device makes and
  models?
- How many impressions have you seen for specific connection types
  (i.e., WiFi/Static or Carrier-based)?
- How do certain types of devices perform relative to others (i.e.,
  tablets vs. phones)?
- How do certain makes and models of devices perform relative to others
  (i.e., Android vs. Apple)?
- How do certain types of connections perform relative to others (i.e.,
  Wifi/Static vs. Carrier-based)

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



Data Retention Period

Most data in this report is maintained for 14 months. However, after 100
days, you are no longer able to report on hourly data (daily, monthly
and cumulative intervals are still available).



<b>Note:</b> The first hour for which hourly
reporting is supported is **2019-06-03 00:00 UTC**.



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



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00009bcc__entry__1" class="entry">Column</th>
<th id="ID-00009bcc__entry__2" class="entry">Type</th>
<th id="ID-00009bcc__entry__3" class="entry">Filter?</th>
<th id="ID-00009bcc__entry__4" class="entry">Example</th>
<th id="ID-00009bcc__entry__5" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__1">Buyer</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"My <span
class="ph">Network (123)"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The name of the buying
member followed by the ID (Xandr format).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__1">Seller</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"That Seller
(456)"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The name of the
selling member followed by the ID (Xandr
format).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__1">Advertiser</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"Mobile Zombies
(789)"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The name of the
advertiser followed by the ID (Xandr
format).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__1">Publisher</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"Undead.com
(456)"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The name of the
publisher followed by the ID (Xandr
format).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__1">Insertion Order</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"Mobile Insertion
Order (321)"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The name of the
insertion order followed by the ID (Xandr
format).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__1">Line Item</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"Mobile Line Item
(111)"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The name of the line
item followed by the ID (Xandr format).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__1">Campaign</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"Mobile Campaign
(222)"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The name of the
campaign followed by the ID (Xandr format).
(Does not apply to all advertisers.)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__1">Split</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"Mobile Split A
(342)"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The name and ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any rows with a campaign name,
the Split column (if included) will be null.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__1">Deal ID</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"My New Deal"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The ID/name of the
deal associated with the transaction for the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__1">Media Type</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"Banner"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The media type of the
creative. Possible values: "Banner", "Pop", "Interstitial", "Video",
"Text", "Expandable", "Skin", or "Facebook".</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__1">Country</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"US"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The code for the
country.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__1">Size</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"728x90"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The size of the
creative served.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__1">Bid Type</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"Manual"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The optimization phase
the node was in when it bid for the impression. Note that the term "give
up" is appended to the bid types below if the valuation for that
impression falls below the venue's "give up price". Allowed values:
<ul>
<li>"Manual": Applies when you are bidding with a CPM goal, whether it's
Base, EAP, or ECP.</li>
<li>"Learn": Applies when you are bidding with optimization (CPA, CPC,
or margin) and we do not yet have enough data to bid optimized.</li>
<li>"Optimized": Applies when you are bidding with optimization (CPA,
CPC, or margin) and we have enough data to bid optimized.</li>
<li>"Unknown": The node was in an unknown optimization phase.</li>
<li>"Optimized give up"</li>
<li>"Learn give up"</li>
<li>"Manual give up"</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__1">Impression Type</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"Resold"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The type of
impression. Possible values (associated IDs in parentheses):
<ul>
<li>"Blank" (1): No creative served.</li>
<li>"PSA" (2): A public service announcement served because no other
creative was eligible.</li>
<li>"Default Error" (3): A default creative served due to timeout
issue.</li>
<li>"Default" (4): A default creative served because no campaigns bid or
no other creative was eligible.</li>
<li>"Kept" (5): One of your managed advertisers served a creative.</li>
<li>"Resold" (6): The impression was sold to a third-party buyer.</li>
<li>"RTB" (7): Your creative served on third-party inventory.</li>
<li>"PSA Default Error" (8): A public service announcement served due to
timeout issue.</li>
<li>"External Impression" (9): An impression from an impression
tracker.</li>
<li>"External Click" (10): A click from a click tracker.</li>
<li>"Insertion" (11): Your creative served on third-party inventory
where it persists across page-loads and sessions.

<b>Note:</b>
<ul>
<li>The "Insertion" impression type is currently only for Facebook News
Feed creatives.</li>
</ul>
</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__1">Payment Rule</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"Homepage Rule
(993)"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The name of the
payment rule followed by the ID.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__1">Revenue Type</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"CPA"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The basis on which the
advertiser pays the member.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__1">Payment Type</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"cpm", "revshare"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The type of payment to
a broker.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__1">Device Type</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">No</td>
<td class="entry" headers="ID-00009bcc__entry__4">desktops &amp;
laptops</td>
<td class="entry" headers="ID-00009bcc__entry__5">The type of device on
which the impression was served.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__1">Connection Type</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"Carrier-based"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The type of internet
connection at the time of the impression. Possible values:
"Carrier-based" or "Wifi or Static".</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__1">Device Make</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"4G Systems (1)"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The name of the device
make followed by the ID (Xandr format).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__1">Device Model</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"DX650 (15)"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The name of the device
model followed by the ID (Xandr format).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__1">Operating System</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"Android 6.0.1
Marshmallow (155)"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The name of the
operating system of the device followed by the ID (<span
class="ph">Xandr format).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__1">Operating System
Family</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4">"Android (2)"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The name of the
operating system family (e.g., Android, Microsoft Windows) of the device
followed by the ID (Xandr format).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__1">Browser</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">Yes</td>
<td class="entry" headers="ID-00009bcc__entry__4"></td>
<td class="entry" headers="ID-00009bcc__entry__5">The name of the
browser followed by the ID (Xandr format).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__1">Buying Currency</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">No</td>
<td class="entry" headers="ID-00009bcc__entry__4">"EUR"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The transaction
currency that the buyer used to purchase this impression. Including this
dimension will cause the monetary metrics to be displayed in the buying
currency. This dimension is available only when Currency 2.0 is
disabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__1">Selling Currency</td>
<td class="entry" headers="ID-00009bcc__entry__2">string</td>
<td class="entry" headers="ID-00009bcc__entry__3">No</td>
<td class="entry" headers="ID-00009bcc__entry__4">"EUR"</td>
<td class="entry" headers="ID-00009bcc__entry__5">The transaction
currency used by the seller to sell this impression. Including this
dimension will cause the monetary metrics to be displayed in the selling
currency. This dimension is available only when Currency 2.0 is
disabled.</td>
</tr>
</tbody>
</table>





<b>Note:</b> You can also filter on a
particular number of impressions using the **Minimum Impressions**
filter.



Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00009bcc__entry__136" class="entry">Column</th>
<th id="ID-00009bcc__entry__137" class="entry">Type</th>
<th id="ID-00009bcc__entry__138" class="entry">Example</th>
<th id="ID-00009bcc__entry__139" class="entry">Formula</th>
<th id="ID-00009bcc__entry__140" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Imps</td>
<td class="entry" headers="ID-00009bcc__entry__137">int</td>
<td class="entry" headers="ID-00009bcc__entry__138">2340</td>
<td class="entry" headers="ID-00009bcc__entry__139">imps</td>
<td class="entry" headers="ID-00009bcc__entry__140">The total number of
impressions (served and resold).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Clicks</td>
<td class="entry" headers="ID-00009bcc__entry__137">int</td>
<td class="entry" headers="ID-00009bcc__entry__138">1</td>
<td class="entry" headers="ID-00009bcc__entry__139">clicks</td>
<td class="entry" headers="ID-00009bcc__entry__140">The total number of
clicks across all impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">CTR %</td>
<td class="entry" headers="ID-00009bcc__entry__137">double</td>
<td class="entry" headers="ID-00009bcc__entry__138">0.0002218</td>
<td class="entry" headers="ID-00009bcc__entry__139">clicks / imps</td>
<td class="entry" headers="ID-00009bcc__entry__140">The rate of clicks
to impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Total
Conversions</td>
<td class="entry" headers="ID-00009bcc__entry__137">int</td>
<td class="entry" headers="ID-00009bcc__entry__138">1</td>
<td class="entry" headers="ID-00009bcc__entry__139">total_convs</td>
<td class="entry" headers="ID-00009bcc__entry__140">The total number of
post-view and post-click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Conversion Rate</td>
<td class="entry" headers="ID-00009bcc__entry__137">double</td>
<td class="entry" headers="ID-00009bcc__entry__138">0.0002218</td>
<td class="entry" headers="ID-00009bcc__entry__139">total_convs /
imps</td>
<td class="entry" headers="ID-00009bcc__entry__140">The rate of
conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Conversions per
Million</td>
<td class="entry" headers="ID-00009bcc__entry__137">double</td>
<td class="entry" headers="ID-00009bcc__entry__138">221.87708</td>
<td class="entry" headers="ID-00009bcc__entry__139">(total_convs / imps)
x 1,000,000</td>
<td class="entry" headers="ID-00009bcc__entry__140">The number of
conversions per million impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Revenue</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">25.767257</td>
<td class="entry" headers="ID-00009bcc__entry__139">booked_revenue +
reseller_revenue</td>
<td class="entry" headers="ID-00009bcc__entry__140">The total revenue
booked through direct advertisers (line item) and direct publishers
(resold impressions). This value will be displayed in USD as well as
potentially the Buying Currency and Selling Currency (if you've selected
those dimensions).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Booked Revenue</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">25.767257</td>
<td class="entry" headers="ID-00009bcc__entry__139">booked_revenue</td>
<td class="entry" headers="ID-00009bcc__entry__140">The total revenue
booked through direct advertisers (line item). This value will be
displayed in USD as well as potentially the Buying Currency and Selling
Currency (if you've selected those dimensions).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Resold Revenue</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">0</td>
<td class="entry"
headers="ID-00009bcc__entry__139">reseller_revenue</td>
<td class="entry" headers="ID-00009bcc__entry__140">The total revenue on
resold impressions through direct publishers. This value will be
displayed in USD as well as potentially the Buying Currency and Selling
Currency (if you've selected those dimensions).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Post View
Conversions</td>
<td class="entry" headers="ID-00009bcc__entry__137">int</td>
<td class="entry" headers="ID-00009bcc__entry__138">15</td>
<td class="entry" headers="ID-00009bcc__entry__139">post_view_convs</td>
<td class="entry" headers="ID-00009bcc__entry__140">The total number of
recorded post-view conversions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Post Click
Conversions</td>
<td class="entry" headers="ID-00009bcc__entry__137">int</td>
<td class="entry" headers="ID-00009bcc__entry__138">15</td>
<td class="entry"
headers="ID-00009bcc__entry__139">post_click_convs</td>
<td class="entry" headers="ID-00009bcc__entry__140">The total number of
recorded post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Cost</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">16.833378</td>
<td class="entry" headers="ID-00009bcc__entry__139">cost</td>
<td class="entry" headers="ID-00009bcc__entry__140">The total amount of
media cost for direct publisher and purchased third-party inventory.
This value will be displayed in USD as well as potentially the Buying
Currency and Selling Currency (if you've selected those
dimensions).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Profit</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">0.084102</td>
<td class="entry" headers="ID-00009bcc__entry__139">Booked revenue -
Total cost</td>
<td class="entry" headers="ID-00009bcc__entry__140">Booked revenue minus
total cost.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">CPM</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">1.6605168</td>
<td class="entry" headers="ID-00009bcc__entry__139">(cost / imps) x
1000</td>
<td class="entry" headers="ID-00009bcc__entry__140">The media cost per
1000 impressions. This value will be displayed in USD as well as
potentially the Buying Currency and Selling Currency (if you've selected
those dimensions).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Total RPM</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">2.6054831</td>
<td class="entry" headers="ID-00009bcc__entry__139">(revenue / imps) x
1000</td>
<td class="entry" headers="ID-00009bcc__entry__140">The revenue per 1000
impressions. This value will be displayed in USD as well as potentially
the Buying Currency and Selling Currency (if you've selected those
dimensions).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">PPM</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">0.9449662</td>
<td class="entry" headers="ID-00009bcc__entry__139">(profit / imps) x
1000</td>
<td class="entry" headers="ID-00009bcc__entry__140"><strong>To be
deprecated.</strong> The profit per 1000 impressions. This value will be
displayed in USD as well as potentially the Buying Currency and Selling
Currency (if you've selected those dimensions).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Total Cost</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">123.45</td>
<td class="entry" headers="ID-00009bcc__entry__139">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00009bcc__entry__140">The total amount of
costs accrued over the reported period of time. This generally includes
two types of costs, budgeted costs (media cost, data cost, partner fees,
serving fees, commissions) and publisher revenue if you track publisher
payouts on the platform.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Total Cost eCPM</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">123.45</td>
<td class="entry" headers="ID-00009bcc__entry__139">(Total Cost/Imps) *
1000</td>
<td class="entry" headers="ID-00009bcc__entry__140">The total cost per
1,000 imps.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Total Cost eCPC</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">123.45</td>
<td class="entry" headers="ID-00009bcc__entry__139">(Total
Cost/Click)</td>
<td class="entry" headers="ID-00009bcc__entry__140">The total cost per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Total Cost eCPA</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">123.45</td>
<td class="entry" headers="ID-00009bcc__entry__139">(Total
Cost/Conversion)</td>
<td class="entry" headers="ID-00009bcc__entry__140">The total cost per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Profit eCPM</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">123.45</td>
<td class="entry" headers="ID-00009bcc__entry__139">((Booked revenue -
Total cost)/Imps) * 1,000</td>
<td class="entry" headers="ID-00009bcc__entry__140">Profit per thousand
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Profit eCPC</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">123.45</td>
<td class="entry" headers="ID-00009bcc__entry__139">(Booked revenue -
Total cost)/Click</td>
<td class="entry" headers="ID-00009bcc__entry__140">Profit per
click.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Profit eCPA</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">123.45</td>
<td class="entry" headers="ID-00009bcc__entry__139">(Booked revenue -
Total cost)/Conversion</td>
<td class="entry" headers="ID-00009bcc__entry__140">Profit per
conversion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Profit Margin</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">123.45</td>
<td class="entry" headers="ID-00009bcc__entry__139">(Booked revenue -
Total cost)/Booked revenue</td>
<td class="entry" headers="ID-00009bcc__entry__140">Buyer profit
margin.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Network Profit</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">123.45</td>
<td class="entry" headers="ID-00009bcc__entry__139">Booked revenue +
Reseller revenue - Total Cost</td>
<td class="entry" headers="ID-00009bcc__entry__140">The sum of booked
revenue and reseller revenue minus total cost.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Network Profit
eCPM</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">123.45</td>
<td class="entry" headers="ID-00009bcc__entry__139">(Network
profit/Imps) * 1000</td>
<td class="entry" headers="ID-00009bcc__entry__140">Network profit per
thousand impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Network Profit
eCPC</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">123.45</td>
<td class="entry" headers="ID-00009bcc__entry__139">Network
profit/Clicks</td>
<td class="entry" headers="ID-00009bcc__entry__140">Network profit per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Network Profit
eCPA</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">123.45</td>
<td class="entry" headers="ID-00009bcc__entry__139">Network
profit/Conversions</td>
<td class="entry" headers="ID-00009bcc__entry__140">Network profit per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Network Profit
Margin</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">123.45</td>
<td class="entry" headers="ID-00009bcc__entry__139">Network
profit/(Booked revenue + reseller revenue)</td>
<td class="entry" headers="ID-00009bcc__entry__140">Network profit
margin.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Device Type</td>
<td class="entry" headers="ID-00009bcc__entry__137"></td>
<td class="entry" headers="ID-00009bcc__entry__138">Tablets, mobile
phones</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">This is the type of
device being used.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Conversion Device
Make</td>
<td class="entry" headers="ID-00009bcc__entry__137">string</td>
<td class="entry" headers="ID-00009bcc__entry__138">Apple (26)</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">This is the device
that the conversion occurred on. This can be compared against Device
Make to determine what device the impression occurred on.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Device Make</td>
<td class="entry" headers="ID-00009bcc__entry__137"></td>
<td class="entry" headers="ID-00009bcc__entry__138">Apple (26)</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">This is the brand
name of the device.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Conversion Device
Type</td>
<td class="entry" headers="ID-00009bcc__entry__137">string</td>
<td class="entry" headers="ID-00009bcc__entry__138">Tablets, mobile
phones</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">This can be compared
against Device Type to determine what device the conversion occurred
on.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Video Skips</td>
<td class="entry" headers="ID-00009bcc__entry__137">int</td>
<td class="entry" headers="ID-00009bcc__entry__138">10</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">The total number of
times a user skipped the video. Use this metric for reporting when
buying skippable inventory.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Video Starts</td>
<td class="entry" headers="ID-00009bcc__entry__137">int</td>
<td class="entry" headers="ID-00009bcc__entry__138">11</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">The total number of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">25% Video
Complete</td>
<td class="entry" headers="ID-00009bcc__entry__137">int</td>
<td class="entry" headers="ID-00009bcc__entry__138">10</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">The total number of
times the video creatives completed 25% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">50% Video
Complete</td>
<td class="entry" headers="ID-00009bcc__entry__137">int</td>
<td class="entry" headers="ID-00009bcc__entry__138">10</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">The total number of
times the video creatives completed 50% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">75% Video
Complete</td>
<td class="entry" headers="ID-00009bcc__entry__137">int</td>
<td class="entry" headers="ID-00009bcc__entry__138">10</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">The total number of
times the video creatives completed 75% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Video
Completions</td>
<td class="entry" headers="ID-00009bcc__entry__137">int</td>
<td class="entry" headers="ID-00009bcc__entry__138">12</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">The total number of
times the video creatives played for the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Videos Served</td>
<td class="entry" headers="ID-00009bcc__entry__137">int</td>
<td class="entry" headers="ID-00009bcc__entry__138">10</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">The total number of
video responses served to the player. An ad response occurs when the
VAST document (XML) is served in response to a request. An ad response
doesn't necessarily indicate a successful impression. For an impression,
the first frame of the video must be served.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Video Errors</td>
<td class="entry" headers="ID-00009bcc__entry__137">int</td>
<td class="entry" headers="ID-00009bcc__entry__138">2</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">The total number of
times a video error occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Revenue Per Video
Complete</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">25.767257</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">The revenue per
video completion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Cost Per Video
Complete</td>
<td class="entry" headers="ID-00009bcc__entry__137">money</td>
<td class="entry" headers="ID-00009bcc__entry__138">22.767257</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">The cost per video
completion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Video Completion
Rate</td>
<td class="entry" headers="ID-00009bcc__entry__137">double</td>
<td class="entry"
headers="ID-00009bcc__entry__138">1.12359550561797%</td>
<td class="entry" headers="ID-00009bcc__entry__139">(Video
Completions/Total Impressions) x 100</td>
<td class="entry" headers="ID-00009bcc__entry__140">The ratio of video
completions to impressions, expressed as a percentage .</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009bcc__entry__136">Video Start
Rate</td>
<td class="entry" headers="ID-00009bcc__entry__137">double</td>
<td class="entry"
headers="ID-00009bcc__entry__138">1.12359550561797%</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">The percentage of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009bcc__entry__136">Video Skip Rate</td>
<td class="entry" headers="ID-00009bcc__entry__137">double</td>
<td class="entry"
headers="ID-00009bcc__entry__138">1.12359550561797%</td>
<td class="entry" headers="ID-00009bcc__entry__139"></td>
<td class="entry" headers="ID-00009bcc__entry__140">The percentage of
times the user opted to skip the video.</td>
</tr>
</tbody>
</table>



**To Run your Report**

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

      
    - <span id="ID-00009bcc__d10e107">**Export, send results via
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
6.  <span id="ID-00009bcc__d10e136">Click Run
    report to send your report request.





Related Topics

- <a href="carrier-analytics-report.md" class="xref">Carrier Analytics
  Report</a>
- <a href="technical-limitations-of-mobile-buying.md"
  class="xref">Technical Limitations of Mobile Buying</a>
- <a href="buying-mobile-inventory.md" class="xref">Buying Mobile
  Inventory</a>
- <a href="mobile-buying-faq.md" class="xref">Mobile Buying FAQ</a>
- <a href="mobile-ad-call-reference.md" class="xref">Mobile Ad Call
  Reference</a>
- <a href="reporting-guide.md" class="xref">Reporting Guide</a>
- <a href="network-reporting.md" class="xref">Network Reporting</a>
- <a href="availability-of-reporting-data.md" class="xref">Availability
  of Reporting Data</a>
- <a href="what-is-a-venue.md" class="xref">What is a Venue?</a>
- <a href="give-up-price.md" class="xref">Give Up Price</a>
- <a href="availability-of-reporting-data.md" class="xref">Availability
  of Reporting Data</a>






