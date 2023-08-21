# Conversion Pixel Feed

<div class="body">

The Log-Level Conversion Pixel Feed provides data on the firing of all
of your managed advertisers' pixels, both attributed and unattributed.
The feed contains one row per pixel.

<div class="note">

<span class="notetitle">Note:</span> The Conversion Pixel Feed does not
distinguish between the firing of attributed and unattributed pixels. To
view attributed conversion data, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-attributed-conversions.html"
class="xref" target="_blank">Advertiser Attributed Conversions</a>.
However, pixel loads for users without a <span class="ph">Xandr</span>
cookie are excluded from this feed because a conversion event is not
possible without a cookie. This feed records all pixel fires, whereas
the Attributed Conversion report only shows conversions that can be
attributed to a line item.

</div>

The <span class="ph">Xandr</span> internal name for this feed
is `pixel_feed`.

<div class="section">

## Sequence

The columns below are listed in the same order in which they appear in
the log-level feed file (top to bottom here, left to right in the
file). 

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
<th id="d18161e103" class="entry cellborder"
style="vertical-align: top">Column Index</th>
<th id="d18161e106" class="entry cellborder"
style="vertical-align: top">Column Name</th>
<th id="d18161e109" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d18161e112" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d18161e103 ">01</td>
<td class="entry cellborder"
headers="d18161e106 ">date_time</td>
<td class="entry cellborder"
headers="d18161e109 ">UNIX Epoch time</td>
<td class="entry cellborder"
headers="d18161e112 ">The time and date of the impression (e.g., <code
class="ph codeph">1526057561</code> which would need to be translated to
<em>Friday, May 11, 2018 4:52:41 PM (UTC)</em>).</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d18161e103 ">02</td>
<td class="entry cellborder"
headers="d18161e106 ">auction_id_64</td>
<td class="entry cellborder"
headers="d18161e109 ">bigint </td>
<td class="entry cellborder"
headers="d18161e112 "><strong>Deprecated</strong>. This field will
always be <code class="ph codeph">0</code>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d18161e103 ">03</td>
<td class="entry cellborder"
headers="d18161e106 ">user_id_64</td>
<td class="entry cellborder"
headers="d18161e109 ">bigint</td>
<td class="entry cellborder"
headers="d18161e112 ">The <span class="ph">Xandr</span> 64-bit user ID
(stored in the <span class="ph">Xandr</span> cookie store). Pixel loads
for users without a <span class="ph">Xandr</span> cookie are excluded
from this feed because a conversion event is not possible without a
cookie.
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
will not receive the non-hashed version.
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d18161e103 ">04</td>
<td class="entry cellborder"
headers="d18161e106 ">pixel_id</td>
<td class="entry cellborder"
headers="d18161e109 ">int</td>
<td class="entry cellborder"
headers="d18161e112 ">The ID of the conversion pixel.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d18161e103 ">05</td>
<td class="entry cellborder"
headers="d18161e106 ">order_id</td>
<td class="entry cellborder"
headers="d18161e109 ">string(36)</td>
<td class="entry cellborder"
headers="d18161e112 ">The optional value passed in by the buyer on the
conversion pixel using the <code class="ph codeph">order_id</code>
parameter. See <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/conversion-pixels-advanced.html"
class="xref" target="_blank">Conversion Pixels Advanced</a> for more
details.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d18161e103 ">06</td>
<td class="entry cellborder"
headers="d18161e106 ">external_data</td>
<td class="entry cellborder"
headers="d18161e109 ">string(30)</td>
<td class="entry cellborder"
headers="d18161e112 ">The optional extra data passed in by buyer on
conversion pixel using the <code class="ph codeph">other</code>
parameter. See <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/conversion-pixels-advanced.html"
class="xref" target="_blank">Conversion Pixels Advanced</a> for more
details.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d18161e103 ">07</td>
<td class="entry cellborder"
headers="d18161e106 ">http_referer</td>
<td class="entry cellborder"
headers="d18161e109 ">string(2000)</td>
<td class="entry cellborder"
headers="d18161e112 ">The HTTP referrer from the conversion pixel
fire</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d18161e103 ">08</td>
<td class="entry cellborder"
headers="d18161e106 ">hashed_user_id_64</td>
<td class="entry cellborder"
headers="d18161e109 ">bytes</td>
<td class="entry cellborder"
headers="d18161e112 ">The hashed version of the <span
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
<span class="notetitle">Note:</span> If you receive the <code
class="ph codeph">user_id_64</code> version of this field, you will not
receive the hashed version.
</div></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d18161e103 ">09</td>
<td class="entry cellborder"
headers="d18161e106 ">partition_time_millis</td>
<td class="entry cellborder"
headers="d18161e109 ">UNIX Epoch time</td>
<td class="entry cellborder"
headers="d18161e112 ">The hourly partition any record row falls into,
represented as a UNIX Epoch timestamp value (in milliseconds). Useful
for defining hourly partitions when loading into a database or data
warehouse. For the Avro format, this field is given the timestamp-millis
logical type for native timestamp detection. For example, <code
class="ph codeph">1568077200000</code> can also be represented as
<em>Tuesday, September 10, 2019 1 AM (UTC)</em>.</td>
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
