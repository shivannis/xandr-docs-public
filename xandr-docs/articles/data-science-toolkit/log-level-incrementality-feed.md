---
Title : Log-Level Incrementality Feed
Description : The Log-Level Incrementality Feed provides data on impressions shown to an audience randomly split between a test group (the group exposed to
ads) and control group (the group not exposed to ads). The test uses the
ms.custom : data-science
---


# Log-Level Incrementality Feed



The Log-Level Incrementality Feed provides data on impressions shown to
an audience randomly split between a test group (the group exposed to
ads) and control group (the group not exposed to ads). The test uses the
same targeting and bidding approach for each group so that advertisers
can analyze the revenue driven by users from each group to determine
incremental lift from users exposed to ads. The feed contains one row
per impression.



## Incrementality in Console UI (Required)

1.  In Xandr's UI, go
    to Line Item \>
    Basic Setup \>
    Incrementality and select
    “Use control group”.
2.  Assign a key and a percentage of traffic to assign to the control
    group.





## Sequence

The <a
href="log-level-incrementality-feed.html#ID-00002cb2__columns_log_level_incrementality_feed"
class="xref">Columns</a> below are listed in the same order in which
they appear in the log-level feed file (top to bottom here, left to
right in the file).





## Data Visibility and "NULL" Values

All columns are always included, but you can only see data for which you
have permission. Columns that are not visible will be shown as "NULL".

"NULL`"` may be returned in cases when:

- The seller on the impression has visibility settings that hide the
  value of that field from buyers (assuming you are a buyer in this
  transaction).
- The data is not available.





## Recommended Precisions / Lengths of Data Types

In the <a
href="log-level-incrementality-feed.html#ID-00002cb2__columns_log_level_incrementality_feed"
class="xref">Columns</a> table below, some values in the Type column
contain a recommended precision or length in parentheses. For
example, `string(100)` means "this string is probably (but not
guaranteed to be) less than or equal to 100 characters in length".

For integers, the sizes are described in the <a
href="log-level-incrementality-feed.html#ID-00002cb2__integer_key_log_level_incrementality_feed"
class="xref">Integer Key</a> section.

For `numeric` (floating point) data types, we recommend being able to
accept a precision of (18,6), meaning that we expect there to be a
maximum total of 18 digits: 12 to the left of the decimal point, and 6
to the right.

For `string` data types, the recommended length of the field varies
depending on the field. See the table below.



<b>Note:</b> These are Recommendations, not
Guarantees

The data types are meant to be accurate as documented. However, the
recommended precision or length for a given data type should not be read
as a guarantee. For example, a string or numeric column's value may
exceed the suggested length or precision listed on this page.

The recommendations are intended to help you build your system to ingest
this data. You may need to do additional processing on the output of the
Standard Feed to make it work with your particular integration.





>

## Integer Key

- tinyint = 1 byte (8 bit)
- smallint = 2 byte (16 bit)
- int = 4 byte (32 bit)
- bigint = 8 byte (64 bit)



>

## Columns

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002cb2__columns_log_level_incrementality_feed__entry__1"
class="entry colsep-1 rowsep-1">Column Index</th>
<th id="ID-00002cb2__columns_log_level_incrementality_feed__entry__2"
class="entry colsep-1 rowsep-1">Column Name</th>
<th id="ID-00002cb2__columns_log_level_incrementality_feed__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002cb2__columns_log_level_incrementality_feed__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">01</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">date_time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">UNIX
Epoch time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
time and date of the impression (e.g., <code
class="ph codeph">1526057561</code> which would need to be translated to
<em>Friday, May 11, 2018 4:52:41 PM (UTC)</em>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">02</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">auction_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">bigint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
Xandr unique auction identifier.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">03</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">price</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric
(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
dollar amount * 1000 that a network is paying for an impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">04</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
member ID of the buyer.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">05</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
ID of the advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">06</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">campaign_group_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
ID of line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">07</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
ID of the campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">08</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
ID of the creative served.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">09</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">creative_freq</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
creative-level frequency (times the user has seen this creative).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">10</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">creative_rec</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
creative-level recency in minutes (how long it has been since the user
has seen this creative ad).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">11</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">advertiser_freq</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
advertiser-level frequency (times the user has seen a creative by this
advertiser).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">12</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">advertiser_rec</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
creative-level recency in minutes (how long it has been since the user
has seen a creative ad by this advertiser).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">13</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">is_remarketing</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">tinyint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">Indicates
that a new segment pixel is for remarketing.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">14</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">user_group_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
group ID, if the advertiser separates users into groups for purposes of
A/B testing.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">15</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">media_buy_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric
(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
dollar amount * 1000 that a network is paying for an impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">16</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">is_default</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">Indicates
that a default creative served.<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">17</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">pub_rule_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
ID for the publisher rule, which is set up in 
and defines how the publisher is paid.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">18</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">media_buy_rev_share_pct</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
publisher revenue share or the percent of booked revenue the seller
shares with its publisher. This is a fraction between 0 and 1. If you
multiply by 100, you get the percentage value.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">19</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">pricing_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">string(3)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
line item pricing type, or how the buyer network gets paid by the
advertiser (e.g. cpm, cpc).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">20</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">can_convert</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">tinyint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">Indicates
that conversion pixels associated are associated with the
impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">22</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">control_pct</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
percentage of traffic sent to the control group.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">23</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">control_creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
ID of the creative served to the control group.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">24</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">cadence_modifier</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
cadence modifier for the impression, which is the number by which the
bid was multiplied.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">25</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">advertiser_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
currency used by advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">26</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">advertiser_exchange_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
exchange rate on day of event. Rate is updated daily at 4 PM GMT.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">27</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
ID for insertion order, if used.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">28</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">predict_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">tinyint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
optimization phase of the bid. Possible values:
<ul>
<li><code class="ph codeph">-2</code> = No predict phase</li>
<li><code class="ph codeph">-1</code> = Base predict phase</li>
<li><code class="ph codeph">0</code> = Learn giveup</li>
<li><code class="ph codeph">1</code> = Learn</li>
<li><code class="ph codeph">2</code> = Throttled</li>
<li><code class="ph codeph">3</code> = Optimized</li>
<li><code class="ph codeph">4</code> = Biased</li>
<li><code class="ph codeph">5</code> = Optimized 1</li>
<li><code class="ph codeph">8</code> = Optimized giveup</li>
<li><code class="ph codeph">9</code> = Base bid below giveup</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">29</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">predict_type_goal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
goal amount of the specified predict type.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">30</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">revenue_value_dollars</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
dollar amount earned by network on impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">31</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">revenue_value_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
dollar amount earned on impression, displayed in your advertiser
currency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">32</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">commission_cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">Specifies
the commission in cpm, if used.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">33</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">commission_revshare</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">Specifies
the commission in revenue share, if used.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">34</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">serving_fees_cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
serving fees in addition to media costs to when serving an ad.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">35</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">serving_fees_revshare</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
serving fees in addition to revenue sharing when serving an ad.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">36</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">publisher_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">string(3)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
currency in which publisher is paid.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">37</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">publisher_exchange_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
exchange rate (publisher currency: USD) on the day of the
transaction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">38</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">payment_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">tinyint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
method by which the buyer is paying for the impression. Possible values:
<ul>
<li><code class="ph codeph">-1</code> = No payment</li>
<li><code class="ph codeph">0</code> = CPM</li>
<li><code class="ph codeph">1</code> = CPC</li>
<li><code class="ph codeph">2</code> = CPA</li>
<li><code class="ph codeph">3</code> = Owner CPM</li>
<li><code class="ph codeph">4</code> = Owner revshare</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">39</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">payment_value</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
amount paid for the impression using the specified payment type.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">40</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">creative_group_freq</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
creative-group-level frequency (times the user has seen this creative
group).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">41</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">creative_group_rec</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
creative-group-level recency (how long it has been since the user has
seen this creative group).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">42</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">revenue_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">tinyint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
method by which the buyer network gets paid by the advertiser, or how
the method by which the seller network was paid by the buyer network.
Possible values:<br />
&#10;<ul>
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
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">43</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">apply_cost_on_default</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">Indicates
whether to apply cost on default creatives.<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">44</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">instance_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">Specifies
the ID of the mobile app instance for this impression. Use the  <a
href="xandr-api/mobile-app-instance-service.md"
class="xref" target="_blank">Mobile App Instance Service</a>  to look up
the mobile app instance associated with the ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">vp_expose_gender</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">bool</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">Indicates
whether gender is exposed. <br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">46</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">targeted_segments</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
IDs of the targeted segment pixels.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">47</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">ttl</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
time to live (TTL) of the segment pixels.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">48</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">auction_timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">UNIX
Epoch time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
time and date of the impression (e.g., <code
class="ph codeph">1526057561</code> which would need to be translated to
<em>Friday, May 11, 2018 4:52:41 PM (UTC)</em>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">49</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">data_costs</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">Total
data costs the buyer paid for the given impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">50</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">targeted_segment_list</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
IDs of the targeted segment pixels.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">51</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">campaign_group_freq</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
line-item-level frequency (how often the user has seen an ad from this
line item).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">52</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">campaign_group_rec</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
line-item-level recency in minutes (how long it has been since the user
has seen an ad from this line item).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">53</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">insertion_order_freq</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
insertion-order-level frequency (how often the user has seen an ad from
this insertion order).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">54</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">insertion_order_rec</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
insertion-order-level recency in minutes (how long it has been since the
user has seen an ad from this insertion order).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">55</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">buyer_gender</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">string(1)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
gender of the user, if known. Possible values are "u", "m", and
"f".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">56</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">buyer_age</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">Age
of the user, if known.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">57</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">custom_model_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
ID of the custom model used in the auction. When no custom model is
used, this defaults to <code class="ph codeph">0</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">58</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">custom_model_last_modified</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
date and time (in Unix Epoch time) since the custom model that was used
in the auction was last modified. If no model was used, this defaults to
<code class="ph codeph">0</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">59</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">custom_model_output_code</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">string(7)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">An
optional string value that will be passed through to logs and reporting
to aid with debugging and performance analysis. <code
class="ph codeph">custom_model_output_code</code> may be up to seven
ASCII (7-bit) characters and is not required to be unique.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">60</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">bid_priority</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">Specifies
the campaign or line item's priority for the managed impressions only.
For all other impressions, defaults to <code
class="ph codeph">0</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">61</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">is_control</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">tinyint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">Indicates
whether the creative served is a control creative.
<ul>
<li><code class="ph codeph">0</code> = test impression</li>
<li><code class="ph codeph">1</code> = control impression</li>
<li><code class="ph codeph">2</code> = no cookie user. (<span
class="ph">Xandr does not include no cookie users to avoid
skewing the size of test and control groups).</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">62</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">site_domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">string(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
most granular identifier of the site available to buyers (This may be
the domain of a supply partner, ex: <a href="https://doubleclick.com/"
class="xref" target="_blank">doubleclick.com</a>; network who owns
resold inventory; or it may just say 'resold inventory'). Exposure to
buyer depends on the seller's visibility profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">63</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">eap</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
estimated average price for placement tag, in dollars unless another
advertiser currency is specified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">ecp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
estimated clear price for placement tag, in dollars unless another
advertiser currency is specified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">65</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">bigint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
Xandr 64-bit User ID stored in the <span
class="ph">Xandr cookie store. This field is <code
class="ph codeph">0</code> when Xandr does not
have a match for this user or the user's browser doesn't accept cookies.
It will be <code class="ph codeph">-1</code> for opt-out users.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">66</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">predicted_engagement_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">Percentage
calculated to predict how likely the impression is to be viewable.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">67</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
member ID of the seller.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">68</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">bidder_auction_rank</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
hypothetical ordered rank of the current bid, calculated by the bidder
in comparison with other bids sent back to Impression Bus. The top bid
is auction rank 0 (0-indexed).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">69</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">hashed_user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">bytes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
user ID represented as a 64-bit hashed value.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">70</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">partition_time_millis</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">UNIX
Epoch time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4">The
hourly partition any record row falls into, represented as a UNIX Epoch
timestamp value (in milliseconds). Useful for defining hourly partitions
when loading into a database or data warehouse. For the Avro format,
this field is given the timestamp-millis logical type for native
timestamp detection. For example, <code
class="ph codeph">1568077200000</code> can also be represented
as <em>Tuesday, September 10, 2019 1 AM (UTC)</em>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">71</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">device_unique_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4"><div
class="note note_note">
<b>Note:</b> This field will only be populated
for clients who have signed a contract addendum.  For more information,
please contact your Xandr Account Manager.

<p>The unique identifier representing the mobile device. The numeric
prefix indicates the type of unique device identifier:</p>
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
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__1">72</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__2">ip_address</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002cb2__columns_log_level_incrementality_feed__entry__4"><div
class="note note_note">
<b>Note:</b> This field will only be populated
for clients who have signed a contract addendum.  For more information,
please contact your Xandr Account Manager.

<p>The IP address of user.</p></td>
</tr>
</tbody>
</table>





<a href="incrementality.md" class="link">Incrementality</a>






