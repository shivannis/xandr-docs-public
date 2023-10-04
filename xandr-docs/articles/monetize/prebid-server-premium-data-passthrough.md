---
Title : Prebid Server Premium Data Passthrough
Description : <div id="topics__section_ekb_n1c_wxb" >
## SupplyChain Object
Per the IAB, the SupplyChain (schain) object, along with sellers.json,
---


# Prebid Server Premium Data Passthrough



<div id="topics__section_ekb_n1c_wxb" >

## SupplyChain Object

Per the IAB, the SupplyChain (schain) object, along with sellers.json,
identifies all of the intermediaries in the flow of money from the
buying platform back to the publisher. It does not include an
intermediary that does not participate in the money flow or systems that
are paid a fee for their services but do not pay upstream sellers.

Prebid Server Premium (PSP) acts as a pass-through for requests and
responses and although it incurs a fee for the publisher, PSP is not a
financial entity in the chain. For this reason, the appnexus (Xandr)
node is not appended to the schain when requests are sent from PSP to
external demand partners (SSPs). Those SSPs apply their node to the
schain when they send the request on to DSPs.

More information on the SupplyChain object can be found <a
href="https://iabtechlab.com/wp-content/uploads/2019/07/FAQ-for-sellers.json_supplychain-object.pdf"
class="xref" target="_blank">here</a>.



<div id="topics__section_ltf_t1c_wxb" >

## Floors

When a publisher includes reserved price or price in the request to
Xandr, PSP passes the value on to demand partners. PSP does not pass
yield management floors to demand partners. More information on yield
management can be found <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/working-with-yield-management.html"
class="xref" target="_blank">here</a>.



<div id="topics__section_yb4_w1c_wxb" >

## Global Placement ID (GPID)

The Global Placement ID (GPID) is passed by PSP to demand partners for
publishers using these endpoints:

- `/openrtb2/prebid`
- `/ut/v3/prebid`
- `/ptv`
- `/ssptv`

We are working to support the remaining PSP endpoints.

More information on GPID via Prebid can be found
<a href="https://docs.prebid.org/features/pbAdSlot.html" class="xref"
target="_blank">here</a>.






