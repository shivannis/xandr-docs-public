---
Title : Integrating for Mediation
Description : Note: Mediation is available only to
Microsoft Monetize Ad Server customers.
---


# Integrating for Mediation





Note: Mediation is available only to
Microsoft Monetize Ad Server customers.





In order to sell your inventory to buyers that are not directly
connected to our exchange, you will need to set up your technical
integration. This page describes:

- The types of mediation integrations we support
- How to set them up
- How they work



<div id="integrating-for-mediation__section_s2g_n44_bwb"
>

## Web Passbacks

A significant portion of demand is not available via RTB, and is instead
traded using tags. In order to access this demand, you need to be able
to "pass back" the impression to your original ad call if the top
bidding ad network defaults.

With web passbacks, the ad call is initiated from the browser. This
makes your impressions more valuable since passbacks give mediated
network buyers access to their own cookies. Networks can then match
cookies to their own user IDs for frequency capping, targeting, and
attribution purposes.

This page describes web passbacks and contains instructions for setting
up browser-based mediation using web passbacks.

**Setting Up**



For each network you'd like to mediate, do the following:

1.  Log in to the mediated network's UI.
2.  In the mediated network's UI, for each placement (or ad spot) you'd
    like to run through the mediation tool, set this JavaScript snippet
    as your default creative: `mediation.noad();`
    <div id="integrating-for-mediation__note_x1h_t44_bwb"
    

    Note: In some cases, you may need
    to change the format slightly depending on the requirements of the
    mediation network's UI. For example:
    - HTML: You may need to wrap the JS in `<script>` tags to upload it
      as HTML.
    - URL: You may need to provide a URL. Use
      <a href="http://cdn.adnxs.com/mediation/noad.html" class="xref"
      target="_blank"><code
      class="ph codeph">http://cdn.adnxs.com/mediation/noad.html</code></a>
      (or the secure version:
      <a href="https://cdn.adnxs.com/mediation/noad.html" class="xref"
      target="_blank"><code
      class="ph codeph">https://cdn.adnxs.com/mediation/noad.html</code></a>).

    
3.  Log in to the UI.
4.  In the UI,
    <a href="mediation-networks.html" class="xref">Mediation Networks</a>
    to represent the mediated networks in our system.
5.  In the UI,
    <a href="mediation-bids.html" class="xref">Mediation Bids</a> to
    represent the demand tied to the placement or ad spot you just
    created in that network (which has a passback if needed).
6.  After you've created all of your bids, activate your bids to start
    serving ads.





<div id="integrating-for-mediation__section_tbk_lp4_bwb"
>

## How it works

<div id="integrating-for-mediation__note_o1q_np4_bwb"
class="note tip note_tip">

Tip: See the diagram below for more
details.





Assuming you've set up your integration as described above, the ad call
flow looks like this:

1.  The tag on the page calls the Xandr ad server.

2.  The ad server runs an auction for the impression. Mediated bids are
    ranked in the auction according to bid price, alongside RTB bids.

3.  The ad server responds differently depending on the auction outcome:

    1.  If the winning bid is an RTB bid, it will serve the ad from the
        RTB buyer directly.
    2.  If the winning bid is a mediated bid, it responds to the page's
        request with a list of mediated bids (a waterfall), as well as a
        JavaScript file `mediation.js`, which will manage the waterfall
        directly from the browser.

    (We will assume for the rest of this example that the winning bid is
    a mediated bid.)

4.  `mediation.js`, running in the browser, calls the mediated networks
    in the order specified by the waterfall. For each network:
    1.  If the network returns an ad, it is served, and `mediation.js`
        notifies the ad server so we can report on the impression.
    2.  If the network does not return an ad, it calls the function
        `mediation.noad()`, which triggers `mediation.js` to call the
        next network in the waterfall.



<img src="../images/mediation/mediation-client-side-web.png"
id="integrating-for-mediation__image_azn_brp_bwb" class="image"
width="800" height="500" />



<div id="integrating-for-mediation__section_bdp_yr4_bwb"
>

## SDK Mediation

SDK mediation allows mobile app developers and publishers to access
demand from mediation networks. Xandr has built <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/xandr-mobile-sdks.html"
class="xref" target="_blank">Xandr Mobile SDKs</a> that allow app
developers to monetize their inventory.



SDK mediation requires coordination between ad ops teams and mobile
engineers:

- Ad ops teams will need to make sure the right information is being
  pulled from, and entered into, mediation network UIs.
- Mobile engineers will need to make sure that mediation adaptors are
  properly configured to allow different networks' SDKs installed on the
  device to interoperate correctly.



**Setting Up**



Follow these steps to set up SDK mediation integration:

1.  Integrate one of our <a
    href="https://docs.xandr.com/bundle/mobile-sdk/page/xandr-mobile-sdks.html"
    class="xref" target="_blank">Xandr Mobile SDKs</a> with your app.
    Our SDKs come bundled with mediation adaptors that allow us to
    mediate SDKs from popular networks such as AdMob. For a complete
    list of networks that we support with SDK adaptors, see
    <a href="mediation-networks.html" class="xref">Mediation Networks</a>.
2.  If the mobile ad network you need to mediate already has a supported
    mediation adaptor, the mediation should occur automatically once
    you're set up. Follow the instructions in these pages to get
    started:
    1.  <a href="mediation-networks.html" class="xref">Mediation Networks</a>
    2.  <a href="mediation-bids.html" class="xref">Mediation Bids</a>
3.  If the mobile ad network you need to mediate does not have a
    supported mediation adaptor, you will have to have your engineers
    write a custom adaptor that allows our SDK to communicate with the
    ad network's SDK. Then you can set up that network and start
    creating bids. Follow the instructions in these pages to write a
    custom adaptor and set up your network and bids:
    1.  <a
        href="https://docs.xandr.com/bundle/mobile-sdk/page/android-custom-adaptors.html"
        class="xref" target="_blank">Android Custom Adaptors</a>
    2.  <a
        href="https://docs.xandr.com/bundle/mobile-sdk/page/ios-custom-adaptors.html"
        class="xref" target="_blank">iOS Custom Adaptors</a>
    3.  <a href="mediation-networks.html" class="xref">Mediation Networks</a>
        (specifically, a Custom Mobile Network)
    4.  <a href="mediation-bids.html" class="xref">Mediation Bids</a>
4.  Activate your bids to start selling to those networks.





<div id="integrating-for-mediation__section_k5w_1t4_bwb"
>

## How it works



<div id="integrating-for-mediation__note_b2y_bt4_bwb"
class="note tip note_tip">

Tip: See the diagram below for more
details.







Assuming you've set up your integration as described, the ad call flow
looks like this:

1.  The Xandr SDK calls our ad server.
2.  The ad server runs an auction for the impression. Mediated bids are
    ranked in the auction according to bid price, alongside RTB bids.
3.  The ad server responds differently depending on the auction outcome:
    1.  If there is a winning RTB bid, it returns the ad directly.
    2.  Otherwise, it returns a list of mediated networks (a waterfall)
        which Xandr's SDK will use to communicate with other ad
        networks' SDKs installed on the device.
4.  The Xandr SDK will call the mediated networks' SDKs running on the
    same device in the order specified by the waterfall response from
    the ad server.
5.  Each of the mediated SDKs listed in the waterfall gets the chance to
    respond with an ad. The mediated SDK that ends up serving notifies
    the Xandr SDK that an ad was served.



<img src="../images/mediation/mediation-sdk-integration.png"
id="integrating-for-mediation__image_fmh_yrp_bwb" class="image"
width="800" height="500" />



<div id="integrating-for-mediation__section_mw1_nt4_bwb"
>

## Server Side Mediation

Server Side Mediation is easy to get started with. It requires only that
you set up networks and bids in our system. These networks and bids are
used to represent your external demand sources in our system, and to
gather reporting data from external systems. Server-side mediation is
available for a number of popular networks, including Google AdMob,
MoPub, and Amazon.



<div id="integrating-for-mediation__note_dr2_qt4_bwb"
class="note tip note_tip">

Tip: For a complete list of supported
networks, see
<a href="mediation-faqs.html" class="xref">Mediation FAQs</a>.





**Setting Up**



Follow these steps to set up a server side mediation integration:

1.  <a href="mediation-networks.html" class="xref">Mediation Networks</a>
    to represent the mediation network in our system.
2.  <a href="mediation-bids.html" class="xref">Mediation Bids</a> to
    represent the demand coming from that network.
3.  Activate your bids to start selling to those ad networks.





<div id="integrating-for-mediation__section_t1w_154_bwb"
>

## How it works

Assuming you've set up your integration as described, the ad call flow
looks like this:

1.  The tag on page calls Xandr's ad server.
2.  The ad server runs an auction for the impression. Mediated bids are
    ranked in the auction according to bid price, alongside RTB bids.
3.  The ad server behaves differently depending on the auction outcome:
    - If a mediated bid wins, it tries to load an ad from the mediated
      network. If the mediated network has no ad to show, the impression
      goes to the next highest bid (the next network in the waterfall,
      or an RTB buyer).
    - If an RTB bid wins, it will serve the ad from the RTB buyer
      directly.

<img src="../images/mediation/mediation-server-side-integration.png"
id="integrating-for-mediation__image_y2x_bw4_bwb" class="image"
width="800" height="500" />



<div id="integrating-for-mediation__section_t3m_j54_bwb"
>

## Related Topics



- <a href="mediation-networks.html" class="xref">Mediation Networks</a>
- <a href="mediation-bids.html" class="xref">Mediation Bids</a>
- <a href="mediation-bid-setup-best-practices.html" class="xref">Mediation
  Bid Setup Best Practices</a>
- <a href="mediation-faqs.html" class="xref">Mediation FAQs</a>








