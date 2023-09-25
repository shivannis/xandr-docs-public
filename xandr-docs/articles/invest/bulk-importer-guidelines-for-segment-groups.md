---
Title : Bulk Importer Guidelines for Segment Groups
Description : Please do not rename the Segment Groups sheet within the bulk importer
template.
---


# Bulk Importer Guidelines for Segment Groups





Please do not rename the Segment Groups sheet within the bulk importer
template.



## Temporary ID Information



<table
id="bulk-uploader-guidelines-for-segment-groups__table_qtx_qsj_qmb"
class="table frame-all">
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="bulk-uploader-guidelines-for-segment-groups__table_qtx_qsj_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-uploader-guidelines-for-segment-groups__table_qtx_qsj_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-uploader-guidelines-for-segment-groups__table_qtx_qsj_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-uploader-guidelines-for-segment-groups__table_qtx_qsj_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-uploader-guidelines-for-segment-groups__table_qtx_qsj_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_qtx_qsj_qmb__entry__1">LI
Temporary Id</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_qtx_qsj_qmb__entry__2">Specifies
the identifier used to link a segment group to a parent line item within
the spreadsheet. This is a placeholder value and will not be the actual
identifier of the newly-created object.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_qtx_qsj_qmb__entry__3">Alphanumeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_qtx_qsj_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_qtx_qsj_qmb__entry__5">example123</td>
</tr>
</tbody>
</table>







## Segment Group Setup



<table
id="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb"
class="table frame-all">
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__2"
class="entry">Description</th>
<th
id="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__1">Line
Item Id</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__2">Specifies
the identifier of the existing line item that will target the
segment.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__5">1234</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__1">Line
Item Name</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__2">Specifies
the name of the line item.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__3">Characters</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__5">My
line item</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__1">Segment
Id</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__2">Specifies
the identifier assigned to the segment.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__5">1234</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__1">Group</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__2">Specifies
the segment group associated with the segment target.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__5">1</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__1">Include
or Exclude</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__2">Specifies
whether to include or exclude a target.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__3"><ul>
<li>include</li>
<li>exclude</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__5">include</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__1">Fired
Greater Than</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__2">Specifies
the maximum minute threshold indicating when a user was added to the
segment.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__5">10</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__1">Fired
Less Than</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__2">Specifies
the minimum minute threshold indicating when a user was added to the
segment.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__5">1</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__1">Value
Greater Than</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__2">Targets
segment values that are greater than the specified value. For example,
if the specified value is 10, then you would be targeting any segment
value that is greater than 10.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__5">80</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__1">Value
Less Than</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__2">Targets
segment values that are less than the specified value. For example, if
the specified value is 10, then you would be targeting any segment value
that is less than 10.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__5">100</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__1">Value
Equal To</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__2">Targets
exact segment values.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-segment-groups__table_sbc_pfz_jgb__entry__5">5</td>
</tr>
</tbody>
</table>





## Related Topics

- <a href="bulk-importer-template-guidelines.md" class="xref"
  title="You can use our bulk importer template guidelines to ensure that you&#39;re formatting each parameter correctly when adding data to the bulk importer template.">Bulk
  Importer Template Guidelines</a>
- <a href="exporting-and-importing-object-details-in-bulk.md"
  class="xref"
  title="Instead of creating or updating one object at a time, you can export and import details for multiple line items, creatives, segment groups, splits, and split segment groups simultaneously into the Insertion Orders and Line Items grids using one Excel file.">Exporting
  and Importing Object Details in Bulk</a>






