---
Title : Seller Creative Review Service
Description : <div id="seller-creative-review-service__note_kqv_bst_swb"
Note: This service currently is in
**Beta**. It is still under development and may be subject to change
---


# Seller Creative Review Service





<div id="seller-creative-review-service__note_kqv_bst_swb"


Note: This service currently is in
**Beta**. It is still under development and may be subject to change
without notice. Contact your Xandr Account Representative to get
enabled.





The Seller Creative Review Service is designed to give you an insight
into how seller members audit the creatives.

Xandr works with members who care deeply about brand and reputation. For
this reason, we are careful to ensure that the advertisements
(creatives) that pass through our system are acceptable to all parties.
Buyers must submit creatives to Xandr so that they can be audited before
running on Xandr real-time inventory. Creatives that fail the Xandr
platform audit will not run. For more information, see <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/auditing-creatives.html"
class="xref" target="_blank">Auditing Creatives</a>.

<div id="seller-creative-review-service__section_w5w_fst_swb"
>

## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-creative-review-service__section_w5w_fst_swb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="seller-creative-review-service__section_w5w_fst_swb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="seller-creative-review-service__section_w5w_fst_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-creative-review-service__section_w5w_fst_swb__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-creative-review-service__section_w5w_fst_swb__entry__2"><a
href="https://api.appnexus.com/seller-creative-review?member_id=MEMBER_ID&amp;creative_id=CREATIVE_ID"
class="xref"
target="_blank">https://api.appnexus.com/seller-creative-review?member_id=MEMBER_ID&amp;creative_id=CREATIVE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-creative-review-service__section_w5w_fst_swb__entry__3">Create
a seller-creative review</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-creative-review-service__section_w5w_fst_swb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-creative-review-service__section_w5w_fst_swb__entry__2"><a
href="https://api.appnexus.com/seller-creative-review?member_id=MEMBER_ID&amp;creative_id=CREATIVE_ID"
class="xref"
target="_blank">https://api.appnexus.com/seller-creative-review?member_id=MEMBER_ID&amp;creative_id=CREATIVE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-creative-review-service__section_w5w_fst_swb__entry__3">View
the details of a seller-creative review</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-creative-review-service__section_w5w_fst_swb__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-creative-review-service__section_w5w_fst_swb__entry__2"><a
href="https://api.appnexus.comseller-creative-review?member_id=MEMBER_ID&amp;creative_id=CREATIVE_ID"
class="xref"
target="_blank">https://api.appnexus.comseller-creative-review?member_id=MEMBER_ID&amp;creative_id=CREATIVE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-creative-review-service__section_w5w_fst_swb__entry__3">Update
a seller-creative review</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-creative-review-service__section_w5w_fst_swb__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-creative-review-service__section_w5w_fst_swb__entry__2"><a
href="https://api.appnexus.com/seller-creative-review?member_id=MEMBER_ID&amp;creative_id=CREATIVE_ID"
class="xref"
target="_blank">https://api.appnexus.com/seller-creative-review?member_id=MEMBER_ID&amp;creative_id=CREATIVE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-creative-review-service__section_w5w_fst_swb__entry__3">Delete
a seller-creative review</td>
</tr>
</tbody>
</table>



<div id="seller-creative-review-service__section_fvl_x5t_swb"
>

## JSON Fields

The seller-creative-review object includes the following JSON fields:







<table
id="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">audit_feedback</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Consists
of a brief description of the audit_status field.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
audit status could consist of one of the following parameters:</p>
<ul>
<li>no_audit</li>
<li>rejected</li>
<li>approved</li>
<li><p>pending</p></li>
</ul>
<p><strong>Required on</strong>: PUT and POST</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">brand_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>ID
of an undeleted brand. This field cannot be null.</p>
<p>It is recommended to use the existing values for this field, instead
of setting the values to default (i.e. brand_id=1 or language_id=0).</p>
<p><strong>Required on</strong>: PUT and POST</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Read-only</strong>.
The date and time at which the object was created.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">creative_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">If
(creative_id, member_id) record is deleted, it can be recreated using
the POST method. There can be multiple entries for one creative_id from
different members.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">deleted</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Read-only</strong>.
An indicator that refers if the object was deleted or not.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Read-only.</strong>
The ID of the object.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">language_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
language ID of the creative. For more information, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/language-service.html"
class="xref" target="_blank">Language Service</a>.</p>
<p>It is recommended to use the existing values for this field, instead
of setting the values to default (i.e. brand_id=1 or language_id=0).</p>
<p><strong>Required on</strong>: PUT and POST</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Read-only</strong>.
The date and time at which the object was last modified.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the member that is creating or modifying the object.</p>
<p><strong>Required on</strong>: PUT and POST</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">deal_audit_statuses</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Deal
specific audit statuses indicate a creative’s approval/rejection status
for a specific deal.</td>
</tr>
</tbody>
</table>

**Deal Audit Statuses**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-creative-review-service__entry__52"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="seller-creative-review-service__entry__53"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="seller-creative-review-service__entry__54"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__entry__52"><code
class="ph codeph">deal_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__entry__53">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__entry__54">The ID of an
existing deal.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__entry__52"><code
class="ph codeph">audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__entry__53">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__entry__54"><p>The audit status
could consist of one of the following parameters:</p>
<ul>
<li>no_audit</li>
<li>rejected</li>
<li>approved</li>
<li>pending</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__entry__52"><code
class="ph codeph">audit_feedback</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__entry__53">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-creative-review-service__entry__54">Consists of a brief
description of the audit_status field.</td>
</tr>
</tbody>
</table>







## Examples

**Create a seller creative review**



Step1: Create a seller creative review:

``` pre
curl -X POST 'https://api.appnexus.com/seller-creative-review?member_id=2715&creative_id=55' -H 'Authorization: authn:3190:10e35ec51ee63:nym2' -d '{"seller-creative-review": {"audit_status": "rejected", "audit_feedback": "Does not meet standards", "language_id": 23,"brand_id": 306}}'
```





The payload returned:

``` pre
{ 
 "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "dbg_info": {
      "output_term": "seller-creative-review",
      "warnings": null,
      "version": "1.18"
    },
    "seller-creative-review": {
      "audit_feedback": "Does not meet standards",
      "audit_status": "rejected",
      "brand_id": 306,
      "created_on": "2022-02-02 17:08:01",
      "creative_id": 55,
      "deleted": false,
      "id": 32,
      "language_id": 23,
      "last_modified": "2022-02-04 21:21:11",
      "member_id": 2715,
      "deal_audit_statuses": null      
    }
  }
}
```



**Create a seller creative review with deal audit statuses**



Step1: Create a seller creative review with deal audit statuses:

``` pre
curl -X POST 'https://api.appnexus.com/seller-creative-review?member_id=2715&creative_id=55' -H 'Authorization: authn:3190:10e35ec51ee63:nym2' -d '{"seller-creative-review": {"audit_status": "approved", "audit_feedback": "Meets standards", "language_id": 23,"brand_id": 306,"deal_audit_statuses": [{"deal_id": 1,"audit_status": "rejected","audit_feedback": "Deal audit feedback"}]}}'
```





The payload returned:

``` pre
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "dbg_info": {
      "output_term": "seller-creative-review",
      "warnings": null,
      "version": "1.18"
    },
    "seller-creative-review": {
      "audit_feedback": "Meets standard",
      "audit_status": "approved",
      "brand_id": 306,
      "created_on": "2022-02-02 17:08:01",
      "creative_id": 55,
      "deleted": false,
      "id": 32,
      "language_id": 23,
      "last_modified": "2022-02-04 21:22:59",
      "member_id": 2715,
      "deal_audit_statuses": [
        {
            "deal_id": 1,
            "audit_status": "rejected",
            "audit_feedback”: "Deal audit feedback"
        }
      ]
    }
  }
}
```



**View the details of a seller creative review**

Step1: View the details of a seller creative review:

``` pre
curl -X GET 'https://api.appnexus.com/seller-creative-review?member_id=2715&creative_id=55' -H 'Authorization: authn:3190:10e35ec51ee63:nym2'
```

The payload returned:

``` pre
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "dbg_info": {
      "output_term": "seller-creative-reviews",
      "warnings": null,
      "version": "1.18"
    },
    "seller-creative-reviews": [
      {
        "audit_feedback": "Does not meet standards",
        "audit_status": "rejected",
        "brand_id": 306,
        "created_on": "2022-02-02 17:08:01",
        "creative_id": 55,
        "deleted": false,
        "id": 32,
        "language_id": 23,
        "last_modified": "2022-02-04 21:21:11",
        "member_id": 2715,
        "deal_audit_statuses": null
      }
    ]
  }
}
```

**Update a seller creative review**

Step1: Update a seller creative review:

``` pre
curl -X PUT 'https://api.appnexus.comseller-creative-review?member_id=2715&creative_id=55' -H 'Authorization: authn:3190:10e35ec51ee63:nym2' -d '{"seller-creative-review": {"audit_status": "approved", "audit_feedback": "Meets standards", "language_id": 23,"brand_id": 306}}' 
```

The payload returned:

``` pre
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "dbg_info": {
      "output_term": "seller-creative-review",
      "warnings": null,
      "version": "1.18"
    },
    "seller-creative-review": {
      "audit_feedback": "Meets standards",
      "audit_status": "approved",
      "brand_id": 306,
      "created_on": "2022-02-02 17:08:01",
      "creative_id": 55,
      "deleted": false,
      "id": 32,
      "language_id": 23,
      "last_modified": "2022-02-04 21:22:59",
      "member_id": 2715,
      "deal_audit_statuses": null
    }
  }
}
```

**Delete a seller creative review**

Step1: Delete a seller creative review:

``` pre
curl -X DELETE 'https://api.appnexus.com/seller-creative-review?member_id=2715&creative_id=55' -H 'Authorization: authn:3190:10e35ec51ee63:nym2'
```



The payload returned:

``` pre
{
  "response": {
    "status": "OK",
    "count": 0,
    "start_element": 0,
    "num_elements": 0,
    "dbg_info": {
      "output_term": "not_found",
      "warnings": null,
      "version": "1.18"
    }
  }
}    
```




