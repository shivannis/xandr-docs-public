---
Title : Curator Margins
Description : Curator margins allow curators to profit on the curated deals they
handle. Margins let curators compensate themselves for the value they’re
---


# Curator Margins



Curator margins allow curators to profit on the curated deals they
handle. Margins let curators compensate themselves for the value they’re
adding to a curated deal transaction. Margins are set at a
<a href="create-a-curated-deal-line-item.html" class="xref">curated deal
line item</a> level, so curators can take different margins for each
deal. Margins can be edited at any time for a deal.

Curators do not take margin by default and therefore **must** select a
margin type and set a non-zero margin value if they want to profit on
the transaction. Setting a zero value as margin will prevent any margin
from being taken, even in unique situations where the curator is
targeting seller fixed price deals and the buyer is bidding above the
seller floor price (see
<a href="curated-deal-floors.html" class="xref">Curated Deal Floors</a>).

Margin Types

<div id="curator-margins__p-de0af4c2-44b4-49e1-bf61-3659a6710552"
>

Curator margin types are configured on a
<a href="create-a-curated-deal-line-item.html" class="xref">curated deal
line item</a>. There are two types of curated margins corresponding to
the following curated deal line item Margin
Type selections:

- Percentage - The percentage of the
  buyer’s bid (Curator Revenue) which will be taken as curator margin
- CPM - A fixed CPM deducted from the
  buyer’s bid (Curator Revenue) which will be taken as curator margin



How Margins Are Accounted For

<div id="curator-margins__p-7548114d-38e8-4b82-88d8-aad72f47f6ef"
>

Margins are a markdown in which the buyer bid is taken at face value,
the margin is deducted (as well as any curator tech fees), and the
remaining revenue is sent to the seller. The formula for any markdown in
our system is **markdown amount = bid \* (1 – margin rate)**. This
happens in the following order:

1.  The buyer bid has buyer fees removed. This value is reported as
    Curator Revenue.
2.  From Curator Revenue, curator margin is deducted (if relevant) and
    curator tech fees are taken.
3.  The remaining value is reported as Curator Net Media Cost (see
    <a href="curator-analytics-report.html" class="xref">Curator Analytics
    Report</a>) and is the bid sent to the seller auction, where seller
    fees are deducted before all bids are ranked in the final auction.



Related Topics

- <a href="curated-deals.html" class="xref">Curated Deals</a>
- <a href="curated-deal-floors.html" class="xref">Curated Deal Floors</a>
- <a href="create-a-curated-deal-line-item.html" class="xref">Create a
  Curated Deal Line Item</a>
- <a href="curator-reporting.html" class="xref">Curator Reporting</a>




