---
Title : Bid Error Codes
Description : Bid error codes can be received from several different sources: 
- **<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/notify-request.html"
---


# Bid Error Codes



Bid error codes can be received from several different sources: 

- **<a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/notify-request.html"
  class="xref" target="_blank">Notify Request<br />
  </a>**Your bidder might receive an error code in the `responses` array
  of the `notify_request`. The `error` field explains what went wrong in
  the auction. 
- **<a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-bid-error-report-api.html"
  class="xref" target="_blank">Bidder Bid Error Report<br />
  </a>**You can use this report to troubleshoot buy-side and sell-side
  settings that result in auction errors, thereby blocking spend. The
  goal is to help you eliminate the error in the future. You can find
  information on the owner, cause and recommended resolution for each
  error below. 
- **<a
  href="https://docs.xandr.com/bundle/xandr-api/page/seller-bid-error-report.html"
  class="xref" target="_blank">Seller Bid Error Report<br />
  </a>**You can use this report to troubleshoot sell-side and buy-side
  settings that result in auction errors, thereby blocking spend. The
  goal is to help you eliminate the error in the future.  You can find
  information on the owner, cause and recommended resolution for each
  error below. 
- **<a
  href="https://docs.xandr.com/bundle/xandr-api/page/buyer-bid-error-report.html"
  class="xref" target="_blank">Buyer Bid Error Report</a>**  
  You can use this report to troubleshoot sell-side and buy-side
  settings that result in auction errors, thereby blocking spend. The
  goal is to help you eliminate the error in the future.  You can find
  information on the owner, cause and recommended resolution for each
  error below.

The following are error codes you might see from any of the above.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003efe__entry__1" class="entry colsep-1 rowsep-1">Error
ID</th>
<th id="ID-00003efe__entry__2" class="entry colsep-1 rowsep-1">Error
Message</th>
<th id="ID-00003efe__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00003efe__entry__4"
class="entry colsep-1 rowsep-1">Owner</th>
<th id="ID-00003efe__entry__5"
class="entry colsep-1 rowsep-1">Resolution</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">0</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Unknown error</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">10</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Request timed out</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Request timed out</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should contact <span
class="ph">Xandr Support to review integration settings.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">11</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Request throttled or aborted</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Request throttled or aborted</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should contact <span
class="ph">Xandr Support to review integration settings.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">12</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Connection error</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Connection error</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should contact <span
class="ph">Xandr Support to review integration settings.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">13</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Invalid HTTP response code
${HTTP_RESPONSE_CODE}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Invalid HTTP response code</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should contact <span
class="ph">Xandr Support to review integration settings.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">14</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">JSON
parsing error</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Demand Partner is having JSON parsing
error</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should contact <span
class="ph">Xandr Support to review integration settings.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">15</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">XML
parsing error</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">XML
parsing error</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should notify demand partner that
they're having problems.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">16</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Bid
response parsing error</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Demand Partner has formatted the bid
response incorrectly</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should contact <span
class="ph">Xandr Support to review integration settings.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">50</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">No
ad tag in response</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">No
ad tag in response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should notify the Demand Partner
that they're having problems.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">51</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">No
actions tag in response</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">No
actions tag in response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should notify the Demand Partner
that they're having problems.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">52</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">No
impurl tag in response</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">No
impurl tag in response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should notify the Demand Partner
that they're having problems.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">53</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">No
click action in response</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">No
click action in response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should notify the Demand Partner
that they're having problems.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">54</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">No
assets tag in response</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">No
assets tag in response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should notify the Demand Partner
that they're having problems.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">55</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Incorrect creative format in
response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Incorrect creative format in
response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should notify the Demand Partner
that they're having problems.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">60</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Response too long
(${RESPONSE_SIZE_IN_BYTES} bytes)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Response too long</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should notify the Demand Partner
that they're having problems.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">61</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">No
price received from bidder</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">No
price received from bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should notify the Demand Partner
that they're having problems.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">62</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">No
creative id received from bidder</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">No
creative id received from bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should notify the Demand Partner
that they're having problems.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">63</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Invalid creative landing page received
from bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Invalid creative landing page received
from bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should notify the Demand Partner
that they're having problems.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">64</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">No
drop log url received from bidder</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">No
drop log url received from bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should notify the Demand Partner
that they're having problems.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">102</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative id ${CREATIVE_ID} was not
found</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative ID specified in the <code
class="ph codeph">adid</code> for the OpenRTB bid response is expired,
deleted, or not found</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should ensure that the ID
sent in the <code class="ph codeph">adid</code> is valid. If so,
reactivate the creative or add a new one.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">103</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative id ${CREATIVE_ID} is
malicious</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative was marked as malicious as part
of our creative scanning process</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should upload a new creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">104</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} is not
ssl_approved for a secure auction</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Buyer is bidding with a non-ssl approved
creative for a secure auction</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should add a secure creative to
their campaign for use on sites requiring SSL. The Demand Partner should
make sure that allow_ssl_audit is set to true.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">105</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} does not belong
to response member id (${MEMBER_ID})</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Demand Partner is bidding with a
creative not associated with the Buyer Member in the bid response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should review the
creative and adjust accordingly.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">106</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} size
(${WIDTH}x${HEIGHT}) doesn't match tag sizes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Demand Partner is bidding with a
creative size that doesn't match the tag size</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should review the
creative size, notify the Seller regarding the mismatch tag size, or
alter the creative to match the correct tag size.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">107</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} not in VAST
format</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">108</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} does not have
VAST media subtype for VAST tag</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Non-VAST creative is bidding on a VAST
placement</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should review creative size and
ensure it's VAST.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">109</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} has VAST
media_subtype for non-VAST tag</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Placement doesn't support VAST
creatives, which are being sent by the Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should review the creative size
and ensure it's not VAST.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">110</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Flash creative ${CREATIVE_ID} returned
for user that doesn't have flash</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Placement does not support Flash
creatives</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should bid with a different
creative or ask the Seller to review the format settings in their
system.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">111</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} format is not
allowed by site</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative format is not allowed by the
site due to the placement group "ad formats" setting</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should bid with a different
creative or ask the Seller to review format settings in their
system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">112</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} click action is
not allowed by site</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">The
placement group can specify click actions that are allowed and if the
creative is not in the supported list, it will be blocked</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should obtain a better
understanding from the Seller as to which click actions are allowed on
the placement group so that the Buyer can bid with the appropriate
creatives.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">113</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative has an invalid media type</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">The
creative's media type is not allowed in the auction</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should bid with a different
creative media type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">114</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} initiates
pop</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Placement is pre-popped, but creative is
configured to initiate a pop, so they are incompatible</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should change the creative so that
the pop-up isn't initiated.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">115</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} has no click
url</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative has no landing page URL and is
required to have one</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should add a landing page
for the creative. If it is a third-party hosted tag, then they should
verify that the creative has Xandr's
${CLICK_URL} macro in place.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">116</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} has no landing
page url</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative has no landing page URL and is
required to have one</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should add a landing page for the
creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">117</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} is banned by
bid_request</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative is blocked based on the dynamic
technical attribute, creative category, or brand settings that have been
set</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should bid with a different
creative or ask the Seller to review the technical attribute, creative
category, and brand block settings in their system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">118</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} has an inactive
or non-existent CCRT</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">CCRT
for the creative is inactive or missing</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should update creative with active
CCRT.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">119</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} has no content
js in template ${TEMPLATE_ID} for JS tag</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative has no content js in the
template for the JS tag</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should select an
appropriate template for the tag.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">120</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} has no content
js or html in template ${TEMPLATE_ID} for IFRAME tag</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative has no content js or HTML in
the template for the IFRAME tag</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should select an
appropriate template for the tag.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">121</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} has no content
xml in template ${TEMPLATE_ID} for VAST tag</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Buyer is bidding on video inventory with
a non-VAST compliant creative</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should ensure that the creative is
live and contains valid VAST markup.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">122</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} with format
${FORMAT} is not allowed by seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative format is not allowed by the
Seller due to the Seller integration setting</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should bid with a different
creative or ask the Seller to review format settings in their
system.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">123</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} fails advertiser
exclusion</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">There are competitive exclusions set on
the auction and the creative bidding is not allowed to serve on the same
page as a creative already chosen</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should check if they have
advertisers with competitive exclusions set up.  If so, adjust campaign
targeting to avoid buying the same inventory or leave alone so that
campaigns can serve as needed.  If there are no buy-side competitive
exclusions set up, talk to the Seller to understand if the inventory is
generally available for the particular advertiser being blocked and see
if they can remove any exclusions on their end.  Otherwise, continue
buying and eventually it will get through.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">124</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} does not have
valid MIME type</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">VAST
creative does not contain a matching file type (swf, mp4, etc.) that the
player accepts</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should include correct file
formats that the Seller's player accepts (Xandr
recommends always including mp4, webm, and flv file types) and notify
the Seller to update the player to allow for more file formats including
VPAID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">125</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} is
suspicious</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative has been deemed as suspicious
and will not be eligible to serve</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should open a support
case to determine why the creative has been marked this way.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">126</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Mediated creative id ${CREATIVE_ID} is
not supported</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">The
specific creative is not supported for mediation</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should bid with a different
creative or ask the Seller to review creative settings in their
system.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">127</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Legacy vast creative
id ${CREATIVE_ID} is not supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative is using a deprecated VAST
template ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should update the creative with
the current, active VAST template ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">128</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} does not support
required video protocol</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">The
video protocol required by the inventory does not match the Creative's
protocol</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should update the creative to
support the proper protocol.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">129</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Native assets point to wrong creative
instead of creative ${CREATIVE_ID}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">130</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Native creative ${CREATIVE_ID} does not
match title or data asset requirements</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Native creative does not match title or
data asset requirements</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should update the native creative
so that the assets are configured appropriately.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">131</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Native creative ${CREATIVE_ID} does not
match image asset requirements</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Native creative does not match image
asset requirements</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should update the native creative
so that the assets are configured appropriately.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">132</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Native creative ${CREATIVE_ID} has no
valid data for any assets</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Native creative has no valid data for
any assets</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should update the native creative
so that the assets are configured appropriately.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">133</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Native creative ${CREATIVE_ID} is not
renderable</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Native creative is not renderable</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should update the native creative
so that it renders.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">134</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} comes from bad
source</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative was marked as malicious by
Xandr as part of the creative scanning
process</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should upload a new creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">135</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Native creative ${CREATIVE_ID} does not
match video asset requirements</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">136</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} missing
element(s):</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">137</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative id ${CREATIVE_ID} is
inactive</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative specified in creative_id is
inactive</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">138</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative missing vendor (GDPR)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative or pixel has no vendor
associated with it. This relates to the GDPR</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Demand Partner</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__5">Add
the appropriate vendor ids to the creative or pixel.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">139</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative unapproved vendor (GDPR)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative has a vendor associated that is
not in the consent string. This relates to the GDPR</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller needs to obtain consent for that
vendor.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">140</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative id ${CREATIVE_ID} failed AdX
audit</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative has failed Google Ad Manager
audit review. Therefore, it is ineligible to serve on Google Ad Manager
inventory</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should bid with a new creative or
modify this creative to pass the Google Ad Manager audit.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">141</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative id ${CREATIVE_ID} has AdX
ineligible category</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">One
or more of the creative's categories are ineligible to serve on certain
Google Ad Manager impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should bid with a new
creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">142</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative id ${CREATIVE_ID} has AdX
ineligible vendor</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">One
or more of the creative's ad tech vendors are ineligible to serve on
certain Google Ad Manager impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should bid with a new creative or
modify this creative to remove the disallowed vendor.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">143</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} contains a word
or phrase banned by the member's ad profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative contains one or more words or
phrases that are currently banned in the member's ad profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should discuss ad quality settings
with the Seller or consider setting up a deal with the Seller to obtain
an ad quality exception.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">144</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Bid
with ${CREATIVE_ID} , ${TAG_ID} was rejected due to video error reject
rate check</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">The
creative bid was rejected because the creative has a historically high
vast error rate on this tag</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should investigate why creative
has high occurrence of VAST errors in which the VAST creative does not
render in the specific tag environment. They can pull VAST error report
from their own systems (if available) or file a support ticket for <span
class="ph">Xandr to pull a video error report.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">146</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">NEC_EXTERNAL_RENDER_NOT_RENDERABLE</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">External creative failed rendering</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">147</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">NEC_EXTERNAL_RENDER_RESPONSE_TIMED_OUT</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">External creative content timed out</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">148</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">NEC_EXTERNAL_RENDER_RESPONSE_TRANSPORT_ERROR</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">External creative content failed due to
transport error</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">149</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">NEC_ACCEPT_URL_TOO_LONG</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">The
bid response was filtered due to the creative url being too long to
render on Internet Explorer 11 and Edge</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand partner should reduce the length
of urls in the bid response.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">150</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">NEC_BID_MISSING_ALL_POLITICAL_DATA</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Bid
response rejected due to missing all necessary information to serve the
political ad</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer needs to provide information
required by political advertising regulations.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">151</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">NEC_BID_MISSING_SOME_POLITICAL_DATA</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Bid
response filtered due to missing some necessary information to serve the
political ad</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer needs to provide missing
information required by political advertising regulations.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">152</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Bid
with creative id, tag id was rejected due to video error reject rate
creative block list</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">The
creative has been added to the block list due to having a high vast
error rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should investigate to eliminate or
reduce the creative's error rate and then reach out to <span
class="ph">Xandr Support for further assistance.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">157</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative is greater than 4.0MB in size
before user interaction</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">The
creative associated with the buyer's bid loads more than 4.0MB of data
before user interaction. If this ad were to be served, it would trigger
<a
href="https://developers.google.com/web/updates/2020/05/heavy-ad-interventions"
class="xref" target="_blank">Heavy Ad Intervention</a>, and thus be
blocked.

Note:  This only impacts Chrome and MS
Edge browsers.
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyers should reduce the size of their
creatives, so they use less than 4MB of bandwidth.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">201</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Auction ID ${AUCTION_ID} does not match
request</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">The
bid response auction id does not match the incoming bid request's
id.<br />
<br />
&#10;
Note: This may also happen if the
response is formatted incorrectly (e.g. an object in place of an array),
and the auction ID cannot be read.
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should contact <span
class="ph">Xandr Support to review integration settings.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">202</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">No
member ID sent in response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Demand Partner's bid response has no
member ID in it</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should review bid
responses and ensure member ID is included.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">203</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Inactive member ${MEMBER_ID}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Demand Partner is using an inactive
member_ID in bidding</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should review bid
responses and ensure that the active member ID is included or activate
the member ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">204</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Buyer member ${MEMBER_ID} has no
contract</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Buyer's contract isn't set up
properly</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should work with <span
class="ph">Xandr to make sure their buyer's contract is set up
correctly.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">205</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Member ${MEMBER_ID} over pacing or
credit limit</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Buyer has spent too much</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should work with <span
class="ph">Xandr to increase their limit or reduce spending on
their end for their buyer.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">207</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Exclusive bid from non-owning
bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">208</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Bid
from member not associated to bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Demand Partner is using an inaccurate
member_ID in bidding</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should review bid
responses and ensure that the correct member ID is included.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">209</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Roadblock bid from non-owning
member</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">210</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Member ${MEMBER_ID} is not eligible to
bid</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">The
seller's settings are blocking the buyer's member from participating in
the auction</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should notify the Seller that they
are currently blocked from bidding.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">211</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Member ${MEMBER_ID} is not eligible to
bid without deals</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Buyer is bidding with a non-deal bid on
a deal-only auction</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should only submit deal
bids to deal-only auctions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">212</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Seller member ${MEMBER_ID} has no
contract</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Seller's contract isn't set up
properly</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Supply Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Supply Partner should work with <span
class="ph">Xandr to make sure their seller contract is set up
correctly.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">213</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Broker member ${MEMBER_ID} has no
contract</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Broker's contract isn't set up
properly</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Broker Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Broker partner should work with <span
class="ph">Xandr to make sure their broker contract is set up
correctly.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">301</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">No
price set on non-exclusive bid response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">302</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Bid
from member specifies an invalid currency '${CURRENCY_CODE}'</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Bid
from member specifies an invalid currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should notify the Demand Partner
that they're having problems.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">304</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Effective revshare less than 0</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Buyer bid minus margin and brasc &lt; 0,
so there is nothing to send to the seller auction. (This tends to happen
with fixed-price margins only)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">305</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Net
bid is less than $0.00</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Net
bid is less than $0.00</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer needs to bid higher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">306</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">${NET_BID} net bid was lower than
${RESERVE_PRICE} reserve price</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Net
bid was lower than reserve price</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Seller/Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should evaluate if they want to
lower floors and notify the Demand Partner that they could bid
more.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">307</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative expired or not found by code;
Member id: ${MEMBER_ID}, code: '${CREATIVE_CODE}'</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative code specified in the <code
class="ph codeph">crid</code> for the OpenrTB bid response is expired or
not found. As a user sets up their own code, this error is frequently
caused when the user mixes up their codes or has a typo</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should ensure that the
<code class="ph codeph">crid</code> value matches the creative code. If
valid, the creative code will check that it has the correct value. If
so, reactivate the creative or add a new one.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">308</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Deal
%d is not available for auction</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">The
deal you specified in your response does not apply to this
impression</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should check if the Buyer
is bidding with the correct Deal ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">309</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Deal
%d is not available to buying member %d</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">You
don't have access to the deal you specified in your response. (The bid
in the response doesn't have the buyer's member associated to a
deal.)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should ensure that they
are bidding with the correct Deal ID and check with the Seller to see if
the deal is set up with the appropriate Demand Partner.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">310</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Bid
is below the deal (%d) floor</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Your
bid was not considered in the auction because it was below the deal's
minimum price</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should check that the bidding
strategy is at or above the suggested minimum bid for the deal (as seen
in Deal Buyer Access Service).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">311</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Deal
bans the creative's brand</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Your
creative's brand is not a valid brand for this deal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should check if their deal
targeting is set up properly and confirm with the Seller that the Deal
is set up properly.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">312</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Deal
bans the creative's size</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Your
creative's size is not a valid size for this deal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should check if their deal
targeting is set up properly or alter the creative's size to match the
deal's settings and confirm with the Seller if the Deal is set up
properly.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">313</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} has unsupported
video attribute</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Placement doesn't accept the creative's
video attributes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should look at the video attribute
on the creative and submit only creatives that contain supported video
attributes.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">314</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} duration %d ms
fails minimum duration %d ms</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Placement set a minimum duration that
the creative does not meet. (%d will be filled in with the duration of
the creative and the min duration requested.)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should ensure that the creative
duration matches what's allowed in the bid request and within all layers
(inline and wrapper) of the VAST XML.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">315</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} duration %d ms
exceeds maximum duration %d ms</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Placement set a maximum duration that
the creative exceeds. (%d will be filled in with the duration of the
creative and the max duration requested.)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should ensure that the creative
duration matches what's allowed in the bid request and within all layers
(inline and wrapper) of the VAST XML.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">316</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} is missing a
linear element required for VAST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative is not configured properly for
this VAST request</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should review the creative size
and ensure it's the correct version of VAST.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">317</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} is missing a
video_attributes object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative is not configured properly for
this VAST request</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should review the creative size
and ensure it's the correct version of VAST.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">318</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Deal
%d bans segment adds on view</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative should not fire a segment add
pixel</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should ensure that the creative
does not have a segment add pixel action.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">319</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Deal
%d bans segment adds on click</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative should not fire a segment add
on click</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should ensure that the creative
does not have a segment add pixel action.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">320</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} video framework
is not supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative is using old VAST templates
resulting in an API error</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer's creative template is now
deprecated, so they should use media type VAST: Standard VAST (64).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">322</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative %u language id %d banned on
deal %u</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Deal
does not allow language</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should change the creative or
contact the Seller for an exception.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">323</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative %u technical attribute id %d
banned on deal %u</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Deal
does not allow creative technical attributes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should change the creative or
contact the Seller for an exception.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">324</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative %u banned on deal %u</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Deal
has a creative blocklist and Creative ID is set to be blocked</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer to change creative or notify
Seller to check if Deal is set-up properly.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">325</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative %u category id %d banned on
deal %u</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Deal
does not allow creative categories</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should check if their deal
targeting is set up properly, alter the creative to exclude the banned
category, or confirm with the Seller that the deal is set up
properly.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">326</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Deal
%u does not have supported media(sub)type for creative %u</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Buyer is bidding with a creative media
(sub)type that the deal doesn't allow</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should change the creative or
contact the Seller for an exception.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">327</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Deal
%u does not support bid payment type %s</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Deal
does not support bid payment types (only CPM and VCPM are
supported)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should check if the
campaign bidding type matches the deal payment type (e.g viewability)
and confirm with the Seller that the deal is set up properly.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">329</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} does not have
bitrate between %d and %d kbps</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative does not support the bitrate
that the placement allows</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should add more renditions of the
media file that includes bitrates, which match what the placement
requires (usually the creative's bitrate is larger than what's accepted
by the placement).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">330</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} has
creative_video_attribute with vast_type unrecognized by impbus</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative has creative_video_attribute
with an unrecognized vast_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should review the creative size
and ensure it's properly configured for inline VAST.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">331</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} is missing
creative_vast_inline required for VAST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative is missing
creative_vast_inline, which is required for VAST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should review the creative size
and ensure it's properly configured for inline VAST.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">332</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} is missing
creative_vast_inline_linear required for VAST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative is missing
creative_vast_inline_linear required for VAST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should review the creative size
and ensure it's properly configured for inline VAST.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">333</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} is missing
creative_vast_inline_linear media_files required for VAST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative is missing
creative_vast_inline_linear media_files required for VAST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should review the creative size
and ensure it's properly configured for inline VAST.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">334</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative does not have a specified
duration required for inline VAST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative does not have a specified
duration required for inline VAST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should review the creative size
and ensure it's properly configured for inline VAST.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">335</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Invalid payment type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">336</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Viewability detection required for view
payment</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Viewability detection is required to
view payment</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should contact <span
class="ph">Xandr Support to review integration settings.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">337</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Exchange traded view marketplace is
disabled for member %u</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Exchange traded view marketplace is
disabled for member</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should contact <span
class="ph">Xandr Support to review integration settings.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">338</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} is missing video
required for VAST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative is missing video required for
VAST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should review the creative size
and ensure it's properly configured for VAST.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">339</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} does not have a
media file that meets width requirements of %d</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative's VAST does not match the
inventory's width requirements</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should review the creative size
and ensure it's properly configured for VAST.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">340</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} does not have a
media file that meets height requirements of %d</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative's VAST does not match the
inventory's height requirements</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should review the creative size
and ensure it's properly configured for VAST.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">344</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Curated deal with a floor cannot curate
fixed price seller roll-up deal without a margin set</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Curated deal with a floor cannot curate
fixed price seller roll-up deal without a margin set</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Broker</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Broker should set a margin, or remove
the floor from the curated deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">345</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative adserver banned on deal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative ad server is banned on the
deal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should change the creative or
contact the Seller for an exception.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">346</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Bid
is below the native asset price floor %.2f for placement %d</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Your
bid does not meet the minimum price required to serve a native creative
on this placement</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer will need to increase bid amount
to be eligible to serve on this placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">347</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Bid
(%d) is below floor price (%d)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Bid
is below Floor Price</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand partner needs to ensure bid is
above the bidfloor price.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">403</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Buying member banned by seller's ad
profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Seller's ad quality is set to ban the
buying member</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should discuss ad quality settings
with the Seller or considering setting up a deal with the Seller to
obtain an ad quality exception.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">404</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative banned by member's ad
profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Seller's ad quality is set to ban the
creative</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should change the creative,
discuss ad quality settings with the Seller, or consider setting up a
deal with the Seller to obtain an ad quality exception.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">405</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Platform unaudited creative banned on
member's ad profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative not approved by <span
class="ph">Xandr and banned by member's ad profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should ensure their creative is
audited by Xandr, notify the Seller regarding
whether the unaudited creative ban is desired, and modify their ad
quality settings accordingly.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">406</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative technical attribute banned by
member's ad profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Seller's ad quality is set to ban
technical attribute</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should discuss ad quality settings
with the Seller or consider setting up a deal with the Seller to obtain
an ad quality exception.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">407</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative category banned by member's ad
profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Seller's ad quality is set to ban
creative category</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should discuss ad quality settings
with the Seller or consider setting up a deal with Seller to obtain an
ad quality exception.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">408</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative brand banned by member's ad
profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Seller's ad quality is set to ban
brand</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should discuss ad quality settings
with the Seller or consider setting up a deal with the Seller to obtain
an ad quality exception.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">409</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative language banned by member's ad
profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Seller's ad quality is set to ban
language</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should discuss ad quality settings
with the Seller or consider setting up a deal with the Seller to obtain
an ad quality exception.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">410</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative adserver blocked by member's ad
profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative adserver blocked by the
member's ad profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should speak with the Seller to
ensure that the blocked creative ad server is in the Seller's approved
list. If the Seller won't alter their ad server allowlist, then the
Buyer should alter the creative by removing the call to banned ad
server.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">411</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} language id %d
banned on dynamic exclusions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative language banned on dynamic
exclusions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Demand Partner/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should work with the Seller to
determine eligible creatives or obtain an exception.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">412</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} technical
attribute id %d banned on dynamic exclusions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative technical attribute banned on
dynamic exclusions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Demand Partner/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should work with Seller to
determine eligible creatives or obtain an exception.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">413</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} adserver %d
banned on dynamic exclusions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative adserver banned on dynamic
exclusions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Demand Partner/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should work with the Seller to
determine eligible creatives or obtain an exception.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">414</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} category id %d
banned on dynamic exclusions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative category banned on dynamic
exclusions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Demand Partner/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should work with the Seller to
determine eligible creatives or obtain an exception.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">415</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative ${CREATIVE_ID} brand %d banned
on dynamic exclusions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative brand banned on dynamic
exclusions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Demand Partner/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should work with the Seller to
determine eligible creatives or obtain an exception.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">416</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Seller unaudited creative banned on
member’s ad profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative not approved by the seller and
banned by member's ad_profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should ensure their creative is
audited by the seller, notify the Seller regarding whether the unaudited
creative ban is desired, and modify their ad quality settings
accordingly.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">420</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative category requires
allowlisting</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Creative categories associated with
gambling creatives require the Buyer to be enabled on <span
class="ph">Xandr and they haven't been yet</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer needs to get approved by <span
class="ph">Xandr to run gambling creatives on the <span
class="ph">Xandr platform by working with their account team. See
<a
href="https://wiki.xandr.com/display/policies/Policies%2bfor%2bBuying"
class="xref" target="_blank">Policies for Buying (customer login
required)</a> for more information on the Xandr
gambling policy and how to get enabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">421</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Bid
is rejected due to page cap</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">452</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Dynamic creative is incompatible with
this tag/request</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">The
tag cannot serve a dynamic response; for example, the multitag (/mtj)
handler cannot serve anything dynamic, or the seller on an openRTB
request wanted a "nurl" attribute as a response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyers should contact their account
managers or partner integration specialist.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">1000</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">No
eligible members included in the bid response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">1001</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Bidder is not available</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">No
eligible members included in the bid response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should review bid
responses and ensure active member ID is included or activate the member
ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">1002</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">No
bid URI set</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">No
bid URI set</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Demand Partner should contact <span
class="ph">Xandr Support to review integration settings.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">145</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Vast
wrapper of creative ID is unsupported</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">If a
creative is returned with a wrapper it will error. Bids returned with
VAST wrappers when the request does not articulate support for the
wrapper</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Seller/Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Seller should ensure that all supported
protocols are listed on the bid request, e.g. VAST Wrappers.
<p>Buyer should look at the video protocols on the creative and submit
only creatives that contain supported video protocols.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">154</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Wrong Aspect Ratio</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Aspect Ratio of VAST/video creative is
wrong and does not match auction request</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Demand Partner</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__5">The
Demand Partner needs to ensure that the video creative they send matches
the bid request's aspect-ratio requirements.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">450</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Invalid Creative Dimensions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Dynamic bid has invalid or unspecified
dimensions, where either the width or height is 0</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should check their integration and
bid response serialization to correctly specify creative dimensions on
ad-markup dynamic bids.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">341</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Invalid Media File Dimension :
Width</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Video creative does not have a media
file that meets the publisher's minimum width requirements</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should ensure to adjust their
creative setup to match the publisher's minimum width requirements.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">342</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Invalid Media File Dimension :
Height</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Video creative does not have a media
file that meets the publisher's minimum height requirements</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should ensure to adjust their
creative setup to match the publisher's minimum height
requirements.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">343</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Invalid Media File Aspect Ratio</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Video creative does not have a media
file that meets the publisher's aspect ratio requirements</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should ensure to adjust their
creative setup to match the publisher's aspect ratio requirements.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">158</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Creative Ignored by Debug Setting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Bid
with this creative has been ignored because this creative is configured
to be a part of troubleshooting or new feature testing activities</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__5">If
the buyer is not aware of such activities they should contact their
account manager or partner integration specialist.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">451</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Unsupported Dynamic Creative</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Dynamic ad-markup bidding is not
supported for audio and for certain PSP demand partners that requires
client side rendering when a seller doesn't support it</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Seller</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Audio: Buyer should never use adm-markup
bids on audio impressions.<br />
PSP: Seller should correct their setup to align with client side
rendering requirements, on both supply and PSP sides.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">348</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Curation Disallowed for GO Bids</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Guaranteed outcome bids are not allowed
on curated deals</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer/Curator</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__5">The
Buyer should change their line item to submit non-guaranteed outcome
bids.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">500</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Seat
registration pending</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Seat
is not yet registered in the system and the registration is pending. It
takes some time since the first occurrence of the given seat in the bid
request to propagate and fully register. Thus its normal to see short
spikes of this error</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Partner Tech engineering (DSP logger
component).</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__5">If
this occurs for long period of time please contact Partner Tech
engineering.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">501</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Seat
resolution: dynamic seat registration prohibited</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Seat
is not registered in the system, and bidder settings prevent automatic
registration of the seat</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should contact account
manager/partner integration specialist to enable dynamic seat
registration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">502</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__2">Buyer member cannot be resolved for
existing seat</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Seat
is already registered in the system, but buyer member id cannot be
determined based on bidder configuration and/or data in the request</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should fix buyer member id
identification in the bid response object and/or bidder configuration,
or contact account manager/partner integration specialist for
assistance.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">503</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Seat
resolution: buyer member cannot be resolved</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__3">Seat
is not registered in the system, and registration cannot be performed
because buyer member id cannot be determined based on bidder
configuration and/or data in the request</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Buyer should fix buyer member id
identification in the request/bidder configuration or contact account
manager/partner integration specialist for assistance.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__1">617</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003efe__entry__2">Bid
was rejected due to a negative deal floor</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__3">Configured combination of curator
floors, margins, and fees results in a negative seller deal floor.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__4">Seller / Curator</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003efe__entry__5">Curator should increase the curator
floor value or decrease the curator margin value so that the seller deal
floor is a non-negative value.</td>
</tr>
</tbody>
</table>




