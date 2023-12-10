---
Title : Advertiser Service
Description : The Advertiser service lets networks add, modify, and view the
ms.date: 10/28/2023
ms.custom: digital-platform-api
advertisers that interact with Xandr. Direct
---


# Advertiser Service



The Advertiser service lets networks add, modify, and view the
advertisers that interact with Xandr. Direct
marketers rarely use the Advertiser service because they have only one
advertiser (themselves).



## REST API



<table
id="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th
id="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th
id="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/advertiser" class="xref"
target="_blank">https://api.appnexus.com/advertiser</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all of your advertisers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/advertiser?id=ADVERTISER_ID" class="xref"
target="_blank">https://api.appnexus.com/advertiser?id=ADVERTISER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/advertiser?code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/advertiser?code=ADVERTISER_CODE</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific advertiser.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/advertiser?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/advertiser?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
multiple advertisers by ID using a comma-separated list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/advertiser?search=SEARCH_TERM"
class="xref"
target="_blank">https://api.appnexus.com/advertiser?search=SEARCH_TERM</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Search
for advertisers with IDs or names containing certain characters.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/advertiser/meta" class="xref"
target="_blank">https://api.appnexus.com/advertiser/meta</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/advertiser" class="xref"
target="_blank">https://api.appnexus.com/advertiser</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new advertiser.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/advertiser?id=ADVERTISER_ID" class="xref"
target="_blank">https://api.appnexus.com/advertiser?id=ADVERTISER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an existing advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/advertiser?code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/advertiser?code=ADVERTISER_CODE</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an existing advertiser.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/advertiser?id=ADVERTISER_ID" class="xref"
target="_blank">https://api.appnexus.com/advertiser?id=ADVERTISER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"><p>Delete
an advertiser.</p>


<b>Note:</b>
<p>Deleting an advertiser will delete all of its child insertion orders,
line items, campaigns, creatives, conversion pixels, and segments. The
deletions are permanent and cannot be reverted. Although deleted objects
continue to be available in reporting, you will no longer have
visibility into their specific settings, such as revenue budget for line
items, cost budget, and targeting for campaigns.</p>

</td>
</tr>
</tbody>
</table>







## JSON Fields



<table
id="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">allow_safety_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Admin-only.</strong>
If <code class="ph codeph">true,</code> spend per minute is limited to a
maximum of 1% of the lifetime budget and 5% of the daily budget.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">billing_address1</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">For
reference.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">billing_address2</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">For
reference.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">billing_city</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">For
reference.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">billing_country</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">For
reference.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">billing_internal_user</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">For
reference. This is a list of people (strings) who work at this
advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">billing_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">For
reference. Value may be a maximum of 50 characters.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">billing_phone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(20)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">For
reference.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">billing_state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">For
reference.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">billing_zip</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(25)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">For
reference.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">A
custom code for the advertiser. Xandr will assign a unique ID, but
advertisers may use their own ID system. Either "code" or the
Xandr-assigned ID will be allowed fields in other services.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">competitive_brands</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">An
array of brand IDs. Creatives associated with the brands in this array
will not serve together in <code class="ph codeph">/mtj</code> auctions.
The classic example of competing brands is Coke vs. Pepsi. For more
information about the brands in our system, see the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a>. For an overview of <code
class="ph codeph">/mtj</code> auctions, see "MultiTags" in the UI
documentation (customer login required).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">competitive_categories</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">An
array of category IDs. Creatives associated with the categories in this
array will not serve together in <code class="ph codeph">/mtj</code>
auctions, e.g., <code class="ph codeph">"Dating"</code> and <code
class="ph codeph">"Education"</code>. For more information about the
categories that we apply to creatives (and brands), see the <a
href="category-service.md"
class="xref" target="_blank">Category Service</a>. For an overview of
<code class="ph codeph">/mtj</code> auctions, see "MultiTags" in the UI
documentation (customer login required).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">control_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
percentage of users in the control group for this advertiser. This must
be expressed as a number between 0 and 1, inclusive. These users will be
shown a control creative in order to gauge effectiveness of other
creatives. For more information, see "Test and Control Targeting
(Standard Line Item)" in the UI documentation (customer login
required).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">daily_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
daily budget for the advertiser. (See <code
class="ph codeph">lifetime_budget</code> above.)</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
daily impression budget for the advertiser. (See <code
class="ph codeph">lifetime_budget</code> above.)</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">default_brand</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><div
>
Information about the default brand. See <a
href="advertiser-service.md#AdvertiserService-DefaultBrand"
class="xref" target="_blank">Default Brand</a> below for more details.
<ul>
<li><strong>Default:</strong> <code class="ph codeph">null</code></li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">default_brand_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
internal ID of the default brand for all creatives of this advertiser.
The brand for each creative will be checked during the auditing
process.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">default_category</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">This
feature is not functioning at this time. It will be used in future
development.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">default_currency</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(3)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
default currency to be used for the advertiser. This will be a
three-letter code that you can retrieve from the read-only <a
href="currency-service.md"
class="xref" target="_blank">Currency Service</a>. See "Currency
Support" in the UI documentation for details about the concept (customer
login required).</p>


<b>Note:</b> As a best practice, align
currency to the billing currency in order to achieve the best possible
local currency experience.


<ul>
<li><strong>Default:</strong> Member's default currency</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">enable_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">If
<code class="ph codeph">true</code>, then spending will be paced for
this advertiser over the course of the day.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">enable_political_io_by_default</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Possible
values: 0 or 1.</p>
<p>If set to <code class="ph codeph">true,</code> insertion orders
created for this advertiser using the UI will have political advertising
enabled by default. This does not affect insertion orders created using
the API.</p>
<ul>
<li><strong>Default:</strong> 1 (true)</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the Advertiser.</p>
<ul>
<li><strong>Read Only</strong></li>
</ul>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">PUT</code></li>
<li><strong>Default:</strong> auto-incremented number</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_malicious</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Admin-only.
If <code class="ph codeph">true,</code> the advertiser's status will be
set to inactive. Xandr administrators will set this field to <code
class="ph codeph">true </code>for advertisers determined to be directing
users to malicious landing pages. Users will not be able to set the
advertiser's status back to active until a Xandr administrator sets the
<code class="ph codeph">is_malicious</code> field back to <code
class="ph codeph">false.</code></p>
<ul>
<li><strong>Default:</strong> <code class="ph codeph">false</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_mediated</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Admin-only.
If <code class="ph codeph">true,</code> the advertiser will not be
displayed in the UI. Xandr administrators can set this field to <code
class="ph codeph">true </code>when the Advertiser is associated with a
mediated bid.</p>
<ul>
<li><strong>Default:</strong> <code class="ph codeph">false</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><pre
id="advertiser-service__codeblock_gx3_3yp_5wb"
class="pre codeblock"><code>is_running_political_ads
                </code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Possible
values: 0 or 1.</p>
<p>Declares whether or not this advertiser conducts political
advertising (defined as advertising related to an election, ballot
initiative, or political candidate, in the United States).</p>
<p>If an existing advertiser already has insertion orders with political
advertising enabled, you will not be able to set <code
class="ph codeph">is_running_political_ads</code> to <code
class="ph codeph">false.</code></p>
<ul>
<li><strong>Default:</strong> 0 (false)</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">labels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
optional labels applied to the advertiser. Currently, three labels are
available for advertisers: "Salesperson", "Account Manager", and
"Advertiser Type". See <a
href="advertiser-service.md#AdvertiserService-Labels"
class="xref" target="_blank">Labels</a> below for more details.</p>


<b>Note:</b> You can report on advertiser
labels with the <a
href="network-analytics.md"
class="xref" target="_blank">Network Analytics</a> report. For example,
if you use the "Salesperson" label to specify the name of the
salesperson responsible for each advertiser, you can run the Network
Analytics report filtered by "salesperson_for_advertiser" to focus on
the advertisers that a particular salesperson is responsible for or
grouped by "salesperson_for_advertiser" to rank the performance of your
salespeople.

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Timestamp
of the last time this advertiser was modified.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">lifetime_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">You
can set all of the budget parameters at the advertiser level as well as
the campaign and media buy levels. Budgets at the advertiser level will
apply to all traffic for your advertiser. This is a dollar (media cost)
budget.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">lifetime_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
lifetime impression budget for the advertiser. (See <code
class="ph codeph">lifetime_budget</code> above.)</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
name of the advertiser.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">object_stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
number of total, active, and inactive insertion orders, line items,
campaigns, and creatives under the advertiser, as well as the number of
creatives with particular audit statuses. To include this object in a
GET response, pass <code class="ph codeph">object_stats=true</code> in
the query string.</p>
<ul>
<li><strong>Read Only.</strong></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">partner_fees</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">An
array of partner fees applied to this advertiser. You can create,
attach, view, or remove partner fees with the <a
href="partner-fee-service.md"
class="xref" target="_blank">Partner Fee Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">You
can set an optional <code class="ph codeph">profile_id</code> at the
advertiser, line item, campaign and creative levels. A profile is a
generic set of rules for targeting inventory. A profile set at the
advertiser level will apply to all traffic for your advertiser, so you
will probably want to keep this profile very broad. Ad calls must pass
all profile targeting at any level. See the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">remarketing_segment_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">A
segment is marked as "remarketing" for reporting and filtering purposes
only. If you mark a segment as remarketing in the UI, it will show up
here. Or you can add segment IDs here, and they will be marked as
remarketing for reporting purposes.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
state of the advertiser. Possible values: "active" or "inactive".</p>
<ul>
<li><strong>Default:</strong> "<code
class="ph codeph">active</code>"</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
<code class="ph codeph">stats</code> object has been deprecated (as of
October 17, 2016). Use the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
timezone of the advertiser. See <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a> for details and accepted
values. For details on how to make the advertiser timezone "trickle
down" to child objects, see <a
href="advertiser-service.md#AdvertiserService-TimezoneforDependentObjects"
class="xref" target="_blank">Timezone for Dependent Objects</a>
below.</p>
<ul>
<li><strong>Default:</strong> "EST5EDT", or the member's timezone.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">thirdparty_pixels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>An
array of third-party pixels associated with the advertiser. You can
automatically attach these pixels to all creatives owned by this
advertiser using the <a
href="third-party-pixel-service.md"
class="xref" target="_blank">Third-party Pixel service</a> or attach
them individually at the creative level using the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>.</p>
<ul>
<li><strong>Read Only</strong>.</li>
<li><strong>Default:</strong> <code class="ph codeph">null</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">time_format</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
format in which you would like to see times displayed in the UI.
Possible values: "12-hour" or "24-hour".</p>
<ul>
<li><strong>Default:</strong> "12-hour"</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">use_insertion_orders</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
<code class="ph codeph">true,</code> the use of insertion orders which
contain collections of line items, will be enabled for this advertiser.
You will not be able to create insertion orders, if this field is set to
<code class="ph codeph">"false"</code>. Please see the <a
href="insertion-order-service.md"
class="xref" target="_blank">Insertion Order Service</a> for
details.</p>

class="note caution note_caution">
CAUTION:
<p>Preexisting line items</p>
<p>If you set this field to <code class="ph codeph">true</code> and have
already created line items prior to enabling this setting, those line
items will stop spending. To allow those line items to continue
spending, create an insertion order (using the <a
href="insertion-order-service.md"
class="xref" target="_blank">Insertion Order Service</a>) and associate
the line items with the insertion order (using the <a
href="line-item-service.md"
class="xref" target="_blank">Line Item Service</a>). All newly created
line items will require an insertion order.</p>




<b>Note:</b>
<p>When the advertiser has associated insertion orders, you will not be
able to update the value of "use_insertion_orders" to false.</p>


<ul>
<li><strong>Default:</strong> <code class="ph codeph">true</code></li>
</ul></td>
</tr>
</tbody>
</table>



**Third-party Pixels**

The `thirdparty_pixels` array contains fields in the table below. These
fields are read-only. To update or create third-party pixels and/or
attach third-party pixels to all creatives owned by the advertiser, use
the <a
href="third-party-pixel-service.md"
class="xref" target="_blank">Third-party Pixel service</a>. To attach
third-party pixels to individual creatives, use the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>.

<table id="advertiser-service__table_d41_1dq_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="advertiser-service__table_d41_1dq_5wb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="advertiser-service__table_d41_1dq_5wb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="advertiser-service__table_d41_1dq_5wb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_d41_1dq_5wb__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_d41_1dq_5wb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_d41_1dq_5wb__entry__3"><p>The current
status of the pixel (true = active).</p>
<ul>
<li><strong>Read Only</strong>.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_d41_1dq_5wb__entry__1"><code
class="ph codeph">audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_d41_1dq_5wb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_d41_1dq_5wb__entry__3"><p>Audit
status of the pixel.</p>
<ul>
<li><strong>Read Only</strong>.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_d41_1dq_5wb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_d41_1dq_5wb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_d41_1dq_5wb__entry__3"><p>The pixel's
ID.</p>
<ul>
<li><strong>Read Only</strong>.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_d41_1dq_5wb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_d41_1dq_5wb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_d41_1dq_5wb__entry__3"><p>The full
name of the pixel.</p>
<ul>
<li><strong>Read Only</strong>.</li>
</ul></td>
</tr>
</tbody>
</table>

**Stats**

The `stats` object has been deprecated (as of October 17, 2016). Use the
<a
href="report-service.md"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.

**Labels**

You can use the read-only <a
href="label-service.md"
class="xref" target="_blank">Label Service</a> to view all possible
labels for advertisers, insertion orders, line items, campaigns, and
publishers. This service allows you to view the labels that is already
applied to your objects.

<table id="advertiser-service__table_mmv_ndq_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="advertiser-service__table_mmv_ndq_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="advertiser-service__table_mmv_ndq_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="advertiser-service__table_mmv_ndq_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_mmv_ndq_5wb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_mmv_ndq_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_mmv_ndq_5wb__entry__3">The ID of the
label. Possible values: 1 (Salesperson), 3 (Account Manager), or 12
(Advertiser Type).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_mmv_ndq_5wb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_mmv_ndq_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_mmv_ndq_5wb__entry__3"><p>The name of
the label. Possible values: "Salesperson", "Account Manager", or
"Advertiser Type".</p>
<ul>
<li><strong>Read Only</strong>.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_mmv_ndq_5wb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_mmv_ndq_5wb__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_mmv_ndq_5wb__entry__3">The value
assigned to the label. For example, for the "Salesperson" label, this
could be a name such as "Michael Sellers".</td>
</tr>
</tbody>
</table>

**Pagination**

You can request a certain number of objects through these fields:

``` pre
"count": 8,
    "start_element": null,
    "num_elements": null
```

<table id="advertiser-service__table_lyh_mmd_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="advertiser-service__table_lyh_mmd_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="advertiser-service__table_lyh_mmd_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="advertiser-service__table_lyh_mmd_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_lyh_mmd_xwb__entry__1"><code
class="ph codeph">count</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_lyh_mmd_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_lyh_mmd_xwb__entry__3">How many
objects are in this service? For example, 8 advertisers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_lyh_mmd_xwb__entry__1"><code
class="ph codeph">num_elements</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_lyh_mmd_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_lyh_mmd_xwb__entry__3">How many
elements to return? For example, start at object # 4 and return 3
objects, or # 4, 5, 6.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_lyh_mmd_xwb__entry__1"><code
class="ph codeph">start_element</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_lyh_mmd_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="advertiser-service__table_lyh_mmd_xwb__entry__3">The number at
which to start counting.</td>
</tr>
</tbody>
</table>

**Default Brand**

<table id="advertiser-service__table_wv3_vdq_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="advertiser-service__table_wv3_vdq_5wb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="advertiser-service__table_wv3_vdq_5wb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="advertiser-service__table_wv3_vdq_5wb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_wv3_vdq_5wb__entry__1"><code
class="ph codeph">category_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_wv3_vdq_5wb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_wv3_vdq_5wb__entry__3">The ID of the
brand's category.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_wv3_vdq_5wb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_wv3_vdq_5wb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_wv3_vdq_5wb__entry__3">The brand's
ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_wv3_vdq_5wb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_wv3_vdq_5wb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-service__table_wv3_vdq_5wb__entry__3">The name of
the brand.</td>
</tr>
</tbody>
</table>

**Timezone for Dependent Objects**

When you change an advertiser's timezone, you can choose whether or not
to make the change "trickle down" to child objects (campaigns, line
items, and creatives). To do this, you should pass
`set_child_timezone=true` in the query string of the URL during your
request to create or update the timezone.

For example:



``` pre
$ curl -b cookies -X PUT -d @advertiser 'https://api.appnexus.com
/advertiser?id=111&set_child_timezone=true'
```



- If true, then timezone on all child objects is set to the Advertiser's
  timezone. Note that any timezone settings on lower-level objects
  (e.g., Insertion orders, Line Items, Campaigns) will be overridden
  with the Advertiser's timezone.
- If false, timezone is only set on the advertiser.





## Examples

**Add an advertiser**

>

``` pre
$ cat advertiser.json

{
   "advertiser":
   {
      "name":"Advertiser B",
      "state":"active"
   }
}

$ curl -b cookies -c cookies -X POST --data-binary @advertiser.json 'https://api.appnexus.com/advertiser'

{
   "response":{
      "status":"OK",
      "id":51
   }
}
```



**Update an advertiser**



``` pre
$ cat advertiser_update

{
   "advertiser":
   {
      "name":"Advertiser B",
      "state":"active",
      "code":"PSS"
   }
}

$ curl -b cookies -c cookies -X PUT --data-binary @advertiser_update 'https://api.appnexus.com/advertiser?id=51'

{
   "response":{
      "status":"OK",
      "id":492
   }
}
```





**View all advertisers**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/advertiser'

{
  "response": {
    "status": "OK",
    "advertisers": [
      {
        "id": 51,
        "code": null,
        "name": "Advertiser B",
        "state": "active",
        "default_brand_id": 0,
        "remarketing_segment_id": null,
        "lifetime_budget": null,
        "lifetime_budget_imps": null,
        "daily_budget": null,
        "daily_budget_imps": null,
        "enable_pacing": true,
        "profile_id": null,
        "thirdparty_pixels": [
          {
            "id":145,
            "name":"sample pixel",
            "audit_status":"pending",
            "active":true
          },
          {
            "id":314,
            "name":"another sample pixel",
            "audit_status":"pending",
            "active":true
          }
        ],
        "control_pct": 0,
        "timezone": "EST5EDT",
        "last_modified": "2010-08-03 23:07:02",
        "stats": null,
        "billing_internal_user": null,
        "billing_address1": "123 Happy Street",
        "billing_address2": "",
        "billing_city": "New York",
        "billing_state": "NY",
        "billing_country": "US",
        "billing_zip": "10011",
        "default_category": null,
        "default_currency": "USD",
        "labels": null,
        "use_insertion_orders": false,
        "time_format": "12-hour",
        "default_brand": null,
        "is_malicious": false
      },
      {
        "id": 493,
        "code": null,
        "name": "Cheese Club",
        "state": "active",
        "default_brand_id": 0,
        "remarketing_segment_id": 11111,
        "lifetime_budget": null,
        "lifetime_budget_imps": null,
        "daily_budget": null,
        "daily_budget_imps": null,
        "enable_pacing": true,
        "profile_id": null,
        "thirdparty_pixels":null,
        "control_pct": 0,
        "timezone": "EST5EDT",
        "last_modified": "2010-09-15 21:02:37",
        "stats": null,
        "billing_internal_user": null,
        "billing_address1": null,
        "billing_address2": null,
        "billing_city": null,
        "billing_state": null,
        "billing_country": null,
        "billing_zip": null,
        "default_category": null,
        "default_currency": "USD",
        "labels": null,
        "use_insertion_orders": false,
        "time_format": "12-hour",
        "default_brand": null,
        "is_malicious": false
      }
    ],
    "count": 5,
    "start_element": null,
    "num_elements": null,
    "dbg_info": {
      ...
    }
  }
}
```



**View a specific advertiser**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/advertiser?id=51'

{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":0,
        "num_elements":100,
        "advertiser":{
            "id":51,
            "code":null,
            "name":"Advertiser A",
            "state":"active",
            "default_brand_id":0,
            "remarketing_segment_id":null,
            "profile_id":null,
            "control_pct":0,
            "timezone":"EST5EDT",
            "last_modified":"2010-05-06 20:21:56",
            "member_id":79,
            "billing_name":null,
            "billing_phone":null,
            "billing_address1":null,
            "billing_address2":null,
            "billing_city":null,
            "billing_state":null,
            "billing_country":null,
            "billing_zip":null,
            "default_currency":"USD",
            "use_insertion_orders":false,
            "time_format":"12-hour",
            "is_malicious":false,
            "billing_internal_user":null,
            "default_category":null,
            "default_brand":null,
            "labels":null,
            "competitive_brands":null,
            "competitive_categories":null,
            "lifetime_budget":null,
            "lifetime_budget_imps":null,
            "daily_budget":null,
            "daily_budget_imps":null,
            "enable_pacing":null,
            "lifetime_pacing":null,
            "lifetime_pacing_span":null,
            "allow_safety_pacing":null,
            "stats":null
      }
   }
}
```






