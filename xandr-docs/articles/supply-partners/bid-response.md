---
Title : Bid Response
Description : Warning: We have disabled the Supply
Integration (ASI) protocol (formerly AppNexus
Supply Integration) for server-side supply integrations beginning on
October 1st, 2017. We strongly encourage that you migrate your supply to
---


# Bid Response





Warning: We have disabled the Supply
Integration (ASI) protocol (formerly AppNexus
Supply Integration) for server-side supply integrations beginning on
October 1st, 2017. We strongly encourage that you migrate your supply to
the <a
href="https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-API-Specification-Version-2-4-FINAL.pdf"
class="xref" target="_blank">OpenRTB protocol</a>. Everything in this
section is legacy content.



After you send a bid request, Xandr returns a
bid response in JSON format. This page explains the possible JSON fields
and their values. The Examples at the bottom of the page show the fields
that are returned when:

- Xandr submits a bid
- Xandr does not submit a bid - No bid available
- Xandr does not submit a bid - Error
- Xandr submits a VAST video creative (NOT YET
  SUPPORTED)



Tip: If a Xandr
bid wins your auction, you should insert the winning bid price into
the `%%pricepaid%%` macro of the `ad_tag` before placing the tag on the
web page.





##  JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004e37__entry__1" class="entry">Field</th>
<th id="ID-00004e37__entry__2" class="entry">Type</th>
<th id="ID-00004e37__entry__3" class="entry">Description</th>
<th id="ID-00004e37__entry__4" class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00004e37__entry__1">external_auction_id</td>
<td class="entry" headers="ID-00004e37__entry__2">string</td>
<td class="entry" headers="ID-00004e37__entry__3">The ID of the supply
partner auction, as sent in the bid request.</td>
<td class="entry" headers="ID-00004e37__entry__4">"A4s24536"</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00004e37__entry__1"><span
class="ph">appnexus_auction_id</td>
<td class="entry" headers="ID-00004e37__entry__2">int</td>
<td class="entry" headers="ID-00004e37__entry__3"><span
class="ph">Xandr holds its own auction to select the bid to
submit for your auction. This is ID of the Xandr
auction event.</td>
<td class="entry"
headers="ID-00004e37__entry__4">4396943919143109134</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00004e37__entry__1">bid</td>
<td class="entry" headers="ID-00004e37__entry__2">decimal</td>
<td class="entry" headers="ID-00004e37__entry__3">The cpm value of the
Xandr bid. </td>
<td class="entry" headers="ID-00004e37__entry__4">0.206367</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00004e37__entry__1">creative_id</td>
<td class="entry" headers="ID-00004e37__entry__2">int</td>
<td class="entry" headers="ID-00004e37__entry__3">The ID of the creative
that is served if Xandr wins your auction. </td>
<td class="entry" headers="ID-00004e37__entry__4">345634</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00004e37__entry__1">landing_page_url</td>
<td class="entry" headers="ID-00004e37__entry__2">string</td>
<td class="entry" headers="ID-00004e37__entry__3">The landing page URL
of the creative. </td>
<td class="entry" headers="ID-00004e37__entry__4"><pre
class="pre codeblock"><code>&quot;www.landingpage.com&quot;</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00004e37__entry__1">brand_id</td>
<td class="entry" headers="ID-00004e37__entry__2">int</td>
<td class="entry" headers="ID-00004e37__entry__3">The <span
class="ph">Xandr ID for the brand of the creative. To map brand
IDs to names, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/brand-service.html"
class="xref" target="_blank">Brand Service</a>.</td>
<td class="entry" headers="ID-00004e37__entry__4">12</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00004e37__entry__1">buyer_member_id</td>
<td class="entry" headers="ID-00004e37__entry__2">int</td>
<td class="entry" headers="ID-00004e37__entry__3">The ID of the member
that owns the creative. </td>
<td class="entry" headers="ID-00004e37__entry__4">3453</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00004e37__entry__1">no_bid</td>
<td class="entry" headers="ID-00004e37__entry__2">boolean</td>
<td class="entry" headers="ID-00004e37__entry__3">If true, <span
class="ph">Xandr does not have a bid for your auction.  </td>
<td class="entry" headers="ID-00004e37__entry__4">false</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00004e37__entry__1">request_error</td>
<td class="entry" headers="ID-00004e37__entry__2">boolean</td>
<td class="entry" headers="ID-00004e37__entry__3">If true, an error
prevented Xandr from submitting a bid.</td>
<td class="entry" headers="ID-00004e37__entry__4">false</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00004e37__entry__1">request_error_id</td>
<td class="entry" headers="ID-00004e37__entry__2">int</td>
<td class="entry" headers="ID-00004e37__entry__3">The ID of the error.
This field is returned only when request_error is true.
See <strong>Errors</strong> section below for all possible error IDs and
their meanings.</td>
<td class="entry" headers="ID-00004e37__entry__4">3</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00004e37__entry__1">ad_tag</td>
<td class="entry" headers="ID-00004e37__entry__2">string</td>
<td class="entry" headers="ID-00004e37__entry__3">The ad tag that is
placed on the web page if Xandr wins your
auction. Note: If you wish to track clicks, <span
class="ph">Xandr can add a macro for your click URL: <code
class="ph codeph">&amp;pubclick=%%pub_click_url%%</code>. To learn more
about this functionality, please reach out to your implementation
team.</td>
<td class="entry" headers="ID-00004e37__entry__4">See examples
below</td>
</tr>
</tbody>
</table>





## Supply Templates

For VAST video creatives, if you require custom parameters not normally
included in the `ad_tag` of the bid response, you can
ask Xandr to build a supply template for you.
Here's how it works:

1.  You communicate directly with your Xandr
    representative about the custom parameters you would like returned
    for VAST video creatives.

2.  If Xandr agrees with your
    request, Xandr builds a supply template for
    you and sends you the ID.

3.  In your bid requests for VAST video creatives, you include the
    supply template ID in the `template_id` field.

4.  In bid responses, the supply template adds your custom parameters to
    the `<Extensions>` section of the `ad_tag`.

    Example

Let's say you want Xandr to include the
following supplementary information for VAST video creatives:

- Bidding strategy (CPM, CPC, etc.)
- Currency
- Source of the bid

The supply template that Xandr would build for
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



Note: For the full bid response for a
VAST video creative, see the **Examples** below.







## Errors

When an error prevents Xandr from submitting a
bid, the `request_error_id` in the response helps you diagnose the
problem.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004e37__entry__49" class="entry"><pre
class="pre codeblock"><code>request_error_id</code></pre></th>
<th id="ID-00004e37__entry__50" class="entry">Meaning</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00004e37__entry__49">1</td>
<td class="entry" headers="ID-00004e37__entry__50">The syntax of the bid
request was incorrect.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00004e37__entry__49">2</td>
<td class="entry" headers="ID-00004e37__entry__50">The member ID in the
request could not be parsed.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00004e37__entry__49">3</td>
<td class="entry" headers="ID-00004e37__entry__50">The request did not
map to a Xandr user ID.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00004e37__entry__49">4</td>
<td class="entry" headers="ID-00004e37__entry__50">The bid request did
not include <code class="ph codeph">external_auction_id</code>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00004e37__entry__49">5</td>
<td class="entry" headers="ID-00004e37__entry__50">The request did not
map to a placement.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00004e37__entry__49">6</td>
<td class="entry" headers="ID-00004e37__entry__50">The <span
class="ph">Xandr auction failed.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00004e37__entry__49">7</td>
<td class="entry" headers="ID-00004e37__entry__50">The requested <code
class="ph codeph">ad_format</code> did not match the placement
format.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00004e37__entry__49">8</td>
<td class="entry" headers="ID-00004e37__entry__50">The inventory
(e.g. <code class="ph codeph">page_url)</code> or user
(e.g. ip_address) passed is blocked by <span
class="ph">Xandr.**</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00004e37__entry__49">9</td>
<td class="entry" headers="ID-00004e37__entry__50">The <code
class="ph codeph">ad_format</code> parameter (required) was not passed
in the request.</td>
</tr>
</tbody>
</table>

 \*\*Note: Error ID 8 will also trigger if the domain passed is excluded
by the global targeting profile of the buying member.





## Examples

Xandr submits a bid

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

  
Xandr does not submit a bid - No bid available

``` pre
{
   "external_auction_id":"A4s24536",
   "no_bid":true,
   "request_error":false
}
```

  
Xandr does not submit a bid - Error

``` pre
{
   "external_auction_id":"A4s24536",
   "no_bid":true,
   "request_error":true,
   "request_error_id":2
}
```

  
Xandr submits a VAST video creative (NOT YET
SUPPORTED)

When Xandr submits a VAST video creative:

- The creative is passed as escaped VAST XML in the `ad_tag` field.
- If the bid wins your auction, you must unescape the content before
  placing it on the page.
- If the bid wins your auction, you must insert the winning bid price
  (in CPM) into the `%%pricepaid%%` macro in the `ad_tag`.
- If you have asked Xandr to build a supply
  template that passes custom parameters in VAST creative bids, those
  custom parameters will appear inside the `<Extensions>` tag of the XML
  within the `ad_tag`. In the example below, the supply template has
  added supplementary information about the price of the bid. For more
  details about about supply templates, see **Supply Templates** above. 



Tip: Following industry standard
practice, Xandr does not log a VAST impression
on win. Instead, the impression is logged only once the video starts
(user clicks play, etc.).

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

The deal fields below are visible to Xandr
employees only.



Xandr submits a bid for a deal

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






