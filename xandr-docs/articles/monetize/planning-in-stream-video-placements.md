---
Title : Planning In-Stream Video Placements
Description : Before creating placements and placement groups for in-stream video
ms.date: 10/28/2023
inventory, you should consider your targeting and reporting needs as
well as the operational costs of creating large numbers of placements.
---


# Planning In-Stream Video Placements



Before creating placements and placement groups for in-stream video
inventory, you should consider your targeting and reporting needs as
well as the operational costs of creating large numbers of placements.

Xandr uses the following sell-side hierarchy:
Publisher \> Placement Group \> Placement.



When setting up this hierarchy, you can typically use the following
mappings:

<table id="planning-in-stream-video-placements__table_wbh_hsh_5mb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="planning-in-stream-video-placements__table_wbh_hsh_5mb__entry__1"
class="entry colsep-1 rowsep-1">Seller Unit</th>
<th
id="planning-in-stream-video-placements__table_wbh_hsh_5mb__entry__2"
class="entry colsep-1 rowsep-1">Xandr
Object</th>
<th
id="planning-in-stream-video-placements__table_wbh_hsh_5mb__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="planning-in-stream-video-placements__table_wbh_hsh_5mb__entry__1">Domain
or App</td>
<td class="entry colsep-1 rowsep-1"
headers="planning-in-stream-video-placements__table_wbh_hsh_5mb__entry__2">Publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="planning-in-stream-video-placements__table_wbh_hsh_5mb__entry__3">DailyCamera.com</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="planning-in-stream-video-placements__table_wbh_hsh_5mb__entry__1">Device
type</td>
<td class="entry colsep-1 rowsep-1"
headers="planning-in-stream-video-placements__table_wbh_hsh_5mb__entry__2">Placement
Group</td>
<td class="entry colsep-1 rowsep-1"
headers="planning-in-stream-video-placements__table_wbh_hsh_5mb__entry__3">CTV</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="planning-in-stream-video-placements__table_wbh_hsh_5mb__entry__1">Ad
slot</td>
<td class="entry colsep-1 rowsep-1"
headers="planning-in-stream-video-placements__table_wbh_hsh_5mb__entry__2">Placement</td>
<td class="entry colsep-1 rowsep-1"
headers="planning-in-stream-video-placements__table_wbh_hsh_5mb__entry__3">pre-roll</td>
</tr>
</tbody>
</table>

However, you might decide to revise this object hierarchy depending on
the nature of your inventory as well as commercial and operational
overhead. For example, consider the following factors:

- **Deals implementation:** Will you be using unique targeting, such as
  targeting specific sections of the site? If so, assigning a placement
  group to each targeted section will simplify deal targeting.
- **Reporting:** Does the publisher have unique reporting needs, such as
  breaking out reporting by device or site? If you can't get this
  information through the standard Xandr
  reports, using placements or placement groups to organize the desired
  outputs could help.
- **Operational burden of tagging:** If you break out hundreds of
  placements, the publisher will need to manually traffic these tags on
  their ad server, and then manually update them with any future
  changes. Consider organizing placements within placement groups or
  streamlining the number of placement breakouts in order to reduce
  operational overhead.






