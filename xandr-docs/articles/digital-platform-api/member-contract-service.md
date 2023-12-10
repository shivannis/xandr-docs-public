---
Title : Member Contract Service
Description : The Member Contract Service allows Xandr Sales
ms.date: 10/28/2023
ms.custom: digital-platform-api
Op admins to view, create, update, and delete
Xandr member contracts. There are two types of
---


# Member Contract Service



The Member Contract Service allows Xandr Sales
Op admins to view, create, update, and delete
Xandr member contracts. There are two types of
pricing terms denoted by the `pricing_version` field.

- `"2007.09.01"`: These are the "legacy" pricing terms.
- `"2013.01.02"`: These are the newer pricing terms. Most client
  contracts negotiated post-2013 will use these new pricing terms. The
  upshot of the new pricing terms are that clients pay a buy-side fee
  for both partner and platform inventory, and that clients pay a
  different seller revshare for buyers on the
  Xandr platform than for bidder buyers.



<b>Note:</b> This service is available only to
Xandr admin users who have the `is_sales_ops`
field set to true. Note that the `is_sales_ops` field can be set to true
only via a direct database update. Valid reasons to have your
`is_sales_ops` field set in production include:

- You are a member of the Sales Ops team, and it is your regular job to
  create and update contracts.
- You are an engineer, product manager, or test engineer who needs
  access to create or update contracts for your job.
- You want to see Katharine, Jennifer Yang, and Alison cry. (Yes,
  really.)
- If you are in Services and need to create or update contracts in sand,
  you should request a direct DB write for your sand user but please
  understand that you won't have the same capability in production.





<b>Warning:</b> On a `PUT` call, if you
include only specific contracts, the contracts not included will be
**deleted**. Therefore it is best to include all contracts on `PUT`.





<b>Note:</b> Updating and deleting contracts

- The Sales Op can only update the following fields for contracts in
  progress: `notes` and `end_date`. For past contracts, she can only
  update the `notes`. For future contracts she can update all the
  fields.
- Note that if you clone a contract whose `pricing_type` is
  `"2007.09.01"`, update `pricing_type` to `"2013.01.02"`, and then
  update it once more to `"2007.09.01"`, any minimums will be set to
  zero.
- The Sales Op can only delete contracts which are in the future.





## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00002666__entry__1" class="entry colsep-1 rowsep-1">HTTP
Methods</th>
<th id="ID-00002666__entry__2"
class="entry colsep-1 rowsep-1">Enpoints</th>
<th id="ID-00002666__entry__3"
class="entry colsep-1 rowsep-1">Descriptions</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__2"><a
href="https://api.appnexus.com/member-contract?member_id=MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/member-contract?member_id=MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__3">View
all contracts for a specific member</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__2"><a
href="https://api.appnexus.com/member-contract" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/member-contract</a><br />
(contract JSON)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__3">View
a specific contract</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__2"><a
href="https://api.appnexus.com/member-contract" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/member-contract</a>
<p>(contract JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__3">Add
a new contract</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__2"><a
href="https://api.appnexus.com/member-contract?id=CONTRACT_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/member-contract?id=CONTRACT_ID</a><br />
&#10;<p>(contract JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__3">Modify a contract</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__2"><a
href="https://api.appnexus.com/member-contract?id=CONTRACT_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/member-contract?id=CONTRACT_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__3">Delete a contract</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__2"><a
href="https://api.appnexus.com/member-contract/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/member-contract/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>







## JSON Fields

There is a large intersection between the sets of required fields
depending on whether the `pricing_version` is `"2007.09.01"` (marked
below as `OLD`) or `"2013.01.02"` (marked below as `NEW`); only those
fields that differ between pricing versions are marked as such in the
Old or New? column.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002666__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002666__entry__23"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002666__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
ID of the contract.
<p><strong>Requird On:</strong> <code class="ph codeph">PUT</code>/<code
class="ph codeph">DELETE</code>, in query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
ID of the member to which the contract applies.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
date of the last modification of this contract "object".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">start_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">datetime</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
date and time when the terms of the contract start. New contracts should
begin in the future, and typically on the first day of a month.
<p><strong>Requird On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">datetime</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
date and time when the terms of the contract end. This should always
come at the end of a month.
<p><strong>Requird On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">auction_revshare</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This field is not used.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">auction_minimum_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This field is not used. Formerly, it
was the minimum amount the buyer agrees to pay for Auction Service Fee,
Auction Service Deduction, or Direct Clear Fee.
<p><strong>Old or New:</strong> <code
class="ph codeph">OLD</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">ad_serving_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
managed ad serving fee charged on kept impressions (to include: kept,
default, PSA). This does not represent a seller ad serving fee CPM,
which is not yet implemented in the system.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">auditing_fee_per_creative</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
per-creative auditing fee.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">creative_size_minimum_bytes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
size above which a creative is considered over-sized. The member is
charged a creative overage fee (based on the value in <code
class="ph codeph">creative_size_fee_per_gb</code>) for serving an
oversized creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">creative_size_fee_per_gb</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
fee that is charged per gigabyte for a creative that exceeds the <code
class="ph codeph">creative_size_minimum_bytes</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">monthly_minimum_spend</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This field is mislabeled. The monthly
minimum fees the member commits to paying per month.
<p><strong>Old or New:</strong> <code
class="ph codeph">OLD</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">clearing_revshare</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
flat fee taken out of clearing revenues by <span
class="ph">Xandr. Members may choose to be billed as a percentage
instead (see <code class="ph codeph">clearing_revshare_pct</code>
below).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">auction_revshare_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
percentage charged to sellers when they sell their inventory to other
members.

<b>Warning:</b> This field corresponds to the
new <code class="ph codeph">auction_revshare_platform_pct</code> field,
and is used by the data pipeline for calculations involving CPA/CPC
revenues. PLEASE DO NOT REMOVE THIS FIELD UNLESS YOU KNOW WHAT YOU ARE
DOING.
<p><strong>Old or New:</strong> <code class="ph codeph">OLD</code></p>
<p><strong>Default:</strong> <code class="ph codeph">"0.00"</code></p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">clearing_revshare_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
clearing deduction percentage. This is charged when the member buys from
an external or partner seller.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">auction_maximum_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
maximum amount the buyer agrees to pay on a per-impression basis. For
this reason, the sum of client's auction service fees and deductions may
not be equal to their total media cost multiplied by their auction
revshare at the end of the month.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">apply_min_cpm_to_clearing</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This field is not used.
<p><strong>Default:</strong> <code
class="ph codeph">False</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">auction_revshare_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
type of buyer auction revenue share. Allowed values:
<ul>
<li><code class="ph codeph">"deduction"</code>: The buyer is charged an
Auction Service Deduction.</li>
<li><code class="ph codeph">"fee"</code>: The buyer is charged an
Auction Service Fee.</li>
</ul>

<b>Warning:</b> This field corresponds to the
new <code class="ph codeph">auction_revshare_platform_inv_type</code>
field, and is used by the data pipeline for calculations involving
CPA/CPC revenues. PLEASE DO NOT REMOVE THIS FIELD UNLESS YOU KNOW WHAT
YOU ARE DOING.
<p><strong>Default:</strong> <code class="ph codeph">"fee"</code></p>
<p><strong>Old or New:</strong> <code class="ph codeph">OLD</code></p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">pricing_version</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
pricing version associated with this contract. With the 2013 pricing
terms, clients pay a buy-side fee for both partner and platform
inventory, and clients pay a different seller revshare for <span
class="ph">Xandr platform buyers than for bidder buyers. Note
also that it is acceptable to use 2007 pricing terms if so dictated by
the contract. Allowed values:
<ul>
<li><code class="ph codeph">"2007.09.01"</code></li>
<li><code class="ph codeph">"2013.01.02"</code></li>
</ul>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">seller_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
type of seller. Allowed values:
<ul>
<li><code class="ph codeph">"platform"</code>: The member has a signed
contract allowing Xandr to take a Seller
Deduction from resold impressions.</li>
<li><code class="ph codeph">"partner"</code>: The member does not have a
signed contract allowing Xandr to take a Seller
Deduction from resold impressions, so the buying members are charged an
Auction Service Fee/Deduction instead.</li>
</ul>
<p><strong>Default:</strong> <code
class="ph codeph">"platform"</code></p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">note</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">An
optional note.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">data_siphon_fee</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
monthly charge for receiving Xandr <a
href="log-level-data/log-level-data-feeds.md"
class="xref" target="_blank">log-level data feeds</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">mapuid_fee</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
monthly charge for using the Xandr user ID
mapping service.
<p><strong>Default:</strong> <code
class="ph codeph">"0.00"</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">monthly_minimum_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
minimum number of impressions that the member commits to transact per
month.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">waive_ad_serving_fees</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This field is not used.
<p><strong>Old or New:</strong> <code
class="ph codeph">OLD</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">adx_auction_service_fee_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This field is not used. Formerly, it
was the auction service fee charged when buyer clients purchase
inventory from Google Ad Manager. Google Ad Manager is a special case
since they are a Xandr member (with a bidder_id
of <code class="ph codeph">2</code>) but buyer clients pay Google Ad
Manager directly and don't pay Xandr for media
cost.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">direct_clear_fee_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
direct clear fee percentage. This is used for activity where the member
clears the cost of media directly with the seller.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">contract_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This field is no longer used. In the
past, it was used by the finance team for revenue reporting. The allowed
values were:
<ul>
<li><code class="ph codeph">"NIB"</code>: This acronym refers to a
former product offering called "Network in a box".</li>
<li><code class="ph codeph">"XIB"</code>: This acronym refers to a
former product offering called "Exchange in a box".</li>
<li><code class="ph codeph">"RTBX"</code>: This acronym refers to a
former product offering called "RTB Exchange".</li>
<li><code class="ph codeph">"MSFT"</code>: A Microsoft contract.</li>
<li><code class="ph codeph">"External"</code>: ...</li>
<li><code class="ph codeph">"Partner"</code>: ...</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">creative_audit_fee</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This field is not used. Use <code
class="ph codeph">auditing_fee_per_creative</code> instead. Formerly, it
represented the total creative auditing fees.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">creative_priority_fee_1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This field is not used. It is a
placeholder for future development.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">creative_priority_fee_2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
priority auditing fee per creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">imptracker_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
fees charged for recording third-party impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">clicktracker_cpc</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
fees charged for recording third-party clicks.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">auto_renewal_term</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
auto-renewal term for the member, if such a term exists in the signed
contract. Currently, this is only a placeholder for the term; no billing
logic is associated with this field.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">seller_serving_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
CPM-based fee charged for each impression resold. Currently, this is
only a placeholder for the fee; no billing logic is associated with this
field.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">monthly_spend_based_minimum</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
monthly minimum based on the total buyer spend (i.e., cost of media)
purchased in any given month. Currently, this is only a placeholder; no
billing logic is associated with this field.
<p><strong>New or Old</strong>: <code
class="ph codeph">OLD</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">seller_revshare_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
seller deduction percentage. This is charged when the member sells an
impression to another member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">seller_revshare_minimum</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">Seller revshare minimum is calculated
by taking the greater of (imps seen * seller auction request cpm) or
(seller revshare).
<p><strong>Default:</strong> <code class="ph codeph">false</code></p>
<p><strong>New or Old:</strong> <code
class="ph codeph">OLD</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">secure_whitelabel_pixel_fee</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
monthly charge for using the Secure White Label Pixel service.
Currently, this is only a placeholder for the fee; no billing logic is
associated with this field.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">monthly_minimum_requests</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
minimum number of requests per month based on the total number of
impressions seen as recorded by Xandr. Currently
this is only a placeholder for the minimum; no billing logic is
associated with this field.
<p><strong>New or Old:</strong> <code
class="ph codeph">OLD</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">managed_hosted_video_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This is a placeholder for future
development.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">cross_net_hosted_video_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This is a placeholder for future
development.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">seller_auction_request_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
amount that a seller must pay every time they send us a bid request.
This is charged even if there is no winning bid, or any bids at
all.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24"><strong>Read Only.</strong> Allowed
values:
<ul>
<li><code class="ph codeph">"in_progress"</code>: The contract is
currently in force.</li>
<li><code class="ph codeph">"in_past"</code>: The contract has
ended.</li>
<li><code class="ph codeph">"in_future"</code>: The contract is set to
begin in the future.</li>
</ul>
<p><strong>Default:</strong> <code
class="ph codeph">"in_future"</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
name of the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">member_is_billable</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">Whether the member is billable.
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">member_note</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This is used by Finance and Sales Ops
to record custom contract terms or other invoice requirements.
<p><strong>Default:</strong> <code class="ph codeph">""</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">member_enable_budget_check</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">Whether this member has safety checks
in place to prevent unintentional overspend.
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">monthly_service_fee_minimum_1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
minimum monthly spend the client has committed to. This fee includes
impression and click tracking.
<p><strong>Old or New:</strong> <code
class="ph codeph">OLD</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">monthly_service_fee_minimum_2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
minimum monthly spend the client has committed to. This fee does not
include impression and click tracking.
<p><strong>Old or New:</strong> <code
class="ph codeph">OLD</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">selling_enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">Whether this member is enabled to sell
its inventory. This applies to both managed and cross-network selling.
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">seller_console_buyer_revshare_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This percentage is charged to sellers
when they sell to buyers on the Xandr platform.

<b>Note:</b> The value of this field is copied
from the legacy field <code
class="ph codeph">seller_revshare_pct</code>.

<p><strong>Required On:</strong> <code class="ph codeph">PUT</code>,
when updating to the new <code
class="ph codeph">pricing_version</code>.</p>
<p><strong>Old or New:</strong> <code
class="ph codeph">New</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">seller_bidder_buyer_revshare_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__24">This percentage is charged to sellers
when they sell to non-Xandr bidders.
<p><strong>Required On:</strong> <code class="ph codeph">PUT</code>,
when updating to the new <code
class="ph codeph">pricing_version</code>.</p>
<p><strong>Old or New:</strong> <code
class="ph codeph">New</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">auction_revshare_partner_inv_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
percentage charged to buyers of type <code
class="ph codeph">"partner"</code> when they buy inventory from other
members.
<p><strong>Default:</strong> <code class="ph codeph">"0.00"</code></p>
<p><strong>Old or New:</strong> <code
class="ph codeph">New</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">auction_revshare_partner_inv_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
way the percentage defined in <code
class="ph codeph">"auction_revshare_partner_inv_pct"</code> is used to
charge partner buyers. Allowed values:
<ul>
<li><code class="ph codeph">"deduction"</code>: The agreed-upon
percentage is subtracted directly from the buyer's auction revenue.</li>
<li><code class="ph codeph">"fee"</code>: The percentage is charged as a
fee after the auction.</li>
</ul>

<b>Note:</b> You may not set an <code
class="ph codeph">auction_revshare_partner_inv_type</code> that is
different from <code
class="ph codeph">auction_revshare_platform_inv_type</code>. They should
both be <code class="ph codeph">"fee"</code> or <code
class="ph codeph">"deduction"</code>.

<p><strong>Default:</strong> <code class="ph codeph">"fee"</code></p>
<p><strong>Old or New:</strong> <code
class="ph codeph">New</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">auction_revshare_platform_inv_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
percentage charged to buyers of type <code
class="ph codeph">"platform"</code> when they buy inventory from other
members.

<b>Note:</b> The value of this field is copied
from the field <code class="ph codeph">auction_revshare_pct</code>.

<p><strong>Default:</strong> <code class="ph codeph">"0.00"</code></p>
<p><strong>Old or New:</strong> <code
class="ph codeph">New</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__22"><code
class="ph codeph">auction_revshare_platform_inv_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002666__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002666__entry__24">The
way the percentage defined in <code
class="ph codeph">"auction_revshare_platform_inv_pct"</code> is used to
charge platform buyers. Allowed values:
<ul>
<li><code class="ph codeph">"deduction"</code>: The agreed-upon
percentage is subtracted directly from the buyer's auction revenue.</li>
<li><code class="ph codeph">"fee"</code>: The percentage is charged as a
fee after the auction.

<b>Note:</b>
<ul>
<li>The value of this field is copied from the field <code
class="ph codeph">auction_revshare_type</code>.</li>
<li>You may not set an <code
class="ph codeph">auction_revshare_platform_inv_type</code> that is
different from <code
class="ph codeph">auction_revshare_partner_inv_type</code>. They should
both be <code class="ph codeph">"fee"</code> or <code
class="ph codeph">"deduction"</code>.</li>
</ul>
<p><strong>Default:</strong> <code class="ph codeph">"fee"</code></p>
<p><strong>Old or New:</strong> New</p>
</li>
</ul></td>
</tr>
</tbody>
</table>





## Examples



**Create and view a legacy contract**

``` pre
$ cat update.json
{
  "member-contract": {
    "start_date": "2013-01-01 00:00:00",
    "end_date": "2013-06-30 23:59:59",
    "seller_type": "platform",
    "pricing_version": "2007.09.01",
  }
}
```

``` pre
$ curl -b cookies -X POST -d @/tmp/legacy.json "http://68.67.148.153:16011/member-contract?member_id=1309"

{
    "response": {
        
        "": "",
        "num_elements": "",
        "start_element": "",
        "id": 3794,
        "count": "",
        "status": "OK"
    }
}
```



``` pre
$ curl -b cookies "http://68.67.148.153:16011/member-contract?id=3794"
{
    "response": {
        
        "member-contract": {
            "member_note": "",
            "member_enable_budget_check": true,
            "member_is_billable": true,
            "member_name": "i8N6LZ6uN",
            "auction_revshare_platform_inv_type": "fee",
            "auction_revshare_platform_inv_pct": 0,
            "auction_revshare_partner_inv_type": "fee",
            "auction_revshare_partner_inv_pct": 0,
            "seller_bidder_buyer_revshare_pct": "",
            "seller_console_buyer_revshare_pct": "",
            "selling_enabled": true,
            "monthly_service_fee_minimum_2": "",
            "monthly_service_fee_minimum_1": "",
            "status": "in_future",
            "seller_auction_request_cpm": "",
            "cross_net_hosted_video_cpm": "",
            "managed_hosted_video_cpm": "",
            "monthly_minimum_requests": "",
            "secure_whitelabel_pixel_fee": 0,
            "seller_revshare_minimum": false,
            "seller_revshare_pct": "",
            "monthly_spend_based_minimum": "",
            "seller_serving_cpm": 0,
            "auto_renewal_term": "",
            "clicktracker_cpc": "",
            "imptracker_cpm": "",
            "creative_priority_fee_2": 25,
            "creative_priority_fee_1": 0,
            "creative_audit_fee": 0,
            "contract_type": "",
            "direct_clear_fee_pct": "",
            "adx_auction_service_fee_pct": "",
            "waive_ad_serving_fees": false,
            "monthly_minimum_imps": "",
            "mapuid_fee": 0,
            "data_siphon_fee": "",
            "note": "",
            "seller_type": "platform",
            "pricing_version": "2007.09.01",
            "auction_revshare_type": "fee",
            "apply_min_cpm_to_clearing": false,
            "auction_maximum_cpm": "",
            "clearing_revshare_pct": "",
            "auction_revshare_pct": "",
            "clearing_revshare": "",
            "monthly_minimum_spend": "",
            "creative_size_fee_per_gb": "",
            "creative_size_minimum_bytes": "",
            "auditing_fee_per_creative": "",
            "ad_serving_cpm": "",
            "auction_minimum_cpm": "",
            "auction_revshare": "",
            "end_date": "2013-06-30 23:59:59",
            "start_date": "2013-01-01 00:00:00",
            "last_activity": "2012-12-20 16:03:38",
            "member_id": 1309,
            "id": 3794
        },
        "num_elements": "",
        "start_element": "",
        "count": 1,
        "status": "OK"
    }
}
```



**Create and view a contract with the current** `pricing_version`

``` pre
$ cat update.json
{
  "member-contract": {
    "start_date": "2013-01-01 00:00:00",
    "end_date": "2013-06-30 23:59:59",
    "seller_type": "platform",
    "pricing_version": "2013.01.02",
    "auction_revshare_partner_inv_type": "fee",
    "auction_revshare_platform_inv_type": "fee"
  }
}
```

``` pre
$ curl -b cookies -c cookies -X POST -d @update.json "https://api.appnexus.com/member-contract?member_id=1309"

{"response":{"status":"OK","count":null,"id":7543,"start_element":null,"num_elements":null,"":null,}}
```



``` pre
$ curl -b cookies "http://68.67.148.153:16011/member-contract?member_id=4"
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": null,
    "num_elements": null,
    "member-contracts": [
      {
        "id": 7543,
        "member_id": 4,
        "last_activity": "2012-12-07 18:30:12",
        "start_date": "2013-01-01 00:00:00",
        "end_date": "2013-06-30 23:59:59",
        "auction_revshare": null,
        "ad_serving_cpm": null,
        "auditing_fee_per_creative": null,
        "creative_size_minimum_bytes": null,
        "creative_size_fee_per_gb": null,
        "clearing_revshare": null,
        "clearing_revshare_pct": null,
        "auction_maximum_cpm": null,
        "apply_min_cpm_to_clearing": false,
        "pricing_version": "2013.01.02",
        "seller_type": "platform",
        "note": null,
        "data_siphon_fee": null,
        "mapuid_fee": "0.00",
        "waive_ad_serving_fees": false,
        "adx_auction_service_fee_pct": null,
        "direct_clear_fee_pct": null,
        "contract_type": null,
        "creative_audit_fee": "0.00",
        "creative_priority_fee_1": "0.00",
        "creative_priority_fee_2": "25.00",
        "imptracker_cpm": null,
        "clicktracker_cpc": null,
        "auto_renewal_term": null,
        "seller_serving_cpm": "0.0000",
        "secure_whitelabel_pixel_fee": "0.00",
        "managed_hosted_video_cpm": null,
        "cross_net_hosted_video_cpm": null,
        "seller_auction_request_cpm": null,
        "status": "in_future",
        "selling_enabled": true,
        "seller_console_buyer_revshare_pct": null,
        "seller_bidder_buyer_revshare_pct": null,
        "auction_revshare_partner_inv_pct": "0.00",
        "auction_revshare_partner_inv_type": "fee",
        "auction_revshare_platform_inv_pct": "0.00",
        "auction_revshare_platform_inv_type": "fee",
        "member_name": "6Ax3NT0ST",
        "member_is_billable": true,
        "member_enable_budget_check": true
      }
    ]
  }
  }
```






