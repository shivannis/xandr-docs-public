---
Title : Technical Limitations of Mobile Buying
Description : In <a href="welcome-to-mobile.md" class="xref">Welcome to Mobile</a>,
ms.date: 10/28/2023
---


# Technical Limitations of Mobile Buying



In <a href="welcome-to-mobile.md" class="xref">Welcome to Mobile</a>,
we provided an overview of the differences between web and mobile app
buying (Summary: they're mostly the same). We also mentioned that where
feature disparity exists between web and mobile app, the disparity is
often due to technical limitations. This document will describe some of
these limitations, which include:

- Identifying users and frequency capping across devices
- Limited post-view conversion attribution capabilities
- Geographic targeting

User Identification and Frequency Capping

Frequency capping on mobile devices works on a per-device basis; in
other words, if you switch devices, your frequency cap is reset. This is
because reliably identifying users across multiple devices is currently
an unsolved problem. For example, if you see an ad multiple times from
your Android phone and hit the frequency cap defined by the
line item or campaign serving that ad, you
shouldn't see that ad anymore. If you switch to your iPad later in the
evening for some bedtime reading, you won't be identified as the same
user by the line item or campaign, and you may
see ads from that same line item or campaign
again.

In addition, very strict frequency caps are less reliable than they are
on web inventory. This is due to the fact that our ad server waits
longer to count mobile impressions than web. (For more information about
why we do this, see
<a href="managing-mobile-discrepancies.md" class="xref">Managing
Mobile Discrepancies</a>). As a result, when simultaneous or almost
simultaneous auctions occur for the same inventory, very strict
frequency caps can be broken. This can occur on slices of inventory
where there are lots of biddable impressions per available user.

Also, third-party cookies are not always available on mobile devices,
since not all mobile browsers accept these cookies. (For more
information, see
<a href="mobile-targeting-and-attribution-challenges.md"
class="xref">Mobile Targeting and Attribution Challenges</a>.) In order
to compensate for the lack of third-party cookies,
Xandr associates the device IDs used by
different apps running on the same device with the same
Xandr cookie ID; this lets us do frequency
capping across apps and the browser on the same device. For example, an
app might pass in the device ID value `idfa=123` on a mobile ad call. If
Xandr has already seen that device and
associated it with a cookie ID, frequency capping and user
identification will work normally. Furthermore, a single
Xandr cookie ID can be mapped to many different
device IDs. That way if a device sends us an `idfa` from one app, an
`openudid` from another, we can still tie it all back to the same
Xandr ID for user identification and frequency
capping purposes. For more information about the device ID parameters
that can be sent to Xandr using our mobile ad
call, see the
<a href="mobile-ad-call-reference.md" class="xref">Mobile Ad Call
Reference</a>.

Device Targeting and Reporting Caveats

In some cases, mobile device targeting (and subsequent reporting) will
display logical inconsistencies. For example, an iPhone could be mapped
to an iPad
<a href="https://en.wikipedia.org/wiki/User_agent" class="xref"
target="_blank">user agent</a> (UA). This inconsistency can occur
because of the following technical issues:

- We look up OS and Browser from the UA ourselves, but we retrieve
  device info from a third party. The two sources are not logically
  verified.
- OpenRTB integrations allow suppliers to override individual device
  fields.
- Apps are responsible for sending a UA, which isn't always reliable.
- On a single click, suppliers may send some data from an app UA, and
  some from a browser UA.

Conversion Attribution

The following table shows whether conversion attribution works in
different mobile scenarios. Note that post-view conversion attribution
is only possible across non-Safari mobile browsers at this time.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006eba__entry__1" class="entry">Conversion Type</th>
<th id="ID-00006eba__entry__2" class="entry">Browser to Browser
(non-Safari)</th>
<th id="ID-00006eba__entry__3" class="entry">Browser to Browser
(Safari)</th>
<th id="ID-00006eba__entry__4" class="entry">App to Browser (iOS +
Android)</th>
<th id="ID-00006eba__entry__5" class="entry">App to App Store
Download</th>
<th id="ID-00006eba__entry__6" class="entry">Browser to App Store
Download</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00006eba__entry__1">Post-click</td>
<td class="entry" headers="ID-00006eba__entry__2">Yes</td>
<td class="entry" headers="ID-00006eba__entry__3">Yes</td>
<td class="entry" headers="ID-00006eba__entry__4">Yes***</td>
<td class="entry" headers="ID-00006eba__entry__5">Yes**</td>
<td class="entry" headers="ID-00006eba__entry__6">Yes**</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006eba__entry__1">Post-view</td>
<td class="entry" headers="ID-00006eba__entry__2">Yes</td>
<td class="entry" headers="ID-00006eba__entry__3">No</td>
<td class="entry" headers="ID-00006eba__entry__4">No</td>
<td class="entry" headers="ID-00006eba__entry__5">No</td>
<td class="entry" headers="ID-00006eba__entry__6">No</td>
</tr>
</tbody>
</table>

- \* Functional for 5-10% of Safari users who have previously clicked on
  an ad.
- \*\* Functional using a third party conversion tracking partner. For
  more information, see
  <a href="set-up-third-party-mobile-app-install-tracking.md"
  class="xref">Set Up Third-Party Mobile App Install Tracking</a>.
- \*\*\* Functional when the conversion happens in the same browser that
  the app opens for click through. For example, if the app opens an
  in-app browser, the conversion needs to occur in the in-app browser.



<b>Important:</b> There is currently no way to
do conversion attribution that links an event on a mobile device (such
as a view) to a later conversion that happens in a desktop browser.



Geographic Targeting

If the <a
href="mobile-sdk/xandr-mobile-sdks.md"
class="xref" target="_blank">SDK</a> a mobile app uses to show ads has
permission from the user to provide their current latitude/longitude
data, you'll be able to use it for mobile targeting. If not, you can
still use <a href="additional-geo-restrictions-ali.md" class="xref"
title="In addition to country, you can also restrict the impressions you target based on other geographic details of the users viewing them.">Geography
Targeting</a>, which uses the device's IP address, if any is available.
This is less precise than lat/long, but more commonly available. Some
apps also allow you to do geo-targeting based on the zip code of the
user when they signed up for the app.



<b>Note:</b> About 15-30% of mobile
impressions carry lat/long information.



**Related Topics**

- <a href="frequency-and-recency-caps.md" class="xref"
  title="From the Audience &amp; Location Targeting section, you can apply frequency and recency caps to your line item to prevent overexposure by limiting how many (frequency) and how often (recency) creatives are shown to a user. You can use the Creative Frequency and Recency Report to view how often and how frequently users are viewing a specific advertiser&#39;s creatives.">Frequency
  and Recency Caps</a>
- <a href="welcome-to-mobile.md" class="xref">Welcome to Mobile</a>
- <a href="set-up-third-party-mobile-app-install-tracking.md"
  class="xref">Set Up Third-Party Mobile App Install Tracking</a>
- <a href="managing-mobile-discrepancies.md" class="xref">Managing
  Mobile Discrepancies</a>
- <a href="mobile-targeting-and-attribution-challenges.md"
  class="xref">Mobile Targeting and Attribution Challenges</a>
- <a href="mobile-ad-call-reference.md" class="xref">Mobile Ad Call
  Reference</a>




