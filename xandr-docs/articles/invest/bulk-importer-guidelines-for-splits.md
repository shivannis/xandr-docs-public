---
Title : Bulk Importer Guidelines for Splits
Description : Please do not rename the Splits sheet within the bulk importer template.
---


# Bulk Importer Guidelines for Splits





Please do not rename the Splits sheet within the bulk importer template.


## Temporary ID Information



<table id="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb"
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
id="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__1">LI
Temporary Id</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__2">Specifies
the identifier used to link a split to a parent line item within the
spreadsheet. This is a placeholder value and will not be the actual
identifier of the newly-created object.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__3">Alphanumeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__5">example123</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__1">Split
Temporary Id</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__2">Specifies
the identifier used to link new objects to a parent split within the
spreadsheet. This is a placeholder value and will not be the actual
identifier of the newly-created object.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__3">Alphanumeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_qtx_qsj_qmb__entry__5">example123</td>
</tr>
</tbody>
</table>







## Split Setup



<table id="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb"
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
id="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__2"
class="entry">Description</th>
<th
id="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__1">Split
Id</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__2">Specifies
the identifier assigned to the split.
<div class="note note_note">
<b>Note:</b> If the split identifier isn't
provided, a new split will be created.
</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__5">1234</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__1">Line
Item Id</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__2">Specifies
the identifier of the existing line item that the split will be
associated to.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__5">1234</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__1">Split
Name</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__2">Specifies
the name of the split.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__3"><ul>
<li>Characters</li>
<li>Default, if it is the default split</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__5">My
split name or default</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__1">Is
Default</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__2">Specifies
whether the split should be the default.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__3"><ul>
<li>TRUE</li>
<li>FALSE</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__5">FALSE</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__1">Active</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__2">Specifies
the current status of the split.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__3"><ul>
<li>TRUE</li>
<li>FALSE</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__5">TRUE</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__1">Priority</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__2">If
an impression applies to multiple splits, the priority determines which
split will be assigned to that impression.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__4">Yes</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__5">1</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__1">Spend
Allocation</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__2">Specifies
which percentage of the line item budget should be allocated to the
split.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__5">20</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__1">Cap</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__2">Specifies
the capping behavior of the split.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__3"><ul>
<li>constrained</li>
<li>unconstrained</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__4">Yes,
if allocation is present.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__5">unconstrained</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__1">Bid
Modifier</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__2">Specifies
the bid amount that has been modified.
<div class="note note_note">
<b>Note:</b> This is only used if the line
item has CPM specified as the Revenue Type.
</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__4">Yes,
if the line item has CPM specified as the Revenue Type.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__5">2</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__1">Max
Revenue Bid</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__2">Specifies
the expected value of the split.
<div class="note note_note">
<b>Note:</b> This is only used if the line
item has Dynamic CPM or Cost Plus specified as its Revenue Type.
</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__4">Yes,
if the line item has Dynamic CPM or Cost Plus specified as the Revenue
Type.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__5">8</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__1">Creatives</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__2">Specifies
a comma-separated list of creative identifiers that correspond to the
creatives associated with the split.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__3">Numeric
value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__5">123456,5432345,232554</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__1">User
Test Group Percent</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__2">Specifies
the percentage of users in each test group.
<div class="note note_note">
<b>Note:</b> A line item can only contain up
to 100 splits.
</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__3">An
integer between 0 and 100</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_sbc_pfz_jgb__entry__5">30</td>
</tr>
</tbody>
</table>




## Conditions



<table id="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb"
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
id="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1"
class="entry">Column Name</th>
<th
id="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2"
class="entry">Description</th>
<th
id="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"
class="entry">Potential Values</th>
<th
id="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4"
class="entry">Mandatory</th>
<th
id="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Country</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on the user's country.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
20,4</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Region</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on the user's region.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
5,20</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">City</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on the user's city.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">not_in
15,17</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Metro
Code</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on the user's metro
code.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
20,54</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Postal
Code</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on specific postal
codes.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in region:postalcode,region:postalcode</li>
<li>not_in region:postalcode,region:postalcode</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
US:01609,US:01520</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Postal
Code Lists</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on the postal codes that have
been grouped together in a list.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in POSTAL_CODE_LIST_Id1,POSTAL_CODE_LIST_Id2</li>
<li>not_in POSTAL_CODE_LIST_Id1,POSTAL_CODE_LIST_Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
My_Postal_Code_List1,My_Postal_Code_List2,</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Deals</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on specific deals.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">not_in
9480,9481,7979,5923</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Deal
Lists</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on the deals that have been
grouped together in a list.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in DEAL_LIST_Id1,DEAL_LIST_Id2</li>
<li>not_in DEAL_LIST_Id1,DEAL_LIST_Id2</li>
</ul>
(not_)in DEAL_LIST_Id1,DEAL_LIST_Id2</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">not_in
My_Deal_List_Id1,My_Deal_List_Id2</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Size</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on the creative placement
size.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in WxH,WxH,WxH</li>
<li>not_in WxH,WxH,WxH</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
900x800,1200x995</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Domain
or App</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on a specific domain.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in domain1,domain2</li>
<li>not_in domain1,domain2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">not_in
food.com,drink.com</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Inventory
List</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target an allowlist or blocklist established at the
network level.
<div class="note note_note">
<b>Note:</b> You can only target a single
list.
</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in (numeric value)</li>
<li>not in (numeric value)</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">not
in 16</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Inventory
Type</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
the type of inventory ("app" or "web") that will be targeted by the
split.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3">app,web</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">app,web</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Placement</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on a specific placement.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
32,22</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Publisher</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on specific publishers.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
32,22</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Seller
Member</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on specific seller
members.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">not_in
32,22</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Operating
System Family</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on the user's operating
system. See the <a
href="../attachments/bulk-importer/Bulk-Importer-Lists.xlsx"
class="xref">OS Family list</a> to look up the appropriate operating
system identifiers.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
4,17,8</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Operating
System Version</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on a specific version of the
user's operating system. See the <a
href="../attachments/bulk-importer/Bulk-Importer-Lists.xlsx"
class="xref">OS Versions list</a> to look up the appropriate operating
system version identifiers.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
17,18,20,21</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Browser</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on the user's browser. See
the <a href="../attachments/bulk-importer/Bulk-Importer-Lists.xlsx"
class="xref">Browser list</a> to look up the appropriate browser
identifiers.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
17,18,20,21</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Browser
Language</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on the user's browser
language. See the <a
href="../attachments/bulk-importer/Bulk-Importer-Lists.xlsx"
class="xref">Language list</a> to look up the appropriate language
identifiers.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
17,18,20,21</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Device
Type</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on specific types of physical
devices.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in [pc &amp; other devices,phone,tablet]</li>
<li>not_in [pc &amp; other devices,phone,tablet]</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
pc &amp; other devices, phone,tablet</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Device
Model</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on specific models of
physical devices. See the <a
href="../attachments/bulk-importer/Bulk-Importer-Lists.xlsx"
class="xref">Device Model list</a> to look up the appropriate device
model identifiers.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
17,18,20,21</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Carrier</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target impressions based on specific mobile
carriers.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>in Id1,Id2</li>
<li>not_in Id1,Id2</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">in
17,18,20,21</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Predicted
IAB View Rate</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target web-display impressions by how likely they are
to be measured as viewable by the IAB standard.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3">(&lt;,&lt;=,=,&gt;,&gt;=)
numeric value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">&lt;
0.12</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Predicted
IAB Video View Rate</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target web-video impressions by how likely they are to
be measured as viewable by the IAB standard.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3">(&lt;,&lt;=,=,&gt;,&gt;=)
numeric value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">&lt;
0.12</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Predicted
Video Completion Rate</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
whether or not to target web-video impressions by how likely they are to
be completed.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3">(&lt;,&lt;=,=,&gt;,&gt;=)
numeric value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">&lt;
0.12</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Segment
Boolean operator</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Allows
"and" or "or" boolean operators to be used between targeted segment
groups.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3"><ul>
<li>and</li>
<li>or</li>
</ul></td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">and</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Daily
Frequency</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
the number of ads that a user sees for a split within the current
day.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3">(&lt;,&lt;=,=,&gt;,&gt;=)
numeric value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">&lt;=
10</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Lifetime
Frequency</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
the number of ads that a user sees over the lifetime of a split.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3">(&lt;,&lt;=,=,&gt;,&gt;=)
numeric value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">&lt;=
20</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Split
Recency</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
the number of minutes since a user has seen an ad.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3">(&lt;,&lt;=,=,&gt;,&gt;=)
numeric value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">&lt;=
1800</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Advertiser
Lifetime Frequency</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
the number of ads that a user sees over the lifetime based on what is
set at the advertiser level.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3">Id
(&lt;,&lt;=,=,&gt;,&gt;=) numeric value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">19328
&lt;= 12</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Advertiser
Daily Frequency</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
the number of ads that a user sees on the current day based on what is
set at the advertiser level.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3">Id
(&lt;,&lt;=,=,&gt;,&gt;=) numeric value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">18106
&lt;= 13</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Advertiser
Recency</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
the number of minutes since a user has seen an ad based on what is set
at the advertiser level.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3">Id
(&lt;,&lt;=,=,&gt;,&gt;=) numeric value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">18106
&lt;= 12</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Line
Item Lifetime Frequency</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
the number of ads that a user sees over the lifetime based on what is
set at the line item level.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3">Id
(&lt;,&lt;=,=,&gt;,&gt;=) numeric value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">179484
&gt;= 10</td>
</tr>
<tr class="even row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Line
Item Daily Frequency</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
the number of ads that a user sees on the current day based on what is
set at the line item level.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3">Id
(&lt;,&lt;=,=,&gt;,&gt;=) numeric value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">192321
&gt;= 30</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__1">Line
Item Recency</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__2">Specifies
the number of minutes since a user has seen an ad based on what is set
at the line item level.</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__3">Id
(&lt;,&lt;=,=,&gt;,&gt;=) numeric value</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__4">No</td>
<td class="entry"
headers="bulk-uploader-guidelines-for-splits__table_wzb_chk_qmb__entry__5">3218
&lt;= 20</td>
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






