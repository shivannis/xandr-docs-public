---
Title : Yield Management Profile Service
Description : The Yield Management Profile Service is used to create and update yield
ms.date: 10/28/2023
ms.custom: digital-platform-api
management profiles which define dynamic
<a href="yield-management-floor-service.md" class="xref">price
---


# Yield Management Profile Service



The Yield Management Profile Service is used to create and update yield
management profiles which define dynamic
<a href="yield-management-floor-service.md" class="xref">price
floors</a>,
<a href="yield-management-bias-service.md" class="xref">bid biases</a>,
and <a href="yield-management-auction-tier-service.md"
class="xref">auction tiers</a> for a publisher.

More concretely, the Yield Management Profile is a set of rules with the
following properties and behaviors:

- The profile *targets*:
  - Some/all inventory
  - Some/all buyers

<!-- -->

- The profile *specifies*:
  - 0 or more floor rules
  - 0 or more bias rules
  - 0 or more modifiers that will apply to those floors and biases
  - 0 or more auction tiers



## REST API

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-profile-service__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="yield-management-profile-service__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="yield-management-profile-service__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__2"><a
href="https://api.appnexus.com/ym-profile?id=YMP_ID" class="xref"
target="_blank">https://api.appnexus.com/ym-profile?id=YMP_ID</a>
<p><a href="https://api.appnexus.com/ym-profile?id=YMP_CODE"
class="xref"
target="_blank">https://api.appnexus.com/ym-profile?id=YMP_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__3">View a specific
profile.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__2"><a
href="https://api.appnexus.com/ym-profile?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/ym-profile?publisher_id=PUBLISHER_ID</a>
<p><a
href="https://api.appnexus.com/ym-profile?publisher_code=PUBLISHER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/ym-profile?publisher_code=PUBLISHER_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__3">View all profiles
associated with a particular publisher.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__2"><a
href="https://api.appnexus.com/ym-profile?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/ym-profile?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__3">View multiple
profiles by ID using a comma-separated list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__2"><a
href="https://api.appnexus.com/ym-profile" class="xref"
target="_blank">https://api.appnexus.com/ym-profile</a>
<p>(ym-profile JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__3">Add a profile.

<b>Note:</b> After adding a profile, you can
use the <a
href="publisher-service.md"
class="xref" target="_blank">Publisher Service</a> to assign the profile
to a particular publisher.
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__2"><a
href="https://api.appnexus.com/ym-profile?id=YMP_ID" class="xref"
target="_blank">https://api.appnexus.com/ym-profile?id=YMP_ID</a>
<p><a href="https://api.appnexus.com/ym-profile?id=YMP_CODE"
class="xref"
target="_blank">https://api.appnexus.com/ym-profile?id=YMP_CODE</a></p>
<p>(ym profile JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__3">Modify an existing
profile.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__2"><a
href="https://api.appnexus.com/ym-profile?id=YMP_ID" class="xref"
target="_blank">https://api.appnexus.com/ym-profile?id=YMP_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-profile-service__entry__3">Delete an existing
profile.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-profile-service__entry__22"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="yield-management-profile-service__entry__23"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="yield-management-profile-service__entry__24"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__22"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__23">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__24">The unique
identifier for a yield management profile.
<p><strong>Default</strong>: Auto-incremented Number (i.e. 123)</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__22"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__23">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__24">An optional custom
code used to reference a yield management profile.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__22"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__23">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__24">A name used to
describe a yield management profile.
<p><strong>Default</strong>: <code class="ph codeph">None</code></p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__22"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__23">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__24"><p>An optional
description of the yield management profile.</p>
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__22"><code
class="ph codeph">base_ym_bias_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__23">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__24"><p>The id of the
YM bias that should be applied if no other YM biases should be used.
Typically, this YM bias has a priority 1 (lowest priority) and no
profile.</p>
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__22"><code
class="ph codeph">base_ym_floor_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__23">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__24"><p>The id of the
YM floor that should be applied if no other YM floors should be used.
Typically, this YM floor has a priority 1 (lowest priority) and no
profile.</p>
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__22"><code
class="ph codeph">publisher_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__23">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__24"><strong>Read-only.</strong>
The ID of the publisher to which the yield management profile is
associated. You use the <a
href="publisher-service.md"
class="xref" target="_blank">Publisher Service</a> to make the
association between the yield management profile and the publisher.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__22"><code
class="ph codeph">modifiers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__23">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__24">The modifiers
applied to the technical attribute of the creative. See <a
href="yield-management-profile-service.md#yield-management-profile-service__modifiers"
class="xref">Modifiers</a> below for more details.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__22"><code
class="ph codeph">biases</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__23">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__24">The biases applied
to demand side objects: Buyer Groups, Buyer Members. See <a
href="yield-management-profile-service.md#yield-management-profile-service__biases"
class="xref">Biases</a> below for more details.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__22"><code
class="ph codeph">floors</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__23">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__24">The floor prices
applied based on inventory and user targeting. See <a
href="yield-management-profile-service.md#yield-management-profile-service__floors"
class="xref">Floors</a> below for more details.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__22"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__23">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__24">Time of last
modification to this yield management profile.
<p><strong>Default</strong>: N/A</p></td>
</tr>
</tbody>
</table>

**Modifiers**



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-profile-service__entry__58"
class="entry colsep-1 rowsep-1">Field</th>
<th id="yield-management-profile-service__entry__59"
class="entry colsep-1 rowsep-1">Type</th>
<th id="yield-management-profile-service__entry__60"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__58"><code
class="ph codeph">technical_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__59">array</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__60">This is an array
specifying the technical attributes that the yield management modifier
should be applied to.
<p><strong>Default</strong>: <code class="ph codeph">NULL</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
</tbody>
</table>



**Modifiers - Technical Attributes**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-profile-service__entry__64"
class="entry colsep-1 rowsep-1">Field</th>
<th id="yield-management-profile-service__entry__65"
class="entry colsep-1 rowsep-1">Type</th>
<th id="yield-management-profile-service__entry__66"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__64"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__65">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__66">This is the id of
the technical attribute (as found in the <a
href="technical-attribute-service.md"
class="xref" target="_blank">Technical Attribute Service</a>) for which
the modifier should be applied.
<p><strong>Default</strong>: <code class="ph codeph">None</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__64"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__65">name</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__66">This is the name
of the technical attribute.
<p><strong>Default</strong>: N/A</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__64"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__65"><p>enum('bias-pct',</p>
<p>'bias-cpm',</p>
<p>'floor-pct',</p>
<p>'floor-cpm')</p></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__66">This determines
which value to use for the modifier, represented as a percentage or a
flat CPM, and what the modifier should be applied to -- the bid or the
floor.
<p><strong>Default</strong>: <code class="ph codeph">NULL</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__64"><code
class="ph codeph">amount_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__65">double</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__66">This is the %
amount the bid or floor should be modified by. If bias_pct = 5, then the
net bid will be increased 5%.
<p><strong>Default</strong>: <code class="ph codeph">0.00</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code> (if <code
class="ph codeph">type</code> is 'bias-pct' or 'floor-pct')</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__64"><code
class="ph codeph">amount_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__65">double</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__66">This is the CPM
increase/decrease that the bid or floor should be modified by.
<p><strong>Default</strong>: <code class="ph codeph">NULL</code></p>
<p><strong>Required On:</strong> <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code> (if <code
class="ph codeph">type</code> is 'bias-cpm' or 'floor-cpm')</p></td>
</tr>
</tbody>
</table>

**Biases**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-profile-service__entry__82"
class="entry colsep-1 rowsep-1">Field</th>
<th id="yield-management-profile-service__entry__83"
class="entry colsep-1 rowsep-1">Type</th>
<th id="yield-management-profile-service__entry__84"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__82"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__83">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__84">The unique
identifier for a yield management bias.
<p><strong>Default</strong>: Auto-incremented Number (i.e. 123)</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__82"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__83">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__84">A optional custom
code used to reference a yield management bias.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__82"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__83">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__84">A name used to
describe a yield management bias.
<p><strong>Default</strong>: <code class="ph codeph">None</code></p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__82"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__83">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__84">An optional
description how the yield management bias is being used.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__82"><code
class="ph codeph">profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__83">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__84">An optional <code
class="ph codeph">profile_id</code> is used to determine when to apply a
bias. A profile is a generic set of rules for targeting inventory, and
certain biases may only apply to certain slices of inventory. (See the
<a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for details.)
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__82"><code
class="ph codeph">priority</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__83">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__84">The priority field
(optional) is used to create a hierarchy of how the bias should to be
applied. Value may be between <code class="ph codeph">1</code>-<code
class="ph codeph">10</code> where priority <code
class="ph codeph">10</code> is treated as the highest priority value.
<p><strong>Default</strong>: <code class="ph codeph">5</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__82"><code
class="ph codeph">members</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__83">array</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__84">This is an array
specifying the member(s) the yield management bias should be applied to.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__82"><code
class="ph codeph">buyer_groups</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__83">array</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__84">This is an array
specifying the buyer group(s) the yield management bias should be
applied to.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
</tbody>
</table>

**Biases - Buyer Members**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-profile-service__entry__109"
class="entry colsep-1 rowsep-1">Field</th>
<th id="yield-management-profile-service__entry__110"
class="entry colsep-1 rowsep-1">Type</th>
<th id="yield-management-profile-service__entry__111"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__109"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__110">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__111">This is the id of
the buyer member (as found in the Platform Member Service) for which the
bias should be applied.
<p><strong>Default</strong>: <code class="ph codeph">None</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__109"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__110">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__111">This is the name
of the buyer member.
<p><strong>Default</strong>: N/A</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__109"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__110">enum('percent','cpm')</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__111">This determines
which value to use for the bias, represented as a percentage or a flat
CPM.
<p><strong>Default</strong>: <code
class="ph codeph">"percent"</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__109"><code
class="ph codeph">bias_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__110">double</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__111">This is the %
amount the buyer member should be adjusted by. If bias_pct = 5, then the
net bid will be increased 5%.
<p><strong>Default</strong>: <code class="ph codeph">0.00</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code> (if ?<code
class="ph codeph">type</code> is 'percent')</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__109"><code
class="ph codeph">bias_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__110">double</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__111">This is the CPM
increase/decrease the buyer member should be adjusted by.
<p><strong>Default</strong>: <code class="ph codeph">NULL</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code> (if ?<code
class="ph codeph">type</code> is 'cpm')</p></td>
</tr>
</tbody>
</table>

**Biases - Buyer Groups**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-profile-service__entry__127"
class="entry colsep-1 rowsep-1">Field</th>
<th id="yield-management-profile-service__entry__128"
class="entry colsep-1 rowsep-1">Type</th>
<th id="yield-management-profile-service__entry__129"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__127"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__128">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__129">This is the id of
the buyer group for which the bias should be applied.
<p><strong>Default</strong>: <code class="ph codeph">None</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__127"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__128">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__129">This is the name
of the buyer group.
<p><strong>Default</strong>: N/A</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__127"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__128">enum('percent','cpm')</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__129">This determines
which value to use for the bias, represented as a percentage or a flat
CPM.
<p><strong>Default</strong>: <code
class="ph codeph">"percent"</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__127"><code
class="ph codeph">bias_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__128">double</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__129">This is the %
amount the buyer member should be adjusted by. If bias_pct = 5, then the
net bid will be increased 5%.
<p><strong>Default</strong>: <code class="ph codeph">0.00</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code> (if <code
class="ph codeph">type</code> is 'percent')</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__127"><code
class="ph codeph">bias_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__128">double</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__129">This is the CPM
increase/decrease the buyer member should be adjusted by.
<p><strong>Default</strong>: <code class="ph codeph">NULL</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code> (if <code
class="ph codeph">type</code> is 'cpm')</p></td>
</tr>
</tbody>
</table>

**Floors**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-profile-service__entry__145"
class="entry colsep-1 rowsep-1">Field</th>
<th id="yield-management-profile-service__entry__146"
class="entry colsep-1 rowsep-1">Type</th>
<th id="yield-management-profile-service__entry__147"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__145"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__146">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__147">The unique
identifier for a yield management floor.
<p><strong>Default</strong>: Auto-incremented Number (i.e. 123)</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__145"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__146">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__147">A optional custom
code used to reference a yield management floor.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__145"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__146">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__147">A name used to
describe a yield management floor.
<p><strong>Default</strong>: <code class="ph codeph">None</code></p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__145"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__146">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__147">An optional
description how the yield management floor is being used.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__145"><code
class="ph codeph">profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__146">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__147">An optional <code
class="ph codeph">profile_id</code> is used to determine when to apply a
floor. A profile is a generic set of rules for targeting inventory, and
certain floors may only apply to certain slices of inventory. (See the
<a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for details.)
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__145"><code
class="ph codeph">priority</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__146">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__147">The priority
field (optional) is used to create a hierarchy of how the floor should
to be applied. Value may be between <code
class="ph codeph">1</code>-<code class="ph codeph">10</code> where
priority <code class="ph codeph">10</code> is treated as the highest
priority value.
<p><strong>Default</strong>: <code class="ph codeph">5</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__145"><code
class="ph codeph">hard_floor</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__146">double</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__147">This cpm floor is
used as the hard reserve price to be applied.
<p><strong>Default</strong>: <code class="ph codeph">None</code></p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__145"><code
class="ph codeph">soft_floor</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__146">double</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__147">This cpm floor is
used as the soft reserve, defined as the lowest price at which price
reduction will occur - This must be &gt;= the hard floor if set.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__145"><code
class="ph codeph">members</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__146">array</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__147">This is an array
specifying the member(s) the yield management floor should be applied
to.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__145"><code
class="ph codeph">brands</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__146">array</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__147">This is an array
specifying the brand(s) the yield management floor should be applied to.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__145"><code
class="ph codeph">categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__146">array</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__147">This is an array
specifying the category(ies) the yield management floor should be
applied to.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__145"><code
class="ph codeph">default_calculation_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__146">enum('gross','net')</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__147">This is used to
determine if the floor should be applied to the gross or net bid.
<p><strong>Default</strong>: <code
class="ph codeph">gross</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__145"><code
class="ph codeph">apply_floor_to_direct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__146">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__147">This is used to
determine if the floor should be applied only to specified members or in
addition to managed demand.
<p><strong>Default</strong>: <code class="ph codeph">1</code></p></td>
</tr>
</tbody>
</table>

**Floors - Members**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-profile-service__entry__187"
class="entry colsep-1 rowsep-1">Field</th>
<th id="yield-management-profile-service__entry__188"
class="entry colsep-1 rowsep-1">Type</th>
<th id="yield-management-profile-service__entry__189"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__187"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__188">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__189">This is the id of
the buyer member (as found in the Platform Member Service) for which the
floor should be applied.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__187"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__188">array</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__189">This is the name
of the buyer member.</td>
</tr>
</tbody>
</table>

**Floors - Brands**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-profile-service__entry__196"
class="entry colsep-1 rowsep-1">Field</th>
<th id="yield-management-profile-service__entry__197"
class="entry colsep-1 rowsep-1">Type</th>
<th id="yield-management-profile-service__entry__198"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__196"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__197">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__198">This is the id of
the brand of the creative (as found in the Brand Service) for which the
floor should be applied.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__196"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__197">array</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__198">This is the name
of the brand.</td>
</tr>
</tbody>
</table>

**Floor - Categories**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-profile-service__entry__205"
class="entry colsep-1 rowsep-1">Field</th>
<th id="yield-management-profile-service__entry__206"
class="entry colsep-1 rowsep-1">Type</th>
<th id="yield-management-profile-service__entry__207"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__205"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__206">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__207">This is the id of
the category of the creative of the creative (as found in the Category
Service) for which the floor should be applied.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__205"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__206">array</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-profile-service__entry__207">This is the name
of the category.</td>
</tr>
</tbody>
</table>





## Examples

**View a specific yield management profile**



``` pre
$ curl -b cookies -c cookies  "https://api.appnexus.com/ym-profile?id=8"
{
    "ym-profile": {
        "id": 1234,
        "member_id": 3,
        "active": true,
        "name": "Publisher X YMP",
        "description": "This profile will be used for publisher X.",
        "base_ym_bias_id": 125,
        "base_ym_floor_id": 1574,
        "last_modified": "2010-10-02 12:00:00",
        "modifiers": {
            "technical_attributes": [
                {
                    "id": 2,
                    "type": "bias-cpm",
                    "amount_pct": 0,
                    "amount_cpm": -1,
                    "name": "Flash"
                },
                {
                    "id": 3,
                    "type": "bias-pct",
                    "amount_pct": 10,
                    "amount_cpm": null,
                    "name": "Text"
                }
            ]
        },
        "biases": [
            {
                "id": 124,
                "name": "YMP Canada Bias",
                "description": "This rule will used to set the bias for a set of demand attributes across Canadian inventory.",
                "profile_id": 1241,
                "priority": 10,
                "members": [
                    {
                        "id": 100,
                        "name": "eBay",
                        "type": "percent",
                        "bias_pct": "9"
                    },
                    {
                        "id": 256,
                        "name": "MiG",
                        "type": "cpm",
                        "bias_cpm": -0.25
                    }
                ],
                "buyer_groups": [
                    {
                        "id": 120,
                        "name": "Third Party Ad Networks",
                        "type": "percent",
                        "bias_pct": -5
                    },
                    {
                        "id": 153,
                        "name": "Value Ad Networks",
                        "type": "cpm",
                        "bias_cpm": 0.50
                    }
                ]
            },
            {
                "id": 125,
                "name": "Base YMP Bias",
                "description": "",
                "profile_id": null,
                "priority": 1,
                "members": null,
                "buyer_groups": null
            }
        ],
        "floors": [
            {
                "id": 1234,
                "name": "Germany Floor",
                "description": "This rule will used to set the floor for a set of demand attributes across Germany inventory.",
                "hard_floor": "1.20",
                "soft_floor": null,
                "default_calculation_type": "gross",
                "apply_floor_to_direct": true,
                "profile_id": 1542,
                "priority": 6,
                "members": [
                    {
                        "id": 100,
                        "name": "eBay"
                    },
                    {
                        "id": 256,
                        "name": "MiG"
                    }
                ],
                "brands": [
                    {
                        "id": 102,
                        "name": "Netflix"
                    },
                    {
                        "id": 256,
                        "name": "Blockbuster"
                    }
                ],
                "categories": [
                    {
                        "id": 2,
                        "name": "Apparel"
                    },
                    {
                        "id": 8,
                        "name": "Dating"
                    }
                ]
            },
            {
                "id": 1574,
                "name": "Base YM Floor",
                "description": "",
                "hard_floor": 1.00,
                "soft_floor": 1.50,
                "default_calculation_type": "gross",
                "apply_floor_to_direct": true,
                "profile_id": null,
                "priority": 1,
                "members": null,
                "brands": null,
                "categories": null
            }
        ]
    }
}
```








