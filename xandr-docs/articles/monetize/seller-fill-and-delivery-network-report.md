---
Title : Seller Fill and Delivery Network Report
Description : The Seller Fill and Delivery Report was designed as a troubleshooting
ms.date: 10/28/2023
tool to provide sellers granular information regarding all impressions
sent to Xandr and to help diagnose delivery
issues all the way down to the tag and domain level. Using the new
---


# Seller Fill and Delivery Network Report





The Seller Fill and Delivery Report was designed as a troubleshooting
tool to provide sellers granular information regarding all impressions
sent to Xandr and to help diagnose delivery
issues all the way down to the tag and domain level. Using the new
descriptive fields, it is possible to see an approximation of overall
fill rate on Xandr using the "Total Ad
Responses" and "Total Ad Requests" metrics. This report provides
guidance on areas to troubleshoot but should not be used as a source of
truth for billing or transacted impressions.



<b>Note:</b> This report only provides
directional guidance on potential areas to troubleshoot. Figures in this
report might see slight discrepancies with other standard reports,
including the Network Analytics Report and the
Video Analytics Report.

We recommend viewing each report independently and not comparing the
directional figures from the Seller Fill and Delivery Report with other
Xandr reporting, to avoid unnecessary confusion.



The data contained in this report will help pinpoint issues contributing
to untransacted impressions stemming from:

- Improper default/passback tag setup
- Inventory blocklists related to IP or domain blocking
- Video player errors
- Miscellaneous causes



<b>Note:</b> **For video sellers only :** As a
result of video caching by video players, the
Xandr data pipeline allows a six-hour window to
register a response from a video player after the auction is complete
and the creative VAST XML has been sent to the page, before considering
a video impression 'non-responsive' (Bid Sent No Response).

Xandr will update some counts, for video tags
only, six hours after the time of the auction. Therefore, to receive the
most accurate view of video counts across dimensions, schedule your
reports to run after the six-hour window for a given hour of data.



The diagram below is a representation of how metrics are grouped and
counted for this report: 
![]()

![Create seller](media/create-seller-filler-and-delivery-explanatory-graphic.png)

Time Frame

All dates and times are given in UTC.

**Time Ranges**

Time ranges define the time period of the data extracted for the report.
The following is a complete list of time ranges available for reports.

However, all time ranges are not available for every report.



- Custom
- Current Hour
- Last Available Day
- Last Hour
- Today
- Last 24 Hours
- Last 48 Hours
- Yesterday
- Last 2 Days
- Last 7 Days
- Last 7 Available Days
- Last 14 Days
- Last 14 Available Days
- Last 30 Days
- Last 30 Available Days
- Last Month
- Last 100 Days
- Last 365 Days
- Quarter to Date
- Month to Date
- Month to Yesterday
- Lifetime



**Intervals**

Intervals determine how your data is grouped together into rows in the
report response. The following is a complete list of intervals available
for reports. However, all intervals are not available for every report.



- Hourly: Data is grouped into rows by the hour.
- Daily: Data is grouped into rows by the day.
- Monthly: Data is grouped into rows by the month.
- Cumulative: Data is grouped together in one figure, covering the
  entire selected time range.



This report's data is retained for 403 days. The time granularity of the
data is hourly.

Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005b8a__entry__1" class="entry">Column</th>
<th id="ID-00005b8a__entry__2" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__1">Filtered Requests</td>
<td class="entry" headers="ID-00005b8a__entry__2">Ad requests filtered
pre-bid by Xandr for inventory quality.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__1">Imps (kept)</td>
<td class="entry" headers="ID-00005b8a__entry__2">An impression where a
managed advertiser's creative serves on a managed publisher's site.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__1">Imps (resold)</td>
<td class="entry" headers="ID-00005b8a__entry__2">An impression that is
resold to a third-party buyer.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__1">Seller Revenue</td>
<td class="entry" headers="ID-00005b8a__entry__2">Revenue earned by the
Seller.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__1">Defaults</td>
<td class="entry" headers="ID-00005b8a__entry__2">Ad requests where a
default creative served because there were no valid bids.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__1">Video Player
Errors</td>
<td class="entry" headers="ID-00005b8a__entry__2">Errors reported from
the video player after the VAST XML has been delivered.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__1">Video Default
Errors</td>
<td class="entry" headers="ID-00005b8a__entry__2">Errors reported from
the video player when a default creative should have served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__1">Bid Sent No
Reponses</td>
<td class="entry" headers="ID-00005b8a__entry__2">Bid responses returned
by Xandr where ultimately the creative does not
render.
<p>The most common scenario in which this occurs is when <span
class="ph">Xandr receives an ad request from an external system -
such as a publisher ad server utilizing prebid or a traditional
waterfall - and returns a response, but the external system selects a
different bid.</p>
<p>Other examples of reasons this can occur include:</p>
<ul>
<li>The end user leaves the page before the impression tracker
fires.</li>
<li>An ad is requested but never loads due to lazy loading.</li>
<li>A video player requests an ad but never plays the ad.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__1">Default No
Reponses</td>
<td class="entry" headers="ID-00005b8a__entry__2">Ad requests where a
default creative was sent but no response was received from the end ad
server. This could be the result of an error or an alternate default tag
was chosen by the final ad server.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__1">PSAs or Blanks</td>
<td class="entry" headers="ID-00005b8a__entry__2">The number of blanks
or PSAs served. It can also include ad requests where no bids were
submitted by Xandr, such as unfilled header
bidding requests.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__1">Total Ad Requests</td>
<td class="entry" headers="ID-00005b8a__entry__2">The total number of ad
requests sent to Xandr. (Filtered Requests +
Imps (kept) + Imps (resold) + Defaults + Video Player Errors + Video
Default Errors + Bid Sent No Responses + Default No Responses + PSAs or
Blanks)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__1">Total Ad
Responses</td>
<td class="entry" headers="ID-00005b8a__entry__2">The total number of ad
responses counted within Xandr. (Imps (kept) +
Imps (resold) + Video Player Errors + Bid Sent No Responses)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__1">Response Rate</td>
<td class="entry" headers="ID-00005b8a__entry__2">The rate of total
number of ad responses counted within Xandr to
the number of ad requests that are not filtered pre-bid by <span
class="ph">Xandr. [Total Ad Responses / (Total Ad Requests -
Filtered Requests)]</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__1">Win Rate</td>
<td class="entry" headers="ID-00005b8a__entry__2">The rate of total
number of managed and kept impressions to the total number of ad
responses counted within Xandr. [Imps (kept +
resold) / Total Ad Responses]</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__1">Filtered Request
Rate</td>
<td class="entry" headers="ID-00005b8a__entry__2">The rate of filtered
requests to the total number of ad requests sent to <span
class="ph">Xandr for auction. (Filtered Requests / Total Ad
Requests)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__1">Fill Rate</td>
<td class="entry" headers="ID-00005b8a__entry__2">The rate of total
number of resold and kept impressions to the total number of ad requests
sent to Xandr for auction. [Imps (resold + kept)
/ Total Ad Requests]</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__1">RPM</td>
<td class="entry" headers="ID-00005b8a__entry__2">For definition of rpm,
see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>. In this report, RPM is seller
revenue earned per 1000 ad requests sent to <span
class="ph">Xandr for auction. (1000 * Seller Revenue / Total Ad
Requests)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__1">eCPM</td>
<td class="entry" headers="ID-00005b8a__entry__2">For definition of
eCPM, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>. In this report, eCPM is
seller revenue earned per 1000 impression resold to a third-party buyer.
[1000 * Seller Revenue / Imps (resold)]</td>
</tr>
</tbody>
</table>



You also have the option to display monetary values in USD and the
Advertiser/Buying Currency.

Filters



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005b8a__entry__39" class="entry">Name</th>
<th id="ID-00005b8a__entry__40" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__39">Publisher</td>
<td class="entry" headers="ID-00005b8a__entry__40">The publisher on
whose site the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__39">Placement Group</td>
<td class="entry" headers="ID-00005b8a__entry__40">The placement group
where the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__39">Placement</td>
<td class="entry" headers="ID-00005b8a__entry__40">The placement on
which the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__39">Country</td>
<td class="entry" headers="ID-00005b8a__entry__40">The country in which
the impression occured.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__39">Supply Type</td>
<td class="entry" headers="ID-00005b8a__entry__40">The seller-classified
channel to denominate supply in terms of web, mobile-optimized web, and
mobile app impressions. Possible values:
<ul>
<li><code class="ph codeph">"web"</code></li>
<li><code class="ph codeph">"mobile_app"</code></li>
<li><code class="ph codeph">"mobile_web"</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__39">Deal</td>
<td class="entry" headers="ID-00005b8a__entry__40">The deal associated
with the transaction for the impression.</td>
</tr>
</tbody>
</table>



Dimensions

Grouping by dimension allows you to display certain fields of reporting
data in a particular order.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005b8a__entry__53" class="entry">Name</th>
<th id="ID-00005b8a__entry__54" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__53">Ad Request Call
Type</td>
<td class="entry" headers="ID-00005b8a__entry__54">The type of handler
that was used to send the impression to Xandr
(e.g., ttj, ut, mob, ptv, openrtb)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__53">Site Domain</td>
<td class="entry" headers="ID-00005b8a__entry__54">For web or mobile web
impressions, the domain where the impression occurred. There is one
additional value that may appear in place of a domain:
<ul>
<li><code class="ph codeph">"---"</code>: This means that we didn't
receive a valid domain as the referrer. For example, the domain may be
blank or otherwise malformed.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__53">Mobile
Application</td>
<td class="entry" headers="ID-00005b8a__entry__54">For mobile app
impressions, the Apple App Store or Google Play name and ID of the
mobile application where the impression occurred, for example, <code
class="ph codeph">"Angry Birds (343200656)"</code> or <code
class="ph codeph">"Angry Birds (com.rovio.angrybirds)"</code>.
<ul>
<li><code class="ph codeph">"---"</code>: This means that we didn't
receive a valid mobile app name as the referrer or the app has received
too few impressions to be included in reporting.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__53">Publisher</td>
<td class="entry" headers="ID-00005b8a__entry__54">The name and ID of
the publisher on whose site the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__53">Placement Group</td>
<td class="entry" headers="ID-00005b8a__entry__54">The name and ID of
the placement group where the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__53">Placement</td>
<td class="entry" headers="ID-00005b8a__entry__54">The name and ID of
the placement on which the impression occurred.
<p>Note that a placement ID of <code class="ph codeph">0</code> may
appear for 3rd-party impression trackers. For more information about
impression trackers, see <a
href="working-with-impression-and-click-trackers.md"
class="xref">Working with Impression and Click Trackers</a>.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__53">Country</td>
<td class="entry" headers="ID-00005b8a__entry__54">The country in which
the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__53">Seller Currency</td>
<td class="entry" headers="ID-00005b8a__entry__54">The seller currency
associated with the impressions and/or activity.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__53">Supply Type</td>
<td class="entry" headers="ID-00005b8a__entry__54">The seller-classified
channel to denominate supply in terms of web, mobile-optimized web, and
mobile app impressions. Possible values are <code
class="ph codeph">"web"</code>, <code
class="ph codeph">"mobile_app"</code>, and <code
class="ph codeph">"mobile_web"</code>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005b8a__entry__53">Deal</td>
<td class="entry" headers="ID-00005b8a__entry__54">The deal associated
with the transaction for the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005b8a__entry__53">Allowed Media
Types</td>
<td class="entry" headers="ID-00005b8a__entry__54">The media types that
are allowed to participate in the auction. The permitted media types is
a combination that is enabled through the ad call and placement
settings. Possible values are <code class="ph codeph">Banner</code>,
<code class="ph codeph">Expandable</code> and <code
class="ph codeph">Native</code>.</td>
</tr>
</tbody>
</table>



To Run your Report

Follow these steps to run your report.

1.  Select Reporting from the
    appropriate top menu (depending on how your account has been
    configured).
    1.  Or, from the Publishers top menu, click on
        Prebid
        Server Premium \>
        Analytics \>
        Prebid Server Analytics
2.  Select the relevant report from the list. The
    Report screen shows the available
    filters, dimensions, and delivery options for the report. The
    selections you make here will determine what report data is
    delivered to you, and how.
    

    <b>Important:</b> For an explanation of
    how grouping and filtering work, see
    <a href="dimensions-metrics-filtering-and-grouping.md"
    class="xref">Dimensions, Metrics, Filtering, and Grouping</a>.

    
3.  Select the relevant filters to limit the data displayed to just the
    information you want. For example, rather than running a report that
    shows impressions for all inventory sources, you may want to list
    results for just a select few. When you select a filter (by clicking
    Edit), a selection panel appears.
    Select items in the **Available** list (left), then click
    Add to include them in the
    **Chosen** list (right).
4.  Group by Dimension. Grouping allows you to display rows of data in
    the order you prefer.
    

    <b>Warning:</b> The more dimensions you
    group by, the larger the data set that is returned. Larger data sets
    can take substantially longer to process. Be sure to group using
    only the dimensions you need.

    
5.  Choose a delivery option. Once you've selected your filters and
    grouped by your chosen dimensions, you need to choose a delivery
    method. Available delivery methods include:
    - **Run now, show results in screen**: For smaller amounts of data,
      you may want to view the report as soon as possible in your
      browser. You can download the report in XLSX, CSV, Excel/TSV and
      JSON format. However, there is a limit of 100,000 rows per report
      when downloading as XLSX and Excel file.
    - **Run in background, notify me when results are ready to view**: A
      popup notification will let you know when the report is ready to
      view or download.
      

      <b>Tip:</b> The maximum size of the
      report that can be downloaded from the UI is 100 MB. Also, there
      is a limit of 100,000 rows per report when downloading as XLSX and
      Excel file. If the size of the report is more than that, you can
      try to download it using the <a
      href="xandr-api/report-service.md"
      class="xref" target="_blank">API</a> for that reporting service
      (The limit here is 10 million rows).

      
    - <span id="ID-00005b8a__d10e107">**Export, send results via
      email**: Run the report in the background and email the results to
      one or more email addresses.
    - **Save as report template**: Save your selected report settings so
      that you can run this report again in the future. You can name
      this template using the text entry field under
      Name this report (its checkbox
      is auto-selected when you choose this option). A saved report can
      be rerun from the Your Reports
      screen.
    - **Add to scheduled reports**: Run this report automatically at
      specified times and have it sent to one or more email addresses.
    - **Name this report**: Give this report with its current settings a
      name for future reference.
6.  <span id="ID-00005b8a__d10e136">Click Run
    report to send your report request.






