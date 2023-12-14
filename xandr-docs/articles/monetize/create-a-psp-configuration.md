---
Title : Create a New PSP Configuration
Description : Follow these steps to create a new PSP configuration:
ms.date: 10/28/2023
1.  Starting in the Monetize UI, hover over the
---


# Create a New PSP Configuration





Follow these steps to create a new PSP configuration:

1.  Starting in the Monetize UI, hover over the
    Publishers Menu then click
    Prebid Server Premium. This loads
    the default Demand Partner
    Configurations screen.
2.  In the top section of the Demand
    Partner Configurations screen, click the
    New button.





## Config Details (General Settings)



1.  Enter the name of the configuration.
2.  Toggle the configuration status to
    Disabled if requests should not be sent to the Demand Partners once
    the configuration is saved.
3.  Remove any media types that do not apply to the inventory that will
    be mapped to these Demand Partners. New media types can be added any
    time via the Supported Media Types field. These selections will
    filter the available Demand Partners to those that support at least
    one of the selected media types.







<b>Note:</b> If the configuration includes
multi-format inventory, you can choose one or more of the inventory's
associated media types and the PSP auction will run for the selected
media types that are in the auction and supported by the demand partners
you choose.









## Xandr Inventory Selection

You can set a PSP configuration at the Placement, Placement Group
(site), or Publisher (all child Placements and Placement Groups) level.
If an auction matches multiple configurations, the configuration at the
lowest level of the hierarchy will be selected. For example, if an
auction matches one configuration at a Publisher level and a different
configuration at the Placement level, the Placement configuration will
be selected.

Follow these steps to restrict your configuration to be triggered only
when the selected Placement/Placement Group/Publisher ID is included in
an auction:



1.  Select Placement,
    Placement Group, or
    Publisher.
2.  In the search field below, select a Placement, Placement Group, or
    Publisher, or type in the field to see filtered options. The object
    you select here will be the inventory object used to trigger this
    configuration in an auction, and in turn request bids from the
    demand partner(s) selected in the section below.
    

    <b>Note:</b> You can also include these
    optional configuration settings:
    <table id="create-a-psp-configuration__table_k1d_k4y_5xb"
    class="table frame-all">
    <colgroup>
    <col style="width: 50%" />
    <col style="width: 50%" />
    </colgroup>
    <thead class="thead">
    <tr class="header row">
    <th id="create-a-psp-configuration__table_k1d_k4y_5xb__entry__1"
    class="entry colsep-1 rowsep-1">Options</th>
    <th id="create-a-psp-configuration__table_k1d_k4y_5xb__entry__2"
    class="entry colsep-1 rowsep-1">Settings</th>
    </tr>
    </thead>
    <tbody class="tbody">
    <tr class="odd row">
    <td class="entry colsep-1 rowsep-1"
    headers="create-a-psp-configuration__table_k1d_k4y_5xb__entry__1"><strong>Operating
    System (OS)</strong></td>
    <td class="entry colsep-1 rowsep-1"
    headers="create-a-psp-configuration__table_k1d_k4y_5xb__entry__2"><p>To
    set the OS for your configuration click in the <span
    class="ph uicontrol">Search OS text field and select an OS, or
    type in the field to see filtered options. This will ensure the PSP
    configuration is utilized (PSP demand partners are sent ad requests)
    only when Xandr detects the corresponding OS from the user's device in
    the auction. For more information, see the <a
    href="xandr-api/operating-system-families-service.md"
    class="xref" target="_blank">Operating System-Families API
    Service</a>.</p></td>
    </tr>
    <tr class="even row">
    <td class="entry colsep-1 rowsep-1"
    headers="create-a-psp-configuration__table_k1d_k4y_5xb__entry__1"><strong>Ad
    Size Selection</strong></td>
    <td class="entry colsep-1 rowsep-1"
    headers="create-a-psp-configuration__table_k1d_k4y_5xb__entry__2"><p>To
    specify which ad sizes will be allowed for this configuration, click in
    the Ad Size Selection field and select
    some ad sizes, or type in the field to see filtered options. This will
    ensure the PSP configuration is utilized (PSP demand partners are sent
    ad requests) only when the auction includes one of the selected ad
    sizes. The Ad Size Selection menu
    includes all standard sizes as well as any custom sizes saved to your
    member seat.</p>
    <p>Follow these steps to add new custom sizes:</p>
    <ol type="a">
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
    corresponding PSP configuration to be used in the auction and enable
    PSP to call the associated Demand Partners.

    







## Add Demand Partners



1.  Type to search or select a demand partner from the
    Select a Demand Partner drop down.
    

    <b>Note:</b> Follow below tips if you do
    not see the Demand Partner you wish to add in the drop down list:
    - Ensure that you have the proper media type selected above.
    - If the media type is set properly, ensure you have added the
      Demand Partner in the Global
      Settings page under **Demand Partners**, as described in
      <a href="add-or-edit-a-demand-partner.md" class="xref"
      title="Once inventory has been Integrated with Prebid Server Premium (PSP) and Global Settings have been reviewed, Demand Partners can be enabled at the seller member level. This step is necessary before inventory can be mapped to Demand Partners via PSP configurations.">Add
      or Edit a Demand Partner</a>
    - Check that the partner shows up as `Enabled` in that list.

    You can view a full list of available Demand Partners at
    <a href="https://docs.prebid.org/dev-docs/pbs-bidders.md" class="xref"
    target="_blank">Prebid</a>.

    
2.  Once you select a Demand Partner from the dropdown, new input fields
    will appear representing the parameters, both required and optional,
    that each demand partner's adapter accepts. Fill in the values of
    the required parameters and any desired optional parameters based on
    the fields in the UI. To get a broader picture of partners and their
    adapter schemas leverage the <a
    href="xandr-api/demand-partner-schema-service.md"
    class="xref" target="_blank">Demand Partner Schema API Service</a>.
3.  To add additional Demand Partners, click
    the Add Another button.
4.  Click the Save button to save your
    configurations and return to the
    Demand Partner Configurations
    screen.



<b>Note:</b> You do not need to select
Xandr as a Demand Partner. All standard
managed/direct and RTB demand in the Xandr
marketplace will operate and flow as it normally does outside the PSP
environment/context. If you select Xandr as a
Demand Partner, do not input
parameters that map the configuration to inventory within the same
Member ID (Xandr seat). The
Xandr Demand Partner is for mapping inventory
from the Publisher's member/seat to a different
Xandr network seat where that partner has
reselling authority.









## Related Topics

- <a href="manage-a-psp-configuration.md" class="xref">Manage a PSP
  Configuration</a>
- <a href="manage-psp-configurations-in-bulk.md" class="xref">Manage PSP
  Configurations in Bulk</a>
- <a href="add-or-edit-psp-global-settings.md" class="xref"
  title="Once inventory has been Integrated with Prebid Server Premium (PSP), Global Settings should be reviewed and updated via the UI or the Cross-Partner Settings API Service. Global Settings apply to all auctions across all demand partners and can be edited at any time.">Add
  or Edit PSP Global Settings</a>
- <a href="prebid-server-premium-demand-partner-integrations.md"
  class="xref">Prebid Server Premium Demand Partner Integrations</a>
- <a
  href="xandr-api/config-service.md"
  class="xref" target="_blank">Config Service</a>






