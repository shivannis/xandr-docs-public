---
Title : Conversion Pixel Service
Description : The Pixel Service can be used to create **conversion pixels** to place
on advertiser pages to track both view and click-based conversions.
---


# Conversion Pixel Service





The Pixel Service can be used to create **conversion pixels** to place
on advertiser pages to track both view and click-based conversions.

<div id="buy-side-service-template__note_lsr_fqq_5wb"


Note: Once you have a conversion pixel
ID, the basic format of an image conversion pixel is
`<img src="https://ib.adnxs.com/px?id=37&t=2" width="1" height="1" />`.





<div id="buy-side-service-template__note_rly_gqq_5wb"
class="note tip note_tip">

Tip: Segment pixels are created
separately via the <a
href="https://docs.xandr.com/bundle/xandr-api/page/segment-service.html"
class="xref" target="_blank">Segment Service</a>.





## REST API



<table
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/pixel" class="xref"
target="_blank">https://api.appnexus.com/pixel</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all conversion pixels.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/pixel?id=123,456,789" class="xref"
target="_blank">https://api.appnexus.com/pixel?id=123,456,789</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
an array of specific conversion pixels.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/pixel?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/pixel?advertiser_id=ADVERTISER_ID</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all conversion pixels for one of your advertisers.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/pixel?advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/pixel?advertiser_code=ADVERTISER_CODE</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all conversion pixels for one of your advertisers.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/pixel?advertiser_id=ADVERTISER_ID&amp;id=PIXEL_ID"
class="xref"
target="_blank">https://api.appnexus.com/pixel?advertiser_id=ADVERTISER_ID&amp;id=PIXEL_ID</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a particular conversion pixel for one of your advertisers.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/pixel?advertiser_code=ADVERTISER_CODE&amp;code=PIXEL_CODE"
class="xref"
target="_blank">https://api.appnexus.com/pixel?advertiser_code=ADVERTISER_CODE&amp;code=PIXEL_CODE</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a particular conversion pixel for one of your advertisers.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/pixel/meta" class="xref"
target="_blank">https://api.appnexus.com/pixel/meta</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/pixel?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/pixel?advertiser_id=ADVERTISER_ID</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new conversion pixel to one of your advertisers.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/pixel?advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/pixel?advertiser_code=ADVERTISER_CODE</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new conversion pixel to one of your advertisers.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/pixel?advertiser_id=ADVERTISER_ID&amp;id=PIXEL_ID"
class="xref"
target="_blank">https://api.appnexus.com/pixel?advertiser_id=ADVERTISER_ID&amp;id=PIXEL_ID</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an existing conversion pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/pixel?advertiser_code=ADVERTISER_CODE&amp;code=PIXEL_CODE"
class="xref"
target="_blank">https://api.appnexus.com/pixel?advertiser_code=ADVERTISER_CODE&amp;code=PIXEL_CODE</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an existing conversion pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/pixel?advertiser_id=ADVERTISER_ID&amp;id=PIXEL_ID"
class="xref"
target="_blank">https://api.appnexus.com/pixel?advertiser_id=ADVERTISER_ID&amp;id=PIXEL_ID</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"><div
>
Delete an existing conversion pixel.
<div id="buy-side-service-template__note_rpm_4qq_5wb"
class="note note_note">
Note: You cannot delete a pixel that is
used by one or more line items. You must <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">edit the line item</a> to remove the
conversion pixel first.

</td>
</tr>
</tbody>
</table>







## JSON Fields



<table
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-center colsep-1 rowsep-1">Field</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the advertiser that owns the pixel.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">campaigns</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
campaigns with which the pixel is associated. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/conversion-pixel-service.html#ConversionPixelService-Campaigns"
class="xref" target="_blank">Campaigns</a> below for details about the
fields in this array.</p>
<ul>
<li><strong>Read Only.</strong></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
custom code for the pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time when the pixel was created.</p>
<ul>
<li><strong>Read Only.</strong></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
internal ID associated with the pixel.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">PUT</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
name of the pixel.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time when the pixel was last modified.</p>
<ul>
<li><strong>Read Only.</strong></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">line_items</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
line items with which the pixel is associated. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/conversion-pixel-service.html#ConversionPixelService-LineItems"
class="xref" target="_blank">Line Items</a> below for details about the
fields in this array.</p>
<ul>
<li><strong>Read Only.</strong></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">min_minutes_per_conv</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
interval (in minutes) to allow a repeat conversion. Maximum value is
<code class="ph codeph">32767</code> (22 days).</p>
<ul>
<li>If set to <code class="ph codeph">0</code>: count all
conversions.</li>
<li>If set to null (default): Count one per user.</li>
</ul>
<ul>
<li><strong>Default:</strong> <code class="ph codeph">null</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">piggyback_pixels</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
URLs of the pixels you want us to fire when the conversion pixel fires.
See <a
href="https://docs.xandr.com/bundle/xandr-api/page/conversion-pixel-service.html#ConversionPixelService-PiggybackPixels"
class="xref" target="_blank">Piggyback Pixels</a> below for
details.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">pixel_conversion_event</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
pixel conversion event category with which the pixel is associated. See
<a
href="https://docs.xandr.com/bundle/xandr-api/page/conversion-pixel-service.html#ConversionPixelService-PixelConversionEvent"
class="xref" target="_blank">Pixel Conversion Event</a> below for
details.</p>
<ul>
<li><strong>Read Only</strong></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">pixel_conversion_event_id</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Optional.
The ID of the conversion event associated with the pixel. Setting an
event category will not affect our optimization algorithms immediately.
Instead, it provides our optimization team with valuable data for
prediction that we can start to test and incorporate. If you don't see a
good match for your type of conversion event, leave this field
blank.</p>
<p>Possible values are:</p>
<ul>
<li>null - No category selected.</li>
<li><code class="ph codeph">2 -</code> <strong>Visit landing
page</strong> - A user visits your website after being served an
ad.</li>
<li><code class="ph codeph">3 -</code><strong>Item view</strong> - A
user visits a page on your website that displays one or more products or
services.</li>
<li><code class="ph codeph">4 -</code> <strong>Add to cart</strong> - A
user adds one or more of your products or services to their shopping
cart.</li>
<li><code class="ph codeph">5</code> <strong><code
class="ph codeph">-</code> Initiate checkout</strong> - A user begins
the checkout process.</li>
<li><code class="ph codeph">6</code> <strong><code
class="ph codeph">-</code> Add payment info</strong> - A user adds
payment information, such as a credit card number, during the checkout
process.</li>
<li><code class="ph codeph">7</code> <strong><code
class="ph codeph">-</code> Purchase</strong> - A confirmed sale of your
product or service.</li>
<li><code class="ph codeph">8</code><strong><code
class="ph codeph">-</code> Generate lead</strong> - Collect lead
information, such as email addresses or zip codes, from people
interested in your business.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">post_click_expire_mins</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
interval (in minutes) from impression time allowed for a click
conversion to be counted as eligible. Maximum value is <code
class="ph codeph">129600</code> (90 days). If set to <code
class="ph codeph">0</code> or null, the maximum lookback window
applies.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">post_click_value</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
value you attribute to a conversion after a click.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">post_view_expire_mins</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
interval (in minutes) from impression time allowed for a view conversion
to be counted as eligible. Maximum value is <code
class="ph codeph">43200</code> (30 days). If set to <code
class="ph codeph">0</code> or null, the maximum lookback window
applies.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">post_view_value</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
value you attribute to a conversion after a view.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
state of the pixel. Possible values: "active" or "inactive".</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">trigger_type</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
type of event required for a valid (attributed) conversion. Possible
values: <code class="ph codeph">view</code>, <code
class="ph codeph">click</code>, or <code
class="ph codeph">hybrid</code>.</p>
<ul>
<li><strong>Default:</strong> click</li>
</ul></td>
</tr>
</tbody>
</table>



**Campaigns**

This array shows you the campaign associations. To associate a pixel to
a campaign, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">Campaign Service</a>.

<table id="buy-side-service-template__table_fjq_zqq_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_fjq_zqq_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_fjq_zqq_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_fjq_zqq_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fjq_zqq_5wb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fjq_zqq_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fjq_zqq_5wb__entry__3"><p>The
ID of the campaign.</p>
<ul>
<li><strong>Read Only.</strong></li>
</ul></td>
</tr>
</tbody>
</table>

**Line Items**

This array shows you the line item associations. To associate a pixel to
a line item, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a>.

<table id="buy-side-service-template__table_rmm_crq_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_rmm_crq_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_rmm_crq_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_rmm_crq_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rmm_crq_5wb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rmm_crq_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rmm_crq_5wb__entry__3"><p>The
ID of the line item.</p>
<ul>
<li><strong>Read Only.</strong></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rmm_crq_5wb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rmm_crq_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rmm_crq_5wb__entry__3"><p>The
name of the line item.</p>
<ul>
<li><strong>Read Only.</strong></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rmm_crq_5wb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rmm_crq_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rmm_crq_5wb__entry__3"><p>The
state of the line item. Possible values: "active" or "inactive".</p>
<ul>
<li><strong>Read Only.</strong></li>
</ul></td>
</tr>
</tbody>
</table>

**Piggyback Pixels**

Each object in the `piggyback_pixels` array contains the following
fields.

When adding piggyback pixels, please keep the following in mind:

- Image pixels can only piggyback off other image pixels, and JavaScript
  pixels can only piggyback other JavaScript pixels.
- Image pixels can only have one piggyback pixel. If you need to
  piggyback multiple pixels, be sure to use a JavaScript pixel.
- There are no character limits to piggybacked pixels in AppNexus, but
  browser/server URL limits may apply.

<table id="buy-side-service-template__table_ujk_grq_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_ujk_grq_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_ujk_grq_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (length)</th>
<th id="buy-side-service-template__table_ujk_grq_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ujk_grq_5wb__entry__1"><code
class="ph codeph">pixel_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ujk_grq_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ujk_grq_5wb__entry__3">The
type of the pixel to piggyback. Possible values: "js" or "img".</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ujk_grq_5wb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ujk_grq_5wb__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ujk_grq_5wb__entry__3">The URL
of the pixel to piggyback.</td>
</tr>
</tbody>
</table>

**Pixel Conversion Event**

<table id="buy-side-service-template__table_jdk_qrq_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_jdk_qrq_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_jdk_qrq_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_jdk_qrq_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jdk_qrq_5wb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jdk_qrq_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jdk_qrq_5wb__entry__3"><p>The
ID of the conversion event optionally associated with this pixel.
Possible values are integers between 2 and 8, which are associated with
the <code class="ph codeph">name</code> values below.</p>
<ul>
<li><code class="ph codeph">null </code>- no category selected.</li>
<li><code class="ph codeph">2 -</code> <strong>LandingPage</strong> - A
user visits your website after being served an ad.</li>
<li><code class="ph codeph">3 -</code> <strong>ItemView</strong> - A
user visits a page on your website that displays one or more products or
services.</li>
<li><code class="ph codeph">4</code> <code class="ph codeph">-</code>
<strong>AddToCart</strong> - A user adds one or more of your products or
services to their shopping cart.</li>
<li><code class="ph codeph">5</code> <code class="ph codeph">-</code>
<strong>InitiateCheckout</strong> - A user begins the checkout
process.</li>
<li><code class="ph codeph">6</code> <strong><code
class="ph codeph">-</code> AddPaymentInfo</strong> - A user adds payment
information, such as a credit card number, during the checkout
process.</li>
<li><code class="ph codeph">7 </code><strong><code
class="ph codeph">-</code> Purchase</strong> - A confirmed sale of your
product or service.</li>
<li><code class="ph codeph">8 </code><strong><code
class="ph codeph">-</code> Lead</strong> - Collect lead information,
such as email addresses or zip codes, from people interested in your
business.</li>
<li><strong>Read Only.</strong></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jdk_qrq_5wb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jdk_qrq_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jdk_qrq_5wb__entry__3"><p>The
name of the conversion event optionally associated with this pixel.
Possible values are associated with the <code
class="ph codeph">id</code> values above:</p>
<ul>
<li><code class="ph codeph">null </code>- no category selected.</li>
<li>2 - <strong>LandingPage</strong> - A user visits your website after
being served an ad.</li>
<li>3 - <strong>ItemView</strong> - A user visits a page on your website
that displays one or more products or services.</li>
<li>4 - <strong>AddToCart</strong> - A user adds one or more of your
products or services to their shopping cart.</li>
<li>5 - <strong>InitiateCheckout</strong> - A user begins the checkout
process.</li>
<li>6 - <strong>AddPaymentInfo</strong> - A user adds payment
information, such as a credit card number, during the checkout
process.</li>
<li>7 - <strong>Purchase</strong> - A confirmed sale of your product or
service.</li>
<li>8 - <strong>Lead</strong> - Collect lead information, such as email
addresses or zip codes, from people interested in your business.</li>
<li><strong>Read Only.</strong></li>
</ul></td>
</tr>
</tbody>
</table>





## Examples

**Add a conversion pixel for advertiser 2**

<div id="buy-side-service-template__p-20eb2a6d-1e56-42a6-96ee-f5d79f857f38"
>

``` pre
$ cat pixel

{
    "pixel": {
        "min_minutes_per_conv": 120,
        "name": "ProStarr Post View Pixel 2",
        "piggyback_pixels": [
            {
                "pixel_type": "img",
                "url": "https://www.testing.com"
            }
        ],
        "post_view_expire_mins": 3600,
        "post_view_value": 1,
        "state": "active",
        "trigger_type": "view"
    }
}

$ curl -b cookies -c cookies -X POST -d @pixel 'https://api.appnexus.com/pixel?advertiser_id=2'

{
   "response":{
      "status":"OK",
      "id":17
   }
}
```



**View conversion pixel 17 for advertiser 2**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/pixel?id=17&advertiser_id=2'

{
    "response": {
        "status": "OK",
        "pixels": [
            {
                "id": 17,
                "code": null,
                "name": "ProStarr Hybrid Pixel",
                "state": "active",
                "campaigns": [
                    {
                        "id": "17607"
                    }
                ],
               "line_items": [
                    {
                        "id": 382,
                        "name": "Line Item",
                        "state": "active"
                    }
                ],
                "trigger_type": "hybrid",
                "min_minutes_per_conv": null,
                "post_view_expire_mins": null,
                "post_click_expire_mins": null,
                "post_click_value": 10,
                "post_view_value": 1,
                "piggyback_pixels": [
                    {
                        "url": "https://www.testing.com",
                        "pixel_type": "img"
                    }
                ],
                "created_on": "2010-01-01 19:24:20",
                "last_modified": "2010-01-15 21:41:40",
                "advertiser_id": 2
            }
        ]
    }
}
```

**View conversion pixels for all advertisers**

<div id="buy-side-service-template__note_rrs_gsq_5wb"


Note: "advertiser_id" field tells you
the advertiser to which the pixel belongs.



``` pre
$ curl -b cookies -c cookies -X POST -d @pixel 'https://api.appnexus.com/pixel'

{
    "response": {
        "status": "OK",
        "pixels": [
            {
                "id": 5,
                "code": null,
                "name": "Sample Pixel 1",
                "state": "active",
                "campaigns": [
                    {
                        "id": "17883"
                    },
                    {
                        "id": "34091"
                    }
                ],
                "line_items": [
                    {
                        "id": 67729,
                        "name": "5556",
                        "state": "active"
                    },
                    {
                        "id": 67734,
                        "name": "7017",
                        "state": "active"
                    },
                    {
                        "id": 67733,
                        "name": "8302",
                        "state": "active"
                    }
                ],
                "trigger_type": "view",
                "min_minutes_per_conv": 32767,
                "post_view_expire_mins": 1440,
                "post_click_expire_mins": null,
                "post_click_value": null,
                "post_view_value": 0,
                "piggyback_pixels": [
                    {
                        "url": "https://test.com/test",
                        "pixel_type": "img"
                    }
                ],
                "created_on": "2011-08-12 18:11:13",
                "last_modified": "2011-09-12 19:55:21",
                "advertiser_id": 8
            },
            {
                "id": 6,
                "code": null,
                "name": "blargh2",
                "state": "active",
                "campaigns": [
                    {
                        "id": "17775"
                    },
                    {
                        "id": "17776"
                    }
                ],
                "line_items": [
                    {
                        "id": 67895,
                        "name": "7082",
                        "state": "active"
                    },
                    {
                        "id": 67477,
                        "name": "3468",
                        "state": "active"
                    },
                    {
                        "id": 67679,
                        "name": "7870",
                        "state": "active"
                    }
                ],
                "trigger_type": "click",
                "min_minutes_per_conv": 1,
                "post_view_expire_mins": null,
                "post_click_expire_mins": 20160,
                "post_click_value": 0,
                "post_view_value": null,
                "piggyback_pixels": null,
                "created_on": "2011-05-07 18:11:13",
                "last_modified": "2011-06-07 20:23:08",
                "advertiser_id": 10
            },
            ...
        ],
        "count": 10,
        "start_element": null,
        "num_elements": null
    }
}
```

**Add a conversion event category to a pixel**

This example adds conversion pixel 1017110 to event category 3 (viewing
an item).

``` pre
$ cat pixel-category

{
    "pixel": 
        {"pixel_conversion_event_id": 3
        }
}

$ curl -b cookies -c cookies -X PUT -s -d @pixel-category "https://api.appnexus.com/pixel?id=1017110&advertiser_id=57992"  

{
    "response": {
        "count": 1,
        "dbg_info": {
            "output_term": "pixel",
            "version": "1.18.651",
            "warnings": []
        },
        "id": "1017110",
        "num_elements": 100,
        "pixel": {
            "advertiser_id": 57992,
            "campaigns": null,
            "code": null,
            "created_on": "2018-07-25 18:39:30",
            "id": 1017110,
            "last_modified": "2018-07-27 20:55:31",
            "line_items": null,
            "member_id": 1370,
            "min_minutes_per_conv": 0,
            "name": "Confirmation Page",
            "piggyback_pixels": null,
            "pixel_conversion_event": {
                "id": 3,
                "name": "ItemView"
            },
            "pixel_conversion_event_id": 3,
            "post_click_expire_mins": 20160,
            "post_click_value": null,
            "post_view_expire_mins": 10080,
            "post_view_value": null,
            "state": "active",
            "trigger_type": "hybrid"
        },
        "start_element": 0,
        "status": "OK"
    }
}
```






