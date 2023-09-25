---
Title : Mobile Buying FAQ
Description : ## **Mobile Ad Campaigns**
## What targeting can I use on mobile?
You can target (and report on) in-app and device-optimized web
impressions by:

- **Device Type** - Phone, Tablet, or Desktops & Laptops
- **Device Make and Model** - Apple iPhone, HTC Droid Incredible, etc.
---


# Mobile Buying FAQ





## **Mobile Ad Campaigns**





## What targeting can I use on mobile?

You can target (and report on) in-app and device-optimized web
impressions by:



- **Device Type** - Phone, Tablet, or Desktops & Laptops
- **Device Make and Model** - Apple iPhone, HTC Droid Incredible, etc.
- **Carrier** - Verizon, Sprint, etc.
- **Connection Type** - Carrier-based or wifi/static
- **Mobile Operating System** - Android, iPad, etc.
- **Mobile Browser** - Android, Blackberry, etc.



System (i.e., device type, device make/model, OS, browser, carrier and
connection type), frequency, geography, daypart, segments, and
test/control targeting all work for in-app and device-optimized web
campaigns.

However, targeting based on tag position and tag query strings is
possible only for device-optimized web campaigns.

For more information about how to set up a mobile campaign, see
<a href="buying-mobile-inventory.md" class="xref">Buying Mobile
Inventory</a>.

For information on our mobile reporting capabilities, see
<a href="mobile-specific-reporting.md" class="xref">Mobile-Specific
Reporting</a>.





## Can I target geo-locations (latitude/longitude coordinates)?

We currently have targeting for one latitude/longitude pair and a radius
around that pair. In targeting, you can define the radius, but the
smaller the radius, the lower the reach. We are also reliant on sellers
to be able to access this information from mobile devices and populate
ad requests with this information, which many sellers are unable to do.
For each impression (display, video, etc.) that is sent out from
Xandr's bidder, there is metadata associated
with it including latitude and longitude for the location. However,
Xandr does not assure the accuracy of those
coordinates. Also, latitude/longitude coordinates are not being used to
determine geography (zip code, metro code, country) targeting.





## I have mobile device identifiers I would like to target. How can I accomplish this?

In the <a
href="xandr-api/batch-segment-service.md"
class="xref" target="_blank">Batch Segment Service</a> there is the
ability to upload device identifiers and create an audience segment that
can be targeted. See example 6 on the <a
href="xandr-api/batch-segment-service---file-format.md"
class="xref" target="_blank">Batch Segment File Format</a> page for an
IDFA batch segment upload example. Note that the flag to indicate which
type of device identifier you are uploading is through use of separator
5 in the batch segment file format.





## What types of mobile inventory can I buy?

There are two types of mobile inventory: in-app and device-optimized web
sites.

<div id="mobile-buying-faq__p-60da834c-c941-4cff-8d85-78b67281cc69"
>

- **In-App** - Applications that are installed on mobile phones and
  tablets, i.e., Angry Birds. At this time, all in-app inventory comes
  from external supply partners such as Smaato and Microsoft Advertising
  Exchange. Therefore, it is possible to buy third-party but not direct
  in-app inventory.
- **Device-Optimized Web Sites** - Web sites that are optimized for
  viewing and interaction in browsers on mobile phones and tablets. At
  this time, most device-optimized web inventory comes from external
  supply partners. However, it is possible to buy your own
  device-optimized web inventory by placing mobile web ad tags on your
  pages. For more information about using our `/mob` ad tag, see
  <a href="mobile-ad-call-reference.md" class="xref">Mobile Ad Call
  Reference</a>.







## Can I enable my device-optimized web inventory for direct buying?

Yes, you can use our `/mob or /ttj` ad tags to make mobile ad calls from
your device-optimized pages.





## Can I enable my in-app inventory for direct buying?

Yes. To enable serving ads into a mobile app, we use a placement tag
that's been modified to pass additional mobile-specific data. We're
developing mobile SDKs (Currently undergoing a closed alpha. Please
inquire with your Xandr representative if you
wish to join the alpha.) which will make this even easier for app
publishers. For more information, see the <a
href="mobile-sdk/xandr-mobile-sdks.md"
class="xref" target="_blank">Mobile SDKs</a>.





## Does conversion tracking work in mobile browsers?

In mobile browsers, post-click conversion tracking works just like it
does in web browsers. Post-view conversions, however, can only be
tracked across non-Safari mobile browsers. If you use the "Optimize to a
predicted CPA goal" strategy in a line item or campaign, please do so
only for post-click scenarios.





## Does conversion tracking work in mobile apps?

Yes. Even if the user converts in a separate mobile browser later
(having closed the app in which they initially clicked the ad), the
correlation to the click in the app can still be tracked. This is
because we overwrite the browser cookie with the user ID from the app.





<b>Note:</b> Xandr
does not have an app install tracking solution at this time. We do
provide instructions for integrating with an install tracking vendor;
see <a href="set-up-third-party-mobile-app-install-tracking.md"
class="xref">Set Up Third-Party Mobile App Install Tracking</a>.









## Can I track app install events from browser impressions or clicks?

Tracking conversion events in this cross-environment scenario is
dependent on the ability of a third party app install tracker to track a
click or view event to an app install. Most install tracking providers
rely on fingerprinting/statistical ID methods to handle this
attribution, which generally relies on creative click.




## Can I track browser conversions events from in app impressions or clicks?

Tracking conversion events in this cross environment scenario may be
possible if a third party tracking solution is used. Xandr conversion
pixels placed on advertiser conversion pages may show conversions from
app impressions or clicks. This will happen if we have linked the user
identifier between the browser and the app environments. There are a
subset of users where we have accomplished this cross app to browser
mapping, but generally is not a solution to handle attribution for all
users.



## Is payment on a per-click (CPC) or per-conversion (CPA) basis available?

At this time, most in-app inventory and most device-optimized web
inventory comes from external supply partners such as Smaato and
Microsoft Advertising Exchange. External supply partners do not accept
payment on a per-click (CPC) or per-conversion (CPA) basis. Therefore,
we recommended only paying on a per-impression (CPM) basis.





## **Mobile Reporting FAQ**





## Is log-level reporting (formerly known as data siphon) available?

Yes. For more details about log-level reporting, see the <a
href="log-level-data/log-level-data-feeds.md"
class="xref" target="_blank">Log-Level Data Feeds</a>.





## Can I report on device identifiers I have delivered on?

Yes, either through use of <a href="creative-macros.md" class="xref"
title="You can insert creative macros into your creative third-party tags, impression trackers, landing page URLs, and third-party pixels for reporting and optimization purposes.">Creative
Macros</a> or in the <a
href="log-level-data/log-level-data-feeds.md"
class="xref" target="_blank">Log-Level Data Feeds</a>.





## **General Mobile FAQ**





## What types of creatives can serve in mobile campaigns?

You can serve standard banners and <a
href="https://www.iab.com/guidelines/mobile-rich-media-ad-interface-definitions-mraid/"
class="xref" target="_blank">MRAID</a> creatives. For instructions on
how to set up your rich media creatives, see
<a href="run-rich-media-creatives-on-mobile-inventory.md"
class="xref">Run Rich Media Creatives on Mobile Inventory</a>.





<b>Tip:</b> For more information about MRAID
(and mobile video), see <a
href="industry-reference/mraid-and-mobile-video-tutorial.md"
class="xref" target="_blank">MRAID and Mobile Video Tutorial</a>







We recommend using the following creative sizes on mobile devices:

- 120x600
- 160x600
- 300x50
- 300x250
- 320x50
- 468x60
- 728x90







## Why is identifying users so hard? Can't we just use cookies?

See <a
href="monetize_monetize-standard/technical-limitations-of-mobile-buying.md"
class="xref" target="_blank">Technical Limitations of Mobile Buying</a>
for the reasons why it's hard.






