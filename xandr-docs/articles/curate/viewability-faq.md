---
Title : Viewability FAQ
Description : <div id="viewability-faq__section-bc95743b-12a2-467d-93ea-eee195d720c3"
>
## **Viewability Data**
The following questions address where to find Xandr viewability data and
the key metrics associated with it.
---


# Viewability FAQ



<div id="viewability-faq__section-bc95743b-12a2-467d-93ea-eee195d720c3"
>

## **Viewability Data**

The following questions address where to find Xandr viewability data and
the key metrics associated with it.





## In reporting, what is the definition used for viewable impressions?

Our reporting is based on the IAB standard definition: 50% of the area
of the creative (30% of the area of a large size creative) in view for 1
continuous second.





## Are other viewability metrics available, such as "viewable for less than 5 seconds"?

Adserver clients can now use the Engagement Metrics report to access a
wide variety of metrics. We are focused on making the most actionable
viewability data widely and easily available.



<div id="viewability-faq__section-6412a591-70a3-4658-91c0-2408963ab009"
>

## **Xandr Viewability Script Functionality**

The following questions address the Xandr
viewability script, how it works, what it measures, and its limitations.



<div id="viewability-faq__section-870def4f-6947-4252-ac5f-35129b55a96a"
>

## What methods does Xandr use to measure viewability?

Xandr viewability employs a best-in-class hybrid
measurement methodology combining Page Geometry and Browser
Optimization. When used in tandem, this hybrid method allows us to
reliably measure viewability of most impressions.



<div id="viewability-faq__section-036814ec-6c72-45b1-8d05-a721cca041bb"
>

## Does Xandr viewability use projection-based methods to report on viewable impressions?

No, all reporting data is based on direct measurement.



<div id="viewability-faq__section-29de4a19-3b2b-44a9-879d-d7d825ca4777"
>

## What types of inventory are supported by Xandr viewability?

The Xandr viewability script is currently
enabled for web, mobile web, and in-app (SDK) inventory. In addition to
our SDK, we support viewability for the Microsoft SDK and OMSDK.

OMSDK in-app viewability measurement is supported as follows:

- Xandr's Mobile SDK version 4.9 and above
  supports OMSDK display
- Xandr's Mobile SDK version 5.0 and above
  supports OMSDK native
- Xandr's iOS Mobile SDK version 6.1 and above
  supports OMSDK video
- Xandr's Android Mobile SDK version 6.1.1 and
  above supports OMSDK video

Viewability measurement on the following native inventory is supported:

- Sellers on AST v0.11 and above
- Sellers supporting OpenRTB 'jstracker' field. (Integration is required
  with Xandr to enable measurement)



<div id="viewability-faq__section-0aa64dca-133c-4412-872b-f14c0b2c10a5"
>

## What types of creatives does Xandr viewability support?

The Xandr viewability script is currently
enabled for all banner, native, and video creatives. For more
information about how viewability works for video, see
<a href="video-viewability.html" class="xref">Video Viewability</a>.





## Why would some supported inventory not be measurable?

The possible causes could be:

- If JavaScript is not enabled in a user's browser, the viewability
  script can't measure the impression.
- The viewability script may not be able to locate the creative. If the
  creative cannot be located within 5 seconds, the impression is not
  considered view-measured. To avoid this problem, make sure the script
  is served close to the actual creative content, particularly if you
  have a custom tag implementation.
- In rare cases, some very old browsers won't support viewability
  measurement, for example if the ad is loaded in a cross-domain iFrame
  configuration.
- Finally, network latency or the user simply closing the browser too
  quickly can prevent the script from capturing data required for
  measurement.



<div id="viewability-faq__section-80c591dd-dd5e-46bf-9282-49db4a184a31"
>

## What impression types are not measured by Xandr?

"blank" and "default"



<div id="viewability-faq__section-034839e9-7836-4f0d-94b1-a0e863a816f5"
>

## When does the Xandr viewability script start measuring? Will the script wait for the creative to load before measuring?

The Xandr viewability script waits for the
creative content to load before measuring for viewability. This may be a
source of discrepancies with other measurement vendors, in particular
when the creative content is a large file.



<div id="viewability-faq__section-ecb344c1-fc6b-4415-b25a-e441584a1f26"
>

## Will the Xandr viewability script slow down my page load or otherwise impact my page content?

No. The script, which is approximately 20KB, is served from a globally
distributed CDN that is optimized for speed and reliability. All script
calls are made asynchronously.

The viewability script is tested continuously across all major browsers
and operating systems to ensure, among other things, that it does not
impact the page content. The script has been in use since 2007, and
extensive real-world usage confirms the ad viewer’s experience is not
impacted.



<div id="viewability-faq__section-5e886031-5e6b-40d8-959d-37d7b0867df8"
>

## How does the Xandr viewability script determine whether a human is viewing the ad?

The Xandr Platform has robust policy and
filtering for non-human and other invalid traffic.

Checks are applied to all platform inventory before an impression is
auctioned, so the viewability script itself does not need to monitor or
check for non-human or invalid traffic.

The script will however check for inactive users. If there is no
keyboard, mouse, scroll or other activity for 60 seconds, then the
script considers the user to be inactive. Any ads served, for example by
an auto-refresh placement, will be considered non-viewable until an
activity event is detected.



<div id="viewability-faq__section-163fae9c-7ce0-4684-9fdc-472d7dd5db23"
>

## **Viewability Rate Results**

The following questions address how to interpret your reported
viewability rates in Xandr Curate.



<div id="viewability-faq__section-16813781-b482-40c7-8fc4-054348828629"
>

## Why do I get a low viewability rate on placement X?

The Xandr ad-viewability technology has been
intensively tested for several years, so you can trust the viewability
data that is provided.

When a placement is below the fold, after the content, or at the bottom
of the page, the banner is unlikely to be viewable.

When a placement is above the fold, it is not always viewable, because:

- Some users leave the page within the first seconds after the page is
  loaded. If the ad is in-view for less than one second, it is not
  viewable.
- Some users scroll quickly to the content, so the top of the page
  becomes non-viewable and the 1 second threshold is not reached.
- High banners are often partially viewable (like 300x600), but in case
  fewer than 50% of pixels are viewable, the banner is not viewable.
- The page is automatically refreshed, while it is opened in a hidden
  tab or window.



<div id="viewability-faq__section-e5e3bc43-4687-4025-8dcb-30cd2216b455"
>

## Why is my viewability rate with vendor X higher than with Xandr?

<div id="viewability-faq__p-0a48034f-5eb2-48cc-ac4b-2955d36d942d"
>

- What is the vendor's measurement rate?
  - Compare it with our view-measurement rate in reporting. High
    measurement rates are usually more reliable.
- Does vendor X measure the banner object or the placement?
  - The IAB's recommendation is to measure the banner object, not the
    placement.

  - We measure the object: the banner is not viewable if the object is
    not loaded.





<div id="viewability-faq__section-8ef530f9-f587-4f58-8183-72ddd104cf0c"
>

## Why do I get a low viewability rate on creative X?

It could be any of the following:

- Is the creative working correctly?
- Is it rendering?



<div id="viewability-faq__section-255adebb-405f-4a66-9bb7-10040f1be344"
>

## **Related Topics**

- <a href="introduction-to-viewability.html" class="xref">Introduction to
  Viewability</a>
- <a href="reporting-on-viewability.html" class="xref">Reporting on
  Viewability</a>






