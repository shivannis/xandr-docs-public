---
Title : Payment Rule Service
Description : A payment rule defines the terms by which a network pays one of its
managed publishers. A network may have more than one set of payment
---


# Payment Rule Service





A payment rule defines the terms by which a network pays one of its
managed publishers. A network may have more than one set of payment
terms with a publisher. For instance, traffic originating from certain
geographic areas may have different revenue sharing agreement terms.

<div id="payment-rule-service__note_z3b_hcl_twb"


Note: Targeting of advertisers, line
items, or campaigns via the <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html"
class="xref" target="_blank">Placement Service</a> will override any
targeting of those objects via this service's optional `profile_id`.





<div id="payment-rule-service__section_zpg_jcl_twb"
>

## REST API



<div id="payment-rule-service__note_ilh_kcl_twb"


Note: `publisher_code` can be used in
place of `publisher_id`, and `payment_rule_code` can be used in place of
`publisher_rule_id` for all of the calls below.



<table id="payment-rule-service__table_awc_mcl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="payment-rule-service__table_awc_mcl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="payment-rule-service__table_awc_mcl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="payment-rule-service__table_awc_mcl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__2"><a
href="https://api.appnexus.com/payment-rule?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/payment-rule?publisher_id=PUBLISHER_ID</a>
(payment-rule JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__3">Add a new
payment rule.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__2"><a
href="https://api.appnexus.com/payment-rule?id=PAYMENT_RULE_ID&amp;publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/payment-rule?id=PAYMENT_RULE_ID&amp;publisher_id=PUBLISHER_ID</a>(payment-rule
JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__3">Modify an
existing payment rule.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__2"><a
href="https://api.appnexus.com/payment-rule?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/payment-rule?publisher_id=PUBLISHER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__3">View all of
the payment rules for a publisher.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__2"><a
href="https://api.appnexus.com/payment-rule?id=PAYMENT_RULE_ID"
class="xref"
target="_blank">https://api.appnexus.com/payment-rule?id=PAYMENT_RULE_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__3">View a
specific payment rule for a publisher.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__2"><a
href="https://api.appnexus.com/payment-rule?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/payment-rule?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__3">View
multiple payment rules by ID using a comma-separated list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__2"><a
href="https://api.appnexus.com/payment-rule?id=PAYMENT_RULE_ID"
class="xref"
target="_blank">https://api.appnexus.com/payment-rule?id=PAYMENT_RULE_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_awc_mcl_twb__entry__3">Delete a
payment rule.</td>
</tr>
</tbody>
</table>





<div id="payment-rule-service__section_t13_pcl_twb"
>

## JSON Fields



<table id="payment-rule-service__table_ppc_scl_twb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td
class="entry align-left colsep-1 rowsep-1"><strong>Type</strong></td>
<td
class="entry align-left colsep-1 rowsep-1"><strong>Description</strong></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1">int</td>
<td class="entry align-left colsep-1 rowsep-1"><p>The ID of this payment
rule</p>
<p><strong>Required On</strong>: PUT, in query string</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1">string</td>
<td class="entry align-left colsep-1 rowsep-1"><p>A optional custom code
you can use to reference this payment rule.</p>
<p><strong>Default</strong>: Null</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1">string</td>
<td class="entry align-left colsep-1 rowsep-1"><p>A name used to
describe this payment rule.</p>
<p><strong>Default</strong>: None</p>
<p><strong>Required On</strong>: POST</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1">enum</td>
<td class="entry align-left colsep-1 rowsep-1"><p>The state of this
payment rule. Possible values: "active" or "inactive".</p>
<p><strong>Default</strong>: "active"</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1">string</td>
<td class="entry align-left colsep-1 rowsep-1">An optional
description.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"><p>Start date for this
rule.</p>
<p><strong>Default</strong>: Immediately</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"><p>End date for this
rule.</p>
<p><strong>Default</strong>: Indefinitely</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">pricing_type</code></td>
<td class="entry align-left colsep-1 rowsep-1">enum</td>
<td class="entry align-left colsep-1 rowsep-1"><p>Possible values:</p>
<ul>
<li>"revshare" - The publisher gets paid a percentage of ad
revenue.</li>
<li>"cpm" - The publisher is paid a flat fee per ad served.</li>
<li>"dynamic" - The payment terms are defined by a min and max revshare
and a target eCPM</li>
</ul>
<p><strong>Default</strong>: "revshare"</p>
<p><strong>Required On</strong>: POST</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">cost_cpm</code></td>
<td class="entry align-left colsep-1 rowsep-1">double</td>
<td class="entry align-left colsep-1 rowsep-1"><p>If pricing_type is
"cpm", this is the CPM fee the publisher is paid.</p>
<p><strong>Required On</strong>: POST, if pricing_type is "cpm"</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">revshare</code></td>
<td class="entry align-left colsep-1 rowsep-1">double</td>
<td class="entry align-left colsep-1 rowsep-1"><p>If pricing_type is
"revshare", this is the percentage paid to the publisher. If pricing
type is"dynamic", this is the minimum revshare percentage paid to the
publisher, with the maximum defined by <code
class="ph codeph">max_revshare</code>. The percentage should be
expressed as a number between 0 and 1 (inclusive), where 1 is 100%.</p>
<p><strong>Required On</strong>: POST, if pricing_type is "revshare" or
"dynamic"</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1">int</td>
<td class="entry align-left colsep-1 rowsep-1">An optional <code
class="ph codeph">profile_id</code> is used to determine when to apply a
payment rule. A profile is a generic set of rules for targeting
inventory, and certain payment rules may only apply to certain slices of
inventory. (See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> for details.)</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">priority</code></td>
<td class="entry align-left colsep-1 rowsep-1">int</td>
<td class="entry align-left colsep-1 rowsep-1"><p>You can optionally
provide a priority which defines the level at which this rule should
that be applied relative to other payment rules.</p>
<p><strong>Default</strong>: 5</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">timezone</code></td>
<td class="entry align-left colsep-1 rowsep-1">string</td>
<td class="entry align-left colsep-1 rowsep-1"><p>The timezone used to
calculate pricing data. For a list of timezones, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a>.</p>
<p><strong>Default</strong>: 'EST5EDT'</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1">The time of the last
modification to this payment rule.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">filtered_advertisers</code></td>
<td class="entry align-left colsep-1 rowsep-1">array of objects</td>
<td class="entry align-left colsep-1 rowsep-1">A list of advertisers
that you'd like to apply the action specified by <code
class="ph codeph">demand_filter_action</code> to. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/payment-rule-service.html#PaymentRuleService-FilteredAdvertisers"
class="xref" target="_blank">Filtered Advertisers</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">filtered_line_items</code></td>
<td class="entry align-left colsep-1 rowsep-1">array of objects</td>
<td class="entry align-left colsep-1 rowsep-1">A list of line items that
you'd like to apply the action specified by <code
class="ph codeph">demand_filter_action</code> to. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/payment-rule-service.html#PaymentRuleService-FilteredLineItems"
class="xref" target="_blank">Filtered Line Items</a> below.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">filtered_campaigns</code></td>
<td class="entry align-left colsep-1 rowsep-1">array of objects</td>
<td class="entry align-left colsep-1 rowsep-1">A list of campaigns that
you'd like to apply the action specified by <code
class="ph codeph">demand_filter_action</code> to. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/payment-rule-service.html#PaymentRuleService-FilteredCampaigns"
class="xref" target="_blank">Filtered Campaigns</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">buyer_type</code></td>
<td class="entry align-left colsep-1 rowsep-1">enum</td>
<td class="entry align-left colsep-1 rowsep-1"><p>Which buyer types to
apply this payment rule to.</p>
<p>Possible values:</p>
<ul>
<li>"direct": your own, managed inventory</li>
<li>"external": 3rd party, managed inventory</li>
<li>"both"</li>
</ul>
<p><strong>Default</strong>: "both"</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">max_revshare</code></td>
<td class="entry align-left colsep-1 rowsep-1">double</td>
<td class="entry align-left colsep-1 rowsep-1"><p>If <code
class="ph codeph">pricing_type</code> is "dynamic", this is the maximum
revshare percentage paid to the publisher.</p>
<p><strong>Required On</strong>: POST, if <code
class="ph codeph">pricing_type</code> is "dynamic".</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">apply_cost_on_default</code></td>
<td class="entry align-left colsep-1 rowsep-1">boolean</td>
<td class="entry align-left colsep-1 rowsep-1">Whether or not the
publisher is paid even if the auction defaults.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">demand_filter_action</code></td>
<td class="entry align-left colsep-1 rowsep-1">enum</td>
<td class="entry align-left colsep-1 rowsep-1"><p>Decide whether to
include or exclude the advertisers, line items and/or campaigns listed
in the <code class="ph codeph">filtered_advertisers</code>, <code
class="ph codeph">filtered_line_items</code>, or <code
class="ph codeph">filtered_campaigns</code> arrays.</p>
<p>Possible values:</p>
<ul>
<li><code class="ph codeph">"include"</code></li>
<li><code class="ph codeph">"exclude"</code></li>
<li><code class="ph codeph">"default"</code></li>
</ul></td>
</tr>
</tbody>
</table>

**Filtered Advertisers**

<table id="payment-rule-service__table_tpc_scl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="payment-rule-service__table_tpc_scl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></th>
<th id="payment-rule-service__table_tpc_scl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1"><strong>Type</strong></th>
<th id="payment-rule-service__table_tpc_scl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_tpc_scl_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_tpc_scl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_tpc_scl_twb__entry__3">The ID of
the advertiser.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_tpc_scl_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_tpc_scl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_tpc_scl_twb__entry__3">The name of
the advertiser.</td>
</tr>
</tbody>
</table>

**Filtered Line Items**

<table id="payment-rule-service__table_upc_scl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="payment-rule-service__table_upc_scl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></th>
<th id="payment-rule-service__table_upc_scl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1"><strong>Type</strong></th>
<th id="payment-rule-service__table_upc_scl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_upc_scl_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_upc_scl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_upc_scl_twb__entry__3">The ID of
the line item.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_upc_scl_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_upc_scl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_upc_scl_twb__entry__3">The name of
the line item.</td>
</tr>
</tbody>
</table>

**Filtered Campaigns**

<table id="payment-rule-service__table_vpc_scl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="payment-rule-service__table_vpc_scl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></th>
<th id="payment-rule-service__table_vpc_scl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1"><strong>Type</strong></th>
<th id="payment-rule-service__table_vpc_scl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_vpc_scl_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_vpc_scl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_vpc_scl_twb__entry__3">The ID of
the campaign.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_vpc_scl_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_vpc_scl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="payment-rule-service__table_vpc_scl_twb__entry__3">The name of
the campaign.</td>
</tr>
</tbody>
</table>





<div id="payment-rule-service__section_xjn_ycl_twb"
>

## Examples



**Create a payment rule**

``` pre
$ cat payment_rule.json

{
    "payment-rule":{
        "name": "France - 1/24 - $.40 CPM",
        "code": "france_payment_rule",
        "pricing_type": "cpm",
        "cost_cpm": "0.4",
        "state": "active",
        "start_date": "2010-01-01 00:00:00",
        "end_date": "2010-03-31 11:59:59",
        "priority": 8,
        "profile_id": 12345
    }
}

$ curl -c cookies -b cookies -X POST -d @payment_rule.json 'https://api.appnexus.com/payment-rule?publisher_id=65103'

{
  "response": {
    "status": "OK",
    "count": 1,
    "id": 66323,
    "start_element": 0,
    "num_elements": 100,
    "payment-rule": {
      "id": 66323,
      "code": "france_payment_rule",
      "name": "France - 1/24 - $.40 CPM",
      "description": "",
      "pricing_type": "cpm",
      "cost_cpm": 0.4,
      "revshare": null,
      "state": "active",
      "start_date": "2010-01-01 00:00:00",
      "end_date": "2010-03-31 11:59:59",
      "profile_id": 12345,
      "timezone": "EST5EDT",
      "priority": 8,
      "last_modified": "2011-02-18 21:19:52"
    }
  }
}
```





**Read a single payment rule**

``` pre
$ curl -b cookies 'https://api.appnexus.com/payment-rule?id=92873'

{
    "payment-rule": {
    "apply_cost_on_default": true,
    "target_ecpm": 0.8,
    "max_revshare": 0.8,
    "buyer_type": "both",
    "last_modified": "2012-08-02 19:04:00",
    "priority": 10,
    "timezone": "EST5EDT",
    "profile_id": null,
    "end_date": null,
    "start_date": "2013-01-01 00:00:00",
    "state": "active",
    "revshare": 0.67,
    "cost_cpm": 40,
    "pricing_type": "dynamic",
    "description": "A payment rule for targeting USA users",
    "name": "USA",
    "code": "usa_payment_rule",
    "id": 98273
    }
}
```





**Read all of a publisher's payment rules**

``` pre
$ curl -c cookies -b cookies 'https://api.appnexus.com/payment-rule?publisher_id=65103'

{
  "response": {
    "status": "OK",
    "count": 4,
    "start_element": null,
    "num_elements": null,
    "payment-rules": [
      {
        "id": 95479,
        "code": null,
        "name": "Base Payment Rule",
        "description": "",
        "pricing_type": "revshare",
        "cost_cpm": null,
        "revshare": 0.6,
        "state": "active",
        "start_date": null,
        "end_date": null,
        "profile_id": null,
        "timezone": "EST5EDT",
        "priority": 1,
        "last_modified": "2012-04-09 11:40:54",
        "buyer_type": "both",
        "max_revshare": null,
        "target_ecpm": null,
        "apply_cost_on_default": false,
        "demand_filter_action": "default",
        "lifetime_budget": null,
        "lifetime_budget_imps": null,
        "daily_budget": null,
        "daily_budget_imps": null,
        "filtered_advertisers": null,
        "filtered_line_items": null,
        "filtered_campaigns": null
      },
      {
        "id": 95480,
        "code": null,
        "name": "AbenBog Unique Impressions",
        "description": "",
        "pricing_type": "revshare",
        "cost_cpm": null,
        "revshare": 0.7,
        "state": "active",
        "start_date": "2012-04-09 00:00:00",
        "end_date": null,
        "profile_id": 142958,
        "timezone": "EST5EDT",
        "priority": 5,
        "last_modified": "2012-04-09 11:46:32",
        "buyer_type": "both",
        "max_revshare": null,
        "target_ecpm": null,
        "apply_cost_on_default": false,
        "demand_filter_action": "exclude",
        "lifetime_budget": null,
        "lifetime_budget_imps": null,
        "daily_budget": null,
        "daily_budget_imps": null,
        "filtered_advertisers": null,
        "filtered_line_items": null,
        "filtered_campaigns": null
      },
      {
        "id": 98434,
        "code": null,
        "name": "Rich's cool payment rule",
        "description": "",
        "pricing_type": "revshare",
        "cost_cpm": null,
        "revshare": 0.7,
        "state": "active",
        "start_date": null,
        "end_date": null,
        "profile_id": null,
        "timezone": "EST5EDT",
        "priority": 5,
        "last_modified": "2012-08-03 17:37:17",
        "buyer_type": "both",
        "max_revshare": null,
        "target_ecpm": null,
        "apply_cost_on_default": true,
        "demand_filter_action": "default",
        "lifetime_budget": null,
        "lifetime_budget_imps": null,
        "daily_budget": null,
        "daily_budget_imps": null,
        "filtered_advertisers": null,
        "filtered_line_items": null,
        "filtered_campaigns": null
      },
      {
        "id": 98435,
        "code": "this_is_a_test",
        "name": "Rich's other cool payment rule",
        "description": "",
        "pricing_type": "revshare",
        "cost_cpm": null,
        "revshare": 0.7,
        "state": "active",
        "start_date": null,
        "end_date": null,
        "profile_id": null,
        "timezone": "EST5EDT",
        "priority": 5,
        "last_modified": "2012-08-03 17:57:27",
        "buyer_type": "both",
        "max_revshare": null,
        "target_ecpm": null,
        "apply_cost_on_default": true,
        "demand_filter_action": "default",
        "lifetime_budget": null,
        "lifetime_budget_imps": null,
        "daily_budget": null,
        "daily_budget_imps": null,
        "filtered_advertisers": null,
        "filtered_line_items": null,
        "filtered_campaigns": null
      }
    ]
  }
}
```





**Update a payment rule**

``` pre
$ cat payment_rule.json

{
    "payment-rule": {
    "apply_cost_on_default": true,
    "target_ecpm": 0.8,
    "max_revshare": 0.8,
    "priority": 10,
    "timezone": "EST5EDT",
    "revshare": 0.67,
    "cost_cpm": 40,
    "pricing_type": "dynamic",
    "description": "A payment rule for targeting USA users"
    }
}

$ curl -b cookies -X PUT -d @payment_rule.json
'https://api.appnexus.com/payment-rule?publisher_id=65103&id=98273'

{
    "payment-rule": {
    "apply_cost_on_default": true,
    "target_ecpm": 0.8,
    "max_revshare": 0.8,
    "buyer_type": "both",
    "last_modified": "2012-08-02 19:04:00",
    "priority": 10,
    "timezone": "EST5EDT",
    "profile_id": null,
    "end_date": null,
    "start_date": "2013-01-01 00:00:00",
    "state": "active",
    "revshare": 0.67,
    "cost_cpm": 40,
    "pricing_type": "dynamic",
    "description": "A payment rule for targeting USA users",
    "name": "USA",
    "code": "usa_payment_rule",
    "id": 98273
    }
}
```





**Delete a payment rule**

``` pre
$ curl -b cookies -X DELETE "https://api.appnexus.com/payment-rule?id=98384"

{
  "response": {
    "status": "OK"
  }
}
```








