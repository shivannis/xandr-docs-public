---
Title : Reporting on Guaranteed Outcomes
Description : Throughout Monetize reporting, transaction data
ms.date: 10/28/2023
from Guaranteed Outcomes is identifiable by the underlying Clearing
Event associated with the type of outcome purchased. See
---


# Reporting on Guaranteed Outcomes





Throughout Monetize reporting, transaction data
from Guaranteed Outcomes is identifiable by the underlying Clearing
Event associated with the type of outcome purchased. See
<a href="supported-viewability-standards-for-guaranteed-outcomes.md"
class="xref">Supported Viewability Standards for Guaranteed Outcomes</a>
and <a href="supported-video-completion-standards.md"
class="xref">Supported Video Completion Standards</a> for the list of
supported Clearing Events.

Network and Video Analytics Reports

Currently available in the Network and Video Analytics Reports, the
column Clearing Event is available as both a Filter and a Dimension. The
following metrics are available.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000919b__entry__1" class="entry">Clearing Event Name</th>
<th id="ID-0000919b__entry__2" class="entry">ID</th>
<th id="ID-0000919b__entry__3" class="entry">Viewability Definition</th>
<th id="ID-0000919b__entry__4" class="entry">Media Type</th>
<th id="ID-0000919b__entry__5" class="entry">Measurement Technology
Vendor</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000919b__entry__1">Views - Standard
Display</td>
<td class="entry" headers="ID-0000919b__entry__2">2</td>
<td class="entry" headers="ID-0000919b__entry__3">IAB (50% of pixels
in-view for 1 continuous second)</td>
<td class="entry" headers="ID-0000919b__entry__4">Display/Banner</td>
<td class="entry" headers="ID-0000919b__entry__5"><span
class="ph">Xandr</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000919b__entry__1">Views - Custom Display
- 100pv1s</td>
<td class="entry" headers="ID-0000919b__entry__2">6</td>
<td class="entry" headers="ID-0000919b__entry__3">100% of pixels in-view
for 1 continuous second</td>
<td class="entry" headers="ID-0000919b__entry__4">Display/Banner</td>
<td class="entry" headers="ID-0000919b__entry__5"><span
class="ph">Xandr</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000919b__entry__1">Views - Standard
Video</td>
<td class="entry" headers="ID-0000919b__entry__2">8</td>
<td class="entry" headers="ID-0000919b__entry__3">IAB (50% of pixels
in-view for 2 continuous seconds)</td>
<td class="entry" headers="ID-0000919b__entry__4">Video</td>
<td class="entry" headers="ID-0000919b__entry__5"><span
class="ph">Xandr</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000919b__entry__1">Views - Custom Video -
100pv50pd</td>
<td class="entry" headers="ID-0000919b__entry__2">9</td>
<td class="entry" headers="ID-0000919b__entry__3">100% of pixel in-view
for 50% of the duration of the video with audio on</td>
<td class="entry" headers="ID-0000919b__entry__4">Video</td>
<td class="entry" headers="ID-0000919b__entry__5"><span
class="ph">Xandr</td>
</tr>
</tbody>
</table>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000919b__entry__26" class="entry">Metric</th>
<th id="ID-0000919b__entry__27" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000919b__entry__26">Clearing Event
Units</td>
<td class="entry" headers="ID-0000919b__entry__27">The total number of
events that were purchased, for the associated Clearing Event.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000919b__entry__26">Clearing Event Booked
Revenue eCPM</td>
<td class="entry" headers="ID-0000919b__entry__27">The total revenue per
1000 events, for the associated Clearing Event</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000919b__entry__26">Clearing Event Buyer
Media Cost eCPM</td>
<td class="entry" headers="ID-0000919b__entry__27">The total media cost
per 1000 events, for the associated Clearing Event</td>
</tr>
</tbody>
</table>



The Clearing Event data in Monetize analytics
reporting is available as of September 20th, 2017. For report data
before this date, the Clearing Event column will display "-", and the
metrics will all report zero. Note that in reporting on Standard Line
Items (non-ALI), the Clearing Event dimension is also displayed as "-".



<b>Tip:</b> To eliminate the noise of other
impression types in reporting, use the report filters to select
Impression Type=RTB. This configuration ensures the report will only be
generated for RTB impressions (the only impression type eligible for
Guaranteed Outcomes)



Billing Report

Data for Guaranteed Views activity are similarly available in the Buyer
Billing Report. See the report
<a href="buying-billing-report.md" class="xref">documentation</a> for
more information, as well as the related
<a href="understanding-your-invoice.md" class="xref"
title="Annotated descriptions of the contents of your Xandr invoices.">Understanding
Your Invoice</a> documentation.

Related Topics

- <a href="guaranteed-outcomes.md" class="xref">Guaranteed Outcomes</a>
- <a href="reporting-guide.md" class="xref">Reporting Guide</a>






