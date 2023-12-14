---
Title : Set Up Mobile In-App Video Mediation
Description : <b>Note:</b> Mediation is available only to
ms.date: 10/28/2023
Microsoft Monetize Ad Server customers.
---


# Set Up Mobile In-App Video Mediation







<b>Note:</b> Mediation is available only to
Microsoft Monetize Ad Server customers.





This page describes how to set up a video mediation network for mobile
in-app inventory.

For engineering instructions on how to fetch and display instream video
ads using the SDK, see <a
href="mobile-sdk/show-instream-video-ads-on-android.md"
class="xref" target="_blank">Show Instream Video Ads on Android</a> and
<a
href="mobile-sdk/show-instream-video-ads-on-ios.md"
class="xref" target="_blank">Show Instream Video Ads on iOS</a>.

class="note warning note_warning">

<b>Warning:</b> **VAST tags only**

At this time, we can only serve VAST tags through in-app video
mediation. Please make sure you request VAST (not VPAID) tags from your
network partners.



>

## Step 1: Configure Mediation Networks

The setup of a video mediation network is simple - just navigate to the
Mediation
\> Networks page and follow
these steps.

1.  Press the New button.

2.  Select Custom Video Network in the
    Network drop down.

3.  Under Currency, set the
    network's currency if different from your seat's default currency.

4.  Change the Network Name to reflect
    the particular network or partner you are working with.

5.  

    Set the Brand of the network. If
    working with a network or partner that doesn't fit to one brand,
    select Unknown brand.
    class="note tip note_tip">

    <b>Tip:</b> If we don't have an existing
    brand for a video demand source, it can be created. Please talk to
    your Xandr representative.

    

    

6.  Press Save.

class="note warning note_warning">

<b>Warning:</b> **Report Sync Not Supported**

The Report Sync feature is not
supported for Mobile In-App Video Mediation.





>

## Step 2: Configure Mediation Bids

A mediation bid allows you to set how much you expect the mediated
network will pay for a video impression on a particular placement,
thereby allowing the mediated network to compete for the impression
against RTB demand in the Xandr auction.

To setup a mediation bid you need to have the average bid price you want
to use and a third party URL, which can call the mediated network
appropriately. If the URL can accept a cachebuster, please insert the
Xandr *${CACHEBUSTER}* macro so we can insert a randomly generated
number and make each URL call unique.

class="note tip note_tip">

<b>Tip:</b> **The Mediated URL Field accepts
Creative Macros**

The mediated URL field will accept any Xandr creative macro.



To create a bid navigate to
Mediation
\> Bids and follow these steps:

1.  Click Create Bid.
2.  Click the Edit button next to
    Inventory to target your bid
    to specific publisher(s), placement group(s) or placement(s). The
    targeting you choose depends highly on your object hierarchy. For
    example, if you want to setup one bid per placement you'll want to
    target individual placements; however if you want one bid to target
    multiple placements it may be easier to target placement groups.
3.  Click the Edit buttons next to
    Geography or
    System to further refine when
    this mediated bid will compete for an impression.
4.  Under the Bids section select
    the network you created previously.
5.  Once selected you will be able to add the network's VAST
    URL. Replace any dynamic values in
    the VAST tag with the appropriate creative macro.
6.  Bid Name is displayed in the
    mediation dashboard (accessed from the
    Mediation tab) so use a
    descriptive name. As an example, a good format would be
    "\<network\> - \<inventory\> - \<geography\> - video" like
    "MyVideoNetwork - Story Page - US - video".
7.  Set the Bid CPM to the average
    eCPM that this mediated video network generates for this particular
    combination of inventory, geography, and system. You should check
    this via the mediated network's reporting system and update your
    Bid CPM regularly to make sure it
    closely represents how much the network will receive for filling the
    impression.
8.  Add any desired targeting under the
    Advanced Settings section.

class="note warning note_warning">

<b>Warning:</b>

The **Response Timeout** field on the bid setup is not currently used by
client-side mediation. The placement/member-level settings are used
instead.





>

## Related Topics

- <a
  href="mobile-sdk/xandr-mobile-sdks.md"
  class="xref" target="_blank">Xandr Mobile SDKs</a>
- <a
  href="mobile-sdk/show-instream-video-ads-on-android.md"
  class="xref" target="_blank">Show Instream Video Ads on Android</a>
- <a
  href="mobile-sdk/show-instream-video-ads-on-ios.md"
  class="xref" target="_blank">Show Instream Video Ads on iOS</a>
- <a
  href="mobile-sdk/mediate-with-android-sdk-instructions.md"
  class="xref" target="_blank">Mediate with Android</a>
- <a
  href="mobile-sdk/mediate-with-ios.md"
  class="xref" target="_blank">Mediate with iOS</a>






