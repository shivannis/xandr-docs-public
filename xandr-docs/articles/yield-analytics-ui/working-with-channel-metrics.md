---
Title : Working with Channel Metrics
Description : The Channels tab provides high-level metrics for integrated Supply-Side
Platform (SSPs) along with adserver data. It is a useful tool to
---


# Working with Channel Metrics



The Channels tab provides high-level metrics for integrated Supply-Side
Platform (SSPs) along with adserver data. It is a useful tool to
contrast guaranteed verses pre-emptible volumes and pricing, in addition
to comparing multiple SSP's effectiveness.

Since the Channels tab is powered by the reporting tab, custom reports
can be built within yield analytics using data captured from the SSP. In
reports, information can be bucketed into four types of channels:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000034a1__entry__1" class="entry">Channel Type</th>
<th id="ID-000034a1__entry__2" class="entry">Definition</th>
<th id="ID-000034a1__entry__3" class="entry">Data Source</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__1">SSP (<span
class="ph">Xandr, AdX, etc.)</td>
<td class="entry" headers="ID-000034a1__entry__2">Any order line that is
associated with a given SSP will be included in that SSP's channel.</td>
<td class="entry" headers="ID-000034a1__entry__3">SSP</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000034a1__entry__1">Direct Sales</td>
<td class="entry" headers="ID-000034a1__entry__2">Any guaranteed,
non-SSP, in-network order line.</td>
<td class="entry" headers="ID-000034a1__entry__3">Ad Server</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__1">N/A</td>
<td class="entry" headers="ID-000034a1__entry__2">Any pre-emptible,
non-SSP, in-network or out-of-network order line.</td>
<td class="entry" headers="ID-000034a1__entry__3">Channel-specific
metrics not provided.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000034a1__entry__1">Non-Analyzed</td>
<td class="entry" headers="ID-000034a1__entry__2">Any guaranteed,
non-SSP, out-of-network order line.</td>
<td class="entry" headers="ID-000034a1__entry__3">Ad Server
<p>(Contracted values are distributed in a straight-line fashion. Values
are not affected by out-of-network data).</p></td>
</tr>
</tbody>
</table>



## Channel Metric Definitions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000034a1__entry__16" class="entry">Channel Metric</th>
<th id="ID-000034a1__entry__17" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__16">Channel Consumed
Impressions</td>
<td class="entry" headers="ID-000034a1__entry__17">The number of
impressions that were filled or consumed by the channel. In the case
of secondary channels, these are the impressions filled by the
channel.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000034a1__entry__16">Channel Received
Impressions</td>
<td class="entry" headers="ID-000034a1__entry__17">The number of
impressions that the channel received as recorded by the channel. In
the case of the Direct Sales channel, the Channel Received Impressions
will equal Capacity Impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__16">Channel Earned
Revenue</td>
<td class="entry" headers="ID-000034a1__entry__17">The total revenue
earned by the channel.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000034a1__entry__16">Channel eCPM</td>
<td class="entry" headers="ID-000034a1__entry__17"><ul>
<li>The computed eCPM for the channel.</li>
<li>Formula: Channel Earned Revenue / (Channel Consumed
Impressions/1000)</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__16">Channel rCPM</td>
<td class="entry" headers="ID-000034a1__entry__17"><ul>
<li>Channel "real" CPM. This is a measure of how well a channel is
monetizing the opportunity that it is presented with. It is useful for
comparing the value brought by various partners. rCPM uses the "Channel
Received Impressions" instead of Channel Consumed Impressions when
determining value.</li>
<li>Formula: Channel Earned Revenue / (Channel Received
Impressions/1000)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000034a1__entry__16">Channel Fill %</td>
<td class="entry" headers="ID-000034a1__entry__17"><ul>
<li>A measure of the utilization rate of the channel. In the case of the
Direct Sales Channel, the Channel Fill % will equal the Sell Through %
(This is calculated based on the consumed impressions associated to the
Direct channel).</li>
<li>Formula: Channel Consumed Impressions/Channel Received Impressions *
100</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__16">Channel
Advertiser</td>
<td class="entry" headers="ID-000034a1__entry__17"><ul>
<li>Guaranteed, Non-SSP Order Lines – Populates from the order line in
ad server</li>
<li>Preemptible, SSP Order Lines – Populates from SSP</li>
<li> Preemptible, Non-SSP Order Lines – Shows as “N/A”</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000034a1__entry__16">Channel Received
Impressions</td>
<td class="entry" headers="ID-000034a1__entry__17">Impressions that are
received by the SSP, as recorded by the SSP. In the case of the Direct
Sales Channel, the Channel Received Impressions will equal
Capacity Impressions. This is only available in product and targeting
reports.</td>
</tr>
</tbody>
</table>





## SSP Specific Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000034a1__entry__34" class="entry"><span
class="ph">Xandr Dimension</th>
<th id="ID-000034a1__entry__35" class="entry"> Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__34">Buyer Member (<span
class="ph">Xandr)</td>
<td class="entry" headers="ID-000034a1__entry__35">The <span
class="ph">Xandr Buyer Member</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000034a1__entry__34">Placement ID (<span
class="ph">Xandr)</td>
<td class="entry" headers="ID-000034a1__entry__35">The <span
class="ph">Xandr Placement</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__34">Publisher ID (<span
class="ph">Xandr)</td>
<td class="entry" headers="ID-000034a1__entry__35">The <span
class="ph">Xandr Publisher</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000034a1__entry__34">Site ID (<span
class="ph">Xandr)</td>
<td class="entry" headers="ID-000034a1__entry__35">The <span
class="ph">Xandr Site</td>
</tr>
</tbody>
</table>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000034a1__entry__44" class="entry">Google AdX Dimension</th>
<th id="ID-000034a1__entry__45" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__44">AdUnit ID (AdX)</td>
<td class="entry" headers="ID-000034a1__entry__45">The AdX Ad Unit</td>
</tr>
</tbody>
</table>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000034a1__entry__48" class="entry">PubMatic Dimension</th>
<th id="ID-000034a1__entry__49" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__48">Ad Tag ID
(PubMatic)</td>
<td class="entry" headers="ID-000034a1__entry__49">The ad tag ID from
PubMatic.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000034a1__entry__48">Demand Source
(PubMatic)</td>
<td class="entry" headers="ID-000034a1__entry__49">The demand partner
name field from PubMatic (Typically, this is always null).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__48">Demand Type
(PubMatic)</td>
<td class="entry" headers="ID-000034a1__entry__49">The demand type field
from PubMatic (This is not yet available in the PubMatic API, so it will
always be null at this point in time).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000034a1__entry__48">Network
(PubMatic)</td>
<td class="entry" headers="ID-000034a1__entry__49">The Network name
field from PubMatic.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__48">Site (PubMatic)</td>
<td class="entry" headers="ID-000034a1__entry__49">The site name field
from PubMatic.</td>
</tr>
</tbody>
</table>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000034a1__entry__60" class="entry">Rubicon Dimension</th>
<th id="ID-000034a1__entry__61" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__60">Site (Rubicon)</td>
<td class="entry" headers="ID-000034a1__entry__61">The site field from
Rubicon.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000034a1__entry__60">Zone (Rubicon)</td>
<td class="entry" headers="ID-000034a1__entry__61">The zone field from
Rubicon.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000034a1__entry__60">Size (Rubicon)</td>
<td class="entry" headers="ID-000034a1__entry__61">The size field from
Rubicon.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000034a1__entry__60">Tag ID (Rubicon)</td>
<td class="entry" headers="ID-000034a1__entry__61">The tag ID field from
Rubicon.</td>
</tr>
</tbody>
</table>





<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../topics/channel-management.html" class="link">Channel
Management</a>






