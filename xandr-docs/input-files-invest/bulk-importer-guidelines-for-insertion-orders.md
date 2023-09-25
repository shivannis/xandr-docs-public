---
Title : Bulk Importer Guidelines for Insertion Orders
Description : Please adhere to these general guidelines:
- Please do not rename the Insertion Orders sheet within the bulk
importer template.
---


# Bulk Importer Guidelines for Insertion Orders







Please adhere to these general guidelines:

- Please do not rename the Insertion Orders sheet within the bulk
  importer template.
- When adding billing period details to the following columns per
  insertion order, leave the cells that are on the same row as the other
  insertion order details empty:
  - Billing Period Id
  - Billing Period Start Date
  - Billing Period End Date
  - Lifetime Budget
  - Lifetime Budget Imps
  - Daily Budget
  - Daily Budget Imps
- If adding multiple billing periods for one insertion order, be sure to
  enter all the details for each billing period, such as start dates and
  end dates, on a separate row.



## Temporary ID Information



<table
id="bulk-uploader-guidelines-for-insertion-orders__table_sbc_pfz_jgb"
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
id="bulk-uploader-guidelines-for-insertion-orders__table_sbc_pfz_jgb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-uploader-guidelines-for-insertion-orders__table_sbc_pfz_jgb__entry__2"
class="entry">Description</th>
<th
id="bulk-uploader-guidelines-for-insertion-orders__table_sbc_pfz_jgb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-uploader-guidelines-for-insertion-orders__table_sbc_pfz_jgb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-uploader-guidelines-for-insertion-orders__table_sbc_pfz_jgb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_sbc_pfz_jgb__entry__1">IO
Temporary Id</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_sbc_pfz_jgb__entry__2">Specifies
the identifier used to link a new line item to a particular IO. This is
a placeholder value and will not be the actual identifier of the
newly-created object.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_sbc_pfz_jgb__entry__3">Alphanumeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_sbc_pfz_jgb__entry__5">example123</td>
</tr>
</tbody>
</table>




## Basic Setup



<table
id="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb"
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
id="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Insertion
Order Id</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the identifier assigned to the insertion order.
<div class="note note_note">
<b>Note:</b> If the insertion order identifier
isn't provided, a new insertion order will be created.
</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">1234</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Advertiser
Id</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the identifier assigned to the insertion order's associated
advertiser.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">1234</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Insertion
Order Name</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the name of the insertion order.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3">Characters
(255 Max)</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">my
insertion order</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">External
Code</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the custom code assigned to the insertion order.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3"><ul>
<li>Alphanumeric values</li>
<li>Periods</li>
<li>Underscores</li>
<li>Dashes</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">code1234</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Billing
Code</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
an internal billing code that you want to appear on invoices for an
insertion order, if you receive insertion order specific invoices.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3"><ul>
<li>Alphanumeric values</li>
<li>Periods</li>
<li>Underscores</li>
<li>Dashes</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">code1234</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">State</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the current status of the insertion order.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3"><ul>
<li>active</li>
<li>inactive</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">active</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Currency</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the currency that's associated to the insertion order. See the <a
href="../attachments/bulk-importer/Bulk-Importer-Lists.xlsx"
class="xref">Currency list</a> to look up the appropriate currency
code.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3">3
character code</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">USD</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Viewability
Standard</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the criteria by which an impression is measured as viewable.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3"><ul>
<li>IAB</li>
<li>Custom</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">IAB</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Budget
Type</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the insertion order's budget type.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3"><ul>
<li>impression</li>
<li>revenue</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">impression</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Billing
Period Start Date</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the start date of the insertion order's billing period.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3"><p>Date/time</p>
<p>Use the YYYY-MM-DD hh:mm:ss format. Excel will try to auto format the
date to MM/DD/YYYY, which is also accepted but will be less accurate.
Hours should be based on the UTC time zone.</p></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">2018-11-09
00:00:00</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Billing
Period End Date</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the end date of the insertion order's billing period.
<div class="note note_note">
<b>Note:</b> Do not enter an end date if there
is no end date.
</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3"><p>Date/time</p>
<p>Use the YYYY-MM-DD hh:mm:ss format. Excel will try to auto format the
date to MM/DD/YYYY, which is also accepted but will be less accurate.
Hours should be based on the UTC time zone.</p></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">2018-11-10
23:59:59</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Billing
Period External Code</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the custom reporting code for the billing period.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3"><ul>
<li>Alphanumeric values</li>
<li>Periods</li>
<li>Underscores</li>
<li>Dashes</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">code1234</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Lifetime
Budget</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the lifetime budget amount.

<b>Note:</b> The value specified in the <span
class="ph uicontrol">Currency field determines which currency is
applied to the lifetime budget.
</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3">Numeric
value

<b>Note:</b> If 0 is entered, then the
lifetime budget will be set to "Unlimited".
</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">Yes,
if Lifetime Budget Imps is left null.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">1200</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Lifetime
Budget Imps</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the lifetime budget represented by a number of impressions.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3"><ul>
<li>Numeric value</li>
<li>Null (unlimited)</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">Yes,
if Lifetime Budget is left null.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">200</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Daily
Budget</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the daily budget amount.
<div class="note note_note">
<b>Note:</b> If both the daily budget and
lifetime pacing percent are left empty, then the pacing strategy is set
at the line item level.
</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">1000</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__1">Daily
Budget Imps</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__2">Specifies
the daily budget represented by a number of impressions.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_i1p_pm2_qmb__entry__5">10</td>
</tr>
</tbody>
</table>


## Internal Fields



<table
id="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb"
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
id="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__2"
class="entry">Description</th>
<th
id="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__1">Billing
Period Id</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__2">Specifies
the identifier assigned to the billing period.
<div class="note note_note">
<b>Note:</b> If you're leveraging exported
object details, leave the existing billing period identifier. Otherwise,
leave this cell empty so that a new billing period can be created.
</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__5">12345</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__1">Profile
Id</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__2">Specifies
the identifier assigned to the profile.
<div class="note note_note">
<b>Note:</b> If you're leveraging exported
object details, leave the existing profile identifier. Otherwise, leave
this cell empty so that a new profile can be created.
</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-insertion-orders__table_c1z_srt_1nb__entry__5">13912</td>
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






