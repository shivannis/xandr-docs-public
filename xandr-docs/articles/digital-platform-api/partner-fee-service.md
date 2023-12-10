---
Title : Partner Fee Service
ms.date: 10/28/2023
ms.custom: digital-platform-api
<b>Note:</b>
Partner Fees are an enhancement and replacement for broker fees for <a
href="line-item-service---ali.md"
---


# Partner Fee Service





<b>Note:</b>

Partner Fees are an enhancement and replacement for broker fees for <a
href="line-item-service---ali.md"
class="xref" target="_blank">augmented line items (ALIs)</a>.

If you previously used broker fees, please see the
<a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Partner Fees Breaking Change Notice</a> for more
details.



If you need to reserve a portion of your budget for third-party
costs--costs owed to parties other than the publisher--you can define
this information with the Partner Fee service. Fees can be tracked on a
CPM, cost share, or revenue share basis, and can be applied to multiple
advertisers and line items, if desired. A single advertiser or line item
can have multiple fees applied.

Common fees you might need to budget for are:

- Advertiser **ad serving fees** and **creative hosting fees**, which
  are charged for delivering a line item's creative assets.
- **Data fees** that are not cleared by Xandr as part of the Data
  Marketplace.
- Post-bid **reporting fees** – for example, using a pixel to track
  where impressions are served and then auditing retroactively how many
  transactions violated brand safety standards.
- **Revenue share agreements** with other ad tech partners.
- **Incremental fees** charged by an intermediary to the advertiser,
  such as a managed service fee or consulting fee.

>

## REST API



<table id="partner-fee-service__table_gxn_x3c_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="partner-fee-service__table_gxn_x3c_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="partner-fee-service__table_gxn_x3c_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="partner-fee-service__table_gxn_x3c_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__2"><a
href="https://api.appnexus.com/partner-fee?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/partner-fee?advertiser_id=ADVERTISER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__3">View all
partner fees for an advertiser.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__2"><a
href="https://api.appnexus.com/partner-fee?id=PARTNER_FEE_ID"
class="xref"
target="_blank">https://api.appnexus.com/partner-fee?id=PARTNER_FEE_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__3">View a
specific partner fee.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__2"><a
href="https://api.appnexus.com/partner-fee" class="xref"
target="_blank">https://api.appnexus.com/partner-fee</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__3">Create a new
partner fee.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__2"><a
href="https://api.appnexus.com/partner-fee?id=PARTNER_FEE_ID"
class="xref"
target="_blank">https://api.appnexus.com/partner-fee?id=PARTNER_FEE_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__3">Modify a
partner fee.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__2"><a
href="https://api.appnexus.com/partner-fee?id=PARTNER_FEE_ID"
class="xref"
target="_blank">https://api.appnexus.com/partner-fee?id=PARTNER_FEE_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_gxn_x3c_xwb__entry__3"><p>Delete a
partner fee.</p>

<b>Note:</b>
<p>You can only delete a fee that is not applied to any line items.</p>
</td>
</tr>
</tbody>
</table>





>

## JSON Fields



<table id="partner-fee-service__table_agd_hjc_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="partner-fee-service__table_agd_hjc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="partner-fee-service__table_agd_hjc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="partner-fee-service__table_agd_hjc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">advertisers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">mapping</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>The
advertisers for which this fee is eligible. This field must be passed in
as an array of object with the following format:</p>
<pre id="partner-fee-service__pre_bgd_hjc_xwb" class="pre"><code>[{&#39;id&#39;:ADVERTISER_ID_1},{&#39;id&#39;}:ADVERTISER_ID_2}]</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">apply_to_deals</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">bool</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>Determines
whether this fee applies to deals.</p>
<ul>
<li><strong>Required On</strong>: <code
class="ph codeph">POST</code></li>
<li><strong>Default</strong>: <code class="ph codeph">true</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">apply_to_managed</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">bool</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>Determines
whether this fee applies to managed inventory.</p>
<ul>
<li><strong>Required On</strong>: <code
class="ph codeph">POST</code></li>
<li><strong>Default</strong>: <code class="ph codeph">true</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">apply_to_rtb</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">bool</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>Determines
whether this fee applies to RTB inventory.</p>
<ul>
<li><strong>Required On</strong>: <code
class="ph codeph">POST</code></li>
<li><strong>Default</strong>: <code class="ph codeph">true</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">available_for_all_advertisers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">bool</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>When <code
class="ph codeph">true</code>, this fee is eligible to be applied to all
advertisers for this member. This is available only to users with <a
href="member-service.md"
class="xref" target="_blank">Member</a>-level access.</p>
<ul>
<li><strong>Default</strong>: <code class="ph codeph">false</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">text</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3">Optional.
User-supplied description of the fee.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">currency</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">char(3)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>The
currency in which the fee is calculated.</p>
<ul>
<li>If <code class="ph codeph">partner_fee_payment_type_id</code> is
cpm, a value is required.</li>
<li>If <code class="ph codeph">partner_fee_payment_type_id</code> is
revshare, this field must be <code class="ph codeph">null</code>.</li>
</ul>
<p>Use the <a
href="currency-service.md"
class="xref" target="_blank">Currency Service</a> to see a list of
available currencies.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>Unique
identifier for the fee.</p>
<ul>
<li><strong>Required On</strong>: <code class="ph codeph">PUT </code>and
<code class="ph codeph">DELETE</code></li>
<li><strong>Default</strong>: auto-generated number.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">varchar(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>The fee
name.</p>
<ul>
<li><strong>Required On</strong>: <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">partner_fee_payment_type_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>Determines
the payment type for this fee:</p>
<ul>
<li>"1" for cpm. If cpm is selected, you must specify the currency with
<code class="ph codeph">currency</code>.</li>
<li>"2" for revenue sharing.</li>
</ul>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">partner_fee_basis_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>Determines
the basis from which a percentage fee is derived.</p>
<ul>
<li>"1" for net media cost.</li>
<li>"2" for gross media cost (media cost including <a
href="invest_invest-standard/buyer-auction-service-charge-mechanics.md"
class="xref" target="_blank">BASC</a>).</li>
<li>"3" for net media cost (media cost without BASC) + data costs.</li>
<li>"4" for gross media cost (media cost including BASC) + data
costs.</li>
<li>"5" for revenue.</li>
</ul>
<p>CPM fees can only be set to "5" (revenue).</p>
<ul>
<li><strong>Required On</strong>: <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">partner_fee_type_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>Defines
the type of fee: Supported values are:</p>
<ul>
<li>"1" for ad serving</li>
<li>"2" for algorithm</li>
<li>"3" for data</li>
<li>"4" for reporting</li>
<li>"5" for service</li>
<li>"6" for technology</li>
<li>"7" for viewability</li>
<li>"8" for other</li>
</ul>
<ul>
<li><strong>Required On</strong>: <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">partner_fee_vendor_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>The ID of
vendor charging the fee. Supported values are:</p>
<ul>
<li>"1" for Adloox</li>
<li>"2" for ComScore</li>
<li>"3" for DoubleClick</li>
<li>"4" for DoubleVerify</li>
<li>"5" for Evidon</li>
<li>"6" for Flashtalking</li>
<li>"7" for Ghostery</li>
<li>"8" for GroovinAds</li>
<li>"9" for Integral Ad Science (IAS)</li>
<li>"10" for MOAT</li>
<li>"11" for Ninth Decimal</li>
<li>"12" for Sizmek</li>
<li>"13" for TrustArc</li>
<li>"14" for Custom Vendor 1</li>
<li>"15" for Custom Vendor 2</li>
<li>"16" for Custom Vendor 3</li>
<li>"17" for Custom Vendor 4</li>
<li>"18" for Custom Vendor 5</li>
</ul>
<p>Custom vendors will appear as Custom Vendor 1, Custom Vendor 2, etc.
in reporting. We recommend that you include the partner name in the
fee's name <code class="ph codeph">field</code> for easy
identification.</p>
<ul>
<li><strong>Required On</strong>: <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">required</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">bool</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>When <code
class="ph codeph">true</code>, this fee will be required for and applied
to all new line items for eligible advertisers. It will not be
automatically applied retroactively to existing line items.</p>

<b>Note:</b>
<p>You cannot remove a fee from a line item if <code
class="ph codeph">required</code> is true. You must first set <code
class="ph codeph">required</code> to false and then remove the fee from
the line item.</p>

<strong>Default</strong>: <code class="ph codeph">false</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__2">decimal(15,5)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="partner-fee-service__table_agd_hjc_xwb__entry__3"><p>The fee
being charged.</p>
<ul>
<li>If the payment type is cpm, this value will be in the defined <code
class="ph codeph">currency</code>.</li>
<li>If the payment type is revenue sharing, the value should be a
fraction between 0 and 1. For example, a 10% revshare fee is specified
by 0.1.</li>
</ul>
<strong>Required On</strong>: <code class="ph codeph">POST</code></td>
</tr>
</tbody>
</table>





>

## Examples



**Create a partner fee**

``` pre
$ cat partner-fee.json

{
    "partner_fee": {
        "name" : "Test1",
        "apply_to_managed" : true,
        "apply_to_rtb" : true,
        "apply_to_deals" : true,
        "value" : .5,
        "partner_fee_vendor_id" : 3,
        "partner_fee_payment_type_id" : 2,
        "partner_fee_basis_id" : 2,
        "partner_fee_type_id" : 1,
        "required" : true,
        "advertisers" : [
            {
                "id" : 1
            }
        ]
    }
}

$curl -b cookie -X POST -d @partner-fee.json "https://api.appnexus.com/partner-fee"

{
    "response": {
        "status" : "OK",
        "id": 4401
    }
}
```





**View a partner fee's details**

``` pre
$ curl -b cookie "https://api.appnexus.com/partner-fee?id=4401"

{
    "response": {
        "status": "OK",
        "partner_fees": [
            {
                "name" : "Test1",
                "apply_to_managed" : true,
                "apply_to_rtb" : true,
                "apply_to_deals" : true,
                "currency" : null,
                "value" : .5,
                "partner_fee_vendor_id" : 3,
                "partner_fee_payment_type_id" : 2,
                "partner_fee_basis_id" : 2,
                "partner_fee_type_id" : 1,
                "required" : true,
                "advertisers" : [
                    {
                      "id" : 1
                    }
                ]
            }        
        ]
    }
}
```





**View revenue-sharing partner fees for managed inventory**

``` pre
$ curl -b cookie "https://api.appnexus.com/partner-fee?apply_to_managed=true&partner_fee_payment_type_id=2"

{
    "response": {
        "count": "2",
        "partner_fees": [
            {
                "id" : 4401,
                "name" : "Test1",
                "apply_to_managed" : true,
                "apply_to_rtb" : true,
                "apply_to_deals" : true,
                "value" : .1,
                "partner_fee_vendor_id" : 3,
                "partner_fee_payment_type_id" : 2,
                "partner_fee_basis_id" : 2,
                "partner_fee_type_id" : 1,
                "required" : true,
                "available_for_all_advertisers": true,
                "advertisers" : [
                ]
            },
            {
                "id" : 4402,
                "name" : "Test2",
                "apply_to_managed" : true,
                "apply_to_rtb" : false,
                "apply_to_deals" : false,
                "currency" : "null",
                "value" : .5,
                "partner_fee_vendor_id" : 14,
                "partner_fee_payment_type_id" : 2,
                "partner_fee_basis_id" : 2,
                "partner_fee_type_id" : 6,
                "required" : false,
                "available_for_all_advertiser" : true,
                "advertisers" : [
                ]
            } 
        ]
    }
}
```





**Change a partner fee's payment type**

``` pre
$ cat partner-fee.json

{
    "partner_fee": {
        "currency" : USD,
        "value" : 1.2,
        "partner_fee_payment_type_id" : 1,
        "partner_fee_basis_id": 5 
    }
}

$ curl -b cookie -X PUT -d @partner-fee.json "https://api.appnexus.com/partner-fee?id=4401"

{
    "response": {
        "status" : "OK",
        "id": 4401
    }
}
```





**Apply a partner fee to a line item**

``` pre
$ cat LI-update.json

{       
    "line-item": {
        "partner_fees": [
            {
                "id": 4401
            },
            { 
                "id": 4402
            }
        ]
    }
}

$ curl -b cookie -X PUT -d @LI-update.json "https://api.appnexus.com/line-item?id=2345432"

{
    "response": {
        "status" : "OK",
        "id": 2345432
    }
}
```





**Remove a fee from a line item**

``` pre
$ curl -b cookie -x GET "https://api.appnexus.com/line-item?id=1234"

 {
    "line-item": {
        ...,
        "partner_fees": [
            {
                "id": 1
            },
            {
                "id": 2
            }, 
            {
                "id": 3
            }
        ],
        ...
    }
}


$ cat LI-update.json

{
    "line-item": {
        "partner_fees": [
            {
                "id": 1
            },
            {
                "id": 3
            } 
        ]
    }
}

$ curl -b cookie -X PUT "https://api.appnexus.com/line-item?id=1234"

{
    "line-item": {
        ...,
        "partner_fees": [
            {
                "id": 1
            },
            {
                "id": 3
            }
        ],
        ...
    }
}

$ curl -b cookie -x GET "https://api.appnexus.com/line-item?id=1234"

 {
    "line-item": {
        ...,
        "partner_fees": [
            {
                "id": 1
            }, 
            {
                "id": 3
            }
        ],
        ...
    }
}
```





<b>Note:</b>

You cannot remove a fee from a line item if `required` is true. You must
first set `required` to false and then remove the fee from the line
item.





**Remove a fee from an advertiser**

``` pre
$ curl -b cookie -x GET "https://api.appnexus.com/advertiser?id=5678"

 {
    "advertiser": {
        ...,
        "partner_fees": [
            {
                "id": 1
            },
            {
                "id": 2
            }, 
            {
                "id": 3
            }
        ],
        ...
    }
}



$ cat partner-fee-update.json

{
    "partner-fee": {
        "advertisers": [
            {
                "id": 5677
            },
            {
                "id": 5679
            }
        ]
    }
}

$ curl -b cookie -X PUT -d @partner-fee-update.json "https://api.appnexus.com/partner-fee?id=1"

{
    "response": {
        "status" : "OK",
        "id": 1
    }
}
```



<b>Note:</b> You cannot remove a fee from an
advertiser if the fee is currently applied to any of that advertiser's
line items. You must first remove the fee from any line items and then
remove the fee from the advertiser.










