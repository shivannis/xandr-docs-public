---
Title : Universal Pixel Feed
Description : The Log-Level Universal Pixel Feed provides you with data on the firing
ms.custom : log-level-data
ms.date : 10/28/2023
of all of your Universal Pixels. The feed contains one row per pixel
---


# Universal Pixel Feed



The Log-Level Universal Pixel Feed provides you with data on the firing
of all of your Universal Pixels. The feed contains one row per pixel
fire. Each row includes both the data received on the fire as well as
any segment and conversion IDs that were associated with the event based
on the Audience and Conversion rules that matched the traffic. It is
possible for a pixel fire to satisfy no Audience or Conversion rules.

The Universal Pixel Feed does not distinguish between attributed and
unattributed conversions. To view attributed conversion data, see <a
href="xandr-api/advertiser-attributed-conversions.md"
class="xref" target="_blank">Advertiser Attributed Conversions</a> or
the <a
href="standard-feed.md"
class="xref" target="_blank">Standard Feed</a>.

The Xandr internal name for this feed is
`universal_pixel_feed`.



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
<th id="ID-00002cf7__entry__1" class="entry colsep-1 rowsep-1">Column
Index</th>
<th id="ID-00002cf7__entry__2" class="entry colsep-1 rowsep-1">Column
Name</th>
<th id="ID-00002cf7__entry__3" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002cf7__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">01</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">date_time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__3">UNIX
Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4">The
time and date of the universal pixel fire. <br />
(e.g., <code class="ph codeph">1526057561</code> which would need to be
translated to <em>Friday, May 11, 2018 4:52:41 PM (UTC)</em>.

<b>Note:</b>
<p>The EPOCH time is in <strong>milliseconds format</strong>, and not
the standard EPOCH time.</p>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">02</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">pixel_uuid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4">The
UUID of the universal pixel.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">03</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">bigint </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4">The
Xandr 64-bit user ID (stored in the <span
class="ph">Xandr cookie store).
<p>This field is <code class="ph codeph">0</code> when:</p>
<ul>
<li>Xandr does not have a match for this user
or </li>
<li>the user's browser doesn't accept cookies or</li>
<li>you do not have a legal basis to access and process personal data
for an impression where GDPR applies</li>
</ul>
<p>It will be <code class="ph codeph">-1</code> for
opt-out/non-consented users.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">04</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">url</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">string </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4">The
entire URL of the page the pixel is on.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">05</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">http_referer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">string </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4">The
entire URL of the referrer to the page the pixel is on.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">06</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">event</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">string </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4"> The
event associated with the pixel fire. The standard universal pixel
events are:
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
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">07</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">item_ids</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">array of strings </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__4">Strings passed in on the <code
class="ph codeph">item_id</code> parameter within your pixel . This
value is an array (e.g, <code
class="ph codeph">['product_5', 'product_6']</code>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">08</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">item_types</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__4">Strings passed in on the <code
class="ph codeph">item_type</code> parameter within your pixel . This
value is an array (e.g, <code
class="ph codeph">['apparel']</code>).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">09</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">item_names</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__4">Strings passed in on the <code
class="ph codeph">item_name</code> parameter within your pixel . This
value is an array (e.g.,<code
class="ph codeph">['ford fiesta']</code>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">10</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">segment_ids</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">array of int </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4">The
list of IDs for the segments the user was added to as a result of the
universal pixel firing. </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">11</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">conversion_pixel_ids</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">array of int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4">The
list of IDs for the conversion events triggered by the user as a result
of the universal pixel firing.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">12</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">partition_time_millis</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">long </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4">The
hourly partition any record row falls into, represented as a UNIX Epoch
timestamp value (in milliseconds). Useful for defining hourly partitions
when loading into a database or data warehouse. For the Avro format,
this field is given the timestamp-millis logical type for native
timestamp detection. For example, <code
class="ph codeph">1568077200000</code> can also be represented
as <em>Tuesday, September 10, 2019 1 AM (UTC)</em>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">13</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">event_value</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">numeric</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4">The
nominal value of the event (passed in as a float from the <code
class="ph codeph">value</code> parameter within your pixel).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">14</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">traffic_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4">The
source of the traffic being tracked by the pixel. Possible values
are <code class="ph codeph">WEB</code> or <code
class="ph codeph">APP</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">15</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">application_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4">The
ID of the application (in the app store) that the pixel has been placed
on. This value can be numeric or alphanumeric (e..g <code
class="ph codeph">com.xandr.application_name</code>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">16</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">device_unique_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4">The
unique identifier representing the mobile device. The numeric prefix
indicates the type of unique device identifier:
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

<b>Note:</b> The value of this field will
be <code class="ph codeph">null</code> except for specific integrations.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">17</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">custom_parameters</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">array of messages</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__4">Contains all custom parameters that were
sent with the pixel fire. This is represented as a repeated protobuf
field with a key (string) and values (repeated string).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__1">18</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__2">order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cf7__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002cf7__entry__4">An
optional value passed in by the buyer on the Universal Pixel using it
(e.g.,<code class="ph codeph">'119'</code>).</td>
</tr>
</tbody>
</table>






