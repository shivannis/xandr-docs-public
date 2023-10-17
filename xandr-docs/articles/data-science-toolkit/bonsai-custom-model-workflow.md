---
Title : Bonsai Custom Model Workflow
Description : This page describes a typical Bonsai Custom Model Workflow and provides code examples. 
ms.custom : data-science

---


# Bonsai Custom Model Workflow



This page describes a typical Bonsai Custom Model Workflow and provides
code examples. 



<b>Note:</b> The Closed Beta workflow requires
using the API. Closed Beta clients are expected to have completed our <a
href="xandr-api/api-onboarding-process.md"
class="xref" target="_blank">API Onboarding Process</a> before getting
started.





## Step 1. Identify Your Requirements



You will write your custom model as
a <a href="https://en.wikipedia.org/wiki/Decision_tree" class="xref"
target="_blank">decision tree</a>, where branches of the tree express
conditions that lead to specific outputs (bid prices in the case of a
Bid Price Model and bid multipliers in the case of a Bid Modifier
Model). The conditions are written in
our <a href="the-bonsai-language.md" class="xref">Bonsai language</a> and
based on a set of  <a
href="bonsai-language-features.md"
class="xref" target="_blank">Bonsai Features</a> and feature values.
Before writing your tree:

- Take a close look at the Bonsai Features that are available.
- Sketch how you want to use tree features to determine outputs.
- Be sure to take advantage of reporting data in identifying the right
  features and values. For more information, see <a
  href="log-level-data/log-level-data-feeds.md"
  class="xref" target="_blank">Log Level Data Feeds</a> and "Standard
  Reporting" in  documentation (customer login
  required).

Example: Decision tree for bid pricing
![Decision tree for bid pricing](media/datascience-b.png)



<b>Note:</b> Use custom models to determine
how to price impressions, not how to target them. For targeting
impressions, you should continue to use the <a
href="xandr-api/profile-service.md"
class="xref" target="_blank">Profile Service</a> for targeting via the
API.





## Step 2. Create Your Decision Tree



Once you know the features and steps you want to follow to price or
modify bids for a campaign, write them as a decision tree in our <a
href="the-bonsai-language.md"
class="xref" target="_blank">Bonsai Language</a>. Use the examples on
that page as well as the simple example below to jumpstart your
understanding of how to write your tree.



<b>Note:</b>

Use tabs for indentation, not spaces.

In Bonsai, indentation is used to group expressions (similar to Python).
Be sure to use tabs to indicate line indentation. Spaces are not
currently supported.



 Example: Bonsai tree for bid pricing



<b>Note:</b> Lines beginning with `#` are
comments to help you understand the logic of this tree.

``` pre
# This tree determines a bid price as follows:
# 1. If the user is in California, and the hour is between 12pm and 14pm there, bid $1.50.
# 2. If the user is in New York, and the hour is between 1am and 3am there, bid $0.10.
# 3. Otherwise, bid $0.50.
 
if every region = "US:CA", user_hour range (12,14):
        1.5
elif every region = "US:NY", user_hour range (1,3):
        0.1
else:
        0.5
```





## Step 3. Encode Your Decision Tree



Base64-encode your decision tree.  Base64 is an encoding algorithm that
allows you to transform binary digits into an alphabet which consists of
Latin letters, digits, plus, and slash symbols. There are several
web-<a href="https://www.base64encode.org/" class="xref"
target="_blank">based convertors</a> that can encode your content into
Base64. 

 Example: Base64-encoded

``` pre
IyBUaGlzIHRyZWUgZGV0ZXJtaW5lcyBhIGJpZCBwcmljZSBhcyBmb2xsb3dzOgojIDEuIElmIHRoZSB1c2VyIGlzIGluIENhbGlmb3JuaWEsIGFuZCB0aGUgaG91ciBpcyBiZXR3ZWVuIDEycG0gYW5kIDE0cG0gdGhlcmUsIGJpZCAkMS41MC4KIyAyLiBJZiB0aGUgdXNlciBpcyBpbiBOZXcgWW9yaywgYW5kIHRoZSBob3VyIGlzIGJldHdlZW4gMWFtIGFuZCAzYW0gdGhlcmUsIGJpZCAkMC4xMC4KIyAzLiBPdGhlcndpc2UsIGJpZCAkMC41MC4KCmlmIGV2ZXJ5IHJlZ2lvbiA9ICJVUzpDQSIsIHVzZXJfaG91ciByYW5nZSAoMTIsMTQpOgoJMS41CmVsaWYgZXZlcnkgcmVnaW9uID0gIlVTOk5ZIiwgdXNlcl9ob3VyIHJhbmdlICgxLDMpOgoJMC4xCmVsc2U6CgkwLjU=
```



## Step 4. Check Your Decision Tree for Errors



Use the <a
href="custom-model-parser-service.md"
class="xref" target="_blank">Custom Model Parser Service</a> to check
the validity of your decision tree. 

- In the JSON request, put your base64-encoded tree in
  the `model_text` field as a string.
- If there are errors, use the `error` field in the response to help you
  identify and resolve Bonsai syntax or feature errors. See <a
  href="custom-model-parser-service.md#CustomModelParserService-ErrorMessages"
  class="xref" target="_blank">Error Messages</a> for guidance.
- If there are no errors, the `size` field in the response shows you the
  size of your tree in Lisp (the format we use to store trees). Make
  sure the `size` is less than 3MB, or 3,145,728 bytes.



<b>Note:</b> If the tree is larger than 3MB,
you will not be able to add the tree.



 Example: JSON file containing your base64-encoded tree

``` pre
$ cat check_tree.json 
 
{
    "custom-model-parser": {
                "model_text": "IyBUaGlzIHRyZWUgZGV0ZXJtaW5lcyBhIGJpZCBwcmljZSBhcyBmb2xsb3dzOgojIDEuIElmIHRoZSB1c2VyIGlzIGluIENhbGlmb3JuaWEsIGFuZCB0aGUgaG91ciBpcyBiZXR3ZWVuIDEycG0gYW5kIDE0cG0gdGhlcmUsIGJpZCAkMS41MC4KIyAyLiBJZiB0aGUgdXNlciBpcyBpbiBOZXcgWW9yaywgYW5kIHRoZSBob3VyIGlzIGJldHdlZW4gMWFtIGFuZCAzYW0gdGhlcmUsIGJpZCAkMC4xMC4KIyAzLiBPdGhlcndpc2UsIGJpZCAkMC41MC4KCmlmIGV2ZXJ5IHJlZ2lvbiA9ICJVUzpDQSIsIHVzZXJfaG91ciByYW5nZSAoMTIsMTQpOgoJMS41CmVsaWYgZXZlcnkgcmVnaW9uID0gIlVTOk5ZIiwgdXNlcl9ob3VyIHJhbmdlICgxLDMpOgoJMC4xCmVsc2U6CgkwLjU="
    }
}
```

 Example: `POST` to the custom-model-parser service

``` pre
$ curl -b cookies -c cookies -X POST -d @check_tree.json 'https://api.appnexus.com/custom-model-parser'
{
    "response": {
        "service": "custom-model-parser",
        "method": "post",
        "custom-model-parser": {
            "model_text": "IyBUaGlzIHRyZWUgZGV0ZXJtaW5lcyBhIGJpZCBwcmljZSBhcyBmb2xsb3dzOgojIDEuIElmIHRoZSB1c2VyIGlzIGluIENhbGlmb3JuaWEsIGFuZCB...",
            "size": 111
        },
        "dbg_info": {
            ...
        }
    }
}
```



## Step 5. Add Your Decision Tree as a Custom Model



Once you've confirmed that your tree is valid, use the <a
href="custom-model-service.md"
class="xref" target="_blank">Custom Model Service</a> to upload your
encoded decision tree. Be sure to:

- Set the correct custom model type in the `model_output` field:
  - For a Bid Price model, use  `"bid" `.
  - For a Bid Modifier model, use  `"bid_modifier" `.
- Put your base64-encoded tree in the `model_text` field as a string.
- Provide a unique `name`. This is required and will make it easier to
  select the correct model in .
- Provide the `advertiser_id` to which the custom model belongs. You
  will be able to use the model only in campaigns under this
  advertiser. 

 Example: JSON file defining your custom model

``` pre
$ cat custom_model.json
 
{
    "custom_model": {
        "name": "Bid by Region/Hour of Day", 
        "member_id": 958,
        "advertiser_id": 39776,
        "custom_model_structure": "decision_tree",
        "model_output": "bid",
                "model_text": "aWYgZXZlcnkgZGV2aWNlX3R5cGUgPSAiT3RoZXJzIChpbmNsdWRpbmcgUEMpIiwgdXNlcl9ob3VyIHJhbmdlICg5LDE4KToKCTEuNQplbGlmIGV2ZXJ5IGRldmljZV90eXBlIGluICgiVGFibGV0IiwgIlBob25lIiksIHVzZXJfaG91ciBpbiAoNSw2LDcsOCwxOSwyMCwyMSwyMik6CgkyCmVsc2U6CgkwLjU="
    }
}
```

 Example: `POST` to `custom-model` service

``` pre
$ curl -b cookies -c cookies -X POST -d @custom_model.json 'https://api.appnexus.com/custom-model'
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "329",
        "start_element": 0,
        "num_elements": 100,
        "custom_model": {
            "id": 329,
            "name": "Bid by Region/Hour of Day",
            "member_id": 958,
            "advertiser_id": 39776,
            "custom_model_structure": "decision_tree",
            "model_output": "bid",
            "model_text": "aWYgZXZlcnkgcmVnaW9uID0gIlVTOkNBIiwgdXNlcl9ob3VyIHJhbmdlICgxMiwxNCk6CgkxLjUKZWxpZiBldmVyeSByZWdpb24gPSAiVVM6TlkiLCB1c2VyX2hvdXIgcmFuZ2UgKDEsMyk6CgkwLjEKZWxzZToKCTAuNQ=",
            "original_text": "if every region = \"US:CA\", user_hour range (12,14):
	1.5
elif every region = \"US:NY\", user_hour range (1,3):
	0.1
else:
	0.5",
            "active": true,
            "last_modified": "2015-09-22 20:52:53"
        },
        "dbg_info": {
            "instance": "64.bm-hbapi.prod.nym2",
            "slave_hit": true,
            "db": "10.3.129.206",
            "awesomesauce_cache_used": false,
            "count_cache_used": false,
            "warnings": [
            ],
            "time": 39.799213409424,
            "start_microtime": 1438028779.7596,
            "version": "1.15.572",
            "slave_lag": 0,
            "member_last_modified_age": 21425,
            "output_term": "custom_model"
        }
    }
}
```



## Step 6. Assign Your Custom Model to a Campaign



**Bid Price Model **

Use the <a
href="xandr-api/campaign-service.md"
class="xref" target="_blank">Campaign Service</a> to assign your custom
model to a campaign. Be sure to:

- Set `cpm_bid_type` to `"custom_model"`.

- Provide the `id` of your custom model in the `bid_model` object. 

- Set `inventory_type` to `"real_time"`.

  **JSON file defining your campaign**

  ``` pre
  $ cat campaign.json
   
  {
      "campaign": {
          "name": "Custom Model Campaign - Bid by Region/Hour of Day",
          "cpm_bid_type": "custom_model",
          "bid_model": {
                          "id": 329
                  }, 
          "line_item_id": 34287,
                  "inventory_type": "real_time"
      }
  }
  ```

  
**Bid Modifier Model**

Use the <a
href="xandr-api/campaign-service.md"
class="xref" target="_blank">Campaign Service</a> to assign your custom
model to a campaign. Be sure to:

- Set `cpm_bid_type` to an optimization-based buying strategy
  (`"predicted"` or `"margin"`) and any corresponding required fields. 
  - In the JSON below, for example, we set `cpm_bid_type` to
    `"predicted"` and `cpc_click_goal` to `1.00` to optimize CPM bids to
    a predicted $1.00 CPC goal.

- In the `bid_modifier_model` object, provide the `id` of the custom
  model that will modify the campaign's CPM bids. 

- Set `inventory_type` to `"real_time"`.

  **JSON file defining your campaign**

  ``` pre
  $ cat campaign.json
  {
      "campaign": {
          "name": "Custom Model Campaign - Modify Bid Based on Region/Hour of Day",
          "cpm_bid_type": “predicted”,
          “cpc_goal”: 1.00,
          "bid_modifier_model": {
              "id": 148
          },
          "line_item_id": 34287,
          "inventory_type": "real_time"
      }
  }
  ```



<a href="the-bonsai-language.md" class="link">The Bonsai Language</a>






