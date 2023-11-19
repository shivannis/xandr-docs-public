---
Title : Impression Counting
Description : Xandr counts an impression, and records payment
ms.date : 10/28/2023
to the seller, once we receive an "accept call", which notifies us that
a creative was served to the web page or mobile app. Because the amount
---


# Impression Counting



Xandr counts an impression, and records payment
to the seller, once we receive an "accept call", which notifies us that
a creative was served to the web page or mobile app. Because the amount
of time between when an impression is requested and when the creative is
served varies by media type, we have defined appropriate look-back
windows for each media type. This look back window is also known as TTL
(time to live) or cache.

This flexible approach is especially important for media types like
mobile video, which can pre-cache an ad long before the ad is actually
served, as well as interstitial and native media types that require a
longer window than standard formats.



<b>Note:</b> Impressions are reported on in
the hour in which the creative was served to the web page or mobile app,
not the hour in which the impression was request



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000089ae__entry__1" class="entry colsep-1 rowsep-1">MEDIA
TYPE</th>
<th id="ID-000089ae__entry__2" class="entry colsep-1 rowsep-1">LOOK-BACK
WINDOW</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000089ae__entry__1">Banner</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000089ae__entry__2">Up
to 5 minutes after request</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000089ae__entry__1">Pop-up</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000089ae__entry__2">Up
to 5 minutes after request</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000089ae__entry__1">Interstitial</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000089ae__entry__2">Up
to 6 hours after request</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000089ae__entry__1">Video and Audio</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000089ae__entry__2">Up
to 6 hours after request</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000089ae__entry__1">Text</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000089ae__entry__2">Up
to 5 minutes after request</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000089ae__entry__1">Expandable</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000089ae__entry__2">Up
to 6 hours after request</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000089ae__entry__1">Skin</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000089ae__entry__2">Up
to 5 minutes after request</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000089ae__entry__1">Native</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000089ae__entry__2">Up
to 6 hours after request</td>
</tr>
</tbody>
</table>




