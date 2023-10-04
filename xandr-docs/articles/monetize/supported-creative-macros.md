---
Title : Supported Creative Macros
Description : We have creative macros that can be used for all, mobile, and video
impressions. We also support privacy and function macros.
---


# Supported Creative Macros



We have creative macros that can be used for all, mobile, and video
impressions. We also support privacy and function macros.





Note: Creative macros are
case-sensitive and aren't available for piggyback conversion pixels.







## Creative Macros for All Impressions

The following macros can be used for all impressions:

<table
id="supported-creative-macros__table_ecfee077-62b9-4e78-af6c-c812a15fee2b"
class="table">
<caption><span class="table--title-label">Table 1. <span
class="title">Click Tracking Macros</caption>
<colgroup>
<col style="width: 46%" />
<col style="width: 53%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="supported-creative-macros__table_ecfee077-62b9-4e78-af6c-c812a15fee2b__entry__1"
class="entry">Macro</th>
<th
id="supported-creative-macros__table_ecfee077-62b9-4e78-af6c-c812a15fee2b__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ecfee077-62b9-4e78-af6c-c812a15fee2b__entry__1"><code
class="ph codeph">${CLICK_URL}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ecfee077-62b9-4e78-af6c-c812a15fee2b__entry__2">The
click tracking URL. For Example: <code
class="ph codeph">https://xandr.com </code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ecfee077-62b9-4e78-af6c-c812a15fee2b__entry__1"><code
class="ph codeph">${CLICK_URL_ENC}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ecfee077-62b9-4e78-af6c-c812a15fee2b__entry__2">The
encoded click tracking URL (only necessary for some third-party ad
servers). For Example: <code
class="ph codeph">https%3A%2F%2Fxandr.com</code></td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 1.
<span class="title">Click Tracking Macros

The following macros can be used in creative third-party tags and
landing page URLs:

<table
id="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5"
class="table">
<caption><span class="table--title-label">Table 2. <span
class="title">Additional Macros</caption>
<thead class="thead">
<tr class="header row">
<th
id="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"
class="entry">Macro</th>
<th
id="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${ADV_CODE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
code of the advertiser to which the creative belongs.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${ADV_FREQ}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
total number of impressions seen by a user across all advertiser
campaigns.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${ADV_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
ID of the advertiser to which the creative belongs.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${AGE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
age of the user if available. Supported values are an integer or 0.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${APPNEXUS_AUCTION_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">This
macro is an alias for <code class="ph codeph">${AUCTION_ID}</code>, and
behaves in the same manner.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${AUCTION_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
64-bit character string representing the individual auction that led to
the impression.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${BID_PRICE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
first price bid for this impression, as opposed to the price paid after
price reduction.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${BIDPRICE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">This
macro is an alias for <code class="ph codeph">${BID_PRICE}</code>, and
behaves in the same manner.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${CACHEBUSTER}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">A
random number string used to limit caching of the URL.

Note: This macro ensures that a fresh
call is made to the ad server every time the tag is called to accurately
count all impressions. If you don't add this macro to the tag, you may
see inaccurate impression totals.
</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${CP_CODE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
campaign code of the served impression.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${CP_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
campaign or split ID of the served impression.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${CPG_CODE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
line item code of the served impression.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${CPG_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
line item ID of the served impression.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${CREATIVE_CODE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
code of the creative served if available.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${CREATIVE_HEIGHT}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
height of the creative served.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${HEIGHT}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">This
is an alias for <code class="ph codeph">${CREATIVE_HEIGHT}</code>, and
behaves in the same manner.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${CREATIVE_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
creative ID that won the impression.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${CREATIVE_SIZE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
width and height of the creative served. For example: 300x250.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${CREATIVE_WIDTH}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
width of the creative served.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${WIDTH}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">This
macro is an alias for <code class="ph codeph">${CREATIVE_WIDTH}</code>,
and behaves in the same manner.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${CUSTOM_MODEL_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
<code class="ph codeph">id</code> of the custom model used in the
auction. When no custom model is used, this macro will return <code
class="ph codeph">0</code>.

Note: This custom macro will only work
for APB Alpha Test clients.
</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${CUSTOM_MODEL_LAST_MODIFIED}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
date and time (in Unix Epoch time) since the custom model that was used
in the auction was last modified. If no model was used, this macro will
return <code class="ph codeph">0</code>.

Note: This custom macro will only work
for APB Alpha Test clients.
</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${CUSTOM_MODEL_LEAF_NAME}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
<code class="ph codeph">leaf_name</code> specified in the leaf that
determined the winning bid. If no name is specified or if a model was
not used, this macro will return <code class="ph codeph">---</code>.
This aligns with the <code class="ph codeph">leaf_name</code> field in
the Standard Feed in Log Level Data. For more information, see <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a>.

Note: This custom macro will only work
for APB Alpha Test clients.
</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${DATACENTER}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
data center ID (1 = NYM, 2 = LAX, 3 = AMS, 4 = FRA, 5 = SIN).</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${DEAL_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
Xandr Deal ID associated with the winning bid if
applicable. If there is no deal, this macro will return <code
class="ph codeph">0</code>.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${ECP}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
publisher-side estimated clear price (ECP) for the auction.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${GENDER}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
gender of the user if available. Possible values include:
<ul>
<li><code class="ph codeph">f</code> (female)</li>
<li><code class="ph codeph">m</code> (male)</li>
<li><code class="ph codeph">u</code> (unknown)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${INV_SOURCE_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2"><strong>Deprecated</strong></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${IO_CODE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
insertion order code of the served impression.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${IO_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
insertion order ID of the served impression.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${OZONE_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2"><strong>Deprecated</strong></td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${PMT_RULE_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
ID of the payment rule used to price the impression.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${POSTAL_CODE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
postal code of the user.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${PRICE_PAID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
price paid for this impression after price reduction. This is the second
price.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${SECOND_PRICE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
price that represent the second highest bid in auction.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${PT1}, ${PT2}, ${PT3}, ${PT4}, ${PT5}, ${PT6}, ${PT7}, ${PT8}, ${PT9}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2"><div
id="supported-creative-macros__p_1e31b2d5-31f2-4add-826c-694e20a0dc92"
>
These macros can be populated with arbitrary custom data that you send
when using the following placement tag query string parameters:
<ul>
<li><code class="ph codeph">pt1</code></li>
<li><code class="ph codeph">pt2</code></li>
<li><code class="ph codeph">pt3</code></li>
<li><code class="ph codeph">pt4</code></li>
<li><code class="ph codeph">pt5</code></li>
<li><code class="ph codeph">pt6</code></li>
<li><code class="ph codeph">pt7</code></li>
<li><code class="ph codeph">pt8</code></li>
<li><code class="ph codeph">pt9</code></li>
</ul>

<p>For more information, see <a href="create-a-placement-tag-macro.html"
class="xref"
title="If you would like even more flexibility than what our existing macros provide, you can create a placement tag macro, which will send custom data on the placement ad call so that you can use it in your creative tag. You can create a placement tag macro if you have access to both managed supply and demand.">Create
a Placement Tag Macro</a>.</p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${PUBLISHER_CODE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
code of the publisher selling the impression.

Note: This ID is available only if the
publisher uses a code and has exposed it for reporting.
</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${PUBLISHER_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
ID of the publisher selling the impression.

Note: This ID is available only if the
publisher is exposed for reporting.
</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${REFERER_URL}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2"><strong>Deprecated</strong>

Note: Use <code
class="ph codeph">${REFERER_URL_ENC}</code> instead.
</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${REFERER_URL_ENC}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
encoded referring URL if available.
<p>For mobile app impressions, this macro returns the app store URL if
available.</p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${REM_USER}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">A
boolean value that indicates if the user is being remarketed.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${RESERVE_PRICE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
reserve price set by the publisher. When there isn't a reserve price,
this macro will return <code class="ph codeph">0</code>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${SCHEME}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">Populates
the appropriate application protocol (HTTP or HTTPS) depending on the
inventory type.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${SEG_CODES}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
codes for the segments that the winning buyer owns or has access to
within this user's cookie (in order of last seen time). If the user is
in more than 15 of your accessible segments, this macro will only return
the first 15 (ordered by most recently seen segment to oldest
segment).</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${SEG_IDS}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
IDs of the segments that the winning buyer owns or has access to within
this user's cookie (in order of last seen time). If the user is in more
than 15 of your accessible segments, this macro will only return the
first 15 (ordered by most recently seen segment to oldest segment).</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${SELLER_MEMBER_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
member ID of the member that is selling the impression.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${SITE_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
ID of the site that the impression is being served on.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${SSP_DATA}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">Required
for server-side conversion pixels. For more information, see <a
href="server-side-conversion-pixels.html" class="xref">Server-Side
Conversion Pixels</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${TAG_CODE1}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
integration code set on the placement.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${TAG_CODE2}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
additional integration code set on the placement.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${TAG_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
Xandr placement ID that initiated the bid
request.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${TIMESTAMP}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
UNIX timestamp for the auction.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${USE_COOKIES}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2"><div
id="supported-creative-macros__p_bc5c4ceb-f746-42b6-b821-196598655004"
>
This is used for third-party creatives to indicate whether cookies
should be set for the user viewing the impression. Allowed values
include:
<ul>
<li><code class="ph codeph">0</code> for no</li>
<li><code class="ph codeph">1</code> for yes</li>
</ul>

<p>For more information about cookie-related settings, see<span
class="ph"> <a href="cookie-privacy-settings.html" class="xref">Cookie
Privacy Settings</a> and the <a
href="https://docs.xandr.com/bundle/xandr-api/page/publisher-service.html"
class="xref" target="_blank">Publisher Service</a>.</p></td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${USER_AGENT}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
user agent string from the request's HTTP header. The user agent often
identifies information such as the application, operating system, and
software vendor acting on behalf of the user. For example: Mozilla/5.0
(Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920
Firefox/3.0.4.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${USER_AGENT_ENC}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
encoded user agent string from the request's HTTP header.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${USER_CITY}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
character string of the user's city.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${USER_COUNTRY}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
character string of the user's country.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${USER_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
Xandr 64-bit character string representing the
user for the impression.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${USER_IP}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
IP address of the user, which is truncated.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${USER_LOCALE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
language and dialect (aa-DD) reported by the user's device. For example,
en-ZA represents English (en) used in South Africa (ZA).</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__1"><code
class="ph codeph">${USER_STATE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5__entry__2">The
character string of the user's state or region.
<ul>
<li><strong>In the USA</strong>: 2 letter abbreviation</li>
<li><strong>Outside of USA</strong>: An encoded URL with the user's
country followed by the user's region ID (FIPS 10-4 or <span
class="ph">Xandr-generated)</li>
</ul>
For example, the region surrounding Riva, Latvia is LV%3A25 (encoding
for LV:A25).</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 2.
<span class="title">Additional Macros





## Creative Macros for Video Impressions

The following macros can be used specifically for video impressions:

<table
id="supported-creative-macros__table_f13861d0-148e-47db-99a5-56fbb61ac710"
class="table">
<caption><span class="table--title-label">Table 3. <span
class="title">Macros for Video Impressions</caption>
<thead class="thead">
<tr class="header row">
<th
id="supported-creative-macros__table_f13861d0-148e-47db-99a5-56fbb61ac710__entry__1"
class="entry">Macro</th>
<th
id="supported-creative-macros__table_f13861d0-148e-47db-99a5-56fbb61ac710__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_f13861d0-148e-47db-99a5-56fbb61ac710__entry__1"><code
class="ph codeph">${VIDEO_CONTEXT}</code></td>
<td class="entry"
headers="supported-creative-macros__table_f13861d0-148e-47db-99a5-56fbb61ac710__entry__2">The
context of the video ad. Allowed values include:
<ul>
<li>0: In-stream unknown</li>
<li>1: In-stream pre-roll</li>
<li>2: In-stream mid-roll</li>
<li>3: In-stream post-roll</li>
<li>4: Out-stream</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_f13861d0-148e-47db-99a5-56fbb61ac710__entry__1"><code
class="ph codeph">${VIDEO_PLAYBACK_METHOD}</code></td>
<td class="entry"
headers="supported-creative-macros__table_f13861d0-148e-47db-99a5-56fbb61ac710__entry__2">Specifies
how the video was played. Allowed values include:
<ul>
<li>0: Unknown</li>
<li>1: Auto-play, sound-on</li>
<li>2: Auto-play, sound-off</li>
<li>3: Click-to-play</li>
<li>4: Mouse-over</li>
<li>5: Auto-play, sound unknown</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_f13861d0-148e-47db-99a5-56fbb61ac710__entry__1"><code
class="ph codeph">${VIDEO_PLAYER_WIDTH}</code></td>
<td class="entry"
headers="supported-creative-macros__table_f13861d0-148e-47db-99a5-56fbb61ac710__entry__2">The
width of the video player, expressed in pixels.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_f13861d0-148e-47db-99a5-56fbb61ac710__entry__1"><code
class="ph codeph">${VIDEO_PLAYER_HEIGHT}</code></td>
<td class="entry"
headers="supported-creative-macros__table_f13861d0-148e-47db-99a5-56fbb61ac710__entry__2">The
height of the video player, expressed in pixels.</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 3.
<span class="title">Macros for Video Impressions



<div id="supported-creative-macros__section_6e3872ac-3c55-4846-9f1e-9f6d62e4698e"
>

## Creative Macros for Mobile Impressions

The following macros can be used specifically for mobile impressions:

<table
id="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25"
class="table">
<caption><span class="table--title-label">Table 4. <span
class="title">Macros for Mobile Impressions</caption>
<thead class="thead">
<tr class="header row">
<th
id="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"
class="entry">Macro</th>
<th
id="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${CARRIER_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
Xandr integer representing the mobile carrier
ID. For a complete list of carrier IDs, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/carrier-service.html"
class="xref" target="_blank">Carrier Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${DEVICE_AAID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
Android advertising identifier when the impression is delivered from an
Android device.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${DEVICE_APPLE_IDA}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
Apple advertising identifier when the impression is delivered from an
Apple device.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${DEVICE_IFA}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
unique identifier representing the device.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${DEVICE_IFA_TYPE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2"><div
id="supported-creative-macros__p_8029ae38-ceb5-4cc8-96e0-353db11714ab"
>
The type of identifier represented by the <code
class="ph codeph">${DEVICE_IFA}</code>. Possible values include:
<ul>
<li>AAID (Android Advertising ID/Google)</li>
<li>IDFA (Identifier for Advertising/Apple)</li>
<li>AFAI (Amazon Fire ID)</li>
<li>RIDA (Roku ID)</li>
<li>OPENUDID</li>
<li>TIFA (Tizen Identifier for Advertising (Samsung Ad ID))</li>
<li>VIDA (Vizio Advertising ID)</li>
<li>LGUDID (LG Unique Device ID)</li>
</ul>

<p><code class="ph codeph">${DEVICE_IFA_TYPE}</code> should be used in
conjunction with <code class="ph codeph">${DEVICE_IFA}</code>, and this
setup is recommended over individual device macros specific to each IFA
type. These macros are applicable to both mobile and CTV device
types.</p></td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${DEVICE_MAKE_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
Xandr integer representing the ID of the make of
the mobile device such as <code class="ph codeph">26</code>. For a
complete list of mobile device make IDs, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${DEVICE_MD5}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
MD5-encrypted unique identifier representing the mobile device.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${DEVICE_MODEL_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
Xandr integer representing the ID of the mobile
device model such as <code class="ph codeph">301</code>. For a complete
list of mobile device model IDs, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${DEVICE_ODIN}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
ODIN-encrypted unique identifier representing the mobile device. For
more information, see <a href="https://code.google.com/p/odinmobile/"
class="xref" target="_blank">ODIN</a>.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${DEVICE_OPENUDID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
OPENUDID-encrypted unique identifier representing the mobile
device.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${DEVICE_SHA1}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
SHA1-encrypted unique identifier representing the mobile device.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${DEVICE_WIN_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
Windows Ad ID for the device on which this impression occurred if
applicable.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${EXT_APP_ID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
external identifier for the application requesting the impression. This
macro is only useful for mobile app impressions.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${GEO_LAT}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
latitude of the user's location when GPS data is available from a mobile
device, expressed using the <code
class="ph codeph">snn.ddd,snn.ddd</code> format such as <code
class="ph codeph">+12.345</code> or <code
class="ph codeph">-45.123</code>. South is represented as a negative in
this example. To comply with privacy standards, the maximum is five
decimal places of precision.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${GEO_LON}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">The
longitude of the user's location when GPS data is available from a
mobile device. expressed using the format <code
class="ph codeph">snn.ddd,snn.ddd</code>. For example: <code
class="ph codeph">+12.345</code> or <code
class="ph codeph">-45.123</code>. West is represented as a negative in
this example. To comply with privacy standards, the maximum is five
decimal places of precision.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${IS_PREVIEW}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">A
flag can be passed to the third-party server so that production
impressions don't get counted in the total number of impressions when
previewing creatives. Possible values include:
<ul>
<li><code class="ph codeph">0</code> for no</li>
<li><code class="ph codeph">1</code> for yes</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__1"><code
class="ph codeph">${SUPPLY_TYPE}</code></td>
<td class="entry"
headers="supported-creative-macros__table_5608232e-4377-4073-b87b-8fb958d12d25__entry__2">This
macro will be populated with a numeric value that denotes the supply
type of the impression. Allowed values include:
<ul>
<li>0: web</li>
<li>1: mobile web</li>
<li>2: mobile app</li>
<li>4: toolbar</li>
</ul></td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 4.
<span class="title">Macros for Mobile Impressions



<div id="supported-creative-macros__section_6d99aaa0-bf77-4bf4-ab75-6b922371041d"
>

## Privacy Macros

In order for our clients to meet their transparency, notice, and
choice/consent requirements under US state privacy law, the GDPR and the
ePrivacy Directive, Xandr supports the
<a href="https://iabtechlab.com/gpp" class="xref" target="_blank">Global
Privacy Platform</a> and the IAB Europe Transparency & Consent Framework
(the "Framework"). For more information, see  <a
href="https://iabeurope.eu/knowledgehub/policy/transparency-consent-framework-publishers-factsheet/"
class="xref" target="_blank">the IAB Europe Transparency &amp; Consent
Framework</a>. Publishers should reference
<a href="https://wiki.xandr.com/display/GDPR/GDPR+and+ePR+-+Home"
class="xref" target="_blank">Privacy Regulations and Xandr: A Guide for
Clients</a> when using macros, such as the ones noted in the table
below, to surface notice, transparency, and choice to end users located
in the EEA, signal approved vendors, and pass consent to
Xandr and demand sources as well as their
vendors through the Xandr Platform. For more
information, see
<a href="https://wiki.xandr.com/display/policies/Home" class="xref"
target="_blank">Service Policies</a> (login required).

<table
id="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f"
class="table frame-all">
<caption><span class="table--title-label">Table 5. <span
class="title">Privacy Macros</caption>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__1"
class="entry">Macro</th>
<th
id="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__1"><code
class="ph codeph">${GDPR_APPLIES}</code></td>
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__2"><div
id="supported-creative-macros__p_11be582b-cf39-437f-ba93-c0ea0e5fdaa0"
>
Designates whether GDPR regulations are applied. It specifically
indicates whether the user is located in a GDPR impacted country, or if
we have a GDPR-required signal passed with the request. Possible values
include:
<ul>
<li><code class="ph codeph">0</code> for no</li>
<li><code class="ph codeph">1</code> for yes</li>
</ul>

Note: <code class="ph codeph">0</code>
may be received from an EEA country. It is the publisher's choice to
signal in this manner.

</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__1"><code
class="ph codeph">${GDPR}</code></td>
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__2">This
is an alias for <code class="ph codeph">${GDPR_APPLIES}</code>, and
behaves in the same manner.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__1"><code
class="ph codeph">${GDPR_CONSENT_STRING}</code></td>
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__2"><p>This
macro specifies the IAB GDPR consent string. If the GDPR applies, it
will contain a list of user-approved vendors based on the IAB GDPR
Transparency and Consent Framework. For more information, see <a
href="https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework"
class="xref" target="_blank">IAB GDPR Transparency and Consent
Framework</a>.</p></td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__1"><code
class="ph codeph">${GDPR_CONSENT}</code></td>
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__2">This
macro is an alias for <code
class="ph codeph">${GDPR_CONSENT_STRING}</code>, and behaves in the same
manner.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__1"><code
class="ph codeph">${XANDR_DOMAIN}</code></td>
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__2">Dynamically
retrieves the appropriate Xandr domain based on
the cookie consent settings included in the TCF string. If the user has
cookies enabled from their browser settings but has:
<ul>
<li>not given consent for their cookies to be included in the TCF
string, the <a href="https://adnxs-simple.com/" class="xref"
target="_blank">adnxs-simple.com</a> domain will be used to prevent the
browser from attaching cookies to subsequent ad calls.</li>
<li>given consent for their cookies to be included in the TCF string,
the <a href="https://adnxs.com/" class="xref"
target="_blank">adnxs.com</a> domain will be used to pass cookies in the
header of each ad call.</li>
</ul>

Note: This macro should only be used if
you plan on serving impressions in countries that require consent for
cookies.
</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__1"><code
class="ph codeph">${GPP_SID}</code></td>
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__2">Designates
whether a section (i.e. regulatory framework) of the <a
href="https://iabtechlab.com/gpp" class="xref" target="_blank">Global
Privacy Platform</a> should be applied. Specifically, it indicates
whether the user is located in a country affected by legislation covered
by the GPP.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__1"><code
class="ph codeph">${GPP_STRING_XXXXX</code><sup><code
class="ph codeph">*</code></sup><code class="ph codeph">}</code></td>
<td class="entry"
headers="supported-creative-macros__table_9b18ae10-c879-4a33-b8d8-e984dc2e757f__entry__2">This
is the IAB <a href="https://iabtechlab.com/gpp" class="xref"
target="_blank">Global Privacy Platform</a> (GPP) string. If a section
of the GPP applies, then this will contain framework-dependent
information reflecting the consent elections of the user.
<div
id="supported-creative-macros__note-886dd961-758b-493d-be77-4c37cb31c049"
class="note note_note">
Note: * XXXXX can represent any
numerical id
</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 5.
<span class="title">Privacy Macros



<div id="supported-creative-macros__section_91e1ad60-bd39-44d6-a294-ef420d08be38"
>

## Function Macros

A function macro performs a function on another macro. Function macros
can be used in combination with any other creative macro, including
custom macros. If they are not recognized at render time, they will not
be translated and the function will not be called.

Xandr currently supports the `{$URL_ENC}`
function macro, which can be used for a variety of purposes related to
encoding. A key use case is when a URL needs to be passed from ad server
to ad server using a creative macro. Due to the presence of unsupported
characters in standard URL formatting, the `{$URL_ENC}` function macro
must be encoded at various stages of the process.

<div id="supported-creative-macros__p_0253f6f9-ffed-4793-a886-4d2a7a488265"
>

This function macro takes the following form:

``` pre
${URL_ENC(${MACRO_NAME},#)}
```



<div id="supported-creative-macros__p_7721d383-a5e6-4aad-b8df-107554a2607a"
>

`${MACRO_NAME}` is the macro to be encoded and `#` is the integer
representing the number of times to encode the contents. Possible values
include:

- `1`
- `2`
- `3`



Each encoding corresponds to a step in the redirect chain, as well as
how a given third-party click tracker works with the macro. Double
encoding will usually be needed for final destination URLs when a second
ad server is involved, and triple encoding for a third ad server.

To determine whether you will need to use single, double, or triple
encoding, you should check with your third-party click tracker and then
test your `URL_ENC` macro to ensure it works. If your macro is not
working, one consequence of this may be link breakage, which will result
in users not reaching the intended destination URL.

<table
id="supported-creative-macros__table_7e99457b-e493-48cb-b6b2-53c9ea82ea5d"
class="table frame-all">
<caption><span class="table--title-label">Table 6. <span
class="title">Encoding Examples</caption>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="supported-creative-macros__table_7e99457b-e493-48cb-b6b2-53c9ea82ea5d__entry__1"
class="entry">Encoding Example</th>
<th
id="supported-creative-macros__table_7e99457b-e493-48cb-b6b2-53c9ea82ea5d__entry__2"
class="entry">Format</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_7e99457b-e493-48cb-b6b2-53c9ea82ea5d__entry__1">Encoding
click URLs once</td>
<td class="entry"
headers="supported-creative-macros__table_7e99457b-e493-48cb-b6b2-53c9ea82ea5d__entry__2">Use
the following format:
<pre class="pre codeblock"><code>${URL_ENC(${CLICK_URL},1)}</code></pre>

Note: If <a href="https://xandr.com"
class="xref" target="_blank"><code
class="ph codeph">https://xandr.com</code></a> is passed as the click
URL, using <code class="ph codeph">${URL_ENC(${CLICK_URL},1)}</code> to
single encode the URL would result in <code
class="ph codeph">https%3A%2F%2Fxandr.com</code>populating the creative.
</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_7e99457b-e493-48cb-b6b2-53c9ea82ea5d__entry__1">Encoding
media URL once</td>
<td class="entry"
headers="supported-creative-macros__table_7e99457b-e493-48cb-b6b2-53c9ea82ea5d__entry__2">Use
the following format:
<pre class="pre codeblock"><code>${URL_ENC(${MEDIA_URL},1)}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-creative-macros__table_7e99457b-e493-48cb-b6b2-53c9ea82ea5d__entry__1">Encoding
media URL twice</td>
<td class="entry"
headers="supported-creative-macros__table_7e99457b-e493-48cb-b6b2-53c9ea82ea5d__entry__2">Use
the following format:
<pre class="pre codeblock"><code>${URL_ENC(${MEDIA_URL},2)}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-creative-macros__table_7e99457b-e493-48cb-b6b2-53c9ea82ea5d__entry__1">Encoding
a custom macro called ADFORMAT once</td>
<td class="entry"
headers="supported-creative-macros__table_7e99457b-e493-48cb-b6b2-53c9ea82ea5d__entry__2">Use
the following format:
<pre class="pre codeblock"><code>${URL_ENC(#{ADFORMAT},1)}</code></pre></td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 6.
<span class="title">Encoding Examples



<div id="supported-creative-macros__section_mqd_nh1_nmb"
>

## Related Topics

- <a href="creative-macros.html" class="xref"
  title="You can insert creative macros into your creative third-party tags, impression trackers, landing page URLs, and third-party pixels for reporting and optimization purposes.">Creative
  Macros</a>






