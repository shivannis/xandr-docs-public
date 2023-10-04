---
Title : Curator Feed
Description : The Log-Level Curator Feed provides data on the transacted impressions
of your curated deals. The feed contains one row per transacted
---


# Curator Feed



The Log-Level Curator Feed provides data on the transacted impressions
of your curated deals. The feed contains one row per transacted
impression. This data can then be used by curators to develop powerful
offline attribution models, dashboards, and custom reporting as well as
other solutions.

The Xandr internal name for this feed
is `curator_feed`.



## Sequence

The columns below are listed in the same order in which they appear in
the log-level feed file (top to bottom here, left to right in the file).





## Recommended Precisions / Lengths of Data Types

In the <a href="curator-feed.html#ID-000019cf__columns_curator_feed"
class="xref">Columns</a> table below, some values in the **Type** column
contain a recommended precision or length in parentheses. For example,
`string(100)` means "this string is probably (but not guaranteed to be)
less than or equal to 100 characters in length".

For integers, the sizes are described in the
<a href="curator-feed.html#ID-000019cf__integer_key_curator_feed"
class="xref">Integer Key</a> section.

For `numeric` (floating point) data types, we recommend being able to
accept a precision of (18,6), meaning that we expect there to be a
maximum total of 18 digits: 12 to the left of the decimal point, and 6
to the right.

For `string` data types, the recommended length of the field varies
depending on the field. See the table below.



Warning: These are Recommendations, not
Guarantees

The data *types* are meant to be accurate as documented. However, the
recommended *precision* or *length* for a given data type should not be
read as a guarantee. For example, a string or numeric column's value may
exceed the suggested length or precision listed on this page.

The recommendations are intended to help you build your system to ingest
this data. You may need to do additional processing on the output of the
Curator Feed to make it work with your particular integration.





<div id="ID-000019cf__integer_key_curator_feed" >

## Integer Key

- tinyint = 1 byte (8 bit)
- smallint = 2 byte (16 bit)
- int = 4 byte (32 bit)
- bigint = 8 byte (64 bit)



<div id="ID-000019cf__columns_curator_feed" >

## Columns

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000019cf__columns_curator_feed__entry__1"
class="entry colsep-1 rowsep-1">Column Index</th>
<th id="ID-000019cf__columns_curator_feed__entry__2"
class="entry colsep-1 rowsep-1">Column Name</th>
<th id="ID-000019cf__columns_curator_feed__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000019cf__columns_curator_feed__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">01</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">auction_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">bigint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The <span
class="ph">Xandr unique auction identifier.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">02</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">date_time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">UNIX Epoch
time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The time and date
of the event (e.g., <code class="ph codeph">1526057561</code> which
would need to be translated to <em>Friday, May 11, 2018 4:52:41 PM
(UTC)</em> ). See <code class="ph codeph">event_type</code> for a list
of events.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">03</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">user_tz_offset</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">tinyint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The time zone of
user vs. UTC. Useful for daypart targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">04</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">tinyint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The general
display style of the creative, classified by media subtype. To map media
subtype IDs to their names and parent media types, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-subtype-service.html"
class="xref" target="_blank">Media Subtype Service</a>. For the video
media type, the value of the <code
class="ph codeph">creative_width</code> and <code
class="ph codeph">creative_height</code> columns will be <code
class="ph codeph">1</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">05</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">event_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">Possible values:
<code class="ph codeph">imp</code> = impression</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">;06</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">bigint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The <span
class="ph">Xandr 64-bit User ID stored in the <span
class="ph">Xandr cookie store. 
<p>This field is  <code class="ph codeph">0</code>  when:</p>
<ul>
<li>Xandr does not have a match for this user
or </li>
<li>the user's browser doesn't accept cookies or</li>
<li>you do not have a legal basis to access and process personal data
for an impression where GDPR applies</li>
</ul>
<p>It will be  <code class="ph codeph">-1</code>  for
opt-out/non-consented users.</p>

Note: If you received the <code
class="ph codeph">hashed_user_id_64</code> version of this field, you
will not receive the unhashed version.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">07</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">hashed_user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">bytes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The hashed version
of the Xandr 64-bit User ID which will we
provided as a proxy in certain cases where Xandr
is unable to provide the real <code class="ph codeph">user_id_64</code>.
You will not be able to target users via their hashed user ID. However
you can use this identifier to calculate unique users, user frequency,
and user recency. An example is provided below:
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
headers="ID-000019cf__columns_curator_feed__entry__1">08</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">ip_address</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The IP address of
user. This field has a maximum of 40 characters.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">09</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">ip_address_trunc</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The IP address of
user with the last octet removed. This field has a maximum of 40
characters.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">10</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">country</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The geographic
country of the impression. Derived from IP address of user or provided
by the site associated with the impression. Uses <a
href="http://dev.maxmind.com/geoip/legacy/codes/iso3166/" class="xref"
target="_blank">ISO 3166</a> country codes. </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">11</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">region</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The geographic
region of the impression. Derived from IP address of user or provided by
the site associated with the impression. Uses ISO-3166-2 codes for US
and Canadian regions, and FIPS codes for regions in all other
countries.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">12</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">dma</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">Specifies the ID
of the designated market area for this impression. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/designated-market-area-service.html"
class="xref" target="_blank">Designated Market Area Service</a> to look
up the area associated with the ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">13</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">city</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The ID of the city
for this impression. Derived from IP address of user or provided by the
site associated with the impression. Use the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/city-service.html"
class="xref" target="_blank">City Service</a> to look up the city
associated with the ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">14</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">postal_code</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The postal code of
the user's location. Derived from IP address of user or provided by the
site associated with the impression. For postal codes, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/postal-code-service.html"
class="xref" target="_blank">Postal Code Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">15</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">latitude</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The latitude of
the user's location, when GPS data is available from a mobile device.
Expressed in the format "snn.ddd,snn.ddd", for example +12.345 or
-45.123, where south is represented as negative. There can be a maximum
of 5 decimal places of precision.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">16</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">latitude_trunc</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The truncated
value (limited to 3 decimal places) of the latitude of the user's
location, when GPS data is available from a mobile device. Expressed in
the format "snn.ddd,snn.ddd". For example:
<ul>
<li><code class="ph codeph">+12.345</code> or</li>
<li><code class="ph codeph">-45.123</code> (where south is represented
as negative).</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">17</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">longitude</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The longitude of
the user's location, when GPS data is available from a mobile device.
Expressed in the format "snn.ddd,snn.ddd", for example <code
class="ph codeph">+12.345</code> or <code
class="ph codeph">-45.123</code>, where west is represented as negative.
There can be a maximum of 5 decimal places of precision.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">18</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">longitude_trunc</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The truncated
value (limited to 3 decimal places) of the longitude of the user's
location, when GPS data is available from a mobile device. Expressed in
the format "snn.ddd,snn.ddd". For example:
<ul>
<li><code class="ph codeph">+12.345</code> or</li>
<li><code class="ph codeph">-45.123</code> (where west is represented as
negative).</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">19</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">device_unique_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The unique
identifier representing the mobile device. The numeric prefix indicates
the type of unique device identifier:
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
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">20</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">device_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The type of
device. Possible values are:
<ul>
<li><code class="ph codeph">0</code> = Other Devices</li>
<li><code class="ph codeph">1</code> = Desktops and Laptops</li>
<li><code class="ph codeph">2</code> = Mobile Phones</li>
<li><code class="ph codeph">3</code> = Tablets</li>
<li><code class="ph codeph">4</code> = TV</li>
<li><code class="ph codeph">5</code> = Game Console</li>
<li><code class="ph codeph">6</code> = Media Players</li>
<li><code class="ph codeph">7</code> = Set Top Box</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">21</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">tc_string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The Transparency
and Consent String represents the IAB Transparency and Consent Framework
string. The string is base-64 url-safe encoded and can be decoded using
the <a
href="https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework"
class="xref" target="_blank">IAB GDPR Transparency and Consent Framework
technical specification</a>. The string contains data rights, usage, and
privacy information.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">22</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">curated_deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The ID of the
curator's deal through which the impression transacted.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">23</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">gross_revenue_dollars</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The amount of
spend the buyer sent to the curator for the impression (including buyer
fees, if applicable). This is the same as Buyer's media cost (except
media cost does not include buyer fees).
<p>This is the same value as <code
class="ph codeph">curator_revenue</code>  in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/curator-analytics-report.html"
class="xref" target="_blank">Curator Analytics Report</a>.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">24</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">curator_margin</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The profit the
curator made on the transaction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">25</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">total_tech_fees_dollars</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The fees <span
class="ph">Xandr charged to a curator on the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">26</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">total_cost_dollars</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The amount the
curator spent on exchange fees (to Xandr) and
seller media for the impression. This does not include curator margin or
curator fees.
<p>This is the same value as <code
class="ph codeph">curator_total_cost</code> in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/curator-analytics-report.html"
class="xref" target="_blank">Curator Analytics Report</a>.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">27</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">net_media_cost_dollars</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">numeric</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The amount the
curator spent on seller media for the impression. This does not include
curator fees or curator margin (if applicable).
<p>This is the same as gross seller revenue (which includes seller
fees).</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">28</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The member ID of
the seller.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">29</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The ID for the
publisher of the placement. Curator member may map the Publisher ID to a
name using the <a
href="https://docs.xandr.com/bundle/xandr-api/page/inventory-resold-service.html"
class="xref" target="_blank">Inventory Resold Service</a> if the seller
has chosen to expose the publisher. Exposure to curator depends on the
seller's visibility profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">30</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">site_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The ID for site
associated with placement. Cannot be associated with a name, except by
the seller member who owns the site. Exposure to curator depends on the
seller's visibility profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">31</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">site_domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The most granular
identifier of the site that we can offer (but not the full domain). This
may be the domain of a supply partner (e.g., <a
href="http://doubleclick.com" class="xref"
target="_blank">doubleclick.com</a>), the network who owns the resold
inventory, or just "resold inventory". Exposure to curator depends on
the seller's visibility profile settings. This field has a maximum of
100 characters.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">32</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">tag_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The ID of
placement tag of the impression. Cannot be associated with a name,
except by the seller member who owns the tag. Exposure to
curator depends on the seller's visibility profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">33</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">application_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The ID of the
mobile application (if applicable).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">34</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">mobile_app_instance_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">Specifies the ID
of the mobile app instance for this impression. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/mobile-app-instance-service.html"
class="xref" target="_blank">Mobile App Instance Service</a> to look up
the mobile app instance associated with the ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">35</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The member ID of
the buyer.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">36</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The ID of the
creative served.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">37</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">brand_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The ID for brand
of the creative. Curator member can map the <code
class="ph codeph">brand_id</code> to a name using the <a
href="https://docs.xandr.com/bundle/xandr-api/page/brand-service.html"
class="xref" target="_blank">Brand Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">38</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The <code
class="ph codeph">seller_deal_id</code> associated with the impression,
or <code class="ph codeph">0</code> if the curator sourced the
impression from the open exchange.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">39</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">view_result</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The <span
class="ph">Xandr viewability measurement result of the
impression. Possible values:
<ul>
<li><code class="ph codeph">0</code> = VIEW_UNKNOWN</li>
<li><code class="ph codeph">1</code> = VIEW_DETECTED</li>
<li><code class="ph codeph">2</code> = VIEW_NOT_DETECTED</li>
<li><code class="ph codeph">3</code> = VIEW_NOT_MEASURABLE</li>
<li><code class="ph codeph">-1</code> = UNKNOWN</li>
</ul>

Note: For more details about
viewability, see <a
href="https://docs.xandr.com/bundle/industry-reference/page/introduction-to-viewability.html"
class="xref" target="_blank">Introduction to Viewability</a>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">40</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">view_non_measurable_reason</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The reason an
impression could not be measured for viewability. Possible values:
<ul>
<li><code class="ph codeph">0</code> = N/A. The impression was measured
for viewability</li>
<li><code class="ph codeph">1</code> = SCRIPT_NOT_SERVED. The
viewability script was not served with the creative. For example, on
mobile-app inventory.</li>
<li><code class="ph codeph">2</code> = NO_SCRIPT_CALLBACK. The
viewability script was served with the creative, but no callback/event
was received. For example, the user left the page before the creative
was served.</li>
<li><code class="ph codeph">3</code> = TECHNICAL_LIMITATION. The
viewability script was served and loaded, but was unable to measure for
a technical reason. For example, a cross-domain iframe with Flash
disabled.</li>
<li><code class="ph codeph">-1</code> = UNKNOWN. The reason is
unknown.</li>
</ul>

Note: For more information regarding
viewability, see <a
href="https://docs.xandr.com/bundle/industry-reference/page/introduction-to-viewability.html"
class="xref" target="_blank">Introduction to Viewability</a>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">41</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">supply_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The type of
supply. Possible values:
<ul>
<li><code class="ph codeph">0</code> = WEB</li>
<li><code class="ph codeph">1</code> = MOBILE_WEB</li>
<li><code class="ph codeph">2</code> = MOBILE_APP</li>
<li><code class="ph codeph">5</code> = TOOLBAR</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">42</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">creative_width</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">smallint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The width of the
creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">43</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">creative_height</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">smallint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The height of the
creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">44</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">partition_time_millis</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">UNIX Epoch
time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The hourly
partition any record row falls into, represented as a UNIX Epoch
timestamp value (in milliseconds). Useful for defining hourly partitions
when loading into a database or data warehouse. For the Avro format,
this field is given the timestamp-millis logical type for native
timestamp detection. For example, <code
class="ph codeph">1568077200000</code> can also be represented as
<em>Tuesday, September 10, 2019 1 AM (UTC)</em>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">operating_system </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">smallint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The operating
system on which the impression occurred. Use the  <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-service.html"
class="xref" target="_blank">Operating System Service</a>  to look up
the operating system associated with the ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">46</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">browser</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">smallint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The browser in
which the impression occurred. Use the  <a
href="https://docs.xandr.com/bundle/xandr-api/page/browser-service.html"
class="xref" target="_blank">Browser Service</a>  to look up the browser
associated with the ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">47</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">language</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">smallint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The language
setting of the browser in which the impression occurred. Use the  <a
href="https://docs.xandr.com/bundle/xandr-api/page/language-service.html"
class="xref" target="_blank">Language Service</a>  to look up the
language associated with the ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">48</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">device_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">smallint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">The model of the
device on which the impression occurred. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a>  to look up the
device model associated with the ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__1">49</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__2">extended_ids</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__3">array of
messages</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__columns_curator_feed__entry__4">A list of Extended
IDs available in the auction, regardless of whether they specifically
influenced the transaction. Check the extended_ids table below for more
details.</td>
</tr>
</tbody>
</table>



**extended_ids**

<table id="ID-000019cf__table_tps_km4_3yb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000019cf__table_tps_km4_3yb__entry__1"
class="entry colsep-1 rowsep-1">Column Index</th>
<th id="ID-000019cf__table_tps_km4_3yb__entry__2"
class="entry colsep-1 rowsep-1">Column Name</th>
<th id="ID-000019cf__table_tps_km4_3yb__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000019cf__table_tps_km4_3yb__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__table_tps_km4_3yb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__table_tps_km4_3yb__entry__2">id_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__table_tps_km4_3yb__entry__3">unsigned 32 bit
int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__table_tps_km4_3yb__entry__4">The source of the
extended identifier:
<ul>
<li><code class="ph codeph">10</code> = Trade Desk ID (Unified ID
1.0)</li>
<li><code class="ph codeph">11</code> = Criteo ID</li>
<li><code class="ph codeph">12</code> = NetID</li>
<li><code class="ph codeph">13</code> = RampID</li>
<li><code class="ph codeph">15</code> = UID 2.0</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__table_tps_km4_3yb__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__table_tps_km4_3yb__entry__2">id_value</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__table_tps_km4_3yb__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000019cf__table_tps_km4_3yb__entry__4">Value of the extended
identifier (for example <code class="ph codeph">"ID0001"</code>).

Note: You will only see the value of
this field if you have been permissioned.
</td>
</tr>
</tbody>
</table>








