# Data Cost Calculation Mechanics

<div class="body">

A buyer will only be charged for a segment if that segment is used in a
winning bid for an impression. Whether the buyer is charged for the
segment is further determined by the *AND/OR* boolean logic that the
buyer has selected.

The diagram below illustrates this process. In this process, a relevant
segment is a segment that has a match with one or more parameters within
an ad request. If a campaign is targeting 3rd party segments and there
are no relevant segments then no bid is made. A used segment is a
segment that is used to bid in the auction. The difference between a
relevant segment and a used segment is that not all relevant segments
are required to be used for a campaign to bid in the auction. Note that
many other factors besides segment targeting influence the decision on
whether a bid is made on an impression in the auction such as inventory
or geo targeting.

<img src="images/data-providers/2.png" class="image" height="150" />

Key steps in assessing data cost:

1.  A list of relevant segments is provided in the bid request
2.  Used segments are determined based upon the segments which caused
    <span class="ph">Xandr</span> to submit a bid. The list of relevant
    segments, the buyer's targeted segments and
    boolean *AND/OR* decisioning logic the buyer has selected are all
    determining factors.
    (see <a href="data-cost-calculation-mechanics.html#ID-00000b8e__1"
    class="xref">Segment to use in the auction are selected</a> below)
3.  The auction is run and the impression is won by the campaign
    (see <a href="data-cost-calculation-mechanics.html#ID-00000b8e__2"
    class="xref">Win the auction</a> below)
4.  Data costs for used segments are determined based on a pricing
    methodologies
    (see <a href="data-cost-calculation-mechanics.html#ID-00000b8e__3"
    class="xref">Pricing methodologies</a> below)

The examples below illustrate in more detail how this process works.

<div id="ID-00000b8e__1" class="section">

## Segment to use in the auction are selected

<div class="note">

<span class="notetitle">Note:</span> In the examples below, a green box
indicates a relevant segment for a single impression, a red box
indicates that it is not a relevant segment for a single impression.

</div>

</div>

<div class="section">

## Single segment targeted

In the simplest scenario, the campaign is targeting just a single
segment. The presence of the user's unique identifier (a parameter in
the auction) determines whether the demographic segment is relevant. For
campaigns targeting one segment if a segment is relevant, then the
segment will be used to bid in the auction.

<img src="images/data-providers/3.png" class="image" width="350"
height="114" />

</div>

<div class="section">

## Multiple segments targeted

If multiple segments are targeted with a campaign, the
boolean *AND/OR* logic that the buyer has selected will determine
whether the ad request matches the required targeting criteria.

- If the segments are ANDed, only an ad request that is relevant to ALL
  segments will generate a bid.
- If the the segments are ORed, an ad request that is relevant to ANY of
  the targeted segments will generate a bid.

**When the segments are targeted using the *AND* boolean**

If the ad request is relevant in ALL targeted segments, a bid will be
made.

<img src="images/data-providers/4.png" class="image" width="350" />

If the ad request is not relevant to one or many of the targeted
segments, then no bid will be made.

<img src="images/data-providers/5.png" class="image" width="350" /><img src="images/data-providers/6.png" class="image" width="350" /> 
 

<div class="p">

<div id="ID-00000b8e__note_nnd_hwv_kwb" class="note">

<span class="notetitle">Note:</span> Since the ad request is required to
be relevant for ALL targeted segments using the AND boolean, the buyer
will be charged for the use of ALL segments if the impression is won.

</div>

</div>

**When the segments are targeted using the *OR* boolean**

If the ad request is relevant to ANY segment, a bid will be made using
the relevant segment. 

<img src="images/data-providers/7.png" class="image" width="350"
height="130" /><img src="images/data-providers/8.png" class="image" width="350"
height="130" />

If the ad request is relevant to more than one segment (overlaps),
<span class="ph">Xandr</span> will use the lowest priced segment will be
used to bid on the auction. 

<img src="images/data-providers/9.png" class="image" width="350"
height="138" />

If the ad request is NOT relevant to any targeted segment, then no bid
will be made.

<img src="images/data-providers/10.png" class="image" width="350" />

</div>

<div class="section">

## Multiple groups of segments targeted

Buyers can create multiple segments groups (using the boolean AND/OR
operators described above) and those groups can apply either the AND or
OR boolean operator. The same process described above is used to
determine whether a bid is made. However, due to the complexity of the
tiering of boolean operations (e.g., an AND within an ORed group) the
calculation needs to be performed multiple times to determine whether
the campaign bids in the auction or not. 

**AND Targeting using Segment Groups**

<img src="images/data-providers/11.png" class="image" width="350"
height="160" />

When using the AND boolean against segment groups, the boolean within
each group will be set to OR. OR pricing logic described in the section
above will be used to determine which segments to use in each group.
Then a second calculation is done to verify that at least one segment is
relevant in each group. At least one segment from each group will be
used to bid on the auction.

**When the segment groups have been ORed**

<img src="images/data-providers/12.png" class="image" width="350"
height="191" />

When using the OR boolean against segment groups, the boolean within
each group will be set to AND. As such, each segment group will be
evaluated using the AND pricing logic described in the section above to
calculate the prices for each group. Then a second calculation is done
to evaluate each group using the OR pricing logic described above. All
segments within one segment group will be used to bid on the auction.

**When the segments are negatively targeted (exclusion targeting):**

<div class="p">

- If a parameter in the ad request is included in the negatively
  targeted segment, then no bid is made. 
- If a parameter in the ad request is not included in the negatively
  targeted segment, then a bid is made.

</div>

</div>

<div id="ID-00000b8e__2" class="section">

## Win the auction

Data costs are only charged on impressions that are won by the campaign.

**When the segments are positively targeted (inclusion targeting)**

The buyer will be charged for all segments that were used to win the
bid. The group of used segments will be passed through the data
provider's pricing methodology to determine a bundled price (see next
section).

**When the segments are negatively targeted (exclusion targeting)**

The buyer will be charged for exclusion targeted segments when an
impression is won. For further clarity, this means that the buyer will
be charged when parameters for an ad request does not belong to the
segment.

</div>

<div id="ID-00000b8e__3" class="section">

## Pricing Methodologies

Pricing of segments will be determined by the following pricing
methodologies. We offer a variety of methodologies to support a wide
range of business models. The pricing methodology used for your segments
will be selected by you and <span class="ph">Xandr</span> in your
<span class="ph">Xandr</span> Data Provider agreement and can only be
changed through amending that agreement.

<div class="note">

<span class="notetitle">Note:</span> The price set for each category is
mutually determined by you and <span class="ph">Xandr</span> by rate
cards that you have submitted and that <span class="ph">Xandr</span>
have accepted. <span class="ph">Xandr</span> does not set prices without
your knowledge or consent.

</div>

**Pricing Methodology 2**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top">Summary</td>
<td class="entry cell-noborder">When
multiple segments are used under this pricing methodology, <span
class="ph">Xandr</span> will charge the highest CPM segment across all
publishers.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
style="vertical-align: top">Diagram</td>
<td class="entry cell-noborder"><p><img
src="images/data-providers/13.jpeg" class="image"
height="250" /></p></td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
style="vertical-align: top">Example</td>
<td class="entry cellborder">Final Price:
$1.50 CPM
<p><img src="images/data-providers/14.jpeg" class="image"
height="250" /></p>
<ul>
<li>Four segments were used to win the impression and the buyer will be
charged for the usage of all segments</li>
<li>The bundled price for all four segments is $1.50 CPM (the highest
CPM category)</li>
</ul></td>
</tr>
</tbody>
</table>

</div>

**Pricing Methodology 3**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top">Summary</td>
<td class="entry cell-noborder">When
multiple segments are used under this pricing methodology, <span
class="ph">Xandr</span> will charge for all categories.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
style="vertical-align: top">Diagram</td>
<td class="entry cell-noborder"><p><img
src="images/data-providers/15.jpeg" class="image"
height="250" /></p></td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
style="vertical-align: top">Example</td>
<td class="entry cellborder">Final Price:
$1.25 CPM
<p><img src="images/data-providers/16.jpeg" class="image"
height="250" /></p>
<ul>
<li>Seven segments were used to win the impression and the buyer will be
charged for the usage of all segments</li>
<li>The bundled price will be determined by adding the price of each
that category is used</li>
<li>The bundled price is $1.25 CPM = $0.10 + $0.20 + $0.25 + $0.30 +
$0.40</li>
</ul></td>
</tr>
</tbody>
</table>

</div>

**Pricing Methodology 4**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top">Summary</td>
<td class="entry cell-noborder">When
multiple segments are used under this pricing methodology, <span
class="ph">Xandr</span> will charge for the highest CPM category.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
style="vertical-align: top">Diagram</td>
<td class="entry cell-noborder"><p><img
src="images/data-providers/17.jpeg" class="image"
height="250" /></p></td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
style="vertical-align: top">Example</td>
<td class="entry cellborder">Final Price:
$0.40 CPM
<p><img src="images/data-providers/18.jpeg" class="image"
height="250" /></p>
<ul>
<li>Seven segments were used to win the impression and the buyer will be
charged for the usage of all segments</li>
<li>The bundled price will be determined by the highest CPM price of the
categories used</li>
<li>The bundled price is $0.40 CPM</li>
</ul></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Glossary

- Segments - Segments available through the Data Marketplace
- Relevant Segment - A segment (targeted by the buyer) that matches
  against one or more parameters of the ad request. A relevant segment
  is eligible for being used by <span class="ph">Xandr</span> to bid on
  the campaign
- Used Segment - A segment that is used by <span class="ph">Xandr</span>
  to bid on the auction. If the campaign wins the auction, then all used
  segments will be charged to the buyer. The segment(s) used for each
  auction is determined by <span class="ph">Xandr</span>.
- Bundled Price - The price for a group of segments determined by the
  data provider via their chosen pricing methodology.
- Exclusion Targeted Segment - A segment that is negatively targeted by
  the buyer. The buyer is choosing not to bid on auctions where one or
  more parameters of the ad request fall into an exclusion targeted
  segment.

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="data-marketplace-data-partner-overview.html" class="link">Data
Marketplace - Data Partner Overview</a>

</div>

</div>

</div>
