---
Title : Video Events Feed
Description : The Video Events Feed provides you with a listing of all video-specific
ms.custom : log-level-data
ms.date : 10/28/2023
events that occur on your video impressions. The feed contains one row
---


# Video Events Feed



The Video Events Feed provides you with a listing of all video-specific
events that occur on your video impressions. The feed contains one row
per video event.

The Xandr internal name for this feed
is `video_events_feed`.



## Sequence

The columns below are listed in the same order in which they appear in
the log-level feed file (top to bottom here, left to right in the file).





## Integer Key

- tinyint = 1 byte (8 bit)
- smallint = 2 byte (16 bit)
- int = 4 byte (32 bit)
- bigint = 8 byte (64 bit)





## Columns

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002eae__entry__1" class="entry colsep-1 rowsep-1">Column
Index</th>
<th id="ID-00002eae__entry__2" class="entry colsep-1 rowsep-1">Column
Name</th>
<th id="ID-00002eae__entry__3" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002eae__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00002eae__entry__5"
class="entry colsep-1 rowsep-1">Visibility</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">01</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">date_time</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">UNIX Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
time and date truncated to the hour that the record was processed by
Xandr. For cross-hour events, for example,
starting at 12:59 and finishing at 13:01, the hour recorded would be the
last event's hour, which is 13 in this example.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">02</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">auction_id_64</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">bigint</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
Xandr unique auction identifier.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">03</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">buyer_member_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
member ID of the buyer.
<ul>
<li>For <code class="ph codeph">imp_type</code> = 1 (Blank), the <code
class="ph codeph">buyer_member_id</code> and <code
class="ph codeph">creative_id</code> is 0.</li>
<li>For <code class="ph codeph">imp_type</code> = 2 (PSA), the <span
class="ph">Xandr PSA <code class="ph codeph">member_id</code>
displays.</li>
<li>For <code class="ph codeph">imp_type</code> = 3 or 4 (Default Error
or Default), the <code class="ph codeph">seller_member_id</code>
displays.</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">04</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">seller_member_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
member ID of the seller.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">05</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">advertiser_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
ID of the advertiser.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Buyer</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">06</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">publisher_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
ID for the publisher of the placement. Buyer member may map the
Publisher ID to a name using the <a
href="xandr-api/inventory-resold-service.md"
class="xref" target="_blank">Inventory Resold Service</a> if the seller
has chosen to expose the publisher. Exposure to buyer depends on the
seller's visibility profile.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">07</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">site_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
ID for site associated with placement. Cannot be associated with a name,
except by the seller member who owns the site. Exposure to buyer depends
on the seller's visibility profile.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Seller</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">08</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">tag_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
ID of placement tag of the impression. Cannot be associated with a name,
except by the seller member who owns the tag. Exposure to buyer depends
on the seller's visibility profile.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">09</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">insertion_order_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
ID for insertion order if used.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Buyer</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">10</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">line_item_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
identifier of line item.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Buyer</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">11</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">campaign_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
ID of the campaign.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Buyer</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">12</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">creative_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
ID of the creative served.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">13</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">creative_freq</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
creative-level frequency (times the user has seen this creative by this
advertiser).</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Buyer</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">14</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">creative_rec</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
creative-level recency in minutes (how long it has been since the user
has seen this creative ad).</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Buyer</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">15</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">brand_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
ID for brand of the creative.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">16</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">country</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">string(2)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
geographic country of the impression passed in on the ad call. Uses <a
href="http://dev.maxmind.com/geoip/legacy/codes/iso3166/" class="xref"
target="_blank">ISO 3166</a> country codes.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">17</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">creative_width</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">smallint</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
width of the creative.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">18</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">creative_height</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">smallint</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
height of the creative.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">19</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">deal_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
Deal ID associated with this impression.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">20</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_was_served</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__4">Whether or not the video was served this
hour</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">21</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_started</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__4">Whether or not the video was started
this hour</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">22</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_was_skipped</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__4">Whether or not the video was skipped
this hour</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">23</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_had_error</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__4">Whether or not the video had an error
this hour</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">24</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_hit_25_pct</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__4">Whether or not the video hit 25 pct this
hour</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">25</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_hit_50_pct</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__4">Whether or not the video hit 50 pct this
hour</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">26</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_hit_75_pct</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__4">Whether or not the video hit 75 pct this
hour</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">27</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_completed</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__4">Whether or not the video completed this
hour</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">28</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">imp_type</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">tinyint</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
type of impression. Possible values:<br />
&#10;<ul>
<li><code class="ph codeph">0</code> = Video event error<br />
<code class="ph codeph">1</code> = Blank: "200 OK" response (blank)
served.<br />
</li>
<li><code class="ph codeph">2</code> = PSA: A public service
announcement served because no other creative was eligible.</li>
<li><br />
<code class="ph codeph">3</code> = Default Error: A default creative
served due to timeout issue.</li>
<li><code class="ph codeph">4</code> = Default: A default creative
served because no campaigns bid or no other creative was eligible.<br />
</li>
<li><code class="ph codeph">5</code> = Kept: One of your managed
advertisers served a creative.<br />
</li>
<li><code class="ph codeph">6</code> = Resold: The impression was sold
to a third-party buyer.<br />
</li>
<li><code class="ph codeph">7</code> = RTB: Your creative served on
third-party inventory.</li>
<li><code class="ph codeph">8</code> = PSA Error: A public service
announcement served due to timeout issue.<br />
</li>
<li><code class="ph codeph">9</code> = External Impression: An
impression from an impression tracker.<br />
</li>
<li><code class="ph codeph">10</code> = External Click: A click from a
click tracker.</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">29</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">advertiser_currency</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">string(3)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
currency used by advertiser.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Buyer</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">30</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">publisher_currency</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">string(3)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
currency in which publisher is paid.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Seller</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">31</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">site_domain</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">string(100)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
most granular identifier of the site that we can offer (but not the full
domain). This may be the domain of a supply partner (e.g., <a
href="http://doubleclick.com/" class="xref"
target="_blank">doubleclick.com</a>), the network who owns the resold
inventory, or just "resold inventory". Exposure to buyer depends on the
seller's visibility profile settings.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">32</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">application_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
ID of the mobile application (if applicable). Exposure to buyer depends
on the seller's visibility profile.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">33</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">media_cost_cpm</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">numeric</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">For
buyers, the dollar amount * 1000 that a network is paying for the video
impression associated to this video event. For sellers, the dollar
amount * 1000 paid to publisher for the impression associated to this
video event.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">34</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">booked_revenue</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">numeric</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
dollar amount earned by network on the impression associated with this
video event</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Buyer</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">35</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">seller_revenue_cpm</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">numeric</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
amount the seller is paid for the impression associated with this video
event.

<b>Note:</b> The <code
class="ph codeph">impression_seller_revenue_cpm</code> is also
calculated for <code class="ph codeph">imp_type</code> = <code
class="ph codeph">5</code> (managed impressions). If you wish to
calculate total revenue from resold impressions, sum <code
class="ph codeph">seller_revenue_cpm</code> only for <code
class="ph codeph">imp_type</code> = <code class="ph codeph">6</code>.
</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Seller</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">36</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">playback_method</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
type of initiation method. Possible values:<br />
&#10;<ul>
<li><code class="ph codeph">0</code> = Unknown<br />
</li>
<li><code class="ph codeph">1</code> = Auto-play, sound on<br />
</li>
<li><code class="ph codeph">2</code> = Auto-play, sound off<br />
</li>
<li><code class="ph codeph">3</code> = Click-to-play<br />
</li>
<li><code class="ph codeph">4</code> = Mouse-over<br />
</li>
<li><code class="ph codeph">5</code> = Auto-play, sound unknown</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">37</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_context</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
type of context. Possible values:<br />
&#10;<ul>
<li><code class="ph codeph">0</code> = Unknown<br />
</li>
<li><code class="ph codeph">1</code> = Pre-Roll<br />
</li>
<li><code class="ph codeph">2</code> = Mid-Roll<br />
</li>
<li><code class="ph codeph">3</code> = Post-Roll<br />
</li>
<li><code class="ph codeph">4</code> = Outstream<br />
</li>
<li><code class="ph codeph">5</code> = Bannerstream</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">38</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">player_size_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">tinyint</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
size of the video player. Possible values:<br />
&#10;<ul>
<li><code class="ph codeph">0</code> = Unknown<br />
</li>
<li><code class="ph codeph">1</code> = Small<br />
</li>
<li><code class="ph codeph">2</code> = Medium<br />
</li>
<li><code class="ph codeph">3</code> = Large</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">39</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">supply_type</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
type of supply. Possible values:
<ul>
<li><code class="ph codeph">0</code> = Web</li>
<li><code class="ph codeph">1</code> = Mobile_Web</li>
<li><code class="ph codeph">2</code> = Mobile_App</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">40</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">view_result</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
Xandr viewability measurement result of the
impression. Possible values:<br />
&#10;<ul>
<li><code class="ph codeph">0</code> = VIEW_UNKNOWN<br />
</li>
<li><code class="ph codeph">1</code> = VIEW_DETECTED<br />
</li>
<li><code class="ph codeph">2</code> = VIEW_NOT_DETECTED<br />
</li>
<li><code class="ph codeph">3</code> = VIEW_NON_MEASURABLE<br />
</li>
<li><code class="ph codeph">-1</code> = UNKNOWN</li>
</ul>
<p>For non-impression events, this will be NULL.</p>

<b>Note:</b> For more details about
viewability, see <a
href="industry-reference/introduction-to-viewability.md"
class="xref" target="_blank">Introduction to Viewability</a>.
</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">41</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">view_non_measurable_reason</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
reason an impression could not be measured for viewability. Possible
values:<br />
&#10;<ul>
<li><code class="ph codeph">0</code> = N/A. The impression was measured
for viewability<br />
</li>
<li><code class="ph codeph">1</code> = SCRIPT_NOT_SERVED. The
viewability script was not served with the creative. For example, on
mobile-app inventory.<br />
</li>
<li><code class="ph codeph">2</code> = NO_SCRIPT_CALLBACK. The
viewability script was served with the creative, but no callback/event
was received. For example, the user left the page before the creative
was served.<br />
</li>
<li><code class="ph codeph">3</code> = TECHNICAL_LIMITATION. The
viewability script was served and loaded, but was unable to measure for
a technical reason. For example, a cross-domain iFrame with Flash
disabled.<br />
</li>
<li><code class="ph codeph">-1</code> = UNKNOWN</li>
</ul>

<b>Note:</b> For more information regarding
viewability, see <a
href="industry-reference/introduction-to-viewability.md"
class="xref" target="_blank">Introduction to Viewability</a>.
</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">42</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">error_code</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">For
a detailed description of error codes and their meanings, see the IAB's
<a href="http://www.iab.net/media/file/VASTv3.0.pdf" class="xref"
target="_blank">VAST 3.0 documentation</a> or view the list of Error
Codes below.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">43</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">partition_time_millis</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">UNIX Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
hourly partition any record row falls into, represented as a UNIX Epoch
timestamp value (in milliseconds). Useful for defining hourly partitions
when loading into a database or data warehouse. For the Avro format,
this field is given the timestamp-millis logical type for native
timestamp detection. For example, <code
class="ph codeph">1568077200000</code> can also be represented
as <em>Tuesday, September 10, 2019 1 AM (UTC)</em>.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">44</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">split_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">int32</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
ID of the split that purchased the impressions in this data set. Splits
are only applicable to augmented line items.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Buyer</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">45</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_served_timestamp</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">UNIX Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
time and date when the video ad response was recorded.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">46</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_started_timestamp</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">UNIX Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
time and date when the video started event was received by <span
class="ph">Xandr.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">47</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_skipped_timestamp</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">UNIX Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
time and date when the video skipped event was received by <span
class="ph">Xandr.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">48</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_errored_timestamp</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">UNIX Epoch time</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00002eae__entry__4">The time and date when the video error
event was received by Xandr.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">49</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_hit_25_pct_timestamp</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">UNIX Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
time and date when the video first quartile event was received by <span
class="ph">Xandr.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">50</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_hit_50_pct_timestamp</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">UNIX Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
time and date when the video second quartile event was received by <span
class="ph">Xandr.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">51</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_hit_75_pct_timestamp</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">UNIX Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
time and date when the video third quartile event was received by <span
class="ph">Xandr.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__1">52</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__2">video_completed_timestamp</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__3">UNIX Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__4">The
time and date when the video completed event was received by <span
class="ph">Xandr.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__5">Both</td>
</tr>
</tbody>
</table>





## Error Codes 

The table below shows a complete listing of error codes and their
meanings. 



<b>Note:</b> You may receive error codes in
the feed that are not present in the list below. If you do, those error
codes are generally non-VAST-compliant custom codes sent from the video
player.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002eae__entry__266"
class="entry align-center colsep-1 rowsep-1">Error Codes</th>
<th id="ID-00002eae__entry__267"
class="entry align-center colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">100</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">XML parsing error.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">101</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">VAST schema validation error.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">102</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">VAST version of response not
supported.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">200</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Trafficking error. Video player
received an ad type that it was not expecting and/or cannot
display.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">201</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Video player expecting different
linearity.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">202</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Video player expecting different
duration.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">203</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Video player expecting different
size.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">300</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">General Wrapper error.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">301</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Timeout of VAST URI provided in
Wrapper element, or of VAST URI provided in a subsequent Wrapper
element. Includes request errors such as invalid URI, unreachable or
request timeout for URI, and security or other exceptions related to
requesting a VAST URI.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">302</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Wrapper limit reached, as defined by
the video player. Too many Wrapper responses have been received with no
InLine response.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">303</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002eae__entry__267">No
ads VAST response after one or more Wrappers. Also includes number of
empty VAST responses from fallback.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">400</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">General linear error. Video player is
unable to display the linear ad.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">401</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">File not found. Unable to find
Linear/MediaFile from URI.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">402</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Timeout of MediaFile URI.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">403</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Could not find MediaFile that is
supported by this video player, based on the attributes of the MediaFile
element.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">405</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Problem displaying MediaFile.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">500</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">General NonLinearAds error.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">501</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Unable to display NonLinear Ad because
creative dimensions do not align with creative display area (i.e.,
creative dimension too large).</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">502</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Unable to fetch NonLinearAds/NonLinear
resource.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">503</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Could not find NonLinearresource with
supported type.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">600</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">General CompanionAds error.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">601</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Unable to display companion because
creative dimensions do not fit within Companion display area (i.e., no
available space).</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">602</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Unable to display Required
Companion.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">603</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Unable to fetch CompanionAds/Companion
resource.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">604</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Could not find Companion resource with
supported type.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">900</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">Undefined error.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00002eae__entry__266"><code
class="ph codeph">901</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002eae__entry__267">General VPAID error.</td>
</tr>
</tbody>
</table>






