---
Title : Seller Site Domain Report
Description : The **Seller Site Domain** report is designed to give sellers
ms.date: 10/28/2023
information about what kind of web and mobile app inventory is coming
through a publisher. For example, as a seller, you might distribute
---


# Seller Site Domain Report





The **Seller Site Domain** report is designed to give sellers
information about what kind of web and mobile app inventory is coming
through a publisher. For example, as a seller, you might distribute
placement tags to your publishers and then want to verify that those
tags are running on the inventory you intended. In addition, this report
allows you to:

- See what kind of web or mobile app inventory is coming through a
  publisher so you can understand how to value it
- Guarantee a certain degree of inventory quality to managed buyers
- Optimize on domains or mobile application ID for managed campaigns
- Understand the business impact of Xandr audit
  and categorization

**Available to Members and Publishers:** This page describes both the
member-level version **and** the publisher version; they are essentially
the same.

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

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005d32__entry__1" class="entry">Name</th>
<th id="ID-00005d32__entry__2" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__1">Content Category</td>
<td class="entry" headers="ID-00005d32__entry__2">The name and ID of the
universal content category associated with this site or placement. <span
class="ph">For more information about content categories, see <a
href="content-categories.md" class="xref">Content
Categories</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__1">Site Domain</td>
<td class="entry" headers="ID-00005d32__entry__2">The domain where the
impression occurred. For mobile applications, this can be the URL of the
app's location in the app store. There are two additional values that
may appear in place of a domain, specifically: <code
class="ph codeph">"deals.unknown"</code> or <code
class="ph codeph">"managed.unknown"</code>. These mean that we didn't
receive a valid domain as the referrer. For example, the domain may be
blank or otherwise malformed.

<b>Note:</b> In some cases, this field will be
populated with a domain that is different than where the impression
actually occurred, such as an ad server domain. For more information
about why this happens, see <strong>Passing Domains Across
iFrames</strong> below.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__1">Mobile
Application</td>
<td class="entry" headers="ID-00005d32__entry__2">For mobile app
impressions, the Apple App Store or Google Play name and ID of the
mobile application where the impression occurred, for example, <code
class="ph codeph">"Angry Birds (343200656)"</code> or <code
class="ph codeph">"Angry Birds (com.rovio.angrybirds)"</code> <code
class="ph codeph">"---"</code>: This means that we didn't receive a
valid mobile app name as the referrer or the app has received too few
impressions to be included in reporting.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__1">Publisher</td>
<td class="entry" headers="ID-00005d32__entry__2">The name and ID of the
publisher on whose site the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__1">Placement Group</td>
<td class="entry" headers="ID-00005d32__entry__2">The name and ID of the
placement group where the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__1">Placement</td>
<td class="entry" headers="ID-00005d32__entry__2">The name and ID of the
placement on which the impression occurred.
<p>Note that a placement ID of <code class="ph codeph">0</code> may
appear for 3rd-party impression trackers. For more information about
impression trackers, see <a
href="working-with-impression-and-click-trackers.md"
class="xref">Working with Impression and Click Trackers</a>.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__1">Remarketing Type</td>
<td class="entry" headers="ID-00005d32__entry__2">Indicates whether the
domain is part of a remarketing segment (e.g., yes/no).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__1">Age</td>
<td class="entry" headers="ID-00005d32__entry__2">The age of the user
associated with the impression. For impressions older than 100 days, the
age will be "unknown".</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__1">Gender</td>
<td class="entry" headers="ID-00005d32__entry__2">The gender of the
user. For impressions older than 100 days, the gender will be
"unknown".</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__1">Impression Type</td>
<td class="entry" headers="ID-00005d32__entry__2">The type of impression
that occurred. Possible impression types:
<ul>
<li><code class="ph codeph">"PSA (2)"</code>: The auction ended in
default due to a lack of bids, or there may not have been any bids that
met the seller's reserve price. No default creative was assigned to the
placement, and a PSA was served.</li>
<li><code class="ph codeph">"Default Error (3)"</code>: The auction
ended in default due to a technical error, and the placement's default
creative was served.</li>
<li><code class="ph codeph">"Default (4)"</code>: The auction ended in
default due to a lack of bids, or there may not have been any bids that
met the seller's reserve price. A default creative was served.</li>
<li><code class="ph codeph">"Kept (5)"</code>: The auction ended with a
managed buyer winning.</li>
<li><code class="ph codeph">"Resold (6)"</code>: The auction ended with
an external buyer winning.</li>
<li><code class="ph codeph">"PSA Error (8)"</code>: The auction ended in
default due to a technical error. No default creative was assigned to
the placement, and a PSA was served.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__1">Audit Type</td>
<td class="entry" headers="ID-00005d32__entry__2">The type of audit
performed on the domain where the impression occurred. Possible values:
<ul>
<li><code class="ph codeph">"By Seller"</code>: The domain was
self-audited.</li>
<li><code class="ph codeph">"By </code><code
class="ph codeph">AppNexus</code><code
class="ph codeph">"</code>: The domain was audited by <span
class="ph">AppNexus.</li>
<li><code class="ph codeph">"By Seller &amp; </code><span
class="ph"><code class="ph codeph">AppNexus</code><code
class="ph codeph">"</code>: The domain was audited by both the seller
and AppNexus.</li>
<li><code class="ph codeph">"Unknown Audit Type"</code>: This usually
means that the domain is unaudited. In some cases, this means that the
domain was not auditable for technical reasons.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__1">Exposed for
Resale</td>
<td class="entry" headers="ID-00005d32__entry__2">Whether this inventory
is exposed for resale. Possible values:
<ul>
<li><code class="ph codeph">"Exposed"</code></li>
<li><code class="ph codeph">"Not Exposed"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__1">Domains Exposed</td>
<td class="entry" headers="ID-00005d32__entry__2">Whether this
inventory's domains are exposed for targeting by buyers. Possible
values:
<ul>
<li><code class="ph codeph">"Exposed"</code></li>
<li><code class="ph codeph">"Not exposed"</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__1">Fold Position</td>
<td class="entry" headers="ID-00005d32__entry__2">The fold position of
the impression (i.e., where on the page the placement is located).<br />
Possible values for non-Facebook impressions:
<ul>
<li>unknown</li>
<li>above</li>
<li>below</li>
</ul>
<p>Possible values for Facebook impressions:</p>
<ul>
<li>Top FB Ad Slot</li>
<li>2nd FB Ad Slot</li>
<li>3rd FB Ad Slot</li>
<li>4th FB Ad Slot</li>
<li>5th FB Ad Slot</li>
<li>6th FB Ad Slot</li>
<li>7th FB Ad Slot</li>
<li>8th FB Ad Slot</li>
<li>9th FB Ad Slot</li>
<li>10th FB Ad Slot</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__1">Supply Type</td>
<td class="entry" headers="ID-00005d32__entry__2">The seller-classified
channel to denominate supply in terms of web, mobile-optimized web, and
mobile app impressions. Possible values:
<ul>
<li><code class="ph codeph">"web"</code></li>
<li><code class="ph codeph">"mobile_app"</code></li>
<li><code class="ph codeph">"mobile_web"</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__1">Operating System</td>
<td class="entry" headers="ID-00005d32__entry__2">The operating system
of the device where the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__1">Operating System
Family</td>
<td class="entry" headers="ID-00005d32__entry__2">The name of the
operating system family associated with the device the impression was
served on (e.g., Android, Apple iOS).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__1">Filtered Request
Reason</td>
<td class="entry" headers="ID-00005d32__entry__2">The reason the ad
request was filtered out by Xandr prior to
bidding.</td>
</tr>
</tbody>
</table>

Filters

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005d32__entry__39" class="entry">Name</th>
<th id="ID-00005d32__entry__40" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__39">Content Category</td>
<td class="entry" headers="ID-00005d32__entry__40">The universal content
category associated with this site or placement. For
more information about content categories, see <a
href="content-categories.md" class="xref">Content
Categories</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__39">Publisher</td>
<td class="entry" headers="ID-00005d32__entry__40">The publisher on
whose site the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__39">Placement Group</td>
<td class="entry" headers="ID-00005d32__entry__40">The placement group
where the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__39">Placement</td>
<td class="entry" headers="ID-00005d32__entry__40">The placement on
which the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__39">Age</td>
<td class="entry" headers="ID-00005d32__entry__40">The age of the user
associated with the impression. For impressions older than 100 days, the
age will be "unknown".</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__39">Gender</td>
<td class="entry" headers="ID-00005d32__entry__40">The gender of the
user. For impressions older than 100 days, the gender will be
"unknown".</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__39">Impression Type</td>
<td class="entry" headers="ID-00005d32__entry__40">The type of
impression. Possible values (associated IDs in parentheses):
<ul>
<li>"Blank" (1): No creative served.</li>
<li>"PSA" (2): A public service announcement served because no other
creative was eligible.</li>
<li>"Default Error" (3): A default creative served due to timeout
issue.</li>
<li>"Default" (4): A default creative served because no campaigns bid or
no other creative was eligible.</li>
<li>"Kept" (5): One of your managed advertisers served a creative.</li>
<li>"Resold" (6): The impression was sold to a third-party buyer.</li>
<li>"RTB" (7): Your creative served on third-party inventory.</li>
<li>"PSA Default Error" (8): A public service announcement served due to
timeout issue.</li>
<li>"External Impression" (9): An impression from an impression
tracker.</li>
<li>"External Click" (10): A click from a click tracker.</li>
<li>"Insertion" (11): Your creative served on third-party inventory
where it persists across page-loads and sessions. <b>Note:</b> This impression
type is currently only for Facebook News Feed creatives.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__39">Audit Type</td>
<td class="entry" headers="ID-00005d32__entry__40">The type of audit
performed on the domain where the impression occurred. Possible values:
<ul>
<li><code class="ph codeph">"By Seller"</code>: The domain was
self-audited.</li>
<li><code class="ph codeph">"By </code><code
class="ph codeph">AppNexus</code><code
class="ph codeph">"</code>: The domain was audited by <span
class="ph">AppNexus.</li>
<li><code class="ph codeph">"By Seller &amp; </code><span
class="ph"><code class="ph codeph">AppNexus</code><code
class="ph codeph">"</code>: The domain was audited by both the seller
and AppNexus.</li>
<li><code class="ph codeph">"Unknown Audit Type"</code>: This usually
means that the domain is unaudited. In some cases, this means that the
domain was not auditable for technical reasons.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__39">Fold Position</td>
<td class="entry" headers="ID-00005d32__entry__40">The fold position of
the impression (i.e., where on the page the placement is located).<br />
Possible values for non-Facebook impressions:
<ul>
<li>unknown</li>
<li>above</li>
<li>below</li>
</ul>
<p>Possible values for Facebook impressions:</p>
<ul>
<li>Top FB Ad Slot</li>
<li>2nd FB Ad Slot</li>
<li>3rd FB Ad Slot</li>
<li>4th FB Ad Slot</li>
<li>5th FB Ad Slot</li>
<li>6th FB Ad Slot</li>
<li>7th FB Ad Slot</li>
<li>8th FB Ad Slot</li>
<li>9th FB Ad Slot</li>
<li>10th FB Ad Slot</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__39">Supply Type</td>
<td class="entry" headers="ID-00005d32__entry__40">The seller-classified
channel to denominate supply in terms of web, mobile-optimized web, and
mobile app impressions. Possible values:
<ul>
<li><code class="ph codeph">"web"</code></li>
<li><code class="ph codeph">"mobile_app"</code></li>
<li><code class="ph codeph">"mobile_web"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__39">Operating System</td>
<td class="entry" headers="ID-00005d32__entry__40">The operating system
of the device where the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__39">Operating System
Family</td>
<td class="entry" headers="ID-00005d32__entry__40">The name of the
operating system family associated with the device the impression was
served on (e.g., Android, Apple iOS).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__39">Seller Name</td>
<td class="entry" headers="ID-00005d32__entry__40">The name of the
seller member associated with the site domain.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__39">Seller ID</td>
<td class="entry" headers="ID-00005d32__entry__40">The ID of the seller
member associated with the site domain.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__39">Filtered Request
Reason</td>
<td class="entry" headers="ID-00005d32__entry__40">The reason the ad
request was filtered out by Xandr prior to
bidding.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__39">Minimum
Impression</td>
<td class="entry" headers="ID-00005d32__entry__40">Rows with less than
this number of impressions will be excluded from the report.</td>
</tr>
</tbody>
</table>

Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005d32__entry__73" class="entry">Column</th>
<th id="ID-00005d32__entry__74" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__73">Filtered Request</td>
<td class="entry" headers="ID-00005d32__entry__74">The total number of
impressions which have been filtered out by <span
class="ph">Xandr Inventory Quality (e.g. from a blocklisted
domain, IP, etc.).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__73">Imps</td>
<td class="entry" headers="ID-00005d32__entry__74">The number of
impressions coming through this site or placement.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__73">Clicks</td>
<td class="entry" headers="ID-00005d32__entry__74">The number of clicks
coming through this site or placement.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__73">Network Revenue</td>
<td class="entry" headers="ID-00005d32__entry__74">The amount of network
revenue running through this site or placement. This is the revenue
coming into the network, booked through direct advertisers and resold to
real time buyers.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__73">Publisher
Revenue</td>
<td class="entry" headers="ID-00005d32__entry__74">The amount of
publisher revenue running through this site or placement. This is the
revenue paid out to the publisher (on a Revshare or CPM basis).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__73">Viewable Imps</td>
<td class="entry" headers="ID-00005d32__entry__74">The number of
measured impressions that were viewable, per the IAB Viewability
definition, which states that an impression is viewable if 50% of the
pixels are in-view during 1 consecutive second.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__73">View-Measured
Imps</td>
<td class="entry" headers="ID-00005d32__entry__74">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00005d32__entry__73">Viewability Rate</td>
<td class="entry" headers="ID-00005d32__entry__74">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00005d32__entry__73">Viewability
Measurement Rate</td>
<td class="entry" headers="ID-00005d32__entry__74">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps)</td>
</tr>
</tbody>
</table>



Passing Domains Across iFrames

Serving ads inside of iFrames is preferred by publishers for a number of
reasons, to include:

- Increased Security: For security reasons, communication between
  iFrames serving from different domains is prohibited by the browser.
  This is known as the "Same Origin Policy". For more information, see
  the W3C's <a href="http://www.w3.org/Security/wiki/Same_Origin_Policy"
  class="xref" target="_blank">Same Origin Policy</a> page.
- Page Load Speed: Page load speed is guaranteed to be unaffected by
  advertisements inside iFrames because iFrames allow asynchronous
  loading of both page content and advertisements. This ensures that the
  user does not have to wait for the rest of the page to load in the
  event that serving an advertisement happens more slowly than expected.

For these and other reasons, some networks provide their publishers with
an iFrame in which to display advertisements. If this iFrame delivers
its contents from the network's domain and not the publisher's, it can
lead to difficulties in determining the domain on which an impression
actually occurred.

For example, a publisher is given a snippet of HTML code to put on their
pages that includes an iFrame referencing a network's domain,
`best-network.net`:

``` pre
            <!-- Publisher's Web Page -->
            <iframe src="http://best-network.net"> 
            <!-- iFrame Referencing Network Domain --> 
            <script src="http://cooladexchange.net/tag?id=12345">
            </script>
            <!-- Ad Exchange Placement serving on Network Domain --> 
            </iframe> 
         
```

The iFrame is located on the publisher's web page, but it is serving its
contents from the network's domain. Because the page and the iFrame are
hosted on different domains, the security restrictions of the "Same
Origin Policy" apply, and communication between the publisher's page and
the network's iFrame is forbidden. Therefore the network is unable to
determine the actual domain of the publisher's page. As a result, the
network passes along its own domain as the referring URL to the
placement.

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

      
    - <span id="ID-00005d32__d10e107">**Export, send results via
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
6.  <span id="ID-00005d32__d10e136">Click Run
    report to send your report request.





Related Topics

- <a href="network-reporting.md" class="xref">Network Reporting</a>
- <a href="network-site-domain-performance-report.md"
  class="xref">Network Site Domain Performance Report</a>
- <a href="network-analytics-report.md" class="xref">Network Analytics
  Report</a>






