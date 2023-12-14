---
Title : Measurement of Video Viewability using VPAID Wrapper
Description : This page explains the technology behind our video viewability
ms.date: 10/28/2023
measurement.
---


# Measurement of Video Viewability using VPAID Wrapper



This page explains the technology behind our video viewability
measurement.





<b>Important:</b> Viewability for video
creatives on Xandr is measured using OMSDK for
Web and App, and if it's not available we fall back to the VPAID wrapper
measurement which is avalable for Web only but not for App.







## What is Video Viewability?

The Xandr video viewability measurement is based
on the IAB guidelines, which state that 50% of the surface of a video ad
must be in-view for a minimum of 2 seconds.

**The Xandr Video Viewability Measurement**

To enable viewability measurement, Xandr wraps
video ads with a VPAID component which is responsible for loading and
playing the ad. In addition, the VPAID wrapper manages, tracks and
measures viewability by dropping the viewability measurement script on
the page. The VPAID component then notifies the measurement script of
any ad related events such as starts, pauses, resumes, etc.

The VPAID wrapper requires that the player supports VPAID creatives. If
the publisher does not support VPAID, the creative is considered
non-measurable.The following is a list of all the supported and
non-supported formats:

**Supported formats:**

- Any version of VAST
- Any version of VPAID
- Instream, outstream
- javascript VPAID
- Display Inventory





## AdServing

When viewability is enabled, the VPAID wrapper is served by default. If
the player does not support VPAID, and the original third party creative
was VAST, the VAST XML will serve without the VPAID component, and
viewability will not be measured. Creatives that already include VPAID
components will not serve on players that do not support VPAID.

The Xandr VPAID wrapper will always serve when
the player is able to play VPAID creatives. At present, only desktop web
and mobile web are supported. Viewability measurement on both instream
and outstream positions is supported.

**The AdServing Lifecycle**

1.  A **video tag** is embedded within a video player on a publisher's
    website.
2.  Consumer loads the website and the video ad tag makes a **bid
    request** to Xandr servers.
3.  The Xandr server generates a **VAST
    document** that links to the Xandr VPAID
    wrapper URL, and from the VAST to the player via a URL.
4.  The VAST document is **sent** to the **Video player**.
5.  The player loads, initializes, and **runs** the
    Xandr **VPAID viewability wrapper**.
6.  The VPAID wrapper injects the **viewability measurement javascript**
    on the page.
7.  The VPAID wrapper makes a call to a **third party ad server**.
8.  Third party ad server generates a **VAST document** (the original
    VAST creative uploaded within Monetize).
9.  The third party VAST document is **sent** to the **VPAID wrapper**.
10. The VPAID wrapper **loads** the video creative.
11. The **creative** **(ad) is displayed** in the player while the
    viewability javascript on the page **measures the viewability** of
    the creative.

![Viewability](media/viewability.png)


**VPAID Wrapper Functions**

In addition to viewability measurement, the VPAID wrapper is responsible
for loading and parsing the VAST document by identifying creatives and
collecting tracking pixels. While the video ad is being played, the
wrapper calls tracking events that are specified in the VAST document,
such as pause, resume, pause on click etc. The VPAID wrapper is also
responsible for managing click-through URLs and adjusting the volume of
the video ad according to the volume set on the player.

**VPAID Wrapper Specifications**

The VPAID wrapper has the following specifications:

- Hosted by Xandr CDN
- Injects JavaScript code in the page to measure viewability
- Receives the URL of the VAST document to play as a parameter
- Downloads the VAST document, selects the media file to play, manages
  tracking events, forwards VPAID Events
- Desktop web and mobile web measurement





## Reporting - UI

The following metrics are now available in the Advertiser Video
Analytics Report, Publisher Video Analytics Report, and
Network Video Analytics Report. (See
<a href="analytics-reporting.md" class="xref">Analytics Reporting</a>
for more information.)

**Viewability Measurement Metrics**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008ede__entry__1" class="entry">Viewability Metrics</th>
<th id="ID-00008ede__entry__2" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00008ede__entry__1">View-Measured
Imps</td>
<td class="entry" headers="ID-00008ede__entry__2">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00008ede__entry__1">Viewability
Measurement Rate</td>
<td class="entry" headers="ID-00008ede__entry__2">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps)</td>
</tr>
</tbody>
</table>



<b>Note:</b> Viewability Measurement Rate is
not directly comparable to other measurement vendors since our total
impression count is higher. Our measurement rate is not an indicator of
the technical quality of the measurement. For more information, see the
<a href="viewability-faq.md" class="xref">Viewability FAQ</a>.



**Viewability Metrics**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008ede__entry__7" class="entry">Viewability Metrics</th>
<th id="ID-00008ede__entry__8" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00008ede__entry__7">Viewable Imps</td>
<td class="entry" headers="ID-00008ede__entry__8">The number of measured
impressions that were viewable, per the IAB Viewability definition,
which states that 50% of the pixels of a video creative are in-view
during 2 consecutive seconds.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00008ede__entry__7">Viewability Rate</td>
<td class="entry" headers="ID-00008ede__entry__8">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
</tbody>
</table>





## Reporting - API

The following Video viewability metrics are available via the API in the
<a
href="xandr-api/network-video-analytics.md"
class="xref" target="_blank">Network Video Analytics</a>, <a
href="xandr-api/network-publisher-video-analytics.md"
class="xref" target="_blank">Network Publisher Video Analytics</a> and
<a
href="xandr-api/network-advertiser-analytics.md"
class="xref" target="_blank">Network Advertiser Video Analytics</a>
reports:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008ede__entry__13" class="entry">Column</th>
<th id="ID-00008ede__entry__14" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00008ede__entry__13">imps_viewed</td>
<td class="entry" headers="ID-00008ede__entry__14">The number of
measured impressions that were viewable, per the IAB Viewability
definition, which states that a video impression is viewable if 50% of
the pixels are in-view during 2 consecutive seconds.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00008ede__entry__13">view_measured_imps</td>
<td class="entry" headers="ID-00008ede__entry__14">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00008ede__entry__13">view_rate</td>
<td class="entry" headers="ID-00008ede__entry__14">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00008ede__entry__13">view_measurement_rate</td>
<td class="entry" headers="ID-00008ede__entry__14">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps)</td>
</tr>
</tbody>
</table>

The <a
href="log-level-data/video-events-feed.md"
class="xref" target="_blank">Video Events Feed</a> now has the the
following columns for video viewability:

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"></td>
<td class="entry"></td>
</tr>
<tr class="even row">
<td class="entry"><code class="ph codeph">view_result</code></td>
<td class="entry">The Xandr viewability
measurement result of the impression. Possible values:
<p>1 = VIEW_MEASURED_VIEWABLE</p>
<p>2 = VIEW_MEASURED_NON_VIEWABLE</p>
<p>3 = VIEW_NON_MEASURED</p>
<p>For non-impression events, this will be NULL.</p></td>
</tr>
<tr class="odd row">
<td class="entry"><code
class="ph codeph">view_non_measurable_reason</code></td>
<td class="entry">The reason an impression could not be measured for
viewability. Possible values:
<p>0 = N/A. The impression was measured for viewability</p>
<p>1 = SCRIPT_NOT_SERVED. The viewability script was not served with the
creative. For example, on mobile-app inventory.</p>
<p>2 = NO_SCRIPT_CALLBACK. The viewability script was served with the
creative, but no callback/event was received. For example, the user left
the page before the creative was served.</p>
<p>3 = TECHNICAL_LIMITATION. The viewability script was served and
loaded, but was unable to measure for a technical reason. For example, a
cross-domain iframe with Flash disabled.</p></td>
</tr>
</tbody>
</table>





## FAQ

This section lists out frequently asked questions regarding video
viewability.

**Will viewability work on both Xandr hosted
creatives and third-party hosted creatives?**

Yes, Xandr provides viewability measurement
across all video creatives for free.

**What happens if I upload a VAST creative?**

Xandr adds a VPAID viewability wrapper and will
deliver the viewability measurement across players that accept VPAID.
The video creative is served as a VAST creative with no viewability
measurement to players that only accept VAST.

**Will viewability measurement work on mobile web and mobile app
supply?**

Desktop, mobile web and mobile app supply are supported.

**What happens if I upload a VPAID creative?**

Xandr includes the VPAID viewability wrapper,
thus increasing the number of wrappers on the creative, and the creative
will measure viewability across players that allow for VPAID.

**Will it cause latency?**

Using a VPAID wrapper generates some additional latency since the player
must first download the VPAID wrapper from Xandr
CDN (\\150ms). Once the wrapper is downloaded, the time taken to load a
video ad with a wrapper will be the same as one loaded without.
Viewability components are run asynchronously and do not affect the ad.

**Do I have to do anything to enable viewability for my creatives?**

No, your video creatives are enabled for viewability measurement by
default.

**Will viewability restrict reach?**

No, it will not. Xandr will serve the
viewability script where applicable and the VAST only version of the
creative where VPAID is not allowed, to ensure maximum reach.

**How can I optimize to more highly viewable inventory?**

Viewability measurement is included in the
<a href="advertiser-video-analytics-report.md" class="xref">Advertiser
Video Analytics Report</a> and
<a href="network-video-analytics-report.md" class="xref">Network Video
Analytics Report</a> , which provide reporting down to the individual
tag/placement or site domain. This enables clients to update targeting
to either include or exclude high or poor performing placements.

**How does Xandr viewability compare with other
third party viewability vendors such as MOAT, Integral Ad Science, and
DoubleVerify?**

The Xandr viewability measurement aligns closely
with third party vendors and should be used as a helpful proxy to help
optimize for higher viewability.






