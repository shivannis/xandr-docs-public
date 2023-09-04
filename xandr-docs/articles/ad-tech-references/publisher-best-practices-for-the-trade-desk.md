# Publisher Best Practices for The Trade Desk

<div class="body">

<div class="p">

<div class="note important">

<span class="importanttitle">Important:</span> For additional details,
see <a
href="https://api.thetradedesk.com/v3/portal/ssp/doc/InventoryPolicies"
class="xref" target="_blank">The Trade Desk Inventory Policies</a> which
are subject to change as The Trade Desk makes updates to their policies.

</div>

This page details best practices for Xandr sellers to maximize revenue
and optimize their monetization strategies based on The Trade Desk’s
inventory policies.

</div>

<div id="publisher-best-practices-for-the-trade-desk__p-90565728-2b51-41f2-9234-bdc4823a0c56"
class="p">

<div class="tablenoborder">

<table
id="publisher-best-practices-for-the-trade-desk__table-2c32a110-6ff3-4c7a-ba60-6fd8fb606aa7"
class="table" data-cellpadding="4" data-cellspacing="0" data-summary=""
data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col />
<col />
</colgroup>
<thead class="thead">
<tr class="header ">
<th id="d11605e73" class="entry cellborder"
style="text-align: center; vertical-align: top;">Guideline</th>
<th id="d11605e76" class="entry cellborder"
style="text-align: center; vertical-align: top;">Details</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d11605e73 ">Support and pass a Global Placement Identifier
(GPID)</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d11605e76 "><ul>
<li>Support GPID for all integration types.</li>
<li>See <a
href="https://api.thetradedesk.com/v3/portal/ssp/doc/InventoryGlobalPlacementID"
class="xref" target="_blank">The Trade Desk GPID documentation</a>.</li>
<li>See <a href="https://docs.prebid.org/features/pbAdSlot.html"
class="xref" target="_blank">Prebid GPID documentation</a>
<ul>
<li>Xandr adapter supports <a
href="https://docs.prebid.org/dev-docs/modules/gpt-pre-auction.html"
class="xref" target="_blank">GPT Pre-Auction module</a> as of Prebid
4.38.0 Release, which is the module responsible for generating GPID
-&gt; The module tries to populate the <code
class="ph codeph">pbadslot</code> and <code
class="ph codeph">gpid</code> fields on its own (by default) reading the
data from the GAM slots that are present on the page.</li>
<li>The GPT Pre-Auction module is typically enabled by default in the <a
href="https://docs.prebid.org/download.html" class="xref"
target="_blank">Prebid.js Code download screen</a></li>
<li>If the publisher is using Prebid code handled by a managed service
provider, they should consult with this provider to check whether they
are <em>already</em> using the above module, or to check if the provider
can implement the above module in order to begin passing GPID.</li>
</ul></li>
<li><a
href="https://docs.xandr.com/bundle/seller-tag/page/seller-tag/define-tag.html"
class="xref" target="_blank">AST Guidelines</a> (see <code
class="ph codeph">globalPlacementId)</code>
<ul>
<li>Publishers need to ensure they are using AST version 0.49.0+ in
order to use the globalPlacementId for AST</li>
</ul></li>
<li>OpenRTB (server-side integrations) Guidelines
<ul>
<li>Publisher Clients using server-side/OpenRTB based integrations will
need to use imp.ext.gpid field to pass Global Placement ID in their
OpenRTB request - whereby the GPID value should be a string</li>
</ul></li>
<li>Video Tags (PTV, SSPTV) Guidelines</li>
</ul>
<p>Xandr video tags support GPID as a querystring parameter – example:
<a
href="https://ib.adnxs.com/ptv?id=123456789&amp;size=994x250&amp;referrer=msn.com"
class="xref"
target="_blank">https://ib.adnxs.com/ptv?id=123456789&amp;size=994x250&amp;referrer=msn.com</a>&amp;gpid=GPID123456780</p></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d11605e73 ">sellers.json</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d11605e76 "><ul>
<li>All direct integrations must have a non-confidential sellers.json
file.</li>
<li>Intermediary sellers must have their own non-confidential
sellers.json files.</li>
<li>All sellers.json files must be listed on a secure link (HTTPS).</li>
<li>Seller IDs, names, seller types, and business domains must be listed
in the sellers.json file.</li>
<li><strong>A seller must use a consistent business domain everywhere
they are represented, particularly across all exchanges’ sellers.json
files.</strong> For details about owner domain, see <a
href="https://api.thetradedesk.com/v3/portal/ssp/doc/InventoryPolicies#ads-txt"
class="xref" target="_blank"><u>app-ads.txt or ads.txt</u></a>.</li>
<li>Sellers must have the correct <code
class="ph codeph">seller_type</code> value, that can be one of the
following three values listed in the sellers.json spec:
<ul>
<li>PUBLISHER</li>
<li>INTERMEDIARY</li>
<li>BOTH</li>
</ul>
The decisive criterion for the determination of the <code
class="ph codeph">seller_type</code> is if the seller is the final payee
of the auction or handing payment to another entity.
<div class="note">
<span class="notetitle">Note:</span> Consult the above linked
sellers.json spec by IAB for further clarification.
</div></li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d11605e73 ">Clear visibility profiles</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d11605e76 "><ul>
<li>Ensure visibility profiles allow for sending of site.page url with
the full-page URL including query string, key-value pairs, and UTM
parameters.</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d11605e73 ">Single source of inventory</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d11605e76 ">Only
one source of inventory for a particular media type per seller is
allowed. Therefore do not send one media type inventory via multiple
integration types or header bidding solutions like (Google) Open Bidding
(OB), (Amazon) Transparent Ad Marketplace (TAM), Prebid, etc. Choose one
out of them that suits your purpose. However, it is allowed to send one
media type via one solution and other media types via different
solutions. For example, a selling publisher, Publisher-Company123,
cannot send display inventory via Exchange-ABC, on two different seller
IDs. Publisher-123 can send video inventory through Exchange-ABC on
<code class="ph codeph">seller_id=1</code> and display on the same
exchange via <code class="ph codeph">seller_id=2</code>. If the
publisher prefers, sellers 1 and 2 can represent different header
solutions.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d11605e73 ">CTV Quality Content</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d11605e76 ">To
transact CTV inventory on The Trade Desk platform, be sure to meet the
following policies and requirements:
<ul>
<li>The Trade Desk prohibits resold CTV. To ensure the direct traffic
continues to transact, any CTV sellers that are sending both direct and
resold CTV with the same seller ID must separate the direct and resold
supply into separate seller IDs.</li>
<li>There may be more than one entity with direct sales rights to CTV
supply (carriage rights agreements). If the inventory is exclusive to
the seller, and payment terminates with the seller, this is allowed. In
this case, use the Inventory Partner Domain. For more details, see <a
href="https://iabtechlab.com/wp-content/uploads/2020/12/CTV_app-ads_IABTechLab_Explainer_Guide_Public_Comment_2020-12.pdf"
class="xref" target="_blank">IAB Tech Lab Guidance for Inventory
Sharing</a>.</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d11605e73 ">IAB Tech Lab Video Definitions</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d11605e76 "><ul>
<li><p>The <code class="ph codeph">video.placement</code> field value
must be accurate according to the<a
href="https://iabtechlab.com/blog/updates-to-openrtb-for-public-comment/"
class="xref" target="_blank"><u>March 2023 Update</u></a>to the
Definition of the Instream Video. Instream videos must also meet the
following requirements.</p></li>
<li><p>Instream video (placement=1) must be set to "sound on" by default
at player start, or have explicitly clear user intent to watch the video
content.</p></li>
<li><p>While there may be other accompanying content, the video content
must be the focus of the user's visit. It should remain the primary
content on the page and the only video player in-view when playing. If
the player converts to floating/sticky subsequent ad calls should
accurately convey the updated player size.</p></li>
<li><p>Any video content that accompanies an article must have a <code
class="ph codeph">video.placement</code> value of 2, 3, 4, or
5.</p></li>
</ul></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="welcome-industry-reference.html" class="link">Welcome</a>

</div>

</div>

</div>
