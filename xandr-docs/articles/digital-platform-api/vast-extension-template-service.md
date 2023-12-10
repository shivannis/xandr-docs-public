---
Title : VAST Extension Template Service
Description : This service provides a template to enter and save custom extensions
ms.date: 10/28/2023
ms.custom: digital-platform-api
from a VAST file. Extensions are custom XML snippets added to the VAST
---


# VAST Extension Template Service



This service provides a template to enter and save custom extensions
from a VAST file. Extensions are custom XML snippets added to the VAST
file. Video players must be specially programmed to recognize and handle
the data provided. Since an extension must be added manually, and to
avoid having to add the same extension multiple times, you can use this
service and enter the template id.

In addition, custom and impbus macros are supported in the extension
templates.

Once you have created an extension, you must then associate it with a
creative.

**Example Extension XML**

``` pre
<Ad>
  <InLine|Wrapper>
    <Extensions>
       <Extension type="X">
          <MyCustomization>ABC</MyCustomization>
          <AnotherCustomization>123</AnotherCustomization>
       </Extension>
    </Extensions>
  </InLine|Wrapper>
</Ad>
```



## REST API



<table
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/vast-extension-template" class="xref"
target="_blank">https://api.appnexus.com/vast-extension-template</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
VAST Extension Templates.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/vast-extension-template" class="xref"
target="_blank">https://api.appnexus.com/vast-extension-template</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a VAST extension template and custom macros.</td>
</tr>
</tbody>
</table>







## JSON Fields



<table
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(1000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
name of the VAST extension.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
member ID of the member associated with this VAST extension.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">content</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
XML content to output when rendering the creative's VAST document.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time the VAST extension template was created.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_activity</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time the template was last modified.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">macros</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
custom macros used in the <code class="ph codeph">content</code> field.
See <a
href="vast-extension-template-service.md#VASTExtensionTemplateService-CustomMacros"
class="xref" target="_blank">Custom Macros</a> below for more
details.</td>
</tr>
</tbody>
</table>



**Custom Macros**

You must define each custom macro used in the `content` field.

<table id="buy-side-service-template__table_ipr_kx4_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_ipr_kx4_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_ipr_kx4_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_ipr_kx4_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__2">string
(30)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__3"><p>The
macro name exactly as it is used in the <code
class="ph codeph">content</code> field. For example, if #{BORDER_SIZE}
is the macro in the <code class="ph codeph">content</code> field, you
would pass "BORDER_SIZE" here.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__2">string
(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__3"><p>The
user-friendly name for this macro that traffickers will see when they
add creatives that use this template via the UI.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__1"><code
class="ph codeph">is_required</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__3"><p>If
true, traffickers will be required to provide a value for the macro when
using this template.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__3"><p>The
type of value that traffickers will provide for this macro when they add
creatives that use this template. Possible values: "true/false",
"string", "url", "integer", "decimal", "string_list", "select_from_list"
and "file".</p>
<p>For example, on the UI, if you set this to "true/false", traffickers
will see the macro name followed by a check box.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__1"><code
class="ph codeph">default_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__3"><p>If
<code class="ph codeph">is_required</code> is false, this is the default
value that will be used when traffickers do not provide a value for the
macro when using this template.</p>
<ul>
<li><strong>Required On:</strong> <code class="ph codeph">POST</code>,
if <code class="ph codeph">is_required</code> is <code
class="ph codeph">false.</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__1"><code
class="ph codeph">other_data</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ipr_kx4_wwb__entry__3">The
accepted values for the macro, if <code class="ph codeph">type</code> is
"string_list" or "select_from_list".</td>
</tr>
</tbody>
</table>





## Examples

**Add a custom VAST extension and associate with a creative**

**Step 1**: **Add a custom VAST extension**

>

``` pre
$ cat vast-extension-template
 
{
    "vast-extension-template": {
     
      "name": "First Template",
      "member_id": 2,
      "content": "<hello>world #{FIRST} #{SECOND}</hello>",
      "created_on": "2017-05-21 13:15:17",
      "last_activity": "2017-05-21 13:15:17",
      "macros": [
        {
          "code": "FIRST",
          "name": "first",
          "is_required": false,
          "type": "string",
          "default_value": null,
          "other_data": null
        },
        {
          "code": "SECOND",
          "name": "second",
          "is_required": false,
          "type": "string",
          "default_value": null,
          "other_data": null
        }
      ]
    }
}


$ curl -b cookies -c cookies -X POST -d @vast-extension-template 'https://api.appnexus.com/vast-extension-template'
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": 3,
    "start_element": 0,
    "num_elements": 100,
    "vast-extension-template": {
      "id": 3,
      "name": "First Template",
      "member_id": 2,
      "content": "<hello>world #{FIRST} #{SECOND}</hello>",
      "created_on": "2017-05-21 13:15:17",
      "last_activity": "2017-05-21 13:15:17",
      "macros": [
        {
          "code": "FIRST",
          "name": "first",
          "is_required": false,
          "type": "string",
          "default_value": null,
          "other_data": null
        },
        {
          "code": "SECOND",
          "name": "second",
          "is_required": false,
          "type": "string",
          "default_value": null,
          "other_data": null
        }
      ]
    },
   ...
  }
```



In the **`video_attribute`** object for the creative, assign the
template id in the **`vast_extension_template_id`** field and ensure
that you define the macros in the **`custom_macros`** object

**Step 2:** **Associate it with a creative**

``` pre
{
    "creative-vast": {
        "id": 145,
        "template_id": 6439,
        "video_attribute": {
            "is_skippable": true,
            "duration_ms": 21000,
        “extensions”: [
                {
                    "vast_extension_template_id": 3
                }
            ],
            "wrapper": {
                "url": "http://www.doubleclick.net/...",
                "secure_url": "https://www.doubleclick.net/...",
                "elements": [
                    {
                        "vast_element_type_id": 1,
                        "name": "linear",
                        "trackers": [
                            {
                                "name": "startTracker",
                                "vast_event_type_id": 2,
                                "url": "http://tracker.com/...",
                                "secure_url": "https://tracker.com/...",
                                "event_type": "start"
                            },
                            {
                                "name": "completionTracker",
                                "vast_event_type_id": 8,
                                "url": "http://tracker.com/...",
                                "secure_url": "https://tracker.com/...",
                                "event_type": "completion"
                            }
                        ]
                    }
                ]
            }
        }
    }
}
```

**Update a custom VAST extension**

``` pre
$ cat vast-extension-template-update
 
{
    "vast-extension-template": {
     
      "name": "Second Template",
      "member_id": 4,
      "content": "<hello>world #{THIRD} #{FOURTH}</hello>",
      "created_on": "2017-05-21 13:15:17",
      "last_activity": "2017-05-21 13:15:17",
      "macros": [
        {
          "code": "THIRD",
          "name": "third",
          "is_required": true,
          "type": "string",
          "default_value": null,
          "other_data": null
        },
        {
          "code": "FOURTH",
          "name": "fourth",
          "is_required": false,
          "type": "string",
          "default_value": null,
          "other_data": null
        }
      ]
    }
}

{
    "creative":{
        "video_attribute":{
            "extensions":[
                {
                    "vast_extension_template_id": 3
                }
            ]
        }
        "custom_macros": [
            {
                "code": "FIRST"
                "value": "FirstVALUE"
            },
           {
                "code": "SECOND"
                "value": "SecondVALUE"
            } 
        ]
    }
}
```






