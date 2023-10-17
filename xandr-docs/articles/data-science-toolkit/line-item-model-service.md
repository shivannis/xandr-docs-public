---
Title : Line Item Model Service
Description : The Line Item Model service is used to associate custom models to the custom models array. Compared to the standard Line Item service,
ms.custom : data-science

---


# Line Item Model Service



The Line Item Model service is used to associate custom models to
the custom models array. Compared to the standard Line Item service,
the Line Item Model service allows for the distinction between client
uploaded models and Xandr generated models. The
distinction between client and Xandr models is
important for the following:

- Reporting with the custom model Log Level Data feed
- Associating cadence models, and other model types that
  Xandr also generates for Line Items.  
  - Xandr generated models are automatically
    appended to Line Items as part of the V8 optimization system. The
    bidder should defer to client uploaded models when evaluating the
    custom models associated with line items.
  - Xandr automated processes should not
    overwrite client uploaded models.



## Usage

**End Points**

- **Domain**: <a href="https://api.appnexus.com" class="xref"
  target="_blank">https://api.appnexus.com</a>
- **Path**: `/line-item-model`

**Authentication**

\``/line-item-model`\` supports Xandr API <a
href="xandr-api/authentication-service.md"
class="xref" target="_blank">standard Authentication Methods</a>.





## Supported Methods and Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000d3e__entry__1"
class="entry colsep-1 rowsep-1">Method</th>
<th id="ID-00000d3e__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000d3e__entry__3"
class="entry colsep-1 rowsep-1">Purpose</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__2"><code
class="ph codeph">/line-item-model?id={line_item_id}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d3e__entry__3">Get
a list of custom-models associated with a Line Item</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__2"><code
class="ph codeph">/line-item-model?id={line_item_id}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d3e__entry__3">Add
or update existing custom-models associated with a line-item, given a
`line-item-model` JSON object.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__3">Method not supported.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__2"><code
class="ph codeph">/line-item-model?id={line_item_id}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__3">Delete a single custom-model association
on a Line Item, given a `line-item-model` JSON object</td>
</tr>
</tbody>
</table>

**Parameters**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000d3e__entry__16"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00000d3e__entry__17" class="entry colsep-1 rowsep-1">Data
Type</th>
<th id="ID-00000d3e__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000d3e__entry__19"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__16"><code
class="ph codeph">line-item-id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d3e__entry__18">The
ID of the Line Item object of which we would like to query
<p><strong>Required on</strong>: GET, PUT, DELETE</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__19"><code
class="ph codeph">/line-item-model?id=123</code></td>
</tr>
</tbody>
</table>

**Fields**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000d3e__entry__24"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00000d3e__entry__25" class="entry colsep-1 rowsep-1">Data
Type</th>
<th id="ID-00000d3e__entry__26"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000d3e__entry__27" class="entry colsep-1 rowsep-1">Returned
On</th>
<th id="ID-00000d3e__entry__28"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__24"><code
class="ph codeph">line-item-models </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__25">string, and array of custom-models</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d3e__entry__26">The
ID of the Line Item that we have queried, along with the array of
custom-models associated with that line-item</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__27">GET, PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__28"><pre class="pre codeblock"><code>&quot;line_item_models&quot;: {
  &quot;4125657&quot;: [
    {
      &quot;custom_model_id&quot;: 139527,
      &quot;type&quot;: &quot;cadence&quot;
    },
    {
      &quot;custom_model_id&quot;: 130004,
      &quot;type&quot;: &quot;expected_value&quot;
    }
  ]
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__24"><code
class="ph codeph">custom_model_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__25">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d3e__entry__26">The
ID of the custom-model associated with the Line Item</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__27">GET, PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__28"><pre class="pre codeblock"><code>&quot;custom_model_id&quot;: 211973</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__24"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__25">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d3e__entry__26">The
"type" of this model association. A full list of conditional component
model types can be found on the <a
href="bid-valuation-with-custom-models.md" class="xref">Bid Valuation
with Custom Models</a> page.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__27">GET, PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d3e__entry__28"><pre class="pre codeblock"><code>&quot;type&quot;: &quot;ev_click&quot;</code></pre></td>
</tr>
</tbody>
</table>





## Usage Examples

**GET Example**

\`GET\` custom-models associated to a Line Item

``` pre
curl -H 'Authorization: {api_token}' 'https://api.appnexus.com/line-item-model?id=123'
```

**Response:**

``` pre
{
  "response": {
    "dbg_info": {...},
    "num_elements": null,
    "start_element": null,
    "count": 2,
    "line_item_models": {
      "123": [
        {
          "custom_model_id": 139527,
          "type": "cadence"
        },
        {
          "custom_model_id": 130004,
          "type": "expected_value"
        }
      ]
    },
    "status": "OK"
  }
}
```

**PUT Example**

\`PUT\` - Create and Update custom-models associated with a Line Item



<b>Note:</b> Important Usage Info

\`PUT\` will only add new models to a line-item, or update existing
models. If a model is not referenced in your \``line_item_model`\`
array, it is not affected by your request, **unless** one of the models
listed in your array is of the same \``type`\` as a model already
associated to the line-item.



``` pre
curl -H 'Authorization: {api_token}' -d @update_models.json -X PUT 'https://api.appnexus.com/line-item-model?id=12345'
```

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

**Response:**

``` pre
{
  "response": {
    "dbg_info": {...},
    "num_elements": null,
    "start_element": null,
    "count": 1,
    "line_item_models": {
      "12345": [
        {
          "custom_model_id": 123,
          "type": "click_imp"
        },
                {
          "custom_model_id": 456,
          "type": "ev_click"
        }
      ]
    },
    "status": "OK"
  }
}
```

**DELETE Example**



\`DELETE\` a custom-model associated to a Line Item

``` pre
curl -H 'Authorization: {api_token}' -d @detach_model.json -X DELETE 'https://api.appnexus.com/line-item-model?id=:line_item_id'
```



**detach_model.json**

``` pre
{
  "line_item_model": {
        "type": "cadence"
  }
}
```

**Response:**

``` pre
{
  "response": {
    "dbg_info": {...},
    "num_elements": null,
    "start_element": null,
    "count": 1,
    "status": "OK"
  }
}
```




<a href="custom-model-api-reference.md" class="link">Custom Model API
Reference</a>






