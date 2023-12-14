---
Title : Sell-Side Video Overview
Description : Sellers who want to work with video inventory generally face three key
ms.date: 10/28/2023
challenges when attempting to succeed in this fast-evolving area of
Internet advertising: monetization, latency, and cross-device adserving.
---


# Sell-Side Video Overview



Sellers who want to work with video inventory generally face three key
challenges when attempting to succeed in this fast-evolving area of
Internet advertising: monetization, latency, and cross-device adserving.
Xandr sell-side video products are built with
these challenges in mind. Our goal is to offer a seamless video product
that maximizes revenue, speed, and cross-device capabilities for a range
of client types.

This page provides an overview of what our sell-side video products are,
how they work, and how they help clients to succeed.

Maximized Monetization and Fill

In order to succeed in video trafficking, sellers must be able to
reliably and predictably monetize their video inventory and ensure
optimal video fill. Xandr video products help to
ensure that video inventory is sold efficiently and seamlessly.

Monetization

Monetization involves optimizing video CPM in order to get the best
possible price for inventory.

- All of the Xandr advanced yield management
  tools which sellers are familiar with in display are also available
  for video inventory. Through floor rules and deals, sellers can
  closely control their monetization.
- The seller's Account Manager (AM) will help identify valuable video
  buyers and assist the seller to communicate their video inventory to
  them.
- With outstream video, sellers can include video and display demand in
  the same auction allowing them to maximize bid density and revenue.

Fill

Fill means optimizing the sale of inventory so that you sell as much of
it as possible.

- Sellers can use Xandr to access a range of RTB
  demand. In addition to the premium video buyers already using the
  Xandr DSP, sellers can access RTB demand from
  several video-first DSPs who we are currently integrating.
- With client-side video mediation, clients can access mediated demand
  as well as RTB. Mediated demand sources are called as the page loads
  and when responses are received they are immediately evaluated to find
  an error-free VAST creative, thereby improving fill rate. Mediated
  demand may also be called in the page body and used for both instream
  and outstream video.
- Sellers can run their non-guaranteed video campaigns in
  Xandr and setup any passbacks as required
  allowing them to easily manage their own demand on our platform.

Breaking the Speed Barrier

When video auction and load times involve high latency, ads fail to
display properly, impression volume is low, and inventory loses
value.With our client-site video mediation product, since mediated and
RTB demand sources are called and evaluated as the page is loading,
latency is dramatically reduced. We aim to have prepared a VAST creative
to serve before the user reaches the player on the page.

To achieve low latency we use a unique combination of features and
behaviors:

- Parallel request and parsing of video demand sources
- Unwrapping of VAST wrappers to get to inline VAST video
- Caching of video ad content in advance (the winning VAST XML from
  mediation) complemented by the retrieval of the cached video ad
  content when its time for video ad playback
- Deadline-based delivery of ads where all video demand must be provided
  within a configurable timeout value

Soon, we will also add VPAID initialization as a way to estimate if
VPAID can provide demand within a specified timeout period with higher
priority assigned to VPAID which responds more quickly.

Cross-Device Support

If video ads are to succeed, they must be able to play across devices.
Xandr Video is designed to render and monetize
video for desktop web, mobile web, and mobile app contexts.

Our focus with video clients is on mobile web and desktop web. Through
our Mobile SDK, you can also integrate interstitials and instream video:

- <a
  href="mobile-sdk/show-interstitials-on-android.md"
  class="xref" target="_blank">show interstitials on Android</a>
- <a
  href="mobile-sdk/show-interstitials-on-ios.md"
  class="xref" target="_blank">show interstitials on iOS</a>
- <a
  href="mobile-sdk/show-instream-video-ads-on-android.md"
  class="xref" target="_blank">show instream video ads on Android</a>
- <a
  href="mobile-sdk/show-instream-video-ads-on-ios.md"
  class="xref" target="_blank">show instream video ads on iOS</a>

Video Reporting Insights

Xandr gives sellers access to
impression-by-impression reporting data about their video inventory via
the Log Level Data service's <a
href="log-level-data/video-events-feed.md"
class="xref" target="_blank">Video Events feed</a>. This allows sellers
to gain valuable insights into their inventory and audience. Our video
reporting tab for publishers also provides access to important reporting
data for video inventory.

A Range of Products Suits a Range of Needs



<b>Tip:</b> Please explore the rest of the
<a href="working-with-video-inventory.md" class="xref">Working with
Video Inventory</a> for the latest in quickstart guides, overviews,
workflows, and other helpful documentation.





We offer a range of video products designed to suit the unique needs of
individual clients.

- <a href="outstream-video-quickstart-guide.md" class="xref">Quickstart
  Guide: Set Up Outstream Video</a>
- <a href="selling-in-stream-video.md" class="xref"
  title="To monetize video inventory, you need to successfully describe the player and its specifications using the placement object. These capabilities are fully supported by Monetize and the Xandr API.">Selling
  In-Stream Video</a>



A range of options ensures that clients can work with the video product
or products that work for them, and participate in this vital online
advertising market for maximum profit with a minimum of blockers.




