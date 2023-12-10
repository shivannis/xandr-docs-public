---
Title : Long Form Video Service
Description : SSP customers can integrate their app or web long-form ad pod video
ms.date: 10/28/2023
ms.custom: digital-platform-api
inventory with Prebid Server Premium (PSP) using the `/prebid/lfv`
endpoint. Long-form video durations are at least 30 minutes with
---


# Long Form Video Service



SSP customers can integrate their app or web long-form ad pod video
inventory with Prebid Server Premium (PSP) using the `/prebid/lfv`
endpoint. Long-form video durations are at least 30 minutes with
potential pre, mid, and post-roll positions.

Monetize Ad Server customers do not need to change their current
integration into Xandr, can ignore the long-form video service, and can
instead follow the <a
href="monetize_monetize-standard/integrate-with-psp.md"
class="xref" target="_blank">PSP Setup Steps</a>.



## **Request and Response Process**

The following steps outline the long-form video request and response
process:

1.  Publishers submit a long-form video request to Xandr's Impression
    Bus (ImpBus) via the `/prebid/lfv` endpoint. This request contains
    `POST` values for the ad pod such as ad duration, video width and
    height, and optional properties such as brand category for
    competitive separation.
2.  ImpBus unpacks the request and determines the number of ad slots to
    fill within the ad pod.
3.  The configurations from Monetize are retrieved and an OpenRTB
    request with the requested number of ad slots is created by ImpBus.
4.  ImpBus submits the OpenRTB request to all Xandr bidders, including
    PSP demand partners and Microsoft Invest
    1.  The Prebid demand partners return bids, each with a unique IAB
        subcategory.
    2.  Microsoft Invest and external bidders have a unique Xandr brand
        category associated with every bid which are converted to an IAB
        subcategory. See more information in the <a
        href="adserver-category-mapping-service.md"
        class="xref" target="_blank">Adserver Category Mapping Service</a>.
5.  ImpBus runs the auction for the Xandr
    marketplace to determine the winning Xandr
    bid.
6.  Based on the publisher and ad server configuration retrieved in step
    three, ImpBus translates the IAB subcategories to the primary ad
    server categories (Freewheel or Google Ad Manager). See more
    information in the <a
    href="adserver-category-mapping-service.md"
    class="xref" target="_blank">Adserver Category Mapping Service</a>.
    1.  For Xandr bids, ImpBus will translate
        from the Xandr category to the IAB
        subcategory and finally to the primary ad server category.
7.  The bids are deduped based on the tuple values for price bucket,
    primary ad server category, and duration.
8.  For each unique bid, ImpBus caches the unique VAST XML.
9.  Key-value targeting pairs are generated for each bid for `hb_pb`,
    `hb_pb_cat_dur,` and `hb_cache_id`.
10. ImpBus returns a JSON response with Prebid targeting key-value pairs
    and the cache id.

![Long Form Video](media/long-form-video-service-fig-a.png)


>

## REST API

The following table list the required and optional parameters for
submitting a long-form video bid request.

>

<table
id="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"
class="entry align-center colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2"
class="entry align-center colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">app</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Required</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">Container
object describing the app that will display the ad pod(s). <strong>If
app is not included in the request then the site parameter must
be.</strong></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">auction_timeout_ms</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">Maximum
time in milliseconds to wait for the auction to complete. Defaults to
zero if not given which uses the timeout setting from the member's <a
href="monetize_monetize-standard/add-or-edit-psp-global-settings.md"
class="xref" target="_blank">Prebid Server Premium Global
Settings</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">bcat</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">String
Array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">Blocked
advertiser categories using the IAB content categories.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">badv</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">String
Array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">Blocked
list of advertisers by their domains (e.g., “<a href="http://ford.com/"
class="xref" target="_blank">ford.com</a>”).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">cacheconfig</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">Optional
controls to have Prebid Server cache information.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">content</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">Container
object describing miscellaneous content metadata that can be used for
targeting the <code class="ph codeph">adPod(s)</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">cur</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4"><p>Default:
USD. Allowed currency for targeting keys on this bid request using
ISO-4217 alpha codes.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">device</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">Container
object describing the device being used for video rendering.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">eids</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">The
list of unified user IDs.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">gpid</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">Global
Placement ID. A unique identifier for the ad slot across platforms. For
more information on the Prebid Ad Slot and GPID, see the <a
href="https://docs.prebid.org/features/pbAdSlot.md" class="xref"
target="_blank">Prebid documentation</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">includebrandcategory</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">Container
object describing brand category inputs.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">memberid</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional(Required
if using inventory codes)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">The
seller's member id.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">podconfig</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Required</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">Container
object for describing all the <code class="ph codeph">pod</code>
configurations. See the <a
href="long-form-video-service.md#long-form-video-service__long-form-video-service-pods"
class="xref">Pod Config</a> section for more information on the <code
class="ph codeph">pod</code> object.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">pricegranularity</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional
(recommended)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">For
more information on the <code class="ph codeph">pricegranualrity</code>
object see the <a
href="long-form-video-service.md#long-form-video-service__long-form-video-service-price-granularity"
class="xref">Price Granularity</a> section. For a broader explanation on
setting <code class="ph codeph">pricegranularity</code>, see the <a
href="https://docs.prebid.org/adops/price-granularity.md#price-granularity-explained"
class="xref" target="_blank">Prebid documentation</a></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">site</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Required</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">Container
object describing the page submitting the <code
class="ph codeph">adpod</code>request. If <code
class="ph codeph">site</code> is not included then the <code
class="ph codeph">app</code> parameter must be.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">user</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">Container
object describing the user of the device.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">video</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">Container
object describing the video player.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__1"><code
class="ph codeph">xdyn_params</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-64ae89c1-614e-45e2-b1d8-9673b5a4af23__entry__4">This
object holds bidder-specific parameters such that each key is a bidder
name and the value is a JSON object containing parameters for that
bidder. For example:
<pre
id="long-form-video-service__codeblock-c57b3e3c-431c-43c8-993b-518f82f33c1b"
class="pre codeblock"><code>{
   &quot;xdyn_params&quot;:{
      &quot;appnexus&quot;:{
         &quot;keywords&quot;:&quot;key1=val1,key2=val2&quot;
      }
   }
}                                    
                                    </code></pre></td>
</tr>
</tbody>
</table>



**App**

The app object supports the following request parameters.

>

<table
id="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__1"><code
class="ph codeph">domain</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__2">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__4">The
domain of the app.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__4">The
name of the app.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__1"><code
class="ph codeph">bundle</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__4">A
platform-specific application identifier intended to be unique to the
app and independent of the exchange. This should be a bundle or package
name (e.g., com.foo.mygame).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__1"><code
class="ph codeph">keywords</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__4">Comma
separated list of keywords.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__1"><code
class="ph codeph">storeurl</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-b6a6e2b0-6d3b-4bdd-ba75-cb7286c8d2d5__entry__4">App
store URL for an installed app.</td>
</tr>
</tbody>
</table>



**Cache Config**

>

The cache config object supports the following request parameters.

<table
id="long-form-video-service__table-611a71b5-9d84-4131-a539-ea82cd30a6e1"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-611a71b5-9d84-4131-a539-ea82cd30a6e1__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-611a71b5-9d84-4131-a539-ea82cd30a6e1__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-611a71b5-9d84-4131-a539-ea82cd30a6e1__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-611a71b5-9d84-4131-a539-ea82cd30a6e1__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-611a71b5-9d84-4131-a539-ea82cd30a6e1__entry__1"><code
class="ph codeph">ttl</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-611a71b5-9d84-4131-a539-ea82cd30a6e1__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-611a71b5-9d84-4131-a539-ea82cd30a6e1__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-611a71b5-9d84-4131-a539-ea82cd30a6e1__entry__4">Time
to live for a cache entry specified in seconds</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-611a71b5-9d84-4131-a539-ea82cd30a6e1__entry__1"><code
class="ph codeph">disablecache</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-611a71b5-9d84-4131-a539-ea82cd30a6e1__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-611a71b5-9d84-4131-a539-ea82cd30a6e1__entry__3">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-611a71b5-9d84-4131-a539-ea82cd30a6e1__entry__4">The
default setting is false. If this flag is set, the PBS cache is disabled
and the responsibility of caching is on the publisher or publisher's
vendor.</td>
</tr>
</tbody>
</table>



**Content**

The content object supports the following request parameters.

<table
id="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">album</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Album
to which the content belongs; typically for audio.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">artist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Artist
credited with the content.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">airtime</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">Integer</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">The
date and time at which the content first aired.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">cat</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String
Array</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Array
of IAB content categories that describe the content producer. Refer to
<a href="https://iabtechlab.com/standards/content-taxonomy/"
class="xref" target="_blank">IAB specifications</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">channel</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Name
of the channel the content is airing on.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">contentrating</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Content
rating (e.g., MPAA).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">context</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Type
of content (game, video, text, etc.). Refer to <a
href="https://iabtechlab.com/standards/content-taxonomy/" class="xref"
target="_blank">IAB specifications</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">data</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">Object
Array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Additional
content data. Each Data object represents a different data source. Refer
to <a href="https://iabtechlab.com/standards/content-taxonomy/"
class="xref" target="_blank">IAB specifications</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">embeddable</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Indicator
of whether or not the content is embeddable (e.g. an embeddable video
player), where false = no, true = yes.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">episode</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Episode
number.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">ext</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Placeholder
for exchange-specific extensions to OpenRTB.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">genre</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Genre
that best describes the content (e.g., rock, pop, etc).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">ID
uniquely identifying the content.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">isrc</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">International
Standard Recording Code conforming to ISO-3901.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">keywords</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Comma
separated list of keywords describing the content.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">language</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Content
language using ISO-639-1-alpha-2.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">len</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Length
of content in seconds; appropriate for video or audio.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">livestream</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">true
= live, false = not live (e.g., stream, live log).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">network</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">The
top-level parent company or, where relevant, a sub-brand which owns
multiple TV-like channels, d2c content brands, or digital properties on
which the content is being viewed.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">prodq</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Production
quality. Refer to <a
href="https://iabtechlab.com/standards/content-taxonomy/" class="xref"
target="_blank">IAB specifications</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">producer</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Details
about the content <code class="ph codeph">producer</code>. Refer to <a
href="https://iabtechlab.com/standards/content-taxonomy/" class="xref"
target="_blank">IAB specifications</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">qagmediarating</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Media
rating per IQG guidelines. Refer to <a
href="https://iabtechlab.com/standards/content-taxonomy/" class="xref"
target="_blank">IAB specifications</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">season</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Content
season (e.g., "Season 3").</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">series</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4"><p>Video
Examples: "The Office" (television), "Star Wars" (movie), or "Arby 'N'
The Chief" (made for web).</p>
<p><em>Non-Video Example:</em> "Ecocentric" (Time Magazine
blog).</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">sourcerelationship</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">0
= indirect, 1 = direct.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">title</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4"><p>Content
title.</p>
<p><em>Video Examples:</em> "Search Committee" (television), "A New
Hope" (movie), or "Endgame" (made for web).</p>
<p><em>Non-Video Example:</em> "Why an Antarctic Glacier is Melting So
Quickly" (Time magazine article).</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">URL
of the content, for buy-side contextualization or review.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">userrating</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">User
rating of the content (e.g., number of stars, likes, etc.).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">videoquality</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">integer;
DEPRECATED</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4"><div
id="long-form-video-service__note-785215f8-f9fd-4025-877c-652e27d3f4e2"
class="note note_note">
<b>Note:</b> Deprecated in favor of prodq.
Video quality. Refer to <a
href="https://iabtechlab.com/standards/content-taxonomy/" class="xref"
target="_blank">IAB specifications</a>.
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__1"><code
class="ph codeph">program_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-c717681f-65cf-4fb6-b6f3-588901ed42db__entry__4">Type
of program.</td>
</tr>
</tbody>
</table>

**Device**

>

The device object supports the following request parameters.

<table
id="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">ua</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4">The
browser user agent.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">dnt</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4"><p>The
standard “Do Not Track” flag as set in the header by the browser.
Accepted values are:</p>
<ul>
<li>0. Tracking is unrestricted.</li>
<li>1. Do not track.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">lmt</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4"><div
id="long-form-video-service__p-2c5befa8-fef1-4b1e-9990-5e377f9d90d9"
>
The “Limit Ad Tracking” signal for mobile devices (e.g., iOS, Android).
Accepted values are:
<ul>
<li><p>0. Tracking is unrestricted.</p></li>
<li><p>1. Tracking must be limited per commercial guidelines.</p></li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">ip</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4">The
IP address of the device making the ad request.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">os</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4">The
device operating system. Example "iOS".</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">h</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4">The
physical height of the screen in pixels.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">w</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4">The
physical width of the screen in pixels.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><p><code
class="ph codeph">devicetype</code></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2"><p>Optional</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3"><p>Integer</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4"><p>The
general type of device. Accepted values are:</p>
<ul>
<li>Mobile/Tablet</li>
<li>Personal Computer</li>
<li>Connected TV</li>
<li>Phone</li>
<li>Tablet</li>
<li>Connected Device</li>
<li>Set Top Box</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">ifa</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4">The
ID sanctioned for advertiser use in the clear (i.e., not hashed).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">didsha1</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4">The
hardware device ID (e.g., IMEI); hashed via SHA1.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">didmd5</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4">The
hardware device ID (e.g., IMEI); hashed via MD5.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">dpidsha1</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4">The
platform device ID (e.g., Android ID); hashed via SHA1.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">dpidmd5</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4">The
platform device ID (e.g., Android ID); hashed via MD5.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">macsha1</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4">The
MAC address of the device; hashed via SHA1.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__1"><code
class="ph codeph">macmd5</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-f4d51e43-8962-4ff3-b03b-cf46c7bfd978__entry__4">The
MAC address of the device; hashed via MD5.</td>
</tr>
</tbody>
</table>



**Eids**

The eid object supports the following request parameters.

<table
id="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__1"><code
class="ph codeph">source</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__2">Required</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__4">The
source or technology provider.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__2">Required</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__4">The
unique user ID.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__1"><code
class="ph codeph">rti_partner</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__2">Required</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-7de64d6e-4da7-4983-b72b-ee12cbd4d8f4__entry__4">The
partner ID.</td>
</tr>
</tbody>
</table>

**Includebrandcategory**

The includebrandcategory object supports the following request
parameters.

>

<table
id="long-form-video-service__table-535e0840-5135-487d-b8cd-ca14007c5dd3"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-535e0840-5135-487d-b8cd-ca14007c5dd3__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-535e0840-5135-487d-b8cd-ca14007c5dd3__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-535e0840-5135-487d-b8cd-ca14007c5dd3__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-535e0840-5135-487d-b8cd-ca14007c5dd3__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-535e0840-5135-487d-b8cd-ca14007c5dd3__entry__1"><code
class="ph codeph">primaryadserver</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-535e0840-5135-487d-b8cd-ca14007c5dd3__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-535e0840-5135-487d-b8cd-ca14007c5dd3__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-535e0840-5135-487d-b8cd-ca14007c5dd3__entry__4"><div
id="long-form-video-service__p-9ccd4448-4a8c-4a23-b1e2-21fa2f2122f8"
>
An integer whose value represents the ad server used by the publisher.
Accepted values are:
<ol>
<li>Freewheel</li>
<li>Google Ad Manager</li>
</ol>
</td>
</tr>
</tbody>
</table>



**Site**

>

The site object supports the following request parameters.

<table
id="long-form-video-service__table-abff9f99-9ce1-4da5-a6b8-d72cc6918b89"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-abff9f99-9ce1-4da5-a6b8-d72cc6918b89__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-abff9f99-9ce1-4da5-a6b8-d72cc6918b89__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-abff9f99-9ce1-4da5-a6b8-d72cc6918b89__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-abff9f99-9ce1-4da5-a6b8-d72cc6918b89__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-abff9f99-9ce1-4da5-a6b8-d72cc6918b89__entry__1"><code
class="ph codeph">page</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-abff9f99-9ce1-4da5-a6b8-d72cc6918b89__entry__2">Required</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-abff9f99-9ce1-4da5-a6b8-d72cc6918b89__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-abff9f99-9ce1-4da5-a6b8-d72cc6918b89__entry__4">A
URL of the page where the impression will be displayed.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-abff9f99-9ce1-4da5-a6b8-d72cc6918b89__entry__1"><code
class="ph codeph">keywords</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-abff9f99-9ce1-4da5-a6b8-d72cc6918b89__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-abff9f99-9ce1-4da5-a6b8-d72cc6918b89__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-abff9f99-9ce1-4da5-a6b8-d72cc6918b89__entry__4">Comma
separated list of keywords.</td>
</tr>
</tbody>
</table>



**User**

>

The user object supports the following request parameters.

<table
id="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__1"><code
class="ph codeph">buyeruid</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__4">The
Xandr user id, if known.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__1"><code
class="ph codeph">yob</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__4">The
user's year of birth as a four-digit integer.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__1"><code
class="ph codeph">gender</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__4"><p>The
user's gender. Accepted values are:</p>
<ul>
<li>M: male</li>
<li>F: female</li>
<li>O: Known to be other.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__1"><code
class="ph codeph">keywords</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__4">A
list of keywords representing interests or intent.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__1"><code
class="ph codeph">gdpr</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__3">Object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__4">Container
object describing the user's GDPR settings. For more information see the
<a
href="long-form-video-service.md#long-form-video-service__long-form-video-service-gdpr"
class="xref">GDPR</a> section below.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__1"><code
class="ph codeph">privacy</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__3">String</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-e8247ca8-e4d9-4f71-b3a2-6e9ef8c17e23__entry__4">CCPA
user privacy string.</td>
</tr>
</tbody>
</table>



**Video**

>

The video object supports the following request parameters.

<table
id="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__1"><code
class="ph codeph">context</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__4"><p>Context
in which the video ad will be shown.</p>
<ul>
<li>0 Unknown</li>
<li>1 Preroll</li>
<li>2 Midroll</li>
<li>3 Postroll</li>
<li>4 Outstream</li>
<li>5 In Banner</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__1"><code
class="ph codeph">w</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__4">The
width of the video player in device independent pixels.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__1"><code
class="ph codeph">h</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__4">The
height of the video player in device independent pixels.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__1"><code
class="ph codeph">mimes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__3">String
Array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__4">An
array of video player supported mime types. Example: ["video/mp4"]</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__1"><code
class="ph codeph">protocols</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__3">String
Array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-d402569a-b308-4323-a27a-c1f7b379b489__entry__4"><p>An
array of video protocols supported by the video player. Accepted video
protocols are:</p>
<ul>
<li>VAST 1.0</li>
<li>VAST 2.0</li>
<li>VAST 3.0</li>
<li>VAST 1.0 Wrapper</li>
<li>VAST 2.0 Wrapper</li>
<li>VAST 3.0 Wrapper</li>
<li>VAST 4.0</li>
<li>VAST 4.0 Wrapper</li>
<li>DAAST 1.0</li>
<li>DAAST 1.0 Wrapper</li>
</ul></td>
</tr>
</tbody>
</table>



**Pods**

>

The pod object supports the following request parameters.

<table
id="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__1"
class="entry colsep-1 rowsep-1">Parameeter</th>
<th
id="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__1"><code
class="ph codeph">podid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__2">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__3">Integer</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__4">Unique
id of the pod within a particular request. It is recommended these be
ordered sequentially with an increment of one.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__1"><code
class="ph codeph">adpoddurationsec</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__2">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__3">Integer</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__4">The
duration of the <code class="ph codeph">adPod</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__1"><code
class="ph codeph">placementid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__2">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__3">Integer</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__4">Placement
ID that a pod relates to. If <code class="ph codeph">placementid</code>
is omitted then <code class="ph codeph">invcode</code>and <code
class="ph codeph">request.memberid</code>are required.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__1"><code
class="ph codeph">invcode</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f0ff1088-8d42-49ca-b4d3-1e6e003cb1a0__entry__4">Inventory
code that a pod relates to. If the <code
class="ph codeph">invcode</code> is passed in, then the seller must also
pass in their member ID in request.memberid.
<p>If <code class="ph codeph">invcode</code> is omitted then <code
class="ph codeph">placementid</code> is required.</p></td>
</tr>
</tbody>
</table>



**Pod Config**

The pod config object supports the following request parameters.

<table
id="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__1"><code
class="ph codeph">adomaindedupe</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__3">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__4">Flag
that indicates whether or not to deduplicate based on advertiser domain
(<code class="ph codeph">adomain</code> value in OpenRTB bid responses).
When enabled, no two selected bids can have the same advertiser
domain.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__1"><code
class="ph codeph">perpodkeys</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__3">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__4">Flag
indicating if key-values in response should be configured for per-pod
competitive separation. Defaults to false.When this flag is enabled, a
<code class="ph codeph">_podX</code>identifier is added to the key names
returned, where X starts at 1 and increase by 1 for each subsequent pod.
<p>Each pod has a different <code class="ph codeph">hb_cache_id</code>
value that its bids are cached with, allowing for identical <code
class="ph codeph">hb_pb_cat_dur</code> values to be returned as long as
they occur in different pods. Adds instance ids to the value to allow
similar bids to be returned even in same pods. Instance ids on the
values will be a postfix of <code class="ph codeph">_pX</code> where X
starts at 0 and increase by 1 for each subsequent identical bid. For
Example, With perpodkeys flag enabled, a <code
class="ph codeph">hb_pb_cat_dur</code> key and value that would normally
look like: "hb_pb_cat_dur": "15.00_airlines_30s"</p>
<p>Will instead look like:</p>
<p>"hb_pb_cat_dur_pod1": "15.00_airlines_30s_p0"</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__1"><code
class="ph codeph">pods</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__2">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__3">Object</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__4">Container
object for describing the <code class="ph codeph">adPod</code>(s) to be
requested.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__1"><code
class="ph codeph">durationrangesec</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__2">Required</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__3">Integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__4">Range
of ad durations allowed in the response. See <a
href="long-form-video-service.md#long-form-video-service__long-form-video-service-duration-range"
class="xref">Duration Range</a> section for more detail on duration
range.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__1"><code
class="ph codeph">requireexactduration</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__2">Optional</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__3">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="long-form-video-service__table-0c7970e2-c9e4-4507-b964-dfcb8a8a73a2__entry__4">Flag
indicating if submitted ads must meet the exact duration requirement.
The default setting is false.</td>
</tr>
</tbody>
</table>

**Duration Range**

>

The `podconfig.durationrangesec` is an array of integers representing
the ad slot durations within the ad pod:

``` pre
podconfig.durationrangesec = [15, 30];
```





<b>Note:</b> If `requireexactduration` is set
to false, then the ad's duration will be rounded up to the closest value
in the `durationrangesec` array. The minimum bid duration is zero. Using
the setting above, a 10-second bid would be rounded to fifteen seconds
and an 18-second bid rounded to thirty.

if `requireexactduration` is set to true, then only the ads that are the
exact duration match to the `durationrangesec` array will be allowed.
Again, using the example above, an ad submitted with a duration of
fifteen seconds would be allowed, whereas an ad submitted with an
18-second duration would be rejected.



**General Data Protection Regulation (GDPR)**

>

GDPR is a data privacy law enacted by the European Union. The goal of
GDPR is to provide more stringent data privacy and security measures and
more user-friendly disclosures and reporting on data protection
practices.

<table
id="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__1"><code
class="ph codeph">user.gdpr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__3">Object</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__4">Container
object describing the GDPR settings.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__1"><code
class="ph codeph">gdpr.consentrequired</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__3">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__4">Flag
indicating if GDPR is in effect.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__1"><code
class="ph codeph">gdpr.consentstring</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__3">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-33525966-1fe5-4ddb-b7e4-e33357f8e20c__entry__4">A
string, comprised of a series of numbers, which identifies the consent
status of an ad tech vendor.</td>
</tr>
</tbody>
</table>



>

**Price Granularity**

<table
id="long-form-video-service__table-dd466ed6-8be0-4aba-b8c8-16d25b86f3db"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-dd466ed6-8be0-4aba-b8c8-16d25b86f3db__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-dd466ed6-8be0-4aba-b8c8-16d25b86f3db__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-dd466ed6-8be0-4aba-b8c8-16d25b86f3db__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-dd466ed6-8be0-4aba-b8c8-16d25b86f3db__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-dd466ed6-8be0-4aba-b8c8-16d25b86f3db__entry__1"><code
class="ph codeph">precision</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-dd466ed6-8be0-4aba-b8c8-16d25b86f3db__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-dd466ed6-8be0-4aba-b8c8-16d25b86f3db__entry__3">Integer</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-dd466ed6-8be0-4aba-b8c8-16d25b86f3db__entry__4">If
precision is omitted, it will default to. See <a
href="https://docs.prebid.org/adops/price-granularity.md#price-granularity-explained"
class="xref" target="_blank">Prebid documentation</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-dd466ed6-8be0-4aba-b8c8-16d25b86f3db__entry__1"><code
class="ph codeph">ranges</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-dd466ed6-8be0-4aba-b8c8-16d25b86f3db__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-dd466ed6-8be0-4aba-b8c8-16d25b86f3db__entry__3">Object</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-dd466ed6-8be0-4aba-b8c8-16d25b86f3db__entry__4">Container
object describing the price granularity range.</td>
</tr>
</tbody>
</table>



>

**Price Granularity Ranges**

<table
id="long-form-video-service__table-a63aa13b-fed0-4cb0-9697-bf7add882921"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-a63aa13b-fed0-4cb0-9697-bf7add882921__entry__1"
class="entry colsep-1 rowsep-1">Patameter</th>
<th
id="long-form-video-service__table-a63aa13b-fed0-4cb0-9697-bf7add882921__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="long-form-video-service__table-a63aa13b-fed0-4cb0-9697-bf7add882921__entry__3"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-a63aa13b-fed0-4cb0-9697-bf7add882921__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-a63aa13b-fed0-4cb0-9697-bf7add882921__entry__1"><code
class="ph codeph">max</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-a63aa13b-fed0-4cb0-9697-bf7add882921__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-a63aa13b-fed0-4cb0-9697-bf7add882921__entry__3">Float</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-a63aa13b-fed0-4cb0-9697-bf7add882921__entry__4">The
maximum length of the range.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-a63aa13b-fed0-4cb0-9697-bf7add882921__entry__1"><code
class="ph codeph">increment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-a63aa13b-fed0-4cb0-9697-bf7add882921__entry__2">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-a63aa13b-fed0-4cb0-9697-bf7add882921__entry__3">Float</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-a63aa13b-fed0-4cb0-9697-bf7add882921__entry__4">The
amount to increment through the range.</td>
</tr>
</tbody>
</table>





>

## Response

Demand partners returns a response to the ad pod bid request in JSON
format.

**Ad Pod**

<table
id="long-form-video-service__table-f045040b-e890-4efb-b1e3-2bf595f19cee"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-f045040b-e890-4efb-b1e3-2bf595f19cee__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-f045040b-e890-4efb-b1e3-2bf595f19cee__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-f045040b-e890-4efb-b1e3-2bf595f19cee__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f045040b-e890-4efb-b1e3-2bf595f19cee__entry__1"><code
class="ph codeph">adpods</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f045040b-e890-4efb-b1e3-2bf595f19cee__entry__2">Object</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f045040b-e890-4efb-b1e3-2bf595f19cee__entry__3">Container
object describing the Prebid demand partner responses for each <code
class="ph codeph">ad pod</code> sent in the original request.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f045040b-e890-4efb-b1e3-2bf595f19cee__entry__1"><code
class="ph codeph">adpods[...].podid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f045040b-e890-4efb-b1e3-2bf595f19cee__entry__2">Integer</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f045040b-e890-4efb-b1e3-2bf595f19cee__entry__3">The
id of the corresponding <code class="ph codeph">ad pod</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f045040b-e890-4efb-b1e3-2bf595f19cee__entry__1"><code
class="ph codeph">adpods[...].targeting</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f045040b-e890-4efb-b1e3-2bf595f19cee__entry__2">Object</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-f045040b-e890-4efb-b1e3-2bf595f19cee__entry__3">Container
object describing the prebid demand partner bids for this pod translated
into targeting keys. See the table below for more detail on the <code
class="ph codeph">adpods.targeting</code> object.</td>
</tr>
</tbody>
</table>

**Ad Pod Targeting**

<table
id="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8"
class="table frame-all">
<colgroup>
<col style="width: 33%" />
<col style="width: 21%" />
<col style="width: 45%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__1"><code
class="ph codeph">hb_deal</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__3">Deal
code or external deal id from the associated bid. Omitted if this bid is
not associated with a deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__1"><code
class="ph codeph">hb_pb</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__3">The
price bucket targeting key. The price bucketing model is defined by the
pricegranularity from the request and configuration. The price bucket
targeting key-value represents the rounded bid price.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__1"><code
class="ph codeph">hb_pb_cat_dur</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__3"><p>The
value of this key represents the concatenation of three values, the
price bucket (), the creative category code, and the duration of the
video creative. For example:</p>
<pre
id="long-form-video-service__codeblock-d5f2348c-e1e2-4f58-8a20-34916c71ca4d"
class="pre codeblock"><code>adpods[...]targeting.hb_pb</code></pre>
<p>This would indicate a price bucket of $12.00 (if the currency was in
US dollars), a category code of 135 (in the primary ad server's domain,
such as Freewheel or Google Ad Manager), and a duration of thirty
seconds.</p>
<div
id="long-form-video-service__p-78407812-63bc-4227-b167-f9fbe99262f4"
>
<div
id="long-form-video-service__note-895b49cd-1b20-4045-ac2b-ee8523b48fee"
class="note note_note">
<b>Note:</b> This key-value must be unique
across all bids corresponding to its corresponding ad pod. If there are
two identical <code class="ph codeph">hb_pb_cat_dur</code> values,
ImpBus will eliminate one of the bids.

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__1"><code
class="ph codeph">hb_cache_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__3"><p>The
Prebid cache id. This value maps to the rendered video content.</p>
<div
id="long-form-video-service__note-cc103688-0553-48a9-9a52-894f5c626e4b"
class="note note_note">
<b>Note:</b>
<div
id="long-form-video-service__p-108a825a-5a7c-499f-8d1d-f5639b62fa87"
>
This key-value must be unique across all bids across all pods in a
single request. The actual creative cache key will be a concatenation of
this value and <code class="ph codeph">hb_pb_cat_dur</code>. Since <code
class="ph codeph">hb_pb_cat_dur</code> must be unique across all bids
this guarantees that the actual creative cache key will be unique. The
actual cache key will be created using macros, as illustrated below:
<pre
id="long-form-video-service__codeblock-d835235d-1856-445d-a983-fc04f31fc072"
class="pre codeblock"><code>${ hb_pb_cat_dur }_${ hb_cache_id }</code></pre>

<p>The hb_cache_id value will be the same for every entry in
targeting[...] in a single response.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__1"><code
class="ph codeph">hb_cache_host</code></td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="long-form-video-service__table-af688534-6ba9-40ba-a4e1-8a2434c14da8__entry__3">The
host name of the cache where the creative associated with this bid is
stored.</td>
</tr>
</tbody>
</table>





## Examples

**Code Example**



``` pre
curl -X "POST" -H "Content-Type: application/json" -d 

{
   "podconfig":{
      "durationrangesec":[
         30
      ],
      "requireexactduration":false,
      "pods":[
         {
            "podid":1,
            "adpoddurationsec":60,
            "placementid":14997137
         }
      ]
   },
   "site":{
      "page":"https://www.foobar.com/1234.md"
   },
   "user":{
      "yob":1982,
      "gender":"M"
   },
   "device":{
      "ua":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.13 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2",
      "ip":"123.145.167.10",
      "devicetype":1,
      "ifa":"AA000DFE74168477C70D291f574D344790E0BB11"
   },
   "includebrandcategory":{
      "primaryadserver":1
   },
   "video":{
      "w":640,
      "h":480,
      "mimes":[
         "video/mp4"
      ],
      "protocols":[
         2,
         3
      ]
   },
   "content":{
      "episode":6,
      "title":"episodeName",
      "series":"TvName",
      "season":"season3",
      "len":900,
      "livestream":false,
      "genre":"comedy",
      "program_type":"series",
      "contentrating":"GA",
      "id":"ABCDEF12345678",
      "language":"EN",
      "network":"XTV",
      "channel":"XandrTV",
      "airtime":1657827359,
      "album":"showads",
      "cat":[
         "IAB1-7",
         "IAB19-18"
      ],
      "context":1,
      "embeddable":false,
      "isrc":"USXND2100112",
      "keywords":"prizeworth=5000,gameshow,edu=true",
      "prodq":"prosumer",
      "qagmediarating":1,
      "sourcerelationship":true,
      "url":"https://tvname.xandrtv.com/overview",
      "userrating":"4/5 recommended",
      "producer":{
         "id":"xndtv5401",
         "name":"XandrTV",
         "cat":[
            "IAB1-7",
            "IAB19-18"
         ],
         "domain":"xandrtv.com"
      },
      "data":[
         {
            "id":"xandr",
            "name":"xndtv",
            "segment":[
               {
                  "id":"11854",
                  "name":"repeat viewers",
                  "value":"973"
               }
            ]
         }
      ]
   },
   "pricegranularity":{
      "precision":2,
      "ranges":[
         {
            "max":30.00,
            "increment":1.00
         }
      ]
   }
}
```








