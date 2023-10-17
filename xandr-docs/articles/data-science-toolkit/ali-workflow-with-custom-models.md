---
Title : ALI Workflow with Custom Models
Description : Working with <a href="custom-models.md"
ms.custom : data-science

---


# ALI Workflow with Custom Models



Working with <a
href="data-science-toolkit/custom-models.md"
class="xref" target="_blank">Custom Models</a> such as <a
href="the-bonsai-language.md"
class="xref" target="_blank">Bonsai trees</a> or Logistic Regression
models and Augmented Line Items (ALI) is fairly similar to the process
of working with traditional campaigns. This guide provides instructions
for creating and associating custom models to an ALI. In the example
below, we will create a Bonsai expected value <a
href="create-a-bonsai-decision-tree-custom-model.md"
class="xref" target="_blank">decision tree object</a> and use it as a
bidding strategy for an ALI.



## Tree Creation and Validation

The syntax for Bonsai trees and the features currently available for
campaigns is the same for trees that work with ALI. Use the Custom Model
service for creating your custom model. The Custom Model Parser service
can be utilized to validate the Bonsai decision tree. Documentation for
these services can be found here:



- <a href="custom-model-service.md" class="xref">Custom Model
  Service</a>
- <a href="custom-model-parser-service.md" class="xref">Custom Model
  Parser Service</a>



**Example**

For the purposes of this example, we will create a simple tree (a
literal \``0`\` character) under a test advertiser:

**Custom Model**

**custom_model.json**

``` pre
{
  "custom_model": {
    "name": "Test Custom Model",
    "code": "mcg-test-custom-model",
    "advertiser_id": 354236,
    "custom_model_structure": "decision_tree",
    "model_output": "bid",
    "model_text": "MAo="
  }
}
```

**POST / Creation of Tree Model**

**POST model (response abbreviated)**

``` pre
$ curl -b dcc -c dcc -X POST -s -d '@json/custom-model.json' "https://api-test.appnexus.com/custom-model?advertiser_id=354236"  | jq '.'
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": "379792",
    "start_element": 0,
    "num_elements": 100,
    "custom_model": {
      "id": 379792,
      "name": "Test Custom Model",
      "code": "mcg-test-custom-model",
      "member_id": 958,
      "advertiser_id": 354236,
      "custom_model_structure": "decision_tree",
      "model_output": "bid",
      "compiled_text": null,
      "model_text": "MAo=",
      "original_text": "0
",
      "active": true,
      "last_modified": "2016-08-30 20:55:38"
    },
    "dbg_info": {...}
  }
}
```





## Creating an ALI through the API

Custom models are designed to enable Xandr API
users to add decision-making logic to the valuation models,
non-valuation models, and creative delivery of their Augmented Line
Items or campaigns. Please <a
href="xandr-api/line-item-service---ali.md"
class="xref" target="_blank">review the documentation</a> for
instructions on creating an ALI. 





## Associating a Custom Model with an ALI

On augmented line items, there is an array field titled,
\``custom_models`\` which lists custom models associated with a Line
Item. Instructions for associating a custom model with an ALI can be
found in the <a
href="line-item-model-service.md"
class="xref" target="_blank">Line Item Model Service documentation</a>.

**Targeting IP Addresses**

Customers in countries that conform to GDPR regulations should be aware
that when targeting IP addresses or IP ranges, either in your line item,
Bonsai tree, or logistic regression model, there is a possibility the
address may be truncated. Please see our <a
href="https://wiki.xandr.com/display/servicepolicies/Privacy+and+the+Xandr+Platform#PrivacyandtheXandrPlatform-IPTruncation"
class="xref" target="_blank">privacy policy documentation</a> (login
required) for details on this process.

**Multiple Custom Models**

You will be able to associate multiple custom models of different types
to the augmented line item. These include a number of Custom Model types
that can be used to override portions of the impression's expected value
calculation. An example below demonstrates how the process of
associating multiple Custom Models to a Line Item may work:

**Custom Model**

**update_models.json**

``` pre
// Update / Set a single model
{
  "line_item_model": {
      "custom_model_id": 123,
      "type": "click_imp"
    }
}
 
// Set / Update multiple models
{
  "line_item_models": [
    {
      "custom_model_id": 123,
      "type": "click_imp"
    },
    {
      "custom_model_id": 456,
      "type": "ev_click"
    }
  ]
}
```

**Custom Model Types**

The following model types can be associated as custom models to your
Line Item:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000240__entry__1" class="entry colsep-1 rowsep-1">Model
Name</th>
<th id="ID-00000240__entry__2" class="entry colsep-1 rowsep-1">Model
Output</th>
<th id="ID-00000240__entry__3" class="entry colsep-1 rowsep-1">Output
Type / Range</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code
class="ph codeph">expected_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__2">Overrides the <span
class="ph">Xandr Optimized expected value of the impression.
<ul>
<li><em>value in CPM</em></li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__3">Float</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code
class="ph codeph">creative_selection</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__2">Dynamic selection of creatives
associated to this line item.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__3">Creatives, for more information, see <a
href="creative-selection-custom-model.md"
class="xref" target="_blank">Creative Selection Custom Model</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code
class="ph codeph">ev_click</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__2">Expected value of a click for this
impression.
<ul>
<li><em>value in CPM<br />
</em></li>
<li><em>$1 CPC represented as 1000</em></li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__3">Float</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code
class="ph codeph">click_imp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__2">Probability of a click for this
impression</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__3">Float - (0,1)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code
class="ph codeph">ev_conv</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__2">Expected value of a conversion for this
impression.
<ul>
<li><em>value in CPM</em></li>
<li><em>$1 CPC represented as 1000</em></li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__3">Float</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code
class="ph codeph">conv_imp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__2">Probability of a conversion for this
impression.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__3">Float - (0,1)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code
class="ph codeph">conv_click</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__2">Probability of a conversion, given a
click.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__3">Float - (0,1)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code
class="ph codeph">bid_modifier</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__2">Amount by which this bid on this
impression will be multiplied.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__3">Float</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code
class="ph codeph">nonvaluation</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__2">Custom Macros, Learn Status, and other
nonvaluation nodes.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__3">Custom Model output does not affect bid,
though it will be used in reporting when the feature is implemented. For
more information, see <a
href="nonvaluation-custom-model.md"
class="xref" target="_blank">Non-Valuation Custom Model</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code
class="ph codeph">cadence</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__2">Cadence modifier for this
impression.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__3">Float</td>
</tr>
</tbody>
</table>



<b>Note:</b> A \``goal_type`\` of \``custom`\`
on your Line Item is only required in some scenarios, such as
associating an \``expected_value`\` model with your Line Item. Certain
optimization features, such as Ranked Discovery will be disabled when
using this `goal_type` with your Custom Models.

Read the <a
href="custom-models.md"
class="xref" target="_blank">Custom Models</a> page to learn how the bid
calculation is affected by Line Item goals and associated component
models.




<a href="custom-models.md" class="link">Custom Models</a>






