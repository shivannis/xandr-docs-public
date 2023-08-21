# Standard Feed

<div class="body">

The Log-Level Standard Feed provides data on your managed publishers'
and/or your managed advertisers' transacted impressions and the
resulting clicks and conversions. The feed contains one row per
transacted impression, click, or conversion. If you use impression and
click trackers, the feed will also contain one row per impression
tracker or click tracker event. For video and audio media types, the
feed will also contain one row per video/audio VAST event (see
`event_type` in the
<a href="standard-feed.html#ID-00002051__columns_standard_feed"
class="xref">Columns</a> section below for more information).  The
<span class="ph">Xandr</span> internal name for this feed
is `standard_feed`.

<div class="section">

## Sequence

The columns below are listed in the same order in which they appear in
the log-level feed file (top to bottom here, left to right in the file).

</div>

<div class="section">

## Data Visibility and "NULL" values

All columns are always included, but you can only see data about your
own transacted impressions. The "Visibility" column tells you who sees a
particular column in any given transaction (e.g., both buyers and
sellers, just buyers, or just sellers). Columns that are not visible
will be shown as "NULL." 

"NULL" may be returned in cases when:

- You are a buyer in the transaction but the field is a seller-related
  field (or vice versa).
- The seller on the impression has visibility settings that hide the
  value of that field from buyers (assuming you are a buyer in this
  transaction).
- The data is not available.

</div>

<div class="section">

## Recommended Precisions / Lengths of Data Types

In the <a href="standard-feed.html#ID-00002051__columns_standard_feed"
class="xref">Columns</a> table below, some values in the **Type** column
contain a recommended precision or length in parentheses. For example,
`string(100)` means "this string is probably (but not guaranteed to be)
less than or equal to 100 characters in length".  For integers, the
sizes are described in the
<a href="standard-feed.html#ID-00002051__integer_key_standard_feed"
class="xref">Integer Key</a> section.  For `numeric` (floating point)
data types, we recommend being able to accept a precision of (18,6),
meaning that we expect there to be a maximum total of 18 digits: 12 to
the left of the decimal point, and 6 to the right.  For `string` data
types, the recommended length of the field varies depending on the
field. See the
<a href="standard-feed.html#ID-00002051__columns_standard_feed"
class="xref">table</a> below.

<div class="note warning">

<span class="warningtitle">Warning:</span> These are Recommendations,
not Guarantees:

The data *types* are meant to be accurate as documented. However, the
recommended *precision* or *length* for a given data type should not be
read as a guarantee. For example, a string or numeric column's value may
exceed the suggested length or precision listed on this page.

The recommendations are intended to help you build your system to ingest
this data. You may need to do additional processing on the output of the
Standard Feed to make it work with your particular integration.

</div>

</div>

<div id="ID-00002051__integer_key_standard_feed" class="section">

## Integer Key

- tinyint = 1 byte (8 bit)
- smallint = 2 byte (16 bit)
- int = 4 byte (32 bit)
- bigint = 8 byte (64 bit)

</div>

<div id="ID-00002051__columns_standard_feed" class="section">

## Columns

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d3583e178" class="entry cellborder"
style="vertical-align: top">Column Index</th>
<th id="d3583e181" class="entry cellborder"
style="vertical-align: top">Column Name</th>
<th id="d3583e184" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d3583e187" class="entry cellborder"
style="vertical-align: top">Description</th>
<th id="d3583e190" class="entry cellborder"
style="vertical-align: top">Visibility</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">01</td>
<td class="entry cellborder"
headers="d3583e181 ">auction_id_64</td>
<td class="entry cellborder"
headers="d3583e184 ">bigint</td>
<td class="entry cellborder"
headers="d3583e187 ">The <span class="ph">Xandr</span> unique auction
identifier.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">02</td>
<td class="entry cellborder"
headers="d3583e181 ">date_time</td>
<td class="entry cellborder"
headers="d3583e184 ">UNIX Epoch time</td>
<td class="entry cellborder"
headers="d3583e187 ">The time and date of the event (e.g., <code
class="ph codeph">1526057561</code> which would need to be translated to
<em>Friday, May 11, 2018 4:52:41 PM (UTC)</em> ). See <a
href="standard-feed.html#ID-00002051__standard-feed-event-type"
class="xref"><code class="ph codeph">event_type</code></a> for a list of
events.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">03</td>
<td class="entry cellborder"
headers="d3583e181 ">user_tz_offset</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">The time zone of user vs. UTC. Useful for daypart
targeting.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">04</td>
<td class="entry cellborder"
headers="d3583e181 ">creative_width</td>
<td class="entry cellborder"
headers="d3583e184 ">smallint</td>
<td class="entry cellborder"
headers="d3583e187 ">The width of the creative.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">05</td>
<td class="entry cellborder"
headers="d3583e181 ">creative_height</td>
<td class="entry cellborder"
headers="d3583e184 ">smallint</td>
<td class="entry cellborder"
headers="d3583e187 ">The height of the creative.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">06</td>
<td class="entry cellborder"
headers="d3583e181 ">media_type</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">The general display style of the creative,
classified by media subtype. To map media subtype IDs to their names and
parent media types, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-subtype-service.html"
class="xref" target="_blank">Media Subtype Service</a>. For the video
media type, the value of the <code
class="ph codeph">creative_width</code> and <code
class="ph codeph">creative_height</code> columns will be <code
class="ph codeph">1</code>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">07</td>
<td class="entry cellborder"
headers="d3583e181 ">fold_position</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">The placement position relative to fold. Possible
values:
<ul>
<li><code class="ph codeph">0</code> = Unknown</li>
<li><code class="ph codeph">1</code> = Above</li>
<li><code class="ph codeph">2</code> = Below</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">08</td>
<td id="ID-00002051__standard-feed-event-type"
class="entry cellrowborder"
headers="d3583e181 ">event_type</td>
<td class="entry cellborder"
headers="d3583e184 ">enum</td>
<td class="entry cellborder"
headers="d3583e187 ">Possible values:
<ul>
<li><code class="ph codeph">imp</code> = impression</li>
<li><code class="ph codeph">click</code></li>
<li><code class="ph codeph">pc_conv</code> = Post-click conversion
associated with <span class="ph">Xandr</span>'s cookie ID.</li>
<li><code class="ph codeph">pv_conv</code> = Post-view conversion
associated with <span class="ph">Xandr</span>'s cookie ID.</li>
</ul>
<ul>
<li><code class="ph codeph">pc_ip_conv</code> = Post-click conversion
associated with IP address.</li>
<li><code class="ph codeph">pv_ip_conv</code> = Post-view conversion
associated with IP address.</li>
<li><code class="ph codeph">pc_crossdevice_conv</code> = Post-click
conversion associated with <span class="ph">Xandr</span>'s cross-device
graph.</li>
<li><code class="ph codeph">pv_crossdevice_conv</code> = Post-view
conversion associated with <span class="ph">Xandr</span>'s cross-device
graph.</li>
</ul>
<p>In addition, for VAST creatives, there are these VAST-specific
possible event types:</p>
<ul>
<li><code class="ph codeph">served</code> = VAST Creative was
served.</li>
<li><code class="ph codeph">started</code> = VAST Creative was
started.</li>
<li><code class="ph codeph">skipped</code> = VAST Creative was
skipped.</li>
<li><code class="ph codeph">error</code> = There was an error playing
the VAST creative.</li>
<li><code class="ph codeph">25_pct</code> = The VAST creative played
continuously for at least 25% of the total duration at normal
speed.</li>
<li><code class="ph codeph">50_pct</code> = The VAST creative played
continuously for at least 50% of the total duration at normal
speed.</li>
<li><code class="ph codeph">75_pct</code> = The VAST creative played
continuously for at least 75% of the duration at normal speed.</li>
<li><code class="ph codeph">100_pct</code> = The VAST creative was
played to the end at normal speed so that 100% of the creative was
played.</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">09</td>
<td class="entry cellborder"
headers="d3583e181 ">imp_type</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">The type of impression. Possible values:
<ul>
<li><code class="ph codeph">1</code> = Blank: "200 OK" response (blank)
served.</li>
<li><code class="ph codeph">2</code> = PSA: A public service
announcement served because no other creative was eligible.</li>
<li><code class="ph codeph">3</code> = Default Error: A default creative
served due to timeout issue.</li>
<li><code class="ph codeph">4</code> = Default: A default creative is
served because no campaign bid or no other creative was eligible.</li>
<li><code class="ph codeph">5</code> = Kept: Serve the creative to one
of your managed advertisers.</li>
<li><code class="ph codeph">6</code> = Resold: The impression was sold
to a third-party buyer.</li>
<li><code class="ph codeph">7</code> = RTB: Serve your creative on
third-party inventory.</li>
<li><code class="ph codeph">8</code> = PSA Error: A public service
announcement is served due to timeout issue.</li>
<li><code class="ph codeph">9</code> = External Impression: An
impression from an impression tracker.</li>
<li><code class="ph codeph">10</code> = External Click: A click from a
click tracker.</li>
<li><code class="ph codeph">11</code> = Insertion: Serve your creative
on third-party inventory where it persists across page-loads and
sessions.</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">10</td>
<td class="entry cellborder"
headers="d3583e181 ">payment_type</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">The method by which the buyer is paying for the
impression. Possible values:
<ul>
<li><code class="ph codeph">-1</code> = No payment</li>
<li><code class="ph codeph">0</code> = CPM</li>
<li><code class="ph codeph">1</code> = CPC</li>
<li><code class="ph codeph">2</code> = CPA</li>
<li><code class="ph codeph">3</code> = Owner CPM</li>
<li><code class="ph codeph">4</code> = Owner revshare</li>
<li><code class="ph codeph">5</code> = CPVM</li>
<li><code class="ph codeph">6</code> = CPCV</li>
<li><code class="ph codeph">999</code> = Unknown</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">11</td>
<td class="entry cellborder"
headers="d3583e181 ">media_cost_cpm</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">For buyers, the amount (in USD) * 1000 that a
network is paying for an impression . For sellers, the amount (in USD) *
1000 paid to publisher.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">12</td>
<td class="entry cellborder"
headers="d3583e181 ">revenue_type</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">The method by which the buyer network gets paid by
the advertiser, or how the method by which the seller network was paid
by the buyer network. Possible values:
<ul>
<li><code class="ph codeph">-1</code> = No payment</li>
<li><code class="ph codeph">0</code> = Flat CPM</li>
<li><code class="ph codeph">1</code> = Cost Plus CPM</li>
<li><code class="ph codeph">2</code> = Cost Plus Margin</li>
<li><code class="ph codeph">3</code> = CPC</li>
<li><code class="ph codeph">4</code> = CPA</li>
<li><code class="ph codeph">5</code> = Revshare</li>
<li><code class="ph codeph">6</code> = Flat Fee</li>
<li><code class="ph codeph">7</code> = Variable CPM (vcpm)</li>
<li><code class="ph codeph">8</code> = Estimated CPM (est_cpm)</li>
<li><code class="ph codeph">9</code> = Viewable CPM</li>
<li><code class="ph codeph">10</code> = Cost Per Completed Video</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">13</td>
<td class="entry cellborder"
headers="d3583e181 ">media_cost</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The gross CPM amount (in USD) paid by the buyer
(includes all deductions and price reductions).</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">14</td>
<td class="entry cellborder"
headers="d3583e181 ">buyer_bid</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">This column returns different values for buyers and
for sellers measured in CPM (in USD).
<ul>
<li>For buyers, this is the raw value submitted to the auction prior to
subtraction of fees, commissions, etc. It will be greater than or equal
to the total amount paid by the buyer (<code
class="ph codeph">buyer_spend</code>).</li>
<li>For sellers, this value is the bid that was evaluated during the
auction, after subtraction of fees, commissions, etc.</li>
<li>For managed transactions (<code class="ph codeph">imp_type</code> =
<code class="ph codeph">5</code>), <code
class="ph codeph">buyer_bid</code> will equal <code
class="ph codeph">buyer_spend</code> because bid and price reductions
are not applied.</li>
</ul>
<div class="note">
<span class="notetitle">Note:</span> The value of this column reflects
any bid reductions made for Bid Price Pacing (BPP) but does not include
reductions made for Bid Price Optimization (BPO).
</div></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">15</td>
<td class="entry cellborder"
headers="d3583e181 ">ecp</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The estimated clear price for placement tag, in
dollars unless another advertiser currency is specified.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">16</td>
<td class="entry cellborder"
headers="d3583e181 ">eap</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The estimated average price for placement tag, in
dollars unless another advertiser currency is specified.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">17</td>
<td class="entry cellborder"
headers="d3583e181 ">is_imp</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">Possible values:
<ul>
<li><code class="ph codeph">0</code> = False</li>
<li><code class="ph codeph">1</code> = True</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">18</td>
<td class="entry cellborder"
headers="d3583e181 ">is_learn</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">Possible values:
<ul>
<li><code class="ph codeph">0</code> = Base Bid</li>
<li><code class="ph codeph">1</code> = Learn</li>
<li><code class="ph codeph">2</code> = Optimized</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">19</td>
<td class="entry cellborder"
headers="d3583e181 ">predict_type_rev</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">The optimization phase of the bid. Possible values:
<ul>
<li><code class="ph codeph">-2</code> = No predict phase</li>
<li><code class="ph codeph">-1</code> = Base predict phase</li>
<li><code class="ph codeph">0</code> = Learn give up</li>
<li><code class="ph codeph">1</code> = Learn</li>
<li><code class="ph codeph">2</code> = Throttled</li>
<li><code class="ph codeph">3</code> = Optimized</li>
<li><code class="ph codeph">4</code> = Biased</li>
<li><code class="ph codeph">5</code> = Optimized 1</li>
<li><code class="ph codeph">8</code> = Optimized give up</li>
<li><code class="ph codeph">9</code> = Base bid below give up</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">20</td>
<td class="entry cellborder"
headers="d3583e181 ">user_id_64</td>
<td class="entry cellborder"
headers="d3583e184 ">bigint</td>
<td class="entry cellborder"
headers="d3583e187 ">The <span class="ph">Xandr</span> 64-bit User ID
stored in the <span class="ph">Xandr</span> cookie store.
<p>This field is <code class="ph codeph">0</code> when:</p>
<ul>
<li><span class="ph">Xandr</span> does not have a match for this user
or </li>
<li>the user's browser doesn't accept cookies or</li>
<li>you do not have a legal basis to access and process personal data
for an impression where GDPR applies.</li>
</ul>
<p>It will be <code class="ph codeph">-1</code> for
opt-out/non-consented users.</p>
<div class="note">
<span class="notetitle">Note:</span> If you received the <code
class="ph codeph">hashed_user_id_64</code> version of this field, you
will not receive the unhashed version.
</div></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">21</td>
<td class="entry cellborder"
headers="d3583e181 ">ip_address</td>
<td class="entry cellborder"
headers="d3583e184 ">string(40)</td>
<td class="entry cellborder"
headers="d3583e187 ">The IP address of user.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">22</td>
<td class="entry cellborder"
headers="d3583e181 ">ip_address_trunc</td>
<td class="entry cellborder"
headers="d3583e184 ">string(40)</td>
<td class="entry cellborder"
headers="d3583e187 ">The IP address of user with the last octet
removed.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">23</td>
<td class="entry cellborder"
headers="d3583e181 ">country</td>
<td class="entry cellborder"
headers="d3583e184 ">string(2)</td>
<td class="entry cellborder"
headers="d3583e187 ">The geographic country of the impression. Derived
from IP address of user or provided by the site associated with the
impression. Uses <a
href="http://dev.maxmind.com/geoip/legacy/codes/iso3166/" class="xref"
target="_blank">ISO 3166</a> country codes.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">24</td>
<td class="entry cellborder"
headers="d3583e181 ">region</td>
<td class="entry cellborder"
headers="d3583e184 ">string(2)</td>
<td class="entry cellborder"
headers="d3583e187 ">The geographic region of the impression. Derived
from IP address of user or provided by the site associated with the
impression. Uses ISO-3166-2 codes for US and Canadian regions, and FIPS
codes for regions in all other countries.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">25</td>
<td class="entry cellborder"
headers="d3583e181 ">operating_system</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of operating system version. To map
operating system version IDs to names, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-extended-service.html"
class="xref" target="_blank">Operating System Extended Service</a>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">26</td>
<td class="entry cellborder"
headers="d3583e181 ">browser</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the browser. To map browser IDs to names,
use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/browser-service.html"
class="xref" target="_blank">Browser Service</a>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">27</td>
<td class="entry cellborder"
headers="d3583e181 ">language</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the language. To map language IDs to
names, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/language-service.html"
class="xref" target="_blank">Language Service</a>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">28</td>
<td class="entry cellborder"
headers="d3583e181 ">venue_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The venue is a combination of domain, site, tag,
and user country which <span class="ph">Xandr</span>'s optimization
system uses to determine bid valuations.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">29</td>
<td class="entry cellborder"
headers="d3583e181 ">seller_member_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The member ID of the seller.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">30</td>
<td class="entry cellborder"
headers="d3583e181 ">publisher_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID for the publisher of the placement. Buyer
member may map the Publisher ID to a name using the <a
href="https://docs.xandr.com/bundle/xandr-api/page/inventory-resold-service.html"
class="xref" target="_blank">Inventory Resold Service</a> if the seller
has chosen to expose the publisher. Exposure to buyer depends on the
seller's visibility profile.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">31</td>
<td class="entry cellborder"
headers="d3583e181 ">site_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID for site associated with placement. Cannot
be associated with a name, except by the seller member who owns the
site. Exposure to buyer depends on the seller's visibility profile.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">32</td>
<td class="entry cellborder"
headers="d3583e181 ">site_domain</td>
<td class="entry cellborder"
headers="d3583e184 ">string(100)</td>
<td class="entry cellborder"
headers="d3583e187 ">The most granular identifier of the site that we
can offer (but not the full domain). This may be the domain of a supply
partner (e.g., <a href="http://doubleclick.com" class="xref"
target="_blank">doubleclick.com</a>), the network who owns the resold
inventory, or just "resold inventory". Exposure to buyer depends on the
seller's visibility profile settings.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">33</td>
<td class="entry cellborder"
headers="d3583e181 ">tag_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of placement tag of the impression. Cannot
be associated with a name, except by the seller member who owns the tag.
Exposure to buyer depends on the seller's visibility profile.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">34</td>
<td class="entry cellborder"
headers="d3583e181 ">external_inv_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the external inventory code passed in the
ad call and predefined by the publisher. For more details, see <a
href="https://docs.xandr.com/csh?context=52043678" class="xref"
target="_blank">External Inventory Code Service</a>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">35</td>
<td class="entry cellborder"
headers="d3583e181 ">reserve_price</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The reserve price for the placement (in USD), if
any.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">36</td>
<td class="entry cellborder"
headers="d3583e181 ">seller_revenue_cpm</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The amount (in USD) the seller is paid for the
impression. When <code class="ph codeph">revenue_type</code> is <code
class="ph codeph">3</code> (CPC) or <code class="ph codeph">4</code>
(CPA), revenue will appear in this field on the corresponding click or
conversion row (as determined by <code
class="ph codeph">event_type</code>). The revenue value will still be in
CPM, so to calculate the revenue for the specific click/conversion
event, divide by 1000.
<div class="note">
<span class="notetitle">Note:</span>
<ul>
<li>This field is also calculated for <code
class="ph codeph">imp_type = 5</code> (managed impressions). If you wish
to calculate total revenue from resold impressions, sum <code
class="ph codeph">seller_revenue_cpm</code> only for <code
class="ph codeph">imp_type = 6</code>.</li>
<li>For fixed fee line items, revenue would not be reflected accurately
in this field. Fixed fee line items allocate revenue on a one time or
daily basis and therefore, revenue is not logged at an auction
level.</li>
</ul>
</div></td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">37</td>
<td class="entry cellborder"
headers="d3583e181 ">media_buy_rev_share_pct</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The publisher revenue share or the percent of
booked revenue the seller shares with its publisher. This is a fraction
between 0 and 1. If you multiply by 100 you get the percentage
value.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">38</td>
<td class="entry cellborder"
headers="d3583e181 ">pub_rule_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID for the publisher rule, which is set up in
<span class="ph"></span> and defines how the publisher is paid.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">39</td>
<td class="entry cellborder"
headers="d3583e181 ">seller_currency</td>
<td class="entry cellborder"
headers="d3583e184 ">string(3)</td>
<td class="entry cellborder"
headers="d3583e187 ">The currency used by the seller.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">40</td>
<td class="entry cellborder"
headers="d3583e181 ">publisher_currency</td>
<td class="entry cellborder"
headers="d3583e184 ">string(3)</td>
<td class="entry cellborder"
headers="d3583e187 ">The currency in which publisher is paid.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">41</td>
<td class="entry cellborder"
headers="d3583e181 ">publisher_exchange_rate</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The exchange rate (publisher currency: USD) on the
day of the transaction.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">42</td>
<td class="entry cellborder"
headers="d3583e181 ">serving_fees_cpm</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The serving fees in addition to media costs to when
serving an ad (in USD). For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/partner-fee-service.html"
class="xref" target="_blank">Partner Fee Service</a>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">43</td>
<td class="entry cellborder"
headers="d3583e181 ">serving_fees_revshare</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The revenue share in addition to media costs when
serving an ad (in USD). For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/partner-fee-service.html"
class="xref" target="_blank">Partner Fee Service</a>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">44</td>
<td class="entry cellborder"
headers="d3583e181 ">buyer_member_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The value of this field depends on the value of the
<code class="ph codeph">imp_type</code> field. Possible values of the
<code class="ph codeph">imp_type</code> field and the affect on the
value of the <code class="ph codeph">buyer_member_id</code>  field are
listed below:
<ul>
<li>if the <code class="ph codeph">imp_type</code> field is <code
class="ph codeph">1</code> (Blank), then the <code
class="ph codeph">buyer_member_id</code> and <code
class="ph codeph">creative_id</code> is <code
class="ph codeph">0</code>.</li>
<li>if the <code class="ph codeph">imp_type</code> field is <code
class="ph codeph">2</code> (PSA), then the <code
class="ph codeph">buyer_member_id</code> field is set to the <span
class="ph">Xandr</span> PSA <code
class="ph codeph">member_id</code>.</li>
<li>if the <code class="ph codeph">imp_type</code> field is <code
class="ph codeph">3</code> (Default Error) or <code
class="ph codeph">4</code> (Default), then the <code
class="ph codeph">buyer_member_id</code> field is set to the value of
the <code class="ph codeph">seller_member_id</code>.</li>
<li>if the <code class="ph codeph">imp_type</code> field is <code
class="ph codeph">5</code> , <code class="ph codeph">6,</code> or <code
class="ph codeph">7</code>, then the <code
class="ph codeph">buyer_member_id</code> field is set to the ID of the
member who bought the impression.</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">45</td>
<td class="entry cellborder"
headers="d3583e181 ">advertiser_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the advertiser.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">46</td>
<td class="entry cellborder"
headers="d3583e181 ">brand_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID for brand of the creative.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">47</td>
<td class="entry cellborder"
headers="d3583e181 ">advertiser_frequency</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The advertiser-level frequency (times they have
seen an ad by this advertiser). The value of the advertiser frequency is
the lifetime imps for the user.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">48</td>
<td class="entry cellborder"
headers="d3583e181 ">advertiser_recency</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The advertiser-level recency in minutes (how long
it has been since the user saw an ad from this advertiser?).</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">49</td>
<td class="entry cellborder"
headers="d3583e181 ">insertion_order_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID for insertion order if used.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">50</td>
<td class="entry cellborder"
headers="d3583e181 ">line_item_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The identifier of line item.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">51</td>
<td class="entry cellborder"
headers="d3583e181 ">campaign_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the campaign.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">52</td>
<td class="entry cellborder"
headers="d3583e181 ">creative_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the creative served.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">53</td>
<td class="entry cellborder"
headers="d3583e181 ">creative_freq</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The creative-level frequency (times the user has
seen this creative by this advertiser).</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">54</td>
<td class="entry cellborder"
headers="d3583e181 ">creative_rec</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The creative-level recency in minutes (how long it
has been since the user has seen this creative ad?).</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">55</td>
<td class="entry cellborder"
headers="d3583e181 ">cadence_modifier</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The cadence modifier for the impression, which is
the number by which the bid was multiplied.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">56</td>
<td class="entry cellborder"
headers="d3583e181 ">can_convert</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">If impression has conversion pixels associated or
not.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">57</td>
<td class="entry cellborder"
headers="d3583e181 ">user_group_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">Used if advertiser separates users into groups for
purposes of A/B testing.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">58</td>
<td class="entry cellborder"
headers="d3583e181 ">is_control</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">Whether the creative served is a control creative.
<ul>
<li><code class="ph codeph">0</code> = test impression</li>
<li><code class="ph codeph">1</code> = control impression</li>
<li><code class="ph codeph">2</code> = no cookie user. (<span
class="ph">Xandr</span> does not include no cookie users to avoid
skewing the size of test and control groups).</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">59</td>
<td class="entry cellborder"
headers="d3583e181 ">control_pct</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The percentage of events (specified by <code
class="ph codeph">event_type</code>) that are control. This is set by
the network.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">60</td>
<td class="entry cellborder"
headers="d3583e181 ">control_creative_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the control creative, if a control
creative is served.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">61</td>
<td class="entry cellborder"
headers="d3583e181 ">is_click</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">Indicates if the creative was clicked. Possible
values:
<ul>
<li><code class="ph codeph">0</code> = False</li>
<li><code class="ph codeph">1</code> = True</li>
<li><code class="ph codeph">NULL</code> = No information available</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">62</td>
<td class="entry cellborder"
headers="d3583e181 ">pixel_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of conversion pixel.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">63</td>
<td class="entry cellborder"
headers="d3583e181 ">is_remarketing</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">Used to indicate that a new segment pixel is
remarketing or not.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">64</td>
<td class="entry cellborder"
headers="d3583e181 ">post_click_conv</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">Used to identify a row that is a post click
conversion. This has a maximum value of <code
class="ph codeph">1</code>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">65</td>
<td class="entry cellborder"
headers="d3583e181 ">post_view_conv</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">Used to identify a row that is a post view
conversion. This has a maximum value of <code
class="ph codeph">1</code>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">66</td>
<td class="entry cellborder"
headers="d3583e181 ">post_click_revenue</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The advertiser post click revenue (in USD).</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">67</td>
<td class="entry cellborder"
headers="d3583e181 ">post_view_revenue</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The advertiser post view revenue (in USD).</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">68</td>
<td class="entry cellborder"
headers="d3583e181 ">order_id</td>
<td class="entry cellborder"
headers="d3583e184 ">string(36)</td>
<td class="entry cellborder"
headers="d3583e187 ">An optional value passed in by buyer on conversion
pixel using the <code class="ph codeph">order_id</code> parameter.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">69</td>
<td class="entry cellborder"
headers="d3583e181 ">external_data</td>
<td class="entry cellborder"
headers="d3583e184 ">string(30)</td>
<td class="entry cellborder"
headers="d3583e187 ">An optional extra data passed in by buyer on
conversion pixel using the <code class="ph codeph">other</code>
parameter.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">70</td>
<td class="entry cellborder"
headers="d3583e181 ">pricing_type</td>
<td class="entry cellborder"
headers="d3583e184 ">string(3)</td>
<td class="entry cellborder"
headers="d3583e187 ">The line item pricing type, or how the buyer
network gets paid by the advertiser. Possible values:
<ul>
<li>cpm</li>
<li>plc (cost plus CPM)</li>
<li>plm (cost plus margin)</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">71</td>
<td class="entry cellborder"
headers="d3583e181 ">booked_revenue</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The amount (in USD) earned by network on
impression.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">72</td>
<td class="entry cellborder"
headers="d3583e181 ">booked_revenue_adv_curr</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The same amount as booked revenue dollars, but
displayed in that advertiser currency. For example, if your advertiser
pays in Euros you can see this here. Use the <code
class="ph codeph">advertiser_currency</code> field to look up the
advertiser's currency.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">73</td>
<td class="entry cellborder"
headers="d3583e181 ">commission_cpm</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">Commission (in USD) if used in <span
class="ph"></span> or API. For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/partner-fee-service.html"
class="xref" target="_blank">Partner Fee Service</a>. </td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">74</td>
<td class="entry cellborder"
headers="d3583e181 ">commission_revshare</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">Commission (in USD) if used in <span
class="ph"></span> or API. For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/partner-fee-service.html"
class="xref" target="_blank">Partner Fee Service</a>. </td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">75</td>
<td class="entry cellborder"
headers="d3583e181 ">auction_service_deduction</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The amount (in USD) deducted from the bid to pay
for auction hosting.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">76</td>
<td class="entry cellborder"
headers="d3583e181 ">auction_service_fees</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The amount (in USD) charged for purchasing
inventory from a publisher that <span class="ph">Xandr</span> does not
have a revshare agreement with.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">77</td>
<td class="entry cellborder"
headers="d3583e181 ">creative_overage_fees</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The amount (in USD) charged if the creative served
is over our size (bandwith) limit, dollar amount.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">78</td>
<td class="entry cellborder"
headers="d3583e181 ">clear_fees</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The amount (in USD) charged for facilitating the
auction for the buyer.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">79</td>
<td class="entry cellborder"
headers="d3583e181 ">buyer_currency</td>
<td class="entry cellborder"
headers="d3583e184 ">string(3)</td>
<td class="entry cellborder"
headers="d3583e187 ">The currency used by the buyer.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">80</td>
<td class="entry cellborder"
headers="d3583e181 ">advertiser_currency</td>
<td class="entry cellborder"
headers="d3583e184 ">string</td>
<td class="entry cellborder"
headers="d3583e187 ">The currency used by the advertiser.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">81</td>
<td class="entry cellborder"
headers="d3583e181 ">advertiser_exchange_rate</td>
<td class="entry cellborder"
headers="d3583e184 ">numeric</td>
<td class="entry cellborder"
headers="d3583e187 ">The exchange rate on day of event. Rate is updated
daily at 4 PM GMT. For any currency fields provided in the advertiser
currency (i.e., fields with an "<code class="ph codeph">adv_curr"</code>
suffix), use this rate to convert the value into USD.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">82</td>
<td class="entry cellborder"
headers="d3583e181 ">latitude</td>
<td class="entry cellborder"
headers="d3583e184 ">string</td>
<td class="entry cellborder"
headers="d3583e187 ">The latitude of the user's location, when GPS data
is available from a mobile device. Expressed in the format
"snn.ddd,snn.ddd", for example <code class="ph codeph">+12.345</code> or
<code class="ph codeph">-45.123</code>, where south is represented as
negative. There can be a maximum of 5 decimal places of precision.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">83</td>
<td class="entry cellborder"
headers="d3583e181 ">longitude</td>
<td class="entry cellborder"
headers="d3583e184 ">string</td>
<td class="entry cellborder"
headers="d3583e187 ">The longitude of the user's location, when GPS data
is available from a mobile device. Expressed in the format
"snn.ddd,snn.ddd", for example <code class="ph codeph">+12.345</code> or
<code class="ph codeph">-45.123</code>, where west is represented as
negative. There can be a maximum of 5 decimal places of precision.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">84</td>
<td class="entry cellborder"
headers="d3583e181 ">device_unique_id</td>
<td class="entry cellborder"
headers="d3583e184 ">string</td>
<td class="entry cellborder"
headers="d3583e187 ">The unique identifier representing the mobile
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
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">85</td>
<td class="entry cellborder"
headers="d3583e181 ">device_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The model ID of the mobile device. To map model IDs
to names, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">86</td>
<td class="entry cellborder"
headers="d3583e181 ">carrier_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the carrier associated with the mobile
device. Top map carrier IDs to names, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/carrier-service.html"
class="xref" target="_blank">Carrier Service</a>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">87</td>
<td class="entry cellborder"
headers="d3583e181 ">deal_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The Deal ID associated with this impression.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">88</td>
<td class="entry cellborder"
headers="d3583e181 ">view_result</td>
<td class="entry cellborder"
headers="d3583e184 ">enum</td>
<td class="entry cellborder"
headers="d3583e187 ">The <span class="ph">Xandr</span> viewability
measurement result of the impression. Possible values:
<ul>
<li><code class="ph codeph">0</code> = VIEW_UNKNOWN</li>
<li><code class="ph codeph">1</code> = VIEW_DETECTED</li>
<li><code class="ph codeph">2</code> = VIEW_NOT_DETECTED</li>
<li><code class="ph codeph">3</code> = VIEW_NOT_MEASURABLE</li>
<li><code class="ph codeph">-1</code> = UNKNOWN</li>
</ul>
<div class="note">
<span class="notetitle">Note:</span> For more details about viewability,
see <a
href="https://docs.xandr.com/bundle/industry-reference/page/introduction-to-viewability.html"
class="xref" target="_blank">Introduction to Viewability</a>.
</div></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">89</td>
<td class="entry cellborder"
headers="d3583e181 ">application_id</td>
<td class="entry cellborder"
headers="d3583e184 ">string</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the mobile application (if
applicable).</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller: Always  Buyer: If allowed by seller's
visibility profile</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">90</td>
<td class="entry cellborder"
headers="d3583e181 ">supply_type</td>
<td class="entry cellborder"
headers="d3583e184 ">enum</td>
<td class="entry cellborder"
headers="d3583e187 ">The type of supply. Possible values:
<ul>
<li><code class="ph codeph">0</code> = WEB</li>
<li><code class="ph codeph">1</code> = MOBILE_WEB</li>
<li><code class="ph codeph">2</code> = MOBILE_APP</li>
<li><code class="ph codeph">5</code> = TOOLBAR</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">91</td>
<td class="entry cellborder"
headers="d3583e181 ">sdk_version</td>
<td class="entry cellborder"
headers="d3583e184 ">string</td>
<td class="entry cellborder"
headers="d3583e187 ">The version of the SDK (e.g., "3.3.0",
"sdkandroid_4-0-9", "soma_ios_602").</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">92</td>
<td class="entry cellborder"
headers="d3583e181 ">ozone_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 "><strong>Deprecated</strong>. The ID of the
optimization zone.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">93</td>
<td class="entry cellborder"
headers="d3583e181 ">billing_period_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the billing period under which the
impression was served.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">94</td>
<td class="entry cellborder"
headers="d3583e181 ">view_non_measurable_reason</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The reason an impression could not be measured for
viewability. Possible values:
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
<div class="note">
<span class="notetitle">Note:</span> For more information regarding
viewability, see <a
href="https://docs.xandr.com/bundle/industry-reference/page/introduction-to-viewability.html"
class="xref" target="_blank">Introduction to Viewability</a>.
</div></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">95</td>
<td class="entry cellborder"
headers="d3583e181 ">external_uid</td>
<td class="entry cellborder"
headers="d3583e184 ">string(100)</td>
<td class="entry cellborder"
headers="d3583e187 ">Specifies a string that corresponds to an external
user ID for this user, passed in on the ad call by the seller.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">96</td>
<td class="entry cellborder"
headers="d3583e181 ">request_uuid</td>
<td class="entry cellborder"
headers="d3583e184 ">string(36)</td>
<td class="entry cellborder"
headers="d3583e187 ">Specifies a unique identifier for the request. For
single tag requests (such as <code class="ph codeph">/ttj</code>), this
is the same as <code class="ph codeph">auction_id_64</code>. For
multiple tag requests (such as with AST or some OpenRTB integrations),
represents all of the <code class="ph codeph">auction_id_64</code>
values.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">97</td>
<td class="entry cellborder"
headers="d3583e181 ">dma</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">Specifies the ID of the designated market area for
this impression. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/designated-market-area-service.html"
class="xref" target="_blank">Designated Market Area Service</a> to look
up the area associated with the ID.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">98</td>
<td class="entry cellborder"
headers="d3583e181 ">city</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the city for this impression. Derived
from IP address of user or provided by the site associated with the
impression. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/city-service.html"
class="xref" target="_blank">City Service</a> to look up the city
associated with the ID.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">99</td>
<td class="entry cellborder"
headers="d3583e181 ">mobile_app_instance_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">Specifies the ID of the mobile app instance for
this impression. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/mobile-app-instance-service.html"
class="xref" target="_blank">Mobile App Instance Service</a> to look up
the mobile app instance associated with the ID.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">100</td>
<td class="entry cellborder"
headers="d3583e181 ">traffic_source_code</td>
<td class="entry cellborder"
headers="d3583e184 ">string(100)</td>
<td class="entry cellborder"
headers="d3583e187 ">Specifies the external source of the third party
traffic for this impression.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">101</td>
<td class="entry cellborder"
headers="d3583e181 ">external_request_id</td>
<td class="entry cellborder"
headers="d3583e184 ">string(100)</td>
<td class="entry cellborder"
headers="d3583e187 ">Specifies the seller's own version of <code
class="ph codeph">request_uuid</code> or <code
class="ph codeph">auction_id_64</code> that ties the impression back to
their own data feeds.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">102</td>
<td class="entry cellborder"
headers="d3583e181 ">deal_type</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">Specifies the type of deal:
<ul>
<li><code class="ph codeph">1</code> = open auction deal</li>
<li><code class="ph codeph">2</code> = private auction deal</li>
<li><code class="ph codeph">3</code> = first look deal</li>
<li><code class="ph codeph">4</code> = programmatic guaranteed deal</li>
<li><code class="ph codeph">5</code> = curated deal</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">103</td>
<td class="entry cellborder"
headers="d3583e181 ">ym_floor_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the yield management floor that was
applied to the buyer. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/yield-management-floor-service.html"
class="xref" target="_blank">Yield Management Floor Service</a> to look
up the floor associated with the ID.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">104</td>
<td class="entry cellborder"
headers="d3583e181 ">ym_bias_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the yield management bias that was
applied to the buyer. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/yield-management-bias-service.html"
class="xref" target="_blank">Yield Management Bias Service</a> to look
up the bias associated with the ID.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">105</td>
<td class="entry cellborder"
headers="d3583e181 ">is_filtered_request</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">Specifies whether or not the event was filtered for
Inventory Quality reasons.
<ul>
<li><code class="ph codeph">0</code> = event was not filtered</li>
<li><code class="ph codeph">1</code> = event was filtered</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">106</td>
<td class="entry cellborder"
headers="d3583e181 ">age</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The age of the user, if known.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">107</td>
<td class="entry cellborder"
headers="d3583e181 ">gender</td>
<td class="entry cellborder"
headers="d3583e184 ">string(1)</td>
<td class="entry cellborder"
headers="d3583e187 ">The gender of the user, if known. Possible values
are <code class="ph codeph">u</code>, <code class="ph codeph">m</code>,
and <code class="ph codeph">f</code>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">108</td>
<td class="entry cellborder"
headers="d3583e181 ">is_exclusive</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">Specifies which types of bids were eligible to win
the auction.
<ul>
<li><code class="ph codeph">0</code> = Both managed and non-managed bids
were eligible to win.</li>
<li><code class="ph codeph">1</code> = Only managed bids were eligible
to win.</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">109</td>
<td class="entry cellborder"
headers="d3583e181 ">bid_priority</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">Specifies the campaign or line item's priority from
the bidder only when <code class="ph codeph">imp_type = 5</code>
(managed impressions). For all other <code
class="ph codeph">imp_type</code>, values defaults to <code
class="ph codeph">0</code>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">110</td>
<td class="entry cellborder"
headers="d3583e181 ">custom_model_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The <code class="ph codeph">id</code> of the custom
model used in the auction. When no custom model is used, this defaults
to <code class="ph codeph">0</code>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">111</td>
<td class="entry cellborder"
headers="d3583e181 ">custom_model_last_modified</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The date and time (in Unix Epoch time) since the
custom model that was used in the auction was last modified. If no model
was used, this defaults to <code class="ph codeph">0</code>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">112</td>
<td class="entry cellborder"
headers="d3583e181 ">custom_model_leaf_name</td>
<td class="entry cellborder"
headers="d3583e184 ">string</td>
<td class="entry cellborder"
headers="d3583e187 ">The <code class="ph codeph">leaf_name</code>
specified in the leaf that determined the winning bid. If no name is
specified, or if a model was not used, this defaults to <code
class="ph codeph">---</code>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">114</td>
<td class="entry cellborder"
headers="d3583e181 ">device_type</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The type of device. Possible values are:
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
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">115</td>
<td class="entry cellborder"
headers="d3583e181 ">postal_code</td>
<td class="entry cellborder"
headers="d3583e184 ">string</td>
<td class="entry cellborder"
headers="d3583e187 ">The postal code of the user's location. Derived
from IP address of user or provided by the site associated with the
impression. For postal codes, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/postal-code-service.html"
class="xref" target="_blank">Postal Code Service</a>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">116</td>
<td class="entry cellborder"
headers="d3583e181 ">imps_for_budget_caps_pacing</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The total number of impressions from the master
creative in page-level roadblocking.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">117</td>
<td class="entry cellborder"
headers="d3583e181 ">hashed_user_id_64</td>
<td class="entry cellborder"
headers="d3583e184 ">bytes</td>
<td class="entry cellborder"
headers="d3583e187 ">The hashed version of the <span
class="ph">Xandr</span> 64-bit User ID which will be provided as a proxy
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
<span class="notetitle">Note:</span> If you receive the <code
class="ph codeph">user_id_64</code> version of this field, you will not
receive the hashed version.
</div></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">119</td>
<td class="entry cellborder"
headers="d3583e181 ">latitude_trunc</td>
<td class="entry cellborder"
headers="d3583e184 ">string</td>
<td class="entry cellborder"
headers="d3583e187 ">The truncated latitude value (limited to 3 decimal
places) of the user's location, when GPS data is available from a mobile
device is expressed in the format "snn.ddd,snn.ddd". For example:
<ul>
<li><code class="ph codeph">+12.345</code> or</li>
<li><code class="ph codeph">-45.123</code> (where south is represented
as negative).</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">120</td>
<td class="entry cellborder"
headers="d3583e181 ">longitude_trunc</td>
<td class="entry cellborder"
headers="d3583e184 ">string</td>
<td class="entry cellborder"
headers="d3583e187 ">The truncated longitude value (limited to 3 decimal
places) of the user's location, when GPS data is available from a mobile
device is expressed in the format "snn.ddd,snn.ddd". For example:
<ul>
<li><code class="ph codeph">+12.345</code> or</li>
<li><code class="ph codeph">-45.123</code> (where west is represented as
negative).</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">121</td>
<td class="entry cellborder"
headers="d3583e181 ">partition_time_millis</td>
<td class="entry cellborder"
headers="d3583e184 ">UNIX Epoch time</td>
<td class="entry cellborder"
headers="d3583e187 ">The hourly partition any record row falls into,
represented as a UNIX Epoch timestamp value (in milliseconds). Useful
for defining hourly partitions when loading into a database or data
warehouse. For the Avro format, this field is given in the
timestamp-millis logical type for native timestamp detection. For
example, <code class="ph codeph">1568077200000</code> can also be
represented as <em>Tuesday, September 10, 2019 1 AM (UTC)</em>.</td>
<td class="entry cellborder"
headers="d3583e190 "> </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">122</td>
<td class="entry cellborder"
headers="d3583e181 ">split_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int32</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the split that purchased the impressions
in this data set. Splits are only applicable to augmented line
items.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">123</td>
<td class="entry cellborder"
headers="d3583e181 ">tc_string</td>
<td class="entry cellborder"
headers="d3583e184 ">string</td>
<td class="entry cellborder"
headers="d3583e187 ">The Transparency and Consent String represents the
IAB Transparency and Consent Framework string. The string is base-64
url-safe encoded and can be decoded using the <a
href="https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework"
class="xref" target="_blank">IAB GDPR Transparency and Consent Framework
technical specification</a>. The string contains data rights, usage, and
privacy information.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">124</td>
<td class="entry cellborder"
headers="d3583e181 ">partner_fees</td>
<td class="entry cellborder"
headers="d3583e184 ">double</td>
<td class="entry cellborder"
headers="d3583e187 ">The sum of all partner fees applied to this line
item.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">125</td>
<td class="entry cellborder"
headers="d3583e181 ">external_campaign_id</td>
<td class="entry cellborder"
headers="d3583e184 ">string</td>
<td class="entry cellborder"
headers="d3583e187 ">An optional value passed in via the <code
class="ph codeph">cid</code> field on a DSP's bid (should only appear to
sellers on resold impression rows). Since the <code
class="ph codeph">cid</code> field is optional, the <code
class="ph codeph">external_campaign_id</code> field will only have data
when the external DSPs populate it on their bid(s). See the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
class="xref" target="_blank">Open RTB specification</a> for more info on
the <code class="ph codeph">cid</code> field.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">126</td>
<td class="entry cellborder"
headers="d3583e181 ">playback_method</td>
<td class="entry cellborder"
headers="d3583e184 ">enum</td>
<td class="entry cellborder"
headers="d3583e187 ">The type of initiation method. Possible values:
<ul>
<li><code class="ph codeph">0</code> = Unknown</li>
<li><code class="ph codeph">1</code> = Auto-play, sound on</li>
<li><code class="ph codeph">2</code> = Auto-play, sound off</li>
<li><code class="ph codeph">3</code> = Click-to-play</li>
<li><code class="ph codeph">4</code> = Mouse-over</li>
<li><code class="ph codeph">5</code> = Auto-play, sound unknown</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">127</td>
<td class="entry cellborder"
headers="d3583e181 ">video_context</td>
<td class="entry cellborder"
headers="d3583e184 ">enum</td>
<td class="entry cellborder"
headers="d3583e187 ">The type of context. Possible values:
<ul>
<li><code class="ph codeph">0</code> = Unknown</li>
<li><code class="ph codeph">1</code> = Pre-Roll</li>
<li><code class="ph codeph">2</code> = Mid-Roll</li>
<li><code class="ph codeph">3</code> = Post-Roll</li>
<li><code class="ph codeph">4</code> = Outstream</li>
<li><code class="ph codeph">5</code> = Bannerstream</li>
<li><code class="ph codeph">6</code> = In-feed</li>
<li><code class="ph codeph">7</code> = Interstitial</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">128</td>
<td class="entry cellborder"
headers="d3583e181 ">player_size_id</td>
<td class="entry cellborder"
headers="d3583e184 ">tinyint</td>
<td class="entry cellborder"
headers="d3583e187 ">The size of the video player. Possible values:
<ul>
<li><code class="ph codeph">0</code> = Unknown</li>
<li><code class="ph codeph">1</code> = Small</li>
<li><code class="ph codeph">2</code> = Medium</li>
<li><code class="ph codeph">3</code> = Large</li>
</ul></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">129</td>
<td class="entry cellborder"
headers="d3583e181 ">error_code</td>
<td class="entry cellborder"
headers="d3583e184 ">int</td>
<td class="entry cellborder"
headers="d3583e187 ">The VAST error code. For a detailed description of
VAST error codes and their meanings, see the <a
href="https://iabtechlab.com/wp-content/uploads/2018/11/VAST4.1-final-Nov-8-2018.pdf"
class="xref" target="_blank">IAB's VAST 4.0 documentation</a> or refer
to the list of VAST error codes below.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">130</td>
<td class="entry cellborder"
headers="d3583e181 ">personal_identifiers</td>
<td class="entry cellborder"
headers="d3583e184 ">array of messages</td>
<td class="entry cellborder"
headers="d3583e187 "><strong>Deprecated</strong>. Please <strong>DO
NOT</strong> use this parameter and use <code
class="ph codeph">extended_ids</code> listed below.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">131</td>
<td class="entry cellborder"
headers="d3583e181 ">device_make_id </td>
<td class="entry cellborder"
headers="d3583e184 ">int32</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the device make, which is generally the
manufacturer of the device (e.g., Samsung). To map device make IDs to
names, use the  <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">132</td>
<td class="entry cellborder"
headers="d3583e181 ">postal_code_ext</td>
<td class="entry cellborder"
headers="d3583e184 ">string</td>
<td class="entry cellborder"
headers="d3583e187 ">United States only. The 9 digital U.S. postal code
of the user’s location, in the format <code
class="ph codeph">12345-1234</code>.  Derived from the IP address of the
user or provided by the site associated with the impression. For postal
codes, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/postal-code-service.html"
class="xref" target="_blank">Postal Code Service</a>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">133</td>
<td class="entry cellborder"
headers="d3583e181 ">extended_ids</td>
<td class="entry cellborder"
headers="d3583e184 ">array of messages</td>
<td class="entry cellborder"
headers="d3583e187 ">A list of Extended IDs (<code
class="ph codeph">eids</code>) available in the auction, regardless of
whether they specifically influenced the transaction.
<div class="p">
<div class="tablenoborder">
<table id="ID-00002051__table_qbm_mxr_4wb" class="table"
data-cellpadding="4" data-cellspacing="0" data-summary=""
data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col />
<col />
<col />
<col />
</colgroup>
<thead class="thead">
<tr class="header ">
<th id="d3583e3819" class="entry cellborder"
style="vertical-align: top">Column Index</th>
<th id="d3583e3822" class="entry cellborder"
style="vertical-align: top">Column Name</th>
<th id="d3583e3825" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d3583e3828" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e3819 ">1</td>
<td class="entry cellborder"
headers="d3583e3822 ">id_type</td>
<td class="entry cellborder"
headers="d3583e3825 ">unsigned 32 bit int</td>
<td class="entry cellborder"
headers="d3583e3828 ">The source of the identifier:
<ul>
<li><code class="ph codeph">10</code> = Trade Desk ID (Unified ID
1.0)</li>
<li><code class="ph codeph">11</code> = Criteo ID</li>
<li><code class="ph codeph">12</code> = NetID</li>
<li><code class="ph codeph">13</code> = RampID</li>
<li><code class="ph codeph">15</code> = UID 2.0</li>
<li><code class="ph codeph">16</code> = Oztam</li>
<li><code class="ph codeph">99x</code> = Member-defined</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e3819 ">2</td>
<td class="entry cellborder"
headers="d3583e3822 ">id_value</td>
<td class="entry cellborder"
headers="d3583e3825 ">string</td>
<td class="entry cellborder"
headers="d3583e3828 ">Value of the identifier. For example, <code
class="ph codeph">"ID0001"</code>.
<div id="ID-00002051__note_m2g_vxr_4wb" class="note">
<span class="notetitle">Note:</span> You will only see the value of this
field if you have been permissioned.
</div></td>
</tr>
</tbody>
</table>
</div>
</div></td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">134</td>
<td class="entry cellborder"
headers="d3583e181 ">segment_data_costs</td>
<td class="entry cellborder"
headers="d3583e184 ">optional double</td>
<td class="entry cellborder"
headers="d3583e187 "><strong>Unit:</strong> <code
class="ph codeph">microcents</code>
<pre id="ID-00002051__codeblock-55d37a9e-1e5a-4439-b5da-888d7365a3a7"
class="pre codeblock"><code>1 microcent is equivalent to 1E-8 dollars.
For Example : 200 microcent = 200/100000000 = 0.000002 dollar</code></pre>
<p>This includes all costs related to usage of segments in the data
marketplace. Applicable when specific segments are applied in line items
and associated pricing is displayed in the platform.</p></td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">135</td>
<td class="entry cellborder"
headers="d3583e181 ">feature_costs</td>
<td class="entry cellborder"
headers="d3583e184 ">optional double</td>
<td class="entry cellborder"
headers="d3583e187 "><p><strong>Unit:</strong> <code
class="ph codeph">microcents</code></p>
<div id="ID-00002051__p-661b01c2-72f5-406f-9916-3e92c5845dcd" class="p">
<pre id="ID-00002051__codeblock-214686dd-d8a7-4d86-bef3-cbc19214a4e5"
class="pre codeblock"><code>1 microcent is equivalent to 1E-8 dollars.
For Example : 200 microcent = 200/100000000 = 0.000002 dollar</code></pre>
</div>
These are costs incurred when using a platform feature such as
cross-device.</td>
<td class="entry cellborder"
headers="d3583e190 ">Buyer</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e178 ">136</td>
<td class="entry cellborder"
headers="d3583e181 ">fallback_ad_index</td>
<td class="entry cellborder"
headers="d3583e184 ">optional int</td>
<td class="entry cellborder"
headers="d3583e187 ">Fallback occurs when multiple SSPs get the
opportunity to return a video creative and their responses are evaluated
in a waterfall hierarchy. Default value is <code
class="ph codeph">-1</code>.</td>
<td class="entry cellborder"
headers="d3583e190 ">Seller</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e178 ">137</td>
<td class="entry cellborder"
headers="d3583e181 ">region_id</td>
<td class="entry cellborder"
headers="d3583e184 ">int32</td>
<td class="entry cellborder"
headers="d3583e187 ">The ID of the region. To map region IDs to names,
use the Region Service.</td>
<td class="entry cellborder"
headers="d3583e190 ">Both</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## VAST Error Codes (for video or audio creatives only) 

The table below shows a complete list of VAST error codes and their
meanings. 

<div class="note">

<span class="notetitle">Note:</span> You may receive error codes in the
feed that are not present in the list below. If you do, those error
codes are generally non-VAST-compliant custom codes sent from the video
player.

</div>

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d3583e4033" class="entry cellborder"
style="vertical-align: top">Error Codes</th>
<th id="d3583e4036" class="entry cellborder"
style="vertical-align: top">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">100</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">XML parsing error.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">101</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">VAST schema validation error.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">102</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">VAST version of response not supported.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">200</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Trafficking error. Video player received an ad
type that it was not expecting and/or cannot display.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">201</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Video player expecting different linearity.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">202</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Video player expecting different duration.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">203</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Video player expecting different size.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">300</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">General Wrapper error.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">301</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Timeout of VAST URI provided in Wrapper element,
or of VAST URI provided in a subsequent Wrapper element. Includes
request errors such as invalid URI, unreachable or request timeout for
URI, and security or other exceptions related to requesting a VAST
URI.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">302</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Wrapper limit reached, as defined by the video
player. Too many Wrapper responses have been received with no InLine
response.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">303</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">No ads VAST response after one or more Wrappers.
Also includes number of empty VAST responses from fallback.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">400</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">General linear error. Video player is unable to
display the linear ad.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">401</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">File not found. Unable to find Linear/MediaFile
from URI.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">402</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Timeout of MediaFile URI.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">403</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Could not find MediaFile that is supported by this
video player, based on the attributes of the MediaFile element.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">405</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Problem displaying MediaFile.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">500</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">General NonLinearAds error.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">501</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Unable to display NonLinear Ad because creative
dimensions do not align with creative display area (i.e., creative
dimension too large).</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">502</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Unable to fetch NonLinearAds/NonLinear
resource.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">503</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Could not find NonLinear resource with supported
type.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">600</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">General CompanionAds error.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">601</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Unable to display companion because creative
dimensions do not fit within Companion display area (i.e., no available
space).</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">602</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Unable to display Required Companion.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">603</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Unable to fetch CompanionAds/Companion
resource.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">604</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Could not find Companion resource with supported
type.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">900</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">Undefined error.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d3583e4033 "><code class="ph codeph">901</code></td>
<td class="entry cellborder"
headers="d3583e4036 ">General VPAID error.</td>
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
