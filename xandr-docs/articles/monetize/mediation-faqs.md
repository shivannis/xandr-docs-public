---
Title : Mediation FAQs
<b>Note:</b> Mediation is available only to
Microsoft Monetize Ad Server customers.
---


# Mediation FAQs






<b>Note:</b> Mediation is available only to
Microsoft Monetize Ad Server customers.



This page has answers frequently asked questions about selling inventory
through mediation.




## What is a network?

Under the hood, a mediated network is actually a managed advertiser. For
this reason, if your client has any managed advertisers with the same
name as one of the mediated networks we support, you will get an error
when trying to add the network. You will need to rename any managed
advertiser to a different name as mediated networks cannot be renamed.




## How is mediation different from RTB?

In a mediation auction, no bids are placed upfront. Selling inventory
through mediation requires running the auction using an estimated bid
that represents what we think the buyer will eventually pay. We later
pull reporting data that shows the buyer's actual bid.

For more information about mediated auctions, see the examples in
<a href="mediation-how-auctions-work-for-sellers.md" class="xref">How
Auctions Work for Sellers</a>.




## Why do I get an error when I try to add a network?

A mediated network is actually a managed advertiser "under the hood". If
your client has any managed advertisers with the same name as one of the
mediated networks we support, you will get an error when trying to add
the network. You will need to rename any managed advertiser to a
different name as mediated networks cannot be renamed.




## What happens if the highest bid is a mediated network, and they don't want the impression?

If they return a "no bid" or they timeout, our system automatically
redirects to the next highest bid, whether that be another network, your
own managed campaigns, or the highest RTB bid.

For more information about how auctions work for sellers using
mediation, see the examples in
<a href="mediation-how-auctions-work-for-sellers.md" class="xref">How
Auctions Work for Sellers</a>.




## Why doesn't every network give me the option to enter my credentials?

We limit automated reporting to networks where we have significant
demand from clients. We will only ask for credentials for networks where
reporting can be automated.




## What are the APIDS, SPOT IDS, and other fields I am asked to fill in when creating a bid? Why is it different for each network?

Each mediated network requires us to pass the equivalent of a placement
ID in the request for an ad. Every network calls their placement IDs
something different and in some cases multiple IDs are required. The UI
will prompt you for the appropriate IDs from each network to ensure
proper setup.

It's very important to fill in these IDs correctly. We use these IDs to
ensure that reporting data is correct.




## How often is reporting from mediated networks updated?

We update reporting once per day for all supported networks. Typically
you can expect to see third-party data updated in your account by 8 am
EST.




## Which time zone is mediation data reported in?

Under the Networks and Bids tabs, all data is reported relative to the
network time zone. For example, Millennial Media reports its data in
UTC. Therefore, the impression requests, impressions, fill rate and
discrepancy metrics for Millennial Media are all reported in UTC.
Likewise, AdMob reports in PST, so all data for AdMob is reported in
PST. If you look at the data in the mediation screens and compare it to
data in each third-party network's reporting UI, they should match.

In the Network Analytics report, we only adjust revenue from third-party
networks and not impressions. Revenue is adjusted in the default time
zone of the member.




## Where can I find mediated networks and bids in reporting?



- Mediated networks can be found under the Advertiser filter and
  dimension in the Network Analytics Report.
- Bids can be found under the Line Item filter and dimension in the
  Network Analytics Report.






## Do you support passbacks for mobile web and desktop impressions?

Yes.




## Can I add multiple logins for the same network?

This is not supported at this time.




## Which mediation browsers are supported?

Our mediation scripts currently support the following browsers.

When the mediation script encounters a browser that isn't supported, it
will bypass all the mediated bids and call back to impbus for a
response. The response can be to proceed to RTB, or serve a PSA, default
creative, or blank, based on default action settings for the seller and
placement.



**Desktop**

- Chrome
- Firefox
- Internet Explorer 8-11
- Opera
- Safari





**Mobile**

- Safari
- Android
- Chrome






## Which mediation networks are supported?

The table below lists the external mediation networks we support. It
includes information about the type of integration we have with each
network, and whether we pull reporting data from that network.



The Integration Type column describes how the network is integrated for
mediation.

- Client indicates that the integration occurs on the client side; works
  only on the desktop web and mobile web.
- Server indicates that the integration occurs on the server side; works
  on mobile web and mobile apps, but works best on mobile apps.
- SDK indicates that the network's SDK must be downloaded and
  implemented. Works only on mobile apps.

class="note warning note_warning">

<b>Warning:</b> We will make our best effort
to keep this information up to date. However, more current information
may be available directly from the networks.



<table id="mediation-faqs__table_v4v_1rw_bwb" class="table frame-all">
<colgroup>
<col style="width: 12%" />
<col style="width: 12%" />
<col style="width: 12%" />
<col style="width: 12%" />
<col style="width: 12%" />
<col style="width: 12%" />
<col style="width: 12%" />
<col style="width: 12%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th rowspan="2" id="mediation-faqs__table_v4v_1rw_bwb__entry__1"
class="entry colsep-1 rowsep-1">Network</th>
<th colspan="3" id="mediation-faqs__table_v4v_1rw_bwb__entry__2"
class="entry colsep-1 rowsep-1">Optimized for display on...</th>
<th rowspan="2" id="mediation-faqs__table_v4v_1rw_bwb__entry__3"
class="entry colsep-1 rowsep-1">Reporting?</th>
<th rowspan="2" id="mediation-faqs__table_v4v_1rw_bwb__entry__4"
class="entry colsep-1 rowsep-1">Integration Type</th>
<th rowspan="2" id="mediation-faqs__table_v4v_1rw_bwb__entry__5"
class="entry colsep-1 rowsep-1">Contact</th>
<th rowspan="2" id="mediation-faqs__table_v4v_1rw_bwb__entry__6"
class="entry colsep-1 rowsep-1">Downloads (SDK only)</th>
</tr>
<tr class="odd row">
<th id="mediation-faqs__table_v4v_1rw_bwb__entry__7"
class="entry colsep-1 rowsep-1">Mobile App</th>
<th id="mediation-faqs__table_v4v_1rw_bwb__entry__8"
class="entry colsep-1 rowsep-1">Mobile Web</th>
<th id="mediation-faqs__table_v4v_1rw_bwb__entry__9"
class="entry colsep-1 rowsep-1">Desktop Web</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">AdColony</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">SDK</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="http://support.adcolony.com/customer/portal/articles/692646-getting-started-with-sdk-integration"
class="xref" target="_blank">AdColony Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">
<ul>
<li><a
href="http://support.adcolony.com/customer/portal/articles/692646-getting-started-with-sdk-integration"
class="xref" target="_blank">AdColony SDK</a></li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">AdMob</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">SDK</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="https://support.google.com/admob/" class="xref"
target="_blank">AdMob Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">
<ul>
<li><a
href="https://developers.google.com/mobile-ads-sdk/download#downloadios"
class="xref" target="_blank">AdMob iOS SDK</a></li>
<li><a
href="https://developers.google.com/mobile-ads-sdk/download#downloadandroid"
class="xref" target="_blank">AdMob Android SDK</a></li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">AdSense</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Client</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="https://support.google.com/adsense/" class="xref"
target="_blank">AdSense Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Amazon
(mobile)</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">SDK</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="https://developer.amazon.com/public/support/contact/contact-us"
class="xref" target="_blank">Amazon Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">
<ul>
<li><a
href="https://developer.amazon.com/public/apis/earn/mobile-ads/ios"
class="xref" target="_blank">Amazon iOS SDK</a></li>
<li><a
href="https://developer.amazon.com/public/apis/earn/mobile-ads/android"
class="xref" target="_blank">Amazon Android SDK</a></li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Amazon
(web)</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Client</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="https://developer.amazon.com/public/support/contact/contact-us"
class="xref" target="_blank">Amazon Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Claymotion</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Server</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="mailto:adops@claymotion.in" class="xref"
target="_blank">Claymotion Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Doubleclick
for Publishers</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">SDK</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="https://support.google.com/dfp_premium/?hl=en#topic=28132"
class="xref" target="_blank">DFP Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6"><ul>
<li><a href="https://developers.google.com/mobile-ads-sdk/" class="xref"
target="_blank">DFP SDK</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Hunt</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Server</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="http://www.huntmads.com/contacto" class="xref"
target="_blank">Hunt Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">iAd</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">SDK</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="https://developer.apple.com/support/" class="xref"
target="_blank">Apple Developer Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6"><ul>
<li><a href="https://developer.apple.com/iad/" class="xref"
target="_blank">iAd SDK</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">InMobi</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Server</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="https://www.inmobi.com/support/" class="xref"
target="_blank">InMobi Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Jumptap</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Server</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="https://support.jumptap.com/index.php/Main_Page" class="xref"
target="_blank">JumpTap Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Millennial
Media (mobile web)</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Client</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="https://tools.mmedia.com/user/supportDevPortal" class="xref"
target="_blank">Millennial Media Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Millennial
Media (mobile app)</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">SDK</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="https://tools.mmedia.com/user/supportDevPortal" class="xref"
target="_blank">Millennial Media Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6"><ul>
<li><a href="http://mmedia.com/resources/sdk-api" class="xref"
target="_blank">Millennial Media SDK</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">MobFox</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Server</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="http://www.mobfox.com/contact/" class="xref"
target="_blank">MobFox Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6"><ul>
<li><a href="http://www.mobfox.com/publishers/integration/" class="xref"
target="_blank">MobFox SDK</a></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">MobileFuse</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Server</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="http://aws.mobilefuse.com/contact.md" class="xref"
target="_blank">MobileFuse Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Mojiva</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Server</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="http://www.mojiva.com/support" class="xref" target="_blank">Mojiva
Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">MoPub</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">SDK</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="https://dev.twitter.com/mopub/overview" class="xref"
target="_blank">MoPub Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6"><ul>
<li><a href="https://github.com/mopub/mopub-ios-sdk" class="xref"
target="_blank">MoPub iOS SDK</a></li>
<li><a href="https://github.com/mopub/mopub-android-sdk" class="xref"
target="_blank">MoPub Android SDK</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">OpenX</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Server</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="http://openx.com/support/" class="xref" target="_blank">OpenX
Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">OpenX
Ad Exchange</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Client</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="http://openx.com/support/" class="xref" target="_blank">OpenX
Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">PubMatic</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Client</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="mailto:info@PubMatic.com" class="xref" target="_blank">PubMatic
Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Rubicon
Project</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Client</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="http://www.rubiconproject.com/contact-us/" class="xref"
target="_blank">Rubicon Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Smaato</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Server</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="http://www.smaato.com/support/" class="xref"
target="_blank">Smaato Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Smaato
(mobile web)</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Client</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="http://www.smaato.com/support/" class="xref"
target="_blank">Smaato Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Verve</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Server</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="http://www.vervemobile.com/contact/" class="xref"
target="_blank">Verve Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Vserv</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">Server</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5"><a
href="http://www.vserv.com/support-query/" class="xref"
target="_blank">Vserv Support</a></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__1 mediation-faqs__table_v4v_1rw_bwb__entry__7">Custom
Mobile Network</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__8">X</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2 mediation-faqs__table_v4v_1rw_bwb__entry__9"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__4">SDK</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__5">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="mediation-faqs__table_v4v_1rw_bwb__entry__6">N/A</td>
</tr>
</tbody>
</table>








