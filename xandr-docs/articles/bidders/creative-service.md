---
Title : Creative Service
Description : Xandr works with members who care deeply about
brand and reputation. For this reason, we are careful to ensure that the
---


# Creative Service



Xandr works with members who care deeply about
brand and reputation. For this reason, we are careful to ensure that the
advertisements (creatives) that pass through our system are acceptable
to all parties. For quality assurance, all creatives that serve on
third-party inventory must be pre-registered using the Creative Service.

- Creatives are identified by their media_url (either a third-party
  adserver URL or a Content Delivery Network URL for a flash/GIF file).
- We will check media_urls on a regular basis. If a file disappears, the
  creative will be treated as unaudited.
- An audit notify request will be sent to the audit_notify_uri handler
  for each creative whose audit status has changed.
- Uploading malware or deceptive creatives or purposely mislabeling
  creatives is absolutely prohibited.
- It is highly recommended to configure your member (see the <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/member-service.html"
  class="xref" target="_blank">Member Service</a>) to receive emails
  when:
  - The creative is audited (by configuring the audit_notify_email field
    in the <a
    href="https://docs.xandr.com/bundle/xandr-bidders/page/member-service.html"
    class="xref" target="_blank">Member Service</a>.)
  - The creative has been scanned by <a
    href="https://docs.xandr.com/bundle/xandr-bidders/page/sherlock---creative-quality-control.html"
    class="xref" target="_blank">Sherlock</a> (by configuring
    the sherlock_notify_email in the <a
    href="https://docs.xandr.com/bundle/xandr-bidders/page/member-service.html"
    class="xref" target="_blank">Member Service</a>.)



Note: Expired Creative Policy

When a creative (1) has not run and (2) has not been modified for 15
consecutive days, then it will be automatically marked expired
("is_expired": true) and will not serve on any inventory. Creatives will
be automatically reactivated if your bidder resumes bidding with the
creative.



  
**Permissions:**

- Only admin can change `audit_status` field.
- Creatives that are modified after they've been audited will return to
  an `pending` audit status.

<div id="ID-00002834__section_n2m_cd2_nwb" >

## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__section_n2m_cd2_nwb__entry__1"
class="entry colsep-1 rowsep-1">HTTP method</th>
<th id="ID-00002834__section_n2m_cd2_nwb__entry__2"
class="entry colsep-1 rowsep-1">End point</th>
<th id="ID-00002834__section_n2m_cd2_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__2"><a
href="https://api.adnxs.com/creative/MEMBER_ID" class="xref"
target="_blank">https://api.adnxs.com/creative/MEMBER_ID</a>
<p>(creative JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__3">Add a new
creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__2"><a
href="https://api.adnxs.com/creative-macro-check?include_tests=1"
class="xref"
target="_blank">https://api.adnxs.com/creative-macro-check?include_tests=1</a>
<p>(replace_pattern_in_content_url JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__3">Modify an existing
creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__2"><a
href="https://api.adnxs.com/creative/MEMBER_ID/CREATIVE_ID" class="xref"
target="_blank">https://api.adnxs.com/creative/MEMBER_ID/CREATIVE_ID</a>
<p>(creative JSON)</p>
<p><a href="https://api.adnxs.com/creative/MEMBER_ID?code=CODE"
class="xref"
target="_blank">https://api.adnxs.com/creative/MEMBER_ID?code=CODE</a></p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__2"><a
href="https://api.adnxs.com/creative/MEMBER_ID" class="xref"
target="_blank">https://api.adnxs.com/creative/MEMBER_ID</a>
<p><a
href="https://api.adnxs.com/creative/MEMBER_ID?num_elements=X&amp;start_element=Y&amp;min_last_activity=Z&amp;sort=id.asc"
class="xref"
target="_blank">https://api.adnxs.com/creative/MEMBER_ID?num_elements=X&amp;start_element=Y&amp;min_last_activity=Z&amp;sort=id.asc</a></p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__3">View all of a
member's creatives.


Note: If you have more than 100
creatives for a member, please use the num_elements and start_element
parameters discussed below.


<p>To see a specific number and range of creatives for a member. X is
the number of elements to be returned. This should be 100 or lower. Y is
the first element of the X elements to be returned. The first element is
0. If you use num_elements, you must also specify the start_element. To
retrieve unique paginated results use the parameter <code
class="ph codeph">&amp;sort=id.asc</code> as shown below.</p>
<p>You may also specify <code
class="ph codeph">min_last_activity=Z</code> as a filter. Z must be in
the form <code class="ph codeph">YYYY-MM-DD</code>.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__2"><a
href="https://api.adnxs.com/creative/MEMBER_ID/CREATIVE_ID" class="xref"
target="_blank">https://api.adnxs.com/creative/MEMBER_ID/CREATIVE_ID</a>
<p><a
href="https://api.adnxs.com/creative?member_id=MEMBER_ID&amp;id=CREATIVE_ID1,CREATIVE_ID2,CREATIVE_ID3"
class="xref"
target="_blank">https://api.adnxs.com/creative?member_id=MEMBER_ID&amp;id=CREATIVE_ID1,CREATIVE_ID2,CREATIVE_ID3</a></p>
<p><a
href="https://api.adnxs.com/creative?member_id=MEMBER_ID&amp;code=CODE"
class="xref"
target="_blank">https://api.adnxs.com/creative?member_id=MEMBER_ID&amp;code=CODE</a></p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__3">View a specific
creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__2"><a
href="https://api.adnxs.com/creative/MEMBER_ID?id=CREATIVE_ID"
class="xref"
target="_blank">https://api.adnxs.com/creative/MEMBER_ID?id=CREATIVE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__section_n2m_cd2_nwb__entry__3">Delete a
creative.</td>
</tr>
</tbody>
</table>





## JSON Structure

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__23" class="entry colsep-1 rowsep-1">Set
By</th>
<th id="ID-00002834__entry__24"
class="entry colsep-1 rowsep-1">Required</th>
<th id="ID-00002834__entry__25"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__26"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__24">yes
(on update)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
ID of the creative; used for internal matching purposes only.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Read-only</strong>. The current
state of the creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
ID of the member this creative belongs to. This is specified in the URI
of the API call and does not need to also be in the JSON.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">mobile</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">Information needed for mobile creatives
to pass the creative audit. See <a
href="creative-service.html#ID-00002834__mob" class="xref">Mobile</a>
below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">video_attribute</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">Attributes for third-party in-stream
(VAST) video creatives. See <a
href="creative-service.html#ID-00002834__vid" class="xref">Video
Attribute</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string (400)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">Optional description associated with
the creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string (100)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
member code of the creative; used for external ID mapping purposes only
(see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
class="xref" target="_blank">Incoming Bid Response from
Bidders</a>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">brand_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
id of the brand of the company advertising the creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">brand</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">Contains the id of the brand of the
company advertising the creative, the name, and the category_id. Will be
audited.

Tip: To return <code
class="ph codeph">category_name</code> as well, pass <code
class="ph codeph">show_category_name=true</code> in the query string of
your call.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
state of the creative. Possible values are "active" or "inactive"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
status of the creative describing if the creative is ready to serve. See
<a href="creative-service.html#ID-00002834__st" class="xref">Status</a>
below for details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">media_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__24">no
(if content exists)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string(1000)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
URL of the creative - can be image, flash, html, javascript. URL must
exist and should be on a CDN or equivalent.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">media_url_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__24">no
(if content_secure exists)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string(1000)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
URL of the secure (https) creative - can be image, flash, HTML,
javascript to be served on a secure ad call. URL must exist and should
be on a CDN or equivalent.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">content</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__24">no
(if media_url exists)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">text</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
raw javascript or html content of the creative used instead of a
media_url.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">content_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__24">no
(if media_url_secure exists)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">text</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">Javascript or HTML content when
"format" is "raw-js" or "iframe-html" served on a secure ad call.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">audit team and client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">enum
('no_audit','pending','rejected','unauditable', 'audited')</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
status of the audit. This field is set by the <span
class="ph">Xandr creative auditing team. A creative that does not
have audit_status "audited" may be resubmitted for audit by setting the
audit_status of the creative to "pending."</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">ssl_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">audit team</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">enum('disabled','pending','approved','failed')</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">Only creatives with ssl_status =
approved will be eligible to serve on secure inventory. 

Note: If a creative fails the ssl
Sherlock audit, you can submit it for a retest (once you've fixed the
downstream non-secure content) by changing this field to "pending".

<p><strong>Default</strong>: 'disabled'</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">audit_feedback</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">If
the creative has failed the creative audit for <span
class="ph">Xandr, this includes the audit team's reasoning.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">allow_audit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">Set
to true if you would like to opt the creative into the audit
process. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">allow_ssl_audit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">If
true, the creative will be submitted for secure (https) auditing. If
false, the creative will not be submitted. If true, either
media_url_secure or content_secure is required as well.
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">size_in_bytes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
size of the media file in bytes.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">last_checked</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
timestamp that the URL was last checked for existence.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">not_found</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">How
many times the URL has failed to load. After a certain number of checks,
the creative will deactivate.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">added_by_bidder</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
ID of the bidder that added this creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">campaign</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string(50)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
(optional) name of the campaign for this creative - used for
reporting/management purposes.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">placement</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string(50)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
(optional) name of the placement for this creative - used for
reporting/management purposes.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">flash_click_variable</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">For
flash creatives only. Attempting to <code class="ph codeph">POST</code>
or <code class="ph codeph">PUT</code> to this field for non-flash
creatives is not enabled. This is the name of the Flash clickTAG
variable into which Xandr will insert a click
tracking URL (if click tracking is enabled) that will be followed when
the user clicks on the creative. See <a
href="http://www.adobe.com/resources/richmedia/tracking/designers_guide"
class="xref" target="_blank">Adobe's designer's guide</a> on how to set
up a Flash file to use the clickTAG variable.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">template</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
creative template (ex.:  <code class="ph codeph">template_id 6</code> )
for the creative's format and media type (i.e., flash and expandable).
The template includes code to control how the creative renders on web
pages. For more details, see <a
href="creative-service.html#ID-00002834__cre" class="xref">Creative
Template</a> below.

Warning: When using a template for the
"raw-html" format (HTML that will not be served in an iFrame),
everything in the <code class="ph codeph">content</code> field must be
<code class="ph codeph">escaped</code> (quotes, slashes, etc.,) and
wrapped in a <code class="ph codeph">document.write();</code> statement.
This is necessary to deliver the content to the page

<p><strong>Default</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">native_attribute</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__24">yes
(required for native ads with template 39461)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">This is the native object that contains
elements required for native ads. For more information, see the
description of the <a href="creative-service.html#ID-00002834__native"
class="xref">Native Attribute</a> object below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">adx_audit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Read only</strong>. This object
contains information about the status and feedback related to the Google
Ad Exchange audit of the creative. Information about whether or not a
creative has been approved is returned in the <code
class="ph codeph">audit_status</code> field.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">width </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
width of the creative in pixels.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
height of the creative in pixels.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">click_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__24">yes
(When creative.format is image)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string(1000)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">Does not work for Bidder clients.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">pixels</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
pixels to serve with the creative. They can be for external impression
tracking, external click tracking, or other purposes, such as adding the
AdChoices icon to a creative. See <a
href="creative-service.html#ID-00002834__px" class="xref">Pixels</a>
below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">flash_backup_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">Backup for flash format creatives,
which will be served if the user's browser doesn't support flash.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
timestamp when the creative was originally uploaded to <span
class="ph">Xandr</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
date and time when the creative was last modified. Timezone is UTC.
<strong>Read Only</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">original_content</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">This field is for reference only. When
a tag with third party content is uploaded to <span
class="ph">Xandr, the original content uploaded with the creative
will be stored in this field.
<p><strong>Default</strong>: Required on POST when submitting as type 
<code class="ph codeph">raw-html.</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">original_content_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">See
original_content. This is the secure version of this content.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">segments</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">A
list of segments that a user will be added to upon viewing or clicking
on this creative. For more information, see <a
href="creative-service.html#ID-00002834__seg" class="xref">Segments</a>
below.
<p> Example:</p>
<pre class="pre codeblock"><code>&quot;segments&quot;: [ 
        { &quot;id&quot;: 11111,  
          &quot;action&quot;: &quot;add_on_view&quot;
        }, 
        { &quot;id&quot;: 22222, 
          &quot;action&quot;: &quot;add_on_click&quot; 
        } 
]</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">is_prohibited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">True if the <span
class="ph">Xandr internal auditing system has detected malicious
behavior while analyzing the creative. If True, this creative will not
be eligible to serve.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">is_suspicious</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">True if the <span
class="ph">Xandr internal auditing system has detected suspect
behavior while analyzing the creative. If True, this creative will not
be eligible to serve.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">language_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">audit team</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">ID
of the creative's language - see <a href="language-service.html"
class="xref">Language service</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">audit team</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">List of ints</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">IDs
of categories associated with the creative - see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/category-service.html"
class="xref" target="_blank">Category Service</a>. For GET, these are
only returned if you use the flag attributes=true in the request
URL.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">adservers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Read-only</strong>. The ad
servers that deliver the creative or are called for data collection
purposes during the delivery of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">technical_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">audit team</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">List of ints</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">IDs
of technical attributes associated with the creative - see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/technical-attribute-service.html"
class="xref" target="_blank">Technical Attribute Service</a>. For GET,
these are only returned if you use the flag attributes=true in the
request URL.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">passed_sherlock_audit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">Indicates whether the creative has been
recently checked by the Xandr automated creative
auditing system ("Sherlock").</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">is_expired</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">internal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26">Indicates whether the creative has been
served or modified in the past 15 days.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code class="ph codeph">sla</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">integer</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
target timeframe when requesting a platform audit.  A value of 0 is
standard, 2 is priority/rush.  Default is 0.

Note: When requesting a standard audit,
the api will populate this field with a value of null.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">text_title</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">yes, only if format is text</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string up to 25 characters</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
top line of text displayed in a text creative</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">text_description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">yes, only if format is text</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string up to 70 characters</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
lower line of text displayed in a text creative</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">text_display_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">client</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">yes, only if format is text</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string up to 35 characters</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
readable URL displayed in a text creative</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">click_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
action that the device should take when the creative is clicked.
Currently, this field will be set to the only supported click action,
"click-to-web"
<p><strong>Default</strong>: click-to-web</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">click_target</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__26">The
target of the click_action. For click-to-web, this is the <code
class="ph codeph">click_url</code> of the creative.<br />
<br />
<code class="ph codeph">click_url</code> will eventually be deprecated
in favor of this field.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">format</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">native</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">click_trackers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">impression_trackers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">pixel_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>. Please use
the <code class="ph codeph">pixels</code> field instead.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">pixel_url_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>. Please use
the <code class="ph codeph">pixels</code> field instead.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">pixel_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>. Please use
the <code class="ph codeph">pixels</code> field instead.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">no_iframes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">track_clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">no_iframes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">track_clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">filter</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">creative_upload_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">backup_upload_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">media_subtypes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__22"><code
class="ph codeph">pop_values</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__23"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__24"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__26"><strong>Deprecated</strong>.</td>
</tr>
</tbody>
</table>

**Mobile**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__377"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__378"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__379"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__377"><code
class="ph codeph">alternative_landing_page_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__378">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__379">An
alternative landing page URL that can be viewed in a desktop browser for
creatives that have a landing page targeted to a specific device,
operating system, or carrier.

Warning: You must provide an auditable
URL in order for your creative to pass auditing.
</td>
</tr>
</tbody>
</table>

**Audio**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__383"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__384"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__385"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__383"><code
class="ph codeph">click_target</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__384">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__385">The target of the click_action, which
is the action that the device should take when the creative is clicked.
Enter a URL that our audit team can use to verify the brand and
attributes of your audio creative. Ensure that the site the URL points
to is in the same language as the audio. This URL is used only for
auditing purposes. 

Warning: You must provide an auditable
URL in order for your creative to pass auditing.
</td>
</tr>
</tbody>
</table>

**Video Attribute**

The template id for `video_attribute` is 6439 - Video: Standard VAST
(also accepts VPAID), and the object includes the following fields:



Note: Audio

The video attribute object is also used to create audio creatives. The
template id for audio is 38745 - Xandr Audio
Template (VAST). Both XML-urls and audio file urls are accepted.

VAST check

When adding a third party VAST or VPAID video creative, a series of
checks are performed on the XML. There are different outputs you may see
and corrective action that can be taken. See <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/vast-check.html"
class="xref" target="_blank">VAST Check</a> for details.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__389"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__390"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__391"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__389"><code
class="ph codeph">is_skippable</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__390">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__391">If
<code class="ph codeph">true</code>, the in-stream (VAST) video creative
is skippable.
<p>Only third-party skippable VAST video creatives are supported;
therefore, when <code class="ph codeph">is_skippable</code> is <code
class="ph codeph">true</code>, <code class="ph codeph">is_hosted</code>
must be <code class="ph codeph">false</code>.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__389"><code
class="ph codeph">duration_ms</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__390">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__391">The duration, in milliseconds, of the
in-stream (VAST) video creative. This must be greater than <code
class="ph codeph">0</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__389"><code
class="ph codeph">wrapper</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__390">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__391">The VAST document wrapper that
contains the <code class="ph codeph">elements</code> array and the <code
class="ph codeph">trackers</code> array.</td>
</tr>
</tbody>
</table>

**Video Attribute Wrapper**

The `wrapper` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__401"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__402"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__403"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__401"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__402">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__403">URL of the VAST document.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__401"><code
class="ph codeph">secure_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__402">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__403">Secure URL of the VAST document.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__401"><code
class="ph codeph">elements</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__402">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__403">Elements of the VAST wrapper.</td>
</tr>
</tbody>
</table>

  
**Video Attribute Wrapper Element **

The `elements` array contains the following fields:

At least one element must be specified.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__413"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__414"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__415"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__413"><code
class="ph codeph">vast_element_type_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__414">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__415">VAST element ID. Possible value:
<ul>
<li><code class="ph codeph">1</code>: linear</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__413"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__414">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__415">Read only. Type of element. Possible
value: "linear"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__413"><code
class="ph codeph">trackers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__414">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__415">VAST event trackers.</td>
</tr>
</tbody>
</table>

  
**Video Attribute Event Trackers**

You can drop pixels on every event that we track in reporting (see
vast_event_type_id below). Add the pixel(s) as `trackers` on the
creative. The `trackers` array contains the following fields: 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__425"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__426"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__427"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__425"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__426">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__427">The name of the event tracker.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__425"><code
class="ph codeph">vast_event_type_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__426">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__427">The ID of the VAST event. Possible
values:
<ul>
<li>1: service</li>
<li>2: start</li>
<li>3: skip</li>
<li>4: error</li>
<li>5: first_quartile</li>
<li>6: midpoint</li>
<li>7: third_quartile</li>
<li>8: completion</li>
<li>9: impression</li>
<li>10: click</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__425"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__426">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__427">The URL of the event tracker.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__425"><code
class="ph codeph">secure_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__426">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__427">The secure URL of the event
tracker.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__425"><code
class="ph codeph">event_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__426">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__427">Read only. The type of event
corresponding to <code class="ph codeph">vast_event_type_id</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__425"><code
class="ph codeph">is_segment_pixel</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__426">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__427">Defines the pixel as a segment pixel,
and ensures the userid for that event is added to segment regardless of
device type. Default value = <strong>false</strong>. Where this is set
to <strong>true</strong>, the url must be configured in the standard
format: <a href="http://ib.adnxs.com/seg?add=137401" class="xref"
target="_blank">https://ib.<span
class="ph">adnxs.com/seg?add=</a>segmentID, otherwise you will
receive an error. </td>
</tr>
</tbody>
</table>

**Creative Template  
**

You can use the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-template-service.html"
class="xref" target="_blank">Creative Template Service</a> to view all
rendering templates that can be assigned to creatives.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__446"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__447"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__448"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__446"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__447">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__448">The ID of the creative template.</td>
</tr>
</tbody>
</table>

Here are standard template ids for the most common creative formats.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__452" class="entry colsep-1 rowsep-1">ID</th>
<th id="ID-00002834__entry__453"
class="entry colsep-1 rowsep-1">Format</th>
<th id="ID-00002834__entry__454"
class="entry colsep-1 rowsep-1">Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">url-html</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Standard Banner</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">url-js</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Standard Banner</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">flash</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Standard Banner</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">image</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Standard Banner</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">raw-js</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Standard Banner</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">6</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">raw-html</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Standard Banner</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">7</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">iframe-html</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Standard Banner</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">8</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">url-xml</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">In-Banner Video</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">9</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">url-html</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Popup</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">url-js</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Popup</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">11</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">flash</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Popup</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">12</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">image</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Popup</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">13</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">raw-js</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Popup</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">14</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">raw-html</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Popup</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code class="ph codeph">15</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">iframe-html</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Popup</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__452"><code
class="ph codeph">6439</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__453">VAST, VPAID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__454">Standard VAST</td>
</tr>
</tbody>
</table>

For Expandable creatives, please see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/expandables-and-rich-media.html"
class="xref" target="_blank">Expandables and Rich Media</a> page for
more details.

**Status**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__503"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00002834__entry__504"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__505"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__503"><code
class="ph codeph">user_ready</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__504">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__505">The status of the creative set by the
user describing if the creative is ready to serve or not. Possible
values: "true" or "false"
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__503"><code
class="ph codeph">hosted_assets_association_complete</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__504">boolean / null</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__505"><strong>Read-only</strong>. Status of
the creative uploaded by Xandr's internal
systems. Possible values: "true" or "false" for hosted creatives and
"null" for third-party creatives.</td>
</tr>
</tbody>
</table>

**Native Attribute**

The `native_attribute` object contains the following fields. For more
information, see **Adding a native creative** in the Examples .

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__512"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__513"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__514"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__512"><code
class="ph codeph">link</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__513">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__514">URLs associated with the native
creative. See <a href="creative-service.html#ID-00002834__link"
class="xref">Link</a> below for details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__512"><code
class="ph codeph">image_trackers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__513">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__514">A
list of third-party impression tracking URLs intended to be used with
native creatives. For more information, see <a
href="creative-service.html#ID-00002834__imt" class="xref">Image
Trackers</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__512"><code
class="ph codeph">javascript_trackers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__513">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__514">A
list of third-party impression tracking URLs. For more information,
see <a href="creative-service.html#ID-00002834__jav"
class="xref">Javascript Trackers</a> below.
<p>All OpenRTB and Xandr macros are supported
for this field except for ${AUCTION_PRICE} and ${PRICE_PAID}.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__512"><code
class="ph codeph">data_assets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__513">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__514">Attributes of the native creative. See
<a href="creative-service.html#ID-00002834__da" class="xref">Data
Assets</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__512"><code
class="ph codeph">image_assets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__513">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__514">Attributes of each individual image.
See <a href="creative-service.html#ID-00002834__ia" class="xref">Image
Assets</a> for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__512"><code
class="ph codeph">video_assets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__513">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__514">Attributes of the video assets. See
Video Assets for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__512"><code
class="ph codeph">privacy_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__513">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__514">If
support was indicated in the request, URL of a page informing the user
about the buyer’s targeting activity. Xandr does
not provide a default privacy link.</td>
</tr>
</tbody>
</table>



Note: Please use image_trackers for
impression trackers and link.trackers for click trackers.



  
**Link**

The `link` object contains the landing page URL, fallback URL and
Trackers associated with the native creative. The `link` object is
required for native attribute.

The `link` object includes the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__536"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__537"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__538"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__536"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__537">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__538">The landing page of the native
creative.
<p><strong>Required On</strong>: <code
class="ph codeph">POST,PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__536"><code
class="ph codeph">fallback_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__537">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__538">A
backup url if the main deeplink url is not supported.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__536"><code
class="ph codeph">trackers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__537">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__538">A
list of third-party tracking URLs intended to be used with native
creatives. This should be an array of click trackers. See <a
href="creative-service.html#ID-00002834__track"
class="xref">Trackers</a> below for more details.</td>
</tr>
</tbody>
</table>



Note: All native creatives are
submitted for secure auditing by default.

- If the secure url has not been specified for any tracker (image
  trackers, javascript trackers, and creative image asset trackers),
  secure audit is disabled for that creative.
- If the secure URL has not been specified, but URL is prefixed with
  \`https\`, the creative will be submitted for secure audit.



**Trackers**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__548"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__549"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__550"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__548"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__549">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__550">A
third-party tracking URL. This should contain your click tracker.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__548"><code
class="ph codeph">url_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__549">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__550">(optional) A secure third-party
tracking URL. This should contain your click tracker.</td>
</tr>
</tbody>
</table>

  
**Image Trackers**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__557"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00002834__entry__558"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__559"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__557"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__558">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__559">A
third-party impression tracking URL. This should contain your impression
tracker.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__557"><code
class="ph codeph">url_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__558">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__559">A
third-party impression tracking URL (that uses SSL). This should contain
your impression tracker.</td>
</tr>
</tbody>
</table>

**Javascript Trackers**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__566"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00002834__entry__567"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__568"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__566"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__567">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__568">A
third-party javascript tracking URL.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__566"><code
class="ph codeph">url_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__567">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__568">A
third-party javascript tracking URL (that uses SSL)</td>
</tr>
</tbody>
</table>

**Data Assets**

The `data_assets` object includes the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__575"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__576"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__577"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__575"><code
class="ph codeph">data_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__576">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__577">The asset type for the native
creative. Possible values:
<ul>
<li>sponsored_by</li>
<li>title</li>
<li>description</li>
<li>rating</li>
<li>call_to_action</li>
<li>display_url</li>
<li>likes</li>
<li>downloads</li>
<li>price</li>
<li>sale_price</li>
<li>phone</li>
<li>address</li>
<li>additional_description</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__575"><code
class="ph codeph">value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__576">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__577">The description of the <code
class="ph codeph">data_type asset</code> that you have specified.
<ul>
<li>"sponsored_by" - brand name of the sponsor</li>
<li>"title" - title of the creative</li>
<li>"description" - description of the product or service being
advertised</li>
<li>"rating" - rating of the product being offered</li>
<li>"call_to_action" - suggested action for next step<br />
</li>
<li>"display_url" - the URL you would like displayed</li>
<li>"likes" - social media likes</li>
<li>"downloads" - number downloads/installs of this product</li>
<li>"price" - Price for product / app / in-app purchase</li>
<li>"sale_price" - sale price that can be used together with price to
indicate a discounted price</li>
<li>"phone" - phone number</li>
<li>"address" - address</li>
<li>"additional_description" - the longer version of your ad's
description</li>
</ul></td>
</tr>
</tbody>
</table>

**Image Assets**

The image`_assets` object includes the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__584"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__585"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__586"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__584"><code
class="ph codeph">creative_asset_image</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__585">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__586">The object containing details of the
creative asset. Required for third-party native creatives. See details
in <a href="creative-service.html#ID-00002834__cai"
class="xref">Creative Asset Image</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__584"><code
class="ph codeph">image_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__585">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__586">The format of the image. Possible
values include:
<ul>
<li>icon_image</li>
<li>main_image</li>
</ul></td>
</tr>
</tbody>
</table>

**Creative Asset Image**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__593"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__594"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__595"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__593"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__594">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__595">The url of the image.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__593"><code
class="ph codeph">url_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__594">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__595">The secure url of the image.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__593"><code
class="ph codeph">width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__594">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__595">The width of the image. Value must be
&gt; 0</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__593"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__594">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__595">The height of the image. Value must be
&gt; 0</td>
</tr>
</tbody>
</table>

**Video Assets**

The video_assets object includes the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__608"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__609"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__610"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__608"><code
class="ph codeph">video_creative_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__609">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__610">The Xandr
creative id of the video asset associated with the native creative.

Note: A separate video creative must be
registered first before registering a native video creative.
</td>
</tr>
</tbody>
</table>

  
**Pixels**

You use this array to add up to five
Xandr-approved and custom pixels to a creative.

**Xandr-approved pixels** are from trusted,
commonly-used providers. Most of them do not cause the creative to be
resubmitted for audit. To add a Xandr-approved
pixel to a creative, you need to pass only the pixel_template_id and the
number of params that the pixel requires. See the "Adding a
Xandr-approved pixel to a creative" example
below for further guidance. Note that you can use the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/pixel-template-service.html"
class="xref" target="_blank">Pixel Template Service</a> to get
information about these pixels, including whether or not they trigger
re-audit.

Custom pixels are defined by you and do cause the creative to be
resubmitted for audit. To add a custom pixel, you need to pass only the
format and, depending on the format, the content or url. See the
<a href="creative-service.html#ID-00002834__cuspx" class="xref">Adding a
custom pixel to a creative</a> example below for further guidance.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__614"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__615"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__616"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__614"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__615">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__616"><strong>Read-only</strong>. The ID of
the pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__614"><code
class="ph codeph">pixel_template_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__615">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__616">The ID of the <span
class="ph">Xandr-approved pixel. You can use the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/pixel-template-service.html"
class="xref" target="_blank">Pixel Template Service</a> to get this
ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__614"><code
class="ph codeph">param_1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__615">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__616">For <span
class="ph">Xandr-approved pixel: The value for the first
parameter in the pixel content or URL. To find out how many parameters
are required for a Xandr-approved pixel, use the
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/pixel-template-service.html"
class="xref" target="_blank">Pixel Template Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__614"><code
class="ph codeph">param_2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__615">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__616">For <span
class="ph">Xandr-approved pixel: The value for the second
parameter in the pixel content or URL.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__614"><code
class="ph codeph">param_3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__615">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__616">For <span
class="ph">Xandr-approved pixel: The value for the third
parameter in the pixel content or URL.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__614"><code
class="ph codeph">param_4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__615">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__616">For <span
class="ph">Xandr-approved pixel: The value for the fourth
parameter in the pixel content or URL.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__614"><code
class="ph codeph">param_5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__615">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__616">For <span
class="ph">Xandr-approved pixel: The value for the fifth
parameter in the pixel content or URL.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__614"><code
class="ph codeph">format</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__615">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__616">The format of the pixel. Possible
values: "raw-js", "url-html", "url-js", or "url-image".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__614"><code
class="ph codeph">content</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__615">string (255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__616">If
the pixel format is "raw-js", the HTML or JavaScript content to serve
with the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__614"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__615">string (255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002834__entry__616">If
the pixel format is "url-html", "url-js", "url-image", or "raw-url", the
URL of the HTML, JavaScript, or Image pixel to serve with the
creative.</td>
</tr>
</tbody>
</table>

**Segments**

These fields will be included in the Segments array:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__647"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__648"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__649"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__647"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__648">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__649"> The ID of the segment.
<p><strong>Required On</strong>: POST, PUT</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__647"><code
class="ph codeph">segment_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__648">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__649"> The ID of the segment. This field
contains the same information as the <code class="ph codeph">id</code>
field.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__647"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__648">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__649">The action taken by users that will
add them to the segment. Possible values: 'add on view' or 'add on
click'.
<p><strong>Required On</strong>: POST, PUT</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__647"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__648">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__649">The segment's name.</td>
</tr>
</tbody>
</table>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002834__entry__662"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002834__entry__663"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002834__entry__664"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__662"><code
class="ph codeph">thirdparty_creative_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__663">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__664"> <strong>Read-only.</strong> If the
creative has been synced with a third-party such as Yahoo Ad Exchange,
this is the ID in the third-party system.If an issue arises with the
sync, you can reset <code
class="ph codeph">thirdparty_creative_id</code> to null with the
following PUT call:
<pre id="ID-00002834__codeblock_cnm_233_nwb"
class="pre codeblock"><code>$ curl -b cookies -c cookies -X PUT -d &#39;{&quot;creative&quot;:{}}&#39; &#39;https://api.adnxs.com/creative/MEMBER_ID/CREATIVE_ID&amp;reset_thirdparty_creative_id&#39;</code></pre>
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__662"><code
class="ph codeph">thirdparty_campaign_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__663">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__664"> <strong>Read-only.</strong> If the
campaign has been synced with a third-party, this is the ID in the
third-party system.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__662"><code
class="ph codeph">landing_page_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__663">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002834__entry__664"><p>The landing page URL entered by the
Xandr administrator during the audit process.</p>
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>

**Changes That Cause Re-Audit**

Once a creative has passed Xandr audit
(audit_status is "audited"), changing any of the following fields causes
the creative to be resubmitted for audit (allow_audit is set to
"pending"):

- width
- height
- content
- media_url
- click_url
- template
- custom_macros
- media_subtypes
- language
- categories
- technical_attributes
- brand_id
- pixel_url
- pixels (if adding or removing a custom pixel or a
  Xandr-approved pixel)
- text_title (if text creative)
- text_description (if text creative)
- text_display_url (if text creative)
- pop_window_maximize (if pop creative)
- pop_is_tag_initiated (if pop creative and changing from false to true)
- video_attribute
- media_assets

Also, if the audit_status is "no_audit", changing allow_audit from
"false" to "true" causes the creative to be resubmitted for
Xandr audit.





## Examples

**Adding a creative**

``` pre
$ cat creative
{
 "creative":
  {     "width" : 300,
        "height" : 250,
        "media_url" : "https://ad.doubleclick.net/adi/ABC.Advertising.com/DEF.40;sz=300x250;click0=",
        "template":{
           "id": 1 
        }
  }
}
```

``` pre
$ curl -b cookies -c cookies -X POST -d @creative.json "https://api.adnxs.com/creative/5"
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": 703355,
    "creative": {
      "id": 703355,
      "active": true,
      "member_id": 5,
      "description": null,
      "code": null,
      "code2": null,
      "media_url": "https:\/\/ad.doubleclick.net\/adi\/ABC.Advertising.com\/DEF.40;sz=300x250;click0=",
      "audit_status": "pending",
      "allow_audit": true,
      "size_in_bytes": 0,
      "last_checked": null,
      "not_found": 0,
      "added_by_bidder": null,
      "campaign": null,
      "placement": null,
      "format": null,
      "width": 300,
      "height": 250,
      "click_url": null,
      "landing_page_url": null,
      "flash_click_variable": null,
      "no_iframes": false,
      "content": null,
      "original_content": null,
      "track_clicks": true,
      "audit_feedback": null,
      "created_on": "2013-10-31 21:17:17",
      "flash_backup_url": null,
      "is_self_audited": false,
      "file_name": null,
      "is_prohibited": false,
      "last_activity": "2013-10-31 21:17:17",
      "passed_sherlock_audit": true,
      "is_expired": false,
      "creative_upload_status": null,
      "backup_upload_status": null,
      "filter": null,
      "is_suspicious": false,
      "suspicious_activity_timestamp": null,
      "media_subtypes": [
        "banner"
      ],
      "no_adservers": false,
      "is_blanking": false,
      "is_rotating": false,
      "text_title": null,
      "text_description": null,
      "text_display_url": null,
      "click_action": "click-to-web",
      "click_target": null,
      "ssl_status": "disabled",
      "allow_ssl_audit": false,
      "media_url_secure": null,
      "content_secure": null,
      "original_content_secure": null,
      "flash_backup_url_secure": null,
      "is_hosted": false,
      "content_source": "standard",
      "thirdparty_creative_id": null,
      "thirdparty_campaign_id": null,
      "custom_request_template": null,
      "brand": {
        "id": 1,
        "name": "Unknown",
        "category_id": 8
      },
      "language": {
        "id": 1,
        "name": "English"
      },
      "template": {
        "id": 1
      },
      "segments": null,
      "pixels": null,
      "mobile": null,
      "brand_id": 1,
      "sla": "0",
      "sla_eta": "2013-11-01 11:18:17"
    }
  }
}
```

**View the creative that was added**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/creative/5/6'
{
   "response":{
        "status":"OK",
        "creative":{
                "id": 6,
                "active": true,
                "member_id": 5,
                "description": null,
                "code": null,
                "brand_id": 43,
                "media_url": "https:\/\/ad.doubleclick.net\/adi\/ABC.Advertising.com\/DEF.40;sz=300x250;click0=",
                "audit_status": "pending",
                "allow_audit": true,
                "size_in_bytes": 18467,
                "last_checked": null,
                "not_found": false,
                "added_by_bidder": 14,
                "campaign": null,
                "placement": null,
                "format": "url-html",
                "width": 300,
                "height": 250,
                "click_url": "",
                "flash_click_variable": null,
                "pixel_url": "",
                "no_iframes": false,
                "content": null,
                "original_content": null,
                "track_clicks": true,
                "pixel_type": "image",
                "audit_feedback": null,
                "created_on": "0000-00-00 00:00:00",
                "flash_backup_url": null,
                                "is_self_audited": false,
                "last_activity": "2008-08-26 05:41:04",
                                "passed_sherlock_audit": true,
                                "is_expired": false,
                                "creative_upload_status": null,
                                "backup_upload_status": null,
                        "filter": null,
                        "is_suspicious": false,
                        "suspicious_activity_timestamp": null,
                        "media_subtypes": [
                                "banner"
                        ],
                        "no_adservers": false,
                        "is_blanking": false,
                        "is_rotating": false,
                        "text_title": null,
                        "text_description": null,
                        "text_display_url": null,
                        "click_action": "click-to-web",
                        "click_target": null,
                        "ssl_status": "disabled",
                        "allow_ssl_audit": false,
                        "media_url_secure": null,
                        "content_secure": null,
                        "original_content_secure": null,
                        "flash_backup_url_secure": null,
                        "is_hosted": false,
                        "content_source": "standard",
                        "thirdparty_creative_id": null,
                        "thirdparty_campaign_id": null,
                        "custom_request_template": null,
                        "brand": {
                                "id": 5,
                                "name": "Adobe",
                                "category_id": 27
                        },
                        "language": {
                                "id": 16,
                                "name": "Norwegian"
                        },
                        "template": {
                                "id": 1
                                },
                        "segments": null,
                        "pixels": null,
                        "mobile": null,
                        "brand_id": 5,
                        "sla": null,
                        "sla_eta": null
                        }
  }
}
```

**Modifying a creative**

If you then decide to add a campaign name "Triple Play - October 2008"
to the creative for reporting purposes:

``` pre
$ cat creative_mod
{"creative" : {
        "campaign":"Triple Play - October 2008"
        }
}
$ curl -b cookies -c cookies -X PUT --data-binary @creative_mod 'https://api.adnxs.com/creative/5/6'
{
   "response":{
        "status":"OK",
        "id":6
}}
```

And then to view the change:

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/creative/5/6'
{
    "response": {
        "creatives": [
            {
                "id": 6,
                "active": true,
                "member_id": 5,
                "description": null,
                "code": null,
                "brand_id": 43,
                "media_url": "https:\/\/ad.doubleclick.net\/adi\/ABC.Advertising.com\/DEF.40;sz=300x250;click0=",
                "audit_status": "pending",
                "allow_audit": true,
                "size_in_bytes": 18467,
                "last_checked": null,
                "not_found": 0,
                "added_by_bidder": 14,
                "campaign": "Triple Play - October 2008",
                "placement": null,
                "format": "url-html",
                "width": 300,
                "height": 250,
                "click_url": "",
                "flash_click_variable": null,
                "pixel_url": "",
                "no_iframes": false,
                "content": null,
                "original_content": null,
                "track_clicks": true,
                "pixel_type": "image",
                "audit_feedback": null,
                "created_on": "2008-08-26 05:41:04",
                "flash_backup_url": null,
                "last_activity": "2008-09-14 06:20:04"
            }
        ],
        "status": "OK"
    }
}
```

**Submit a creative for audit**

If you would like to request an audit for a creative it must be active
and have the `allow_audit` field set to true:

``` pre
$ cat creative_mod
{"creative" : {
        "audit_status": "pending",
                "allow_audit" : true
        }
}
$ curl -b cookies -c cookies -X PUT --data-binary @creative_mod 'https://api.adnxs.com/creative/5/6'
{
   "response":{
        "status":"OK",
        "id":6
}}
```

**Unexpire a creative and resubmit for audit**

If a creative has expired, you can update it with these settings to set
the status to "pending" and resubmit the creative for audit. Note that
as of November 2017, creatives that have been expired for over one year
will be permanently deleted. See "Expired Creative Policy" at the top of
this page for more information.

``` pre
$ cat unexpire_creative
{
    "creative": {
    "audit_status": "pending",
    "allow_audit": true,
    "status": {
        "user_ready": true
        }
    }
}
```

**Submit a mobile creative for audit**

This example uses the new `mobile` object:

``` pre
$ cat mobile_creative
{
    "creative" : {
        "audit_status": "pending",
        "allow_audit" : true,
        "mobile" : {
                 "alternative_landing_page_url" : "https://..."
        }
    }
}
$ curl -b cookies -c cookies -X PUT --data-binary @creative_mod 'https://api.adnxs.com/creative/5/6'
{
   "response":{
        "status":"OK",
        "id":6
   }
}
```

**Submit a creative for priority audit**

If you would like to submit for a priority audit. Set "sla" to 2 (a
value of 1 is not currently used). You will be charged a priority audit
fee per your contract.

``` pre
$ cat creative_mod
{"creative" : {
        "audit_status": "pending",
        "sla": 2
        }
}
$ curl -b cookies -c cookies -X PUT --data-binary @creative_mod 'https://api.adnxs.com/creative/5/6'
{
   "response":{
        "status":"OK",
        "id":6
}}
```

**View the estimated audit time for your creative ('sla_eta')**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/creative/5/6'
{
    "response": {
        "creatives": [
            {
                "id": 6,
                ...
                "audit_status": "pending",
                "sla": 0,
                "sla_eta": "2011-05-21 05:33:06"
            }
        ],
        "status": "OK"
    }
}
```

**Adding a creative (third-party HTML tag)**

``` pre
$ cat creative
{
 "creative":
  { "width" : 300,
    "height" : 250,
    "media_url" : "https://ad.doubleclick.net/adi/ABC.Advertising.com/DEF.40;sz=300x250;click0=",
    "template":{
       "id": 1
    }
  }
}                       
$ curl -b cookies -c cookies -X POST -d @creative.json 'https://api.sand-08.adnxs.net/creative?member_id=1282'   
  
{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":null,
        "num_elements":null,
        "id":816447,
        "creative":{
            "id":816447,
            "active":true,
            "member_id":1282,
            "description":null,
            "code":null,
            "code2":null,
            "media_url":"https:\/\/ad.dblclick.net\/adi\/ABC.Advertising.com\/DEF.40;sz=300x250;click0=",
            "audit_status":"pending",
            "allow_audit":true,
            "size_in_bytes":0,
            "last_checked":null,
            "not_found":0,
            "added_by_bidder":null,
            "campaign":null,
            "placement":null,
            "format":null,
            "width":300,
            "height":250,
            "click_url":null,
            "landing_page_url":null,
            "flash_click_variable":null,
            "no_iframes":false,
            "content":null,
            "original_content":null,
            "track_clicks":true,
            "audit_feedback":null,
            "created_on":"2014-01-24 16:02:31",
            "flash_backup_url":null,
            "is_self_audited":false,
            "file_name":null,
            "is_prohibited":false,
            "last_activity":"2014-01-24 16:02:31",
            "passed_sherlock_audit":true,
            "is_expired":false,
            "creative_upload_status":null,
            "backup_upload_status":null,
            "filter":null,
            "is_suspicious":false,
            "suspicious_activity_timestamp":null,
            "media_subtypes":[
                "banner"
            ],
            "no_adservers":false,
            "is_blanking":false,
            "is_rotating":false,
            "text_title":null,
            "text_description":null,
            "text_display_url":null,
            "click_action":"click-to-web",
            "click_target":null,
            "ssl_status":"disabled",
            "allow_ssl_audit":false,
            "media_url_secure":null,
            "content_secure":null,
            "original_content_secure":null,
            "flash_backup_url_secure":null,
            "is_hosted":false,
            "content_source":"standard",
            "thirdparty_creative_id":null,
            "thirdparty_campaign_id":null,
            "custom_request_template":null,
            "brand":{
                "id":1,
                "name":"Unknown",
                "category_id":8
            },
            "language":{
                "id":1,
                "name":"English"
            },
            "template":{
                "id":1
            },
            "segments":null,
            "pixels":null,
            "mobile":null,
            "brand_id":1,
            "sla":"0",
            "sla_eta":"2014-01-27 00:03:31"
        }
```

**Adding an iframe-html creative**

The creative service allows for a number of different types of creatives
to be created. For example, to create a creative using the format
"iframe-html", you would upload the raw html that will be embedded in an
iframe in the page serving the ad.

``` pre
$ cat iframe-html-creative
{
   "creative" : {
        "content":"<script type=\"text/javascript\" language=\"javascript\">
                   var sample_var = 350;
                   </script>
                   <script type=\"text/javascript\" language=\"javascript\" src=\"https://sample_source.com/sample_id?ord=${CACHEBUSTER}\"</script>",
        "width":"300",
        "height":"250",
        "format":"iframe-html",
        "brand_id" : 43
        }
}
$ curl -b cookies -c cookies --data-binary @iframe-html-creative 'https://api.adnxs.com/creative/5'
{
   "response":{
        "status":"OK",
        "id":7
}}
```

**Adding a Xandr-approved pixel to a creative**

This example walks you through the process of adding the
Xandr-approved Evidon AdChoices Icon pixel to a
creative.

First, you need to find out the pixel_template_id and the number of
parameters you must define for the pixel. You use the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/pixel-template-service.html"
class="xref" target="_blank">Pixel Template Service</a> to get this
information.

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/pixel-template'
{
    "response": {
        "status": "OK",
        "count": 3,
        "start_element": 0,
        "num_elements": 100,
        "pixel-templates": [
            {
                "id": 1,
                "name": "Evidon AdChoices Icon",
                "format": "raw-js",
                "content": "(function() {document.write('<sc'+'ript type=\"text/javascript\"' + ((\"https:\"
                 == document.location.protocol) ? \"https://c.betrad.com\" : \"https://c.betrad.com\") +
                 '/surly.js?;ad_wxh=${CREATIVE_SIZE};coid=${P1};nid=${P2};${P3}\"></scr'+'ipt>');}());",
                "num_required_params": 2,
                "require_reaudit": false
            },
            {
                "id": 2,
                "name": "Brilig Impression Tracker",
                "format": "url-image",
                "num_required_params": 1,
                "require_reaudit": false,
                "url": "https://p.brilig.com/contact/bct?pid=${P1}&_ct=pixel&adid=${CP_ID}&action=1"
            },
            ...
        ],
        "dbg_info": {
            ...
        }
    }
}
```

The Evidon AdChoices Icon pixel is the first in the response. You note
that id is 1. You also note that num_required_params is 2. This means
that, when adding the pixel to your creative, you must provide values
for {P1} and {P2} in the pixel content.

Then you create the JSON-formatted file for adding the pixel to the
creative. In the file, you set pixel_template_id to 2, and you set
param_1 and param_2 to the values for {P1} and {P2} in the pixel
content.



Note: The pixels array will be
completely overwritten with the information in this file. Therefore, if
the creative already includes any pixels, be sure to specify them in the
file as well.



``` pre
$ cat creative_update
{
    "creative": {
        "pixels": [
            {
                "pixel_template_id": 1,
                "param_1":"12",
                "param_2":"34"
            }
        ]
    }
}
```

Finally, you make a PUT call to update the creative. The pixels array in
the response then shows that the pixel has been added. The two
parameters are defined and have been populated in the pixel content.
Note that, because the Evidon AdChoices Icon pixel does **not** cause
the creative to require re-auditing, audit_status has not be reverted to
"pending".

``` pre
$ curl -b cookies -c cookies -X PUT -d @creative_update 'https://api.adnxs.com/creative/3/503577'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "503577",
        "start_element": 0,
        "num_elements": 100,
        "creative": {
            "name": null,
            "brand_id": 1,
            "media_url": "https://creative.com/300x250",
            "id": 503577,
            "code": null,
            "code2": null,
            "state": "active",
            "click_track_result": "not_tested",
            "member_id": 3,
            ...
            "audit_status": "audited",
            ...
            "pixels": [
                {
                    "id": 163,
                    "pixel_template_id": 1,
                    "param_1": "12",
                    "param_2": "34",
                    "param_3": null,
                    "param_4": null,
                    "param_5": null,
                    "format": "url-image",
                    "content": "(function() {document.write('<sc'+'ript type=\"text/javascript\"' +
                     ((\"https:\" == document.location.protocol) ? \"https://c.betrad.com\" :
                     \"https://c.betrad.com\") + '/surly.js?;ad_wxh=${CREATIVE_SIZE};coid=12;nid=34;
                     \"></scr'+'ipt>');}());"
                }
            ],
            ...
        },
        "dbg_info": {
            ...
        }
    }
}
```

**Adding a custom pixel to a creative**

In this example, the PUT request adds a custom url-js pixel to creative
503577. In the JSON-formatted file, the format is set to "url-js", and
the url is set to the location of the JavaScript that you want to serve
with the creative. Note in the response that audit_status is "pending";
this is because adding a custom pixel to a creative causes the creative
to be resubmitted for audit.



Note: The pixels array will be
completely overwritten with the information in this file. Therefore, if
the creative already includes any pixels, be sure to specify them in the
file as well.



``` pre
$ cat creative_update
{
    "creative": {
        "pixels": [
            {
                "format": "url-js",
                "url":"https://50.16.221.228/render_js?cb=${CACHEBUSTER}&uid=${USER_ID}&ref=${REFERER_URL}
                 &campaign_id=147"
            }
        ]
    }
}
$ curl -b cookies -c cookies -X PUT -d @creative_update 'https://api.adnxs.com/creative/3/503577'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "503577",
        "start_element": 0,
        "num_elements": 100,
        "creative": {
            "name": null,
            "brand_id": 1,
            "media_url": "https://creative.com/300x250",
            "id": 503577,
            "code": null,
            "code2": null,
            "state": "active",
            "click_track_result": "not_tested",
            "member_id": 3,
            ...
            "audit_status": "pending",
            ...
            "pixels": [
                {
                    "id": 196,
                    "pixel_template_id": null,
                    "param_1": null,
                    "param_2": null,
                    "param_3": null,
                    "param_4": null,
                    "param_5": null,
                    "format": "url-js",
                    "url": "https://50.16.221.228/render_js?cb=${CACHEBUSTER}&uid=${USER_ID}
                     &ref=${REFERER_URL}&campaign_id=147"
                }
            ],
            ...
        },
        "dbg_info": {
            ...
        }
    }
}
```

**Add a video creative with video attribute object and wrapper**

``` pre
{
    "creative": {
        "id": 145,
        ...
        "template_id": 6439,
        "video_attribute": {
            "is_skippable": true,
            "duration_ms": 21000,
                        "wrapper": {
                "url": "http://www.doubleclick.net/...",
                "secure_url": "https://www.doubleclick.net/...",
                "elements": [
                    {
                                                "vast_element_type_id": 1,
                        "name": "linear",
                        "trackers": [
                            {
                                                                "name": "startTracker",
                                "vast_event_type_id": 2,
                                "url": "http://tracker.com/...",
                                "secure_url": "https://tracker.com/...",
                                                                "event_type": "start"
                            },
                                                        {
                                                                "name": "completionTracker",
                                "vast_event_type_id": 8,
                                "url": "http://tracker.com/...",
                                "secure_url": "https://tracker.com/...",
                                                                "event_type": "completion"
                            }
                        ]
                    }
                ]
            }
        }
    }
}
```

**Adding a native creative**

When adding a native creative, use template ID 39461.

``` pre
cat native
{
        "creative": {
                "description": "native_test",
                "brand_id": 1,
                "media_url": "https://mediaurl.com",
                "code": "test",
                "code2": null,
                "member_id": 4,
                "state": "active",
                "template": {
                        "id": 39461
                },
                "native_attribute": {
                        "link": {
                                "url": "https://url.com",
                                "fallback_url": "https://fallback.com",
                                "trackers": [{
                                        "url": "http://url.com",
                                        "url_secure": "https://secureurl.com"
                                }]
                        },
                        "data_assets": [{
                                "data_type": "sponsored_by",
                                "value": "a value"
                        }, {
                                "data_type": "rating",
                                "value": "8"
                        }],
                        "image_assets": [{
                                "image_type": "icon_image",
                                "creative_asset_image": {
                                        "url": "http://url.com",
                                        "url_secure": "https://secureurl.com",
                                        "height": 1,
                                        "width": 1
                                }
                        }],
                        "image_trackers": [{
                                "url": "http://url.com",
                                "url_secure": "https://secureurl.com"
                        }],
                        "javascript_trackers": [{
                                "url": "http://url.com",
                                "url_secure": "https://secureurl.com"
                        }]
                },
                "thirdparty_viewability_providers": null,
                "status": {
                        "user_ready": true
                },
                "sla_eta": null
        }
}
$ curl -b cookies -c cookies -X POST -s @native 'https://api.adnxs.com/creative/4'
{
        "response": {
                "status": "OK",
                "count": 1,
                "id": 411,
                "start_element": 0,
                "num_elements": 100,
                "dbg_info": {
                        ...
                },
                "creative": {
                        "description": "native_test",
                        "brand_id": 1,
                        "media_url": "https://mediaurl.com",
                        "id": 411,
                        "code": "test",
                        "code2": null,
                        "member_id": 4,
                        "state": "active",
                        "click_track_result": "not_tested",
                        "format": "url-file",
                        "width": null,
                        "height": null,
                        "click_url": null,
                        "flash_click_variable": null,
                        "no_iframes": false,
                        "content": null,
                        "original_content": null,
                        "file_name": null,
                        "track_clicks": true,
                        "audit_status": "pending",
                        "macros": null,
                        "profile_id": null,
                        "audit_feedback": null,
                        "is_prohibited": false,
                        "is_suspicious": false,
                        "created_on": "2017-03-09 21:54:11",
                        "flash_backup_url": null,
                        "last_modified": "2017-03-09 21:54:11",
                        "is_control": false,
                        "allow_audit": true,
                        "is_expired": false,
                        "creative_upload_status": null,
                        "backup_upload_status": null,
                        "use_dynamic_click_url": false,
                        "media_subtypes": [
                                "popunder",
                                "popup",
                                "banner"
                        ],
                        "size_in_bytes": 0,
                        "is_self_audited": false,
                        "no_adservers": false,
                        "text_title": null,
                        "text_description": null,
                        "text_display_url": null,
                        "click_action": "click-to-web",
                        "click_target": null,
                        "ssl_status": "pending",
                        "allow_ssl_audit": true,
                        "media_url_secure": "https://MEDIAURL.appnexus.com",
                        "content_secure": "document.write(\\\"\\\")",
                        "original_content_secure": null,
                        "flash_backup_url_secure": null,
                        "is_hosted": false,
                        "content_source": "standard",
                        "lifetime_budget": null,
                        "lifetime_budget_imps": null,
                        "daily_budget": null,
                        "daily_budget_imps": null,
                        "enable_pacing": null,
                        "allow_safety_pacing": null,
                        "landing_page_url": null,
                        "thirdparty_creative_id": null,
                        "thirdparty_campaign_id": null,
                        "facebook_audit_status": null,
                        "facebook_audit_feedback": null,
                        "custom_request_template": null,
                        "language": {
                                "id": 1,
                                "name": "English"
                        },
                        "brand": {
                                "id": 1,
                                "name": "Unknown",
                                "category_id": null
                        },
                        "template": {
                                "id": 329,
                                "name": "native ad",
                                "media_subtype_id": 17,
                                "format_id": 11
                        },
                        "ios_ssl_audit": null,
                        "adx_audit": null,
                        "custom_macros": null,
                        "segments": null,
                        "folder": null,
                        "campaigns": null,
                        "line_items": null,
                        "competitive_brands": null,
                        "competitive_categories": null,
                        "pixels": null,
                        "mobile": null,
                        "video_attribute": null,
                        "media_assets": null,
                        "sla": null,
                        "thirdparty_pixels": null,
                        "native": null,
                        "native_attribute": {
                                "link": {
                                        "url": "https://url.com",
                                        "fallback_url": "https://fallback.com",
                                        "trackers": [{
                                                "url": "http://url.com",
                                                "url_secure": "https://secureurl.com"
                                        }]
                                },
                                "data_assets": [{
                                        "data_type": "sponsored_by",
                                        "value": "a value"
                                }, {
                                        "data_type": "rating",
                                        "value": "8"
                                }],
                                "image_assets": [{
                                        "image_type": "icon_image",
                                        "creative_asset_image": {
                                                "url": "https://vcdn.adnxs.com/sand/creative-image/ea/f5/30/28/eaf53028-e6c6-4ac0-bcbb-ce8fe14b73ab.png",
                                                "url_secure": "https://secureurl.com",
                                                "height": 12,
                                                "width": 34
                                        }
                                }],
                                "image_trackers": [{
                                        "url": "http://url.com",
                                        "url_secure": "https://secureurl.com"
                                }],
                                "javascript_trackers": [{
                                        "url": "http://url.com",
                                        "url_secure": "https://secureurl.com"
                                }]
                        },
                        "thirdparty_viewability_providers": null,
                        "status": {
                                "user_ready": true,
                        },
                        "sla_eta": null,
                        "currency": "USD",
                        "type": "standard"
                }
        }
}
```

**Determining the Technical Atttributes assigned to your creative**

Although technical attributes isn't something that can be added to the
automated reports today, this can be retrieved through the Creative
service in the bidder API. For more information please refer to the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/technical-attribute-service.html"
class="xref" target="_blank">Technical Attribute Service</a>

This can be accessed by adding the query string
parameter "?attributes=true" as: "<a
href="https://api.adnxs.com/creative/MEMBER_ID/CREATIVE_ID?attributes=true"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/creative/MEMBER_ID/CREATIVE_ID?attributes=true</a>"

``` pre
"technical_attributes": [
{
 "id": 2,
 "name": "Flash"
},
{
 "id": 9,
"name": "Initial Load > 40kb"
},
 {
  "id": 13,
  "name": "Banner has AdChoices Icon"
 },
 {
  "id": 15,
  "name": "Animated: 15 seconds or less"
 }
 ]
```

The <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/api-semantics.html#APISemantics-Metacalls"
class="xref" target="_blank">Meta Service</a>  provides the most up to
date information about interfacing with objects in our API.

**Creative Macros**

The impression bus supports two types of creative macros replaced in
real time: pre-defined **Xandrcreative macros**
and **custom macros** that can be defined by the bidder. The main
difference between the two is the perspective. For example, the
impression bus has no knowledge of a Campaign or an Insertion Order when
a real time bid is placed, so any objects supported with a bidder's
internal object model and required in a macro should be supported using
custom macros.



Warning: Macro Restrictions

- Only pre-defined Xandr macros and custom
  macros are supported when registering creatives.
- DO NOT use OpenRTB macros when registering creatives.  
  OpenRTB macros are for use only in the <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
  class="xref" target="_blank">bid response</a>.
- Do not give a custom macro a name that matches the name of an OpenRTB
  macro.



**Xandr Creative Macros**

See <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/xandr-macros.html"
class="xref" target="_blank">Xandr Macros</a> for
a complete list of the available creative macros.

**Click Tracking Example**:

``` pre
"media_url": "https://ad.doubleclick.net/adi/N5364.Ivillage.com/B2965815.5;sz=728x90;click0=${CLICK_URL};ord=${CACHEBUSTER}?"
```

**Custom Macros**

Using custom_macro functionality in the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
class="xref" target="_blank">Bid Response</a>, you can dynamically pass
into the pre-registered creatives. For instance, if you wanted to always
return a particular campaign and reporting code, you could set up your
creative as follows:

``` pre
{
   "creative":{
       "media_url":"https://adserver.com/imp?z=300x250;camp=${CAMPAIGN_ID};int=${INT_CODE}",
       "format":"url-html",
       "width":"300",
       "height":"250"
}}
```

Then, when your bidder responds to an auction, the bid response can
specify the name and value of the macros to replace, by including, for
example:

``` pre
"custom_macros":[
{
   "name":"CAMPAIGN_ID",
   "value":"452346"
},
{
   "name":"INT_CODE",
   "value":"a352-45we-sdr3"
}]
```



Note: Even if the value is an integer,
it must be placed within quotation marks (for example,  `"42"` ).



``` pre
<iframe src="https://adserver.com/sz=300x250;camp=452346;int=a352-45we-sdr3" width=300 height=250/>
```






