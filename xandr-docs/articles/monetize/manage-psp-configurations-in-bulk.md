---
Title : Manage PSP Configurations in Bulk
Description : Bulk upload allows a user to manage multiple configurations via bulk
template rather than creating configurations individually in the UI.
---


# Manage PSP Configurations in Bulk



Bulk upload allows a user to manage multiple configurations via bulk
template rather than creating configurations individually in the UI.



## Create New PSP Configurations in Bulk



Follow these steps to create new PSP configurations in bulk:

1.  In the Monetize UI, go to the
    Publishers menu and click
    Prebid Server Premium. This loads
    the default Demand Partner
    Configurations.
2.  In the left navigation pane, click Bulk
    Upload New Configurations.



**Configuration Filters**

You can also include these optional configuration settings:



<table id="create-a-psp-configuration__table_gjz_mky_5xb"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="create-a-psp-configuration__table_gjz_mky_5xb__entry__1"
class="entry colsep-1 rowsep-1">Options</th>
<th id="create-a-psp-configuration__table_gjz_mky_5xb__entry__2"
class="entry colsep-1 rowsep-1">Settings</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="create-a-psp-configuration__table_gjz_mky_5xb__entry__1"><strong>Operating
System (OS)</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="create-a-psp-configuration__table_gjz_mky_5xb__entry__2">To set
the OS for your configuration click in the <span
class="ph uicontrol">Search OS text field and select an OS, or
type in the field to see filtered options. This will ensure the PSP
configuration is utilized (PSP demand partners are sent ad requests)
only when Xandr detects the corresponding OS from the user's device in
the auction. For more information, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-families-service.html"
class="xref" target="_blank">Operating System-Families API
Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="create-a-psp-configuration__table_gjz_mky_5xb__entry__1"><strong>Ad
Size Selection</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="create-a-psp-configuration__table_gjz_mky_5xb__entry__2"><p>To
specify which ad sizes will be allowed for this configuration, click in
the Ad Size Selection field and select
some ad sizes, or type in the field to see filtered options. This will
ensure the PSP configuration is utilized (PSP demand partners are sent
ad requests) only when the auction includes one of the selected ad
sizes. The Ad Size Selection menu
includes all standard sizes as well as any custom sizes saved to your
member seat.</p>
<p>Follow these steps to add new custom sizes:</p>
<ol>
<li>Select <span
class="ph uicontrol">Network &gt; <span
class="ph uicontrol">Tools &gt; <span
class="ph uicontrol">General from the top menu. This will
display the Tools: General
page.</li>
<li>Select Custom Sizes from the
horizontal sub-menu.</li>
<li>Click the New custom size button.
This will display the Custom Size
Details popover.</li>
<li>Enter values for Width and <span
class="ph uicontrol">Height text fields and click the check box
if you want to make this a standard size.</li>
<li>Click the Save button.</li>
</ol></td>
</tr>
</tbody>
</table>



If these optional settings are left blank, then any auction for the
selected Placement/Placement Group/Publisher ID will trigger the
corresponding PSP configuration to be used in the auction and enable PSP
to call the associated Demand Partners.

**Add a Demand Partner**



1.  Type to search or select a demand partner from the
    Select a Demand Partner drop down.
    <div id="create-a-psp-configuration__note-b1c91d5d-417a-4c99-a217-d8ae8f36444b"
    

    Note: Follow below tips if you do
    not see the Demand Partner you wish to add in the drop down list:
    - Ensure that you have the proper media type selected above.

    - If the media type is set properly, ensure you have added the
      Demand Partner in the **Global Settings** page under **Demand
      Partners,** as described in <a
      href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/add-or-edit-a-demand-partner.html"
      class="xref" target="_blank">Add or Edit a Demand Partner</a>.

    - Check that the partner shows up as `Enabled` in that list.

    You can view a full list of available Demand Partners at
    <a href="https://docs.prebid.org/dev-docs/pbs-bidders.html" class="xref"
    target="_blank">Prebid</a>.

    
2.  Once you select a Demand Partner
    from the dropdown, new input fields will appear representing the
    parameters, both required and optional, that each demand partner's
    adapter accepts.
    1.  Required parameters will automatically be checked and cannot be
        excluded from the spreadsheet.
    2.  Required parameters that stipulate that "one of" a set of values
        is required will note "Select at least one of...".
    3.  Check boxes will also be displayed by optional parameters. If
        the check box is checked, then the parameter will be included in
        the spreadsheet.
3.  To add additional Demand Partners, click the
    Add a Demand Partner button.
4.  Click Download Bulk Spreadsheet.
5.  Enter the number of data rows. These represent the number of
    configurations to Monetize entities (placements, placement groups,
    publishers) you will map to external demand partners.
6.  Optionally, rename the file.
7.  Click Download.



**Populate Template**

<div id="create-a-psp-configuration__p-f33d10d5-df2e-4a93-bfff-46da285aa54a"
>

1.  Open the template and populate each row, representing one
    configuration, with the information requested for each column.
2.  Configuration Mapping Object ID is the ID of the placement,
    placement group, or publisher to be mapped to the demand partner in
    each row. Each mapping object ID can only be associated with one PSP
    configuration.
3.  Each demand partner and its selected (required + any optional
    chosen) parameters are represented as an additional section of
    columns to the right.
4.  Each demand partner and its parameter columns can only appear once
    per row. Additional values for the same demand partner must be
    applied on a separate row which represents a separate PSP
    configuration
    <div id="create-a-psp-configuration__note-35314855-5891-40a0-8c5b-947eee8087b3"
    class="note warning note_warning">

    Warning: Do not edit any of the
    pre-populated cells except for the
    "data.demand_partner_config_params\[X\].enabled, which toggles the
    partner as active or inactive within that configuration (row).

    
5.  Save changes to the template.



**Send Template**

Submit the completed template to your Xandr
account team for processing unless otherwise instructed.





## Add Demand Partners to Existing Configurations in Bulk



Follow these steps to add demand partners to PSP configurations in bulk:

1.  In the Monetize UI, go to the
    Publishers menu and click
    Prebid Server Premium. This loads
    the default **Demand Partner Configurations** screen.
2.  Use the multi-select check boxes to select the configurations to
    which you would like to add the demand partner.
    <div id="create-a-psp-configuration__note_lgw_ddw_rxb"
    

    Note:
    The partner must be new to all of the configurations selected. If
    the demand partner is already included in any of the configurations,
    processing of the bulk template will fail.

    
3.  Select the Actions menu \>
    Bulk Add Demand Partner to
    Configurations.



**Configuration Filters**

You can also include these optional configuration settings:



<table id="create-a-psp-configuration__table_d1b_yky_5xb"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="create-a-psp-configuration__table_d1b_yky_5xb__entry__1"
class="entry colsep-1 rowsep-1">Options</th>
<th id="create-a-psp-configuration__table_d1b_yky_5xb__entry__2"
class="entry colsep-1 rowsep-1">Settings</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="create-a-psp-configuration__table_d1b_yky_5xb__entry__1"><strong>Operating
System (OS)</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="create-a-psp-configuration__table_d1b_yky_5xb__entry__2">To set
the OS for your configuration click in the <span
class="ph uicontrol">Search OS text field and select an OS, or
type in the field to see filtered options. This will ensure the PSP
configuration is utilized (PSP demand partners are sent ad requests)
only when Xandr detects the corresponding OS from the user's device in
the auction. For more information, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-families-service.html"
class="xref" target="_blank">Operating System-Families API
Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="create-a-psp-configuration__table_d1b_yky_5xb__entry__1"><strong>Ad
Size Selection</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="create-a-psp-configuration__table_d1b_yky_5xb__entry__2"><p>To
specify which ad sizes will be allowed for this configuration, click in
the Ad Size Selection field and select
some ad sizes, or type in the field to see filtered options. This will
ensure the PSP configuration is utilized (PSP demand partners are sent
ad requests) only when the auction includes one of the selected ad
sizes. The Ad Size Selection menu
includes all standard sizes as well as any custom sizes saved to your
member seat.</p>
<p>Follow these steps to add new custom sizes:</p>
<ol>
<li>Select <span
class="ph uicontrol">Network &gt; <span
class="ph uicontrol">Tools &gt; <span
class="ph uicontrol">General from the top menu. This will
display the Tools: General
page.</li>
<li>Select Custom Sizes from the
horizontal sub-menu.</li>
<li>Click the New custom size button.
This will display the Custom Size
Details popover.</li>
<li>Enter values for Width and <span
class="ph uicontrol">Height text fields and click the check box
if you want to make this a standard size.</li>
<li>Click the Save button.</li>
</ol></td>
</tr>
</tbody>
</table>

If these optional settings are left blank, then any auction for the
selected Placement/Placement Group/Publisher ID will trigger the
corresponding PSP configuration to be used in the auction and enable PSP
to call the associated Demand Partners.



**Add a Demand Partner**



1.  Type to search or select a demand partner from the
    Select a Demand Partner drop down.
    <div id="create-a-psp-configuration__note-9ade0985-14e0-4b1a-9d75-20d341fad136"
    

    Note: Follow these tips if you do
    not see the Demand Partner you wish to add in the drop down list.
    Ensure you have the proper media type selected above.
    - If the media type is set properly, ensure you have added the
      Demand Partner in the **Global Settings** page under **Demand
      Partners**, as described in <a
      href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/add-or-edit-a-demand-partner.html"
      class="xref" target="_blank">Add or Edit a Demand Partner</a>.

    - Check that the partner shows up as `Enabled` in that list.

    You can view a full list of available Demand Partners at
    <a href="https://docs.prebid.org/dev-docs/pbs-bidders.html" class="xref"
    target="_blank">Prebid</a>.

    
2.  Once you select a Demand Partner from the dropdown, new input fields
    will appear representing the parameters, both required and optional,
    that each demand partner's adapter accepts.
    1.  Required parameters will automatically be checked and cannot be
        excluded from the spreadsheet.
    2.  Required parameters that stipulate that "one of" a set of values
        is required will note "Select at least one of...".
    3.  Check boxes will also be displayed by optional parameters. If
        the check box is checked, then the parameter will be included in
        the spreadsheet.
3.  Click Download Bulk Spreadsheet.
4.  Enter the number of data rows. These represent the number of
    configurations to Monetize entities (placements, placement groups,
    publishers) you will map to the external demand partner.
5.  Optionally, rename the file.
6.  Click Download.



**Populate Template**



1.  Open the template and populate each row, representing one
    configuration, with the information requested for each column.
2.  Configuration Mapping Object ID is the ID of the placement,
    placement group, or publisher to be mapped to the demand partner in
    each row. Each mapping object ID can only be associated with one PSP
    configuration.
3.  The demand partner and its selected (required + any optional chosen)
    parameters are represented as an additional section of columns to
    the right.
4.  Each demand partner and its parameter columns can only appear once
    per row. Additional values for the same demand partner must be
    applied on a separate row which represents a separate PSP
    configuration
    <div id="create-a-psp-configuration__note-e883c6de-618c-4de0-b577-3b67453c4d8c"
    class="note warning note_warning">

    Warning: Do not edit any of the
    pre-populated cells except for the
    "data.demand_partner_config_params\[X\].enabled, which toggle the
    partner as active or inactive within that configuration (row).

    
5.  Save changes to the template.



**Send Template**

Submit the completed template to your Xandr account team for processing
unless otherwise instructed.



Note: The bulk template cannot yet be
used to edit configuration-level details (i.e. media type, size(s), OS
family(ies)) or demand partner details (which parameters to utilize or
their values). Those capabilities will be added in the future, as well
as self-service processing and upload of the templates.







## Related Topics

- <a href="create-a-psp-configuration.html" class="xref">Create a New PSP
  Configuration</a>
- <a href="manage-a-psp-configuration.html" class="xref">Manage a PSP
  Configuration</a>
- <a href="add-or-edit-psp-global-settings.html" class="xref"
  title="Once inventory has been Integrated with Prebid Server Premium (PSP), Global Settings should be reviewed and updated via the UI or the Cross-Partner Settings API Service. Global Settings apply to all auctions across all demand partners and can be edited at any time.">Add
  or Edit PSP Global Settings</a>
- <a href="prebid-server-premium-demand-partner-integrations.html"
  class="xref">Prebid Server Premium Demand Partner Integrations</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/config-service.html"
  class="xref" target="_blank">Config Service</a>






