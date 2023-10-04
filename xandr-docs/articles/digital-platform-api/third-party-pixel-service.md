---
Title : Third-Party Pixel Service
Description : The third-party pixel service allows you to upload and modify
third-party creative pixels, and attach them to advertisers, or
creatives. You can also attach third-party creative pixels to your
---


# Third-Party Pixel Service



The third-party pixel service allows you to upload and modify
third-party creative pixels, and attach them to advertisers, or
creatives. You can also attach third-party creative pixels to your
member.



## REST API



<table
id="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th
id="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th
id="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/thirdparty-pixel" class="xref"
target="_blank">https://api.appnexus.com/thirdparty-pixel</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all of your third-party pixels.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/thirdparty-pixel?id=THIRDPARTY-PIXEL_ID"
class="xref"
target="_blank">https://api.appnexus.com/thirdparty-pixel?id=THIRDPARTY-PIXEL_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific third-party pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/thirdparty-pixel" class="xref"
target="_blank">https://api.appnexus.com/thirdparty-pixel</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new third-party pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/thirdparty-pixel?id=THIRDPARTY-PIXEL_ID"
class="xref"
target="_blank">https://api.appnexus.com/thirdparty-pixel?id=THIRDPARTY-PIXEL_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an existing third-party pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/thirdparty-pixel?id=THIRDPARTY-PIXEL_ID"
class="xref"
target="_blank">https://api.appnexus.com/thirdparty-pixel?id=THIRDPARTY-PIXEL_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Delete
an existing third-party pixel.</td>
</tr>
</tbody>
</table>







## JSON Fields



<table
id="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Flag
indicating whether the pixel is active.</p>
<ul>
<li><strong>Default</strong>: <code class="ph codeph">true</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">adservers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
adservers that the pixel calls. Required for pixels that serve on Google
Ad Manager inventory. A full list of adservers can be retrieved from the
<a
href="https://docs.xandr.com/bundle/xandr-api/page/ad-server-service.html"
class="xref" target="_blank">ad server service</a>.</p>
<p>Example:</p>
<pre id="third-party-pixel-service__pre_gnr_g22_xwb"
class="pre"><code>&quot;adservers&quot;:[{&quot;id&quot;:11},{&quot;id&quot;:12}]</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">advertisers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
the pixel has an owning advertiser (i.e., <code
class="ph codeph">advertiser_id</code> is not <code
class="ph codeph">null</code>), this array must contain the ID (and only
the ID) of the advertiser that owns the pixel, As a result, this pixel
will render on all creatives owned by that advertiser. If the pixel does
not have an owning advertiser, this array can contain multiple
advertisers to which the pixel will be applied.</p>
<p>Example:</p>
<pre id="third-party-pixel-service__pre_hnr_g22_xwb" class="pre"><code>&quot;advertisers&quot;:[{&quot;id&quot;:3}]</code></pre>
<p><strong>Optional.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>ID
of the advertiser that owns the thirdparty-pixel.</p>
<ul>
<li><strong>Default</strong>: <code class="ph codeph">null</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
audit status of the pixel. Possible values are <code
class="ph codeph">"pending"</code>, <code
class="ph codeph">"rejected"</code>, <code
class="ph codeph">"approved"</code> or <code
class="ph codeph">"exempt"</code>.</p>
<div id="third-party-pixel-service__note_pq3_m22_xwb"
class="note note_note">
Note:
<p>An unaudited pixel will not prevent a creative from serving, but it
will not serve along with the creative until it has passed audit.</p>

<ul>
<li><strong>Read Only</strong></li>
<li><strong>Default</strong>: <code
class="ph codeph">"pending"</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">content</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
the pixel's <code class="ph codeph">format</code> is <code
class="ph codeph">"raw-js"</code>, this is the JavaScript content to
serve with the creative. The <code class="ph codeph">content</code>
and/or <code class="ph codeph">secure_content</code> fields are required
on <code class="ph codeph">POST</code> for raw-js pixels.</p>
<p>You can also add macros to your pixel. For a list of the creative
macros that you may append to your pixel, see “Creative Macros” in the
UI documentation (customer login required).</p>
<ul>
<li><strong>Required On</strong>: <code class="ph codeph">POST </code>if
the pixel's <code class="ph codeph">format</code> is <code
class="ph codeph">"raw-js".</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">creatives</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
creatives to which a pixel is applied. The creatives must belong to the
owning member/advertiser. To attach a third-party pixel to a creative,
use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>.</p>
<p>Example:</p>
<pre id="third-party-pixel-service__pre_lnr_g22_xwb" class="pre"><code>&quot;creatives&quot;:[{&quot;id&quot;:860851}]</code></pre>
<ul>
<li><strong>Read Only</strong></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">format</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
format of the pixel. Possible values for creatives: <code
class="ph codeph">"raw-js"</code>, <code
class="ph codeph">"url-html"</code>, <code
class="ph codeph">"url-js"</code>, <code
class="ph codeph">"url-image"</code>, or <code
class="ph codeph">"raw-url"</code>.</p>
<ul>
<li><strong>Required On</strong>: <code
class="ph codeph">POST </code>and <code class="ph codeph">PUT</code> if
changing <code class="ph codeph">content</code>, <code
class="ph codeph">secure_content</code>, <code
class="ph codeph">url</code>, or <code
class="ph codeph">url_secure</code> fields.</li>
<li><strong>Default</strong>: "raw-js"</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the third-party pixel.</p>
<ul>
<li><strong>Required On</strong>: <code class="ph codeph">PUT </code>and
<code class="ph codeph">DELETE.</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">members</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Optional.</strong>
If specified, this field will contain the ID of the member that owns the
pixel and this pixel will render on all creatives owned by that
member.</p>
<p>Example:</p>
<pre id="third-party-pixel-service__pre_pnr_g22_xwb"
class="pre"><code>&quot;members&quot;:[{&quot;id&quot;:1}]</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>ID
of the member/network that owns this pixel.</p>
<ul>
<li><strong>Required On</strong>: <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
name of the third-party pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">secure_content</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
the pixel's <code class="ph codeph">format</code> is "raw-js", the
JavaScript content to serve with the creative. The <code
class="ph codeph">content</code> and/or <code
class="ph codeph">secure_content</code> fields are required on <code
class="ph codeph">POST </code>for raw-js pixels.</p>
<p>You can also add macros to your pixel. For a list of the creative
macros that you may append to your pixel; see “Creative Macros” in the
UI documentation (customer login required).</p>
<ul>
<li><strong>Required On</strong>: <code class="ph codeph">POST</code> if
the pixel's <code class="ph codeph">format</code> is <code
class="ph codeph">"raw-js".</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">secure_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
the pixel's <code class="ph codeph">format</code> is "url-html",
"url-js", "url-image", or "raw-url", the URL of the HTML, JavaScript, or
Image pixel to serve with the creative on a secure (https) call. The url
and/or secure_url fields are required on <code
class="ph codeph">POST</code> for these pixel types. You can also add
macros to your pixel.</p>
<p>You can also add macros to your pixel. For a list of the creative
macros that you may append to your pixel, see “Creative Macros” in the
UI documentation (customer login required).</p>
<ul>
<li><strong>Required On</strong>: <code class="ph codeph">POST </code>if
the pixel's <code class="ph codeph">format</code> is <code
class="ph codeph">"url-html"</code>, <code
class="ph codeph">"url-js"</code>, <code
class="ph codeph">"url-image"</code>, or <code
class="ph codeph">"raw-url".</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">supply_exceptions</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
names of members on which the pixel should <strong>not</strong> serve.
<code class="ph codeph">"AdX"</code> is currently the only acceptable
value.</p>
<p>Example:</p>
<pre id="third-party-pixel-service__pre_tnr_g22_xwb"
class="pre"><code>&quot;supply_exceptions&quot;:[{&quot;name&quot;:&quot;AdX&quot;}]</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="third-party-pixel-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
the pixel's <code class="ph codeph">format</code> is "url-html",
"url-js", "url-image", or "raw-url", the URL of the HTML, JavaScript, or
Image pixel to serve with the creative. The <code
class="ph codeph">url</code> and/or <code
class="ph codeph">secure_url</code> fields are required on <code
class="ph codeph">POST </code>for these pixel types.</p>
<p>You can also add macros to your pixel. For a list of the creative
macros that you may append to your pixel, see “Creative Macros” in the
UI documentation (customer login required).</p></td>
</tr>
</tbody>
</table>





<div id="third-party-pixel-service__section_mqg_122_xwb"
>

## Examples

**View a specific third-party pixel**

In this example, we view a third-party pixel with ID 123.

``` pre
$ curl -b cookies -X GET 'https://api.appnexus.com/thirdparty-pixel?id=123'
 
{
    "thirdparty-pixel":{
        "id":123,
        "active":true,
        "member_id":456,
        "advertiser_id": 789,
        "format":"raw-js",
        "content":"var img = new Image(); img.src="https://url.com/event/js?self=" + data;"
        "url":null,
        "secure_url":null,
        "members":null,
        "advertisers":[{"id":789}], 
        "creatives":null
        "audit_status":"unaudited" // admin only
        "supply_exceptions":[
            {"name":"AdX"},
        ]
        "adservers":[
            {"id":123}
        ]
  }
}
```

**Add a new third-party pixel**



In this example, we create a new sell-side third-party pixel with ID
123. Note that parent object information is "null" because the JSON file
we passed into the API did not specify a parent object for the pixel.

``` pre
$ cat thirdparty-pixel.json
{
  "thirdparty-pixel":
    {
      "format":"url-html",
      "secure_url":"https://secureurl.com"
    }
}  

$ curl -b cookies -c cookies -X POST -d @thirdparty_pixel 'https://api.appnexus.com/thirdparty-pixel'

{
    "response":{
        "status":"OK",
        "count":1,
        "id":123,
        "start_element":0,
        "num_elements":100,
        "thirdparty-pixel":{
            "id":123,
            "active":true,
            "name":null,
            "member_id":456,
            "advertiser_id":789,
            "publisher_id":null,
            "format":"url-html",
            "audit_status":"pending",
            "created_on":"2014-11-05 19:51:44",
            "last_modified":"2014-11-05 19:51:44",
            "url":null,
            "secure_url":"https://secureurl.com",
            "members":null,
            "advertisers":null,
            "publishers":null,
            "creatives":null,
            "supply_exceptions":null,
            "adservers":null
       
    }
}
```



**Update a third-party pixel**



In this example, we update a third-party pixel with the ID 123, applying
it to all of the owning advertiser's creatives.

``` pre
$ cat pixelupdate.json

{
  "thirdparty-pixel":
    {
      "advertisers":[{"id":789}]
    }
}  

$ curl -b cookies -c cookies -X PUT -d @pixelupdate 'https://api.appnexus.com/thirdparty-pixel?id=123'

{
   "response":{
      "status":"OK",
      "id":123
   }
}
```



**Delete a third-party pixel**



In this example, we delete a third-party pixel with the ID 123.

``` pre
$ curl -b cookies -X DELETE 'https://api.appnexus.com/thirdparty-pixel?id=123'

{
   "response":{
      "status":"OK"
   }
}
```





<div id="third-party-pixel-service__section_o4f_z22_xwb"
>

## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
  class="xref" target="_blank">Creative Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
  class="xref" target="_blank">Advertiser Service</a>








