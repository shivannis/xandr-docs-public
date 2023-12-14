---
Title : Price Bucket Currency
Description : This page includes guidance on using currencies other than USD with
ms.date: 10/28/2023
Prebid Server Premium (PSP).
---


# Price Bucket Currency



This page includes guidance on using currencies other than USD with
Prebid Server Premium (PSP).

Price bucket currency specifies the currency used for price buckets and
**does not apply to Monetize Ad Server
customers**. Specifically, targeting keys, not bids, are converted into
the selected currency. Select the currency that aligns with the line
items in your ad server. You can choose any currency supported by
Xandr seen in
<a href="currency-support.md" class="xref">Currency Support</a>.

>



<b>Note:</b> This is independent of your
Monetize currency selection and only applies to
Prebid Server Premium (PSP) auctions.







## Bid Response Currency

**Targeting keys**



- If you are using our `/openrtb2/prebid` (and have specifically set it
  to override targeting keys in response) or `/ut/v3/prebid` endpoints,
  targeting keys within bid responses use the transaction currency that
  you have set via the <a
  href="xandr-api/publisher-service.md"
  class="xref" target="_blank">Publisher Service API</a>. If you need to
  override that currency selection, use the <a
  href="https://docs.prebid.org/dev-docs/modules/currency.md#currency-module"
  class="xref" target="_blank"><code class="ph codeph">Prebid.js</code>
  currency module</a>.
- If you are using another integration method, targeting keys within
  bids use the currency selected for PSP price buckets independently of
  the <a
  href="xandr-api/publisher-service.md"
  class="xref" target="_blank">Publisher Service API</a>.







## Related Topics



- <a href="add-or-edit-psp-global-settings.md" class="xref"
  title="Once inventory has been Integrated with Prebid Server Premium (PSP), Global Settings should be reviewed and updated via the UI or the Cross-Partner Settings API Service. Global Settings apply to all auctions across all demand partners and can be edited at any time.">Add
  or Edit PSP Global Settings</a>








