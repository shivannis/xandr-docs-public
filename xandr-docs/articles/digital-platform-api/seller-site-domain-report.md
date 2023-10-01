---
Title : Seller Site Domain Report
Description : The Seller Site Domain Report is designed to give sellers information
about what kind of inventory is coming through a publisher. For example,
---


# Seller Site Domain Report







The Seller Site Domain Report is designed to give sellers information
about what kind of inventory is coming through a publisher. For example,
as a seller, you might distribute placement tags to your publishers and
then want to verify that those tags are running on the inventory you
intended. In addition, this report allows you to:

- See what kind of inventory is coming through a publisher so you can
  understand how to value it

- Guarantee a certain degree of inventory quality to managed buyers

- Optimize on domains for managed campaigns

- Understand the business impact of Xandr audit
  and categorization





<div id="seller-site-domain-report__section-0802937e-a95b-429d-83c1-f4e0b522f975"
>

## Time Frame

<div id="seller-site-domain-report__p-94770f2d-2299-4c63-8f49-8993fce0248b"
>

The `report_interval` field in the JSON request can be set to one of the
following:

- yesterday

- last_7_days

- last_30_days

- last_month

- month_to_date



<div id="seller-site-domain-report__p-4b2556a6-8c78-49ce-82e5-28d5a20797e7"
>

<div id="seller-site-domain-report__note-1698c091-c1b8-4d7c-afde-941ecbacf5ec"


Note: None of the available time ranges
will include today's data. The latest data will be from yesterday.



<div id="seller-site-domain-report__note-52ed4f43-5461-4aff-88f1-a52fa374d1b8"
class="note tip note_tip">

Tip: To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.







<div id="seller-site-domain-report__section-20997d31-6ae7-4250-be19-10457aff0430"
>

**Data Retention Period**

Data retention period for this report is 60 days.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-site-domain-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-site-domain-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-site-domain-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="seller-site-domain-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="seller-site-domain-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"2012-08-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The month when an
impression occurred on this placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"2012-08-23"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The day when an impression
occurred on this placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">2718</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The seller's <span
class="ph">Xandr member ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"MegaSeller"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The seller's name.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">seller_member</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"MegaSeller (2718)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">content_category_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The ID of the universal
content category associated with the audited domain.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">content_category_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Entertainment"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The name of the universal
content category associated with the audited domain.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">content_category</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Entertainment (23)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">site_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">223936</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The ID of the <a
href="https://docs.xandr.com/bundle/xandr-api/page/site-service.html"
class="xref" target="_blank">site</a> containing this placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">site_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Total-Web Email"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The name of the <a
href="https://docs.xandr.com/bundle/xandr-api/page/site-service.html"
class="xref" target="_blank">site</a> where the impression
occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">site</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Total-Web Email (223936)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">site_domain</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"gwar-rules-forever.org"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5"><p>The domain where the
impression occurred.</p>
<p>There are two additional values that may appear in place of a domain,
specifically: <code class="ph codeph">"deals.unknown"</code> or <code
class="ph codeph">"managed.unknown"</code>. These mean that we didn't
receive a valid domain as the referrer. For example, the domain may be
blank or otherwise malformed.</p>

Note: In some cases, this field will be
populated with a domain that is different than where the impression
actually occurred, such as an ad server domain. For more information
about why this happens, see <a
href="seller-site-domain-report.html#seller-site-domain-report__seller-site-domain-report-passing-domains-across-iframes"
class="xref">Passing Domains Across IFrames</a> below.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">737099</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5"><p>The ID of the placement
where the impression occurred.</p>

Note: <code
class="ph codeph">placement_id</code> of <code
class="ph codeph">0</code> may appear for 3rd-party impression trackers.
For more information about impression trackers, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/impression-tracker-service.html"
class="xref" target="_blank">Impression Tracker Service</a>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Webmail.com ROS 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The name of the placement
where the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">placement</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Webmail.com ROS 728x90 (737099)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">44389</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The ID associated with the
publisher on whose site the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"LOL - US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The name of the publisher
on whose site the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"LOL - US (44389)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td
id="seller-site-domain-report__seller-site-domain-report-imp-type-id"
class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">imp_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">6</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">
The ID for the type of impression. Possible values (associated types in
parentheses):
<ul>
<li>1 ("Blank"): No creative served.</li>
<li>2 ("PSA"): A public service announcement served because there were
no valid bids and no default creative was available.</li>
<li>3 ("Default Error"): A default creative served due to a timeout
issue.</li>
<li>4 ("Default"): A default creative served because there were no valid
bids.</li>
<li>5 ("Kept"): Your advertiser's creative served on your publisher's
site.</li>
<li>6 ("Resold"): Your publisher's impression was sold to a third-party
buyer.</li>
<li>7 ("RTB"): Your advertiser's creative served on third-party
inventory.</li>
<li>8 ("PSA Error"): A public service announcement served due to a
timeout issue or lack of a default creative.</li>
<li>9 ("External Impression"): An impression from an impression
tracker.</li>
<li>10 ("External Click"): A click from a click tracker.</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">imp_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Resold"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The name of the type of
impression that occurred. For possible values and more information about
each type, see <a
href="seller-site-domain-report.html#seller-site-domain-report__seller-site-domain-report-imp-type-id"
class="xref"><code class="ph codeph">imp_type_id</code></a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Resold (6)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">audit_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The ID of the type of
audit performed on the domain where the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">audit_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"By AppNexus"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">
The name of the type of audit performed on the domain where the
impression occurred. Allowed values:
<ul>
<li><code class="ph codeph">"By Seller"</code>: The domain was
self-audited.</li>
<li><code class="ph codeph">"By AppNexus"</code>: The domain was audited
by Xandr.</li>
<li><code class="ph codeph">"By Seller &amp; AppNexus"</code>: The
domain was audited by both the seller and <span
class="ph">Xandr.</li>
<li><code class="ph codeph">"Unknown Audit Type"</code>: This usually
means that the domain is unaudited. In some cases, this means that the
domain was not auditable for technical reasons.</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">audit_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"By Seller (1)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">exposed_for_resale_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">
An integer that denotes whether this inventory is exposed for resale.
Allowed values:
<ul>
<li><code class="ph codeph">0</code> (False)</li>
<li><code class="ph codeph">1</code> (True)</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">exposed_for_resale</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Not Exposed"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">
Whether this inventory is exposed for resale. Allowed values:
<ul>
<li><code class="ph codeph">"Exposed"</code></li>
<li><code class="ph codeph">"Not Exposed"</code></li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">domains_exposed_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">
An integer that denotes whether this inventory's domains are exposed for
targeting by buyers. Allowed values:
<ul>
<li><code class="ph codeph">0</code> (False)</li>
<li><code class="ph codeph">1</code> (True)</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">domains_exposed</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Exposed"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">
Whether this inventory's domains are exposed for targeting by buyers.
Allowed values:
<ul>
<li><code class="ph codeph">"Exposed"</code></li>
<li><code class="ph codeph">"Not exposed"</code></li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">supply_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">mobile_web</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The seller-classified
channel to denominate supply in terms of web, mobile-optimized web, and
mobile app impressions. Possible values are <code
class="ph codeph">'web'</code>, <code
class="ph codeph">'mobile_app'</code>, and <code
class="ph codeph">'mobile_web'</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">mobile_application_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">‘343200656’ (iOS) or ‘com.rovio.angrybirds’ (Android)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">A targetable Apple App
Store ID, Google Play package name, or Windows application ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">mobile_application_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">Angry Birds</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The name of the mobile
application as it appears in the Apple App and Google Play Stores.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">mobile_application</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">Angry Birds (com.rovio.angrybirds)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td
id="seller-site-domain-report__seller-site-domain-report-fold-position-id"
class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">fold_position_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5"><p>The ID of the fold
position, i.e. where on the page the placement is located.</p>
<p>Possible values for impressions:</p>

<ul>
<li><code class="ph codeph">0</code> = "unknown"</li>
<li><code class="ph codeph">1</code> = "above"</li>
<li><code class="ph codeph">2</code> = "below"</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">fold_position</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Unknown"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The fold position, i.e.
where on the page the placement is located. For allowed values, see <a
href="seller-site-domain-report.html#seller-site-domain-report__seller-site-domain-report-fold-position-id"
class="xref"><code class="ph codeph">fold_position_id</code></a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">age_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"25-34"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The bucket for the age of
the user. See <a
href="seller-site-domain-report.html#seller-site-domain-report__seller-site-domain-report-age-bucket"
class="xref">Age Buckets</a> below for possible values.

Note: For impressions older than 100
days, the <code class="ph codeph">age_bucket</code> will be <code
class="ph codeph">"unknown"</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">age_bucket_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"3"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The ID of the age bucket.
See <a
href="seller-site-domain-report.html#seller-site-domain-report__seller-site-domain-report-age-bucket"
class="xref">Age Buckets</a> below for possible values.

Note: For impressions older than than
100 days, the <code class="ph codeph">age_bucket_id</code> will be <code
class="ph codeph">0</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">gender</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"m", "f", "u"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The gender of the user.

Note: For impressions older than 100
days, <code class="ph codeph">gender</code> will be <code
class="ph codeph">"u"</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">is_remarketing</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">0, 1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">If <code
class="ph codeph">1</code>, the campaign is remarketing. If <code
class="ph codeph">0</code>, the campaign is not remarketing.

Note: For impressions older than 100
days, <code class="ph codeph">is_remarketing</code> will be <code
class="ph codeph">-1</code>.
</td>
</tr>
<tr class="odd row">
<td
id="seller-site-domain-report__seller-site-domain-report-imps-filtered-reason-id"
class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">imps_filtered_reason_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"3"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">The numeric ID associated
with the reason why the impression request was filtered out by <span
class="ph">Xandr's inventory quality controls and the auction was
not held. See <code class="ph codeph">imps_filtered_reason</code> below
for more information.</td>
</tr>
<tr class="even row">
<td
id="seller-site-domain-report__seller-site-domain-report-imps-filtered-reason"
class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">imps_filtered_reason</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Invalid Domain"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">
The reason why the impression request was filtered out by <span
class="ph">Xandr's inventory quality controls and the auction was
not held. Possible reasons are:
<ul>
<li><code class="ph codeph">"Invalid Domain" </code>(1)</li>
<li><code class="ph codeph">"Invalid IP" </code>(2)</li>
<li><code
class="ph codeph">"Suspected Domain Detection Tampering" </code>(3, 4,
5)</li>
<li><code class="ph codeph">"Unknown" </code>(6, 7)</li>
<li><code class="ph codeph">“White Ops: General IVT” (17)</code> -
consists of traffic identified through routine means of filtration,
executed through application of lists or with other standardized
parameter checks.</li>
<li><code class="ph codeph">“White Ops: Sophisticated IVT” (18)</code> -
consists of more difficult to detect situations that require advanced
analytics, multi-point corroboration/coordination, significant human
intervention, etc., to analyze and identify.</li>
</ul>

<p><code class="ph codeph">"Valid Impression"</code> (0) is also a valid
filtered request reason, but in that case, an auction was held and it
was not filtered.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">operating_system_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">24</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">
The ID of the operating system of the device.
<ul>
<li>Use <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-service.html"
class="xref" target="_blank">Operating System Family service</a> to
obtain a list of operating system families.</li>
<li>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-extended-service.html"
class="xref" target="_blank">Operating System Extended service</a> to
look up which operating system versions are within a given operating
system family.</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">operating_system_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Android 2.3.5 Gingerbread"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">
The ID of the operating system of the device.
<ul>
<li>Use <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-family-service.html"
class="xref" target="_blank">Operating System Family service</a> to
obtain a list of operating system families.</li>
<li>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-extended-service.html"
class="xref" target="_blank">Operating System Extended service</a> to
look up which operating system versions are within a given operating
system family.</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">operating_system_family_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">
The ID of the operating system of the device.
<ul>
<li>Use <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-family-service.html"
class="xref" target="_blank">Operating System Family service</a> to
obtain a list of operating system families.</li>
<li>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-extended-service.html"
class="xref" target="_blank">Operating System Extended service</a> to
look up which operating system versions are within a given operating
system family.</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__1">operating_system_family_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__4"><code
class="ph codeph">"Android"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__5">
The ID of the operating system of the device.
<ul>
<li>Use <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-family-service.html"
class="xref" target="_blank">Operating System Family service</a> to
obtain a list of operating system families.</li>
<li>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-extended-service.html"
class="xref" target="_blank">Operating System Extended service</a> to
look up which operating system versions are within a given operating
system family.</li>
</ul>
</td>
</tr>
</tbody>
</table>





## Passing Domains Across IFrames



Serving ads inside of iFrames is preferred by publishers for a number of
reasons, to include:

- Increased Security: For security reasons, communication between
  iFrames serving from different domains is prohibited by the browser.
  This is known as the "Same Origin Policy". For more information, see
  the W3C's
  <a href="https://www.w3.org/Security/wiki/Same_Origin_Policy"
  class="xref" target="_blank">Same Origin Policy</a> page.

- Page Load Speed: Page load speed is guaranteed to be unaffected by
  advertisements inside iFrames because iFrames allow asynchronous
  loading of both page content and advertisements. This ensures that the
  user does not have to wait for the rest of the page to load in the
  event that serving an advertisement happens more slowly than expected.



For these and other reasons, some networks provide their publishers with
an iFrame in which to display advertisements. If this iFrame delivers
its contents from the network's domain and not the publisher's, it can
lead to difficulties in determining the domain on which an impression
actually occurred.



For example, a publisher is given a snippet of HTML code to put on their
pages that includes an iFrame referencing a network's domain,
`best-network.net`:

``` pre
<!-- Publisher's Web Page >
<iframe src="http://best-network.net"> <!-- iFrame Referencing Network Domain >
    <script src="http://cooladexchange.net/tag?id=12345"></script> <!-- Ad Exchange Placement serving on Network Domain >
</iframe>
```

The iFrame is located on the publisher's web page, but it is serving its
contents from the network's domain. Because the page and the iFrame are
hosted on different domains, the security restrictions of the "Same
Origin Policy" apply, and communication between the publisher's page and
the network's iFrame is forbidden. Therefore the network is unable to
determine the actual domain of the publisher's page. As a result, the
network passes along its own domain as the referring URL to the
placement.





**Age Bucket**

<table class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="seller-site-domain-report__entry__226"
class="entry colsep-1 rowsep-1"><strong>Bucket ID</strong></th>
<th id="seller-site-domain-report__entry__227"
class="entry colsep-1 rowsep-1"><strong>Bucket Name</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__226">0</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__227">"unknown"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__226">1</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__227">"13-17"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__226">2</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__227">"18-24"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__226">3</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__227">"25-34"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__226">4</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__227">"35-44"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__226">5</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__227">"45-54"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__226">6</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__227">"'55-64"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__226">7</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__227">"65+"</td>
</tr>
</tbody>
</table>







## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-site-domain-report__entry__244"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-site-domain-report__entry__245"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-site-domain-report__entry__246"
class="entry colsep-1 rowsep-1">Example</th>
<th id="seller-site-domain-report__entry__247"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__244">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__245">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__246"><code
class="ph codeph">200942</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__247">The number of
impressions coming through this site or placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__244">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__245">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__246"><code
class="ph codeph">1982</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__247">The number of clicks
coming through this site or placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__244">network_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__245">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__246"><code
class="ph codeph">1876.595304</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__247">The amount of network
revenue coming through this site or placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__244">publisher_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__245">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__246"><code
class="ph codeph">93.489302</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__247">The amount of publisher
revenue coming through this site or placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__244">imps_viewed</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__245">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__246"><code
class="ph codeph">30,450</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__247">The number of measured
impressions that were viewable, per the IAB Viewability definition,
which states that an impression is viewable if 50% of the pixels are
in-view during 1 consecutive second.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__244">view_measured_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__245">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__246"><code
class="ph codeph">10,120</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__247">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__244">view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__245">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__246"><code
class="ph codeph">58%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__247">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__244">view_measurement_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__245">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__246"><code
class="ph codeph">45%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__247">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__244">imps_filtered</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__245">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__246"><code
class="ph codeph">2,024</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-site-domain-report__entry__247">The total number of bid
requests for which Xandr did not hold an auction
due to inventory quality concerns. See <a
href="seller-site-domain-report.html#seller-site-domain-report__seller-site-domain-report-imps-filtered-reason-id"
class="xref"><code class="ph codeph">imps_filtered_reason_id</code></a>
and <a
href="seller-site-domain-report.html#seller-site-domain-report__seller-site-domain-report-imps-filtered-reason"
class="xref"><code class="ph codeph">imps_filtered_reason</code></a>
(under <strong>Dimensions</strong>) for a list of the possible
reasons.</td>
</tr>
</tbody>
</table>





## Example

**Create JSON formatted report request**



``` pre
$ cat report-request.json

{
  "report": {
    "report_type": "seller_site_domain",
    "columns": [
      "seller_member_id",
      "seller_member_name",
      "placement_id",
      "publisher_id",
      "publisher_name",
      "imps",
      "imp_type_name",
      "audit_type_id",
      "audit_type_name",
      "site_name",
      "site_domain",
      "exposed_for_resale_id",
      "exposed_for_resale",
      "domains_exposed_id",
      "domains_exposed"
    ],
    "filters": [
      "seller_member_id",
      "audit_type_id"
    ],
    "report_interval": "last_7_days",
    "format": "csv"
  }
}
```



**POST the request to the Report Service**



``` pre
$ curl -b cookies -X POST -d @report-request.json "https://api.appnexus.com/report"

{
  "response": {
    
    "report_id": "8d3697d23c87e5bebd44370630162990",
    "status": "OK"
  }
}
```



**Download the report data directly to a file**

The most common way to download reporting data involves using the
`report_id` in a call the **report-download** service, which returns
reporting data directly in the file format you specify. In the `curl`
call below, we use the `-o` option to specify that the report be saved
in a file named `huge-report.csv`. For more details, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html#APISemantics-UsingcURL"
class="xref" target="_blank"><code class="ph codeph">curl</code></a>
documentation.



``` pre
$ curl -b cookies -o huge-report.csv "https://api.appnexus.com/report-download?id=8d3697d23c87e5bebd44370630162990"
```



Note: There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.





**Retrieve the report data wrapped in JSON (Optional)**

You will almost always want to use the method described in *Download the
report data directly to a file* above. However, if for some reason you
prefer to receive the reporting data wrapped in a JSON response, you may
pass the `report_id` to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> directly.



``` pre
$ curl -b cookies "https://api.appnexus.com/report?id=8d3697d23c87e5bebd44370630162990"
```








