---
Title : Bulk Importer Guidelines for Line Items
Description : Please adhere to these general guidelines:
- Please do not rename the Line Items sheet within the bulk importer
template.
---


# Bulk Importer Guidelines for Line Items







Please adhere to these general guidelines:

- Please do not rename the Line Items sheet within the bulk importer
  template.
- When adding flight details to the following columns per line item,
  leave the cells that are on the same row as the other line item
  details empty:
  - Flight Id
  - Flight Start Date
  - Flight End Date
  - Lifetime Budget
  - Lifetime Budget Imps
  - Pacing, Pacing Percent
  - Flight Creatives
- If adding multiple flights for one line item, be sure to enter all the
  details for each flight, such as start dates and end dates, on a
  separate row.







## Temporary ID Information



<table id="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb"
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
id="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__2"
class="entry">Description</th>
<th
id="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__1">IO
Temporary Ids</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__2">Specifies
the identifier or comma-separated list of identifiers used to link new
line items to a parent insertion order that will be created within the
spreadsheet.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__3">Alphanumeric
values</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__5">example123</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__1">LI
Temporary Id</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__2">Specifies
the identifier used to link new objects within the spreadsheet to a
particular line item. This is a placeholder value and will not be the
actual identifier of the newly-created object.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__3">Alphanumeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_sbc_pfz_jgb__entry__5">example123</td>
</tr>
</tbody>
</table>



## Basic Settings



<table id="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb"
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
id="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__1">Line
Item Id</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__2">Specifies
the identifier assigned to the line item.
<div class="note note_note">
<b>Note:</b> If the line Item identifier isn't
provided, a new line item will be created.
</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__5">1234</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__1">Advertiser
Id</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__2">Specifies
the identifier assigned to the associated line item's advertiser.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__5">1234</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__1">Insertion
Order Ids</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__2">Specifies
the identifiers of the existing insertion orders that the line item will
be associated to.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__3">Numeric
value

<b>Note:</b> If there are multiple numeric
values, use commas to separate them.
</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__5">1234,4567</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__1">Line
Item Name</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__2">Specifies
the name of the line item.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__3">Characters</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__5">My
line item</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__1">External
Code</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__2">Specifies
the custom code assigned to the insertion order.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__3"><ul>
<li>Alphanumeric values</li>
<li>Periods</li>
<li>Underscores</li>
<li>Dashes</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__5">code1234</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__1">State</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__2">Specifies
current status of the line item.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__3"><ul>
<li>active</li>
<li>inactive</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__5">active</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__1">Ad
Type</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__2">Specifies
the creative type associated with the line item.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__3"><ul>
<li>banner</li>
<li>video</li>
<li>audio</li>
<li>native</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zgf_wbl_qmb__entry__5">banner</td>
</tr>
</tbody>
</table>




## Budgeting and Scheduling



<table id="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb"
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
id="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Revenue
Type</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
the line item's revenue type.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3"><ul>
<li>cpm</li>
<li>viewable cpm</li>
<li>dynamic cpm</li>
<li>cpc</li>
<li>cpcv</li>
<li>cost_plus_margin</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">cpm</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Revenue
Value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
the revenue amount.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">5</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Payment
Type</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
the line item's payment type.
<div class="note note_note">
<b>Note:</b> If "Native" is specified as the
Ad Type, then you can only specify "Impression" as the Payment Type.
</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3"><ul>
<li>impression</li>
<li>view</li>
<li>video</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">impression</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Flight
Start Date</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
the flight's start date.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3"><p>Date/time</p>
<p>Use the YYYY-MM-DD hh:mm:ss format. Excel will try to auto format the
date to MM/DD/YYYY, which is also accepted but will be less accurate.
Hours should be based on the UTC time zone.</p></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">2018-11-09
00:00:00</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Flight
End Date</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
the flight's end date. Do not enter an end date if there is no end
date.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3"><p>Date/time</p>
<p>Use the YYYY-MM-DD hh:mm:ss format. Excel will try to auto format the
date to MM/DD/YYYY, which is also accepted but will be less accurate.
Hours should be based on the UTC time zone.</p></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">2018-11-09
23:59:39</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Daily
Budget</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
the daily budget amount.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">1000</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Daily
Budget Imps</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
the daily budget represented by a number of impressions.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">10</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Lifetime
Budget</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
the flight's lifetime budget.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">Yes,
if Lifetime Budget Imps is not specified.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">100</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Lifetime
Budget Imps</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
the flight's lifetime budget represented by a number of
impressions.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">Yes,
if a Lifetime Budget is not specified.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">80</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Pacing</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
whether the line item should spend its overall lifetime budget evenly
across flights.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3"><ul>
<li>TRUE</li>
<li>FALSE</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">FALSE</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Pacing
Percent</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
what percentage of your flight budget should be spent per day.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3">Numeric
value between 50 and 150</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">50</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Underspend
Catch-Up</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Dictates
how your line item distributes unspent budget throughout the remainder
of a flight.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3"><ul>
<li>evenly</li>
<li>asap</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">evenly</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Daypart
Monday</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
a comma-separated list of hour ranges to target throughout Monday.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3">Numeric
range consisting of any whole number between 0 and 23</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">7-16,20-23</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Daypart
Tuesday</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
a comma-separated list of hour ranges to target throughout Tuesday.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3">Numeric
range consisting of any whole number between 0 and 23</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">20-23</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Daypart
Wednesday</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
a comma-separated list of hour ranges to target throughout
Wednesday.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3">Numeric
range consisting of any whole number between 0 and 23</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">7-16,20-23</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Daypart
Thursday</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
a comma-separated list of hour ranges to target throughout
Thursday.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3">Numeric
range consisting of any whole number between 0 and 23</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">7-16,20-23</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Daypart
Friday</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
a comma-separated list of hour ranges to target throughout Friday.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3">Numeric
range consisting of any whole number between 0 and 23</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">7-16,20-23</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Daypart
Saturday</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
a comma-separated list of hour ranges to target throughout
Saturday.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3">Numeric
range consisting of any whole number between 0 and 23</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">7-16,20-23</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Daypart
Sunday</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Specifies
a comma-separated list of hour ranges to target throughout Sunday.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3">Numeric
range consisting of any whole number between 0 and 23</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">7-16,20-23</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__1">Daily
Pacing Allocation</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__2">Sets
the pace for how quickly the budget should be spent in one day.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__3"><ul>
<li>evenly</li>
<li>asap</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ujl_xbl_qmb__entry__5">evenly</td>
</tr>
</tbody>
</table>


## Optimization


<table id="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb"
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
id="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__1">Optimization
Type</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__2">Specifies
the metrics that should be used to measure the line item's
performance.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__3"><ul>
<li>none</li>
<li>cpc</li>
<li>cpa</li>
<li>viewable cpm</li>
<li>ctr</li>
<li>cpcv</li>
<li>vcr</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__5">cpc</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__1">Min
CPM</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__2">Specifies
the minimum CPM when Cost Plus or Dynamic CPM is set for the line
item.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__5">1</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__1">Max
CPM</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__2">Specifies
the maximum CPM when Cost Plus or Dynamic CPM is set for the line
item.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__5">8</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__1">Optimization
Goal Target</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__2">Required
for CTR, CPC, CPA, Viewable CPM, CPCV, and VCR optimization types.
<div class="note note_note">
<b>Note:</b> Depending on the chosen
optimization type, this numeric value can take on the form of a
percentage or a currency value.
</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__5">85</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__1">Post-View
Post-Click Strategy</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__2">Only
used when the line item has a CPA goal for both post-click and post-view
conversions to determine whether it is optimized for retargeting or
prospecting.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__3"><ul>
<li>prospecting</li>
<li>retargeting</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__5">propsecting</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__1">Post
Click Only</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__2">Specifies
the CPA post-click goal that the line item will optimize to.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__3"><ul>
<li>TRUE</li>
<li>FALSE</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__5">FALSE</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__1">Post
Click Goal Target</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__2">Specifies
the CPA post-click goal that the line item will optimize to.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__5">12</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__1">Goal
Pixel Id</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__2">Specifies
the identifier assigned to the targeted goal pixel.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__5">1036301</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__1">Goal
Priority</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__2">Specifies
whether to give greater priority to delivery, performance, or
margin.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__3"><ul>
<li>delivery</li>
<li>performance</li>
<li>margin</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__5">margin</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__1">Min
Margin Percent</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__2">Only
set this field if the goal priority has been set to margin and revenue
type has not been set to cost_plus_margin.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__3">Numeric
value (in %)</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__5">25</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__1">Conversion
Pixels</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__2">Specifies
a comma-separated list of conversion pixel identifiers that will be
tracked.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_b5y_ccl_qmb__entry__5">4912,192941,10203</td>
</tr>
</tbody>
</table>



## Inventory and Brand Safety Targeting



<table id="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb"
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
id="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__1">Supply
Strategies</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__2">Specifies
the type of inventory (open exchange, managed, or deal inventory) that
should be targeted.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__3"><ul>
<li>rtb</li>
<li>managed</li>
<li>deals</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__5">rtb,managed</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__1">Deals</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__2">Specifies
a comma-separated list of individual deals that will be targeted.
<div class="note note_note">
<b>Note:</b> If this cell is left empty and
"deals" is selected as the supply strategy, then all deals will be
targeted.
</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__5">10918,10433,123412</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__1">Deal
Lists</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__2">Specifies
a series of deal lists separated by commas that will be targeted.
<div class="note note_note">
<b>Note:</b> If this cell is left empty and
"deals" is selected as the supply strategy, then all deal lists will be
targeted.
</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__3">Alphanumeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__5">My_Deal_List_1,My_Deal_List_2</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__1">Include
Deals</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__2">Specifies
whether a deal should be included.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__3"><ul>
<li>TRUE</li>
<li>FALSE</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__5">TRUE</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__1">Managed
Priority</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__2">Specifies
how line items that have their supply strategy set to Managed should be
prioritized.
<div class="note note_note">
<b>Note:</b> This field doesn't apply to line
items that have their supply strategy set to Open Exchange or Deals.
</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__5">5</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__1">Inventory
Types</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__2">Specifies
a comma-separated list of inventory types to exclude.
<div class="note note_note">
<b>Note:</b> If this cell is left empty, all
inventory types will be included by default.
</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__3"><ul>
<li>web</li>
<li>mobile_web</li>
<li>mobile_app</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__5">mobile_web,web</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__1">Blocklists</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__2">Specifies
blocklists that are associated with the line item.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__3">Id</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__5">160</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__1">Allowlists</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__2">Specifies
allowlists that are associated with the line item.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__3">Id</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__5">17,18</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__1">Ads
Txt Authorized Only</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__2">Specifies
whether the associated creatives should only serve on ads.txt verified
inventory.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__3"><ul>
<li>TRUE</li>
<li>FALSE</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__5">TRUE</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__1">Member
Targets</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__2">Specifies
which seller member identifiers should be excluded or included in a
profile.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__3">Action
(exclude or include)-Id1,Id2,Id3</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__5">include-1,2,3</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__1">Seller
Member Group Targets</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__2">Specifies
which seller member groups should be excluded or included in a
profile.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__3">Action
(exclude or include)-Id1,Id2,Id3</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bzx_zbl_qmb__entry__5">exclude-4,5,6</td>
</tr>
</tbody>
</table>



## Audience and Location Targeting



<b>Note:</b>

Effective August 30, 2021:

- Tapad's graph (id:3) will provide global coverage excluding Europe.
- Xandr's graph (id:4) will provide coverage for
  Europe and the United States.


<table id="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb"
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
id="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__1">Countries</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__2">Specifies
whether or not to target a particular country. See the <a
href="../attachments/bulk-importer/Bulk-Importer-Lists.xlsx"
class="xref">Country list</a> to look up the appropriate country
codes.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__3">Action
(include or exclude)-Code1,Code2,Code3</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__5">include-US,FR</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__1">Regions</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__2">Specifies
whether or not to target a particular region. See the <a
href="../attachments/bulk-importer/Bulk-Importer-Lists.xlsx"
class="xref">Region list</a> to look up the appropriate region
identifiers.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__3">Action
(include or exclude)-Id1,Id2,Id3</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__5">exclude-1080,1081</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__1">Cities</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__2">Specifies
whether or not to target a particular city. See the <a
href="../attachments/bulk-importer/Bulk-Importer-Lists.xlsx"
class="xref">City list</a> to look up the appropriate City
identifiers.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__3">Action
(include or exclude)-Id1,Id2,Id3</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__5">include-68778,68779,68780</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__1">Metro
Codes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__2">Specifies
whether or not to target a particular metro code. See the <a
href="../attachments/bulk-importer/Bulk-Importer-Lists.xlsx"
class="xref">Metro Code list</a> to look up the appropriate metro
codes.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__3">Action
(include or exclude)-Id1,Id2,Id3</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__5">include-500,501,502</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__1">Postal
Codes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__2">Specifies
whether or not to target specific postal codes.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__3">Postal
Code 1,Postal Code 2,Postal Code 3,Postal Code 4</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__5">120563,120564</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__1">Postal
Code Lists</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__2">Specifies
whether or not to target postal codes that have been grouped together in
a list.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__3">Alphanumeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__5">My_Postal_Code_List_1,My_Postal_Code_List_2</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__1">Cross
Device</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__2">Specifies
the identifier of the cross device graph that is being targeted.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__3"><ul>
<li>null (no cross device)</li>
<li>3 (Tapad graph)</li>
<li>4 (Xandr graph)</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__5">3</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__1">Segment
Boolean operator</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__2">Allows
"and" or "or" boolean operators to be used between targeted segment
groups.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__3"><ul>
<li>and</li>
<li>or</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__5">and</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__1">Congressional
Districts</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__2">Specifies
whether or not to target specific Congressional Districts.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__3">Numeric
Values (<b>Note:</b> If there are multiple numeric values, use commas to
separate them).</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__5">139898</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__1">State
Senate Districts</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__2">Specifies
whether or not to target specific State Senate Districts.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__3">Numeric
Values (<b>Note:</b> If there are multiple numeric values, use commas to
separate them).</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__5">141210</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__1">State
House Districts</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__2">Specifies
whether or not to target specific State House Districts.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__3">Numeric
Values (<b>Note:</b> If there are multiple numeric values, use commas to
separate them).</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_cm5_bcl_qmb__entry__5">139960</td>
</tr>
</tbody>
</table>




## Frequency and Recency


<table id="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb"
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
id="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__1">Hourly
Frequency</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__2">Specifies
the maximum number of impressions per person per hour.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__3">Numeric
value (255 characters max)</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__5">10</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__1">Daily
Frequency</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__2">Specifies
the maximum number of impressions per person per day.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__3">Numeric
value (255 characters max)</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__5">20</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__1">Weekly
Frequency</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__2">Specifies
the maximum number of impressions per person per week.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__3">Numeric
value (255 characters max)</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__5">50</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__1">Monthly
Frequency</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__2">Specifies
the maximum number of impressions per person per month.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__3">Numeric
value (255 characters max)</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__5">200</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__1">Lifetime
Frequency</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__2">Specifies
the maximum number of impressions per person.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__3">Numeric
value (255 characters max)</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__5">255</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__1">Recency</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__2">Specifies
the minimum number of minutes between impressions per person.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__3">Numeric
value (255 characters max)</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__5">60</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__1">Include
Users Without Cookies</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__2">Determines
whether impressions will be served to unidentified users.
<div class="note note_note">
<b>Note:</b> When serving impressions to
unidentified users, frequency and recency caps will be ignored for those
users.
</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__3"><ul>
<li>TRUE (excludes users who do not have cookies enabled)</li>
<li>FALSE (includes users who do not have cookies enabled)</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_bcb_2cl_qmb__entry__5">TRUE</td>
</tr>
</tbody>
</table>




## Viewability and Environment Targeting



<table id="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb"
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
id="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1">Viewability
Threshold</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2">Percentage
of how likely an impression is to be viewable.
<div class="note note_note">
<b>Note:</b> Custom viewability thresholds are
allowed.
</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3">Numeric
value between 0 and 100</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5"><ul>
<li>For standard IAB thresholds: 12</li>
<li>For custom viewability thresholds: custom-12</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1">Video
Completion Threshold</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2">Percentage
of how likely a video impression is to be viewed in its entirety.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3">Numeric
value between 0 and 100</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5">18</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1">Device
Types</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2">Specifies
a comma-separated list of device types that will be targeted.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3"><ul>
<li>pc</li>
<li>phone</li>
<li>tablet</li>
<li>tv</li>
<li>stb</li>
<li>gameconsole</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5">pc,phone</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1">Playback
Methods</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2">Specifies
a comma-separated list of playback method identifiers: (1:
playback-method-auto-play-sound-on),(2:
playback-method-auto-play-sound-off),(3:
playback-method-click-to-play),(4: playback-method-mouse-over),(5:
playback-method-auto-play-sound-unknown).</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3">1,2,3,4,
or 5</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5">1,3,5</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1">Video
Targets Allow Unknown Playback Method</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2">Determines
whether to allow unknown playback methods.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3"><ul>
<li>TRUE</li>
<li>FALSE</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5">FALSE</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1">Video
Targets Allow Unknown Context</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2">Determines
whether to allow unknown contexts for video targeting.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3"><ul>
<li>TRUE</li>
<li>FALSE</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5">FALSE</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1">Player
Sizes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2">Specifies
the player size for video targeting in which 1= Small, 2= Medium, and 3=
Large.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3">1,
2, and/or 3 (small, medium, or large)</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5">1,
2</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1">Video
Targets Allow Unknown Player Size</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2">Determines
whether to allow unknown player sizes for video targeting.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3"><ul>
<li>TRUE</li>
<li>FALSE</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4">Yes</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5">TRUE</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1">Video
Target Contexts</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2">Specifies
a comma separated list of video target contexts.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3">1,
2, 3, and/or 4 (pre-roll, mid-roll, post-roll, outstream)</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5">1,
2</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1">Browsers</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2">Specifies
a comma-separated list of browser identifiers that will be included or
excluded. See the <a
href="../attachments/bulk-importer/Bulk-Importer-Lists.xlsx"
class="xref">Browser list</a> to look up the appropriate browser
identifiers.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3">Action
(include or exclude)-Id1,Id2,Id3</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5">include-210,401,201</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1">Languages</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2">Specifies
a comma-separated list of language identifiers that will be included or
excluded. See the <a
href="../attachments/bulk-importer/Bulk-Importer-Lists.xlsx"
class="xref">Language list</a> to look up the appropriate language
identifiers.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3">Action
(include, exclude)-Id1,Id2,Id3</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5">exclude-129,140,120</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1">User
Group Bucket</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2">Specifies
a comma-separated list of user groups that will be targeted using A/B
testing.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3">Numeric
value ranges between 0 and 99</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5">0-18,25-32,58-63</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__1">User
Groups Include Cookieless Users</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__2">Determines
whether to target users who don't have cookies enabled.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__3"><ul>
<li>TRUE</li>
<li>FALSE</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_alc_gcl_qmb__entry__5">FALSE</td>
</tr>
</tbody>
</table>




## Creatives



<table id="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb"
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
id="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__1">Creative
Rotation</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__2">Specifies
the creative-rotation strategy that will be used when multiple creatives
of the same size are trafficked through the line item.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__3"><ul>
<li>even</li>
<li>weighted</li>
<li>ctr-optimized</li>
</ul></td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__5">even</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__1">Flight
Creatives</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__2">Specifies
the creatives associated to the flight.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__3">Id1,Id2,Id3,Id4</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zjw_ybl_qmb__entry__5">10040,120421,120202</td>
</tr>
</tbody>
</table>



## Fees



<table id="bulk-importer-guidelines-for-line-items__table_zvs_hcl_qmb"
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
id="bulk-importer-guidelines-for-line-items__table_zvs_hcl_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-importer-guidelines-for-line-items__table_zvs_hcl_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-importer-guidelines-for-line-items__table_zvs_hcl_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-importer-guidelines-for-line-items__table_zvs_hcl_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-importer-guidelines-for-line-items__table_zvs_hcl_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zvs_hcl_qmb__entry__1">Partner
Fees</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zvs_hcl_qmb__entry__2">Specifies
a comma-separated list of partner fee identifiers that have been applied
to the line item.</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zvs_hcl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zvs_hcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_zvs_hcl_qmb__entry__5">321014,149129,1292</td>
</tr>
</tbody>
</table>




## Internal Fields



<table id="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb"
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
id="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__1">Flight
Id</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__2">Specifies
the identifier assigned to the flight.
<div class="note note_note">
<b>Note:</b> If you're leveraging exported
object details, leave the existing flight identifier. Otherwise, leave
this cell empty so that a new flight can be created.
</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__5">12345</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__1">Profile
Id</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__2">Specifies
the identifier assigned to the profile.

<b>Note:</b> If you're leveraging exported
object details, leave the existing profile identifier. Otherwise, leave
this cell empty so that a new profile can be created.
</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-importer-guidelines-for-line-items__table_ikb_jcl_qmb__entry__5">13912</td>
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






