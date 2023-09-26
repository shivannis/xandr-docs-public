---
Title : View Campaign Details
Description : The Campaign Details screen shows
you settings and essential metrics for a specific campaign, informs you
of conditions preventing the campaign from serving, provides
visualizations of the campaign's performance and delivery, offers quick
access to the campaign's associated creatives, and more.
---


# View Campaign Details



The Campaign Details screen shows
you settings and essential metrics for a specific campaign, informs you
of conditions preventing the campaign from serving, provides
visualizations of the campaign's performance and delivery, offers quick
access to the campaign's associated creatives, and more.



Important: **Automatic archiving of
objects:** Campaigns that have not served or been edited in more than
180 days and that are not scheduled to serve in the future are
automatically archived. If a campaign is in the "archived" state, it
cannot spend or be edited. However, it can still be copied, deleted or
used in reports (or exported for use in an external reporting tool). In
addition, once an object is archived, any child objects it may own
(e.g., Insertion
Order \> Line Item \> Campaign) will also be archived and
no additional child objects may be created beneath the archived parent
object. For details, see
<a href="automatic-archiving-of-buy-side-objects.html"
class="xref">Automatic Archiving of Buy-Side Objects</a>.



Getting to the Campaign Details Screen

From the Campaigns screen

On the Campaigns screen, hover
over the row of the campaign for which you want to view details. Click
the graph button that appears.

From the Line Item Details screen

From the Line Item Details screen,
expand the Campaigns section to
view the list of campaigns under that line item. Hover over the row of
the campaign for which you want to view details. Click the graph button
that appears.

Viewing Status, State, and Flight Dates

The At-a-Glance section shows you
the campaign's status, state, and flight start and end dates. Note that
**State** tells you whether the campaign is active or inactive, whereas
**Status** tells you whether the campaign is eligible or ineligible to
serve based on state and additional conditions.

- **Play** - The "play" icon indicates that the campaign is eligible to
  serve.
- **Paused** - The "paused" icon indicates that the campaign is
  ineligible to serve due to conditions that are likely intentional and
  user-driven. When a campaign shows this status, hover over the icon to
  see exactly what conditions are preventing it from serving. The
  following conditions can provoke this status:
  - State is set to inactive.
  - Flight start is in the future.
  - Flight end is in the past.
  - Lifetime impression budget has been met.
  - Lifetime cost budget has been met.
  - Daily impression budget has been met.
  - Daily cost budget has been met.



Warning: The "warning" icon indicates
that the campaign is ineligible to serve due to conditions are are
likely unintentional and that should be addressed. When a campaign shows
this status, hover over the icon to see exactly what conditions are
preventing it from serving. The following conditions can provide this
status:

- No creatives are associated with this campaign.
- All creatives associated to this campaign are either ineligible to
  serve (inactive, expired, prohibited) or can serve only on direct
  inventory and on supply partners who trust your network's
  self-classification (unaudited).



Viewing Quickstats

The metrics on the Campaign
Details screen help you assess the performance and delivery of
your campaign at a glance. Known as "quickstats", these metrics are
faster and more readily accessed than via standard reporting; whereas
reporting requires you to submit a request and then wait for a response,
quickstats are cached on a regular basis and are shown whenever you open
the Campaign Details screen.

Quickstats are in U.S. Eastern time and are delayed by approximately 2-3
hours. Because quickstats are dependent upon reporting data and are
synched after reporting has closed for any given hour, for a small chunk
of time each hour, there may be discrepancies between reporting and
quickstats data. For more details, see
<a href="availability-of-reporting-data.html" class="xref">Availability
of Reporting Data</a>.

Intervals

Use the drop-down at the top right of the screen to choose the interval
for quickstats:

- **Today** Current calendar day up to the last hour.
- **Yesterday** Full 24-hour period of the previous calendar day.
- **Last 7 Days** Full 7 days previous to the current calendar day,
  i.e., excluding today.
- **Lifetime** Entire lifetime of the campaign, including the current
  calendar day.

Metrics

The following metrics are shown for the campaign. Note that the data
always reflects the currently selected quickstats interval:

- **Lifetime Budget** How much you have allocated to spend over the
  lifetime of the campaign, in money or impressions.
- **Daily Budget** How much you have allocated to spend on any given
  day, in money or impressions. If you have enabled lifetime pacing for
  the campaign, you will also see the estimated daily budget, which is
  calculated each day, based on the remaining unspent budget divided by
  the number of remaining days in the flight. For more information, see
  <a href="lifetime-pacing.html" class="xref"
  title="Lifetime pacing intelligently distributes a budget over the lifespan of a line item&#39;s flight.">Lifetime
  Pacing</a>.
  

  Note: You can set budgets at the line
  item level as well. The line item budget takes precedence over your
  campaign budget. When your line item budget runs out, all campaigns
  under the line item will stop buying impressions, whether or not they
  have reached their own budgets. Also, if the line item is under an
  insertion order, note that the insertion order budget takes precedence
  over the line item budget. For more details about budgeting, see
  <a href="budgeting-and-pacing.html" class="xref">Budgeting and
  Pacing</a>.

  
- **Days into Flight** The number of days the campaign has been running
  out of the total flight range, and the number of days left. This is
  available only when the campaign has an end date.
- **Profit** Money you have made from the advertiser as a result of this
  campaign. This is revenue - media cost. Profit is always in USD.
- **Imps** Number of impressions for the campaign.
  

  Note: If the campaign has a specific
  impression budget, this field may shows a visualization of how well
  the campaign is pacing for the selected quickstats interval. See
  <a href="view-campaign-details.html#ID-00001e2a__ID-00001edc"
  class="xref">Pacing Bars</a> for more details.

  
- **Clicks** Number of clicks for the campaign.
- **Convs** Number of times conversion pixels under the parent line item
  have loaded. Note that a conversion pixel load does not necessarily
  mean that a conversion was attributed to the campaign. To get
  information about attributed conversions, rather than just conversion
  pixel loads, see
  <a href="reporting-on-conversions.html" class="xref">Reporting on
  Conversions</a>.
- **CTR (Click Through Rate)** Percentage of impressions that resulted
  in clicks for this campaign.
- **Revenue** Money the advertiser has paid or will pay your network as
  a result of this campaign.
- **Media Cost (USD)** Money your network has spent buying media for the
  campaign. Media Cost always appears in USD, as that is the currency in
  which Xandr transacts. If the campaign has a
  specific lifetime media cost budget, this field may show a
  visualization of how well the campaign is pacing for the selected
  quickstats interval. See
  <a href="view-campaign-details.html#ID-00001e2a__ID-00001edc"
  class="xref">Pacing Bars</a> for more details.
- **Rev eCPM** Money the advertiser has paid or will pay your network
  per 1000 impressions.
- **Cost eCPM** Money your network has spent per 1000 impressions for
  the campaign. Cost eCPM always appears in USD, as that is the currency
  in which Xandr transacts.
- **Cost eCPA (USD)** Money your network has spent buying media per
  conversion for the campaign. Cost eCPA always appears in USD, as that
  is the currency in which Xandr transacts.

Pacing Bars

If the campaign meets certain requirements (see **Requirements for
Pacing Bars** below), the **Imps** or Media
Cost quickstat shows a visualization of how well the campaign is
pacing for the selected quickstats interval.

The color of the main pacing bar tells you how your impression/media
cost count compares to your pacing target:

- **Purple** - The current impression/media cost count is over the
  pacing target (\> 100%) for the selected quickstats interval.
- **Green** - The current impression/media cost count closely matches
  the pacing target (95% - 100%) for the selected quickstats interval.
- **Yellow** - The current impression/media cost count is slightly under
  the pacing target (85% - 95%) for the selected quickstats interval.
- **Red** - The current impression/media cost count is significantly
  under the pacing target (\< 85%) for the selected quickstats interval.

Requirements for Pacing Bars

The exact requirements for calculating pacing depend on the quickstats
interval selected, the type of budget set, and whether or not there's a
flight end date. For each quickstats interval, the requirements are as
follows:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001e2a__entry__1" class="entry">Quickstats Interval</th>
<th id="ID-00001e2a__entry__2" class="entry">Requirements</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001e2a__entry__1">Today</td>
<td class="entry" headers="ID-00001e2a__entry__2">Lifetime Budget and
Daily Budget<br />
OR<br />
Lifetime Budget and Flight End Date</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001e2a__entry__1">Yesterday</td>
<td class="entry" headers="ID-00001e2a__entry__2">Lifetime Budget and
Daily Budget<br />
OR<br />
Lifetime Budget and Flight End Date</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001e2a__entry__1">Last 7 Days</td>
<td class="entry" headers="ID-00001e2a__entry__2">Lifetime Budget and
Daily Budget<br />
OR<br />
Lifetime Budget and Flight End Date</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001e2a__entry__1">Lifetime</td>
<td class="entry" headers="ID-00001e2a__entry__2">Lifetime Budget and
Flight End Date</td>
</tr>
</tbody>
</table>

Viewing Analytics Graphs

By default, the Analytics section
is collapsed. Expand the section to view graphs that help you visualize
the impressions served, media cost spent, revenue earned, and profit
made (revenue - media cost) for this campaign over the last 14 days.
When the campaign has a daily budget or a lifetime budget and a flight
end date, the Impressions or Revenue graph shows you the
impressions/revenue budgeted for each day so that you can compare the
actual and budgeted amounts.



Note: You can hover over the columns
(actual count) and, when available, data points (budgeted count) to see
exact metrics for each day.



These metrics are in U.S. Eastern time and are delayed by approximately
2 hours, a bit less of a delay than for quickstats.

Viewing Campaign Segment Performance Analytics

By default, the Analytics and
Campaign Segment Performance
section is collapsed. Expand the section to learn which targeted
segments (both behavioral and contextual) are driving impressions,
clicks and conversions within an active campaign, and to identify any
segments that are over- or under-performing.

The Indices (CTR Index, Conversion Rate Index, Post View Conversion Rate
Index, and Post Click Conversion Rate Index) are unique values made
newly available in the Campaign Segment Performance Analytics table.
They are calculated using the following formula:

Index = ((Segment ""- Campaign)/Campaign) \* 100%

So, for example, CTR Index = ((CTR Segment - CTR Campaign)/CTR Campaign)
\* 100%.

View Different Time Periods

You can change the time period shown by clicking and dragging the
sliders. In the table, the blue portion of each **Period Targeted** line
shows the portion of the time period for which targeting was enabled,
and the white portion shows where it was not. You can report on any time
range from 1 to 30 days, and the minimum reporting unit is 1 day. The
top row in the table lists totals for each category, whereas the rows
beneath it list specific values for the segment.

If a segment has no performance at all for the time period, it will not
appear in the table.

The total of the values for each segment in a given column - imps,
clicks, CTR, and so on - may be greater than the total for the category,
as some users belong to more than one segment. For example, in the image
below, adding each segment value under
Imps yields a total of 1,112,967, not
906,848, because users who belong to multiple segments are counted once
for each segment to which they belong.

Change Performance Metrics View

You can also change your view of performance metric columns by selecting
pencil icon. Choose your preferences from the drop-down menu that
appears.

Export Data

You can export data by clicking the Export to
CSV button. Choose whether you want to export only data for the
time period covered by the date slider at the top of the table or for
the last 30 days.

Viewing Campaign Settings

In the Details section, you can
click Settings to view the basic
settings, buying strategies, line item settings, serving fees, and
comments for the campaign.

Basic Settings

- **Supply Type** The type of supply that the campaign can serve on,
  e.g., Web, Mobile web or Mobile app.
- **ID** The Xandr ID for the campaign.
- **External Code** The external code (rather than the internal ID) for
  the campaign.

Buying Strategies

- **Scope** Whether the campaign is set up to buy direct inventory
  (**Direct**), third-party inventory (**Real Time**), or both
  (**Both**). Direct inventory includes only inventory managed by your
  network, whereas third-party inventory includes all inventory not
  managed by your network that has been enabled for reselling (including
  external supply partners such as Microsoft Advertising Exchange and
  Google Ad Manager).
- **Pay-Per-Impression** If the campaign is set up to buy third-party
  inventory, this section shows the specific buying strategy for paying
  publishers on a per-impression basis. This payment type is accepted by
  all sellers (Xandr sellers and external
  sellers). For more details about specific CPM buying strategies, see
  <a href="create-a-campaign.html" class="xref">Create a Campaign</a> or
  <a href="buying-strategies.html" class="xref">Buying Strategies</a>.
- **Pay-Per-Click** If the campaign is set up to buy third-party
  inventory, this section shows the specific strategy for paying
  publishers when users click on your ads. This payment type is accepted
  only by participating Xandr sellers, not by
  external sellers.
- **Pay-Per-Conversion** If the campaign is set up to buy third-party
  inventory, this section shows the specific strategy for paying
  publishers when users convert. This payment type is accepted only by
  participating Xandr sellers, not by external
  sellers.

Line Item Settings

This section shows you essential details about the parent line item.

- **Name/ID** The name and id of the line item appears at the top of
  this section. You can click this to navigate to
  <a href="view-line-item-details.html" class="xref">View Line Item
  Details</a> for the line item.
- **Lifetime** How much the advertiser has allocated for you to spend
  over the lifetime of the line item, in money or impressions.
- **Daily** How much the advertiser has allocated for you to spend on
  any given day, in money or impressions.
- **Revenue Type** The basis on which the advertiser has agreed to pay
  you, for example, CPM (per thousand impressions) or CPA (per
  conversion). For details about each revenue type, see
  <a href="create-a-standard-line-item.html" class="xref">Create a
  Standard Line Item</a>.
- **Revenue Value** The amount that the advertiser will pay you for the
  specified revenue type.
- **Performance Goal Type** The type of goal that the advertiser wants
  you to achieve (CPC, CPA, CTR). A performance goal is used to achieve
  a goal that is different from how the advertiser has agreed to pay you
  (e.g., the advertiser wants to pay a CPM but expects you to meet a $50
  CPA goal). For more details about performance goals, see
  <a href="create-a-standard-line-item.html" class="xref">Create a
  Standard Line Item</a>
- **Performance Goal Tracking** The amount for the performance goal.

Serving Fees

This section shows any serving fees that have been associated with the
campaign. Serving fees can be either a percentage of costs or a flat
CPM. Please note the following:

- Serving fees are added to your media cost except when you bid a flat
  CPM.
- When you use a third-party buying strategy that involves optimization
  ("Optimize to a predicted CPA/CPC goal" or "Optimize to a % margin of
  booked revenue"), bids are automatically reduced to account for
  serving fees.
- When you buy direct inventory or use a third-party buying strategy
  that does not involve optimization, bids are not reduced to account
  for serving fees.

Comments

This section shows any comments that have been recorded with the
campaign. Comments are for reference only and do not affect campaign
delivery.

Viewing Campaign Targeting

In the Details section, you can
click Targeting to view the inventory
and user targeting settings for the campaign. For each targeting type,
inclusions and exclusions are clearly represented, as is the boolean
logic within targeting types (e.g., exclude Segment 2 and Segment 3).
The boolean logic between targeting types is always and (e.g., between
Geography targeting and Segment targeting). For example, in the image
below, the campaign would bid on impressions only when:

- The inventory is not in the **Global Blocklist** domain list AND
- The user is in the **United States** AND
- The user is in **Segment 1** and is not in both **Segment 2** and
  **Segment 3** AND
- The user has seen creatives from the campaign less than **20 times
  overall** and less than **2 times today** AND
- The impression happens between **12:00am - 3:59am** or between
  **6:00am - 11:59pm** in the user's time zone

For more details about each type of targeting, see
<a href="create-a-campaign.html" class="xref">Create a Campaign</a>.



Note: Clicking the
Edit link next to
Targeting opens the campaign for
editing and brings you directly to the targeting settings.



Editing Campaign Targeting

You can edit campaign targeting directly from the
Campaign Details screen. To do so,
simply click Targeting to reveal
campaign targeting settings, then click
Edit to be taken directly to the
targeting section of the **Edit Campaign** workflow on
Monetize.

Viewing Associated Creatives

There are two ways to view the creatives associated to the campaign.

In the At-a-Glance section, you
can see the total number of active and inactive creatives associated to
the campaign. You can click this number to navigate to the
Creative Manager screen, which
shows you the complete list of creatives with their details and
quickstats. Also, you can hover over the
eye icon to view the numbers broken
down by audit status.

In the Details section, you can click
Associated Creatives to view a table
listing the creatives associated with this campaign, grouped by size. At
the top of the list is the value of the **Creative Rotation**. If the
creative rotation is **Weighted**, an additional column will be
displayed in the table that shows the **Weight** of each creative. (See
<a href="creative-rotation-ali.html" class="xref"
title="When multiple creatives of the same size are trafficked to a line item, you can set a creative delivery strategy using the Creative Rotation settings in the Associated Creatives section on the Create New Line Item and Edit Line Item screens.">Creative
Rotation (ALI)</a> for more information.) If there is an alert on a
creative you can hover over the alert to learn about possible issues.
Click the creative name to navigate to its full details.

Switching to Another Campaign

If there's more than one campaign under the parent line item, you can
click the campaign's name or the arrow next to the name and then select
the name of the campaign for which you want to view details. This takes
you to the Campaign Details screen
for the selected campaign. Inactive campaigns appear in italics.

Editing the Campaign

To change any of the campaign's settings, click the
Edit icon at the top of the screen or
the Edit link in the
Details section.

Reporting on the Campaign

To run a report for the campaign, click the **Reporting** link on the
left.

This takes you to the Advertiser
Reporting screen, where you can select to run an **Analytics**,
**Site Domain Performance**, **Attributed Conversions**, or **Creative
Frequency & Recency** report. For further information about these
reports, see <a href="advertiser-reporting.html" class="xref">Advertiser
Reporting</a>.

Creating a New Campaign

To create a new campaign, click
Create New
 \>  Campaign. For
step-by-step instructions, see
<a href="create-a-campaign.html" class="xref">Create a Campaign</a>.

Related Topics

- <a href="working-with-campaigns.html" class="xref">Working with
  Campaigns</a>
- <a href="explore-campaigns.html" class="xref">Explore Campaigns</a>
- <a href="create-a-campaign.html" class="xref">Create a Campaign</a>




