# Universal Pixel Feed

<div class="body">

The Log-Level Universal Pixel Feed provides you with data on the firing
of all of your Universal Pixels. The feed contains one row per pixel
fire. Each row includes both the data received on the fire as well as
any segment and conversion IDs that were associated with the event based
on the Audience and Conversion rules that matched the traffic. It is
possible for a pixel fire to satisfy no Audience or Conversion rules.

The Universal Pixel Feed does not distinguish between attributed and
unattributed conversions. To view attributed conversion data, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-attributed-conversions.html"
class="xref" target="_blank">Advertiser Attributed Conversions</a> or
the <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a>.

The <span class="ph">Xandr</span> internal name for this feed is
`universal_pixel_feed`.

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
<th id="d13645e108" class="entry cellborder"
style="vertical-align: top">Column Index</th>
<th id="d13645e111" class="entry cellborder"
style="vertical-align: top">Column Name</th>
<th id="d13645e114" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d13645e117" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d13645e108 ">01</td>
<td class="entry cellborder"
headers="d13645e111 ">date_time</td>
<td class="entry cellborder"
headers="d13645e114 ">UNIX Epoch time</td>
<td class="entry cellborder"
headers="d13645e117 ">The time and date of the universal pixel fire.  
(e.g., <code class="ph codeph">1526057561</code> which would need to be
translated to <em>Friday, May 11, 2018 4:52:41 PM (UTC)</em>.
<div class="note">
<span class="notetitle">Note:</span>
<p>The EPOCH time is in <strong>milliseconds format</strong>, and not
the standard EPOCH time.</p>
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d13645e108 ">02</td>
<td class="entry cellborder"
headers="d13645e111 ">pixel_uuid</td>
<td class="entry cellborder"
headers="d13645e114 ">string</td>
<td class="entry cellborder"
headers="d13645e117 ">The UUID of the universal pixel.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d13645e108 ">03</td>
<td class="entry cellborder"
headers="d13645e111 ">user_id_64</td>
<td class="entry cellborder"
headers="d13645e114 ">bigint </td>
<td class="entry cellborder"
headers="d13645e117 ">The <span class="ph">Xandr</span> 64-bit user ID
(stored in the <span class="ph">Xandr</span> cookie store).
<p>This field is <code class="ph codeph">0</code> when:</p>
<ul>
<li><span class="ph">Xandr</span> does not have a match for this user
or </li>
<li>the user's browser doesn't accept cookies or</li>
<li>you do not have a legal basis to access and process personal data
for an impression where GDPR applies</li>
</ul>
<p>It will be <code class="ph codeph">-1</code> for
opt-out/non-consented users.</p></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d13645e108 ">04</td>
<td class="entry cellborder"
headers="d13645e111 ">url</td>
<td class="entry cellborder"
headers="d13645e114 ">string </td>
<td class="entry cellborder"
headers="d13645e117 ">The entire URL of the page the pixel is on.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d13645e108 ">05</td>
<td class="entry cellborder"
headers="d13645e111 ">http_referer</td>
<td class="entry cellborder"
headers="d13645e114 ">string </td>
<td class="entry cellborder"
headers="d13645e117 ">The entire URL of the referrer to the page the
pixel is on.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d13645e108 ">06</td>
<td class="entry cellborder"
headers="d13645e111 ">event</td>
<td class="entry cellborder"
headers="d13645e114 ">string </td>
<td class="entry cellborder"
headers="d13645e117 "> The event associated with the pixel fire. The
standard universal pixel events are:
<ul>
<li>PageView (default)</li>
<li>LandingPage</li>
<li>ItemView</li>
<li>AddToCart</li>
<li>InitiativeCheckout</li>
<li>AddPaymentInfo</li>
<li>Purchase</li>
<li>Lead</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d13645e108 ">07</td>
<td class="entry cellborder"
headers="d13645e111 ">item_ids</td>
<td class="entry cellborder"
headers="d13645e114 ">array of strings </td>
<td class="entry cellborder"
headers="d13645e117 ">Strings passed in on the <code
class="ph codeph">item_id</code> parameter within your pixel . This
value is an array (e.g, <code
class="ph codeph">['product_5', 'product_6']</code>).</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d13645e108 ">08</td>
<td class="entry cellborder"
headers="d13645e111 ">item_types</td>
<td class="entry cellborder"
headers="d13645e114 ">array of strings</td>
<td class="entry cellborder"
headers="d13645e117 ">Strings passed in on the <code
class="ph codeph">item_type</code> parameter within your pixel . This
value is an array (e.g, <code
class="ph codeph">['apparel']</code>).</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d13645e108 ">09</td>
<td class="entry cellborder"
headers="d13645e111 ">item_names</td>
<td class="entry cellborder"
headers="d13645e114 ">array of strings</td>
<td class="entry cellborder"
headers="d13645e117 ">Strings passed in on the <code
class="ph codeph">item_name</code> parameter within your pixel . This
value is an array (e.g.,<code
class="ph codeph">['ford fiesta']</code>).</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d13645e108 ">10</td>
<td class="entry cellborder"
headers="d13645e111 ">segment_ids</td>
<td class="entry cellborder"
headers="d13645e114 ">array of int </td>
<td class="entry cellborder"
headers="d13645e117 ">The list of IDs for the segments the user was
added to as a result of the universal pixel firing. </td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d13645e108 ">11</td>
<td class="entry cellborder"
headers="d13645e111 ">conversion_pixel_ids</td>
<td class="entry cellborder"
headers="d13645e114 ">array of int</td>
<td class="entry cellborder"
headers="d13645e117 ">The list of IDs for the conversion events
triggered by the user as a result of the universal pixel firing.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d13645e108 ">12</td>
<td class="entry cellborder"
headers="d13645e111 ">partition_time_millis</td>
<td class="entry cellborder"
headers="d13645e114 ">long </td>
<td class="entry cellborder"
headers="d13645e117 ">The hourly partition any record row falls into,
represented as a UNIX Epoch timestamp value (in milliseconds). Useful
for defining hourly partitions when loading into a database or data
warehouse. For the Avro format, this field is given the timestamp-millis
logical type for native timestamp detection. For example, <code
class="ph codeph">1568077200000</code> can also be represented
as <em>Tuesday, September 10, 2019 1 AM (UTC)</em>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d13645e108 ">13</td>
<td class="entry cellborder"
headers="d13645e111 ">event_value</td>
<td class="entry cellborder"
headers="d13645e114 ">numeric</td>
<td class="entry cellborder"
headers="d13645e117 ">The nominal value of the event (passed in as a
float from the <code class="ph codeph">value</code> parameter within
your pixel).</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d13645e108 ">14</td>
<td class="entry cellborder"
headers="d13645e111 ">traffic_type</td>
<td class="entry cellborder"
headers="d13645e114 ">string</td>
<td class="entry cellborder"
headers="d13645e117 ">The source of the traffic being tracked by the
pixel. Possible values are <code class="ph codeph">WEB</code> or <code
class="ph codeph">APP</code>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d13645e108 ">15</td>
<td class="entry cellborder"
headers="d13645e111 ">application_id</td>
<td class="entry cellborder"
headers="d13645e114 ">string</td>
<td class="entry cellborder"
headers="d13645e117 ">The ID of the application (in the app store) that
the pixel has been placed on. This value can be numeric or alphanumeric
(e..g <code class="ph codeph">com.xandr.application_name</code>).</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d13645e108 ">16</td>
<td class="entry cellborder"
headers="d13645e111 ">device_unique_id</td>
<td class="entry cellborder"
headers="d13645e114 ">string</td>
<td class="entry cellborder"
headers="d13645e117 ">The unique identifier representing the mobile
device. The numeric prefix indicates the type of unique device
identifier:
<ul>
<li><code class="ph codeph">0</code> = IDFA (Apple ID for
Advertising)</li>
<li><code class="ph codeph">1</code> = SHA1</li>
<li><code class="ph codeph">2</code> = MD5</li>
<li><code class="ph codeph">3</code> = ODIN</li>
<li><code class="ph codeph">4</code> = OPENUDID</li>
<li><code class="ph codeph">5</code> = AAID (Android Advertising
ID)</li>
<li><code class="ph codeph">6</code> = WINDOWSADID (Microsoft
Advertising ID)</li>
<li><code class="ph codeph">7</code> = RIDA (Roky id for
Advertising)</li>
<li><code class="ph codeph">8.9</code> = AFAI (Amazon Fire OS)</li>
<li><code class="ph codeph">8.10</code> = TIFA (Tizen Identifier for
Advertising (Samsung Ad ID))</li>
<li><code class="ph codeph">8.11</code> = VIDA (Vizio Advertising
ID)</li>
<li><code class="ph codeph">8.12</code> = LGUDID (LG Unique Device
ID)</li>
</ul>
<div class="note">
<span class="notetitle">Note:</span> The value of this field will
be <code class="ph codeph">null</code> except for specific integrations.
</div></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d13645e108 ">17</td>
<td class="entry cellborder"
headers="d13645e111 ">custom_parameters</td>
<td class="entry cellborder"
headers="d13645e114 ">array of messages</td>
<td class="entry cellborder"
headers="d13645e117 ">Contains all custom parameters that were sent with
the pixel fire. This is represented as a repeated protobuf field with a
key (string) and values (repeated string).</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d13645e108 ">18</td>
<td class="entry cellborder"
headers="d13645e111 ">order_id</td>
<td class="entry cellborder"
headers="d13645e114 ">string</td>
<td class="entry cellborder"
headers="d13645e117 ">An optional value passed in by the buyer on the
Universal Pixel using it (e.g.,<code
class="ph codeph">'119'</code>).</td>
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
