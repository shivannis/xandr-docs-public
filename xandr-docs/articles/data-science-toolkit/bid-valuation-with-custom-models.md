---
Title : Bid Valuation with Custom Models
Description : This document provides an explanation of how setting different Goals and
Revenue Types on your Line Item will affect your final Bid Valuation
(BV). You should have a general understanding of how <a
---


# Bid Valuation with Custom Models



This document provides an explanation of how setting different Goals and
Revenue Types on your Line Item will affect your final Bid Valuation
(BV). You should have a general understanding of how <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-models.html"
class="xref" target="_blank">Custom Models</a> work.



## Overview

Custom Models are designed to allow data scientists, through the
Xandr API, to break out specific portions of
their Bid Valuation model by associating multiple Bonsai decision trees
and/or Logistic Regression Models with their Augmented Line Items or
campaigns as a custom buying strategy.

By associating specific types of models to the Expected Value
calculation for an impression, it is possible to override portions of
Xandr optimization and only allow our system to
handle aspects of valuation that your own models do not cover. 

This page provides an explanation of how setting different Goals and
Revenue types on your ALI will affect your Bid Valuation.  





## Bid Valuation Equation

The final Bid Value is the product of the Expected Value (EV), Cadence
Modifier, Bid Modifier, and Adaptive Pacing. This equation can be
expressed as:

<img src="data-science-toolkit/images/116524598.png" class="image" />

With the exception of Adaptive Pacing users have the option to customize
each of the different components of the Bid Value: 

**Expected Value**

The Expected Value (EV)  of a variable is described as the sum of all
possible factors that can impact a Bid Value, each multiplied by the
probability of its occurrence.

`EV = ( Val(Event) * Pr(Event) )`

In the equation above Val(Event) represents the value of an event and
Pr(Event) represents the probability of the event occurring. 

In the case of media buying, EV is linked to a single event, such as a
viewed impression, a user click, or user conversion, where the event has
a specific value to the buyer, the Val(Event) variable. The Val(Event)
value could be fixed or accrue over time given certain factors, such as
customer lifetime value. 

With the <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/optimization-guide-ali.html"
class="xref" target="_blank">optimization model</a> (login required),
clients are asked to predict the EV of an impression entirely or modify
the Xandr optimized bid value. However, in most
cases, clients may only wish to provide a portion of the EV calculation
based on the data that they are able to model, rather than replace the
entire calculation given the limited data that they may have. Custom
models solve this issue, enabling clients to override specific
components of the optimization equation.

EV can be the value of one model type or the product of multiple model
types. The calculation for EV is dependent on the Goal Type set on your
Line Item. For example, if your Augmented Line Item had a Goal Type of
CPC, then your EV could be comprised of an ev_click custom model or a
click_imp custom model or both. 

**Example Valuation Model**

If we expand the EV equation above, assuming that we have set a CPC Goal
Type on the Line Item the equation would appear as:

`EV = Pr(Click | Impression) * R`



where,

- Pr(Click | Impression) = Probability of Click, given an impression

- R = Expected return if user has clicked



**Expected Valuation Model with Offline Factors**

The probability of a client-specific offline event, given an online
event (`Pr(offline event | online event)`), is not a model that
Xandr could ever construct. Since these types of
models would involve non-fixed values of R, a number of Conditional
Component Model Types can be associated with an Augmented Line Item or
campaign.  A \``custom_models`\` array field can be used to influence
the calculation of an EV for a given impression. In the case where a
specific model is not associated in the `custom_models` group setting, a
default or Xandr derived value will be used in
the calculation.

**Cadence Modifier**

The Cadence Modifier adjusts the amount of a bid based on frequency (the
number of times the user has seen the creative) and recency (the amount
of time that has passed since the user last saw the creative).

**Bid Modifier**

The amount by which a bid on an impression will be multiplied.

**Adaptive Pacing**

Adaptive pacing controls a line item's pacing and prevents overpaying.
Using the line item's daily budget (either generated
by Xandr automatically or manually entered by
the user), Xandr will calculate an ideal spend
curve so that advertiser dollars are distributed evenly throughout the
day. A dynamically calculated bid multiplier is applied to bids to
control the amount of spend. If a line item is hitting its target
delivery easily, the bid modifier will shade bids down, but only to the
extent that delivery does not suffer. If a line item is not meeting its
target delivery, adaptive pacing will shade bids less or not at all in
order to meet target spend.

**Component Model Types and Default Values**

Before explaining how the Expected Value is calculated for each Goal
Type, it will be important to note the different types of Component
Models available to associate with <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/ali-workflow-with-custom-models.html"
class="xref" target="_blank">Augmented Line Items</a>.  
  

These are the current model types that are supported. They can be
represented as either a Bonsai decision tree or a Logistic Regression
model.  
  

In the case that an eligible Component Model is not included for the
Expected Value calculation - as described in the sections below - a
default value will be provided by Xandr. 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000033a__entry__1" class="entry colsep-1 rowsep-1"> ID</th>
<th id="ID-0000033a__entry__2" class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-0000033a__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-0000033a__entry__4" class="entry colsep-1 rowsep-1">Default
Value, if not associated with Line Item</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__1">1</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__2"><code
class="ph codeph">expected_value</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__3">current expected value model EV(imp)
<ul>
<li><em>$1 CPM represented as 1000</em></li>
</ul></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__4">The EV calculation changes based on the
Goal Type set on the Line Item.  The presence of the `expected_value`
model on a Line Item will effectively override that `<code
class="ph codeph">goal_type</code>` EV equation.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__1">2</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__2"><code
class="ph codeph">creative_selection</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__3">current creative selection model</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__4">Uniform random selection. For more
details see our documentation on <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/creative-selection-custom-model.html"
class="xref" target="_blank">Creative Selection Models</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__1">3</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__2"><code
class="ph codeph">ev_click</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__3">EV(click)
<ul>
<li><em>Cost per click</em></li>
<li><em>$1 CPC represented as 1000</em></li>
</ul></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__4">Goal CPC</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__1">4</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__2"><code
class="ph codeph">click_imp</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__3">CTR model that can be used for
thresholds and prediction p(click | imp)</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__4">built-in CTR prediction</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__1">5</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__2"><code
class="ph codeph">ev_conv</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__3">EV(conv) - Lifetime Value (LTV) or
basket size model ($ per conv)
<ul>
<li><em>Cost per conversion</em></li>
<li><em>$1 CPC represented as 1000</em></li>
</ul></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__4">Goal CPA</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__1">6</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__2"><code
class="ph codeph">conv_imp</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__3">p(conv | imp) - post-view conv rate
model</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__4">built-in conv prediction</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__1">7</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__2"><code
class="ph codeph">conv_click</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__3">p(conv | click)</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__4">built-in click-conv prediction</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__1">8</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__2"><code
class="ph codeph">bid_modifier</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__3">Allows an arbitrary modifier to be
applied</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__4">1</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__1">9</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__2"><code
class="ph codeph">nonvaluation</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__3">For custom macros, learn status, and
other non-valuation nodes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__4">N/A (does not impact valuation).
Currently used in standard feed LLD reporting, via `<code
class="ph codeph">leaf_name</code>`. For more information see our <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/nonvaluation-custom-model.html"
class="xref" target="_blank">Non-valuation Custom Model</a>
documentation.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__1">10</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__2"><code
class="ph codeph">cadence</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__3">For cadence models</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-0000033a__entry__4">Cadence model if cadence enabled, 1 if
disabled.<br />
The cadence multiplier is capped to 1 in learn.</td>
</tr>
</tbody>
</table>





## Goal Types and Expected Value

The table below outlines how `goal_type` set on the Line Item will
affect the Expected Value calculation, and component models considered
for that `goal_type.`

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000033a__entry__45" class="entry colsep-1 rowsep-1">Goal
Type</th>
<th id="ID-0000033a__entry__46" class="entry colsep-1 rowsep-1">Eligible
Models</th>
<th id="ID-0000033a__entry__47" class="entry colsep-1 rowsep-1">EV
Equations</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000033a__entry__45">CPC</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000033a__entry__46"><ul>
<li><code class="ph codeph">ev_click</code></li>
<li><code class="ph codeph">click_imp</code></li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000033a__entry__47"><code
class="ph codeph">expected_value == ev_click * click_imp</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000033a__entry__45">CPA</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000033a__entry__46"><ul>
<li><code class="ph codeph">ev_conv</code></li>
<li><code class="ph codeph">conv_imp</code></li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000033a__entry__47"><code
class="ph codeph">expected_value == ev_conv * conv_imp</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000033a__entry__45">Custom</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000033a__entry__46"><ul>
<li><code class="ph codeph">expected_value</code></li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000033a__entry__47"><code
class="ph codeph">expected_value</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000033a__entry__45">None</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000033a__entry__46">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000033a__entry__47"><code
class="ph codeph">expected_value</code> will be derived from a Maximum
Average CPM, specified as:
<ul>
<li><code class="ph codeph">UI</code>: "Pay a Flat Rate"</li>
<li><code class="ph codeph">API</code>: on the Line Item as `<code
class="ph codeph">line_item.valuation.max_avg_cpm</code>`</li>
</ul></td>
</tr>
</tbody>
</table>

**Models Valid on Any Goal Type**

Some models can be associated with every Line Item, regardless of Goal
Type:

**Cadence Models**

The `cadence` model is factored into the Expected Value equation for
each `goal_type`. 



Note: `Cadence` models are currently
set by default on Line Items, and are updated automatically by
Xandr, per advertiser. 



**  
Bid Modifier Model**

The `bid_modifier` model is applied at the last stage of
the `expected_value` calculation, before all Revenue Type and serving
fee attributes are applied.

**Creative Selection Trees**

`These` trees allow for custom selection of creatives that are served
for a given impression. More information can be found on the <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/creative-selection-custom-model.html"
class="xref" target="_blank">Creative Selection Custom Model</a> Wiki
page.

**Expected Value**

`Expected Value` models will override the expected value calculation in
any Goal Type. The output of the model will then serve as the Expected
Value.

**Non-Valuation**

`Non-valuation` models do not impact the EV calculation, and are
described in further detail in the <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/nonvaluation-custom-model.html"
class="xref" target="_blank">Non-valuation Custom Model</a>
documentation.





## Revenue Type and Bid Calculation

When Expected Value has been calculated based on the `goal_type` and the
Custom Models set on your Line Item, the final Bid Value is affected by
the Revenue Type set on your Line Item. Please see the table below to
see how Revenue Type affects the final bid value:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000033a__entry__60"
class="entry align-center colsep-1 rowsep-1">Revenue Type</th>
<th id="ID-0000033a__entry__61"
class="entry align-center colsep-1 rowsep-1">How the Bidder Calculates
the Final Bid</th>
<th id="ID-0000033a__entry__62"
class="entry align-center colsep-1 rowsep-1">Don't Bid If...</th>
<th id="ID-0000033a__entry__63"
class="entry align-center colsep-1 rowsep-1">Eligible Goal Types</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__60">Impressions (CPM)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__61"><ol>
<li>If using minimum margin, subtract margin and fees from CPM Revenue
Value set on the Line Item</li>
<li>Shade with Adaptive Pacing</li>
<li>Bid </li>
</ol></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__62">EV is less than the CPM Revenue Value
set on the line item, or the bid value is 0</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__63">all</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__60">Cost Plus Margin</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__61"><ol>
<li>Subtract margin and fees from EV</li>
<li>Shade with Adaptive Pacing</li>
<li>Bid</li>
</ol></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__62">Bid value is 0</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__63">all</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__60">Cost Plus Margin, paying per view</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__61"><ol>
<li>Divide EV by the probability that the ad is viewable</li>
<li>Subtract margin and fees</li>
<li>Apply the eCPM conversion rate provided by the <span
class="ph">Xandr imp bus (includes viewability prediction and
risk premium for the chosen viewable currency)</li>
<li>Shade with Adaptive Pacing</li>
<li>Bid</li>
</ol></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__62">Bid value is 0</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__63">Custom, None</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__60">dCPM</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__61"><ol>
<li>Shade EV with Adaptive Pacing</li>
<li>Bound this paced EV between the min and max average CPMs</li>
<li>If using minimum margins, subtract margin and fees</li>
<li>Bid</li>
</ol></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__62">Bid value is 0</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__63">all</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__60">CPC</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__61"><ol>
<li>Find CPM revenue value by multiplying the CPC Revenue Value set on
the Line Item by the probability of a click by 1000</li>
<li>If using minimum margins, subtract margin and fees</li>
<li>Shade with Adaptive Pacing</li>
<li>Bid</li>
</ol></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__62">EV multiplied by the probability of a
click is less than the derived CPM revenue value; or, bid value is
0</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__63">Xandr CPC (with
or without overrides) or Custom</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__60">vCPM
<p>(paying per impression)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__61"><ol>
<li>Find CPM revenue value by multiplying the CPVM value set on the Line
Item by viewthrough percentage</li>
<li>If using minimum margins, subtract margin and fees</li>
<li>Shade bid with Adaptive Pacing</li>
<li>Bid</li>
</ol></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__62">EV multiplied by view probability is
less than CPM revenue value; or, bid value is 0</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__63">Xandr CPVM
(without overrides) or Custom</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__60">vCPM
<p>(paying per view)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__61"><ol>
<li>Find CPM revenue value by multiplying the CPVM value set on the Line
Item by viewthrough percentage<br />
</li>
<li>If using minimum margins, subtract margin and fees<br />
</li>
<li>Apply the eCPM conversion rate provided by the <span
class="ph">AppNexus ImpBus (includes viewability prediction and
risk premium for the chosen viewable currency).<br />
</li>
<li>Shade bid with Adaptive Pacing<br />
</li>
<li>Bid</li>
</ol></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__62">EV is less than CPM revenue value
multiplied by view probability</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-0000033a__entry__63">Xandr CPVM
(without overrides) or Custom</td>
</tr>
</tbody>
</table>



Note: Adaptive pacing controls a line
item's pacing and prevents overpaying. Using the line item's daily
budget (either generated by Xandr automatically
or manually entered by the user), Xandr will
calculate an ideal spend curve so that advertiser dollars are
distributed evenly throughout the day.







## Related Items

- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-models.html"
  class="xref" target="_blank">Custom Models</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-model-api-reference.html"
  class="xref" target="_blank">Custom Models API Reference</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/the-bonsai-language.html"
  class="xref" target="_blank">Bonsai Trees</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/logistic-regression-models.html"
  class="xref" target="_blank">Logistic Regression Models</a>





<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="custom-models.html" class="link">Custom Models</a>






