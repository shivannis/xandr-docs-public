---
Title : Segment Feed
Description : The Log-Level Segment Feed gives you data on the segment pixel loads for
ms.custom : log-level-data
ms.date : 10/28/2023
all of your network- and advertiser-level segments. Information about
---


# Segment Feed



The Log-Level Segment Feed gives you data on the segment pixel loads for
all of your network- and advertiser-level segments. Information about
your 3rd-party data providers' pixels are not included. The feed
contains one row per segment load. Additions (or re-additions) of a user
to a segment are included, but removals of a user from a segment are not
included in this feed.

The Xandr internal name for this feed
is `segment_feed`.



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
<th id="ID-00001f6d__entry__1" class="entry colsep-1 rowsep-1">Column
Index</th>
<th id="ID-00001f6d__entry__2" class="entry colsep-1 rowsep-1">Column
Name</th>
<th id="ID-00001f6d__entry__3" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001f6d__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__2">date_time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f6d__entry__3">UNIX
Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f6d__entry__4">The
date and time when the segment pixel fired (e.g., <code
class="ph codeph">1526057561</code> which would need to be translated to
<em>Friday, May 11, 2018 4:52:41 PM (UTC)</em>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__2">user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__3">bigint</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f6d__entry__4">The
Xandr 64-bit user ID stored in the <span
class="ph">Xandr cookie store.
<p>This field is <code class="ph codeph">0</code> when:</p>
<ul>
<li>Xandr does not have a match for this user
or </li>
<li>the user's browser doesn't accept cookies or</li>
<li>you do not have a legal basis to access and process personal data
for an impression where GDPR applies</li>
</ul>
<p>It will be <code class="ph codeph">-1</code> for
opt-out/non-consented users.</p>

<b>Note:</b> If you receive the <code
class="ph codeph">hashed_user_id_64</code> version of this field, you
will not receive the unhashed version of this field.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__1">3</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__2">member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f6d__entry__4">The
ID of the member that dropped the pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__1">4</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__2">segment_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f6d__entry__4">The
ID of the segment pixel.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__1">5</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__2">is_daily_unique</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__3">tinyint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__4">Whether or not the pixel fire is the
first for a given user that day.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__1">6</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__2">is_monthly_unique</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__3">tinyint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__4">Whether or not the pixel fire is the
first for a user in the past 30 days.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__1">7</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__2">value</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__4">Optional value passed with pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__1">8</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__2">partition_time_millis</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f6d__entry__3">UNIX
Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f6d__entry__4">The
hourly partition any record row falls into, represented as a UNIX Epoch
timestamp value (in milliseconds). Useful for defining hourly partitions
when loading into a database or data warehouse. For the Avro format,
this field is given the timestamp-millis logical type for native
timestamp detection. For example, <code
class="ph codeph">1568077200000</code> can also be represented as
<em>Tuesday, September 10, 2019 1 AM (UTC)</em>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__1">9</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__2">hashed_user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f6d__entry__3">bytes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f6d__entry__4">The
hashed version of the Xandr 64-bit User ID which
will we provided as a proxy in certain cases where <span
class="ph">Xandr is unable to provide the real <code
class="ph codeph">user_id_64</code>. You will not be able to target
users via their hashed user ID. However you can use this identifier to
calculate unique users, user frequency, and user recency. An example is
provided below:
<pre class="pre codeblock"><code>user_id_64:
XXXXXX304391387YYYY
hashed_user_id_64:
0000f47b074866470613d9397f0bd7efa78c7adec992aac5e117cbe2d55993a94767</code></pre>

<b>Note:</b> If you receive the <code
class="ph codeph">user_id_64</code> version of this field, you will not
receive the hashed version.
</td>
</tr>
</tbody>
</table>






