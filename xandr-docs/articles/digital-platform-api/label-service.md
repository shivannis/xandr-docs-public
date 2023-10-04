---
Title : Label Service
Description : This read-only service allows you to view the labels that can be applied
to your advertisers, insertion orders, line items, campaigns, and
publishers. It also allows you to view the labels that have already been
---


# Label Service



This read-only service allows you to view the labels that can be applied
to your advertisers, insertion orders, line items, campaigns, and
publishers. It also allows you to view the labels that have already been
applied. 

An example of an advertiser label is "Salesperson". You might use this
label to specify the name of the salesperson responsible for each of
your advertisers. You might then run the Network Analytics report
filtered by "salesperson_for_advertiser" to focus on the advertisers
that a particular salesperson is responsible for, or grouped by
"salesperson_for_advertiser" to rank the performance of your
salespeople.

The following reports currently support labels: <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-analytics.html"
class="xref" target="_blank">Network Analytics</a>, <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-advertiser-analytics.html"
class="xref" target="_blank">Network Advertiser Analytics</a>, and <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-analytics.html"
class="xref" target="_blank">Advertiser Analytics</a>. See
"report_field" below for the full list of report columns associated with
labels.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001769__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001769__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001769__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__2">https://api.<span
class="ph">appnexus.com/label</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001769__entry__3">View
all available labels</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__2">https://api.<span
class="ph">appnexus.com/label?id=LABEL_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001769__entry__3">View
a specific label</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__2">https://api.<span
class="ph">appnexus.com/label?show_values=true&amp;object_type=OBJECT_TYPE</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001769__entry__3">View
the labels that are applied to a specific object type

Note:
<p>The following object types are available: <code
class="ph codeph">advertiser</code>, <code
class="ph codeph">publisher</code>, <code
class="ph codeph">line_item</code>, <code
class="ph codeph">campaign</code>, and <code
class="ph codeph">insertion_order</code>.</p>
</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001769__entry__13"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001769__entry__14"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001769__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__13"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001769__entry__15">The
ID of the label. Possible values: 1, 2, 3, 4, 5, 7, 8, 9, 11, 12, 14,
15, 16.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__13"><code
class="ph codeph">is_user_associated</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__14">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__15">This field is specific to <span
class="ph">. If true, the label is associated with a person (i.e.
"Salesperson" or "Account Manager") and  will
allow for auto-completion of the label value by the firstname, lastname
of a user.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__13"><code
class="ph codeph">is_reporting_enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__14">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001769__entry__15">If
true, the label is available for use in reporting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__13"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__14">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001769__entry__15">The
date and time when the label was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__13"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__14">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__15">Since all labels are currently
available to all members, this field will always be NULL. In the future,
it may become possible for a member to create unique labels, in which
case this field would return the ID of the owning member. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__13"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001769__entry__15">The
name of the label. Possible values: "Salesperson", "Account Manager",
"Trafficker", "Sales Rep", "Test/Control", "Campaign Type", or
"Advertiser Type". See the first example below for id/name/object_type
mappings.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__13"><code
class="ph codeph">object_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__14">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001769__entry__15">The
type of object to which the label can be applied. Possible values:
"advertiser", "insertion_order", "line_item", "campaign", or
"publisher". See the first example below for id/name/object_type
mappings.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__13"><code
class="ph codeph">report_field</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__14">string </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001769__entry__15">The
report column with which you can report on the label. Possible report
columns (with corresponding reports):<br />
&#10;<ul>
<li>salesperson_for_advertiser (Network Analytics)<br />
</li>
<li>salesperson_for_publisher (Network Analytics)</li>
<li>account_manager_for_advertiser (Network Analytics)</li>
<li>account_manager_for_publisher (Network Analytics)</li>
<li>trafficker_for_line_item (Network Analytics, Network Advertiser
Analytics)</li>
<li>salesrep_for_line_item (Network Analytics, Network Advertiser
Analytics)</li>
<li>user_group_for_campaign (Network Analytics, Network Advertiser
Analytics, Advertiser Analytics)</li>
<li>advertiser_type (Network Analytics, Network Advertiser
Analytics)</li>
<li>line_item_type (Network Analytics, Network Advertiser
Analytics)</li>
<li>insertion_order_type (Network Analytics, Network Advertiser
Analytics)</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__13"><code
class="ph codeph">values</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__14">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__15">This field is return when using the
request GET <a
href="https://api.appnexus.com/label?show_values=true&amp;object_type=OBJECT_TYPE"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/label?show_values=true&amp;object_type=OBJECT_TYPE</a>.
See <a href="label-service.html#ID-00001769__values"
class="xref">Values</a> and the second example below for more
details.</td>
</tr>
</tbody>
</table>

**Values**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001769__entry__43"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001769__entry__44"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001769__entry__45"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__43"><code
class="ph codeph">object_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__44">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001769__entry__45">The
ID of the object to which the label is applied. For example, if <code
class="ph codeph">object_type</code> is "advertiser", <code
class="ph codeph">object_id</code> would be the ID of the
advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__43"><code
class="ph codeph">value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001769__entry__44">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001769__entry__45">The
value assigned to the label. For example, for the publisher
"Salesperson" label, this would be a name such as "Michael
Sellers".</td>
</tr>
</tbody>
</table>





## Examples

**View all available labels**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/label'
{
    "response": {
        "status": "OK",
        "labels": [
            {
                "id": 1,
                "name": "Salesperson",
                "member_id": null,
                "is_user_associated": true,
                "is_reporting_enabled": true,
                "object_type": "advertiser",
                "report_field": "salesperson_for_advertiser",
                "last_modified": "2010-09-14 22:12:38"
            },
            {
                "id": 2,
                "name": "Salesperson",
                "member_id": null,
                "is_user_associated": true,
                "is_reporting_enabled": true,
                "object_type": "publisher",
                "report_field": "salesperson_for_publisher",
                "last_modified": "2010-09-14 22:12:43"
            },
            {
                "id": 3,
                "name": "Account Manager",
                "member_id": null,
                "is_user_associated": true,
                "is_reporting_enabled": true,
                "object_type": "advertiser",
                "report_field": "account_manager_for_advertiser",
                "last_modified": "2010-09-14 22:12:47"
            },
            {
                "id": 4,
                "name": "Account Manager",
                "member_id": null,
                "is_user_associated": true,
                "is_reporting_enabled": true,
                "object_type": "publisher",
                "report_field": "account_manager_for_publisher",
                "last_modified": "2010-09-14 22:12:51"
            },
            {
                "id": 5,
                "name": "Region",
                "member_id": null,
                "is_user_associated": false,
                "is_reporting_enabled": true,
                "object_type": "advertiser",
                "report_field": "region_for_advertiser",
                "last_modified": "2011-01-21 19:39:37"
            },
            {
                "id": 7,
                "name": "Trafficker",
                "member_id": null,
                "is_user_associated": true,
                "is_reporting_enabled": true,
                "object_type": "line_item",
                "report_field": "trafficker_for_line_item",
                "last_modified": "2011-05-31 16:11:21"
            },
            {
                "id": 8,
                "name": "Sales Rep",
                "member_id": null,
                "is_user_associated": true,
                "is_reporting_enabled": true,
                "object_type": "line_item",
                "report_field": "salesrep_for_line_item",
                "last_modified": "2011-05-31 16:11:29"
            },
            {
                "id": 9,
                "name": "Test/Control",
                "member_id": null,
                "is_user_associated": true,
                "is_reporting_enabled": true,
                "object_type": "campaign",
                "report_field": "user_group_for_campaign",
                "last_modified": "2011-12-06 18:07:44"
            },
            ...  
        ],
        "count": 10,
        "start_element": 0,
        "num_elements": 100
    }
}
```

**View the labels that are applied to your advertisers**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/label?show_values=true&object_type=advertiser'
{
    "response": {
        "status": "OK",
        "labels": [
            {
                "id": 1,
                "name": "Salesperson",
                "member_id": null,
                "is_user_associated": true,
                "is_reporting_enabled": true,
                "object_type": "advertiser",
                "report_field": "salesperson_for_advertiser",
                "values": [
                    {
                        "object_id": "7669",
                        "value": "Phillip Turner"
                    },
                    {
                        "object_id": "7670",
                        "value": "Ami Kraft"
                    },
                    {
                        "object_id": "7713",
                        "value": "Michelle Jacobs"
                    },
                    {
                        "object_id": "7719",
                        "value": "Michelle Jacobs"
                    },
                    {
                        "object_id": "7759",
                        "value": "Phillip Turner"
                    },
                    {
                        "object_id": "7760",
                        "value": "Phillip Turner"
                    },
                    {
                        "object_id": "7761",
                        "value": "Ami Kraft"
                    }
                ],
                "last_modified": "2011-12-18 20:13:32"
            },
            {
                "id": 3,
                "name": "Account Manager",
                "member_id": null,
                "is_user_associated": true,
                "is_reporting_enabled": true,
                "object_type": "advertiser",
                "report_field": "account_manager_for_advertiser",
                "values": [
                    {
                        "object_id": "7669",
                        "value": "Tina Rivera"
                    },
                    {
                        "object_id": "7670",
                        "value": "Richard Seiken"
                    },
                    {
                        "object_id": "7713",
                        "value": "Richard Seiken"
                    },
                    {
                        "object_id": "7719",
                        "value": "Norman Fischer"
                    },
                    {
                        "object_id": "7759",
                        "value": "Norman Fischer"
                    },
                    {
                        "object_id": "7760",
                        "value": "Tina Revera"
                    },
                    {
                        "object_id": "7761",
                        "value": "Norman Fisher"
                    }
                ],
                "last_modified": "2010-09-28 20:13:32"
            }
        ],
        "count": 2,
        "start_element": null,
        "num_elements": null
    }
}
```






