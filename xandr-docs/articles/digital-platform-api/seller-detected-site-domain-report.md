---
Title : Seller Detected Site Domain Report
Description : <b>Note:</b> This report was deprecated in
ms.date: 10/28/2023
ms.custom: digital-platform-api
2021.
---


# Seller Detected Site Domain Report









<b>Note:</b> This report was deprecated in
2021.





The Seller Detected Site Domain report is designed to provide visibility
into the actual domains that are being sold, and provide a tag or
publisher level "health-check". Giving sellers visibility into the
actual domains provides deeper insight into the inventory that is coming
into their network. The detected domains, however, do not have any
impact on the auction itself.

The report is best utilized as an investigation tool. That is, a seller
runs the report for specific tags or publishers that they want to dig
into further. The seller may know off-hand what they want to
investigate; for example, it could be a new publisher that they've
signed up. But, it would be very useful to give them an easy way to
identify potential problems in tags or publishers.

In addition, sellers mostly cares about the tags or publishers that are
giving them the most revenue - there may be a long tail that is not
worth the time to investigate. So, a seller runs this report to see
their best performing tags or publishers as well as whether a tag or
publisher is problematic.



>

## Time Frame

>

The `report_interval` field in the JSON request can be set to one of the
following:

- today
- yesterday
- last_7_days
- custom



>

class="note tip note_tip">

<b>Tip:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.







>

**Data Retention Period**

Data retention period for this report is 7 days.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-detected-site-domain-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-detected-site-domain-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-detected-site-domain-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="seller-detected-site-domain-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="seller-detected-site-domain-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The hour when an
impression occurred on this placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"2012-08-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The month when an
impression occurred on this placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"2012-08-23"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The day when an
impression occurred on this placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">2718</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The seller's
Xandr member ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"MegaSeller"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The seller's
name.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">seller_member</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"MegaSeller (2718)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The name and ID
of the seller member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">content_category_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The ID of the
universal content category associated with this site or placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">content_category_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"Entertainment"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The name of the
universal content category associated with this site or placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">content_category</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"Entertainment (23)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The name and ID
of the universal content category.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">site_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">223936</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The ID of the <a
href="site-service.md"
class="xref" target="_blank">site</a> containing this placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">site_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"Total-Web Email"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The name of the
<a href="site-service.md"
class="xref" target="_blank">site</a> where the impression
occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">site</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"Total-Web Email (223936)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The name and ID
of the site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">site_domain</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"gwar-rules-forever.org"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5"><p>The domain
where the impression occurred.</p>
<p>There are two additional values that may appear in place of a domain,
specifically: <code class="ph codeph">"deals.unknown"</code> or <code
class="ph codeph">"managed.unknown"</code>. These mean that we didn't
receive a valid domain as the referrer. For example, the domain may be
blank or otherwise malformed.</p>

<b>Note:</b> In some cases, this field will be
populated with a domain that is different than where the impression
actually occurred, such as an ad server domain. For more information
about why this happens, see <a
href="seller-detected-site-domain-report.md#seller-detected-site-domain-report__seller-detected-site-domain-report-passing-domains-across-iframes"
class="xref">Passing Domains Across IFrames</a> below.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">auction_site_domain</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"gwar-rules-forever.org"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The domain of the
auctioned site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">site_domain_audit_status</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"Audited"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">Specifies the
audit status of the auctioned site domain .Permissible values are <code
class="ph codeph">Audited, Blacklisted, AdServer, Unauditable, Pending</code>,
and <code class="ph codeph">Unaudited</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">site_domain_audit_status_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">8</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The identifier
for the audit status of the auctioned site domain.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">detected_site_domain</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"cnn.com"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The actual
domains that are being sold and where the impression actually
occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">detected_site_domain_audit_status</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"AdServer"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">Specifies the
audit status of the detected site domain .Permissible values are <code
class="ph codeph">Audited, Blacklisted, AdServer, Unauditable, Pending,</code>
and <code class="ph codeph">Unaudited</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">detected_site_domain_audit_status_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The identifier
for the audit status of the detected site domain.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">is_blacklisted</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">No</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">Specifies if the
impression is in a block-list.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">detected_top_domain</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">Yes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">Specifies if
detected site domain is the highest level within the hierarchy of a
domain name.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">737099</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5"><p>The ID of the
placement where the impression occurred.</p>

<b>Note:</b> <code
class="ph codeph">placement_id</code> of <code
class="ph codeph">0</code> may appear for 3rd-party impression trackers.
For more information about impression trackers, see the <a
href="impression-tracker-service.md"
class="xref" target="_blank">Impression Tracker Service</a>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"Webmail.com ROS 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The name of the
placement where the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">placement</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"Webmail.com ROS 728x90 (737099)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The name and ID
of the placement where the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">44389</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The ID associated
with the publisher on whose site the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"LOL - US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The name of the
publisher on whose site the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"LOL - US (44389)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The name and ID
associated with the publisher.</td>
</tr>
<tr class="even row">
<td
id="seller-detected-site-domain-report__seller-detected-site-domain-report-imp-type-id"
class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">imp_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">6</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">
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
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">imp_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"Resold"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The name of the
type of impression that occurred. For possible values and more
information about each type, see <a
href="seller-detected-site-domain-report.md#seller-detected-site-domain-report__seller-detected-site-domain-report-imp-type-id"
class="xref"><code class="ph codeph">imp_type_id</code></a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"Resold (6)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The name and ID
of the type of impression that occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">audit_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The ID of the
type of audit performed on the domain where the impression
occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">audit_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"By </code><code
class="ph codeph">AppNexus</code><code
class="ph codeph">"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">
The name of the type of audit performed on the domain where the
impression occurred. Allowed values:
<ul>
<li><code class="ph codeph">"By Seller"</code>: The domain was
self-audited.</li>
<li><code class="ph codeph">"By </code><code
class="ph codeph">AppNexus</code><code
class="ph codeph">"</code>: The domain was audited by <span
class="ph">Xandr.</li>
<li><code class="ph codeph">"By Seller &amp; </code><span
class="ph"><code class="ph codeph">AppNexus</code><code
class="ph codeph">"</code>: The domain was audited by both the seller
and Xandr.</li>
<li><code class="ph codeph">"Unknown Audit Type"</code>: This usually
means that the domain is unaudited. In some cases, this means that the
domain was not auditable for technical reasons.</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">audit_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"By Seller (1)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The name and ID
of the type of audit performed on the domain where the impression
occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">exposed_for_resale_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">
An integer that denotes whether this inventory is exposed for resale.
Allowed values:
<ul>
<li><code class="ph codeph">0</code> (False)</li>
<li><code class="ph codeph">1</code> (True)</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">exposed_for_resale</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"Not Exposed"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">
Whether this inventory is exposed for resale. Allowed values:
<ul>
<li><code class="ph codeph">Exposed</code></li>
<li><code class="ph codeph">Not Exposed</code></li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">age_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"25-34"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The bucket for
the age of the user. See <a
href="seller-detected-site-domain-report.md#seller-detected-site-domain-report__seller-detected-site-domain-report-age-buckets"
class="xref">Age Buckets</a> below for possible values.

<b>Note:</b> For impressions older than 100
days, the <code class="ph codeph">age_bucket</code> will be <code
class="ph codeph">"unknown"</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">age_bucket_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"3"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The ID of the age
bucket. See <a
href="seller-detected-site-domain-report.md#seller-detected-site-domain-report__seller-detected-site-domain-report-age-buckets"
class="xref">Age Buckets</a> below for possible values.

<b>Note:</b> For impressions older than than
100 days, the <code class="ph codeph">age_bucket_id</code> will be <code
class="ph codeph">0</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">gender</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><code
class="ph codeph">"m", "f", "u"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">The gender of the
user.

<b>Note:</b> For impressions older than than
100 days, the <code class="ph codeph">gender</code> will be <code
class="ph codeph">"u"</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__1">is_remarketing</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__4"><p><code
class="ph codeph">0, 1</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__5">If <code
class="ph codeph">1</code>, the campaign is re-marketing. If <code
class="ph codeph">0</code>, the campaign is not re-marketing.

<b>Note:</b> For impressions older than 100
days, <code class="ph codeph">is_remarketing</code> will be <code
class="ph codeph">-1</code>.
</td>
</tr>
</tbody>
</table>



>

## Passing Domains Across IFrames



Serving ads inside of iFrames is preferred by publishers for a number of
reasons, to include:

- Increased Security: For security reasons, communication between
  iFrames serving from different domains is prohibited by the browser.
  This is known as the "Same Origin Policy". For more information, see
  the W3C's
  <a href="https://www.w3.org/Security/wiki/Same_Origin_Policy"
  class="xref" target="_blank">"Same Origin Policy"</a> page.

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





**Age Buckets**

<table id="seller-detected-site-domain-report__table_vqb_fmr_5wb"
class="table frame-all">
<colgroup>
<col style="width: 38%" />
<col style="width: 61%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__1"
class="entry colsep-1 rowsep-1">Bucket ID</th>
<th id="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__2"
class="entry colsep-1 rowsep-1">Bucket Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__1">0</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__2">"unknown"</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__1">1</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__2">"13-17"</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__1">2</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__2">"18-24"</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__1">3</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__2">"25-34"</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__1">4</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__2">"35-44"</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__1">5</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__2">"45-54"</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__1">6</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__2">"'55-64"</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__1">7</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__table_vqb_fmr_5wb__entry__2">"65+"</td>
</tr>
</tbody>
</table>







## Metrics

<table class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="seller-detected-site-domain-report__entry__219"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-detected-site-domain-report__entry__220"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-detected-site-domain-report__entry__221"
class="entry colsep-1 rowsep-1">Example</th>
<th id="seller-detected-site-domain-report__entry__222"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__219">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__220">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__221"><code
class="ph codeph">200942</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-detected-site-domain-report__entry__222">The number of
impressions coming through this site or placement.</td>
</tr>
</tbody>
</table>





## Example

**Create the report request**



``` pre
$ cat report-request.json

{
  "report": {
    "report_type": "seller_detected_site_domain",
    "columns": [
      "seller_member_id",
      "seller_member_name",
      "placement_id",
      "publisher_id",
      "publisher_name",
      "imps",
      "detected_site_domain_audit_status",
      "detected_site_domain_audit_status_id",
      "site_name",
      "detected_site_domain",
      "detected_top_domain",
      "auction_site_domain",
      "placement_id",
      "is_blacklisted"
    ],
    "filters": [
      "seller_member_id",
      "detected_site_domain_audit_status"
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
href="api-semantics.md#APISemantics-UsingcURL"
class="xref" target="_blank"><code class="ph codeph">curl</code></a>
documentation.

``` pre
$ curl -b cookies -o huge-report.csv "https://api.appnexus.com/report-download?id=8d3697d23c87e5bebd44370630162990"
```

**Retrieve the report data wrapped in JSON (Optional)**

You will almost always want to use the method described in *Download the
report data directly to a file* above. However, if for some reason you
prefer to receive the reporting data wrapped in a JSON response, you may
pass the `report_id` to the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> directly.

``` pre
$ curl -b cookies "https://api.appnexus.com/report?id=8d3697d23c87e5bebd44370630162990"
```






