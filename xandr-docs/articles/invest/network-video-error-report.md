---
Title : Member Video Error Report
Description : The Member Video Error Report gives insight into
video errors and their cause.
---


# Member Video Error Report





The Member Video Error Report gives insight into
video errors and their cause.

You can use this report to troubleshoot video settings and eliminate
errors relating to buy- and sell-side video advertising. <a
href="https://wiki.iabtechlab.com/index.php?title=VAST_Error_Code_Troubleshooting_Matrix"
class="xref" target="_blank">VAST 3 error codes</a> provide further
insight into the source of errors.

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





<b>Note:</b> For impressions older than 100
days, the day will be returned rather than the hour.



This report's data is retained for 420 days

Currency 2.0





<b>Note:</b> By enabling
Currency 2.0, you can select a
currency for each individual report if you prefer not to use
USD as the default currency. The
report will show all the monetary fields in your report using the
selected currency. For example, if you select
Advertiser, click the
Currency 2.0 toggle to enable it, and
select Japanese Yen (JPY) from the
Currency menu, the report will show
all monetary data in JPY, including data associated with child objects
such as line items.





Dimensions

The **Filter?** column shows
whether a dimension can be used as a filter as well as being used to
group by.

For all revenue fields, the currency is defined by the
Buying Currency field.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002fd5__entry__1" class="entry">Column</th>
<th id="ID-00002fd5__entry__2" class="entry">Filter?</th>
<th id="ID-00002fd5__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__1">Only include results
where a Deal is present</td>
<td class="entry" headers="ID-00002fd5__entry__2">N</td>
<td class="entry" headers="ID-00002fd5__entry__3">Determines whether
results are limited to deals only.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__1">Advertiser</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The name of the
advertiser associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__1">Insertion Order</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The name of the
insertion order associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__1">Line Item</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The name of the line
item associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__1">Campaign</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The name of the
campaign associated with the impression. (Does not apply to all
advertisers.)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__1">Deal</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The name of the deal
associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__1">Creative</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The name of the
creative served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__1">Publisher</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The name of the
publisher associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__1">Placement Group</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The name of the
placement group associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__1">Placement</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The name of the
placement associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__1">Ad Request Call
Type</td>
<td class="entry" headers="ID-00002fd5__entry__2">N</td>
<td class="entry" headers="ID-00002fd5__entry__3">The type of handler
that was used to send the impression to Xandr
(e.g., <code class="ph codeph">vmap</code>, <code
class="ph codeph">ut</code> , <code class="ph codeph">mob</code> , <code
class="ph codeph">ptv</code> , <code class="ph codeph">openrtb</code>
).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__1">Site Domain</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The ID of the user's
mobile app.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__1">Application ID</td>
<td class="entry" headers="ID-00002fd5__entry__2">N</td>
<td class="entry" headers="ID-00002fd5__entry__3">The ID of the mobile
app on the device where the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__1">Device Type</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The type of device
where the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__1">Impression Type</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The type of
impression. An integer value which translates as follows:
<ul>
<li>1 = Blank</li>
<li>2 = PSA</li>
<li>3 = Default Error</li>
<li>4 = Default</li>
<li>5 = Kept</li>
<li>6 = Resold</li>
<li>7 = RTB</li>
<li>8 = PSA Error</li>
<li>9 = External Impression</li>
<li>10 = External Click</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__1">Video Context</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">When and where the
video ad plays – pre-roll, mid-roll, post-roll, or outstream.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__1">Video Playback
Method</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The playback method
for the creative, for example ' Autoplay, Sound On'.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__1">Video Player Size</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The size of the player
based on width in pixels, e.g., 'small', 'medium', 'large'.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__1">Creative Duration</td>
<td class="entry" headers="ID-00002fd5__entry__2">N</td>
<td class="entry" headers="ID-00002fd5__entry__3">The length of the
video creative, in seconds.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__1">Bidder Name</td>
<td class="entry" headers="ID-00002fd5__entry__2">N</td>
<td class="entry" headers="ID-00002fd5__entry__3">The name of the bidder
associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__1">Buyer</td>
<td class="entry" headers="ID-00002fd5__entry__2">N</td>
<td class="entry" headers="ID-00002fd5__entry__3">The name of the buyer
associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__1">Country</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The country in which
the impression took place.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__1">Seller</td>
<td class="entry" headers="ID-00002fd5__entry__2">N</td>
<td class="entry" headers="ID-00002fd5__entry__3">The name of the seller
associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__1">Supply Type</td>
<td class="entry" headers="ID-00002fd5__entry__2">Y</td>
<td class="entry" headers="ID-00002fd5__entry__3">The supply type for
the impression - Web, Mobile Web, or Mobile App.</td>
</tr>
</tbody>
</table>





<b>Note:</b> You can also filter on a
particular number of impressions using the **Minimum Impressions**
filter.



Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002fd5__entry__76" class="entry">Column</th>
<th id="ID-00002fd5__entry__77" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">Imps</td>
<td class="entry" headers="ID-00002fd5__entry__77">The total number of
impressions. Note that for a video, an impression occurs when the first
frame of the creative plays.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">Imps (default)</td>
<td class="entry" headers="ID-00002fd5__entry__77">Impressions where a
default creative served because there were no valid bids.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">Imps (kept)</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of
impressions in which a managed advertiser's creative serves on the
managed publisher's site.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">Imps (resold)</td>
<td class="entry" headers="ID-00002fd5__entry__77">The total number of
resold impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">Imps (RTB)</td>
<td class="entry" headers="ID-00002fd5__entry__77">The total number of
RTB impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">Clicks</td>
<td class="entry" headers="ID-00002fd5__entry__77">The total number of
clicks associated with the video ad.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">CTR</td>
<td class="entry" headers="ID-00002fd5__entry__77">The click-through
rate – the ratio of clicks to impressions, expressed as a
percentage.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">Revenue</td>
<td class="entry" headers="ID-00002fd5__entry__77">The total revenue for
all video ad completion</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">Revenue per
Complete</td>
<td class="entry" headers="ID-00002fd5__entry__77">The revenue per video
completion</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">Total RPM</td>
<td class="entry" headers="ID-00002fd5__entry__77">The total reported
revenue for the placement.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">Cost</td>
<td class="entry" headers="ID-00002fd5__entry__77">The total cost of
impressions for the buyer.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">CPM</td>
<td class="entry" headers="ID-00002fd5__entry__77">The cost per mille
(CPM) for the impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">Cost per
Complete</td>
<td class="entry" headers="ID-00002fd5__entry__77">The cost to the buyer
per video completion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST Error Rate</td>
<td class="entry" headers="ID-00002fd5__entry__77">The rate of vast
errors for the video player, expressed as a percentage.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">Ads Served</td>
<td class="entry" headers="ID-00002fd5__entry__77">The total number of
creative responses returned in response to a bid request. (Note that for
a video, this does not equal an impression, because the first frame may
or may not have been played.)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">Total Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The total number of
VAST errors for the video player.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 100 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">Indicates XML parsing
error on the placement. Possible causes include:
<ul>
<li>VAST supplied in adm is not a valid XML document.</li>
<li>URL supplied in nurl does not resolve to a valid XML document.</li>
<li>Nurl only: Server did not respond with VAST, or at all when player
called the nurl.</li>
<li>Perhaps a CORS issue</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 101 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">Indicates VAST schema
validation error on the placement. This means that the VAST validates as
XML, but does not validate per the VAST schema (in other words there are
missing mandatory elements or attributes, or combinations of
elements/attributes that are not permissible).
<p>Some possible reasons for invalidity:</p>
<ul>
<li>In-line and wrapper both present.</li>
<li>AdTagURI missing in wrapper element.</li>
<li>Duration missing.</li>
<li>Missing ad node or MediaFile node.</li>
<li>Offset attribute on progress event is missing or not a valid
value.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 102 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">Indicates that the
VAST version of response is not supported. Possible causes:
<ul>
<li>Bidder did not respect the VAST version(s) listed in the bid
request.</li>
<li>Exchange is sending wrong VAST version(s) in bid request.</li>
<li>VAST does not contain version (this could also be considered a
schema validation issue)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 200 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">Indicates a
trafficking error. Possible causes:
<ul>
<li>Layer wanted Skippable Linear, but got back Linear.</li>
<li>Player wanted Linear, but got back Skippable Linear.</li>
<li>For Skippable Linear, skipoffset doesn't meet publisher
expectations.</li>
<li>Bidder did not respect the skippability/skipoffset in the bid
request.</li>
<li>Exchange is sending wrong skippability/skipoffset in the bid
request.</li>
<li>Potentially any of the reasons in 201-203</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 201 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused by the video player expecting different linearity. For more
information see IAB's <a
href="https://www.iab.com/wp-content/uploads/2016/04/VAST4.0_Updated_April_2016.pdf"
class="xref" target="_blank">VAST documentation</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 202 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused because the video player was requires a different video duration.
For example, if a player is set up to play only 15-second video
creatives and receives a 30-second creative from the buyer, the creative
won't serve. In addition, creatives that are too short to fill the video
duration may not serve unless the player allows ad podding and the total
duration of videos in the ad pod fits the required duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 203 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
that occurred because the video player was expecting a different
size.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 300 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused by a general wrapper error.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 301 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused due to the timeout of the VAST URI provided in the wrapper
element, or of VAST URI provided in a subsequent wrapper element. This
includes request errors such as invalid URI, unreachable or request
timeout for URI, and security or other exceptions related to requesting
a VAST URI.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 302 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused because the wrapper limit was reached, as defined by the video
player. Too many Wrapper responses have been received with no in-line
response.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 303 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused due to no VAST response after one or more wrappers. Also includes
the number of empty VAST responses from fallback (waterfall
handling).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 400 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of general
linear errors, generally because the video player is unable to display
the linear ad.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 401 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused because the file was not found when the player was unable to find
Linear/MediaFile in the URI.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 402 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
due MediaFile URI timeouts.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 403 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused because the video player can't find a media file whose attributes
it supports.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 405 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused due to a problem displaying the media file.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 500 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of general
NonLinearAds errors.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 501 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused due to creative dimensions that do not align with creative
display area (i.e., creative dimension too large).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 502 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused because the player could not fetch the NonLinearAds/NonLinear
resource.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 503 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused because the player could not find NonLinearresource with the
supported type.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 600 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of general
companionAds errors.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 601 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused because because the creative dimensions do not fit within the
companion ad display area (i.e., no available space).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 602 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused because the required companion could not be displayed.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 603 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused because the player was unable to fetch companionAds/companion
resource.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 604 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of errors
caused because the player could not find companion resource with
supported type.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 900 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of
undefined errors.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002fd5__entry__76">VAST 901 Error
Count</td>
<td class="entry" headers="ID-00002fd5__entry__77">The number of general
VPAID errors.</td>
</tr>
</tbody>
</table>



To Run Your Report

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

      
    - **Export, send results via
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
6.  Click Run
    report to send your report request.






