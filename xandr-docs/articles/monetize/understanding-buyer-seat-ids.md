---
Title : Understanding Buyer Seat IDs
Description : Buyer Seat IDs allow external DSPs to use proprietary buyer IDs for the
buyers they manage, rather than using a Xandr
member ID. If a DSP has implemented this feature, you can choose between
---


# Understanding Buyer Seat IDs



Buyer Seat IDs allow external DSPs to use proprietary buyer IDs for the
buyers they manage, rather than using a Xandr
member ID. If a DSP has implemented this feature, you can choose between
member and seat IDs when creating a deal and reporting on buyers.

Certain external DSPs have already set up Xandr
to use IDs internal to their bidder systems, so they can easily map
activity to specific seats without creating an intermediary
Xandr ID. This means you can now see both
Xandr member IDs and a breakdown of individual
seat IDs for external DSPs when you select from lists of buyers. While
Xandr member IDs are typically 4-6 digits, seat
IDs can look different for every DSP. Seat IDs are only unique within a
DSP. In other words, multiple DSPs might use the same seat ID.

Before you can set up deals with a DSP's buyer seats, the DSP needs to
register the IDs with Xandr. DSPs have several
mechanisms for uploading new seats:

- DSPs can register new seats whenever they want using the <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/seat-service.html"
  class="xref" target="_blank">Seat service</a>.
- The first time a new seat ID is used to bid on inventory,
  Xandr registers it automatically.

If a DSP hasn't registered a seat or submitted bids with it before, you
won't see the seat when you're trying to set up a deal. If you
experience this problem, please reach out to the buyer and have them
work with the DSP to get the seat registered with
Xandr.





Note: You may encounter seat IDs that
are not yet eligible for creating deals. To ensure a successful deal,
check the reference table in
<a href="external-dsps-using-buyer-seat-ids.html" class="xref"
title="Not every buyer seat ID that you&#39;ll see when creating deals is currently eligible for deal creation. Before you create a custom deal with an external DSP using buyer seat IDs, you should check the Buyer Seat Migration Status reference table and communicate with the buyer to ensure you&#39;re using the correct IDs.">External
DSPs Using Buyer Seat IDs</a>.








