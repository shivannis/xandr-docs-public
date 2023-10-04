---
Title : Native Ad Markup Bidding
Description : Native Ad Markup Bidding enables your bidder to submit native ad markup
via `adm` in the OpenRTB bid response. Instead of registering every
---


# Native Ad Markup Bidding



Native Ad Markup Bidding enables your bidder to submit native ad markup
via `adm` in the OpenRTB bid response. Instead of registering every
native creative asset you have with Xandr, you
are required to register only a single creative for each ad campaign or
brand you represent; all native creative assets for that brand can be
passed dynamically via ad markup in the bid response. This page explains
how to use this feature.



Note: This feature does not currently
support bidding with native video ad markup. Only non-video native ad
markup is accepted.



**Getting Started**

Your bidder must be enabled to use this feature. If you are not sure
whether your bidder is enabled, please check with your
Xandr account representative.

Once enabled, there are two steps required to buy Native inventory via
Ad Markup Bidding:

1.  Register your creative. For each brand that you represent, you must
    register a single creative that represents that brand. Your creative
    must pass platform audit. All native creative assets associated with
    this brand within your bidder will serve through this creative.
    See <a
    href="https://docs.xandr.com/bundle/xandr-bidders/page/native-ad-markup-bidding.html#NativeAdMarkupBidding-RegisterNativeCreatives"
    class="xref" target="_blank">Register Native Creatives</a>  below
    for details.
2.  Bid with your creative assets on native inventory. See <a
    href="https://docs.xandr.com/bundle/xandr-bidders/page/native-ad-markup-bidding.html#NativeAdMarkupBidding-BidwithNativeAdMarkup"
    class="xref" target="_blank">Bid with Native Ad Markup</a>  below
    for details.

<div id="ID-00001598__ID-000015a8" >

## Register Native Creatives

For each brand that you represent, you must register a single creative
that represents that brand. This is done using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>. When registering a
Native Creative, there are a few considerations to keep in mind:

- The creative must represent one of the actual native ads that you will
  dynamically pass on the bid response for this brand. The specific ad
  you choose to register does not matter, but the creative must contain
  at least one image asset and one data asset consistent with an ad you
  would actually serve on native inventory.
- When registering a creative, only <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/xandr-macros.html"
  class="xref" target="_blank">Xandr Macros</a> are
  supported. OpenRTB macros (such as `${AUCTION_PRICE}`) will not be
  expanded.
- The creative must be submitted for platform audit. 
- You do not need to specify the `brand_id` field; this will be set by
  Xandr during audit.
- Be sure to include impression and click trackers when registering your
  creative. The ad markup submitted in the bid response should use the
  same set of vendors (or fewer) that were registered with this
  creative.
- Be sure to use native creative template 39461.

The following section provides an example of defining and registering
a Native Creative.





## Creative Example

This example uses four data assets and two image assets, but you can
choose to use a different combination depending on the assets you want
to register. (Remember, you must have at least one asset of each type.)
See the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a> for more details on
native creative assets.



  **Adding a native creative**

``` pre
$ cat native_creative.json
 
{
  "creative": {
    "description": "test description",
    "code": "test_code",
    "code2": "test_code2",
    "allow_audit": 1,
    "template": {
      "id": 39461
    },
    "native_attribute": {
      "link": {
        "url": "https://www.landingpage.com",
        "fallback_url": "https://fallback.com",
        "trackers": [{
          "url": "http://url.com",
          "url_secure": "https://secureurl.com"
        }]
      },
      "data_assets": [
        {
          "data_type": "title",
          "value": "Test Title"
        },
        {
          "data_type": "sponsored_by",
          "value": "Test Sponsor"
        },
        {
          "data_type": "description",
          "value": "Test description."
        },
        {
          "data_type": "call_to_action",
          "value": "Test CTA!"
        }
      ],
      "image_assets": [
        {
          "image_type": "main_image",
          "creative_asset_image": {
            "url": "http://url.com/main_img.jpg",
            "url_secure": "https://secureurl.com/main_img.jpg",
            "height": 1200,
            "width": 628
          }
        },
        {
          "image_type": "icon_image",
          "creative_asset_image": {
            "url": "http://url.com/icon_img.jpg",
            "url_secure": "https://secureurl.com/icon_img.jpg",
            "height": 150,
            "width": 150
          }
        }
      ],
      "image_trackers": [{
        "url": "http://url.com",
        "url_secure": "https://secureurl.com"
      }],
      "javascript_trackers": [{
        "url": "http://url.com",
        "url_secure": "https://secureurl.com"
      }]
    }
  }
}
 
$ curl -b cookies -c cookies -X POST -s @native_creative.json 'https://api..com/creative/123'
 
{
  "response": {
    "status": "OK",
    "id": 12345,
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "creative": {
      "id": 12345,
      "active": true,
      "member_id": 123,
      "description": "test description",
      "code": "test_code",
      "code2": "test_code2",
      "audit_status": "pending",
      "allow_audit": true,
      "ssl_status": "pending",
      "allow_ssl_audit": true,
      "template": {
        "id": 39461
      },
      "native_attribute": {
        ...
      },
      ...
    },
    "dbg": {
      ...
  }
}
```







## Bid with Native Ad Markup





Note: This feature does not currently
support bidding with native video ad markup. Only non-video native ad
markup is accepted.







Once you have registered a Native Creative and it has passed platform
audit, you can begin bidding with that creative using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidding-protocol.html"
class="xref" target="_blank">OpenRTB protocol</a>.

<div id="ID-00001598__note-2491b6cd-eceb-4b8c-8b62-fbbc9a5987c8"


Note:
Xandr supports v1.1 of the <a
href="https://iabtechlab.com/specifications-guidelines/openrtb-native/"
class="xref" target="_blank">OpenRTB Dynamic Native Ads API</a>



Some considerations:

- Either the `crid` or `adid` field must be included in the bid response
  to identify the creative that was registered. The `crid` value must
  match the creative's `code;` `adid` must match the creative's `id.`
- Native creative assets must be passed via
  the `seatbid.bid.adm.native` object. Be sure to include image assets,
  data assets, impression trackers, and click trackers. These assets
  will serve instead of the creative asset you initially registered.
  

  Note: The creative assets you bid
  with must belong to the same brand as the creative asset you initially
  registered. Xandr periodically scans and
  reviews ad markup creative content to ensure this content is
  consistent with the registered creative. If there is a discrepancy,
  your creative can be rejected by platform audit. Frequent creative
  audit rejections due to rotating brands can result in revoked access
  to the Ad Markup Bidding with Native feature.

  
- If you do not pass native creative assets in your bid response, or the
  assets are malformed, the registered creative content will serve by
  default.







## Bid Response Supported Fields

<div id="ID-00001598__note-e7486107-e850-4afc-87aa-52230392ae88"


Note:

- The following fields are ignored in the bid response:  `adomain`  and 
  `ver`.
- Brand is set during platform audit of the registered creative, so 
  `adomain`  is not needed.





**Bid Object**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001598__entry__1" class="entry">Field</th>
<th id="ID-00001598__entry__2" class="entry">Type</th>
<th id="ID-00001598__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001598__entry__1"><code
class="ph codeph">adm</code></td>
<td class="entry" headers="ID-00001598__entry__2">string</td>
<td class="entry" headers="ID-00001598__entry__3">Conveys ad markup in
case the bid wins. The <code class="ph codeph">native</code> object
(described below) should be passed in as a JSON-encoded string.</td>
</tr>
</tbody>
</table>



**Native Object**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001598__entry__7" class="entry">Field</th>
<th id="ID-00001598__entry__8" class="entry">Type</th>
<th id="ID-00001598__entry__9" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001598__entry__7"><code
class="ph codeph">assets</code></td>
<td class="entry" headers="ID-00001598__entry__8">array of objects</td>
<td class="entry" headers="ID-00001598__entry__9">(Required) List of the
native ad's assets. See <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/native-ad-markup-bidding.html#NativeAdMarkupBidding-AssetObject"
class="xref" target="_blank">Asset Object</a> below.<br />
 </td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001598__entry__7"><code
class="ph codeph">link</code></td>
<td class="entry" headers="ID-00001598__entry__8">object</td>
<td class="entry" headers="ID-00001598__entry__9">(Required) The default
destination link for the native ad. Each individual asset can have its
own link object, which applies if that asset is clicked. If an
individual asset link does not have a link object, the parent link
object is used. See <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/native-ad-markup-bidding.html#NativeAdMarkupBidding-LinkObject"
class="xref" target="_blank">Link Object</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001598__entry__7"><code
class="ph codeph">imptrackers</code></td>
<td class="entry" headers="ID-00001598__entry__8">array of strings</td>
<td class="entry" headers="ID-00001598__entry__9">Array of
impression-tracking URLs expected to return a 1x1 image or HTTP 204 (No
Content) response. This is typically passed only when using third-party
trackers.
<p>The following OpenRTB macros are supported in this field:</p>
<ul>
<li><code class="ph codeph">${AUCTION_ID}</code> - <span
class="ph">Xandr <code
class="ph codeph">auction_id_64</code></li>
<li><code class="ph codeph">${AUCTION_BID_ID}</code> - ID of the bid
specified in the <code class="ph codeph">bidid</code> field in the bid
response</li>
<li><code class="ph codeph">${AUCTION_IMP_ID}</code> - ID of the
impression, from the <code class="ph codeph">impid</code> field in
the <code class="ph codeph">bid</code> object of the <code
class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_SEAT_ID}</code> - ID of the
winning seat, from the <code class="ph codeph">seat</code> field in
the <code class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_AD_ID}</code> - ID of the buyer's
creative, from the <code class="ph codeph">adid</code> field in
the <code class="ph codeph">bid</code> object of the <code
class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_PRICE}</code> - Clearing price of
the impression in the currency specified in the <code
class="ph codeph">cur</code> field in the bid response</li>
<li><code class="ph codeph">${AUCTION_CURRENCY}</code> - Currency of the
clearing price, as specified in the <code
class="ph codeph">cur</code> field in the bid response</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001598__entry__7"><pre
id="ID-00001598__codeblock-652bccaf-2f7a-4b7d-ae94-682205f3175a"
class="pre codeblock"><code>jstracker</code></pre></td>
<td class="entry" headers="ID-00001598__entry__8">string</td>
<td class="entry" headers="ID-00001598__entry__9">Optional JavaScript
impression tracker. This should be wrapped in &lt;script&gt; tags.
<p>The following OpenRTB macros are supported in this field:</p>
<ul>
<li><code class="ph codeph">${AUCTION_ID}</code> - <span
class="ph">Xandr <code
class="ph codeph">auction_id_64</code></li>
<li><code class="ph codeph">${AUCTION_BID_ID}</code> - ID of the bid
specified in the <code class="ph codeph">bidid</code> field in the bid
response</li>
<li><code class="ph codeph">${AUCTION_IMP_ID}</code> - ID of the
impression, from the <code class="ph codeph">impid</code> field in
the <code class="ph codeph">bid</code> object of the <code
class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_SEAT_ID}</code> - ID of the
winning seat, from the <code class="ph codeph">seat</code> field in
the <code class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_AD_ID}</code> - ID of the buyer's
creative, from the <code class="ph codeph">adid</code> field in
the <code class="ph codeph">bid</code> object of the <code
class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_CURRENCY}</code> - Currency of the
clearing price, as specified in the <code
class="ph codeph">cur</code> field in the bid response</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001598__entry__7"><pre
id="ID-00001598__codeblock-253d1528-330d-43a5-8a03-c2553a878623"
class="pre codeblock"><code>privacy</code></pre></td>
<td class="entry" headers="ID-00001598__entry__8">string</td>
<td class="entry" headers="ID-00001598__entry__9">If support was
indicated in the request, URL of a page informing the user about the
buyer’s targeting activity.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001598__entry__7"><pre
id="ID-00001598__codeblock-1f25e453-f6b7-4c55-88d1-84a6911b6c21"
class="pre codeblock"><code>ext</code></pre></td>
<td class="entry" headers="ID-00001598__entry__8">object</td>
<td class="entry" headers="ID-00001598__entry__9">Used for identifying
Xandr-specific extensions to the OpenRTB bid
response.</td>
</tr>
</tbody>
</table>

**Native Ext Object**

Xandr supports a single object in the native
ext object to support Xandr-specific extensions:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001598__entry__28" class="entry">Field</th>
<th id="ID-00001598__entry__29" class="entry">Type</th>
<th id="ID-00001598__entry__30" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001598__entry__28"><span
class="ph"><code class="ph codeph">appnexus</code></td>
<td class="entry" headers="ID-00001598__entry__29">object</td>
<td class="entry" headers="ID-00001598__entry__30">Specifies the <span
class="ph">Xandr-specific (formerly <span
class="ph">AppNexus) extensions to the OpenRTB bid
response. </td>
</tr>
</tbody>
</table>

**Native Ext AppNexus Object**

Xandr supports the following fields in
the `appnexus` extension object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001598__entry__34" class="entry">Field</th>
<th id="ID-00001598__entry__35" class="entry">Type</th>
<th id="ID-00001598__entry__36" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001598__entry__34"><pre
id="ID-00001598__codeblock-a7a68013-b25f-4145-b166-08b95c0862f7"
class="pre codeblock"><code>third_party_imptrackers</code></pre></td>
<td class="entry" headers="ID-00001598__entry__35">array of strings</td>
<td class="entry" headers="ID-00001598__entry__36">Array of
impression-tracking URLs expected to return a 1x1 image or HTTP 204 (No
Content) response. The following OpenRTB macros will be expanded as
empty strings:
<ul>
<li><code class="ph codeph">${AUCTION_PRICE}</code> - Clearing price of
the impression in the currency specified in the <code
class="ph codeph">cur</code> field in the bid response</li>
<li><p><code class="ph codeph">${AUCTION_CURRENCY}</code> - Currency of
the clearing price, as specified in the <code
class="ph codeph">cur</code> field in the bid response</p>
<p>All other OpenRTB macros will expand normally.</p></li>
</ul></td>
</tr>
</tbody>
</table>

**Asset Object**

Xandr supports the following fields to define
one or more native `asset` objects to be included as a JSON-encoded
string as part of the `native` object in the `adm` field of
the `bid` object. 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001598__entry__40" class="entry">Field</th>
<th id="ID-00001598__entry__41" class="entry">Type</th>
<th id="ID-00001598__entry__42" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001598__entry__40"><code
class="ph codeph">id</code></td>
<td class="entry" headers="ID-00001598__entry__41">integer</td>
<td class="entry" headers="ID-00001598__entry__42">(Required) The unique
asset ID. Must match an asset ID in the request.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001598__entry__40"><code
class="ph codeph">required</code></td>
<td class="entry" headers="ID-00001598__entry__41">integer</td>
<td class="entry" headers="ID-00001598__entry__42">Set to <code
class="ph codeph">1</code> if bidder requires asset to be
displayed.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001598__entry__40"><code
class="ph codeph">title</code></td>
<td class="entry" headers="ID-00001598__entry__41">object</td>
<td class="entry" headers="ID-00001598__entry__42">The title object, for
title assets. See <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/native-ad-markup-bidding.html#NativeAdMarkupBidding-TitleObject"
class="xref" target="_blank">Title Object</a> below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001598__entry__40"><code
class="ph codeph">img</code></td>
<td class="entry" headers="ID-00001598__entry__41">object</td>
<td class="entry" headers="ID-00001598__entry__42">The image object, for
image assets. See <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/native-ad-markup-bidding.html#NativeAdMarkupBidding-ImageObject"
class="xref" target="_blank">Image Object</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001598__entry__40"><code
class="ph codeph">data</code></td>
<td class="entry" headers="ID-00001598__entry__41">object</td>
<td class="entry" headers="ID-00001598__entry__42">The data object, for
data assets such as ratings, prices, and so on. See <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/native-ad-markup-bidding.html#NativeAdMarkupBidding-DataObject"
class="xref" target="_blank">Data Object</a> below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001598__entry__40"><code
class="ph codeph">link</code></td>
<td class="entry" headers="ID-00001598__entry__41">object</td>
<td class="entry" headers="ID-00001598__entry__42">This object is not
supported in our native implementation.</td>
</tr>
</tbody>
</table>

**Title Object**

Used to define a title asset in a native object.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001598__entry__61" class="entry">Field</th>
<th id="ID-00001598__entry__62" class="entry">Type</th>
<th id="ID-00001598__entry__63" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001598__entry__61"><code
class="ph codeph">text</code></td>
<td class="entry" headers="ID-00001598__entry__62">string</td>
<td class="entry" headers="ID-00001598__entry__63">(Required) The text
for a title element.</td>
</tr>
</tbody>
</table>

**Image Object**

Used to define an image asset in a native object. Used for all image
elements of the native ad, such as icons, main image, and so on.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001598__entry__67" class="entry">Field</th>
<th id="ID-00001598__entry__68" class="entry">Type</th>
<th id="ID-00001598__entry__69" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001598__entry__67"><code
class="ph codeph">url</code></td>
<td class="entry" headers="ID-00001598__entry__68">string</td>
<td class="entry" headers="ID-00001598__entry__69">(Required) The URL of
the image asset.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001598__entry__67"><code
class="ph codeph">w</code></td>
<td class="entry" headers="ID-00001598__entry__68">integer</td>
<td class="entry" headers="ID-00001598__entry__69">(Recommended) The
width of the image, in pixels.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001598__entry__67"><code
class="ph codeph">h</code></td>
<td class="entry" headers="ID-00001598__entry__68">integer</td>
<td class="entry" headers="ID-00001598__entry__69">(Recommended) The
height of the image, in pixels.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001598__entry__67"><code
class="ph codeph">ext</code></td>
<td class="entry" headers="ID-00001598__entry__68">object</td>
<td class="entry" headers="ID-00001598__entry__69">Used for identifying
Xandr-specific (formerly <span
class="ph">AppNexus) extensions to the OpenRTB bid response.</td>
</tr>
</tbody>
</table>

**Image Ext Object**

Xandr supports a single object in the native
ext object to support Xandr-specific (formerly
AppNexus) extensions:

<table id="ID-00001598__table-a336b594-e162-4507-a3b9-482424cb175e"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00001598__table-a336b594-e162-4507-a3b9-482424cb175e__entry__1"
class="entry">Field</th>
<th
id="ID-00001598__table-a336b594-e162-4507-a3b9-482424cb175e__entry__2"
class="entry">Type</th>
<th
id="ID-00001598__table-a336b594-e162-4507-a3b9-482424cb175e__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00001598__table-a336b594-e162-4507-a3b9-482424cb175e__entry__1"><span
class="ph"><code class="ph codeph">appnexus</code></td>
<td class="entry"
headers="ID-00001598__table-a336b594-e162-4507-a3b9-482424cb175e__entry__2">object</td>
<td class="entry"
headers="ID-00001598__table-a336b594-e162-4507-a3b9-482424cb175e__entry__3">Specifies
the Xandr-specific (formerly <span
class="ph">AppNexus) extensions to the OpenRTB bid
response. </td>
</tr>
</tbody>
</table>

**Image Ext AppNexus Object**

Xandr supports the following fields in
the `appnexus` extension object:

<table id="ID-00001598__table-40991d95-8124-417e-b46d-9f9e42b2b1cc"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00001598__table-40991d95-8124-417e-b46d-9f9e42b2b1cc__entry__1"
class="entry">Field</th>
<th
id="ID-00001598__table-40991d95-8124-417e-b46d-9f9e42b2b1cc__entry__2"
class="entry">Type</th>
<th
id="ID-00001598__table-40991d95-8124-417e-b46d-9f9e42b2b1cc__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00001598__table-40991d95-8124-417e-b46d-9f9e42b2b1cc__entry__1"><pre
id="ID-00001598__codeblock-d9f44690-cb69-4275-a3d2-52ed09c8b750"
class="pre codeblock"><code>prevent_crop</code></pre></td>
<td class="entry"
headers="ID-00001598__table-40991d95-8124-417e-b46d-9f9e42b2b1cc__entry__2">boolean</td>
<td class="entry"
headers="ID-00001598__table-40991d95-8124-417e-b46d-9f9e42b2b1cc__entry__3">Allows
the buyer to indicate whether the image can be cropped or not. This can
be applied to icon and main image.
<ul>
<li>If flag is set to 1, the image can not be cropped (fill)</li>
<li>If flag is set to 0, the image can be cropped (fit)</li>
<li>If flag is not passed in/default behavior: 0; images are assumed to
allow modifications unless explicitly indicated otherwise</li>
</ul></td>
</tr>
</tbody>
</table>

**Data Object**

Used to define a data asset in a native object. Used for all
miscellaneous elements in a native ad, such as ratings, price, review
count, downloads, and so on.

<table id="ID-00001598__table-a88140bf-0999-4880-9e30-cb59e2d8bc9e"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00001598__table-a88140bf-0999-4880-9e30-cb59e2d8bc9e__entry__1"
class="entry">Field</th>
<th
id="ID-00001598__table-a88140bf-0999-4880-9e30-cb59e2d8bc9e__entry__2"
class="entry">Type</th>
<th
id="ID-00001598__table-a88140bf-0999-4880-9e30-cb59e2d8bc9e__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00001598__table-a88140bf-0999-4880-9e30-cb59e2d8bc9e__entry__1"><code
class="ph codeph">label</code></td>
<td class="entry"
headers="ID-00001598__table-a88140bf-0999-4880-9e30-cb59e2d8bc9e__entry__2">string</td>
<td class="entry"
headers="ID-00001598__table-a88140bf-0999-4880-9e30-cb59e2d8bc9e__entry__3">An
optional formatting string name of the data type.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001598__table-a88140bf-0999-4880-9e30-cb59e2d8bc9e__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry"
headers="ID-00001598__table-a88140bf-0999-4880-9e30-cb59e2d8bc9e__entry__2">string</td>
<td class="entry"
headers="ID-00001598__table-a88140bf-0999-4880-9e30-cb59e2d8bc9e__entry__3">The
formatted string of data to be displayed (such as <code
class="ph codeph">"5 stars"</code> or <code
class="ph codeph">"$10"</code>).</td>
</tr>
</tbody>
</table>

**Link Object**

Used to define the link for a native asset. When clicked, the user is
taken to the location of the link. Can only be defined on the parent
native object.

<table id="ID-00001598__table-6908fda3-124f-4604-8d26-09f572c70d6d"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00001598__table-6908fda3-124f-4604-8d26-09f572c70d6d__entry__1"
class="entry">Field</th>
<th
id="ID-00001598__table-6908fda3-124f-4604-8d26-09f572c70d6d__entry__2"
class="entry">Type</th>
<th
id="ID-00001598__table-6908fda3-124f-4604-8d26-09f572c70d6d__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00001598__table-6908fda3-124f-4604-8d26-09f572c70d6d__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry"
headers="ID-00001598__table-6908fda3-124f-4604-8d26-09f572c70d6d__entry__2">string</td>
<td class="entry"
headers="ID-00001598__table-6908fda3-124f-4604-8d26-09f572c70d6d__entry__3">(Required)
The landing URL for the clickable link.
<p><strong>Macros cannot be used in this field.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001598__table-6908fda3-124f-4604-8d26-09f572c70d6d__entry__1"><code
class="ph codeph">clicktrackers</code></td>
<td class="entry"
headers="ID-00001598__table-6908fda3-124f-4604-8d26-09f572c70d6d__entry__2">Array
of strings</td>
<td class="entry"
headers="ID-00001598__table-6908fda3-124f-4604-8d26-09f572c70d6d__entry__3">Array
of third-party tracking URLs to be fired when the link is clicked.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001598__table-6908fda3-124f-4604-8d26-09f572c70d6d__entry__1"><code
class="ph codeph">fallback</code></td>
<td class="entry"
headers="ID-00001598__table-6908fda3-124f-4604-8d26-09f572c70d6d__entry__2">string</td>
<td class="entry"
headers="ID-00001598__table-6908fda3-124f-4604-8d26-09f572c70d6d__entry__3">A
fallback URL to be used if the URL is not supported by the device.</td>
</tr>
</tbody>
</table>



<div id="ID-00001598__section-93f225ae-29c4-4a4a-82c3-c3331dee83a7"
>

##  Bid Response Example

<div id="ID-00001598__p-8594880e-c2f0-412f-9cb2-7dc62f7145ae" >

``` pre
{
    "seatbid": [
        {
            "bid": [
                {
                    "nurl": "https://rtb-fakeurl.com/lax/wintrk=CwE&wp=${AUCTION_PRICE}&curr=${AUCTION_CURRENCY}&aid=${AUCTION_AD_ID}",
                    "adid": "12345",
                    "crid": "test_code",
                    "price": 2.50,
                    "adm": "{\"assets\":[{\"id\":1,\"img\":{\"url\":\"https://url.com/dynamic_main_img.jpg\",\"w\":1200,\"h\":628}},{\"id\":2,\"title\":{\"text\":\"Dynamic Title\"}},{\"id\":3,\"data\":{\"value\":\"Dynamic Description\"}},{\"id\":4,\"data\":{\"value\":\"Dynamic Sponsor\"}}],\"link\":{\"url\":\"https://www.landingpage.com\",\"clicktrackers\":[\"https://thirdparty-clicktracker-1.com\",\"https://thirdparty-clicktracker-2.com\"],\"fallback\":\"https://fallback-url.com\"},\"imptrackers\":[\"https://imptracker.com\"]}",
                    "impid": "3226285750417000001",
                    "id": "6ab34155-c960-1111-abcd-52b7321adbbb"
                }
            ],
            "seat": "123"
        }
    ],
    "id": "3",
    "cur": "USD"
        }
    ]
}
```





<div id="ID-00001598__section-22bd9c74-2e82-4063-99f2-016045170ad4"
>

## FAQs

**Why do I have to register a creative for each brand I represent?**

Xandr policy prohibits brand rotation on
creatives. By registering a creative for each brand you work with, your
creative will be able to pass Xandr's audit.
This will maximize the native inventory on which it can serve.
Xandr ensures that each creative complies with
our audit policies by performing an initial audit and then periodically
scanning the creative content that your bidder dynamically passes in its
bid responses. If the dynamic content served by your bidder differs
substantially from the registered creative (i.e. images and text for a
different brand) it will be reaudited and may be rejected.

**Will I be charged creative audit fees for
periodically reaudited creative ad markup?**

No. Creative audit fees will apply only during your creative's initial
audit.

**What happens if my Native Creative passes initial audit but fails a
subsequent reaudit?**

Your creative will not be permitted to serve. The audit failure may be
due to rotating brands. If you believe your creative has been failed
incorrectly or have other questions please contact customer support and
select the Category "Creative Audit". Please note that frequent creative
audit rejections due to rotating brands may result in revoked access to
the Ad Markup Bidding with Native feature.

**Where do I go for more help?**

If you have additional questions, please contact your account
representative or <a href="https://help.appnexus.com/" class="xref"
target="_blank">customer support.</a>





## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/smart-image-adjustments-for-native-creatives---bidders.html"
  class="xref" target="_blank">Smart Image Adjustments page</a>








