---
Title : Offline Attribution Report
Description : The Offline Attribution report lets you track your line item's offline
sales performance. This report is only available for
---


# Offline Attribution Report



The Offline Attribution report lets you track your line item's offline
sales performance. This report is only available for
Microsoft Invest clients that have
Offline Attribution enabled on their
line items.



## Time Frame

NCS data uses the time zone(s) where offline sales take place, so you
don't need to make a time zone selection when generating this report.

**Time Ranges**

Time ranges define the time period of the data extracted for the report.
Here are the ranges available for this report:

- Custom
- Last 7 Available Days
- Last 14 Available Days
- Last 30 Available Days
- Last 365 Days



<b>Note:</b> When making a
Range selection, note that NCS reports
requested between Sunday and Tuesday won't include NCS data from the
current week.



**Intervals**

Intervals determine how your data is grouped into rows in the report
response.


<b>Note:</b> The
Interval selection for this report
must be Daily.







## Data Retention Period

This report can retrieve data from the last 120 days.





## Dimensions

The Filter? column shows whether a
dimension can be used as a filter as well as being used to group by.

Some dimensions have *attributes*. Dimension attributes are a more
granular element of data about the parent dimension. If a dimension has
attributes, the name of its attributes will appear below it using the
following syntax: *Dimension_Name:Attribute_Name*.

<table id="offline-attribution-report__table_ckn_cn1_htb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="offline-attribution-report__table_ckn_cn1_htb__entry__1"
class="entry">Dimension</th>
<th id="offline-attribution-report__table_ckn_cn1_htb__entry__2"
class="entry">Filter?</th>
<th id="offline-attribution-report__table_ckn_cn1_htb__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__1">Insertion
Order</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__2">Yes</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__3">The
name and ID of the insertion order under which the impression was
purchased. For more information about insertion orders, see <a
href="working-with-insertion-orders.md" class="xref">Working with
Insertion Orders</a>.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__1">Line
Item</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__2">Yes</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__3">The ID
and name of a line item. For more information about line items, see <a
href="working-with-line-items.md" class="xref">Working with Line
Items</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__1">Flight
<ul>
<li>Start Date</li>
<li>End Date</li>
</ul></td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__2">No</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__3">The
line item flight under which the impression was purchased. You can
optionally choose to show flight start and end dates in your report. For
more information about programmable splits, see <a
href="working-with-programmable-splits.md" class="xref">Working with
Programmable Splits</a>.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__1">Split</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__2">Yes</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__3">The
name and ID of a programmable split. For more information about
programmable splits, see <a href="working-with-programmable-splits.md"
class="xref">Working with Programmable Splits</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__1">Day</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__2">No</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__3">The
day on which NCS generated the report. The date displayed for this
dimension will match the date displayed for the Analysis End Date.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__1">Analysis
Start Date</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__2">No</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__3">The
first day of the purchase interval being reported for each cohort.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__1">Analysis
End Date</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__2">No</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__3">The
last day of the purchase interval being reported for each cohort.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__1">Frequency
Type</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__2">No</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__3">The
reporting frequency selected for this line item or split.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__1">Lookback</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__2">No</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__3">The
lookback window selected for this line item or split.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__1">Product</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__2">No</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__3">The
product selection name used to describe the product or products being
reported.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__1">Analysis
Rejection Reason</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__2">No</td>
<td class="entry"
headers="offline-attribution-report__table_ckn_cn1_htb__entry__3">The
error that identifies which of the requirements for measurement weren't
met.</td>
</tr>
</tbody>
</table>





## Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.



<table id="offline-attribution-report__table_qqh_1jt_x4b" class="table">
<thead class="thead">
<tr class="header row">
<th id="offline-attribution-report__table_qqh_1jt_x4b__entry__1"
class="entry">Metric</th>
<th id="offline-attribution-report__table_qqh_1jt_x4b__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__1">Imps</td>
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__2">The
total number of impressions served.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__1">Clicks</td>
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__2">The
total number of clicks recorded.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__1">Booked
Revenue</td>
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__2">The
revenue received from the advertiser.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__1">Media
Cost</td>
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__2">The
cost to the buying member for this inventory.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__1">Total
Cost</td>
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__2">The
total amount of costs accrued over the reported period of time. This
generally includes two types of costs: budgeted costs (media cost, data
cost, partner fees, serving fees, commissions) and publisher revenue if
you track publisher payouts on the platform.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__1">Imps
(viewed)</td>
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__2">Impressions
that are considered viewable as defined by the Interactive Advertising
Bureau (IAB): For at least one second, 50% of a creative's pixels (or
30% for a creative with at least 242,500 pixels) must render on a
screen.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__1">All
Outlet Adjusted Number Of Trips</td>
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__2">The
number of trips to the store by households that have been during the
analysis's start and end dates. NCS only has data for some stores
(outlets) within the US, so it adjusts sales metrics to account for
sales that occurred across all outlets in the US.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__1">All
Outlet Adjusted Penetration (%)</td>
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__2">The
penetration percentage for the product, category, or brand during the
analysis's start and end dates. NCS only has data for some stores
(outlets) within the US, so it adjusts sales metrics to account for
sales that occurred across all outlets in the US.

<div id="offline-attribution-report__note_r4y_kvm_ltb"
class="note note_note">
<b>Note:</b> <em>Penetration</em> measures
brand or category popularity. It is calculated by dividing the number of
people who've purchased a specific brand or category of goods at least
once in a given time period by the size of the relevant market's total
population.

</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__1">All
Outlet Adjusted Total Spend</td>
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__2">The
number of dollars spent by households on the product, category, or brand
during the analysis's start and end dates. NCS only has data for some
stores (outlets) within the US, so it adjusts sales metrics to account
for sales that occurred across all outlets in the US.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__1">100%
Complete</td>
<td class="entry"
headers="offline-attribution-report__table_qqh_1jt_x4b__entry__2">For a
video creative, the number of times the video creative was viewed to
completion.</td>
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





## Related Topics

- <a
  href="offline-sales-attribution-data-with-nielsen-catalina-solutions.md"
  class="xref">offline-sales-attribution-data-with-nielsen-catalina-solutions.md</a>
- <a
  href="activate-nielsen-offline-sales-attribution-for-a-line-item.md"
  class="xref">activate-nielsen-offline-sales-attribution-for-a-line-item.md</a>
- <a href="create-an-augmented-line-item-ali.md" class="xref"
  title="You create augmented line items (ALIs) to define your financial relationship with an advertiser, set up targeting for an advertising campaign, and schedule your advertisements to run.">Create
  an Augmented Line Item</a>






