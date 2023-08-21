# Updated Impression Counting Mechanism - Mobile SDK v8.0 and above

<div class="body">

As the advertising industry recognizes the need to move away from “begin
to render” to visibility-based impressions, we are updating our mobile
SDK in-app impression counting to account for ad container visibility.
The move to counting based on ad container visibility strengthens the
definition of an impression equating to an ad seen by the user on their
device. This change will be included in <span class="ph">Xandr</span>’s
Mobile SDK v8.0 and above. 

<div class="section">

## Counting Methods in Mobile Apps

With SDK v8.0, there are two counting methods that can be applied for
impression counting in mobile apps:

- **Begin-to-render:** The impression is counted when an ad is fully
  downloaded and loaded on to the view, irrespective of the user’s
  screen. 
- **Viewable Impression:** The impression is counted when one or more
  pixels of the ad's creative is visible on a device’s screen.

</div>

<div class="section">

## Viewable Impression Tracking Mechanism

The move to counting based on ad container visibility strengthens the
definition of an impression equating to an ad seen by the user on their
device. Viewable impression counting however, is not standard across the
industry and may create discrepancies with third party impression
metrics. Based on the transaction types below,
<span class="ph">Xandr</span> takes a hybrid approach to reduce
discrepancies with partners as the industry moves to viewable impression
tracking mechanism, for mobile in app inventory.

</div>

<div class="section">

## Impression counting using Mobile SDK v8.0, summarized as follows:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d22119e92" class="entry cellborder"
style="vertical-align: top">Transaction Type</th>
<th id="d22119e95" class="entry cellborder"
style="vertical-align: top">Impression Type</th>
<th id="d22119e98" class="entry cellborder"
style="vertical-align: top">Counting Method </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d22119e92 ">Direct-Sold Insertion Orders</td>
<td class="entry cellborder"
headers="d22119e95 ">Kept</td>
<td class="entry cellborder"
headers="d22119e98 "><span class="ph">Xandr</span> will count an
impression when one pixel of the ad creative is visible on a device’s
screen (referred to as "Viewable Impression" counting). </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d22119e92 "><span class="ph">Xandr</span> Marketplace
Transactions</td>
<td class="entry cellborder"
headers="d22119e95 ">Resold</td>
<td class="entry cellborder"
headers="d22119e98 "><span class="ph">Xandr</span> will use “Viewable
Impression” counting for DSP partners that support it. For all other
exchange demand, impression counting will remain unchanged and will
continue to follow the “begin to render” methodology, where the
impression will be counted when an ad is fully downloaded and loaded on
to the view, irrespective of the user’s screen. </td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Impression Tracking Mechanisms

**Counting Methodology : Mobile SDK version 7.22.0 and older**

The Mobile SDK v7.0 continues to use the old impression counting
mechanism for various Ad formats. For more information, see <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/mobile-sdk--impression-counting-methods.html"
class="xref" target="_blank">Mobile SDK: Impression Counting Methods</a> 

**Counting Methodology : Mobile SDK version v8.0 and above**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d22119e167" class="entry cellborder"
style="vertical-align: top">AdUnits</th>
<th id="d22119e170" class="entry cellborder"
style="vertical-align: top">Impression Type</th>
<th id="d22119e173" class="entry cellborder"
style="vertical-align: top">Enablement by Impression Type</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td rowspan="2" class="entry cellborder"
headers="d22119e167 ">Banner</td>
<td class="entry cellborder"
headers="d22119e170 ">Viewable Impression</td>
<td class="entry cellborder"
headers="d22119e173 ">Default for Impression type = Kept
<p>Default for Impression type = Resold (limited DSP partners)</p></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d22119e170 ">Begin to Render</td>
<td class="entry cellborder"
headers="d22119e173 ">Default for Impression Type = Resold</td>
</tr>
<tr class="odd ">
<td rowspan="2" class="entry cellborder"
headers="d22119e167 ">Native</td>
<td class="entry cellborder"
headers="d22119e170 ">Viewable Impression</td>
<td class="entry cellborder"
headers="d22119e173 ">Default for Impression type = Kept
<p>Default for Impression type = Resold (limited DSP partners)</p></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d22119e170 ">Begin to Render</td>
<td class="entry cellborder"
headers="d22119e173 ">Default for Impression Type = Resold</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d22119e167 ">Interstitial</td>
<td class="entry cellborder"
headers="d22119e170 ">Count on Render</td>
<td class="entry cellborder"
headers="d22119e173 ">Default</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d22119e167 ">Video</td>
<td class="entry cellborder"
headers="d22119e170 ">Count on Video Start</td>
<td class="entry cellborder"
headers="d22119e173 ">Default</td>
</tr>
</tbody>
</table>

</div>

<div class="note">

<span class="notetitle">Note:</span>

Viewability and impression counting are two different entities.
Impression counting measures if an ad is served whereas viewability
measures a whole lot of analytics like how long the ad was viewed by the
user, what actions the user took, etc. to give better picture for the
advertiser to serve better.  The definition of impression counting
definition has evolved over the years. Initially an impression was
counted when it was rendered on the page or it was downloaded to the
user page. However, it was not necessary that the ad was viewed though
it was downloaded. So even if the ad was downloaded in the background
the impression count was considered.  This method of impression counting
becomes irrelevant as advertisers want accurate counts to understand how
many ads are actually served the user which means how many ads are
actually downloaded as well as viewed by the user. This is what viewable
impression counts. Viewable impression counting applies for all managed
demand and for certain bidders like DV 360 who count only viewable
impressions.  The logic applies only for mobile app impressions and not
for mobile web or web pages as these still count when the ad is rendered
or downloaded to the page.

</div>

</div>

</div>
