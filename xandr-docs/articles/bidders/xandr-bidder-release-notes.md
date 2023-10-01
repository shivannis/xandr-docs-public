---
Title : Xandr Bidder Release Notes
Description : The following table lists Xandr product
releases, updates, and deprecations. Dates may shift if necessary.  
---


# Xandr Bidder Release Notes



The following table lists Xandr product
releases, updates, and deprecations. Dates may shift if necessary.  

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000c3c7__entry__1" class="entry colsep-1 rowsep-1">Release
Date</th>
<th id="ID-0000c3c7__entry__2"
class="entry colsep-1 rowsep-1">Status</th>
<th id="ID-0000c3c7__entry__3"
class="entry colsep-1 rowsep-1">Feature</th>
<th id="ID-0000c3c7__entry__4" class="entry colsep-1 rowsep-1">Product
Theme</th>
<th id="ID-0000c3c7__entry__5" class="entry colsep-1 rowsep-1">More
Info</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2022-04-21</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Upcoming</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3">Effective June 20, 2022, the Impression
Bus API (along with the Digital Platform API) will only permit HTTPS
(secured and encrypted) connections. After that date, <strong>HTTP
(unsecured and unencrypted) connections will not be accepted and will
fail</strong>. You must ensure that you are not using unsecured and
unencrypted HTTP across your organization</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">Security</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/api-release-notes/page/breaking-change-notice---april-21--2022---https-required.html"
class="xref" target="_blank">Breaking Change Notice - April 21, 2022 -
HTTPS Required</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2022-01-27</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3">Xandr has
released support for OMID in Native 1.2 according to the <a
href="https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/master/OpenRTB%20support%20for%20OMSDK.md"
class="xref" target="_blank">OpenRTB OM SDK Spec</a>. <span
class="ph">Xandr now supports OMID for video, display, and Native
1.2 </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB, Native, Mobile</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Outgoing Bid Request to Bidders</a></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2021-11-04</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3">Xandr has added
support for video.linearity within the video object of bid requests in
accordance with the OpenRTB specification.
<ul>
<li>1: Linear / In-Stream</li>
<li>2: Non-Linear / Overlay</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html#OutgoingBidRequesttoBidders-VideoObject"
class="xref" target="_blank">Outgoing Bid Request to
Bidders#VideoObject</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2021-10-14</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3">Xandr now
supports inventorypartnerdomain in ext objects of app and sit in
accordance iab ads.txt specification 1.0.3
<ul>
<li>App.ext.inventorypartnerdomain</li>
<li>Site.ext.inventorypartnerdomain</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5">Iab
spec including inventorypartnerdomain update: <a
href="https://iabtechlab.com/wp-content/uploads/2021/03/ads.txt-1.0.3.pdf"
class="xref"
target="_blank">https://iabtechlab.com/wp-content/uploads/2021/03/ads.txt-1.0.3.pdf</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2021-08-02</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3">Native 1.2 - Viewability Measurement  
<p><strong>What's changing</strong></p>
<p>On native 1.2 bid requests:</p>
<ul>
<li>The<strong> ver</strong> field is set to "1.2"</li>
<li>The <strong>eventtrackers</strong> object will be included in bid
requests, including
fields <strong>event </strong>and <strong>methods</strong>
<ul>
<li>event types 1-4  are supported</li>
<li><p>methods 1 - "img" and 2 - "js" are supported</p>
<p>On the bid response:</p></li>
</ul></li>
<li>The ver field should be set to
"1.2"</li>
<li>For v1.2 responses: The <strong>eventtrackers </strong>object is
supported, including
fields <strong>event</strong>, <strong>method</strong>,
and <strong>url</strong>
<ul>
<li>event types 1-4  are supported</li>
</ul></li>
<li>The <strong>imptrackers</strong> and <span
class="ph uicontrol">jstracker fields are still supported, but we
recommend using <strong>eventtrackers</strong> instead. These fields
will be deprecated in future versions.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB, Native</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Outgoing Bid Request to Bidders</a></li>
<li>We support for Version 1.1 and 1.2 of the OpenRTB Native Ads API.
Once your bidder has been enabled for Native 1.2, you will begin to
receive version 1.2 bid requests and will be required to provide version
1.2 bid responses. Native v1.2 is available regardless of whether your
bidder is enabled for <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/native-ad-markup-bidding.html"
class="xref" target="_blank">Native Ad Markup Bidding</a>. </li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">021-06-17</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3">The <strong>video.mimes</strong> array
of the OpenRTB bid request from Xandr will no
longer include the following values:
<ul>
<li><em>application/x-shockwave-flash</em></li>
<li><em>video/x-flv </em> </li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2021-02-18</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3">Synthetic CTV Device IDs</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Outgoing Bid Request to Bidders</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2019-09-24</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Rebranded and Updated Bidder
User Interface</strong></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__4">User
Interface</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a href="http://bidder.xandr.com/" class="xref"
target="_blank">Xandr Bidder UI</a></li>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-platform-user-interface.html"
class="xref" target="_blank">Bidder Platform User Interface</a></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2019-09-03</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Support Supplychain Fields in
OpenRTB Bid Requests</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://github.com/InteractiveAdvertisingBureau/openrtb/blob/master/supplychainobject.md"
class="xref" target="_blank">IAB Supplychain Object Specs</a></li>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Outgoing Bid Request to Bidders</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2019-03-21</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><p><strong>Support IFA Fields for CTV
Impressions in OpenRTB Bid Requests</strong></p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB, CTV</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://iabtechlab.com/wp-content/uploads/2018/12/OTT-IFA-guidelines.final_Dec2018.pdf"
class="xref" target="_blank">IAB IFA OTT Guidelines</a></li>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Outgoing Bid Request to Bidders</a></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2018-12-01</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Deprecate Xandr Bidding Protocol
and Legacy OpenRTB</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidding-protocol.html"
class="xref" target="_blank">Bidding Protocol</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2018-11-01</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Deprecate Bid Shading and Spend
Protection Fields in OpenRTB Bid Requests</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/csh?context=78643640&amp;topicname=outgoing-bid-request-to-bidders.html#OutgoingBidRequesttoBidders-PublisherIntegrationObject"
class="xref" target="_blank">PublisherIntegrationObject</a></li>
<li><a
href="https://docs.xandr.com/csh?context=78643640&amp;topicname=outgoing-bid-request-to-bidders.html#OutgoingBidRequesttoBidders-BidRequestAppNexusObject"
class="xref" target="_blank">BidRequestAppNexusObject</a></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2018-10-29</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong><strong>Native Ad Markup Bidding
(Beta)</strong></strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">Native, Creative, OpenRTB</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/native-ad-markup-bidding.html"
class="xref" target="_blank">Native Ad Markup Bidding</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2018-09-24</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Support Video Placement Field in
OpenRTB Bid Requests</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/csh?context=78643640&amp;topicname=outgoing-bid-request-to-bidders.html#OutgoingBidRequesttoBidders-VideoObject"
class="xref" target="_blank">VideoObject</a></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2018-06-07</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>New Google Ad Manager Bid
Errors</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">Creative, Troubleshooting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bid-error-codes.html"
class="xref" target="_blank">Bid Error Codes</a></li>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-bid-error-report-api.html"
class="xref" target="_blank">Bidder Bid Error Report API</a></li>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/notify-request.html"
class="xref" target="_blank">Notify Request</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2018-04-30</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong><strong>Expired Creative
Inactivity Period Decreased</strong></strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">Creative</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/add-a-creative.html"
class="xref" target="_blank">Add a Creative</a></li>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative---faq.html"
class="xref" target="_blank">Creative - FAQ</a></li>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/object-limit-service.html"
class="xref" target="_blank">Object Limit Service</a></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2018-03-22</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Creative
Unexpiration</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">Creative</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2018-02-13</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Supply Type
Detection</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">Mobile, Targeting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/supply-type-detection---faq.html"
class="xref" target="_blank">Supply Type Detection - FAQ</a></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2018-02-08</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>WiFi Carrier
Renamed</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">Mobile, Targeting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/carrier-service.html"
class="xref" target="_blank">Carrier Service</a></li>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">OpenRTB Bid Request</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2018-02-06</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Split Bid Error 102 into Two
Errors</strong>
<p>We are splitting bid error code 102 "Creative id was not found or
inactive" into two errors. The new errors are:</p>
<ul>
<li>Error 102: "Creative id was not found"</li>
<li>Error 137: "Creative id is inactive"</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">Creative, Reporting,
Troubleshooting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bid-error-codes.html"
class="xref" target="_blank">Bid Error Codes</a></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2017-11-06</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>API Version 1.18 Release -
Breaking Change</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">Reporting, API</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/september-5--2017---api-version-1-18-release---breaking-changes.html"
class="xref" target="_blank">API Version 1.18 Breaking Change
Communication</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2017-10-13</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><p><strong>Support Privacy Link in
OpenRTB Native</strong></p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">Creative, OpenRTB</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2017-09-25</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Update Bcat Behavior to Include
Brand Override</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2017-09-18</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><p><strong>Update device.os Field in
OpenRTB</strong></p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/csh?context=78643640&amp;topicname=outgoing-bid-request-to-bidders.html#OutgoingBidRequesttoBidders-DeviceObject"
class="xref" target="_blank">DeviceObject</a></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2017-07-31</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><p><strong>Support ipv6 in OpenRTB Bid
Request to Bidders</strong></p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/csh?context=78643640&amp;topicname=outgoing-bid-request-to-bidders.html#OutgoingBidRequesttoBidders-DeviceObject"
class="xref" target="_blank">DeviceObject</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2017-07-27</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Change in Bcat and Battr
Behavior</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2017-07-27</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Remove Xandr Categories from
OpenRTB Bid Requests</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2017-05-31</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><p><strong>Change in Click URL
Behavior</strong></p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2017-05-15</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>New Quick Start Buying
Guide</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">Documentation</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/quick-start-creative-buying-guide.html"
class="xref" target="_blank">Quick Start Creative Buying Guide</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2017-05-11</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Support Multiple Media Types in
a Single Bid Request from AST Supply</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2017-02-21</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Banner Sizes Extension
Deprecated</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Outgoing Bid Request to Bidders</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__1">2017-02-09</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__2">Released</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__3"><strong>Native 1.0 Bid Requests
Deprecated</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000c3c7__entry__4">OpenRTB</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000c3c7__entry__5"><ul>
<li><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Outgoing Bid Request to Bidders</a></li>
</ul></td>
</tr>
</tbody>
</table>




