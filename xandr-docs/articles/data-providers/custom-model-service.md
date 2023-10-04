---
Title : Custom Model Service
Description : The Custom Model service lets you add and maintain custom predictive
models (decision trees) for use in campaigns. For background
---


# Custom Model Service



The Custom Model service lets you add and maintain custom predictive
models (decision trees) for use in campaigns. For background
information, see <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-models.html"
class="xref" target="_blank">Custom Models</a>.



Tip: Before adding a custom model, use
the <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-model-parser-service.html"
class="xref" target="_blank">Custom Model Parser Service</a> to check
the validity and size of your decision tree.





## REST API

**Add a new custom model:**

``` pre
POST https://api.appnexus.com/custom-model  
(new_model JSON)
```

**Modify a custom model:**

``` pre
PUT https://api.appnexus.com/custom-model?id=ID
(model_update JSON)
```

**View all custom models:  **

``` pre
GET https://api.appnexus.com/custom-model
```

**View a specific custom model: **

``` pre
GET https://api.appnexus.com/custom-model?id=ID
```

**Delete a custom model: **

``` pre
DELETE https://api.appnexus.com/custom-model?id=ID
```



Note: You cannot delete a custom model
that is used by one or more campaigns.



**Find out which fields you can filter and sort by:**

``` pre
GET https://api.appnexus.com/custom-model/meta
```





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000aaa__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000aaa__entry__2" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00000aaa__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__1"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000aaa__entry__3">The
ID of the custom model.
<p><strong>Default</strong>: Auto-generated number</p>
<p><strong>Required On</strong>: <code class="ph codeph">PUT/</code>
<code class="ph codeph">DELETE</code>, in query string</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__1"><code class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__2">string (191)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000aaa__entry__3">The
name of the custom model. This must be unique and must be no more than
191 characters.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__1"><code class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000aaa__entry__3">A
custom code that is used as an external ID or as a look-up value for an
object. This value must be unique within your member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__3"><strong>Read-only</strong>. The ID of
the member to which the custom model belongs.
<p><strong>Default</strong>: Member's ID</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000aaa__entry__3">The
ID of the advertiser to which the custom model belongs.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__1"><code
class="ph codeph">custom_model_structure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000aaa__entry__3">The
structure of the custom model. Currently, the only allowed structure is
<code class="ph codeph">"decision_tree"</code>.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__1"><code
class="ph codeph">model_output</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000aaa__entry__3">The
type of custom model. Possible values:
<ul>
<li><code class="ph codeph">"bid"</code>: The Bid Price model outputs a
CPM bid. This type of model serves as a campaign's third-party buying
strategy in place of standard CPM strategies. To use this type of model
in a <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">campaign</a>, set <code
class="ph codeph">cpm_bid_type</code> to <code
class="ph codeph">"custom_model"</code> and then specify the custom
model ID in the <code class="ph codeph">bid_model</code> object.</li>
<li><p><code class="ph codeph">"bid_modifier"</code>: The Bid Modifier
model applies a multiplier to a campaign's optimization-derived CPM bid.
This type of model is used in conjunction with a <span
class="ph">Xandr optimization-based buying strategy (when <code
class="ph codeph">cpm_bid_type</code> is <code
class="ph codeph">"predicted"</code> or <code
class="ph codeph">"margin"</code>). To use this type of model in a <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">campaign</a>, specify the custom model ID
in the <code class="ph codeph">bid_modifier_model</code> object.</p>
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__1"><code
class="ph codeph">model_text</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000aaa__entry__3">The
logic of the model, expressed as a decision tree. You must write your
decision tree in our Bonsai Language and then include a base64-encoded
version here.
<p><strong>Default</strong>: <code class="ph codeph">null</code></p>

Note:
<ul>
<li>Size limit: Your tree must be smaller than 3 MB, or 3,145,728 bytes.
If it is larger than that, you will not be able to add your tree.<br />
</li>
<li><p>GET queries: In a GET query, the <code
class="ph codeph">model_text</code> will ONLY be returned if you provide
a model ID in the query string. It will not be returned for unfiltered
queries.</p></li>
<li>Check the Validity and Size of Your Tree.</li>
<li>Before adding a custom model, use the <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-model-parser-service.html"
class="xref" target="_blank">Custom Model Parser Service</a> to check
the validity and size of your decision tree. See that service for
details about validation and error messages.</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__1"><code
class="ph codeph">original_text</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__3"><strong>Read-only</strong>. The decision
tree in plain text. We provide this in the response so that you can
retrieve and review your tree's original format whenever necessary to
iterate on tree design. Note that tabs are replaced with <code
class="ph codeph">\t</code> and new lines are replaced with <code
class="ph codeph">\n</code>.
<p><strong>Default</strong>: <code class="ph codeph">null</code></p>

Note: In a GET query, the <code
class="ph codeph">original_text</code> will ONLY be returned if you
identify a specific model ID in the query string. It will not be
returned for unfiltered queries.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000aaa__entry__3">If
<code class="ph codeph">true</code>, the custom model is active and
available for use in campaigns.
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000aaa__entry__3"><strong>Read-only</strong>. The date and
time when the custom model was last modified.</td>
</tr>
</tbody>
</table>





## Examples

**View all custom models**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/custom-model'
 
{
    "response": {
        "status": "OK",
        "count": 10,
        "start_element": 0,
        "num_elements": 100,
        "custom_models": [
            {
                "id": 327,
                "name": "Bid by Region/Hour of Day",
                                "code": "code1_abc12345",
                "member_id": 958,
                "advertiser_id": 39776,
                "custom_model_structure": "decision_tree",
                "model_output": "bid",
                "active": true,
                "last_modified": "2015-09-22 19:52:57"
            },
            {
                "id": 329,
                "name": "Bid by Device Type/Hour of Day",
                                "code": "code2_abc12345",
                "member_id": 958,
                "advertiser_id": 39776,
                "custom_model_structure": "decision_tree",
                "model_output": "bid",
                "active": true,
                "last_modified": "2015-09-22 20:52:53"
            },
            ...  
        ]
    }
}
```

**View a specific custom model**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/custom-model?id=327'
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "custom_model": {
            "id": 327,
            "name": "Bid by Region/Hour of Day",
                        "code": "code1_abc12345",
            "member_id": 1234,
            "advertiser_id": 39776,
            "custom_model_structure": "decision_tree",
            "model_output": "bid",
            "model_text": "aWYgZXZlcnkgcmVnaW9uID0gIlVTOkNBIiwgdXNlcl9ob3VyIHJhbmdlICgxMiwxNCk6CgkxLjUKZWxpZiBldmVyeSByZWdpb24gPSAiVVM6TlkiLCB1c2VyX2hvdXIgcmFuZ2UgKDEsMyk6CgkwLjEKZWxzZToKCTAuNQ==",
            "original_text": "if every region = \"US:CA\", user_hour range (12,14):\n\t1.5\nelif every region = \"US:NY\", user_hour range (1,3):\n\t0.1\nelse:\n\t0.5",
            "active": true,
            "last_modified": "2015-09-22 19:52:57"
        }
    }
}
```

**Add a custom model**

``` pre
$ curl -b cookies -c cookies -X POST -d @custom_model.json 'https://api.appnexus.com/custom-model?member_id=1234'
$ cat custom_model.json
 
{
    "custom_model": {
        "name": "Bid by Device Type/Hour of Day", 
        "advertiser_id": 39776,
        "custom_model_structure": "decision_tree",
        "model_output": "bid",
                "model_text": "aWYgZXZlcnkgZGV2aWNlX3R5cGUgPSAiT3RoZXJzIChpbmNsdWRpbmcgUEMpIiwgdXNlcl9ob3VyIHJhbmdlICg5LDE4KToKCTEuNQplbGlmIGV2ZXJ5IGRldmljZV90eXBlIGluICgiVGFibGV0IiwgIlBob25lIiksIHVzZXJfaG91ciBpbiAoNSw2LDcsOCwxOSwyMCwyMSwyMik6CgkyCmVsc2U6CgkwLjU="
    }
}
 
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
            "name": "Bid by Device Type/Hour of Day",
                        "code": null,
            "member_id": 1234,
            "advertiser_id": 39776,
            "custom_model_structure": "decision_tree",
            "model_output": "bid",
            "model_text": "aWYgZXZlcnkgZGV2aWNlX3R5cGUgPSAiT3RoZXJzIChpbmNsdWRpbmcgUEMpIiwgdXNlcl9ob3VyIHJhbmdlICg5LDE4KToKCTEuNQplbGlmIGV2ZXJ5IGRldmljZV90eXBlIGluICgiVGFibGV0IiwgIlBob25lIiksIHVzZXJfaG91ciBpbiAoNSw2LDcsOCwxOSwyMCwyMSwyMik6CgkyCmVsc2U6CgkwLjU=",
            "original_text": "if every device_type = \"Others (including PC)\", user_hour range (9,18):\n\t1.5\nelif every device_type in (\"Tablet\", \"Phone\"), user_hour in (5,6,7,8,19,20,21,22):\n\t2\nelse:\n\t0.5",
            "active": true,
            "last_modified": "2015-09-22 20:52:53"
        }
    }
}
 
```

**Modify a custom model**

``` pre
$ cat custom_model_update.json 
 
{
    "custom_model": {
        "model_text": "aWYgc2VnbWVudCAxMjM0Og0KwqDCoMKgwqBpZi..."    
    }
}
 
$ curl -b cookies -c cookies -X PUT -d @custom_model_update.json 'https://api.appnexus.com/custom-model?id=3'
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "custom_model": {
            "id": 3,
            "name": "User Hour Model",
                        "code": null,
            "member_id": 1234,
            "advertiser_id": 83736,
            "custom_model_structure": "decision_tree",
            "model_output": "bid",
            "model_text": "aWYgc2VnbWVudCAxMjM0Og0KwqDCoMKgwqBpZi...",
            "original_text": "if every region = \"US:CA\", user_hour range (12,16):\n\t1.5\nelif every region = \"US:NY\", user_hour range (1,5):\n\t0.1\nelse:\n\t0.5",
            "active": true
        }
    }
}
```

**Delete a custom model**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/custom-model?id=3'
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null
    }
}
```





## Related Topics





- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-model-parser-service.html"
  class="xref" target="_blank">Custom Model Parser Service</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/the-bonsai-language.html"
  class="xref" target="_blank">The Bonsai Language</a>





<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="custom-model-api-reference.html" class="link">Custom Model API
Reference</a>






