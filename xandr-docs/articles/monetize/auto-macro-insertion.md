---
Title : Auto Macro Insertion
Description : When you add or edit third-party creative tags,
ms.date: 10/28/2023
Xandr automatically inserts the `${CLICK_URL}`
and `${CACHEBUSTER}` macros into your creative third-party tags if the
third-party ad server's format is recognized, which will allow you to
quickly traffic your creatives.
---


# Auto Macro Insertion



When you add or edit third-party creative tags,
Xandr automatically inserts the `${CLICK_URL}`
and `${CACHEBUSTER}` macros into your creative third-party tags if the
third-party ad server's format is recognized, which will allow you to
quickly traffic your creatives.

In some cases, Xandr will replace an ad server
macro with a macro specific to Xandr.



<b>Note:</b> You can also use the encoded
version of the `${CLICK_URL}` macro, such as `${CLICK_URL_ENC}`. For
more information, see <a href="click-tracking.md" class="xref"
title="Click tracking serves many useful purposes within the ad serving industry as a whole. For Xandr, click tracking is necessary for optimizing to CPC and CPA goals, for bidding CPC and CPA, and for measuring a campaign&#39;s success.">Click
Tracking</a>.



If the Xandr auto-tagger fails to automatically
insert the `${CLICK_URL}` and `${CACHEBUSTER}` macros into your
third-party tag, you can manually insert them into the appropriate
locations. For more information, see
<a href="click-tracking.md" class="xref"
title="Click tracking serves many useful purposes within the ad serving industry as a whole. For Xandr, click tracking is necessary for optimizing to CPC and CPA goals, for bidding CPC and CPA, and for measuring a campaign&#39;s success.">Click
Tracking</a>. If you don't know which parameter to use when inserting
the macro, contact your client.

>

## Inserting Macros into Third-Party Tags Automatically

Xandr can automatically insert the
`${CLICK_URL}` and `${CACHEBUSTER}` macros into a variety of third-party
tags such as Sizmek and Atlas.



<b>Note:</b> Xandr
can't auto insert the `${CLICK_URL}` and `${CACHEBUSTER}` macros into
Google's DDM tags. However, these third-party tags can still be manually
inserted.




Feel free to submit a
<a href="https://help.xandr.com/" class="xref" target="_blank">support
ticket</a> if you'd like to have a specific tag type added to our
supported list. When creating the support ticket, be sure to provide:

- the name of the ad server that these tags appear on.
- the exact parameters used to traffic the `${CLICK_URL}` and
  `${CACHEBUSTER}` macros.





>

## Related Topics

- <a href="creative-macros.md" class="xref"
  title="You can insert creative macros into your creative third-party tags, impression trackers, landing page URLs, and third-party pixels for reporting and optimization purposes.">Creative
  Macros</a>
- <a href="supported-creative-macros.md" class="xref"
  title="We have creative macros that can be used for all, mobile, and video impressions. We also support privacy and function macros.">Supported
  Creative Macros</a>






