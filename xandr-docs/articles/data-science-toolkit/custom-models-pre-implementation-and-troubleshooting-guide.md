---
Title : Custom Models Pre-Implementation and Troubleshooting Guide
Description : This page describes best practices to prepare for custom model implementation as well as a guide to some common issues that can arise
from using custom models. 
ms.custom : data-science
---


# Custom Models Pre-Implementation and Troubleshooting Guide



This page describes best practices to prepare for custom model
implementation as well as a guide to some common issues that can arise
from using custom models. 



## Pre-Implementation Best Practices 

**The Purpose of Custom Models**

Custom Models are designed for determining how to price impressions, not
how to target them. For targeting impressions, you should continue to
use the <a
href="invest/buy-side-targeting.md"
class="xref" target="_blank">Targeting</a> section of the line item set
up in  or the <a
href="xandr-api/profile-service.md"
class="xref" target="_blank">Profile Service</a> for targeting via the
API. However, the targeting on the line item needs to match the features
in the custom model​. A discrepancy between the two can result in limited
delivery on a line. 

**Syntax and Permissions Guidance**

- In order to create and update custom models, you will need to make API
  calls from an Invest user with the role APB Bonsai User Role or APB
  Genie User Role. Open a product support ticket if you do not already
  see these roles available for users in your seats. Many clients will
  create a new user and use it exclusively for updating custom models.
- <a href="https://developer.mozilla.org/en-US/docs/Glossary/Base64"
  class="xref" target="_blank">Base64 encode</a>
  your tree before uploading it to Xandr and
  make sure your Base64-Encoded tree is no larger than 3 MB.​
- In <a
  href="the-bonsai-language.md"
  class="xref" target="_blank">Bonsai models</a>,
  use tabs for indentation, not spaces.
- Label leaves to report on <a
  href="log-level-data-feeds.md"
  class="xref" target="_blank">Log-level data</a>. This will help you
  accurately work out how you have bid.
- If you want to not bid in certain situations, use a bid value or
  multiplier of "no_bid" not "0:

**Dealing With Capacity**

- Update your old model instead of creating a new model every
  few minutes.​
- Have a script that periodically deletes unused models

**Using Log-Level Data**

In order to use custom models successfully, you must update the models
based on performance. This can be done with two log-level data feeds:

- <a href="log-level-custom-model-feed.md" class="xref">Custom Model
  Feed</a>: this feed gives you information about models associated with
  your line items and the values calculated by those models
- <a
  href="log-level-data/standard-feed.md"
  class="xref" target="_blank">Standard Feed</a>: this feed gives
  information about transacted impressions.

You can also collect data from the log-level data feeds
listed <a href="log-level-data-feeds.md" class="xref">here</a> and
include the data in your custom models if relevant.





## Troubleshooting Guide

Follow these troubleshooting steps if a line item is not delivering the
expected results and has a custom model attached: 

**Step 1: Determine if the Custom Model Is the Issue**

If a line item is not delivering as expected it is possible the attached
custom model is causing the issue. We recommend that prior to
troubleshooting the custom model that uses confirm that the line item
set up is not causing the delivery issue. Some general items to check on
the line item and its parent objects are:   

- Is the line item active and within its flight dates? What about the
  parent Insertion Order?
- Is your targeting very restrictive limiting the amount of inventory
  for you to bid on? For example, are you targeting just a handful of
  postal codes or a small segment? Use the Planner tool to understand
  the reach of your campaign and how each targeting setting is affecting
  it. 
- Use the line item's troubleshooting tab to identify at which point of
  the bid funnel the line item is losing impressions. Does the
  troubleshooting tab indicate why inventory is being filtered out and
  do the next steps suggested on that tab help open up spend? More on
  the troubleshooting tab can be found <a
  href="https://staging.invest.xandr.com/docs/troubleshoot-your-augmented-line-item-delivery-and-bid-performance"
  class="xref" target="_blank">here</a> (login required).

For additional information on troubleshooting your augmented line item
please see our <a
href="invest/troubleshoot-your-augmented-line-item-delivery-and-bid-performance.md"
class="xref" target="_blank">Troubleshoot Your Augmented line item
Delivery and Bid Performance</a> documentation. 

If troubleshooting the line item does not resolve the performance issues
continue with the steps below to troubleshoot the custom model. 

**Step 2. Check if the Line Item Is Eligible to Bid**

Custom models can prevent a line item from spending if the features used
to determine how much to bid are excluded by the line item's targeting.
Some examples of this occurrence are:

- The creative IDs in a creative selection model are not the same as the
  creative IDs on the line item.
- The line item is targeting zip codes in New York but the custom model
  zip code features are for zip codes in California.

Follow these step to ensure your custom models are aligned with your
line item: 

- Use our platform's API to retrieve the line item to check. 

  ``` pre
  curl -H 'Authorization: {api_token}' 'https://api.appnexus.com/line-item-model?id=123'
  ```

  The following response will be returned: 

  ``` pre
  {
     "response": {
      "dbg_info": {...},
      "num_elements": null,
      "start_element": null,
      "count": 2,
      "line_item_models": {
              "1234567": [
                  {
                      "line_item_id": 1234567,
                      "type": "cadence",
                      "custom_model_id": 32768053,
                      "origin": "optimization",
                      "experiment": "control",
                      "origin_id": "1"
                  },
                  {
                      "line_item_id": 1234567,
                      "type": "expected_value",
                      "custom_model_id": 45249297,
                      "origin": "client",
                      "experiment": "control",
                      "origin_id": "0"
          }
        ]
      },
      "status": "OK"
    }
  }
  ```

  In the response, if the field origin is equal to optimization this
  means it's a Xandr custom model. If the origin
  field is equal to client these would be the custom model(s) attached
  to the line item by the user. Make a note of your custom model ids and
  their types.

- Using our platform's API to retrieve the structure of each custom
  model.   

  ``` pre
  $ curl -b cookies -c cookies 'https://api.appnexus.com/custom-model?id=45249297'
  ```

  Read your custom model and make sure that the features used in the
  model are aligned with the line item setup. The targeting on the line
  item needs to match the features in the custom model​. A discrepancy
  between the two can result in preventing the line item from spending.
  A simple example would be: 

-   
  If you are targeting segment 34567 on your line item, but only bidding
  on a user if they belong to 67890, this line item will not deliver.
  The purpose of this custom model does not match the goals of the line
  items. To conduct this type of troubleshooting you will have to follow
  the 'if' and 'else' logic of the custom model. You will also need to
  understand the value ranges of the features used in the model.
  Examples of some features are:
  - segments
  - devices
  - geo



<b>Note:</b> Make sure the creatives in your
custom model are also on your line item.



  
For a full listing of the features available to custom models
visit <a href="bonsai-language-features.md" class="xref">Bonsai Language
Features</a>. For additional information review our documentation
on logistic regression models at
<a href="logistic-regression-models.md" class="xref">Logistic
Regression Models</a>. 

``` pre
if not segment [11584384]:
  if segment [4558196].value > 2
      if segment [18332166]:
        if segment[19154661]:
          value: compute(segment[19154661]).value, 0.030000000000000002, 0, 10.0, 1000.0)
        else:
          0.01
      else:
        0.01
  else:
    0.01
else:
  value: 0.01
```

Looking at this model, we can read it as:

If the user does NOT belong to segment ID 11584384, 

**AND** if the user belongs to segment ID 4558196 with a value higher
than 2,

**AND** if the user belongs to segment ID 18332166,

**AND** if the user belongs to segment ID 19154661,

Then calculate a dynamic value by either multiplying the segment value
by the multiplier

Note that the value: *compute(segment\[19154661\].value*,
*0.030000000000000002*, *0*, *10.0*, *10000.0*) syntax is value:
compute(*input_field*, *multiplier*, *offset*, *min_value*,
*max_value*). This is evaluated as *max*(*min_value*, *min*(*max_value*,
*input_field \* multiplier + offset*)). In other words, the user segment
value would have to be higher than 336, otherwise a minimum value of
10.0 will be returned.

If all/any of the conditions above are not met, return a value
of 0.01 for the ev_click model. 

**Step 3. Check if Your Line Has a Bid Price That Can Win**

The bid value equation will vary depending on what type of custom model
is attached to the line item. To understand how the custom model makes
the given bid value, check what type of custom model you are using. 




<a href="custom-models.md" class="link">Custom Models</a>






