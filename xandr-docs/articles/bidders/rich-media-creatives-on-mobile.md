---
Title : Rich Media Creatives on Mobile
Description : This document describes how to set up your rich media creatives to serve
on mobile devices. It also contains a list of media types supported by
---


# Rich Media Creatives on Mobile



This document describes how to set up your rich media creatives to serve
on mobile devices. It also contains a list of media types supported by
each major seller.

<div id="rich-media-creatives-on-mobile__note_fhs_fw5_4wb"


Note:

For the purposes of this document, rich media creatives are defined as
interstitials and MRAID expandables, but not video.



<div id="rich-media-creatives-on-mobile__RichMediaCreativesonMobile-Interstitials"
>

## Interstitials

Buyers can target and purchase interstitial impressions by using
creatives with sizes appropriate for mobile interstitials. Typical
mobile interstitial sizes include:

<table id="rich-media-creatives-on-mobile__table_x4c_hw5_4wb"
class="table">
<thead class="thead">
<tr class="header row">
<th id="rich-media-creatives-on-mobile__table_x4c_hw5_4wb__entry__1"
class="entry colsep-1 rowsep-1">Device Type</th>
<th id="rich-media-creatives-on-mobile__table_x4c_hw5_4wb__entry__2"
class="entry colsep-1 rowsep-1">Portrait Size</th>
<th id="rich-media-creatives-on-mobile__table_x4c_hw5_4wb__entry__3"
class="entry colsep-1 rowsep-1">Landscape Size</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_x4c_hw5_4wb__entry__1">Phone</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_x4c_hw5_4wb__entry__2">320x480</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_x4c_hw5_4wb__entry__3">480x320</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_x4c_hw5_4wb__entry__1">Tablet</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_x4c_hw5_4wb__entry__2">768x1024</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_x4c_hw5_4wb__entry__3">1024x768</td>
</tr>
</tbody>
</table>

When setting up an interstitial creative, buyers should choose the
Standard Banner media type and enter one of the interstitial creative
sizes listed above.

<div id="rich-media-creatives-on-mobile__note_ogp_jw5_4wb"
class="note warning note_warning">

Warning:

The Interstitial media type is not currently supported on external
mobile supply partners' inventory; you must select the Standard Banner
media type.





<div id="rich-media-creatives-on-mobile__RichMediaCreativesonMobile-MRAIDExpandables"
>

## MRAID Expandables

This section describes how to:

- Check the bid request for MRAID impressions
- Set up MRAID expandable creatives

**Check the bid request for MRAID impressions**

You can check the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Outgoing Bid Request to Bidders</a> to see
if the incoming impression supports MRAID creatives using the `api`
array. Check to see if the integers `3` (MRAID v1) or `5` (MRAID v2) are
in the array. If they are, the impression supports MRAID creatives using
that version of the specification.

For more information, see the IAB <a
href="http://www.iab.com/guidelines/mobile-rich-media-ad-interface-definitions-mraid/"
class="xref" target="_blank">MRAID specifications</a>.

**Set up MRAID expandable creatives**

You can run expandables on mobile app inventory using MRAID creatives.
These are trafficked as "Standard Banner" media types in common mobile
sizes such as 300x50. Enter the HTML or JavaScript code of your MRAID
creative in the `media_url` or `content` fields of the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>.

Here is an example MRAID creative; note that the line at the top
including `"mraid.js"` is required for it to work:

``` pre
<script src="mraid.js"></script>
<img src="data:image/png" style="display: none" onerror="
        (function(img) {
            var params = {'placementId': '123456','clickUrl':'${CLICK_URL}','clickEvent':'advertiser','externalAdServer':'AppNexus'};
            var req = document.createElement('script');
            req.id = params.scriptId = 'the-company-script-' + (window.theCompanyScriptIndex = (window.theCompanyScriptIndex||0)+1);
            params.clientTimestamp = new Date/1000;
            req.src = (window.location.protocol == 'https:' ? 'https' : 'http') + '://ads.the-company.com/mraid-ad.js?';
            for (var k in params) {
                req.src += '&amp;' + encodeURIComponent(k) + '=' + encodeURIComponent(params[k]);
            }
            img.parentNode.insertBefore(req, img.nextSibling);
        })(this);
    "/>
```

**MRAID-Certified**

Creatives that are MRAID-certified may serve on external mobile supply
sources. During the Xandr creative audit process, MRAID creatives with
expandable characteristics will only be flagged with the MRAID technical
attribute and not with the expandable technical attribute.

**Non-MRAID-Certified**

Non-MRAID creatives that have expandable features will not serve on
external mobile supply. If there are expandable features, our audit team
will mark these creatives as having an Expandable media type.
Expandables will not serve on external mobile supply.

<div id="rich-media-creatives-on-mobile__note_gdn_rw5_4wb"
class="note warning note_warning">

Warning:

Creatives that are of the media type Expandable will not serve on
external mobile supply.





<div id="rich-media-creatives-on-mobile__section_f2g_tw5_4wb"
>

## Supported Rich Media Types by Seller



Note:

All of the mobile sellers in this table support both interstitials and
expandables.



<table id="rich-media-creatives-on-mobile__table_bqc_vw5_4wb"
class="table">
<thead class="thead">
<tr class="header row">
<th id="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__1"
class="entry colsep-1 rowsep-1">Mobile Seller</th>
<th id="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__2"
class="entry colsep-1 rowsep-1">Member ID</th>
<th id="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__3"
class="entry colsep-1 rowsep-1">MRAID Support?</th>
<th id="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__4"
class="entry colsep-1 rowsep-1">HTML5 Support?</th>
<th id="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__5"
class="entry colsep-1 rowsep-1">Supported Rich Media Vendors</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__1">Smaato</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__2">1752</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__5"><ul>
<li><p>Celtra v1-v3, MRAID</p></li>
<li><p>JustAd</p></li>
<li><p>Medialets</p></li>
<li><p>Crisp</p></li>
<li><p>Phluant</p></li>
<li><p>AdGibbon</p></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__1">MoPub</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__2">1813</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__5"><ul>
<li>Celtra</li>
<li>Medialets</li>
<li>Crisp</li>
<li>Adxcel</li>
<li>Sprout/InMobi</li>
<li><p>Xtopoly</p></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__1">Nexage</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__2">1868</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__5"><ul>
<li>Celtra</li>
<li>Medialets</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__1">Millennial
Media</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__2">2066</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__5"><ul>
<li>Addroid</li>
<li>AdGibbon</li>
<li>Adxcel</li>
<li>Celtra</li>
<li>Collective</li>
<li>Crisp</li>
<li>Flashtalking</li>
<li>GoldSpot</li>
<li>Google/DART</li>
<li>Innovid</li>
<li>JustAd</li>
<li>Medialets</li>
<li>MediaMind</li>
<li>Mediaplex</li>
<li>MixPo</li>
<li>Mobile-5</li>
<li>MobSmith</li>
<li>Phluant</li>
<li>Pointreach</li>
<li>Pointroll</li>
<li>Pontiflex</li>
<li>Simplytics</li>
<li>Sprout</li>
<li>Unruly Media</li>
<li>Vdopia</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__1">Microsoft
Mobile</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__2">280</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__1">Inneractive</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__2">2047</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-creatives-on-mobile__table_bqc_vw5_4wb__entry__5"><ul>
<li>Celtra</li>
<li>Phluant</li>
<li>Crisp</li>
<li>Medialets</li>
<li>AdGibbons</li>
</ul></td>
</tr>
</tbody>
</table>



<div id="rich-media-creatives-on-mobile__section_rgz_zw5_4wb"
>

## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/expandables-and-rich-media.html"
  class="xref" target="_blank">Expandables and Rich Media</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
  class="xref" target="_blank">Creative Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-template-service.html"
  class="xref" target="_blank">Creative Template Service</a>






