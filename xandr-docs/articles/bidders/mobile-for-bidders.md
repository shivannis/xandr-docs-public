---
Title : Mobile for Bidders
Description : Buying mobile inventory is very similar to buying other seller-specific
ms.date : 10/28/2023
external supply on Xandr. This page walks you
---


# Mobile for Bidders





Buying mobile inventory is very similar to buying other seller-specific
external supply on Xandr. This page walks you
through the process.



<b>Note:</b> For full bid request
documentation, see <a
href="outgoing-bid-request-to-bidders.md"
class="xref" target="_blank">Bid Request</a>.







## Creative Specifications

At this time, only creatives conforming to the following specifications
can serve on mobile inventory:

- **Type**
  - Standard Banners, including MRAID
  - Additional rich media creative types will be supported in the future
- **Size**
  - 300x50
  - 300x250
  - 320x50
  - 728x90
- **Format**
  - Html
  - JavaScript
  - Image (jpg, gif, png)





## Buying Mobile Inventory

- <a
  href="mobile-for-bidders.md#MobileforBidders-Step1-EnsureThatYouAcceptMobileBidRequests"
  class="xref" target="_blank">Step 1. Ensure That You Accept Mobile Bid
  Requests</a>
- <a
  href="mobile-for-bidders.md#MobileforBidders-Step2-TargetandBidonMobileInventory"
  class="xref" target="_blank">Step 2. Target and Bid on Mobile
  Inventory</a>
- <a
  href="mobile-for-bidders.md#MobileforBidders-Step3-ReceiveAuctionResults"
  class="xref" target="_blank">Step 3. Receive Auction Results</a>

**Step 1. Ensure That You Accept Mobile Bid Requests**

Bidder profiles allow you to filter for the bid requests that you want
to receive. To accept mobile bid requests, you must allow the following
values within an existing bidder profile or create a new bidder profile
specifically for mobile bid requests:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000232d__entry__1" class="entry">Field</th>
<th id="ID-0000232d__entry__2" class="entry">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000232d__entry__1"><pre
id="ID-0000232d__codeblock-69f48bb1-ff29-4037-ab1b-11894f2aa821"
class="pre codeblock"><code>supply_type</code></pre></td>
<td class="entry" headers="ID-0000232d__entry__2"><code
class="ph codeph">"mobile_app"</code>, <code
class="ph codeph">"mobile_web"</code></td>
</tr>
</tbody>
</table>

For more details about updating or creating bidder profiles, see  <a
href="legacy-bidder-profile-service.md"
class="xref" target="_blank">Legacy Bidder Profile Service</a>..

**Step 2. Target and Bid on Mobile Inventory**

When Xandr receives an impression from mobile
supply sources, Xandr routes these through a
publisher, site, and tag ID combination, in increasing order of
granularity. The Xandr bid request includes
these IDs, allowing you to target specific slices of mobile inventory.
For more information on the content of the inventory, please contact
your Xandr representative.

The Xandr bid request for a mobile impression
includes other fields that may be useful for your bidder to target.
These fields include:

- `operating_system`
- `browser`
- `language`
- `ip_address`
- `device_make`
- `device_model`
- `device_type`
- `device_ids`
- `carrier`
- `loc` (only available on small percentage of impressions)
- app_id

**Step 3. Receive Auction Results**

The Xandr Notify request is essential to
tracking when an impression is served, the win price of the impression,
and to provide you with any custom notify data you may have included
with the bid.





## Fields Supported by Mobile Bid Requests

- <a
  href="mobile-for-bidders.md#MobileforBidders-Mobile-SpecificData"
  class="xref" target="_blank">Mobile-Specific Data</a>
- <a
  href="mobile-for-bidders.md#MobileforBidders-DeviceIDs"
  class="xref" target="_blank">Device IDs</a>

**Mobile-Specific Data**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000232d__entry__5" class="entry">Field</th>
<th id="ID-0000232d__entry__6" class="entry">Scope</th>
<th id="ID-0000232d__entry__7" class="entry">Type</th>
<th id="ID-0000232d__entry__8" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000232d__entry__5">app_id</td>
<td class="entry" headers="ID-0000232d__entry__6">some</td>
<td class="entry" headers="ID-0000232d__entry__7">string</td>
<td class="entry" headers="ID-0000232d__entry__8">Global App Id for
Android and iOS devices (For example, for Angry Birds app: "app_id" :
"com.rovio.angrybirds" for an Android device, "app_id" : "343200656" or
"com.clickgamer.AngryBirds" for an iOS device)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000232d__entry__5">loc</td>
<td class="entry" headers="ID-0000232d__entry__6">some</td>
<td class="entry" headers="ID-0000232d__entry__7">string</td>
<td class="entry" headers="ID-0000232d__entry__8">Location of the user,
provided in terms of latitude and longitude. Expressed in the format
"snnn.ddd,snnn.ddd", for example +123.456 or -456.123. South and west
are represented as negative. There can be a maximum of 5 decimal places
of precision.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000232d__entry__5">carrier</td>
<td class="entry" headers="ID-0000232d__entry__6">some</td>
<td class="entry" headers="ID-0000232d__entry__7">int</td>
<td class="entry" headers="ID-0000232d__entry__8">The ID for the
carrier. You can use the <a
href="carrier-service.md"
class="xref" target="_blank">Carrier Service</a> to map carrier IDs to
names and countries. A special carrier "WIFI" exists for users
connecting via WiFi.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000232d__entry__5">device_make</td>
<td class="entry" headers="ID-0000232d__entry__6">some</td>
<td class="entry" headers="ID-0000232d__entry__7">int</td>
<td class="entry" headers="ID-0000232d__entry__8">The ID of the device
make on which the ad will be shown. You can use the <a
href="device-make-service.md"
class="xref" target="_blank">Device Make Service</a> to map device make
IDs to names.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000232d__entry__5">device_model</td>
<td class="entry" headers="ID-0000232d__entry__6">some</td>
<td class="entry" headers="ID-0000232d__entry__7">int</td>
<td class="entry" headers="ID-0000232d__entry__8">The ID of the device
model on which the ad will be shown. You can use the <a
href="device-model-service.md"
class="xref" target="_blank">Device Model Service</a> to map device
model IDs to names.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000232d__entry__5">device_type</td>
<td class="entry" headers="ID-0000232d__entry__6">some</td>
<td class="entry" headers="ID-0000232d__entry__7">int</td>
<td class="entry" headers="ID-0000232d__entry__8">The ID of the type of
device on which the ad will be shown. This is represented by an integer,
and can be looked up using the <a
href="device-model-service.md"
class="xref" target="_blank">Device Model Service</a>. Allowed values,
and their meanings:
<ul>
<li><code class="ph codeph">1</code> = "pc"</li>
<li><code class="ph codeph">2</code> = "phone"</li>
<li><code class="ph codeph">3</code> = "tablet"</li>
</ul></td>
</tr>
</tbody>
</table>

**Device IDs**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000232d__entry__33" class="entry">Field</th>
<th id="ID-0000232d__entry__34" class="entry">Scope</th>
<th id="ID-0000232d__entry__35" class="entry">Type</th>
<th id="ID-0000232d__entry__36" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000232d__entry__33">windowsadid</td>
<td class="entry" headers="ID-0000232d__entry__34">some</td>
<td class="entry" headers="ID-0000232d__entry__35">String</td>
<td class="entry" headers="ID-0000232d__entry__36">The Microsoft
Advertising ID for Windows 8 and Windows Phone devices</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000232d__entry__33">idfa</td>
<td class="entry" headers="ID-0000232d__entry__34">some</td>
<td class="entry" headers="ID-0000232d__entry__35">string</td>
<td class="entry" headers="ID-0000232d__entry__36">The Apple advertising
identifier for iOS devices running iOS 6+.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000232d__entry__33">aaid</td>
<td class="entry" headers="ID-0000232d__entry__34">some</td>
<td class="entry" headers="ID-0000232d__entry__35">string</td>
<td class="entry" headers="ID-0000232d__entry__36">The Google
advertising identifier for Android devices as retrieved from Google Play
services.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000232d__entry__33">sha1udid</td>
<td class="entry" headers="ID-0000232d__entry__34">some</td>
<td class="entry" headers="ID-0000232d__entry__35">string</td>
<td class="entry" headers="ID-0000232d__entry__36">The SHA1 hash of the
<code class="ph codeph">ANDROID_ID</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000232d__entry__33">md5udid</td>
<td class="entry" headers="ID-0000232d__entry__34">some</td>
<td class="entry" headers="ID-0000232d__entry__35">string</td>
<td class="entry" headers="ID-0000232d__entry__36">The MD5 hash of the
<code class="ph codeph">ANDROID_ID</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000232d__entry__33">sha1mac</td>
<td class="entry" headers="ID-0000232d__entry__34">some</td>
<td class="entry" headers="ID-0000232d__entry__35">string</td>
<td class="entry"
headers="ID-0000232d__entry__36"><strong>sha1mac</strong> was deprecated
as of May 7th, 2019. Do not use.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000232d__entry__33">openudid</td>
<td class="entry" headers="ID-0000232d__entry__34">some</td>
<td class="entry" headers="ID-0000232d__entry__35">string</td>
<td class="entry" headers="ID-0000232d__entry__36">The <a
href="https://github.com/ylechelle/OpenUDID" class="xref"
target="_blank">OpenUDID</a> of the device. This should only be sent for
iOS versions 5 and below.</td>
</tr>
</tbody>
</table>





## Example Request/Response Chain

**Bid Request**

``` pre
{
    "bid_request": {
        "timestamp": "2013-09-19 17:46:12",
        "bidder_timeout_ms": 200,
        "members": [],
        "member_ad_profile_id": 244,
        "tags": [
            {
                "auction_id_64": 7537677183577325000,
                "size": "400x50",
                "sizes": [
                    "400x50"
                ],
                "smaller_sizes_allowed": true,
                "position": "unknown",
                "tag_format": "javascript",
                "supply_type": "mobile_app",
                "site_id": 253281,
                "creative_formats_map": "1111111111",
                "creative_formats": [
                    "unknown",
                    "html-url",
                    "js-url",
                    "flash",
                    "image",
                    "js-raw",
                    "html-raw",
                    "html-iframe",
                    "vast-url",
                    "text"
                ],
                "visibility_profile_id": 139,
                "venue_id": 114622,
                "allowed_media_types": [
                    1
                ],
                "media_subtypes": [],
                "ecp": 1,
                "eap": 0.5,
                "giveup_price": 0.001,
                "exclusive_default": true,
                "id": 1363482
            }
        ],
        "bid_info": {
            "user_id_64": 4699689268642942000,
            "no_cookies": false,
            "payment_rule_id": 110382,
            "selling_member_id": 2066,
            "no_flash": false,
            "user_agent": "Mozilla/5.0 (iPhone; CPU iPhone OS 5_0 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9A334 Safari/7534.48.3",
            "browser": 12,
            "operating_system": 8,
            "operating_system_extended": 68,
            "operating_system_family": 3,
            "carrier": 26,
            "device_make": 26,
            "device_model": 301,
            "device_type": 2,
            "device_ids": {"idfa": "0acf25e9-d278-49f5-9774-b37bfce3f34c" },
            "language": 11,
            "accepted_languages": "en-US,en;q=0.8",
            "ip_address": "192.189.54.0",
            "country": "AU",
            "loc": "45.00000,45.00000",
            "within_iframe": false,
            "publisher_id": 128528,
            "url": "https://apps.mobile.adnxs.com",
            "domain": "adnxs.com",
            "userdata_json": "{}",
            "segments": [],
            "prefer_learn": false
        }
    }
}
```



**Bid Response**

``` pre
{
    "bid_response": {
        "responses": [
            {
                "auction_id_64": 7537677183577325000,
                "price": 1,
                "member_id": 331,
                "creative_id": 694408,
                "is_cpm": true,
                "exclusive": "true",
                "roadblock": false,
                "learn": false,
                "userdata_js": "uf('a', 87089, 1379612772);uf('r', 694408, 1379612772);",
                "custom_notify_data": "!Zh3JGQiAzRcQiLEqGAAgrt4GMAA4vv8GQARIywJQmpxTWABggQZoAHAAeACAAQCIAQCQAQGYAQGgAQGoAQOwAQC5AQAAAAAAAPA_wQEAAAAAAADwP8kBzczMzMzMBEDZAQAAAAAAAPA_4AEA"
            }
        ]
    }
}
```



The bid response allows custom notify data, which will be returned in
the subsequent notifications. 






