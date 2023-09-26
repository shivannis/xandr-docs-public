---
Title : Add or Edit a Demand Partner
Description : Once inventory has been
<a href="integrate-with-psp.html" class="xref">Integrated with Prebid
---


# Add or Edit a Demand Partner



Once inventory has been
<a href="integrate-with-psp.html" class="xref">Integrated with Prebid
Server Premium (PSP)</a> and
<a href="add-or-edit-psp-global-settings.html" class="xref"
title="Once inventory has been Integrated with Prebid Server Premium (PSP), Global Settings should be reviewed and updated via the UI or the Cross-Partner Settings API Service. Global Settings apply to all auctions across all demand partners and can be edited at any time.">Global
Settings have been reviewed</a>, Demand Partners can be enabled at the
seller member level. This step is necessary before inventory can be
mapped to Demand Partners via
<a href="add-edit-or-delete-a-psp-configuration.html" class="xref"
title="Once inventory has been Integrated with Prebid Server Premium (PSP) and Global Settings have been reviewed, and Demand Partners have been enabled, inventory must be mapped to Demand Partners via PSP configurations. These mappings allow the Demand Partners to identify the inventory being sent in the request from PSP.">PSP
configurations</a>.



## Add a Demand Partner



Follow these steps to add a new Demand Partner:

1.  Starting in the Monetize UI, hover over the
    Publishers Menu then click
    Prebid Server Premium.
2.  Click Global Settings in the
    left-hand navigation bar on the
    Demand Partner Configurations
    screen. This will load the Global
    Settings section and the Demand Partners list.
3.  On the Global Settings page,
    click the Add New button at the
    top of the Demand Partners list.
    This will open the New Demand
    Partner details pane.
4.  Type to search or select the desired Demand Partner from the
    Partner drop-down.
5.  Click the Enabled toggle to either
    enable or disable this Demand Partner.
6.  Optionally, update the Bid CPM Adjustment field. This is a
    multiplier value applied to the Demand Partner's CPM bid price to
    adjust how the bids compete in auction. This does not change the
    actual bid or revenue payout- only the ranking of the bid in the
    auction. The default value is 1.00 in which case all partners' bids
    compete equally with no adjustments. The adjustment can be used to
    account for partner fees or for optimization. If CPM adjustments are
    needed at a level more granular than Demand Partner, see <a
    href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/create-a-bias-rule.html"
    class="xref" target="_blank">Create a Bias Rule</a>.





Note:

You do not need to select Xandr as a Demand
Partner. All standard managed/direct and RTB demand in the
Xandr marketplace will operate and flow as it
normally does outside the PSP environment/context.

If you select Xandr as a
Demand Partner, do not input
parameters that map the configuration to inventory within the same
Member ID (Xandr seat). The
Xandr Demand Partner is for mapping inventory
from the Publisher's member/seat to a different
Xandr network seat where that partner has
reselling authority.







## Edit a Demand Partner

Follow these steps to enable/disable or delete an existing Demand
Partner in bulk:

1.  Go to the Demand Partners list.
2.  Check the box next to the name(s) of the Demand Partners you want to
    enable/disable or delete.
3.  Click the Actions drop-down at the
    top of the Demand Partners list.
4.  Select Enable or
    Disable to enable/disable the
    selected Demand Partner(s) across your PSP Configurations
    accordingly.
5.  Select Delete if you wish not only to disable the selected Demand
    Partner(s) across your PSP Configurations, but also delete the
    Demand Partner(s) from your seat including any instance of the
    Demand Partner(s) within PSP Configurations settings.
    

    Warning: Delete cannot be undone.
    This option will remove all uses/instances of the selected Demand
    Partner(s) from your Monetize account, and thus should only be taken
    if certain that the Partner(s) and associated parameters are no
    longer needed.

    



To enable or disable an existing Demand Partner and/or edit a partner's
Bid CPM Adjustment value:

1.  Click the name of the Demand Partner in the list.
2.  In the Demand Partner details
    screen, click the Edit button next
    to the partner's name.
3.  Toggle the Status selection.
4.  If needed, edit the Bid CPM
    Adjustment filed.
5.  Click Save to apply your changes.





<div id="add-or-edit-a-demand-partner__postreq_eyz_qyq_dtb"
>

## Related Topics

- <a href="add-or-edit-psp-global-settings.html" class="xref"
  title="Once inventory has been Integrated with Prebid Server Premium (PSP), Global Settings should be reviewed and updated via the UI or the Cross-Partner Settings API Service. Global Settings apply to all auctions across all demand partners and can be edited at any time.">Add
  or Edit PSP Global Settings</a>
- <a href="add-edit-or-delete-a-psp-configuration.html" class="xref"
  title="Once inventory has been Integrated with Prebid Server Premium (PSP) and Global Settings have been reviewed, and Demand Partners have been enabled, inventory must be mapped to Demand Partners via PSP configurations. These mappings allow the Demand Partners to identify the inventory being sent in the request from PSP.">Add,
  Edit, or Delete a PSP Configuration</a>
- <a href="prebid-server-premium-demand-partner-integrations.html"
  class="xref">Prebid Server Premium Demand Partner Integrations</a>






