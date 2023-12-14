---
Title : Integrate Accelerated Mobile Pages with PSP
Description : Both Microsoft Monetize Ad Server and Direct Supply
ms.date: 10/28/2023
customers must follow the below guidelines to integrate their
accelerated mobile pages (AMP) inventory with PSP.
---


# Integrate Accelerated Mobile Pages with PSP





Both Microsoft Monetize Ad Server and Direct Supply
customers must follow the below guidelines to integrate their
accelerated mobile pages (AMP) inventory with PSP.





## Context

When a publisher calls Xandr using the
`/prebid/amp` endpoint, Xandr responds with
key-values for each adapter and the top bid. This happens regardless of
whether the client has a consolidated or bidder-specific line item
setup. Xandr Prebid bid response includes Prebid
key-values (bidder, price, deal, and so on) for each SSP (Xandr and/or
SSP demand partners with PSP) that submitted a valid bid into the
auction.



>

## Implementation

To set up AMP inventory with PSP:

>

1.  Follow the <a
    href="https://docs.prebid.org/dev-docs/show-prebid-ads-on-amp-pages.md"
    class="xref" target="_blank">Prebid AMP Implementation Guide</a>.
    More context on the AMP use case can be found
    <a href="https://docs.prebid.org/prebid-server/use-cases/pbs-amp.md"
    class="xref" target="_blank">here</a>.

2.  Update the `rtc-config` as shown in the example below:

    ``` pre
    <amp-ad width="300" height="250"
      type="doubleclick"
      data-slot="/1111/universal_creative"
      rtc-config='{"vendors": {"prebidappnexuspsp": {"PLACEMENT_ID": "13144370"}}, "timeoutMillis": 500}'>
    </amp-ad> 
    ```

    

    <b>Warning:</b>
    Any publisher client with Google Ad Manager (GAM) as their ad server
    should ensure the following elements are in place:

    - Enable the checkbox Serve into a
      SafeFrame of Prebid Universal Creatives set up in GAM. This
      ensures viewability tracking.
    - All relevant ad sizes are included on the creatives in GAM.
    - Any optional `hb_bidder` targeting must include all relevant PSP
      demand partners, not just Xandr.

    





>

## Related Topics

- <a href="integrate-web-mobile-web-with-psp.md" class="xref">Integrate
  Web/Mobile Web with PSP</a>
- <a href="integrate-apps-with-psp.md" class="xref">Integrate Apps with
  PSP</a>
- <a href="prebid-server-premium-identity-and-user-syncing.md"
  class="xref">Prebid Server Premium Identity &amp; User Syncing</a>






