---
Title : Ad Quality
Description : <b>Note:</b> This feature is part of a
ms.date: 10/28/2023
functionality that is currently in **Beta**. It is still under
---


# Ad Quality







<b>Note:</b> This feature is part of a
functionality that is currently in **Beta**. It is still under
development and may be subject to change without notice. Contact your
Xandr Account Representative to get enabled.





Ad Quality shows revenue-impacting
blocks to help identify and evaluate opportunities to adjust ad quality
settings. They are settings that the publisher has for brand safety. It
gets configured when the client joins our platform and then may not be
re-evaluated frequently. In the Ad
Quality tab:

- Creative Preview lives directly
  in the side panel for quick review.
- there are direct links to rule management settings.


<b>Note:</b> As an organization, we recommend
you to regularly view your Ad Quality settings (at least quarterly) to
make sure that are appropriate and consistent with settings configured
in the other SSPs (that you may also be using to monetize inventory).
Generally, the blocked bid value overestimates potential revenue impact
and is influenced by the price and frequency of the bids that have been
blocked.





<b>Note:</b> If an Ad Quality (AQ) is set as
`default_brand_status:banned` but the parent brand is set as
`status:trusted`, the child brand overrides the setting in
`default_brand_status` and it will be able to serve unless it is
explicitly banned in the Ad Profile's brand override list.









## Ad Quality Summary

The value mentioned on Ad Quality tab
is the blocked bid value. A $5.8M of blocked bid value in last 7 days,
up 11% compared to prior week does not provide a direct revenue number
but can be used directionally to assess opportunities.





## Filter

Clicking on Filter next to
Ad Quality will display a small window
with following fields:



<table id="ad-quality__table_bfm_cnz_vvb" class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ad-quality__table_bfm_cnz_vvb__entry__1"
class="entry colsep-1 rowsep-1">Filter</th>
<th id="ad-quality__table_bfm_cnz_vvb__entry__2"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__1">Name</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__2">The specific name of
the block. For example, brand name, category name or technical attribute
name that has been blocked.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__1">Publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__2">An object within our
system to group inventory, normally by publication.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__1">Placement Group</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__2">Is part of the
inventory structure and can be used to group placements within a
publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__1">Media type</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__2">Native, Banner or
Video creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__1">Ad quality rule</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__2">Is the configuration
for demand blocks, for example to enforce brand safety.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__1">Ad profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__2">Is the object that
contains the targeting for the ad quality rule.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__1">Bid rejection
type</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_bfm_cnz_vvb__entry__2">The classification of
the bid rejection. Possible values are Brand, Category, Tech, and
Language.</td>
</tr>
</tbody>
</table>





Steps to make changes in the graph and the table that follows it:

1.  The filter has features specific to Ad Quality.
2.  Clicking on Apply updates the
    graph and the table that appears after that.
3.  The graph is configurable so you can choose what you want to plot on
    the graph, whether it is Blocked Bid Value, Error Count or Avg CPM.
4.  You can group the data on the basis of Publisher, Ad Quality Rule,
    Rejection Type, Bid Rejection, Media Type or Placement Group.
5.  You can also select how you want the graph to be displayed whether
    as a Bar chart or a time series Area chart.
6.  Hovering on the chart will give you information on the chart at that
    position.







## Quickly get a sense of relative impact and trends

The chart helps you to quickly examine issues in aggregate to decide
where to focus.





## Overview



There are three dropdowns which decide how your chart appears depending
on your selection:

<table id="ad-quality__table_mxh_1pz_vvb" class="table frame-all">
<caption><span class="table--title-label">Table 1. <span
class="title"></caption>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ad-quality__table_mxh_1pz_vvb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ad-quality__table_mxh_1pz_vvb__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_mxh_1pz_vvb__entry__1">Which metric is of
interest</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_mxh_1pz_vvb__entry__2">To get the metric of
interest, choose between Blocked bid value, Error count and Avg
CPM.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_mxh_1pz_vvb__entry__1">How you want the data
grouped</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_mxh_1pz_vvb__entry__2">Focuses on how you
want the data to be grouped. Grouping can be done on the basis of
Publisher, Ad quality rule, Rejection type, Bid rejection, Media type or
Placement group.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_mxh_1pz_vvb__entry__1">Compare relative scale
and observe trends</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_mxh_1pz_vvb__entry__2">View as a bar chart to
compare how the metrics compare between the grouping you have selected.
You can also view as an area chart to see how the groupings changed over
time. It specifies if there are spikes or consistent behaviour.</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 1.
<span class="title">







## Bid Rejections Table



The table contains rejections that are grouped according to different
publishers. Below are the different columns that appear on the table:

<table id="ad-quality__table_ksd_kpz_vvb" class="table frame-all">
<caption><span class="table--title-label">Table 2. <span
class="title"></caption>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ad-quality__table_ksd_kpz_vvb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ad-quality__table_ksd_kpz_vvb__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__1">Bid Rejection
Name</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__2">This is the specific
block reason. For example, if brand Fizzy Drinks is blocked due to its
brand, the name of the brand will show here.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__1">Bid Rejection
Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__2">The general reason for
the block, such as Technical Attribute, Category or Brand.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__1">Ad Quality Rule</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__2">What type of creative
is it, and where is it being blocked within your inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__1">Publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__2">An object within our
system to group inventory, normally by publication.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__1">Media Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__2">Native, Banner or
Video creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__1">Blocked Bid Value</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__2">The sum of all bid
prices. Directional to gauge potential impact. Incremental bid value to
existing revenue and multiple bids not accounted for.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__1">Δ Blocked Bid
Value</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__2">The change in dollars
of the Blocked Bid Value in the last 7 days compared to 7 days prior to
it. Sort by this value to see the biggest changes between time
periods.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__1">% Δ Blocked Bid
Value</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__2">The percentage change
of the blocked bid value week over week. Sort by this value to see the
biggest relative changes between time periods.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__1">Avg CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__2">The average bid price
of the rejections.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__1">Error Count</td>
<td class="entry colsep-1 rowsep-1"
headers="ad-quality__table_ksd_kpz_vvb__entry__2">The total number of
bid rejections resulting from Ad Quality Rules.</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 2.
<span class="title">


<b>Note:</b> Click on any row to zoom into
more contextual details on the block.









## Creative Preview

You can view 5 example creatives observing this block. On expanding
**Show creative** metadata, you can get the actual id of that creative,
Media Type, Audit Status, Brand ID and Brand.





## Ad Quality Rule Info



This is where the block appears. You can quickly review the ad quality
rule and profile information.


<b>Note:</b> Edit the Ad Quality Rule Info
(pencil icon) is not clickable and is currently under development.









## History Chart

The chart shows how the rejection has developed over time. For example,
is it a one-off spike or sustained block which could be more indicative
of an opportunity.





## Buyers

Refers who are the buyers most affected by this block. Also speaks if
there is an opportunity to create a deal with them that permits this
category.






