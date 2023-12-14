---
Title : Run Rich Media Creatives on Mobile Inventory
Description : This document describes how to set up your rich media creatives to serve
ms.date: 10/28/2023
on mobile devices. It also contains a list of media types supported by
---


# Run Rich Media Creatives on Mobile Inventory



This document describes how to set up your rich media creatives to serve
on mobile devices. It also contains a list of media types supported by
each major seller. Note that this is not an exhaustive guide to
targeting and running mobile ad campaigns; for a complete description of
our mobile targeting, see
<a href="buy-mobile-inventory-via-rtb.md" class="xref">Buy Mobile
Inventory via RTB</a>.



<b>Note:</b> For the purposes of this
document, rich media creatives are defined as **interstitials** and
**MRAID expandables**, but not video.





<b>Tip:</b>

- For an introduction to how MRAID and Mobile Video work, see <a
  href="industry-reference/mraid-and-mobile-video-tutorial.md"
  class="xref" target="_blank">MRAID and Mobile Video Tutorial</a>
- For more information on how to correctly submit your mobile creatives
  (including MRAID) for audit, see
  <a href="mobile-creative-auditing.md" class="xref"
  title="Depending upon the type of mobile creative that you&#39;re attempting to serve on the Xandr platform, the audit process may vary. To ensure that your mobile creatives are successfully audited, you should adhere to our audit processes for mobile creatives.">Mobile
  Creative Auditing</a>



Interstitials

Buyers can target and purchase interstitial impressions by using
creatives with sizes appropriate for mobile interstitials. Typical
mobile interstitial sizes include:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006b42__entry__1" class="entry">Device Type</th>
<th id="ID-00006b42__entry__2" class="entry">Portrait Size</th>
<th id="ID-00006b42__entry__3" class="entry">Landscape Size</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00006b42__entry__1">Phone</td>
<td class="entry" headers="ID-00006b42__entry__2">320x480</td>
<td class="entry" headers="ID-00006b42__entry__3">480x320</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006b42__entry__1">Tablet</td>
<td class="entry" headers="ID-00006b42__entry__2">768x1024</td>
<td class="entry" headers="ID-00006b42__entry__3">1024x768</td>
</tr>
</tbody>
</table>



<b>Note:</b> For an app interstitial, the size
is 1x1.



When setting up an interstitial creative, buyers should select the
Standard Banner media type and enter
one of the interstitial creative sizes listed above. The above sizes are
the most common interstitial sizes and apply for all operating systems.
Although these creatives will serve as interstitials on mobile devices,
they are really just standard, static banner creatives.



<b>Warning:</b> The **Interstitial** media
type is not currently supported on external mobile supply partners'
inventory; you must select the **Standard Banner** media type.



MRAID Expandables

You can run expandables on mobile app inventory using MRAID creatives.
These are trafficked as **Standard Banner** media types in common mobile
sizes such as 300x50. Select Third-party
creative and enter the HTML or JavaScript code of your MRAID
creative in the **Tag** text area.

Here is an example MRAID creative; note that the line at the top
including `"mraid.js"` is required for it to work:

``` pre
<script src="mraid.js"></script>
<img src="media/png" style="display: none" onerror="
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

MRAID-Certified

Creatives that are MRAID-certified may serve on external mobile supply
sources. During the Xandr creative audit
process, MRAID creatives with expandable characteristics will only be
flagged with the MRAID technical attribute and not with the expandable
technical attribute.

Non-MRAID-Certified

Non-MRAID creatives that have expandable features will **not** serve on
external mobile supply. If there are expandable features, our audit team
will mark these creatives as having an **Expandable** media type.
Expandables will not serve on external mobile supply.



<b>Warning:</b> Creatives that are of the the
media type **Expandable** will **not** serve on external mobile supply.

For more information about how Xandr audits
mobile creatives, see
<a href="mobile-creative-auditing.md" class="xref"
title="Depending upon the type of mobile creative that you&#39;re attempting to serve on the Xandr platform, the audit process may vary. To ensure that your mobile creatives are successfully audited, you should adhere to our audit processes for mobile creatives.">Mobile
Creative Auditing</a>.



Supported Rich Media Types by Seller

All of the mobile sellers in this table support both interstitials and
expandables.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006b42__entry__10" class="entry">Mobile Seller</th>
<th id="ID-00006b42__entry__11" class="entry">Member ID</th>
<th id="ID-00006b42__entry__12" class="entry">MRAID Support?</th>
<th id="ID-00006b42__entry__13" class="entry">HTML5 Support?</th>
<th id="ID-00006b42__entry__14" class="entry">Supported Rich Media
Vendors</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00006b42__entry__10">Smaato</td>
<td class="entry" headers="ID-00006b42__entry__11">1752</td>
<td class="entry" headers="ID-00006b42__entry__12">Yes</td>
<td class="entry" headers="ID-00006b42__entry__13">Yes</td>
<td class="entry" headers="ID-00006b42__entry__14"><ul>
<li>Celtra v1-v3, MRAID</li>
<li>JustAd</li>
<li>Medialets</li>
<li>Crisp</li>
<li>Phluant</li>
<li>AdGibbon</li>
<li><a href="https://www.smaato.com/certified-rich-media-vendors/"
class="xref"
target="_blank">https://www.smaato.com/certified-rich-media-vendors/</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006b42__entry__10">MoPub</td>
<td class="entry" headers="ID-00006b42__entry__11">1813</td>
<td class="entry" headers="ID-00006b42__entry__12">Yes</td>
<td class="entry" headers="ID-00006b42__entry__13">Yes</td>
<td class="entry" headers="ID-00006b42__entry__14"><ul>
<li>Celtra</li>
<li>Medialets</li>
<li>Crisp</li>
<li>Adxcel</li>
<li>Sprout/inmobi</li>
<li>Xtopoly</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006b42__entry__10">Nexage</td>
<td class="entry" headers="ID-00006b42__entry__11">1868</td>
<td class="entry" headers="ID-00006b42__entry__12">Yes</td>
<td class="entry" headers="ID-00006b42__entry__13">Yes</td>
<td class="entry" headers="ID-00006b42__entry__14"><ul>
<li>Celtra</li>
<li>Medialets</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006b42__entry__10">Millennial Media</td>
<td class="entry" headers="ID-00006b42__entry__11">2066</td>
<td class="entry" headers="ID-00006b42__entry__12">Yes</td>
<td class="entry" headers="ID-00006b42__entry__13">Yes</td>
<td class="entry" headers="ID-00006b42__entry__14"><ul>
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
<li>Mediamind</li>
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
<td class="entry" headers="ID-00006b42__entry__10">Microsoft Mobile</td>
<td class="entry" headers="ID-00006b42__entry__11">280</td>
<td class="entry" headers="ID-00006b42__entry__12">Yes</td>
<td class="entry" headers="ID-00006b42__entry__13">Yes</td>
<td class="entry" headers="ID-00006b42__entry__14"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006b42__entry__10">Inneractive</td>
<td class="entry" headers="ID-00006b42__entry__11">2047</td>
<td class="entry" headers="ID-00006b42__entry__12">Yes</td>
<td class="entry" headers="ID-00006b42__entry__13">Yes</td>
<td class="entry" headers="ID-00006b42__entry__14"><ul>
<li>Celtra</li>
<li>Phluant</li>
<li>Crisp</li>
<li>Medialets</li>
<li>AdGibbons</li>
</ul></td>
</tr>
</tbody>
</table>

Related Topics

- <a href="mobile-creative-auditing.md" class="xref"
  title="Depending upon the type of mobile creative that you&#39;re attempting to serve on the Xandr platform, the audit process may vary. To ensure that your mobile creatives are successfully audited, you should adhere to our audit processes for mobile creatives.">Mobile
  Creative Auditing</a>
- <a href="buying-mobile-inventory.md" class="xref">Buying Mobile
  Inventory</a>




