---
Title : Creative Macros
Description : You can insert creative macros into your creative third-party tags,
ms.date: 10/28/2023
impression trackers, landing page URLs, and third-party pixels for
reporting and optimization purposes.
---


# Creative Macros



You can insert creative macros into your creative third-party tags,
impression trackers, landing page URLs, and third-party pixels for
reporting and optimization purposes.

A creative macro is a text placeholder that is replaced with
impression-level information when a creative is served. This
impression-level information is transmitted to systems outside of
Xandr, which you can then use for reporting,
optimization, and many other purposes. When multiple values are
requested, data is sent in a comma separated list. For more information
about the creative macros that we support, see
<a href="supported-creative-macros.md" class="xref"
title="We have creative macros that can be used for all, mobile, and video impressions. We also support privacy and function macros.">Supported
Creative Macros</a>.

>

Every macro needs a key to precede it to communicate to the ad server
what information should be populated. In the example below, the keys are
`cb` and `age` and the macros are `${CACHEBUSTER}` and `${AGE}`:

``` pre
https://lensmaster.com/newsunglasses?cb=${CACHEBUSTER}&age=${AGE}
```

Keys are specific to the ad server. It's important to note that
Xandr auto-inserts click tracking and cache
buster macros for specific ad servers. For more information, see
<a href="auto-macro-insertion.md" class="xref"
title="When you add or edit third-party creative tags, Xandr automatically inserts the ${CLICK_URL} and ${CACHEBUSTER} macros into your creative third-party tags if the third-party ad server&#39;s format is recognized, which will allow you to quickly traffic your creatives.">Auto
Macro Insertion</a>. Additionally, most creative macros are populated by
our bidder engine with the exception of click tracking macros.
Therefore, they won't populate in creative previews, but only during
true auctions.





<b>Note:</b> Creative macros are
case-sensitive and aren't available for piggyback conversion pixels.



>

## Common Use Cases for Creative Macros

>

Inserting creative macros inside of third-party ad tags such as
`${CACHEBUSTER}` and `${CLICK_URL}` is a common use case, but you can
also use them in:

- Impression trackers
- Creative landing page URLs specified at the creative or
  line item or campaign level



<table
id="topic_19cd5b1d-3de3-4116-a6e1-bf524c9fee37__table_0403f7bd-f095-41cc-bd2b-42db0dc30074"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="topic_19cd5b1d-3de3-4116-a6e1-bf524c9fee37__table_0403f7bd-f095-41cc-bd2b-42db0dc30074__entry__1"
class="entry">Common Use Case</th>
<th
id="topic_19cd5b1d-3de3-4116-a6e1-bf524c9fee37__table_0403f7bd-f095-41cc-bd2b-42db0dc30074__entry__2"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="topic_19cd5b1d-3de3-4116-a6e1-bf524c9fee37__table_0403f7bd-f095-41cc-bd2b-42db0dc30074__entry__1">Third-Party
Ad Tag</td>
<td class="entry"
headers="topic_19cd5b1d-3de3-4116-a6e1-bf524c9fee37__table_0403f7bd-f095-41cc-bd2b-42db0dc30074__entry__2">You
have a dynamic ad server that accepts information about the user in
order to render a customized creative. You can pass in <code
class="ph codeph">${USER_IP}</code>, <code
class="ph codeph">${USER_CITY}</code>, and <code
class="ph codeph">${POSTAL_CODE}</code> to generate a highly relevant,
location-based creative for that user. You can also use creative macros
to pass information, such as Creative ID, Creative Size, Line Item ID,
and Advertiser ID, into the AdChoices tags.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="topic_19cd5b1d-3de3-4116-a6e1-bf524c9fee37__table_0403f7bd-f095-41cc-bd2b-42db0dc30074__entry__1">Impression
Tracker</td>
<td class="entry"
headers="topic_19cd5b1d-3de3-4116-a6e1-bf524c9fee37__table_0403f7bd-f095-41cc-bd2b-42db0dc30074__entry__2">You
would like to store a number of factors related to each impression for
reporting and analysis. You can use the <code
class="ph codeph">${CREATIVE_ID}</code>, <code
class="ph codeph">${CP_ID}</code> (campaign ID), <code
class="ph codeph">${PUBLISHER_ID}</code>, <code
class="ph codeph">${SITE_ID}</code>, and <code
class="ph codeph">${TAG_ID}</code> macros to transmit information about
the inventory you're buying back to your ad server. If you have
third-party creative tags from an ad server outside of your control such
as DART tags, you can use these macros to pass this same information to
an impression tracker. After you've stored this data, it can be used for
various purposes such as self-service reporting for your clients and
feeding a proprietary optimization algorithm.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="topic_19cd5b1d-3de3-4116-a6e1-bf524c9fee37__table_0403f7bd-f095-41cc-bd2b-42db0dc30074__entry__1">Landing
Page URL</td>
<td class="entry"
headers="topic_19cd5b1d-3de3-4116-a6e1-bf524c9fee37__table_0403f7bd-f095-41cc-bd2b-42db0dc30074__entry__2">You
would like to pass impression-level data into landing page URLs to
enable landing page optimization systems and provide valuable data about
impressions and creatives to your advertisers. A common creative macro
use case involves passing the <code class="ph codeph">${SSP_DATA}</code>
macro to the landing page URL to transmit server-side conversion pixel
data. For more information about how to use the <code
class="ph codeph">${SSP_DATA}</code> macro, see <a
href="server-side-conversion-pixels.md" class="xref">Server-Side
Conversion Pixels</a>.</td>
</tr>
</tbody>
</table>



>

## Related Topics

- <a href="create-a-third-party-network-pixel-for-your-creatives.md"
  class="xref"
  title="You can create third-party creative pixels at the advertiser level and then apply these pixels to some or all display creatives under that Network.">Create
  a Third-Party Network Pixel for Your Creatives</a>
- <a href="create-a-third-party-advertiser-pixel-for-your-creatives.md"
  class="xref"
  title="You can create third-party creative pixels at the advertiser level and then apply these pixels to some or all display creatives under that advertiser.">Create
  a Third-Party Advertiser Pixel for Your Creatives</a>
- <a href="click-tracking.md" class="xref"
  title="Click tracking serves many useful purposes within the ad serving industry as a whole. For Xandr, click tracking is necessary for optimizing to CPC and CPA goals, for bidding CPC and CPA, and for measuring a campaign&#39;s success.">Click
  Tracking</a>
- <a
  href="xandr-api/third-party-pixel-service.md"
  class="xref" target="_blank">Third-Party Pixel Service</a>






