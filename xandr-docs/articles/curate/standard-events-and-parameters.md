---
Title : Standard Events and Parameters
Description : The following table shows the standard events you can track using the
universal pixel.
---


# Standard Events and Parameters





The following table shows the standard events you can track using the
universal pixel.



<table
id="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__1"
class="entry">Standard Event</th>
<th
id="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__1"><pre
class="pre codeblock"><code>PageView</code></pre></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__2">Track
any type of page view (default event included in Universal Pixel
script)</td>
</tr>
<tr class="even row">
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__1"><pre
class="pre codeblock"><code>LandingPage</code></pre></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__2">Track
landing page views</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__1"><pre
class="pre codeblock"><code>ItemView</code></pre></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__2">Track
key page views (for example, product page or article)</td>
</tr>
<tr class="even row">
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__1"><pre
class="pre codeblock"><code>AddToCart</code></pre></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__2">Track
when items are added to a shopping cart (for example, by visiting a
landing page from an Add to Cart
button)</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__1"><pre
class="pre codeblock"><code>InitiateCheckout</code></pre></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__2">Track
when users enter the checkout flow (for example, by visiting a landing
page from a Checkout button)</td>
</tr>
<tr class="even row">
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__1"><pre
class="pre codeblock"><code>AddPaymentInfo</code></pre></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__2">Track
when payment information is added in the checkout flow (e.g., landing
page on billing info)</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__1"><pre
class="pre codeblock"><code>Purchase</code></pre></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__2">Track
purchases or checkout flow completions (for example, landing on a "Thank
You" or confirmation page)</td>
</tr>
<tr class="even row">
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__1"><pre
class="pre codeblock"><code>Lead</code></pre></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_sbc_pfz_jgb__entry__2">Track
when users express interest in an offering (for example, submit a form,
sign up for a trial, or register)</td>
</tr>
</tbody>
</table>



The following table shows the standard query parameters you can pass as
part of a standard or custom event. Parameters are passed in a JSON file
on the event call, and have a 100-character maximum. Parameters can
accept a single value or a comma-delimited array.

<table
id="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb"
class="table frame-all">
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__1"
class="entry">Parameter</th>
<th
id="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__2"
class="entry">Query String Key in Image Tag Implementation</th>
<th
id="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__3"
class="entry">Variable Type</th>
<th
id="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__4"
class="entry">Supports Arrays/Lists</th>
<th
id="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__5"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__1"><code
class="ph codeph">item_id</code></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__2"><code
class="ph codeph">ii</code></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__3">String</td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__4">True</td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__5">The
item id associated with the event, for example, the product or catalog
id</td>
</tr>
<tr class="even row">
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__1"><code
class="ph codeph">item_name</code></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__2"><code
class="ph codeph">in</code></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__3">String</td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__4">True</td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__5">The
name of the page or product</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__1"><code
class="ph codeph">item_type</code></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__2"><code
class="ph codeph">itp</code></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__3">String</td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__4">True</td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__5">The
category of the page or product</td>
</tr>
<tr class="even row">
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__2"><code
class="ph codeph">va</code></td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__3">Float</td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__4">False</td>
<td class="entry"
headers="universal-pixel-standard-events-and-parameters__table_fgd_m33_rsb__entry__5">The
numerical value associated with the event, for example, the price or
cart value.</td>
</tr>
</tbody>
</table>



<div id="universal-pixel-standard-events-and-parameters__section_mqd_nh1_nmb"
>

## Related Topics

- <a href="create-custom-events-and-parameters.html" class="xref"
  title="If you click the pencil icon next to a pixel on the Universal Pixels page, you can create custom events and parameters for the universal pixel using the UI and include them in your generated pixel code.">Create
  Custom Events and Parameters</a>






