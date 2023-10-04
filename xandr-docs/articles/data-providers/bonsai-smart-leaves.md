---
Title : Bonsai Smart Leaves
Description : Note: This page assumes you are already
familiar with The <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/the-bonsai-language.html"
---


# Bonsai Smart Leaves





Note: This page assumes you are already
familiar with The <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/the-bonsai-language.html"
class="xref" target="_blank">Bonsai Language</a> and <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/bonsai-language-features.html"
class="xref" target="_blank">Bonsai Features</a>.



You use the <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/the-bonsai-language.html"
class="xref" target="_blank">Bonsai Language</a> to write decision tree
logic for custom predictive models. Each branch leads to a node, or
"leaf", that evaluates to a simple numeric value representing the bid.
Instead of evaluating  a single static value, smart leaves evaluate a
bid value that's dynamically modified based on a specified ad
performance or delivery metric. Smart leaves also allow you to name
individual leaves with an arbitrary string value. This is available in
the <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">standard feed</a> to aid debugging and
performance analysis.  



Note: Smart leaves are defined using a
form similar
to <a href="https://en.wikipedia.org/wiki/YAML" class="xref"
target="_blank">YAML</a>, a human-readable data serialization format.





## compute() Syntax

You can use smart leaves to specify a static value or a bid calculated
from an advertising metric or to specify that no bid be made at all. If
the value is calculated, it is determined by the `compute` expression,
which uses the following format:

``` pre
value: compute(input_field, multiplier, offset, min_value, max_value)
```

This is evaluated as the following equation:

``` pre
max(min_value, min(max_value, input_field * multiplier + offset))
```

That is, the calculated value is the input field times the multiplier,
plus an offset. If the result is less than the minimum value, the
minimum value is returned instead. If the result is greater than the
maximum value, the maximum value is returned. To omit a calculation
(multiplier, offset, minimum value, or maximum value), use an underscore
(\_) for the omitted value. If you omit to specify the multiplier value,
the default value is 1. 



Note: The bids calculated by the model
are always expressed in the currency set on the advertiser, even if you
have specified a different currency for the  or
campaign.







## Smart Leaf Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000026c6__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000026c6__entry__2" class="entry colsep-1 rowsep-1">Field
Type</th>
<th id="ID-000026c6__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-000026c6__entry__4"
class="entry colsep-1 rowsep-1">Default</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__2">text</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026c6__entry__3">The
bid value. If the tree model is bid price, the bid is expressed in the
currency set for this advertiser. If the tree model is bid modifier, the
bid is a float or an integer. Possible values are:
<ul>
<li><code
class="ph codeph">compute(input_field, multiplier, offset, min_value, max_value)</code></li>
<li><code class="ph codeph">no_bid</code></li>
<li>a static value (number)</li>
</ul>
<p>Specifying <code class="ph codeph">compute</code> calculates a value
based on one of the <a
href="bonsai-smart-leaves.html#ID-000026c6__input_fields_for_compute"
class="xref">Input Fields for compute()</a> below. To omit a calculation
(multiplier, offset, minimum value, or maximum value), use an underscore
(_) for the omitted value.<code class="ph codeph"> </code></p>

Warning: Do not use <code
class="ph codeph">compute()</code> expressions that evaluate to negative
numbers or to zero (0). These values are not supported and may provide
unexpected results.  It is best to specify <code
class="ph codeph">no_bid</code> explicitly.<br />
&#10;</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__4"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__1"><code
class="ph codeph">leaf_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__2">string(7)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026c6__entry__3">An
optional string value that will be passed through to logs and reporting
to aid with debugging and performance analysis. <code
class="ph codeph">leaf_name</code> may be up to seven ASCII (7-bit)
characters and is not required to be unique.

Note: Because <code
class="ph codeph">leaf_name</code> is a string, the value must be
enclosed by double quotation marks (").
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__4"></td>
</tr>
</tbody>
</table>



<div id="ID-000026c6__input_fields_for_compute" >

## Input Fields for compute()

The values for the input fields are determined by
Xandr
optimization.<a href="https://console.appnexus.com/docs/optimization-guide-ali"
class="xref" target="_blank">For more information, see the Optimization
Guide for the Augmented Line Item in 
documentation.</a> (Log in required)

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000026c6__input_fields_for_compute__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000026c6__input_fields_for_compute__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000026c6__input_fields_for_compute__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__1"><code
class="ph codeph">estimated_iab_viewthrough_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__2">float,
integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__3">How likely
this web display impression is to be measured as viewable by the IAB
standard, from <code class="ph codeph">0</code> to <code
class="ph codeph">1</code>.  </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__1"><code
class="ph codeph">predicted_iab_video_view_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__2">float,
integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__3">How likely
this video impression is to be measured as viewable by the IAB standard,
from <code class="ph codeph">0</code> to <code
class="ph codeph">1</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__1"><code
class="ph codeph">predicted_video_completion_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__2">float,
integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__3">How likely the
user is to watch this video impression fully, from <code
class="ph codeph">0</code> to <code class="ph codeph">1</code>.
Non-video inventory is <code class="ph codeph">0</code>.   <br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__1"><code
class="ph codeph">estimated_average_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__2">float,
integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__3">The median
price for this impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__1"><code
class="ph codeph">estimated_clearing_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__2">float,
integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__3">The 80th
percentile price for this impression.  </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__1"><code
class="ph codeph">uniform</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__2">float,
integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__input_fields_for_compute__entry__3">A uniform
random number between <code class="ph codeph">0</code> and <code
class="ph codeph">1</code> (<code class="ph codeph">0</code> included,
<code class="ph codeph">1</code> excluded).</td>
</tr>
</tbody>
</table>





## Using Segments as the Input for compute()

You can perform calculations using the value or age of the user in a
first-party or third-party segment to determine a bid value. If the user
is not present in the segment, no bid is made. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/segment-service.html"
class="xref" target="_blank">Segment Service</a> to retrieve segment
IDs.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000026c6__entry__34"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000026c6__entry__35"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000026c6__entry__36"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__34"><code
class="ph codeph">segment[ID].value</code><br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__35">float, integer</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026c6__entry__36">The
value of the user in a first-party or third-party segment. If the user
is not present in the segment, no bid will be made.<br />
&#10;<p><code class="ph codeph">ID</code> is the segment ID.<br />
</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__34"><code
class="ph codeph">segment[ID].age</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__35">float, integer</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026c6__entry__36">The
age of a user in a first-party or third-party segment. If the user is
not present in the segment, no bid will be made.
<p><code class="ph codeph">ID</code> is the segment ID.</p></td>
</tr>
</tbody>
</table>





## Using Frequency or Recency as Inputs for compute()

You can perform calculations using frequency or recency to determine a
bid value.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000026c6__entry__43"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000026c6__entry__44"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000026c6__entry__45"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__43"><code
class="ph codeph">OBJECT[ID].day_frequency</code><br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__44">float, integer</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026c6__entry__45">The
number of ads seen by a user on the current day. This can be determined
for an advertiser, line item, or campaign. If no frequency data is
found, the frequency is marked as zero (0).
<p><code class="ph codeph">OBJECT</code> is <code
class="ph codeph">advertiser</code>, <code
class="ph codeph">line_item</code>, or <code
class="ph codeph">campaign</code>, and <code class="ph codeph">ID</code>
is the object ID. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">Advertiser Service</a>, <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a>, or <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">Campaign Service</a> to retrieve
IDs.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__43"><code
class="ph codeph">OBJECT[ID].lifetime_frequency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__44">float, integer</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026c6__entry__45">The
number of ads seen by a user over the lifetime of an advertiser, line
item, campaign, or creative. If no frequency data is found, the
frequency is marked as zero (0).
<p><code class="ph codeph">OBJECT</code> is <code
class="ph codeph">advertiser</code>, <code
class="ph codeph">line_item</code>, or <code
class="ph codeph">campaign</code>, and <code class="ph codeph">ID</code>
is the object ID. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">Advertiser Service</a>, <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a>, or <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">Campaign Service</a>, to retrieve
IDs.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__43"><code
class="ph codeph">OBJECT[ID].recency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__44">float, integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026c6__entry__45">The number of minutes since the user
has seen an ad. This can be determined for all ads under an advertiser,
line item, or campaign, or for an individual creative. If no recency
data is found, no bid will be made.
<p><code class="ph codeph">OBJECT</code> is <code
class="ph codeph">advertiser</code>, <code
class="ph codeph">line_item</code>, <code
class="ph codeph">campaign</code>, or <code
class="ph codeph">creative</code>, and <code class="ph codeph">ID</code>
is the object ID. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">Advertiser Service</a>, <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a>, or <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">Campaign Service</a> to retrieve
IDs.</p></td>
</tr>
</tbody>
</table>





## Examples

Example bid price with estimated average price. One leaf has a minimum
allowable bid price but no limit on the maximum.



Note: Lines beginning with \# are
comments to help you understand the logic of this tree.

``` pre
# This tree determines a bid price as follows: 
# 1. If the user is in California, bid the estimated average price * 1.05, plus $0.03.
# 2. Otherwise, bid the estimated average price * .75, but don't bid less than $1.00. There is no maximum bound for bids.
 
if region = "US:CA":
        leaf_name: "eap001"
        value: compute(estimated_average_price, 1.05, 0.03, _, _)       
else:
        leaf_name: "eap002"
        value: compute(estimated_average_price, 0.75, 0.00, 1.00, _)
```



Example bid price tree with estimated clearing price, no bid, and static
value smart leaves.



Note: Lines beginning with \# are
comments to help you understand the logic of this tree.

``` pre
# This tree determines a bid price as follows: 
# 1. If the user is in California, bid the estimated clearing price * 1.05, plus $0.03.
# 2. If the user is in New York, bid the estimated clearing price * .75, but don't bid less than $0.10 or more than $1.00. 
# 3. If the user is in Delaware, do not bid.
# 4. Otherwise, bid $0.50.
if region = "US:CA":
        leaf_name: "ecp_ca"
        value: compute(estimated_clearing_price, 1.05, 0.03, _, _)      
elif region = "US:NY":
        leaf_name: "ecp_ny"
        value: compute(estimated_clearing_price, 0.75, _, 0.10, 1.00)
elif region = "US:DE":
        leaf_name: "no_de"
        value: no_bid
else:
        leaf_name: "default"
        value: 0.50
```



Example bid modifier tree with estimated IAB viewthrough rate smart
leaves. 



Note: Lines beginning with \# are
comments to help you understand the logic of this tree.

``` pre
# This tree determines a bid modifier as follows: 
# 1. If the user is in California, bid the value determined by Xandr optimization multipled by the estimated IAB viewthrough rate and 0.50, plus $0.03.
# 2. If the user is in New York, bid the value determined by Xandr optimization multiplied by the estimated IAB viewthrough rate and 0.75. 
# 3. If the user is in Delaware, bid the estimated clearing price, but don't bid less than $0.10 or more than $1.00.
# 4. Otherwise, bid $0.50.
if every region = "US:CA":
        leaf_name: "t00001"
        value: compute(estimated_iab_viewthrough_rate, 0.50, 0.03, _, _)        
elif region = "US:NY":
        leaf_name: "t00002"
        value: compute(estimated_iab_viewthrough_rate, 0.70, 0.00, _, _)
elif region = "US:DE":
        leaf_name: "t00003"
        value: compute(estimated_clearing_price, 1.00, _, 0.10, 1.00)
else:
        leaf_name: "default"
        value: 0.50
```



Example bid based on segment value



Note: Lines beginning with \# are
comments to help you understand the logic of this tree.

``` pre
#1. If the user is in California, bid the value of segment 111 times 2.0, plus 1.0.
#2. Otherwise, do not bid.
if region = "US:CA":
        leaf_name: "a00001"
        value: compute(segment[111].value, 2.0, 1.0, _, _)
else:
        value: no_bid
```



Example bid based on segment age



Note: Lines beginning with \# are
comments to help you understand the logic of this tree.

``` pre
#1. If the user is in California, bid the segment age times -.2, plus 8.0, as long as the bid is under 8.0.
#2. Otherwise, do not bid.
 
if region = "US:CA":
        leaf_name: "b00001"
        value: compute(segment[111].age, -0.2, 8.0, 0.0, 8.0)
else:
        value: no_bid
```



Example bid based on daily frequency



Note: Lines beginning with \# are
comments to help you understand the logic of this tree.

``` pre
#1. If the user is in California and in segment 111, bid the user's daily frequency for line item 222 times -.2, plus 5, with an upper bound of 4.
#2. Otherwise, do not bid.
 
if every region="US:CA", segment[111]:
        leaf_name: "d0001"
        value: compute(line_item[222].day_frequency, -0.2, 5.0, 0.0, 4.0)
else:
        leaf_name: "d0000"
        value: no_bid
```



Example bid based on lifetime frequency



Note: Lines beginning with \# are
comments to help you understand the logic of this tree.

``` pre
#1. If the user is in California and in segment 111, bid the lifetime frequency for creative 333 times -.2, plus 8, with an upper bound of 6.
#2. Otherwise, do not bid.
 
if every region="US:CA", segment[111]:
        leaf_name: "e0001"
        value: compute(creative[333].lifetime_frequency, -0.2, 8.0, 0.0, 6.0)
else:
        leaf_name: "e0000"
        value: no_bid
```



 Example bid based on recency



Note: Lines beginning with \# are
comments to help you understand the logic of this tree.

``` pre
#1. If the user is in California, bid the recency for creative 333 times -.2, plus 8, with an upper bound of 6.
#2. Otherwise, do not bid.
 
if region="US:CA":
        leaf_name: "f0001"
        value: compute(creative[333].recency, -0.2, 8.0, 0.0, 6.0)
else:
        leaf_name: "f0000"
        value: no_bid
```







## Related Topics





- <a href="custom-models.html" class="xref">Custom Models</a>
- <a href="the-bonsai-language.html" class="xref">The Bonsai Language</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/bonsai-language-features.html"
  class="xref" target="_blank">Bonsai Features</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-model-parser-service.html"
  class="xref" target="_blank">Custom Model Parser Service</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-model-service.html"
  class="xref" target="_blank">Custom Model Service</a>





<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="the-bonsai-language.html" class="link">The Bonsai Language</a>






