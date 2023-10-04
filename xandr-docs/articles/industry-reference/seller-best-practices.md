---
Title : Seller Best Practices
Description : This table documents some best practices for
Xandr sellers to maximize revenue and optimize
their monetization strategies.
---


# Seller Best Practices



This table documents some best practices for
Xandr sellers to maximize revenue and optimize
their monetization strategies.

<table class="table">
<thead class="thead">
<tr class="header row">
<th colspan="3" id="ID-000000cc__entry__1"
class="entry colsep-1 rowsep-1"><strong>Seller Best
Practices</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000cc__entry__1"><strong>Best Practice</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000cc__entry__1"><strong>Recommendations</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000cc__entry__1"><strong>Benefits</strong> </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000cc__entry__1">Provide all SSP partners with equal
access to available ad units and sizes through header bidding.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1"><ul>
<li>Limit your supply paths to five SSP partners.</li>
<li>Limit your wrapper integrations to no more than two.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1"><ul>
<li>Leveraging too many SSPs can ultimately slow down the auction and
won’t offer unique demand.</li>
<li>Improve supply path optimization by reducing redundant competition
in the wrapper.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000cc__entry__1">Integrate all SSP partners equally.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1">Pass
all parameters needed for an optimal auction in every integration:
<ul>
<li>Price Floors</li>
<li>User IDs (LiveRamp IdentityLink, Unified ID 2.0, etc.)</li>
<li>Banner-specific parameters (Position, Size, API)</li>
<li>Video-specific parameters (Mimes, Min/Max Duration, Protocols, Size,
API)</li>
<li>App-specific parameters (Device &amp; App Info)</li>
<li>Privacy (GDPR, CCPA, COPPA, DNT, LMT)</li>
<li>Ensure a consistent number of bid requests per partner (ex. All
Multi-size, or all not).</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1"><ul>
<li>Passing comprehensive information about your inventory and users to
DSPs helps bidders make more strategic purchasing decisions.</li>
<li>Consistently including the same fields across SSPs helps buyers
determine the most efficient paths, which typically results in higher
yield for sellers.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000cc__entry__1">Ensure all SSP partners are passing
price floors in a consistent manner.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000cc__entry__1"><strong>For clients using
Prebid.js:</strong>
<ul>
<li><p>Update to the latest version of Prebid.js and implement the price
floor module. This will enable Xandr to pass net
floors defined in the <a
href="https://docs.prebid.org/dev-docs/modules/floors.html" class="xref"
target="_blank">Price Floors Module</a>.</p>
<p><strong>For non-Prebid integrations:</strong></p></li>
<li>Ensure that you are passing consistent net price floors for your
inventory to each supply partner, including <span
class="ph">Xandr.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1"><ul>
<li>Defining your net price floors in Prebid enables all of your Prebid
adapters supporting the module to pass through a consistent set of price
floors. This reduces the operational burden of managing price floors
individually with each of your SSP partners.</li>
<li>Passing net price floors to Xandr allows us
to forward the gross floor to buyers, which helps to maximize publisher
yield by ensuring that bidders only submit bids that when netted out are
above your net floor.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1">Use
of standardized placement formats.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1">If
you are enabling both display and video placements, do not use
multi-format ad requests.  </td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1"><ul>
<li>Send separate ad requests to maximize monetization
opportunities.</li>
<li>Many DSPs do not allow for multiple formats in a single request. Due
to capacity constraints, they will typically respond to the request for
one format, limiting the available overall demand.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000cc__entry__1">Routinely update your Prebid.js
integration.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1"><ul>
<li>Frequently update your <a
href="https://github.com/prebid/Prebid.js/releases?mkt_tok=MjA0LUtaRy02ODUAAAF-tseSepvRrO8KrDuB1Rn1V3nz_Nggsl3OqdDeu62ULXPXW-TyI2TRoJZUcjuKR10BrtJOWRadiTWQfl6YHOE"
class="xref" target="_blank">Prebid.js integration</a> to capture
changes Xandr makes to our Prebid adapter and
alleviate any potential errors with demand partners.</li>
<li>Engineering teams should follow the <a
href="https://github.com/prebid/Prebid.js/releases" class="xref"
target="_blank">Prebid.js Releases GitHub project</a> to view recent
release notes. </li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1"><ul>
<li>Xandr makes periodic updates to Prebid
Server Premium so you have the best opportunity to monetize your ad
requests.</li>
<li>Adapter updates impact the way bidders and buyers receive publisher
requests, and the only way to ensure these updates are captured is by
updating Prebid.js.</li>
<li>Updating Prebid.js is generally a quick and straightforward process
and is an easy way to reduce errors with demand partners and improve
monetization.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000cc__entry__1">Support and pass a Global Placement
Identifier (GPID).</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1"><ul>
<li>Implement a Global Placement Identifier (GPID) into your ad requests
to support DSP supply path optimization efforts.</li>
<li>To support the GPID, simply update to the latest version of <a
href="https://github.com/prebid/Prebid.js/releases?mkt_tok=MjA0LUtaRy02ODUAAAF-tseSepvRrO8KrDuB1Rn1V3nz_Nggsl3OqdDeu62ULXPXW-TyI2TRoJZUcjuKR10BrtJOWRadiTWQfl6YHOE"
class="xref" target="_blank">Prebid.js</a> and include the <a
href="https://docs.prebid.org/dev-docs/modules/gpt-pre-auction.html"
class="xref" target="_blank">GPT Pre-Auction module</a>.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1"><ul>
<li>DSPs are laser-focused on improving supply path optimization to
reduce infrastructure costs and ensure they are not receiving multiple
bid requests for the same inventory.</li>
<li>To streamline spend paths and reduce duplicate requests, DSPs are
asking publishers to implement a GPID to better track suppliers sending
ad requests to multiple SSPs.</li>
<li>Proactively supporting and passing a GPID ensures that you don’t
miss out on current or future DSP spend as DSPs begin to enforce
restrictions to optimize yield.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000cc__entry__1">Ensure price floor parity across your
tech stack.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1"><ul>
<li>Establish consistent price floors for the same inventory in all
systems (i.e. ad server unified pricing rules, line item CPMs, deal
prices, SSP floors, etc.).</li>
<li>If you make a change to price floor in your ad server, you will need
to make the same change in Xandr by following
these instructions in our <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/create-a-floor-rule.html"
class="xref" target="_blank">Documentation Center</a> or notifying
Account Management.</li>
<li>Floor prices set for buyers should be net your revenue share in your
ad server (i.e. if you set a $16.00 floor in your ad server and you have
a 20% revenue share with Xandr, your <span
class="ph">Xandr price floor should be $20.00).</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000cc__entry__1"><ul>
<li>Price floors can be applied and enforced in a variety of places
throughout your tech stack.</li>
<li>Establishing consistent prices floors minimizes bidder errors and
improves bidder decisioning by eliminating ambiguity.</li>
</ul></td>
</tr>
</tbody>
</table>



Note:

For additional details on best practices for The Trade Desk, see
<a href="publisher-best-practices-for-the-trade-desk.html"
class="xref">Publisher Best Practices for The Trade Desk</a>






