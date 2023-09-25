---
Title : Buyer Engagement Report
Description : The Buyer Engagement Report gives you insight into the viewable duration
of your display and video creatives.
---


# Buyer Engagement Report



The Buyer Engagement Report gives you insight into the viewable duration
of your display and video creatives.



## Time Frame

All dates and times are given in UTC.

**Time Ranges**

Time ranges define the time period of the data extracted for the report.
Here are the ranges available for this report:

- Custom
- Yesterday
- Last 7 Days
- Last 14 Days
- Month To Yesterday
- Last 30 Days

**Intervals**

Intervals determine how your data is grouped together into rows in the
report response. Here are the intervals available for this report:

- Daily: Data is grouped into rows by the day.
- Monthly: Data is grouped into rows by the month.
- Cumulative: Data is grouped together in one figure, covering the
  entire selected time range.





## Data Retention Period

This report can retrieve data from the last five weeks.





## Dimensions

The Filter? column shows whether a
dimension can be used as a filter as well as being used to group by.

Some dimensions have *attributes*. Dimension attributes are a more
granular element of data about the parent dimension. If a dimension has
attributes, the name of its attributes will appear below it using the
following syntax: *Dimension_Name:Attribute_Name*.

<table id="buyer-engagement-report__table_cfz_dbh_htb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="buyer-engagement-report__table_cfz_dbh_htb__entry__1"
class="entry">Dimension</th>
<th id="buyer-engagement-report__table_cfz_dbh_htb__entry__2"
class="entry">Filter?</th>
<th id="buyer-engagement-report__table_cfz_dbh_htb__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Insertion
Order</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The name
and ID of the insertion order under which the impression was purchased.
For more information about insertion orders, see <a
href="working-with-insertion-orders.md" class="xref">Working with
Insertion Orders</a>.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Line
Item</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The ID
and name of a line item. For more information about line items, see <a
href="working-with-line-items.md" class="xref">Working with Line
Items</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Campaign</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The
campaign that purchased this impression (doesn't apply to all
advertisers)</td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Creative</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The
creative that served on this impression. For more information about
creatives, see <a href="working-with-creatives.md" class="xref"
title="You can traffic a wide range of creative types, from banners to increasingly pervasive rich media types, through the Xandr platform. Only secure content is supported.">Working
with Creatives</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Seller</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The
seller of the impression</td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Publisher</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The
publisher who owns the inventory on which the impression occurred</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Placement</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The
placement where the impression occurred</td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Impression
Type</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The type
of impression served. Below are the 11 impression types and their
definitions:
<ol>
<li><strong>Blank</strong> - No creative served</li>
<li><strong>PSA</strong> - A public service announcement served because
no other creative was eligible</li>
<li><strong>Default Error</strong> - A default creative served due to a
timeout issue</li>
<li><strong>Default</strong> - A default creative served because there
were no valid bids</li>
<li><strong>Kept</strong> - Your advertiser's creative served on your
publisher's site</li>
<li><strong>Resold</strong> - Your publisher's impression was sold to a
third-party buyer</li>
<li><strong>RTB</strong> - Your advertiser's creative served on
third-party inventory</li>
<li><strong>PSA Error</strong> - A public service announcement served
due to a timeout issue or lack of a default creative</li>
<li><strong>External Impression</strong> - An impression from an
impression tracker</li>
<li><strong>External Click</strong> - A click from a click tracker</li>
<li><strong>Insertion</strong> - Your creative served on third-party
inventory, where it persists across page-loads and sessions.
<div id="buyer-engagement-report__note_iw4_znf_lsb"
class="note note_note">
<b>Note:</b> This impression type is currently
only for Facebook News Feed creatives.
</li>
</ol></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Media
Type</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The type
of creative that served:
<ul>
<li>Banner</li>
<li>Interstitial</li>
<li>Video</li>
<li>Text</li>
<li>Expandable</li>
<li>Skin</li>
<li>Facebook</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Supply
Type</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The
supply (inventory) type on which the impression occurred:
<ul>
<li>Web</li>
<li>Mobile Web</li>
<li>Mobile App</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Device
Type</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The type
of hardware device on which the impression occurred:
<ul>
<li>Desktops &amp; Laptops</li>
<li>Tablets</li>
<li>Mobile Phones</li>
<li>TV</li>
<li>Game Consoles</li>
<li>Set Top Box</li>
<li>Media Players</li>
<li>Other Devices</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Split</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">Filter
for the name and ID of a programmable split. For more information about
programmable splits, see <a href="working-with-programmable-splits.md"
class="xref">Working with Programmable Splits</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Domain</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">No</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The
domain on which the impression occurred</td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Size</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The pixel
dimensions of the served creative</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__1">Deal</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__2">Yes</td>
<td class="entry"
headers="buyer-engagement-report__table_cfz_dbh_htb__entry__3">The deal
associated with the impression</td>
</tr>
</tbody>
</table>



<b>Note:</b> You can also filter on a
particular number of impressions using the
Minimum Impressions filter.







## Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.



<table id="buyer-engagement-report__table_qqh_1jt_x4b" class="table">
<thead class="thead">
<tr class="header row">
<th id="buyer-engagement-report__table_qqh_1jt_x4b__entry__1"
class="entry">Reporting Metric</th>
<th id="buyer-engagement-report__table_qqh_1jt_x4b__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">Imps</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The total
number of impressions served</td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">Clicks</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The total
number of clicks recorded</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">CTR
(Click-Through Rate)</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The ratio
of clicks to impressions, expressed as a percentage</td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">Measurable
Imps</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The total
number of impressions that were measured for viewability</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">Viewed
Imps</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The total
number of impressions that were deemed viewable as defined by the
Interactive Advertising Bureau (IAB): For at least one second, 50% of a
creative's pixels (or 30% for a creative with at least 242,500 pixels)
must be viewable to a viewer on their screen.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">Custom
Viewable Imps</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The
number of measured impressions that were viewable, per the member-level
custom definition configuration (for more details, contact your Xandr
account representative)</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">Viewability
Measurement Rate</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The
percentage of impressions measured for viewability out of the total
number of impressions.
<p>Viewability Measurement Rate = Measurable Imps / Imps</p></td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">Viewability
Rate</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The
percentage of impressions that were viewable out of the total number of
impressions measured for viewability.
<p>Viewability Rate = Viewed Imps / Measurable Imps</p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">Custom
Viewability Rate</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The
percentage of impressions that were viewable, per the member-level
custom definition configuration, out of the total number of impressions
measured for viewability</td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">Average
Viewable Duration</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The
average number of seconds for which the creative was in view by IAB
standards
<p>Average Viewable Duration = Total Viewable Duration / Viewable
Imps</p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">Total
Viewable Duration</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The total
number of seconds for which the creative was in view by IAB
standards</td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">Video
Completions</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The total
number of video creatives played for their entire duration</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">Video
Completion Rate</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The ratio
of video completions to total impressions, expressed as a percentage.
<p>Video Completion Rate = Video Completions / Total
Impressions</p></td>
</tr>
<tr class="even row">
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__1">Viewable
Completion Rate</td>
<td class="entry"
headers="buyer-engagement-report__table_qqh_1jt_x4b__entry__2">The ratio
of in-view creative/impression completions to total impressions,
expressed as a percentage.
<p>Viewable Completion Rate = Viewable and Completed Video Impressions /
Measurable Video Impressions</p></td>
</tr>
</tbody>
</table>





## To Run your Report

Follow these steps to run the report:

1.  Select
    Reporting
    \> Advertiser Reports from
    the dropdown menu (depending on how your account has been
    configured).
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
      browser.
    - **Run in background, notify me when results are ready to view**: A
      pop-up notification will let you know when the report is ready to
      view or download.
    - **Export, send results via email**: Run the report in the
      background and email the results to one or more email addresses.
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
6.  Click Run report to send your
    report request.





## Related Topic

- <a href="create-an-augmented-line-item-ali.md" class="xref"
  title="You create augmented line items (ALIs) to define your financial relationship with an advertiser, set up targeting for an advertising campaign, and schedule your advertisements to run.">Create
  an Augmented Line Item</a>






