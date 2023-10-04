---
Title : Curated Deal Floors
Description : Xandr lets you to specify a floor on curated
deals. Curated deal floor types are configured on a
---


# Curated Deal Floors



Xandr lets you to specify a floor on curated
deals. Curated deal floor types are configured on a
<a href="create-a-curated-deal-line-item.html" class="xref">curated deal
line item</a>.



## Floor Types

Curated deal floors corresponding to the **Revenue Type** of the
<a href="create-a-curated-deal-line-item.html" class="xref">curated deal
line item</a>:

- Fixed – CPM selected and a
  Fixed Price entered
- Standard – Dynamic CPM selected and
  a Floor Price entered
- Market – Dynamic CPM selected and
  Use Market Price selected





Note: If your fixed price curated deal
curates impressions from a seller who runs second price auctions, you
may notice that your curated deal's clearing price is lower than the
fixed price you configured.



Curated deal floors can be set with or without margins (see
<a href="curator-margins.html" class="xref">Curator Margins</a>).
Setting floors on curated deals not only allows you to set margins, but
also gives buyers more guidance on how to bid more accurately. Buyers
will tend to bid more often and with higher bids on impressions that
come with a deal floor.







## Fixed and Standard Floor Types

<div id="curated-deal-floors__p-9ca49c6d-a4f9-46c3-b1b1-9ce8d2003138"
>

It’s important to understand how seller floor type and price can affect
curator margins when the curator floor type is fixed or standard. When
working with seller deals that have a fixed floor, your curator margin
is effectively the *minimum* margin you may earn. Because of this, some
special auction scenarios can arise which can sometimes cause a higher
margin to be taken in practice or the bid to be rejected:

- When a seller deal is fixed floor and the curated deal is fixed or
  standard floor, you must set a margin type. If no margin has been set,
  the deal will throw an error in the auction because any amount above
  these floor prices cannot be collected by either the seller or the
  curator. Curators who cannot take margin cannot curate fixed price
  seller deals with standard or fixed price curated deal floors.
- When the seller deal is fixed floor and the curator deal is fixed
  floor and a margin has been set, the curator takes the difference
  between the two floors, regardless of what the curated margin is
  (assuming the minimum margin doesn't make the curator floor lower than
  the seller floor - if it does, the transaction is rejected).
- When the seller deal is fixed floor, the curator deal is standard
  floor and a margin has been set, the curator takes the difference
  between the buyer bid and the seller fixed price (assuming the auction
  is first price).







## Floor Type Price

Setting floor types and prices is a strategic choice. Curators can set
their own floor price at a line item level. The ability to set curator
floor prices above, at, or even below a seller floor gives curators
maximum flexibility. For example, you might choose to set floors that
are above all seller floors to ensure that buyers always clear. On the
other hand, you might choose to set floors that match the lowest seller
floor, indicating the lowest possible value a buyer should bid to clear
some of the time.

The following table lists the outcomes of various combinations of seller
and curator floor types to help guide you in determining the best
settings for curator deal margin types and floor types.

<table id="curated-deal-floors__table_sbc_pfz_jgb"
class="table frame-all">
<caption><span class="table--title-label">Table 1. <span
class="title">Floor Examples</caption>
<thead class="thead">
<tr class="header row">
<th id="curated-deal-floors__table_sbc_pfz_jgb__entry__1"
class="entry">Seller Floor</th>
<th id="curated-deal-floors__table_sbc_pfz_jgb__entry__2"
class="entry">Curator Floor</th>
<th id="curated-deal-floors__table_sbc_pfz_jgb__entry__3"
class="entry">Outcome</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__1">Fixed</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__2">Fixed</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__3"><div
class="note note_note">
Note: If no curator margin is set, this
configuration is not allowed and will cause an error. This is because
the seller has expressed they do not want anything above the fixed price
and you have not configured a minimum margin indicating you wish to
collect anything above the seller’s fixed price.

<p>You should account for the seller’s fixed floor when determining a
curator margin and fixed floor price. For example, you might
inadvertently add a margin that, when applied to the curator fixed floor
price along with the curator tech fees, results in a bid that is below
the seller's fixed floor price.</p></td>
</tr>
<tr class="even row">
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__1">Fixed</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__2">Standard</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__3"><div
class="note note_note">
Note: If no curator margin is set, this
configuration is not allowed and will cause an error. This is because
the seller has expressed they do not want anything above the fixed price
and the curator has not configured a minimum margin indicating they wish
to collect anything above the seller’s fixed price.

<p>You should account for the seller’s fixed floor when determining a
curator margin and standard floor price. For example, you might
inadvertently add a margin that, when applied to the curator standard
floor price along with the curator tech fees, results in a bid that is
below the seller's fixed floor price.</p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__1">Fixed</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__2">Market</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__3">Since you are
not adding a fixed or standard floor, there is no additional operational
risk.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__1">Market</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__2">Fixed</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__3">Since seller
market price floor is based on yield management (YM) floors, which can
vary by creative attribute (e.g., brand), you might set a fixed price
that conflicts with the YM floor. If this occurs, this error will show
up in the <a href="curator-bid-error-report.html" class="xref">Curator
Bid Error Report</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__1">Market</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__2">Standard</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__3">Since seller
market price floor is based on yield management (YM) floors, which can
vary by creative attribute (e.g., brand), you might set a standard price
that conflicts with the YM floor. If this occurs, this error will show
up in the <a href="curator-bid-error-report.html" class="xref">Curator
Bid Error Report</a>.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__1">Market</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__2">Market</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__3">Since you are
not adding a fixed or standard floor, there is no additional operational
risk.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__1">Standard</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__2">Fixed</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__3">You should
account for the seller’s standard floor when determining a curator
margin and fixed floor price. For example, you might inadvertently add a
margin that, when applied to the curator fixed floor price along with
the curator tech fees, results in a bid that is below the seller's
standard floor price.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__1">Standard</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__2">Standard</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__3">You should
account for the seller’s standard floor when determining a curator
margin and standard floor price. For example, you might inadvertently
add a margin that, when applied to the curator standard floor price
along with the curator tech fees, results in a bid that is below the
seller's standard floor price.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__1">Standard</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__2">Market</td>
<td class="entry"
headers="curated-deal-floors__table_sbc_pfz_jgb__entry__3">Since you are
not adding a fixed or standard floor, there's no additional operational
risk.</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 1.
<span class="title">Floor Examples





## Related Topics

- <a href="curated-deals.html" class="xref">Curated Deals</a>
- <a href="create-a-curated-deal-line-item.html" class="xref">Create a
  Curated Deal Line Item</a>
- <a href="curator-reporting.html" class="xref">Curator Reporting</a>
- <a href="curator-margins.html" class="xref">Curator Margins</a>






