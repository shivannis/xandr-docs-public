---
Title : Conversion Pixel Feed
Description : The Log-Level Conversion Pixel Feed provides data on the firing of all
of your managed advertisers' pixels, both attributed and unattributed.
---


# Conversion Pixel Feed



The Log-Level Conversion Pixel Feed provides data on the firing of all
of your managed advertisers' pixels, both attributed and unattributed.
The feed contains one row per pixel.



Note: The Conversion Pixel Feed does
not distinguish between the firing of attributed and unattributed
pixels. To view attributed conversion data, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-attributed-conversions.html"
class="xref" target="_blank">Advertiser Attributed Conversions</a>.
However, pixel loads for users without a Xandr
cookie are excluded from this feed because a conversion event is not
possible without a cookie. This feed records all pixel fires, whereas
the Attributed Conversion report only shows conversions that can be
attributed to a line item.



The Xandr internal name for this feed
is `pixel_feed`.



## Sequence

The columns below are listed in the same order in which they appear in
the log-level feed file (top to bottom here, left to right in the
file). 





## Integer Key

- tinyint = 1 byte (8 bit)
- smallint = 2 byte (16 bit)
- int = 4 byte (32 bit)
- bigint = 8 byte (64 bit)





## Columns

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000018db__entry__1" class="entry colsep-1 rowsep-1">Column
Index</th>
<th id="ID-000018db__entry__2" class="entry colsep-1 rowsep-1">Column
Name</th>
<th id="ID-000018db__entry__3" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000018db__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__1">01</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__2">date_time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000018db__entry__3">UNIX
Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000018db__entry__4">The
time and date of the impression (e.g., <code
class="ph codeph">1526057561</code> which would need to be translated to
<em>Friday, May 11, 2018 4:52:41 PM (UTC)</em>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__1">02</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__2">auction_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__3">bigint </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__4"><strong>Deprecated</strong>. This field
will always be <code class="ph codeph">0</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__1">03</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__2">user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__3">bigint</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000018db__entry__4">The
Xandr 64-bit user ID (stored in the <span
class="ph">Xandr cookie store). Pixel loads for users without a
Xandr cookie are excluded from this feed because
a conversion event is not possible without a cookie.
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

Note: If you receive the <code
class="ph codeph">hashed_user_id_64</code> version of this field, you
will not receive the non-hashed version.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__1">04</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__2">pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000018db__entry__4">The
ID of the conversion pixel.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__1">05</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__2">order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__3">string(36)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000018db__entry__4">The
optional value passed in by the buyer on the conversion pixel using the
<code class="ph codeph">order_id</code> parameter. See <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/conversion-pixels-advanced.html"
class="xref" target="_blank">Conversion Pixels Advanced</a> for more
details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__1">06</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__2">external_data</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__3">string(30)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000018db__entry__4">The
optional extra data passed in by buyer on conversion pixel using the
<code class="ph codeph">other</code> parameter. See <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/conversion-pixels-advanced.html"
class="xref" target="_blank">Conversion Pixels Advanced</a> for more
details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__1">07</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__2">http_referer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__3">string(2000)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000018db__entry__4">The
HTTP referrer from the conversion pixel fire</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__1">08</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__2">hashed_user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__3">bytes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000018db__entry__4">The
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

Note: If you receive the <code
class="ph codeph">user_id_64</code> version of this field, you will not
receive the hashed version.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__1">09</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018db__entry__2">partition_time_millis</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000018db__entry__3">UNIX
Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000018db__entry__4">The
hourly partition any record row falls into, represented as a UNIX Epoch
timestamp value (in milliseconds). Useful for defining hourly partitions
when loading into a database or data warehouse. For the Avro format,
this field is given the timestamp-millis logical type for native
timestamp detection. For example, <code
class="ph codeph">1568077200000</code> can also be represented as
<em>Tuesday, September 10, 2019 1 AM (UTC)</em>.</td>
</tr>
</tbody>
</table>






