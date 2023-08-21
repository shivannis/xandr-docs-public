# Segment Feed

<div class="body">

The Log-Level Segment Feed gives you data on the segment pixel loads for
all of your network- and advertiser-level segments. Information about
your 3rd-party data providers' pixels are not included. The feed
contains one row per segment load. Additions (or re-additions) of a user
to a segment are included, but removals of a user from a segment are not
included in this feed.

The <span class="ph">Xandr</span> internal name for this feed
is `segment_feed`.

<div class="section">

## Sequence

The columns below are listed in the same order in which they appear in
the log-level feed file (top to bottom here, left to right in the file).

</div>

<div class="section">

## Integer Key

- tinyint = 1 byte (8 bit)
- smallint = 2 byte (16 bit)
- int = 4 byte (32 bit)
- bigint = 8 byte (64 bit)

</div>

<div class="section">

## Columns

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d13218e92" class="entry cellborder"
style="vertical-align: top">Column Index</th>
<th id="d13218e95" class="entry cellborder"
style="vertical-align: top">Column Name</th>
<th id="d13218e98" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d13218e101" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d13218e92 ">1</td>
<td class="entry cellborder"
headers="d13218e95 ">date_time</td>
<td class="entry cellborder"
headers="d13218e98 ">UNIX Epoch time</td>
<td class="entry cellborder"
headers="d13218e101 ">The date and time when the segment pixel fired
(e.g., <code class="ph codeph">1526057561</code> which would need to be
translated to <em>Friday, May 11, 2018 4:52:41 PM (UTC)</em>).</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d13218e92 ">2</td>
<td class="entry cellborder"
headers="d13218e95 ">user_id_64</td>
<td class="entry cellborder"
headers="d13218e98 ">bigint</td>
<td class="entry cellborder"
headers="d13218e101 ">The <span class="ph">Xandr</span> 64-bit user ID
stored in the <span class="ph">Xandr</span> cookie store.
<p>This field is <code class="ph codeph">0</code> when:</p>
<ul>
<li><span class="ph">Xandr</span> does not have a match for this user
or </li>
<li>the user's browser doesn't accept cookies or</li>
<li>you do not have a legal basis to access and process personal data
for an impression where GDPR applies</li>
</ul>
<p>It will be <code class="ph codeph">-1</code> for
opt-out/non-consented users.</p>
<div class="note">
<span class="notetitle">Note:</span> If you receive the <code
class="ph codeph">hashed_user_id_64</code> version of this field, you
will not receive the unhashed version of this field.
</div></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d13218e92 ">3</td>
<td class="entry cellborder"
headers="d13218e95 ">member_id</td>
<td class="entry cellborder"
headers="d13218e98 ">int</td>
<td class="entry cellborder"
headers="d13218e101 ">The ID of the member that dropped the pixel.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d13218e92 ">4</td>
<td class="entry cellborder"
headers="d13218e95 ">segment_id</td>
<td class="entry cellborder"
headers="d13218e98 ">int</td>
<td class="entry cellborder"
headers="d13218e101 ">The ID of the segment pixel.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d13218e92 ">5</td>
<td class="entry cellborder"
headers="d13218e95 ">is_daily_unique</td>
<td class="entry cellborder"
headers="d13218e98 ">tinyint</td>
<td class="entry cellborder"
headers="d13218e101 ">Whether or not the pixel fire is the first for a
given user that day.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d13218e92 ">6</td>
<td class="entry cellborder"
headers="d13218e95 ">is_monthly_unique</td>
<td class="entry cellborder"
headers="d13218e98 ">tinyint</td>
<td class="entry cellborder"
headers="d13218e101 ">Whether or not the pixel fire is the first for a
user in the past 30 days.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d13218e92 ">7</td>
<td class="entry cellborder"
headers="d13218e95 ">value</td>
<td class="entry cellborder"
headers="d13218e98 ">int</td>
<td class="entry cellborder"
headers="d13218e101 ">Optional value passed with pixel.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d13218e92 ">8</td>
<td class="entry cellborder"
headers="d13218e95 ">partition_time_millis</td>
<td class="entry cellborder"
headers="d13218e98 ">UNIX Epoch time</td>
<td class="entry cellborder"
headers="d13218e101 ">The hourly partition any record row falls into,
represented as a UNIX Epoch timestamp value (in milliseconds). Useful
for defining hourly partitions when loading into a database or data
warehouse. For the Avro format, this field is given the timestamp-millis
logical type for native timestamp detection. For example, <code
class="ph codeph">1568077200000</code> can also be represented as
<em>Tuesday, September 10, 2019 1 AM (UTC)</em>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d13218e92 ">9</td>
<td class="entry cellborder"
headers="d13218e95 ">hashed_user_id_64</td>
<td class="entry cellborder"
headers="d13218e98 ">bytes</td>
<td class="entry cellborder"
headers="d13218e101 ">The hashed version of the <span
class="ph">Xandr</span> 64-bit User ID which will we provided as a proxy
in certain cases where <span class="ph">Xandr</span> is unable to
provide the real <code class="ph codeph">user_id_64</code>. You will not
be able to target users via their hashed user ID. However you can use
this identifier to calculate unique users, user frequency, and user
recency. An example is provided below:
<pre class="pre codeblock"><code>user_id_64:
XXXXXX304391387YYYY
hashed_user_id_64:
0000f47b074866470613d9397f0bd7efa78c7adec992aac5e117cbe2d55993a94767</code></pre>
<div class="note">
<span class="notetitle">Note:</span> If you receive the <code
class="ph codeph">user_id_64</code> version of this field, you will not
receive the hashed version.
</div></td>
</tr>
</tbody>
</table>

</div>

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
