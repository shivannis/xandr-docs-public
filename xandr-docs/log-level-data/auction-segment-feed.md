# Auction Segment Feed

<div class="body">

<div class="note">

<span class="notetitle">Note:</span> This feed is not available to Xandr
Invest clients.

</div>

This is a log-level data feed that provides you with information on all
eligible segments in an auction that your seller member has access to.
The segments in this feed include pixel, query string, and 3rd-party
shared segments.

The <span class="ph">Xandr</span> internal name for this feed
is `auction_segment_feed`.

Each feed is delivered hourly and will be retained for 7 days.  The feed
will be logged when an auction is complete.

If you enable the auction segment feed, it will be in your feed list
along with all your other log-level data feeds. See <a
href="https://docs.xandr.com/bundle/log-level-data/page/log-level-data-feeds.html"
class="xref" target="_blank">Log Level Data Feeds</a> for more
information.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d10516e73" class="entry cellborder"
style="vertical-align: top"> </th>
<th id="d10516e75" class="entry cellborder"
style="vertical-align: top">Column</th>
<th id="d10516e78" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d10516e81" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d10516e73 ">1</td>
<td class="entry cellborder"
headers="d10516e75 ">date_time</td>
<td class="entry cellborder"
headers="d10516e78 ">UNIX Epoch time</td>
<td class="entry cellborder"
headers="d10516e81 ">The date and time (e.g., <code
class="ph codeph">1526057561</code> which would need to be translated to
<em>Friday, May 11, 2018 4:52:41 PM (UTC)</em>).</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10516e73 ">2</td>
<td class="entry cellborder"
headers="d10516e75 ">auction_id_64</td>
<td class="entry cellborder"
headers="d10516e78 ">bigint</td>
<td class="entry cellborder"
headers="d10516e81 ">The unique ID of the auction.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10516e73 ">3</td>
<td class="entry cellborder"
headers="d10516e75 ">user_id_64</td>
<td class="entry cellborder"
headers="d10516e78 ">bigint</td>
<td class="entry cellborder"
headers="d10516e81 ">The user ID.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10516e73 ">4</td>
<td class="entry cellborder"
headers="d10516e75 ">seller_member_id</td>
<td class="entry cellborder"
headers="d10516e78 ">int</td>
<td class="entry cellborder"
headers="d10516e81 ">The member ID of the seller.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10516e73 ">5</td>
<td class="entry cellborder"
headers="d10516e75 ">segments</td>
<td class="entry cellborder"
headers="d10516e78 ">segment_key_value</td>
<td class="entry cellborder"
headers="d10516e81 ">A list of segments. Each segment consists of:
<ul>
<li>segment_id (int): The segment ID of the pixel, query string, or
shared segment.</li>
<li>segment_value (int): A value that can be passed with the
segment.</li>
<li>last_seen_min (int): The number of minutes since this user was last
tagged with this segment. Given in Posix time (represented in minutes).
Multiply this value by 60 to get the number of seconds since the epoch
when this segment was updated.</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10516e73 ">6</td>
<td class="entry cellborder"
headers="d10516e75 ">hashed_user_id_64</td>
<td class="entry cellborder"
headers="d10516e78 ">bytes</td>
<td class="entry cellborder"
headers="d10516e81 ">The hashed version of the <span
class="ph">Xandr</span> 64-bit User ID which will we provided as a proxy
in certain cases where <span class="ph">Xandr</span> is unable to
provide the real <code class="ph codeph">user_id_64</code>. You will not
be able to target users via their hashed user ID. However you can use
this identifier to calculate unique users, user frequency, and user
recency. An example is provided below:
<pre class="pre codeblock"><code>user_id_64:
XXXXXX304391387YYYY
hashed_user_id_64:
0000f47b074866470613d9397f0bd7efa78c7adec992aac5e117cbe2d55993a94767</code></pre>
<div class="note">
<span class="notetitle">Note:</span> If you receive the  <code
class="ph codeph">user_id_64</code>  version of this field, you will not
receive the hashed version.
</div></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10516e73 ">7</td>
<td class="entry cellborder"
headers="d10516e75 ">partition_time_millis</td>
<td class="entry cellborder"
headers="d10516e78 ">UNIX Epoch time</td>
<td class="entry cellborder"
headers="d10516e81 ">The hourly partition any record row falls into,
represented as a UNIX Epoch timestamp value (in milliseconds). Useful
for defining hourly partitions when loading into a database or data
warehouse. For the Avro format, this field is given the timestamp-millis
logical type for native timestamp detection. For example,  <code
class="ph codeph">1568077200000</code>  can also be represented as 
<em>Tuesday, September 10, 2019 1 AM  (UTC)</em>.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="log-level-data-feeds.html" class="link">Log Level Data
Feeds</a>

</div>

</div>

</div>
