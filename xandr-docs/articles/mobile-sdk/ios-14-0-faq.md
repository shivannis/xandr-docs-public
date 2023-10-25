---
Title : iOS 14.0 FAQ
Description : This document provides an FAQ in regards to the release of Apple's iOS
14.0 in relation to the Xandr iOS SDK. Specific
ms.custom : android-ios
---


# iOS 14.0 FAQ



This document provides an FAQ in regards to the release of Apple's iOS
14.0 in relation to the Xandr iOS SDK. Specific
questions on iOS 14.0 should be researched on
the <a href="https://www.apple.com/ios/ios-14-preview/" class="xref"
target="_blank">Apple release site</a>.



<b>Warning:</b>

This Document is written from the perspective of
Xandr Mobile SDK, other parts of our Platform
were not considered when creating this FAQ. If you have a specific
question about Xandr's support for
SKAdNetwork/iOS14, please reach out to our support team.





## What is Xandr Mobile SDK doing to support AppTrackingTransparency?

- Xandr's support for AppTrackingTransparency comes from two distinct
  point-of-views, what we expect the Publisher App to do and what we are
  changing in the Xandr Mobile SDK.
  - As per the requirements by Apple in iOS14 and above, our
    expectations are that the Publisher App will
    - use the <a
      href="https://developer.apple.com/documentation/apptrackingtransparency?language=objc"
      class="xref" target="_blank">App Tracking Transparency Framework</a>
    - present an app-tracking authorization request to the user
    - request the user's consent as described in the <a
      href="https://developer.apple.com/documentation/apptrackingtransparency/attrackingmanager/3547037-requesttrackingauthorizationwith?language=objc"
      class="xref"
      target="_blank">requestTrackingAuthorizationWithCompletionHandler</a>.
  - If publishers decide not to show the app-tracking authorization
    request to users, then the authorization status will either be
    *ATTrackingManagerAuthorizationStatusNotDetermined* or
    *ATTrackingManagerAuthorizationStatusRestricted*. These cases will
    be treated the same way as
    *ATTrackingManagerAuthorizationStatusDenied*.
  - The below table describes how the SDK will treat <a
    href="https://developer.apple.com/documentation/apptrackingtransparency/attrackingmanagerauthorizationstatus?language=objc"
    class="xref" target="_blank">ATTrackingManagerAuthorizationStatus</a>
    value.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000035a5__entry__1"
class="entry">ATTrackingManagerAuthorizationStatus</th>
<th id="ID-000035a5__entry__2" class="entry">Xandr SDK's treatment of
limit_ad_tracking field in AdRequest</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-000035a5__entry__1">ATTrackingManagerAuthorizationStatusAuthorized</td>
<td class="entry" headers="ID-000035a5__entry__2"><ul>
<li>IDFA is supported</li>
<li>Publisher 1st party data is supported and optional [<a
href="user-id-s--mapping-on-ios.md"
class="xref" target="_blank">iOS user id doc publisher first party
id</a>]</li>
<li>Industry IDs are supported (Liveramp IDL, NetID, etc) and optional
[<a
href="user-id-s--mapping-on-ios.md"
class="xref" target="_blank">iOS user id doc external user id</a>]</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000035a5__entry__1">ATTrackingManagerAuthorizationStatusDenied</td>
<td rowspan="3" class="entry" headers="ID-000035a5__entry__2"><ul>
<li>IDFA is not supported</li>
<li>Publisher 1st party data is supported [<a
href="user-id-s--mapping-on-ios.md"
class="xref" target="_blank">iOS user id doc publisher id</a>]</li>
<li>Industry IDs are not supported (Liveramp IDL, NetID, etc) [<a
href="user-id-s--mapping-on-ios.md"
class="xref" target="_blank">iOS user id doc external user id</a>]</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000035a5__entry__1">ATTrackingManagerAuthorizationStatusNotDetermined</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000035a5__entry__1">ATTrackingManagerAuthorizationStatusRestricted</td>
</tr>
</tbody>
</table>



<b>Note:</b>

It is the responsibility of the publisher to present the authorization
requests. Xandr SDKs will not perform this task.







## What is happening to IDFA in iOS14?

Xandr SDK will fetch and send valid IDFA in ad request only if the
authorization status is
*ATTrackingManagerAuthorizationStatusAuthorized*.



<b>Note:</b>

If you are concerned with a high volume of users opting out of tracking
in iOS14 and above and what options Xandr will use to replace IDFA,
please reach out to the mobile SDK team. We will pass your concerns on
to the correct team responsible for IDFA.







## What happens if App's do not update to v7.6 of SDK release?

If the user is on iOS14 and the app has not updated to v7.6.2+ of the
SDK, AdRequest will be sent with limit_ad_tracking:true(This is because
Xandr SDK will still be using deprecated iOS13 <a
href="https://developer.apple.com/documentation/adsupport/asidentifiermanager/1614148-advertisingtrackingenabled?language=objc"
class="xref" target="_blank">API</a> in this case).





## What is Xandr Mobile SDK doing to support SKAdNetwork?

<a href="https://developer.apple.com/documentation/storekit/skadnetwork"
class="xref" target="_blank">SKAdNetwork</a> and related changes in
iOS14 are specific for attributing app installations. Xandr Mobile SDK
has traditionally relied on third parties such as <a
href="https://www.appsflyer.com/blog/aggregated-attribution-solution-ios14/"
class="xref" target="_blank">Appflyer</a> and
<a href="https://www.kochava.com/getting-prepared-for-ios-14/"
class="xref" target="_blank">Kochava</a> for attributing app installs
and they continue to support app install attribution in iOS14 and above.
In addition to Appflyer and Kochava, we are associated with the
following app install tracking vendors.

- <a href="https://www.flurry.com/" class="xref"
  target="_blank">Flurry</a>
- <a href="https://www.sam4mobile.com/" class="xref"
  target="_blank">Sam4Mobile</a>
- <a href="https://www.appsflyer.com/" class="xref"
  target="_blank">AppsFlyer</a>
- <a href="https://tapstream.com/" class="xref"
  target="_blank">TapStream</a>
- <a href="https://www.mdotm.com/" class="xref" target="_blank">MDotM</a>
- <a href="https://adxtracking.com/" class="xref" target="_blank">Google
  Ad Manager</a>
- <a href="https://apsalar.com/" class="xref" target="_blank">Apsalar</a>
- <a href="https://kochava.com/" class="xref" target="_blank">Kochava</a>
- <a href="https://www.conversantmedia.com/" class="xref"
  target="_blank">Conversant</a>
- <a href="https://www.tapsense.com/" class="xref"
  target="_blank">TapSense</a>
- <a href="https://www.tune.com/" class="xref" target="_blank">Tune
  (formerly HasOffers)</a>
- <a href="https://www.adjust.com/" class="xref"
  target="_blank">Adjust</a>
  - <a href="https://docs.adjust.com/en/network-integration/" class="xref"
    target="_blank">Adjust Network Integrations Page</a>
  - <a href="https://partners.adjust.com/index.md" class="xref"
    target="_blank">Adjust Partner Page (Click URL Builder)</a>

Go <a
href="https://monetize.xandr.com/docs/set-up-third-party-mobile-app-install-tracking"
class="xref" target="_blank">here</a> (log in required) for instructions
on how to integrate these vendors with your app and have them report
back to your Xandr account.






