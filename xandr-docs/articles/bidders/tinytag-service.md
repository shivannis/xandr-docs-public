---
Title : TinyTag Service
Description : The TinyTag Service enables you to create TinyTag IDs as well as modify
and view them.
---


# TinyTag Service



The TinyTag Service enables you to create TinyTag IDs as well as modify
and view them.

The IDs are associated with information about the ad space such as size,
reserve price, and what brands or creatives are allowed to run in that
space. This information is stored server side with
Xandr and is easy to modify.

TinyTag IDs can be used in TinyTags, which are placed directly on
publisher pages and take the basic form
`https://ib.``adnxs``.com/tt?id=1`. Further
information can be passed in a TinyTag using <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/dynamic-tinytag-parameters.html"
class="xref" target="_blank">Dynamic TinyTag Parameters.</a>

Note that the member associated with the TinyTag ID has rights of first
refusal on the inventory, and will receive credit (or cash) if another
member purchases it.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000091eb__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000091eb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000091eb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__2"><a
href="https://api.adnxs.com/tt/MEMBER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/tt/MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__3">View
all TinyTags for a member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__2"><a
href="https://api.adnxs.com/tt/MEMBER_ID/TAG_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/tt/MEMBER_ID/TAG_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__3">View
a particular TinyTag.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__2"><a
href="https://api.adnxs.com/tt/MEMBER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/tt/MEMBER_ID</a>
<p>(tag JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__3">Create a new TinyTag.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__2"><a
href="https://api.adnxs.com/tt/MEMBER_ID/TAG_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/tt/MEMBER_ID/TAG_ID</a>
<p>(tag JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__3">Modify an existing TinyTag.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__2"><a
href="https://api.adnxs.com/tt/MEMBER_ID/TAG_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/tt/MEMBER_ID/TAG_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__3">Delete an existing TinyTag.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000091eb__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000091eb__entry__20"
class="entry colsep-1 rowsep-1">Required</th>
<th id="ID-000091eb__entry__21"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000091eb__entry__22"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__20">no,
only on modify</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">Xandr ID
assigned by the API to reference this tag.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">Name associated with the TinyTag</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__20">no,
default is active</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">Boolean value determines whether the
segment can be used</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
member ID that owns this tag. Required for call, but not JSON.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">string(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">User-defined field for calling tag via
codes. More info can be found on the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/tinytags.html#TinyTags-tinytag_codes"
class="xref" target="_blank">Tinytag Page.</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">code2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">string(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">Second code, if desired.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">acb_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">string(32)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">Not
commonly used.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
width of the tag in pixels.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
height of the tag in pixels.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">reserve_price</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__20">no,
default is $0</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
reserve price of the ad in $CPM - This is the lowest price that
inventory owner is willing to sell for, otherwise the default creative
is served.(Note: this field is listed as "price" in the /meta
listing)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">default_creative_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
default creative to run if no bids meet the reserve price.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">tag_data</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">Other information, often demographic or
descriptive data. Sent only to the owner's bidder. See also qs_data in
<a href="https://docs.xandr.com/bundle/xandr-bidders/page/tinytags.html"
class="xref" target="_blank">TinyTags.</a> (Note: this field is listed
as "other_data" in the /meta listing)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">ad_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">This is the ID of the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/ad-profile-service.html"
class="xref" target="_blank">ad approval profile</a> used for creative
quality standards.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">exclusive</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__20">no,
default is false</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22"><strong>Read-only.</strong> This field
has been <strong>Deprecated</strong>.
<p>This field formerly served as the default value for the
<em>exclusive</em> behavior on a TinyTag. This setting is now controlled
via the <code class="ph codeph">rtb</code> field in the <code
class="ph codeph">marketplace_map</code> object of the <code
class="ph codeph">site</code> service.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">hide_referer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">Do
not display the referer page.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">position</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">"above", "below", or "unknown" - the
position of the TinyTag relative to the page fold</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
timestamp of last modification to this tiny tag.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">site_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
ID of the site that the tag is associated with. The hierarchy is <span
class="ph menucascade">Sites  &gt;
 Tags. For more information
about the Site Service, make a <code class="ph codeph">GET</code> call
to <a href="https://api.adnxs.com/site/meta" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/site/meta</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
ID of the publisher associated with the site that the tag is on.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">media_subtypes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22"><strong>Deprecated.</strong> Please use
supported_media_types and supported_media_subtypes instead.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">intended_audiences</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">Values for self-auditing only. Possible
values: "general", "children", "young_adult", or "mature".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">audited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">If
true, the placement has been self-audited by the owner.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">audit_level</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">Values for self-auditing only. Note
that self-audits at the site level can be overridden at the placement
(tinytag) level. Possible values:
<ul>
<li>"tinytag" - Use this value if the audited field is set to true in
the placement.</li>
<li>"site" - Use this value if the audited field is set to false in the
placement but true in the site.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">default_referrer_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">If
a visibility profile is set to hide inventory urls in your bid requests,
you can set this field to pass a vanity url instead. This is
particularly useful in cases where publishers do not want to share
actual domains but nonetheless want buyers to be able to identify them
by domain. Note, however, that the vanity domain cannot be targeted
directly by Xandr campaigns, although it can be
targeted by external bidders.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">default_calculation_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">This determines the bid price threshold
below which a default creative will be served. You can choose whether
this threshold is the network's gross revenue or the publisher's net
revenue. If there are no additional eligible campaigns, nor any default
creatives available, a PSA is served. Possible values: "gross" or
"net".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">pixel_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
location that the pixel notifies when a user clicks on that
placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">pixel_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">Identifies the type of pixel. Possible
values are "script" or "image".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">is_resizable</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">If
the placement uses a friendly iFrame and you want the placement to
resize to fit smaller or larger creatives, set this field to true.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">pixel_url_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">Indicates whether the pixel URL points
to an encyrpted web page.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">floor_application_target</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
type of bids to which the reserve price is applied. Possible values:
<ul>
<li>"external_only" - The reserve price is applied only to external bids
(buying member and selling member are different). Use this option if you
would rather serve an available managed learn impression than serve a
default, even if this means exceeding the maximum % of daily volume for
learn.</li>
<li>"external_non_preferred" - The reserve price is applied to external
bids (buying member and selling member are different) or when the
impression is an available managed learn impression that exceeds the
maximum % of daily volume for learn. Use this option if you would rather
serve a default than serve an available managed learn impression that
would exceed the maximum % of daily volume for learn.</li>
<li>"all" - The reserve price is applied to all bids except managed
learn impressions within the maximum % of daily volume for learn.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">visibility_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
ID of the visibility profile assigned directly to the placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">pop_values</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">If
the supported_media_type is "Pop", or the supported_media_subtypes is
"Popup" or "Popunder", this array defines the behavior of the pop. See
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/tinytag-service.html#TinyTagService-PopValues"
class="xref" target="_blank">Pop Values</a>Pop Values below for more
details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">inventory_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22">Values for self-auditing only. This is
an array of objects with IDs. Please see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/inventory-attribute-service.html"
class="xref" target="_blank">Inventory Attribute Service</a> for a list
of IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">supported_media_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
media types that are allowed to serve on the placement. See <a
href="tinytag-service.html#ID-000091eb__12" class="xref">Supported Media
Types</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">supported_media_subtypes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
media subtypes that are allowed to serve on the placement. See <a
href="tinytag-service.html#ID-000091eb__14" class="xref">Supported Media
Subtypes</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">estimated_clear_prices</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21"></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
bid amount that has historically won the majority (95%) of the 3rd party
auctions in which it participates. See <a
href="tinytag-service.html#ID-000091eb__15" class="xref">Estimated Clear
Price</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">default_creatives</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">The
default creatives that will be displayed instead of a PSA when there is
no auction winner. For each default creative, the reserve price is set
with the "price" field in the array. See <a
href="tinytag-service.html#ID-000091eb__16" class="xref">Default
Creatives</a> below for more details. Note for pops placements: The
placement will not pop if the reserve price is not met, except in the
case of a prepop.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">segments</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">Array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__22">A
user viewing this TinyTag will be placed into all of the specified
segments Example:
<pre class="pre codeblock"><code>&quot;segments&quot;:
 [
  {&quot;segment_id&quot;:1}
 ]</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">content_retrieval_timeout_ms</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22"><ul>
<li>If <code class="ph codeph">0</code>, the ad server will use the
value from the <a href="member-service.html" class="xref">Member
Service</a></li>
<li>Defaults to <code class="ph codeph">0</code> if not provided to the
API on <code class="ph codeph">PUT</code> or <code
class="ph codeph">POST</code> calls</li>
<li>If ad server reads a <code class="ph codeph">0</code> in this field,
it will perform a member lookup and use the default timeout defined by
the <a href="member-service.html" class="xref">Member Service</a>
(assuming it's also non-zero).</li>
<li>When creating a TinyTag, no values will be copied into this field
from the member's default settings. You must explicitly specify them in
your calls to <code class="ph codeph">POST</code>. For more information,
see the <code
class="ph codeph">default_content_retrieval_timeout_ms</code> field of
the <a href="member-service.html" class="xref">Member Service</a>.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">enable_for_mediation</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22"><ul>
<li>This will be the source of truth for whether a TinyTag should accept
mediated content</li>
<li>Unless set on <code class="ph codeph">PUT</code> or <code
class="ph codeph">POST</code>, this field will inherit its default value
from the member. If the default value is changed on the <a
href="member-service.html" class="xref">Member Service</a>, that action
will not retroactively impact TinyTags created previously; they will
continue to be set to the old default value. In other words, the value
of this field cannot be updated retroactively by setting the member
default. For more information, see the <code
class="ph codeph">default_enable_for_mediation</code> field of the <a
href="member-service.html" class="xref">Member Service</a>.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__19"><code
class="ph codeph">use_detected_domain</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__20">no,
default is true.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__21">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__22"><strong>Read-only</strong>. Whether to
use the detected domain versus the reported domain. Defaults to true for
all clients.</td>
</tr>
</tbody>
</table>

**Supported Media Types**

Creatives are categorized by media type and media subtype. Media type
defines the general display style of the creative, for example,
"Banner", and media subtype defines the specific display style of
creatives, for example, "Standard Banner" or "In-Banner Video". You can
use this array to limit the media type, the general display style of
creatives, that can serve on a placement. To limit the media subtype,
the specific display style of creatives, use the
supported_media_subtypes array (see
<a href="tinytag-service.html#ID-000091eb__14" class="xref">Supported
Media Subtypes</a> below).

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000091eb__entry__187"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000091eb__entry__188"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000091eb__entry__189"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__187"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__188">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__189">The ID of the allowed media type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__187"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__188">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__189"><strong>Read-only</strong>. The name
of the allowed media type.</td>
</tr>
</tbody>
</table>

**Supported Media Subtypes**

Creatives are categorized by media type and media subtype. Media type
defines the general display style of the creative, for example,
"Banner", and media subtype defines the specific display style of
creatives, for example, "Standard Banner" or "In-Banner Video". You can
use this array to limit the media subtype, the specific display style of
creatives, that can serve on a placement. To limit the media type, the
general display style of creatives, use the supported_media_types array
(see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/tinytag-service.html#TinyTagService-SupportedMediaTypes"
class="xref" target="_blank">Supported Media Subtypes</a> above).

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000091eb__entry__196"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000091eb__entry__197"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000091eb__entry__198"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__196"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__197">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__198">The ID of the allowed media
subtype.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__196"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__197">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__198"><strong>Read-only</strong>. The name
of the allowed media subtype.</td>
</tr>
</tbody>
</table>



Tip: **Notes on Supported Media Types
and Media Subtypes**

- If you do not specify either supported media types or supported media
  subtypes, the "Banner" media type will be allowed by default.

- You can combine the "Banner" and "Text" media types, and any
  combination of their media subtypes, on a single placement, but you
  cannot combine any of the other media types and media subtypes. This
  limitation ensures that only appropriate creatives are served on a
  placement. For example, a placement that allows creatives of the media
  type "Video" is intended to be fed to a video player; it would not
  make sense to allow creatives of any other media type, such as
  "Interstitial", to serve on the placement. 

- You can set a placement to allow the "Expandable" media type or any of
  its subtypes for direct inventory. If you want to support expandable
  creatives for placements that are available for reselling to other
  platform members, please provide the URL to
  <a href="http://support.xandr.com/" class="xref"
  target="_blank">support</a> for verification.

  **Default Creatives**



You use this array to assign default creatives to the placement. Please
note the following requirements:

- A default creative must not be expired. See the is_expired field in
  the Creative Service for more information.
- A default creative must be assigned to a creative template that
  matches the supported_media_types and supported_media_subtypes of the
  placement. For example, if the placement allows creatives of the
  "Banner" media type, you would not be able to associate default
  creatives that use a creative template for the "Interstitial" media
  type. See the template field in the <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
  class="xref" target="_blank">Creative Service</a> for more
  information.
- If the placement is sized (the "width" and "height" fields are defined
  for the placement), this array should contain only one creative with
  the matching dimensions.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000091eb__entry__205"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000091eb__entry__206"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000091eb__entry__207"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__205"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__206">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__207">The ID of the default creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__205"><code
class="ph codeph">width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__206">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__207">The width of the default
creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__205"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__206">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__207">The height of the default
creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__205"><code
class="ph codeph">price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__206">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__207">The reserve price for the default
creative. A winning bid must be above this price.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__205"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__206">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__207"><strong>Read-only.</strong> The name
of the default creative.</td>
</tr>
</tbody>
</table>

**Pop Values**

If the supported_media_type is "Pop", or the supported_media_subtypes is
"Popup" or "Popunder", these fields should be included in the
"pop_values" array. Please see below for an example.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000091eb__entry__223"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000091eb__entry__224"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000091eb__entry__225"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-000091eb__entry__226"
class="entry colsep-1 rowsep-1">Default</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__223">pop_freq_times</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__224">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__225">Number of times that the tag can be
popped to a unique user in pop_frequency_duration seconds. Has no effect
when pop_is_prepop is set to true.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__226">No
frequency cap</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__223">pop_freq_duration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__224">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__225">See pop_freq_times.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__226">No
frequency cap</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__223">pop_is_prepop</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__224">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__225">If
true, the tag is a prepop tag and will serve into a window that the
publisher page has already popped.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__226">false</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__223">pop_max_width</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__224">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__225">If
pop_max_width is specified, any creative shown by the tag must have a
width equal to or smaller than pop_max_width</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__226">no
max width</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__223">pop_max_height</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__224">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__225">The max height of the creative. If
pop_max_height is specified, any creative shown by the tag must have a
height equal to or smaller than pop_max_height</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000091eb__entry__226">no
max height</td>
</tr>
</tbody>
</table>

**Estimated Clear Prices**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000091eb__entry__247"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000091eb__entry__248"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000091eb__entry__249"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__247">clear_price</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__248">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__249">The bid amount that has historically
won the majority (95%) of the 3rd party auctions in which it
participates for this placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__247">average_price</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__248">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__249">This is the average of all bids
submitted for this placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__247">width</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__248">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__249">When exporting sizeless placement tags
to be served, this determines the width of the placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__247">height</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__248">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__249">When exporting sizeless placement tags
to be served, this determines the height of the placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__247">verified</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__248">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000091eb__entry__249">Indicates whether the created prices
are verified.</td>
</tr>
</tbody>
</table>



<div id="ID-000091eb__section_hk5_xvj_nwb" >

## Example

**Create a JSON-formatted file with the relevant parameters**



``` pre
$ cat tag
 {
     
"tinytag": 
{
         
"width": "728",
         
"height": "90",
         
"reserve_price": "5.00",
         
"default_creative_id": 212,
         
"active": true,
         
"tag_data": "male/22",
         
"ad_profile_id": 234
     }
 }
```



**Add the TinyTag file to the Imp Bus cache using your member ID**

``` pre
$ curl -b cookies -c cookies -X POST --data-binary @tag https://api.adnxs.com/tt/1/
{
    "response": {
        "status": "OK",
        "id": "1234"
    }
}
```

**View the tag you have created using the tag ID 1234**

$ curl -b cookies -c cookies
<a href="https://api.adnxs.com/tt/1/1234" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/tt/1/1234</a>

``` pre
{
    "response": {
        "tinytag": {
            "id": 1234,
            "width": "728",
            "height": "90",
            "member_id": 1,
            "reserve_price": 5.00,
            "default_creative_id": 212,
            "tag_data": "male\/22",
            "active": true,
            "ad_profile_id": 234
        },
        "status": "OK"
    }
}
```



<div id="ID-000091eb__section_v45_xvj_nwb" >

## Related Topics

- <a href="tinytags.html" class="xref">TinyTags</a>
- <a href="dynamic-tinytag-parameters.html" class="xref">Dynamic TinyTag
  Parameters</a>






