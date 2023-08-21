# Bid Landscape Feed

<div class="body">

<div class="note">

<span class="notetitle">Note:</span> This feed is not available to Xandr
Invest clients.

</div>

The Log-Level Bid Landscape Feed helps you gain insight into the demand
for your inventory based on auctions involving a randomly selected set
of 1% of the users on our platform. This feed contains the top fifteen
bids, with one row per bid. This includes the winning bid. Please note
that the winning bid may or may not have been the highest bid due to
your ad quality or yield management settings.

<div class="note">

<span class="notetitle">Note:</span> Each user is randomly and evenly
assigned to one of the 1000 separate user groups; once assigned to a
group, a user stays in that group. This log covers auctions for users
with a `user_group_id` that is less than or equal to 10. We track the
timestamp and auction ID for each.

</div>

The <span class="ph">Xandr</span> internal name for this feed
is `bid_landscape_feed`.

<div class="section">

## Scope

Both eligible and ineligible bids from external bidders are covered by
this feed, but only eligible bids from <span class="ph">Xandr</span>'s
bidder are covered. This is because bids from external bidders are
checked against the seller's ad quality settings after the bids are
sent, whereas bids from <span class="ph">Xandr</span>'s bidder
(`bidder_id` 2) are checked against the seller's ad quality settings
before the bids are sent. Therefore, bids reported for `bidder_id` 2
will always have been eligible and will usually be shown with
`bid_reject_reason` 0.

</div>

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
<th id="d21156e126" class="entry cellborder"
style="vertical-align: top">Column Index</th>
<th id="d21156e129" class="entry cellborder"
style="vertical-align: top">Column Name</th>
<th id="d21156e132" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d21156e135" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">01</td>
<td class="entry cellborder"
headers="d21156e129 ">date_time</td>
<td class="entry cellborder"
headers="d21156e132 ">UNIX Epoch time</td>
<td class="entry cellborder"
headers="d21156e135 ">The date and time of the bid (e.g., <code
class="ph codeph">1526057561</code> which would need to be translated to
<em>Friday, May 11, 2018 4:52:41 PM (UTC)</em> ).</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">02</td>
<td class="entry cellborder"
headers="d21156e129 ">auction_id_64</td>
<td class="entry cellborder"
headers="d21156e132 ">bigint</td>
<td class="entry cellborder"
headers="d21156e135 ">The ID of the <span class="ph">Xandr</span>
auction that included the bid.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">03</td>
<td class="entry cellborder"
headers="d21156e129 ">user_id_64</td>
<td class="entry cellborder"
headers="d21156e132 ">bigint</td>
<td class="entry cellborder"
headers="d21156e135 ">The ID of the user associated with the bid.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">04</td>
<td class="entry cellborder"
headers="d21156e129 ">brand_id</td>
<td class="entry cellborder"
headers="d21156e132 ">int</td>
<td class="entry cellborder"
headers="d21156e135 ">The ID of the brand for the creative that was
bid.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">05</td>
<td class="entry cellborder"
headers="d21156e129 ">creative_id</td>
<td class="entry cellborder"
headers="d21156e132 ">int</td>
<td class="entry cellborder"
headers="d21156e135 ">The ID of the creative that was bid.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">06</td>
<td class="entry cellborder"
headers="d21156e129 ">actual_bid_price</td>
<td class="entry cellborder"
headers="d21156e132 ">numeric</td>
<td class="entry cellborder"
headers="d21156e135 ">The actual price of the bid (in USD), net of <span
class="ph">Xandr</span> fees.
<p>For fixed price deals, this field will contain the value that was
used for price ranking in the auction. Buyer bid price will be in <code
class="ph codeph">raw_net_bid_price</code>.</p></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">07</td>
<td class="entry cellborder"
headers="d21156e129 ">biased_bid_price</td>
<td class="entry cellborder"
headers="d21156e132 ">numeric</td>
<td class="entry cellborder"
headers="d21156e135 ">The biased price of the bid (in USD), if yield
management biases were applied to the buyer.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">08</td>
<td class="entry cellborder"
headers="d21156e129 ">bid_reject_reason</td>
<td class="entry cellborder"
headers="d21156e132 ">tinyint</td>
<td class="entry cellborder"
headers="d21156e135 ">The reason that the bid was rejected. See <a
href="bid-landscape-feed.html#ID-00000a8c__bid_reject_codes"
class="xref">Bid Reject Codes</a> below.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">09</td>
<td class="entry cellborder"
headers="d21156e129 ">ym_floor_id</td>
<td class="entry cellborder"
headers="d21156e132 ">int</td>
<td class="entry cellborder"
headers="d21156e135 ">The ID of the yield management floor that was
applied to the buyer, if any.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">10</td>
<td class="entry cellborder"
headers="d21156e129 ">ym_bias_id</td>
<td class="entry cellborder"
headers="d21156e132 ">int</td>
<td class="entry cellborder"
headers="d21156e135 ">The ID of the yield management bias that was
applied to the buyer, if any.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">11</td>
<td class="entry cellborder"
headers="d21156e129 ">bidder_id</td>
<td class="entry cellborder"
headers="d21156e132 ">int</td>
<td class="entry cellborder"
headers="d21156e135 ">The ID of the bidder.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">12</td>
<td class="entry cellborder"
headers="d21156e129 ">buyer_member_id</td>
<td class="entry cellborder"
headers="d21156e132 ">int</td>
<td class="entry cellborder"
headers="d21156e135 ">The ID of the buying member.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">13</td>
<td class="entry cellborder"
headers="d21156e129 ">seller_member_id</td>
<td class="entry cellborder"
headers="d21156e132 ">int</td>
<td class="entry cellborder"
headers="d21156e135 ">The ID of the selling member.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">14</td>
<td class="entry cellborder"
headers="d21156e129 ">total_bid_modifier</td>
<td class="entry cellborder"
headers="d21156e132 ">numeric</td>
<td class="entry cellborder"
headers="d21156e135 ">The total amount added to or deducted from the bid
due to yield management biases and/or modifiers, if any.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">15</td>
<td class="entry cellborder"
headers="d21156e129 ">exclusivity_level</td>
<td class="entry cellborder"
headers="d21156e132 ">tinyint</td>
<td class="entry cellborder"
headers="d21156e135 ">When the impbus determines the winning bid for the
auction, bids with higher values get precedence over bids with lower
values. Sellers can use this information to run auction simulations.
Allowed values:
<ul>
<li><code class="ph codeph">0</code> = Learn bid on a non-prefer learn
impression or give up bid</li>
<li><code class="ph codeph">1</code> = Non exclusive</li>
<li><code class="ph codeph">2</code> = Exclusive</li>
<li><code class="ph codeph">3</code> = Learn bid on a prefer-learn
impression</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">16</td>
<td class="entry cellborder"
headers="d21156e129 ">ym_auction_tier_id</td>
<td class="entry cellborder"
headers="d21156e132 ">int</td>
<td class="entry cellborder"
headers="d21156e135 ">If applicable, the ID of the Yield Management
Auction Tier into which this bid was categorized. Tiers have a priority,
and bids in tiers of higher priority get preference over bids in tiers
of lower priority. Sellers can use this information to run auction
simulations. For more information, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/yield-management-auction-tier-service.html"
class="xref" target="_blank">Yield Management Auction Tier
Service</a>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">17</td>
<td class="entry cellborder"
headers="d21156e129 ">hard_floor</td>
<td class="entry cellborder"
headers="d21156e132 ">numeric</td>
<td class="entry cellborder"
headers="d21156e135 ">The hard floor specified in the seller's <a
href="https://docs.xandr.com/bundle/xandr-api/page/yield-management-profile-service.html"
class="xref" target="_blank">Yield Management Profile</a>, in the
currency set by the publisher. Defaults to <code
class="ph codeph">0</code> if there was no hard floor on the Yield
Management profile.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">18</td>
<td class="entry cellborder"
headers="d21156e129 ">modified_hard_floor</td>
<td class="entry cellborder"
headers="d21156e132 ">numeric</td>
<td class="entry cellborder"
headers="d21156e135 ">The floor actually applied in the auction in USD.
This can differ from the value of <code
class="ph codeph">hard_floor</code> due to floor optimization and floor
modifiers. Defaults to <code class="ph codeph">0</code> if there was no
hard floor applied in the auction.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">19</td>
<td class="entry cellborder"
headers="d21156e129 ">soft_floor</td>
<td class="entry cellborder"
headers="d21156e132 ">numeric</td>
<td class="entry cellborder"
headers="d21156e135 ">The soft floor (in the seller's local currency)
specified in the seller's <a
href="https://docs.xandr.com/bundle/xandr-api/page/yield-management-profile-service.html"
class="xref" target="_blank">Yield Management Profile</a>. Defaults to
<code class="ph codeph">0</code> if there was no soft floor on the Yield
Management profile.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">20</td>
<td class="entry cellborder"
headers="d21156e129 ">modified_soft_floor</td>
<td class="entry cellborder"
headers="d21156e132 ">numeric</td>
<td class="entry cellborder"
headers="d21156e135 ">The soft floor (in USD) that is actually supplied
in the auction. This can differ from the value in <code
class="ph codeph">soft_floor</code> due to floor optimization and floor
modifiers. Defaults to <code class="ph codeph">0</code> if there was no
soft floor applied in the auction.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">21</td>
<td class="entry cellborder"
headers="d21156e129 ">bid_payment_type</td>
<td class="entry cellborder"
headers="d21156e132 ">tinyint</td>
<td class="entry cellborder"
headers="d21156e135 ">How the buyer was to have paid for the impression:
<ul>
<li><code class="ph codeph">0</code> = CPM</li>
<li><code class="ph codeph">1</code> = CPC or CPA</li>
</ul>
<p>Defaults to <code class="ph codeph">0</code>.</p></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">22</td>
<td class="entry cellborder"
headers="d21156e129 ">is_winning_bid</td>
<td class="entry cellborder"
headers="d21156e132 ">tinyint</td>
<td class="entry cellborder"
headers="d21156e135 ">Whether this bid won the impression:
<ul>
<li><code class="ph codeph">0</code> = no</li>
<li><code class="ph codeph">1</code> = yes</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">23</td>
<td class="entry cellborder"
headers="d21156e129 ">deal_id</td>
<td class="entry cellborder"
headers="d21156e132 ">int</td>
<td class="entry cellborder"
headers="d21156e135 ">The ID of the <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-service.html"
class="xref" target="_blank">deal</a> that was used to coordinate this
bid on your inventory. Defaults to <code class="ph codeph">0</code> if
no deal was used.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">24</td>
<td class="entry cellborder"
headers="d21156e129 ">ad_profile_id</td>
<td class="entry cellborder"
headers="d21156e132 ">int</td>
<td class="entry cellborder"
headers="d21156e135 ">The publisher-level <a
href="https://docs.xandr.com/bundle/xandr-api/page/ad-profile-service.html"
class="xref" target="_blank">ad profile ID</a> that was applied to this
impression. This is used during bid rejection analysis to let the seller
know which ad profile allowed or blocked the creative. Defaults to <code
class="ph codeph">0</code> if no publisher-level ad profile was used.
Note that this value will never be the global ad profile.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">25</td>
<td class="entry cellborder"
headers="d21156e129 ">is_mediated_bid</td>
<td class="entry cellborder"
headers="d21156e132 ">tinyint</td>
<td class="entry cellborder"
headers="d21156e135 ">Whether this bid is coming from mediated demand:
<ul>
<li><code class="ph codeph">0</code> = standard</li>
<li><code class="ph codeph">1</code> = mediation</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">26</td>
<td class="entry cellborder"
headers="d21156e129 ">raw_net_bid_price</td>
<td class="entry cellborder"
headers="d21156e132 ">numeric </td>
<td class="entry cellborder"
headers="d21156e135 ">The buyer's bid converted to USD less the buyer
and seller deductions.
<p>This value will be identical to the <code
class="ph codeph">actual_bid_price</code> value unless fixed price deals
are in place. For a fixed price deal, the <code
class="ph codeph">raw_net_bid_price</code> is the actual bid from the
buyer.</p></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">27</td>
<td class="entry cellborder"
headers="d21156e129 ">external_request_id</td>
<td class="entry cellborder"
headers="d21156e132 ">string (100)</td>
<td class="entry cellborder"
headers="d21156e135 ">Specifies the seller's own auction ID that ties
the impression back to their own data feeds. (See <code
class="ph codeph">external_request_id</code> under <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a>.)</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">28</td>
<td class="entry cellborder"
headers="d21156e129 ">bid_price_type</td>
<td class="entry cellborder"
headers="d21156e132 ">int</td>
<td class="entry cellborder"
headers="d21156e135 ">The type of bid price that was used to bid on this
impression:
<ul>
<li><code class="ph codeph">0 - BID_RESPONSE_TYPE_CPM</code>: A standard
or "regular" CPM bid price.</li>
<li><code class="ph codeph">1 - BID_RESPONSE_TYPE_PCPM</code>: A bid
price from a Guaranteed Delivery line item with an impression goal. For
more information about the available goal types for these line items,
see <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/guaranteed-delivery.html"
class="xref" target="_blank">Guaranteed Delivery</a> (customer login
required).</li>
<li><code class="ph codeph">2 - BID_RESPONSE_TYPE_LEARN</code>: A
"learn" bid price from a buy-side object that was trying to optimize.
For more information about learn bids from a buy-side perspective, see
<a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/targeted-learn.html"
class="xref" target="_blank">Targeted Learn</a> (customer login
required).</li>
<li><code class="ph codeph">3 - BID_RESPONSE_TYPE_CPVM</code>: A bid
price where buyers pay only for impressions that are measured
“viewable”. See <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/vcpm-payment-type.html"
class="xref" target="_blank">vCPM Payment Type</a> for more information
(customer login required).</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e126 ">29</td>
<td class="entry cellborder"
headers="d21156e129 ">hashed_user_id_64</td>
<td class="entry cellborder"
headers="d21156e132 ">bytes</td>
<td class="entry cellborder"
headers="d21156e135 ">The hashed version of the <span
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
<span class="notetitle">Note:</span> If you receive the <code
class="ph codeph">user_id_64</code> version of this field, you will not
received the hashed version.
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e126 ">30</td>
<td class="entry cellborder"
headers="d21156e129 ">partition_time_millis</td>
<td class="entry cellborder"
headers="d21156e132 ">UNIX Epoch time</td>
<td class="entry cellborder"
headers="d21156e135 ">The hourly partition any record row falls into,
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

<div id="ID-00000a8c__bid_reject_codes" class="section">

## Bid Reject Codes

The following codes appear in the `bid_reject_reason` column to indicate
why a bid was rejected.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d21156e826" class="entry cellborder"
style="vertical-align: top">Code</th>
<th id="d21156e829" class="entry cellborder"
style="vertical-align: top">NEC (Notify Error Code)</th>
<th id="d21156e832" class="entry cellborder"
style="vertical-align: top">Code</th>
<th id="d21156e835" class="entry cellborder"
style="vertical-align: top">BRR (Bid Reject Reason)</th>
<th id="d21156e838" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">0</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_UNKNOWN</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">900</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_OTHER</td>
<td class="entry cellborder"
headers="d21156e838 ">Unknown error</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">10</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_REQUEST_TIMEOUT</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">202</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_REQUEST_TIMEOUT</td>
<td class="entry cellborder"
headers="d21156e838 ">Request timed out</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">11</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_REQUEST_THROTTLED_ABORTED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">203</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_REQUEST_THROTTLED_ABORTED</td>
<td class="entry cellborder"
headers="d21156e838 ">Request throttled or aborted</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">12</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CONNECTION_ERROR</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">204</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CONNECTION_ERROR</td>
<td class="entry cellborder"
headers="d21156e838 ">Connection error</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">13</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_INV_HTTP_CODE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">205</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_INV_HTTP_CODE</td>
<td class="entry cellborder"
headers="d21156e838 ">Invalid HTTP response code</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">14</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_JSON_PARSING_ERROR</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">206</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_JSON_PARSING_ERROR</td>
<td class="entry cellborder"
headers="d21156e838 ">JSON parsing error</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">15</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_XML_PARSING_ERROR</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">207</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_XML_PARSING_ERROR</td>
<td class="entry cellborder"
headers="d21156e838 ">XML parsing error</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">16</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_BID_RESPONSE_PARSING_ERROR</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">208</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BID_RESPONSE_PARSING_ERROR</td>
<td class="entry cellborder"
headers="d21156e838 ">Bid response parsing error</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">50</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NO_AD_TAG_IN_RESP</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">209</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NO_AD_TAG_IN_RESP</td>
<td class="entry cellborder"
headers="d21156e838 ">No ad tag in response</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">51</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NO_ACTIONS_TAG_IN_RESP</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">210</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NO_ACTIONS_TAG_IN_RESP</td>
<td class="entry cellborder"
headers="d21156e838 ">No actions tag in response</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">52</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NO_IMPURL_TAG_IN_RESP</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">211</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NO_IMPURL_TAG_IN_RESP</td>
<td class="entry cellborder"
headers="d21156e838 ">No impurl tag in response</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">53</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NO_CLICK_ACTION_IN_RESP</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">212</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NO_CLICK_ACTION_IN_RESP</td>
<td class="entry cellborder"
headers="d21156e838 ">No click action in response</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">54</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NO_ASSETS_TAG_IN_RESP</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">213</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NO_ASSETS_TAG_IN_RESP</td>
<td class="entry cellborder"
headers="d21156e838 ">No assets tag in response</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">55</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_BAD_CR_FORMAT_IN_RESP</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">214</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BAD_CR_FORMAT_IN_RESP</td>
<td class="entry cellborder"
headers="d21156e838 ">Incorrect creative format in response</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">60</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_RESP_TOO_LONG</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">215</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_RESP_TOO_LONG</td>
<td class="entry cellborder"
headers="d21156e838 ">Response too long</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">61</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NO_PRICE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">216</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NO_PRICE</td>
<td class="entry cellborder"
headers="d21156e838 ">No price received from bidder</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">62</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NO_CREATIVE_ID</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">217</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NO_CREATIVE_ID</td>
<td class="entry cellborder"
headers="d21156e838 ">No creative id received from bidder</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">63</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_BAD_LANDING_PAGE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">218</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BAD_LANDING_PAGE</td>
<td class="entry cellborder"
headers="d21156e838 ">Invalid creative landing page received from
bidder</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">64</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NO_DROP_LOG_URL</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">219</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NO_DROP_LOG_URL</td>
<td class="entry cellborder"
headers="d21156e838 ">No drop log url received from bidder</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">102</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_NOT_FOUND</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">503</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_NOT_FOUND</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative was not found</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">103</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_MALICIOUS</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">504</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_MALICIOUS</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative is malicious</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">104</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_NOT_SSL</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">501</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_NOT_SSL</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative is not ssl_approved for a secure
auction</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">105</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_NOT_OWNED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">505</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_NOT_OWNED</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative does not belong to response member</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">106</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_WRONG_SIZE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">506</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_WRONG_SIZE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative size doesn't match tag sizes</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">107</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_NOT_VAST</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">507</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_NOT_VAST</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative not in VAST format</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">108</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_HASNT_VAST_SUBTYPE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">508</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_HASNT_VAST_SUBTYPE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative does not have VAST media subtype for VAST
tag</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">109</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_HAS_VAST_SUBTYPE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">509</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_HAS_VAST_SUBTYPE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative has VAST media_subtype for non-VAST
tag</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">110</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_HAS_FLASH</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">510</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_HAS_FLASH</td>
<td class="entry cellborder"
headers="d21156e838 ">Flash creative returned for user that doesn't have
flash</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">111</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_BAD_FORMAT</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">511</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_BAD_FORMAT</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative format is not allowed by site</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">112</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_BAD_CLICK_ACTION</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">512</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_BAD_CLICK_ACTION</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative click action is not allowed by site</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">113</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_BAD_MEDIA_TYPE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">513</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_BAD_MEDIA_TYPE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative has an invalid media type</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">114</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_INITIATES_POP</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">514</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_INITIATES_POP</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative initiates pop</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">115</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_MISSING_CLICK</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">515</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_MISSING_CLICK</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative has no click url</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">116</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_NO_LANDING_PAGE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">516</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_NO_LANDING_PAGE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative has no landing page url</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">117</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_BANNED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">517</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_BANNED</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative is banned by bid_request</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">118</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_BAD_CCRT</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">518</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_BAD_CCRT</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative has an inactive or non-existent CCRT</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">119</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_TEMPLATE_HAS_NO_CONTENT_JS</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">519</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_TEMPLATE_HAS_NO_CONTENT_JS</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative has no content js in template for JS
tag</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">120</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_TEMPLATE_HAS_NO_CONTENT_JS_OR_HTML</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">520</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_TEMPLATE_HAS_NO_CONTENT_JS_OR_HTML</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative has no content js or html in template for
IFRAME tag</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">121</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_TEMPLATE_HAS_NO_CONTENT_XML</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">521</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_TEMPLATE_HAS_NO_CONTENT_XML</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative has no content xml in template for VAST
tag</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">122</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_NOT_ALLOWED_BY_SELLER</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">522</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_NOT_ALLOWED_BY_SELLER</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative with format is not allowed by seller</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">123</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_FAIL_ADVERTISER_EXCLUSION</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">902</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_OTHER_ADVERTISER_EXCLUSION</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative fails advertiser exclusion</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">124</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_BAD_MIMES</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">523</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_BAD_MIMES</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative does not have valid MIME type</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">125</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_SUSPICIOUS</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">524</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_SUSPICIOUS</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative is suspicious</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">126</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_MEDIATION_NOT_SUPPORTED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">525</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_MEDIATION_NOT_SUPPORTED</td>
<td class="entry cellborder"
headers="d21156e838 ">Mediated creative is not supported</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">127</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_LEGACY_VAST_NOT_SUPPORTED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">526</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_LEGACY_VAST_NOT_SUPPORTED</td>
<td class="entry cellborder"
headers="d21156e838 ">Legacy vast creative is not supported</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">128</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_BAD_VIDEO_PROTOCOL</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">527</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_BAD_VIDEO_PROTOCOL</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative requires a vast version that is not
supported by the placement</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">129</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NATIVE_WRONG_CREATIVE_ID</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">528</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NATIVE_WRONG_CREATIVE_ID</td>
<td class="entry cellborder"
headers="d21156e838 ">Native assets point to wrong creative instead of
creative</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">130</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NATIVE_MISSING_ASSET_DATA</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">529</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NATIVE_MISSING_ASSET_DATA</td>
<td class="entry cellborder"
headers="d21156e838 ">Native creative does not match title or data asset
requirements</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">131</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NATIVE_MISSING_ASSET_IMAGE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">530</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NATIVE_MISSING_ASSET_IMAGE</td>
<td class="entry cellborder"
headers="d21156e838 ">Native creative does not match image asset
requirements</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">132</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NATIVE_NO_VALID_ASSET</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">531</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NATIVE_NO_VALID_ASSET</td>
<td class="entry cellborder"
headers="d21156e838 ">Native creative has no valid data for any
assets</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">133</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NATIVE_NOT_RENDERABLE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">532</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NATIVE_NOT_RENDERABLE</td>
<td class="entry cellborder"
headers="d21156e838 ">Native creative is not renderable</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">134</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_BAD_CONTENT_SOURCE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">533</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_BAD_CONTENT_SOURCE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative comes from bad source</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">135</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NATIVE_MISSING_ASSET_VIDEO</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">534</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NATIVE_MISSING_ASSET_VIDEO</td>
<td class="entry cellborder"
headers="d21156e838 ">Native creative does not match video asset
requirements</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">136</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_MISSING_ELEMENT</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">535</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_MISSING_ELEMENT</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative missing element(s)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">137</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_INACTIVE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">536</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_INACTIVE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative is inactive</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">138</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_GDPR_MISSING_VENDOR</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">556</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_GDPR_MISSING_VENDOR</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative has one or more unrecognized
vendor(s)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">139</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_GDPR_UNAPPROVED_VENDOR</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">557</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_GDPR_UNAPPROVED_VENDOR</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative has one or more vendor(s) lacking user
consent</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">158</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CREATIVE_IGNORE_BY_DEBUG_SETTING</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">579</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CREATIVE_IGNORE_BY_DEBUG_SETTING</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative is ignored from the
rtp_debug_settings</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">201</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_RESP_WRONG_AUCTION_ID</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">220</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_RESP_WRONG_AUCTION_ID</td>
<td class="entry cellborder"
headers="d21156e838 ">Auction ID does not match request</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">202</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_MEMBER_MISSING</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">221</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_MEMBER_MISSING</td>
<td class="entry cellborder"
headers="d21156e838 ">No member ID sent in response</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">203</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_MEMBER_INACTIVE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">222</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_MEMBER_INACTIVE</td>
<td class="entry cellborder"
headers="d21156e838 ">Inactive member</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">204</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_MEMBER_NO_CONTRACT</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">223</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_MEMBER_NO_CONTRACT</td>
<td class="entry cellborder"
headers="d21156e838 ">Member has no contract</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">205</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_MEMBER_NO_BUDGET</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">224</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_MEMBER_NO_BUDGET</td>
<td class="entry cellborder"
headers="d21156e838 ">Member safety budget</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">207</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_BIDDER_NON_OWNING</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">225</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BIDDER_NON_OWNING</td>
<td class="entry cellborder"
headers="d21156e838 ">Exclusive bid from non-owning bidder</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">208</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_MEMBER_NOT_IN_BIDDER</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">226</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_MEMBER_NOT_IN_BIDDER</td>
<td class="entry cellborder"
headers="d21156e838 ">Bid from member not associated to bidder</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">209</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_INVALID_ROADBLOCK</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">227</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_INVALID_ROADBLOCK</td>
<td class="entry cellborder"
headers="d21156e838 ">Roadblock bid from non-owning member</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">210</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_MEMBER_NOT_ELIGIBLE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">228</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_MEMBER_NOT_ELIGIBLE</td>
<td class="entry cellborder"
headers="d21156e838 ">Member is not eligible to bid</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">211</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_MISSING</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">229</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_DEAL_MISSING</td>
<td class="entry cellborder"
headers="d21156e838 ">Member is not eligible to bid without deals</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">301</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NO_PRICE_NONEXCLUSIVE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">230</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NO_PRICE_NONEXCLUSIVE</td>
<td class="entry cellborder"
headers="d21156e838 ">No price set on non-exclusive bid response</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">302</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_INVALID_CURRENCY</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">231</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_INVALID_CURRENCY</td>
<td class="entry cellborder"
headers="d21156e838 ">Bid from member specifies an invalid currency</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">304</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NEGATIVE_BID</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">400</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BELOW_FLOOR</td>
<td class="entry cellborder"
headers="d21156e838 ">Effective revenue share less than 0</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">306</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_BID_BELOW_RESERVE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">400</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BELOW_FLOOR</td>
<td class="entry cellborder"
headers="d21156e838 ">Net bid was lower than reserve price</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">347</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_BELOW_FLOOR_YM</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">401</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BELOW_FLOOR_YM</td>
<td class="entry cellborder"
headers="d21156e838 ">Bid is below yield management floor price.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">307</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NO_CREATIVE_FOUND_BY_CODE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">537</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NO_CREATIVE_FOUND_BY_CODE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative expired or not found by code</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">308</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_NOT_AVAILABLE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">201</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_DEAL_NOT_AVAILABLE</td>
<td class="entry cellborder"
headers="d21156e838 ">Deal is not available for auction</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">309</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_NO_MEMBER</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">201</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_DEAL_NOT_AVAILABLE</td>
<td class="entry cellborder"
headers="d21156e838 ">Deal is not available to buying member</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">310</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_BELOW_FLOOR</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">606</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DEAL_BELOW_FLOOR</td>
<td class="entry cellborder"
headers="d21156e838 ">Bid is below the deal floor</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">311</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_BRAND_BANNED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">605</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DEAL_BRAND</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative brand banned on deal</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">312</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_INVALID_SIZE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">608</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DEAL_SIZE</td>
<td class="entry cellborder"
headers="d21156e838 ">Deal bans size</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">313</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_VIDEO_UNSUPPORTED_ATTRIBUTE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">538</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_VIDEO_UNSUPPORTED_ATTRIBUTE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative has unsupported video attribute</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">314</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_FAIL_MIN_DURATION</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">539</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_FAIL_MIN_DURATION</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative duration fails minimum duration</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">315</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_FAIL_MAX_DURATION</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">540</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_FAIL_MAX_DURATION</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative duration exceeds maximum duration</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">316</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_VAST_MISSING_LINEAR_ELEMENT</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">541</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_VAST_MISSING_LINEAR_ELEMENT</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative is missing a linear element required for
VAST</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">317</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_VIDEO_MISSING_ATTRIBUTE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">542</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_VIDEO_MISSING_ATTRIBUTE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative is missing a video_attributes object</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">318</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_SEGMENT_ADDS_NOT_ALLOWED_VIEW</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">901</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_OTHER_DATA_PROTECTION</td>
<td class="entry cellborder"
headers="d21156e838 ">Deal bans segment adds on view</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">319</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_SEGMENT_ADDS_NOT_ALLOWED_CLICK</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">901</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_OTHER_DATA_PROTECTION</td>
<td class="entry cellborder"
headers="d21156e838 ">Deal bans segment adds on click</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">320</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_FAIL_VIDEO_FRAMEWORK</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">543</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_FAIL_VIDEO_FRAMEWORK</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative video framework is not supported</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">321</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_SPEND_PROTECT_INELIGIBLE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">900</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_OTHER</td>
<td class="entry cellborder"
headers="d21156e838 ">Auction is not spend protection eligible</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">322</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_LANGUAGE_BANNED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">602</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DEAL_LANGUAGE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative language banned on deal</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">323</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_TECHNICAL_ATTRIBUTE_BANNED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">603</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DEAL_TECHNICAL_ATTRIBUTE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative technical attribute banned on deal</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">324</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_CREATIVE_BANNED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">601</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DEAL_CREATIVE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative banned on deal</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">325</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_CATEGORY_BANNED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">604</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DEAL_CATEGORY</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative category banned on deal</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">326</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_BAD_MEDIA_TYPE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">607</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DEAL_MEDIA_SUBTYPE</td>
<td class="entry cellborder"
headers="d21156e838 ">Deal does not have supported media (sub)type for
creative</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">327</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_INVALID_PAYMENT_TYPE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">609</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DEAL_PAYMENT_TYPE</td>
<td class="entry cellborder"
headers="d21156e838 ">Deal does not support bid payment type</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">328</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_SPEND_PROTECT_INVALID_ID</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">900</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_OTHER</td>
<td class="entry cellborder"
headers="d21156e838 ">Spend protection pixel ID invalid</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">329</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_FAIL_BITRATE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">544</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_FAIL_BITRATE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative does not have bitrate in range</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">330</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_VAST_UNKNOWN_TYPE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">545</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_VAST_UNKNOWN_TYPE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative has creative_video_attribute with
vast_type unrecognized by impbus</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">331</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_VAST_MISSING_INLINE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">546</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_VAST_MISSING_INLINE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative is missing creative_vast_inline required
for VAST</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">332</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_VAST_MISSING_INLINE_LINEAR</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">547</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_VAST_MISSING_INLINE_LINEAR</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative is missing creative_vast_inline_linear
required for VAST</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">333</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_VAST_MISSING_INLINE_LINEAR_MEDIA</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">548</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_VAST_MISSING_INLINE_LINEAR_MEDIA</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative is missing creative_vast_inline_linear
media_files required for VAST</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">334</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_VAST_MISSING_DURATION</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">549</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_VAST_MISSING_DURATION</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative does not have a specified duration
required for inline VAST</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">334</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_ADSERVER_BANNED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">610</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DEAL_ADSERVER</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative ad-server banned on deal</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">335</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_INVALID_PAYMENT_TYPE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">232</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_INVALID_PAYMENT_TYPE</td>
<td class="entry cellborder"
headers="d21156e838 ">Invalid payment type</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">336</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_VIEWABILITY_DETECTION_DISABLED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">233</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_VIEWABILITY_DETECTION_DISABLED</td>
<td class="entry cellborder"
headers="d21156e838 ">Viewability detection required for view
payment</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">337</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_ETV_DISABLED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">234</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_ETV_DISABLED</td>
<td class="entry cellborder"
headers="d21156e838 ">Exchange traded view marketplace is disabled for
member</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">338</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_VAST_MISSING_VIDEO</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">550</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_VAST_MISSING_VIDEO</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative is missing video required for VAST</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">339</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_FAIL_MEDIA_FILE_WIDTH</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">551</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_FAIL_MEDIA_FILE_WIDTH</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative does not have a media file that meets
width requirements</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">340</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_FAIL_MEDIA_FILE_HEIGHT</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">552</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_FAIL_MEDIA_FILE_HEIGHT</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative does not have a media file that meets
height requirements</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">341</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_FAIL_MEDIA_FILE_MIN_WIDTH</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">553</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_FAIL_MEDIA_FILE_MIN_WIDTH</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative does not have a media file that meets
minimum width requirements</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">342</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_FAIL_MEDIA_FILE_MIN_HEIGHT</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">554</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_FAIL_MEDIA_FILE_MIN_HEIGHT</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative does not have a media file that meets
minimum height requirements</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">343</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_FAIL_MEDIA_FILE_ASPECT_RATIO</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">555</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_FAIL_MEDIA_FILE_ASPECT_RATIO</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative does not have a media file that meets
aspect ratio requirements</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">347</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_BELOW_FLOOR_YM</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">401</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BELOW_FLOOR_YM</td>
<td class="entry cellborder"
headers="d21156e838 ">Bid is below the ym_floor price</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">348</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CURATION_DISALLOWED_FOR_GO_BID</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">614</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_CURATION_DISALLOWED_FOR_GO_BID</td>
<td class="entry cellborder"
headers="d21156e838 ">Guaranteed outcome bids are not allowed on curated
deals</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">349</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DEAL_FAIL_ADVERTISER_EXCLUSION</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">615</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_COMPETITIVE_EXCLUSION_BY_DEAL</td>
<td class="entry cellborder"
headers="d21156e838 ">Bid is rejected due to exclusion set on deal's
advertiser</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">350</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_SELLER_DEAL_DISALLOWED_FOR_GO_BID</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">616</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_SELLER_DEAL_DISALLOWED_FOR_GO_BID</td>
<td class="entry cellborder"
headers="d21156e838 ">Guaranteed outcome bids are not allowed on seller
deals</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">403</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_AD_PROFILE_MEMBER</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">307</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_AP_MEMBER</td>
<td class="entry cellborder"
headers="d21156e838 ">Buying member banned on member's ad profile</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">404</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_AD_PROFILE_CREATIVE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">301</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_AP_CREATIVE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative banned on member's ad profile</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">405</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_AD_PROFILE_CR_UNAUDITED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">308</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_AP_AUDIT_STATUS</td>
<td class="entry cellborder"
headers="d21156e838 ">Unaudited creative banned on member's ad
profile</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">406</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_AD_PROFILE_CR_ATTRIBUTE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">303</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_AP_TECHNICAL_ATTRIBUTE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative technical_attribute banned on member's ad
profile</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">407</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_AD_PROFILE_CR_CATEGORY</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">304</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_AP_CATEGORY</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative category banned on member's ad
profile</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">408</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_AD_PROFILE_CR_BRAND</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">305</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_AP_BRAND</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative brand banned on member's ad profile</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">409</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_AD_PROFILE_CR_LANGUAGE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">302</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_AP_LANGUAGE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative language banned on member's ad
profile</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">410</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_AD_PROFILE_CR_ADSERVER</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">306</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_AP_ADSERVER</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative ad-server banned on member's ad
profile</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">411</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DYNAMIC_LANGUAGE_BANNED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">702</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DYNAMIC_LANGUAGE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative language banned on dynamic
exclusions</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">412</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DYNAMIC_TECHNICAL_ATTRIBUTE_BANNED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">703</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DYNAMIC_TECHNICAL_ATTRIBUTE</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative technical attribute banned on dynamic
exclusions</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">413</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DYNAMIC_ADSERVER_BANNED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">700</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DYNAMIC_ADSERVER</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative ad-server banned on dynamic
exclusions</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">414</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DYNAMIC_CATEGORY_BANNED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">704</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DYNAMIC_CATEGORY</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative category banned on dynamic
exclusions</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">415</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_DYNAMIC_BRAND_BANNED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">701</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_DYNAMIC_BRAND</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative brand banned on dynamic exclusions</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">417</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_AD_PROFILE_UNKNOWN_DYNAMIC_BRAND</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">705</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_AD_PROFILE_UNKNOWN_DYNAMIC_BRAND</td>
<td class="entry cellborder"
headers="d21156e838 ">Ad profile contains brand or category
restrictions, and dynamic brand is unknown</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">418</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_AD_PROFILE_UNKNOWN_DYNAMIC_LANGUAGE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">706</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_AD_PROFILE_UNKNOWN_DYNAMIC_LANGUAGE</td>
<td class="entry cellborder"
headers="d21156e838 ">Ad profile contains language restrictions, and
dynamic language is unknown</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">420</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_CATEGORY_REQ_WHITELIST</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">304</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BLOCKED_BY_AP_CATEGORY</td>
<td class="entry cellborder"
headers="d21156e838 ">Creative category requires whitelisting</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">421</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_BID_PAGE_CAPPED</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">402</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_PAGE_CAPPED</td>
<td class="entry cellborder"
headers="d21156e838 ">Bid is rejected due to page cap</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">1000</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NO_MEMBERS</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">235</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NO_MEMBERS</td>
<td class="entry cellborder"
headers="d21156e838 ">No eligible members</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">1001</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_BIDDER_UNAVAILABLE</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">236</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_BIDDER_UNAVAILABLE</td>
<td class="entry cellborder"
headers="d21156e838 ">Bidder not available</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d21156e826 "><code class="ph codeph">1002</code></td>
<td class="entry cellborder"
headers="d21156e829 ">NEC_NO_BID_URI</td>
<td class="entry cellborder"
headers="d21156e832 "><code class="ph codeph">237</code></td>
<td class="entry cellborder"
headers="d21156e835 ">BRR_NO_BID_URI</td>
<td class="entry cellborder"
headers="d21156e838 ">No bid URI set</td>
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
