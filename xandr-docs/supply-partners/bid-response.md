# Bid Response

<div class="body">

<div class="note warning">

<span class="warningtitle">Warning:</span> We have disabled the Supply
Integration (ASI) protocol (formerly <span class="ph">AppNexus</span>
Supply Integration) for server-side supply integrations beginning on
October 1st, 2017. We strongly encourage that you migrate your supply to
the <a
href="https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-API-Specification-Version-2-4-FINAL.pdf"
class="xref" target="_blank">OpenRTB protocol</a>. Everything in this
section is legacy content.

</div>

After you send a bid request, <span class="ph">Xandr</span> returns a
bid response in JSON format. This page explains the possible JSON fields
and their values. The Examples at the bottom of the page show the fields
that are returned when:

- <span class="ph">Xandr</span> submits a bid
- <span class="ph">Xandr</span> does not submit a bid - No bid available
- <span class="ph">Xandr</span> does not submit a bid - Error
- <span class="ph">Xandr</span> submits a VAST video creative (NOT YET
  SUPPORTED)

<div class="note tip">

<span class="tiptitle">Tip:</span> If a <span class="ph">Xandr</span>
bid wins your auction, you should insert the winning bid price into
the `%%pricepaid%%` macro of the `ad_tag` before placing the tag on the
web page.

</div>

<div class="section">

##   JSON Fields

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d26876e103" class="entry nocellnoborder"
style="vertical-align: top">Field</th>
<th id="d26876e106" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d26876e109" class="entry nocellnoborder"
style="vertical-align: top">Description</th>
<th id="d26876e112" class="entry cell-noborder"
style="vertical-align: top">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d26876e103 ">external_auction_id</td>
<td class="entry nocellnoborder"
headers="d26876e106 ">string</td>
<td class="entry nocellnoborder"
headers="d26876e109 ">The ID of the supply partner auction, as sent in
the bid request.</td>
<td class="entry cell-noborder"
headers="d26876e112 ">"A4s24536"</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d26876e103 "><span class="ph">appnexus</span>_auction_id</td>
<td class="entry nocellnoborder"
headers="d26876e106 ">int</td>
<td class="entry nocellnoborder"
headers="d26876e109 "><span class="ph">Xandr</span> holds its own
auction to select the bid to submit for your auction. This is ID of the
<span class="ph">Xandr</span> auction event.</td>
<td class="entry cell-noborder"
headers="d26876e112 ">4396943919143109134</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d26876e103 ">bid</td>
<td class="entry nocellnoborder"
headers="d26876e106 ">decimal</td>
<td class="entry nocellnoborder"
headers="d26876e109 ">The cpm value of the <span class="ph">Xandr</span>
bid. </td>
<td class="entry cell-noborder"
headers="d26876e112 ">0.206367</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d26876e103 ">creative_id</td>
<td class="entry nocellnoborder"
headers="d26876e106 ">int</td>
<td class="entry nocellnoborder"
headers="d26876e109 ">The ID of the creative that is served if <span
class="ph">Xandr</span> wins your auction. </td>
<td class="entry cell-noborder"
headers="d26876e112 ">345634</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d26876e103 ">landing_page_url</td>
<td class="entry nocellnoborder"
headers="d26876e106 ">string</td>
<td class="entry nocellnoborder"
headers="d26876e109 ">The landing page URL of the creative. </td>
<td class="entry cell-noborder"
headers="d26876e112 "><pre class="pre codeblock"><code>&quot;www.landingpage.com&quot;</code></pre></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d26876e103 ">brand_id</td>
<td class="entry nocellnoborder"
headers="d26876e106 ">int</td>
<td class="entry nocellnoborder"
headers="d26876e109 ">The <span class="ph">Xandr</span> ID for the brand
of the creative. To map brand IDs to names, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/brand-service.html"
class="xref" target="_blank">Brand Service</a>.</td>
<td class="entry cell-noborder"
headers="d26876e112 ">12</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d26876e103 ">buyer_member_id</td>
<td class="entry nocellnoborder"
headers="d26876e106 ">int</td>
<td class="entry nocellnoborder"
headers="d26876e109 ">The ID of the member that owns the creative. </td>
<td class="entry cell-noborder"
headers="d26876e112 ">3453</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d26876e103 ">no_bid</td>
<td class="entry nocellnoborder"
headers="d26876e106 ">boolean</td>
<td class="entry nocellnoborder"
headers="d26876e109 ">If true, <span class="ph">Xandr</span> does not
have a bid for your auction.  </td>
<td class="entry cell-noborder"
headers="d26876e112 ">false</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d26876e103 ">request_error</td>
<td class="entry nocellnoborder"
headers="d26876e106 ">boolean</td>
<td class="entry nocellnoborder"
headers="d26876e109 ">If true, an error prevented <span
class="ph">Xandr</span> from submitting a bid.</td>
<td class="entry cell-noborder"
headers="d26876e112 ">false</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d26876e103 ">request_error_id</td>
<td class="entry nocellnoborder"
headers="d26876e106 ">int</td>
<td class="entry nocellnoborder"
headers="d26876e109 ">The ID of the error. This field is returned only
when request_error is true. See <strong>Errors</strong> section
below for all possible error IDs and their meanings.</td>
<td class="entry cell-noborder"
headers="d26876e112 ">3</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d26876e103 ">ad_tag</td>
<td class="entry -nocellborder"
headers="d26876e106 ">string</td>
<td class="entry -nocellborder"
headers="d26876e109 ">The ad tag that is placed on the web page if <span
class="ph">Xandr</span> wins your auction. Note: If you wish to track
clicks, <span class="ph">Xandr</span> can add a macro for your click
URL: <code class="ph codeph">&amp;pubclick=%%pub_click_url%%</code>. To
learn more about this functionality, please reach out to your
implementation team.</td>
<td class="entry cellborder"
headers="d26876e112 ">See examples below</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Supply Templates

For VAST video creatives, if you require custom parameters not normally
included in the `ad_tag` of the bid response, you can
ask <span class="ph">Xandr</span> to build a supply template for you.
Here's how it works:

1.  You communicate directly with your <span class="ph">Xandr</span>
    representative about the custom parameters you would like returned
    for VAST video creatives.

2.  If <span class="ph">Xandr</span> agrees with your
    request, <span class="ph">Xandr</span> builds a supply template for
    you and sends you the ID.

3.  In your bid requests for VAST video creatives, you include the
    supply template ID in the `template_id` field.

4.  In bid responses, the supply template adds your custom parameters to
    the `<Extensions>` section of the `ad_tag`.

    Example

Let's say you want <span class="ph">Xandr</span> to include the
following supplementary information for VAST video creatives:

- Bidding strategy (CPM, CPC, etc.)
- Currency
- Source of the bid

The supply template that <span class="ph">Xandr</span> would build for
you would add this information to the `<Extensions>` section of
the `ad_tag`:

``` pre
"ad_tag":"<?xml version="1.0" encoding="UTF-8" standalone="no"?><VAST version="2.0" xmlns:xsi=
                "http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="vast.xsd">
                <Ad id="560469"><Wrapper><AdSystem version="1.0">adnxs</AdSystem><VASTAdTagURI><![CDA
                TA[http://ib.adnxs.com/ab?enc=AAAAAAAA8D8AAAAAAADwPwAAAAAAAPA_AAAAAAAA8D8AAAAAAADwPwkWl1e
                GIxl9XgZfiHCnHw8p021QAAAAADd8CQBVBAAAVQQAAA0AAABVjQgAMmgBAAAAAQBVU0QAVVNEAAEAAQASEwAAVgAB
                BAMCAQUAAIIAaRIvXgAAAAA.&cnd=%21chngsgiT1QUQ1ZoiGAAgstAFMAA4kqYEQARI1QhQt_glWABgLmgAcAB4A
                IABAIgBAJABAZgBAaABAagBALABALkBAAAAAA AA8D_BAQA AAAAAAPA_yQEzMzMzMzMDQNkBAAAAAAAA8D_gAQA.
                &udj=uf%28%27a%27%2C+51512%2C+1349374761%29%3Buf%28%27r%27%2C+560469%2C+1349374761%29%3B&
                ccd=%212gSgJwiT1QUQ1ZoiGLLQBSAE&vpid=171&referrer=espn.com&dlo=1&pp=%%pricepaid%%]>
                </VASTAdTagURI><Impression></Impression><Creatives><Creative AdID="560469"><Linear>
                </Linear></Creative></Creatives><Extensions><Extension type="Partner Name">
                <Price model="CPM" currency="USD" source="AppNexus">1</Price></Extension>
                </Extensions></Wrapper></>"
```

<div class="note">

<span class="notetitle">Note:</span> For the full bid response for a
VAST video creative, see the **Examples** below.

</div>

</div>

<div class="section">

## Errors

When an error prevents <span class="ph">Xandr</span> from submitting a
bid, the `request_error_id` in the response helps you diagnose the
problem.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d26876e440" class="entry nocellnoborder"
style="vertical-align: top"><pre class="pre codeblock"><code>request_error_id</code></pre></th>
<th id="d26876e444" class="entry cell-noborder"
style="vertical-align: top">Meaning</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d26876e440 ">1</td>
<td class="entry cell-noborder"
headers="d26876e444 ">The syntax of the bid request was incorrect.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d26876e440 ">2</td>
<td class="entry cell-noborder"
headers="d26876e444 ">The member ID in the request could not be
parsed.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d26876e440 ">3</td>
<td class="entry cell-noborder"
headers="d26876e444 ">The request did not map to a <span
class="ph">Xandr</span> user ID.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d26876e440 ">4</td>
<td class="entry cell-noborder"
headers="d26876e444 ">The bid request did not include <code
class="ph codeph">external_auction_id</code>.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d26876e440 ">5</td>
<td class="entry cell-noborder"
headers="d26876e444 ">The request did not map to a placement.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d26876e440 ">6</td>
<td class="entry cell-noborder"
headers="d26876e444 ">The <span class="ph">Xandr</span> auction
failed.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d26876e440 ">7</td>
<td class="entry cell-noborder"
headers="d26876e444 ">The requested <code
class="ph codeph">ad_format</code> did not match the placement
format.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d26876e440 ">8</td>
<td class="entry cell-noborder"
headers="d26876e444 ">The inventory (e.g. <code
class="ph codeph">page_url)</code> or user (e.g. ip_address) passed is
blocked by <span class="ph">Xandr</span>.**</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d26876e440 ">9</td>
<td class="entry cellborder"
headers="d26876e444 ">The <code
class="ph codeph">ad_format</code> parameter (required) was not passed
in the request.</td>
</tr>
</tbody>
</table>

</div>

 \*\*Note: Error ID 8 will also trigger if the domain passed is excluded
by the global targeting profile of the buying member.

</div>

<div class="section">

## Examples

<span class="ph">Xandr</span> submits a bid

``` pre
{
    "external_auction_id": "A4s24536",
    "appnexus_auction_id": 4396943919143109000,
    "request_error": false,
    "no_bid": false,
    "bid": 0.206367,
    "creative_id": 345634,
    "landing_page_url": "http://www.landingpage.com",
    "brand_id": 12,
    "buyer_member_id": 328,
    "ad_tag": "<scriptsrc='http: //ib.adnxs.com/ab?enc=nkFD_wQXyz-iXL8FfvnHPwAAAAAAAOA_oly_BX75xz-eQUP_BBfLP0p8RFYC0OIKHKmTLdGzBl2rOWpOAAAAALGQCADLAQAAbAEAAAIAAACyGQkAmwkBAAEAAABVU0QAVVNEANgCWgC0AoMDvw4BAgUCAQQAAAAAciHhvwAAAAA.&tt_code=13394&udj=uf%28%27a%27%2C+1008%2C+1315584427%29%3Buf%28%27c%27%2C+117682%2C+1315584427%29%3Buf%28%27g%27%2C+51717%2C+1315584427%29%3Buf%28%27r%27%2C+596402%2C+1315584427%29%3Bppv%2815221%2C+%27784417993571728458%27%2C+1315584427%2C+1318176427%2C+117682%2C+67995%29%3Bppv%2815223%2C+%27784417993571728458%27%2C+1315584427%2C+1315670827%2C+117682%2C+67995%29%3Bppv%2815225%2C+%27784417993571728458%27%2C+1315584427%2C+1318176427%2C+117682%2C+67995%29%3Bppv%2815227%2C+%27784417993571728458%27%2C+1315584427%2C+1318176427%2C+117682%2C+67995%29%3Bppv%2815229%2C+%27784417993571728458%27%2C+1315584427%2C+1318176427%2C+117682%2C+67995%29%3Bppv%2815231%2C+%27784417993571728458%27%2C+1315584427%2C+1318176427%2C+117682%2C+67995%29%3B&cnd=!VyRDEwiylwcQsrMkGAAgm5MEMAA4tAVAAEjsAlAAWABgrARoAHAAeACAAQCIAQCQAQGYAQGgAQGoAQOwAQC5AUw3iUFg5cA_wQFwscHFBhfLP8kBmpmZmZmZ8T_ZAYV80LNZ9eM_4AHkKA..&ccd=!XASOJAiylwcQsrMkGJuTBCAA&referrer=http: //www.nydailynews.com&media_subtypes=1&pp=%%pricepaid%%'></script>"
}
```

  <span class="ph">Xandr</span> does not submit a bid - No bid available

``` pre
{
   "external_auction_id":"A4s24536",
   "no_bid":true,
   "request_error":false
}
```

  <span class="ph">Xandr</span> does not submit a bid - Error

``` pre
{
   "external_auction_id":"A4s24536",
   "no_bid":true,
   "request_error":true,
   "request_error_id":2
}
```

 <span class="ph">Xandr</span> submits a VAST video creative (NOT YET
SUPPORTED)

When <span class="ph">Xandr</span> submits a VAST video creative:

- The creative is passed as escaped VAST XML in the `ad_tag` field.
- If the bid wins your auction, you must unescape the content before
  placing it on the page.
- If the bid wins your auction, you must insert the winning bid price
  (in CPM) into the `%%pricepaid%%` macro in the `ad_tag`.
- If you have asked <span class="ph">Xandr</span> to build a supply
  template that passes custom parameters in VAST creative bids, those
  custom parameters will appear inside the `<Extensions>` tag of the XML
  within the `ad_tag`. In the example below, the supply template has
  added supplementary information about the price of the bid. For more
  details about about supply templates, see **Supply Templates** above. 

<div class="note tip">

<span class="tiptitle">Tip:</span> Following industry standard practice,
<span class="ph">Xandr</span> does not log a VAST impression on win.
Instead, the impression is logged only once the video starts (user
clicks play, etc.).

``` pre
{
   "external_auction_id":"A4s24536",
   "appnexus_auction_id":4396943919143109134,
   "request_error":false,
   "no_bid":false,
   "bid":2.000000,
   "creative_id":345634,
   "landing_page_url":"http://www.landingpage.com",
   "brand_id":12,
   "buyer_member_id":328,
   "ad_tag":"<?xml version="1.0" encoding="UTF-8" standalone="no"?><VAST version="2.0" xmlns:xsi=
                "http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="vast.xsd">
                <Ad id="560469"><Wrapper><AdSystem version="1.0">adnxs</AdSystem><VASTAdTagURI><![CDA
                TA[http://ib.adnxs.com/ab?enc=AAAAAAAA8D8AAAAAAADwPwAAAAAAAPA_AAAAAAAA8D8AAAAAAADwPwkWl1e
                GIxl9XgZfiHCnHw8p021QAAAAADd8CQBVBAAAVQQAAA0AAABVjQgAMmgBAAAAAQBVU0QAVVNEAAEAAQASEwAAVgAB
                BAMCAQUAAIIAaRIvXgAAAAA.&cnd=%21chngsgiT1QUQ1ZoiGAAgstAFMAA4kqYEQARI1QhQt_glWABgLmgAcAB4A
                IABAIgBAJABAZgBAaABAagBALABALkBAAAAAA AA8D_BAQA AAAAAAPA_yQEzMzMzMzMDQNkBAAAAAAAA8D_gAQA.
                &udj=uf%28%27a%27%2C+51512%2C+1349374761%29%3Buf%28%27r%27%2C+560469%2C+1349374761%29%3B&
                ccd=%212gSgJwiT1QUQ1ZoiGLLQBSAE&vpid=171&referrer=espn.com&dlo=1&pp=%%pricepaid%%]>
                </VASTAdTagURI><Impression></Impression><Creatives><Creative AdID="560469"><Linear>
                </Linear></Creative></Creatives><Extensions><Extension type="Partner Name">
                <Price model="CPM" currency="USD" source="AppNexus">1</Price></Extension>
                </Extensions></Wrapper></>"
}
```

The deal fields below are visible to <span class="ph">Xandr</span>
employees only.

</div>

<span class="ph">Xandr</span> submits a bid for a deal

``` pre
{
    "external_auction_id": "A4s24536",
    "appnexus_auction_id": 4396943919143109000,
    "request_error": false,
    "no_bid": false,
    "bid": 0.206367,
    "creative_id": 345634,
    "landing_page_url": "http://www.landingpage.com",
    "brand_id": 12,
    "buyer_member_id": 328,
    "deal_code": "This is a big deal",
    "deal_id": 123456,
    "ad_tag": "<scriptsrc='http: //ib.adnxs.com/ab?enc=nkFD_wQXyz-iXL8FfvnHPwAAAAAAAOA_oly_BX75xz-eQUP_BBfLP0p8RFYC0OIKHKmTLdGzBl2rOWpOAAAAALGQCADLAQAAbAEAAAIAAACyGQkAmwkBAAEAAABVU0QAVVNEANgCWgC0AoMDvw4BAgUCAQQAAAAAciHhvwAAAAA.&tt_code=13394&udj=uf%28%27a%27%2C+1008%2C+1315584427%29%3Buf%28%27c%27%2C+117682%2C+1315584427%29%3Buf%28%27g%27%2C+51717%2C+1315584427%29%3Buf%28%27r%27%2C+596402%2C+1315584427%29%3Bppv%2815221%2C+%27784417993571728458%27%2C+1315584427%2C+1318176427%2C+117682%2C+67995%29%3Bppv%2815223%2C+%27784417993571728458%27%2C+1315584427%2C+1315670827%2C+117682%2C+67995%29%3Bppv%2815225%2C+%27784417993571728458%27%2C+1315584427%2C+1318176427%2C+117682%2C+67995%29%3Bppv%2815227%2C+%27784417993571728458%27%2C+1315584427%2C+1318176427%2C+117682%2C+67995%29%3Bppv%2815229%2C+%27784417993571728458%27%2C+1315584427%2C+1318176427%2C+117682%2C+67995%29%3Bppv%2815231%2C+%27784417993571728458%27%2C+1315584427%2C+1318176427%2C+117682%2C+67995%29%3B&cnd=!VyRDEwiylwcQsrMkGAAgm5MEMAA4tAVAAEjsAlAAWABgrARoAHAAeACAAQCIAQCQAQGYAQGgAQGoAQOwAQC5AUw3iUFg5cA_wQFwscHFBhfLP8kBmpmZmZmZ8T_ZAYV80LNZ9eM_4AHkKA..&ccd=!XASOJAiylwcQsrMkGJuTBCAA&referrer=http: //www.nydailynews.com&media_subtypes=1&pp=%%pricepaid%%'></script>"
}
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="supply-integration-asi.html" class="link">Supply Integration
(ASI)</a>

</div>

</div>

</div>
