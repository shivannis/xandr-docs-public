---
Title : Auction Categories Feed
Description : Note: This feed is not available to
Xandr Invest clients.
---


# Auction Categories Feed





Note: This feed is not available to
Xandr Invest clients.



This is a log-level data feed that provides you with data on all
categories (universal and custom) that were present in an auction where
you were the selling member.

The Xandr internal name for this feed
is `auction_categories_feed`.

Each feed is delivered hourly and will be retained for 7 days.  The feed
will be logged when an auction is complete.

If you enable the auction category feed, it will be in your feed list
along with all your other log-level data feeds. See <a
href="https://docs.xandr.com/bundle/log-level-data/page/log-level-data-feeds.html"
class="xref" target="_blank">Log Level Data Feeds</a> for more
information.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000933__entry__1" class="entry colsep-1 rowsep-1">Column
Index</th>
<th id="ID-00000933__entry__2" class="entry colsep-1 rowsep-1">Column
Name</th>
<th id="ID-00000933__entry__3" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000933__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__2">date_time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000933__entry__3">UNIX
Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000933__entry__4">The
time and date of impression (e.g., <code
class="ph codeph">1526057561</code> which would need to be translated to
<em>Friday, May 11, 2018 4:52:41 PM (UTC)</em>) .</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__2">auction_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__3">bigint</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000933__entry__4">The
unique identifier of the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__1">3</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__2">user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__3">bigint</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000933__entry__4">The
ID of the user.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__1">4</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__2">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000933__entry__4">The
member ID of the seller.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__1">5</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__2">universal_categories</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000933__entry__4">A
list of category IDs for the universal categories that apply to this
auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__1">6</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__2">custom_categories</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000933__entry__4">A
list of category IDs for the custom categories that apply to this
auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__1">7</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__2">hashed_user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__3">bytes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000933__entry__4">The
hashed version of the Xandr 64-bit User ID which
will we provided as a proxy in certain cases where <span
class="ph">Xandr is unable to provide the real <code
class="ph codeph">user_id_64</code>. You will not be able to target
users via their hashed user ID. However you can use this identifier to
calculate unique users, user frequency, and user recency. An example is
provided below:
<pre class="pre codeblock"><code>user_id_64:
XXXXXX304391387YYYY
hashed_user_id_64:
0000f47b074866470613d9397f0bd7efa78c7adec992aac5e117cbe2d55993a94767</code></pre>

Note: If you receive the <code
class="ph codeph">user_id_64</code> version of this field, you will not
receive the hashed version.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__1">8</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000933__entry__2">partition_time_millis</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000933__entry__3">UNIX
Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000933__entry__4">The
hourly partition any record row falls into, represented as a UNIX Epoch
timestamp value (in milliseconds). Useful for defining hourly partitions
when loading into a database or data warehouse. For the Avro format,
this field is given the timestamp-millis logical type for native
timestamp detection. For example,  <code
class="ph codeph">1568077200000</code>  can also be represented as 
<em>Tuesday, September 10, 2019 1 AM  (UTC)</em>.</td>
</tr>
</tbody>
</table>




