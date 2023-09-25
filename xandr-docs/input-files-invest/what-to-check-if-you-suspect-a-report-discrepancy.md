---
Title : What to Check if You Suspect a Discrepancy
Description : Report discrepancies have a number of common causes. Before you begin a
---


# What to Check if You Suspect a Discrepancy



Report discrepancies have a number of common causes. Before you begin a
fuller investigation, consider common potential causes like time frames,
time zone differences, measurement units, macro configuration errors,
and differences in how ad servers count impressions.



Before you file a case, consider the following situations that can
create an apparent discrepancy, but are actually the expected result of
either a misconfiguration, or of unlike things being compared.





<table
id="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb"
class="table frame-all">
<caption><span class="table--title-label">Table 1. <span
class="title"></caption>
<colgroup>
<col style="width: 38%" />
<col style="width: 61%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__1"
class="entry colsep-1 rowsep-1">Potential Cause</th>
<th
id="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__2"
class="entry colsep-1 rowsep-1">Explanation/Resolution</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__1">The
time zone for the two reports is different.
<div class="note note_note">
<b>Note:</b> Be careful: Daylight Savings can
cause confusion about time zones.
</td>
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__2">The
advertiser report was pulled in EST, but the network pulled theirs in
GMT. This isn't a true discrepancy.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__1">The
reports don't use the same time frame.</td>
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__2">Example:
one report is weekly: the other is monthly. This isn't a true
discrepancy.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__1">Tracking
pixels are not in the correct format</td>
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__2">Example:
a pixel pasted into a browser shows up as an image, but in the <span
class="ph">Xandr UI it is marked as an HTML URL.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__1">The
third-party impression tracker counts impressions differently than <span
class="ph">Xandr does.</td>
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__2"><span
class="ph">Xandr counts an impression when the creative begins to
render, but the third-party report counts impressions using an imp
tracker placed at the bottom of the placement or page. If the creative
doesn't load completely, or the user navigates away before it's fully
loaded, the third-party report will show fewer impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__1">The
<code class="ph codeph">${CACHEBUSTER}</code> macro isn't implemented or
is implemented incorrectly, so ads are being cached and retrieved from
the local cache on viewing.</td>
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__2">Because
cached ad impressions aren't tracked, <span
class="ph">Xandr-reported impressions in this case are
significantly higher than impressions recorded in the advertiser's
system.
<p>You can resolve this problem by ensuring that the <code
class="ph codeph">${CACHEBUSTER}</code> macro is added to all
third-party creatives. This ensures that ads are always pulled from an
ad server, rather than the user's browser cache. For examples of
properly inserted macros for various tag providers, see <a
href="click-tracking.md" class="xref"
title="Click tracking serves many useful purposes within the ad serving industry as a whole. For Xandr, click tracking is necessary for optimizing to CPC and CPA goals, for bidding CPC and CPA, and for measuring a campaign&#39;s success.">Click
Tracking</a>. If your tag provider is not listed, please reach out to
them for assistance.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__1">Conversion
numbers don't match due to conversion pixel configuration.</td>
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__2"><p>Any
modification can affect pixel functionality. Double check your pixel
implementation, and only use tag managers that do not alter the original
pixel code, such as Google Tag Manager.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__1">Page
drop-offs or slow load times on specific publishers or placements.</td>
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__2">Page
drop-offs occur when:
<ul>
<li>a viewer leaves a page before a creative being loaded</li>
<li>something prevents the creative from loading completely (such as a
loss of network connection or a crashed browser).</li>
</ul>
Discrepancies caused by these problems typically occur when a creative
is loaded into a placement at the bottom of a page: in other words, at
the end of the normal chain of page load events. When pages load slowly,
users are more likely to navigate away before the ad tag loads. Mobile
campaigns have a higher likelihood of page drop-off, especially when
served over a carrier connection over a wifi connection.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__1">"Unknown"
domains.</td>
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__2">Not
all publishers expose their domains in reports. If you see lots of
"Unknown" impressions in a Site Domain Report, you can run an <a
href="advertiser-analytics-report.md" class="xref">Advertiser
Analytics Report</a> grouped by seller, publisher, and placement, and
compare Xandr and third-party reports by
publisher and placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__1">Click
numbers don't match due to the <code
class="ph codeph">${CLICK_URL}</code> implementation.</td>
<td class="entry colsep-1 rowsep-1"
headers="what-to-check-if-you-suspect-a-report-discrepancy__table_mpn_bqn_kmb__entry__2">Double-check
your <code class="ph codeph">${CLICK_URL} </code>macro. It’s also very
important to insert click macros to both <code
class="ph codeph">&lt;script&gt; </code>and <code
class="ph codeph">&lt;noscript&gt;</code> parts in third-party ad server
tags. For more information, see <a href="click-tracking.md"
class="xref"
title="Click tracking serves many useful purposes within the ad serving industry as a whole. For Xandr, click tracking is necessary for optimizing to CPC and CPA goals, for bidding CPC and CPA, and for measuring a campaign&#39;s success.">Click
Tracking</a></td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 1.
<span class="title">






