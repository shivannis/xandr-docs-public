---
Title : Add or Edit PSP Global Settings
Description : Once inventory has been
ms.date: 10/28/2023
<a href="integrate-apps-with-psp.md" class="xref">Integrated with
---


# Add or Edit PSP Global Settings



Once inventory has been
<a href="integrate-apps-with-psp.md" class="xref">Integrated with
Prebid Server Premium (PSP)</a>, Global Settings should be reviewed and
updated via the UI or the <a
href="xandr-api/cross-partner-settings-service.md"
class="xref" target="_blank">Cross-Partner Settings API Service</a>.
Global Settings apply to all auctions across all demand partners and can
be edited at any time.

1.  Starting in the Monetize UI, hover over the
    Publishers Menu then click
    Prebid Server Premium.
2.  Click Global Settings in the
    left-hand navigation bar on the
    Demand Partner Configurations
    screen. This will load the Global Settings section and the Demand
    Partners list. For more information on the Demand Partners list, see
    <a href="add-or-edit-a-demand-partner.md" class="xref"
    title="Once inventory has been Integrated with Prebid Server Premium (PSP) and Global Settings have been reviewed, Demand Partners can be enabled at the seller member level. This step is necessary before inventory can be mapped to Demand Partners via PSP configurations.">Add
    or Edit a Demand Partner</a>.
3.  If you wish to change the default settings, click the
    Edit button (next to the words
    "Global Settings"). This opens the
    Edit Global Settings pane.

The following configurations can be set:



## Demand Partner Timeout

The maximum time, in milliseconds, that Prebid Server Premium partners
and other bidders in our marketplace are given to respond. If set, this
global PSP timeout applies in place of the member-wide (or default)
auction timeout, but can be overridden by setting a placement or
request-level timeout. See <a
href="add-or-edit-psp-global-settings.md#add-or-edit-psp-global-settings__fulltimehierarachy"
class="xref">full timeout hierarchy</a> for more details.



<b>Note:</b> This value should be slightly
lower than any prebid.js configuration timeout set on the client side.





**Request-Level Timeouts**

- Timeout for AMP inventory can alternatively be set at the request
  level via the timeout field and override any higher level timeouts
  (placement, PSP, member). Contact your Xandr account team to have
  Xandr's settings updated to allow the timeout field to override other
  timeouts.
- Monetize Ad Server clients can similarly set the request-level timeout
  via the auction_timeout_ms field. Request-level timeout values longer
  than 450 ms will be floored to 450 ms.




The full timeout hierarchy in order from highest to lowest priority is:

1.  <a
    href="monetize_monetize-standard/understanding-the-debug-auction.md"
    class="xref" target="_blank">Debug Auction timeout value</a>
    (2000ms) \[if debug=1/true\]
2.  Ad Request auction_timeout_ms value set by the publisher
    1.  For AMP, see above
    2.  For Android, <a
        href="mobile-sdk/set-the-auction-timeout-for-android.md"
        class="xref" target="_blank">See guidance here</a>
    3.  For iOS, <a
        href="mobile-sdk/set-the-auction-timeout-for-ios.md"
        class="xref" target="_blank">See guidance here</a>
3.  Placement-level auction_timeout_ms value. Contact your Xandr
    Representative to set this value
4.  PSP Global Settings (Cross Partner) Timeout value set by the
    publisher. See guidance above
5.  Member-level default_auction_timeout_ms value for the given data
    center. Contact your Xandr Representative to set this value
6.  Member-level default_auction_timeout_ms value. Contact your Xandr
    Representative to set this value
7.  Xandr data center / global default (150ms)







## Price Granularity



<b>Note:</b> By default, PSP demand competes
with Xandr demand in a unified auction.
**Monetize Ad Server** customers do not need to set up line items for
PSP demand and can ignore price granularity settings entirely, as well
as price bucket currency.



This field defines the CPM price buckets into which Demand Partner bids
will be grouped. The setting should reflect a client's
<a href="https://docs.prebid.org/adops/price-granularity.md"
class="xref" target="_blank">Prebid price granularity settings</a> and
their line item setup in their non-Monetize Ad Server with respect to
price points (`hb_pb` or `hb_pb_{partner}` key-value targeting).

You can choose from the five system-defined options, or you may choose
"custom" to define your own price buckets. When you select a currency
other than USD ($) you will see the price buckets reflected in that
currency which will also be used when requests are matched to ad server
line items. Note that the examples shown below use USD as currency.

- **Low:** $0.50 buckets, capped at $5 CPM. Buckets would be:
  - $0.00 to $0.50
  - $0.51 to $1.00
  - ...
  - $4.51 to $5.00
- **Medium:** $0.10 buckets, capped at $20 CPM.
- **High:** $0.01 buckets, capped at $20 CPM.
- **Auto:** Applies a sliding scale to determine granularity as shown in
  the Auto Granularity table. For more
  information, see <a
  href="https://docs.prebid.org/dev-docs/publisher-api-reference/setConfig.md#autoGranularityBucket"
  class="xref" target="_blank">Prebid's Auto Granularity table</a>.
- **Dense**: Like **Auto**, but the bid price granularity uses smaller
  increments, especially at lower CPMs. For more details, see <a
  href="https://docs.prebid.org/dev-docs/publisher-api-reference/setConfig.md#denseGranularityBucket"
  class="xref" target="_blank">Prebid's Dense Granularity table</a>.
- **Custom:** (advanced setting options) Define up to 10 price bucket
  granularity groups by specifying each bucket's
  Upper Bound and
  Increment.





## Price Bucket Currency

This specifies the currency used for price buckets and **does not apply
to Monetize Ad Server customers**. Specifically,
targeting keys, not bids, are converted into the selected currency.
Select the currency that aligns with the line items in your ad server.
You can choose any currency supported by Xandr
seen in
<a href="currency-support.md" class="xref">Currency Support</a>.



<b>Note:</b> This is independent of your
Monetize currency selection and only applies to Prebid Server Premium
auctions.



**Bid Response Currency**

- Targeting keys
  - If you are using our /openrtb2/prebid (and have specifically set it
    to override targeting keys in response) or /ut/v3/prebid endpoints,
    targeting keys within bid responses use the transaction currency
    that you have set via the <a
    href="xandr-api/publisher-service.md"
    class="xref" target="_blank">Publisher Service API</a>. If you need
    to override that currency selection, use the <a
    href="https://docs.prebid.org/dev-docs/modules/currency.md#currency-module"
    class="xref" target="_blank">Prebid.js currency module</a>.
  - If you are using another integration method, targeting keys within
    bids use the currency selected for PSP price buckets independently
    of the <a
    href="xandr-api/publisher-service.md"
    class="xref" target="_blank">Publisher Service API</a>.



>

## Related Topics

- <a href="add-or-edit-a-demand-partner.md" class="xref"
  title="Once inventory has been Integrated with Prebid Server Premium (PSP) and Global Settings have been reviewed, Demand Partners can be enabled at the seller member level. This step is necessary before inventory can be mapped to Demand Partners via PSP configurations.">Add
  or Edit a Demand Partner</a>
- <a href="add-edit-or-delete-a-psp-configuration.md" class="xref"
  title="Once inventory has been Integrated with Prebid Server Premium (PSP) and Global Settings have been reviewed, and Demand Partners have been enabled, inventory must be mapped to Demand Partners via PSP configurations. These mappings allow the Demand Partners to identify the inventory being sent in the request from PSP.">Add,
  Edit, or Delete a PSP Configuration</a>
- <a href="prebid-server-premium-demand-partner-integrations.md"
  class="xref">Prebid Server Premium Demand Partner Integrations</a>






