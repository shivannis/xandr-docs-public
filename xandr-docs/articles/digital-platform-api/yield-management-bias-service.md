---
Title : Yield Management Bias Service
Description : The Yield Management Bias Service is used to create and update biases
within an existing
<a href="yield-management-profile-service.html" class="xref">Yield
---


# Yield Management Bias Service



The Yield Management Bias Service is used to create and update biases
within an existing
<a href="yield-management-profile-service.html" class="xref">Yield
Management Profile</a>. Biases are a way of modifying bids from certain
buyers or groups of buyers so that they appear higher or lower than they
actually are for the purposes of running an auction.



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-bias-service__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="yield-management-bias-service__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="yield-management-bias-service__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__2"><a
href="https://api.appnexus.com/ym-bias?ym_profile_id=YM_PROFILE_ID"
class="xref"
target="_blank">https://api.appnexus.com/ym-bias?ym_profile_id=YM_PROFILE_ID</a>
<p><a
href="https://api.appnexus.com/ym-bias?ym_profile_code=YM_PROFILE_CODE"
class="xref"
target="_blank">https://api.appnexus.com/ym-bias?ym_profile_code=YM_PROFILE_CODE</a></p>
<p>(ym-bias JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__3">Add a bias.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__2"><a
href="https://api.appnexus.com/ym-bias?id=YM_BIAS_ID" class="xref"
target="_blank">https://api.appnexus.com/ym-bias?id=YM_BIAS_ID</a>
<p><a href="https://api.appnexus.com/ym-bias?code=YM_BIAS_CODE"
class="xref"
target="_blank">https://api.appnexus.com/ym-bias?code=YM_BIAS_CODE</a></p>
<p>(ym-bias JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__3">Modify an existing
bias.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__2"><a
href="https://api.appnexus.com/ym-bias?ym_profile_id=YM_PROFILE_ID"
class="xref"
target="_blank">https://api.appnexus.com/ym-bias?ym_profile_id=YM_PROFILE_ID</a>
<p><a
href="https://api.appnexus.com/ym-bias?ym_profile_code=YM_PROFILE_CODE"
class="xref"
target="_blank">https://api.appnexus.com/ym-bias?ym_profile_code=YM_PROFILE_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__3">View all biases
associated with a particular <a
href="https://docs.xandr.com/bundle/xandr-api/page/yield-management-profile-service.html"
class="xref" target="_blank">Yield Management Profile</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__2"><a
href="https://api.appnexus.com/ym-bias?id=YM_BIAS_ID" class="xref"
target="_blank">https://api.appnexus.com/ym-bias?id=YM_BIAS_ID</a>
<p><a href="https://api.appnexus.com/ym-bias?code=YM_BIAS_CODE"
class="xref"
target="_blank">https://api.appnexus.com/ym-bias?code=YM_BIAS_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__3">View a specific
bias.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__2"><a
href="https://api.appnexus.com/ym-bias?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/ym-bias?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__entry__3">View multiple biases
by ID using a comma-separated list.</td>
</tr>
</tbody>
</table>





<div id="yield-management-bias-service__json_fields"
>

## JSON Fields



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-bias-service__json_fields__entry__1"
class="entry align-center colsep-1 rowsep-1">Field</th>
<th id="yield-management-bias-service__json_fields__entry__2"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th id="yield-management-bias-service__json_fields__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__3">The
unique identifier for a yield management bias.
<p><strong>Default</strong>: Auto-incremented Number (i.e. 123)</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__3">A
optional custom code used to reference a yield management bias.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__3">A name
used to describe a yield management bias.
<p><strong>Default</strong>: <code class="ph codeph">None</code></p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__3">An
optional description how the yield management bias is being used.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__1"><code
class="ph codeph">ym_profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__3">The ID of
the yield management profile that the yield management bias is
associated with. See the <a href="yield-management-profile-service.html"
class="xref">Yield Management Profile Service</a> for details.

<div id="yield-management-bias-service__note_flc_sd4_twb"
class="note note_note">
Note: This ID cannot be changed once it
is set.


<p><strong>Default</strong>: <code class="ph codeph">NULL</code></p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__1"><code
class="ph codeph">profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__3">An
optional <code class="ph codeph">profile_id</code> is used to determine
when to apply a bias. A profile is a generic set of rules for targeting
inventory, and certain biases may only apply to certain slices of
inventory. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> for details.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__1"><code
class="ph codeph">priority</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__3">The
priority field (optional) is used to create a hierarchy of how the bias
should to be applied. Value may be between <code
class="ph codeph">1</code>-<code class="ph codeph">10</code> where
priority <code class="ph codeph">10</code> is treated as the highest
priority value.
<p><strong>Default</strong>: <code class="ph codeph">5</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__1"><code
class="ph codeph">members</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__3">This is
an array specifying the member(s) the yield management bias should be
applied to. See <a
href="yield-management-bias-service.html#yield-management-bias-service__the_members_array"
class="xref">The Members Array</a> below for details.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__1"><code
class="ph codeph">buyer_groups</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-bias-service__json_fields__entry__3">This is
an array specifying the buyer group(s) the yield management bias should
be applied to. See <a
href="yield-management-bias-service.html#yield-management-bias-service__the_buyer_group_array"
class="xref">The Buyer Groups Array</a> below for details.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
</tbody>
</table>



**The Members Array**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-bias-service__json_fields__entry__31"
class="entry colsep-1 rowsep-1">Field</th>
<th id="yield-management-bias-service__json_fields__entry__32"
class="entry colsep-1 rowsep-1">Type</th>
<th id="yield-management-bias-service__json_fields__entry__33"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__31"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__32">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__33">This is
the id of the buyer member (as found in the Platform Member Service) for
which the bias should be applied.
<p><strong>Default</strong>: <code class="ph codeph">None</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__31"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__32">array</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__33">This is
the name of the buyer member.
<p><strong>Default</strong>: N/A</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__31"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__32">enum('percent','cpm')</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__33">This
determines which value to use for the bias, represented as a percentage
or a flat CPM.
<p><strong>Default</strong>: <code
class="ph codeph">"percent"</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__31"><code
class="ph codeph">bias_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__32">double</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__33">This is
the % amount the buyer member should be adjusted by. If bias_pct = 5,
then the net bid will be increased 5%.
<p><strong>Default</strong>: <code class="ph codeph">0.00</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code> (if <code
class="ph codeph">type</code> is 'percent')</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__31"><code
class="ph codeph">bias_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__32">double</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__33">This is
the CPM increase/decrease the buyer member should be adjusted by.
<p><strong>Default</strong>: <code class="ph codeph">NULL</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code> (if <code
class="ph codeph">type</code> is 'cpm')</p></td>
</tr>
</tbody>
</table>

**The Buyer Groups Array**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-bias-service__json_fields__entry__49"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="yield-management-bias-service__json_fields__entry__50"
class="entry colsep-1 rowsep-1">Type</th>
<th id="yield-management-bias-service__json_fields__entry__51"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__49"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__50">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__51">This is
the id of the buyer group for which the bias should be applied.
<p><strong>Default</strong>: <code class="ph codeph">None</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__49"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__50">array</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__51">This is
the name of the buyer group.
<p><strong>Default</strong>: N/A</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__49"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__50">enum('percent','cpm')</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__51">This
determines which value to use for the bias, represented as a percentage
or a flat CPM.
<p><strong>Default</strong>: <code
class="ph codeph">"percent"</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__49"><code
class="ph codeph">bias_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__50">double</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__51">This is
the % amount the buyer member should be adjusted by. If bias_pct = 5,
then the net bid will be increased 5%.
<p><strong>Default</strong>: <code class="ph codeph">0.00</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code> (if <code
class="ph codeph">type</code> is 'percent')</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__49"><code
class="ph codeph">bias_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__50">double</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-bias-service__json_fields__entry__51">This is
the CPM increase/decrease the buyer member should be adjusted by.
<p><strong>Default</strong>: <code class="ph codeph">NULL</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code> (if <code
class="ph codeph">type</code> is 'cpm')</p></td>
</tr>
</tbody>
</table>





## Examples

**View a specific bias**



``` pre
$ curl -b cookies -c cookies  "https://api.appnexus.com/ym-bias?id=1234"
{
    "ym-bias": {
        "member_id": 3,
        "id": 124,
        "name": "Canada Bias",
        "description": "This rule will used to set the bias for a set of demand attributes across Canadian inventory.",
        "profile_id": 1241,
        "priority": 5,
        "ym_profile_id": 1234
        "members": [
                    {
                        "id": 100,
                        "name": "eBay",
                        "type": "percent",
                        "bias_pct": 10
                    },
                    {
                        "id": 256,
                        "name": "MiG",
                        "type": "cpm",
                        "bias_cpm": -0.25
                    }
                ],
        "buyer_groups": [
                    {
                        "id": 120,
                        "name": "Third Party Ad Networks",
                        "type": "percent",
                        "bias_pct": -5
                    },
                    {
                        "id": 153,
                        "name": "Value Ad Networks",
                        "type": "cpm",
                        "bias_cpm": 0.50
                    }
                ]
    }
}
```



**View all biases associated with a given**
<a href="yield-management-profile-service.html"
class="xref"><strong>Yield Management Profile</strong></a>



Note: The first bias in the array below
is not associated with `{{members}}` or `{{buyer_groups}}`, but with a
`{{profile_id}}` (see <a
href="yield-management-bias-service.html#yield-management-bias-service__json_fields"
class="xref">JSON Fields</a> above for details).



``` pre
$ curl -b cookies "https://api.appnexus.com/ym-bias?ym_profile_id=123"
{
 "response": {
  "status": "OK",
  "ym-biases": [
   {
    "priority": 10,
    "member_id": 999,
    "members": null,
    "name": "Low Frequency Bias",
    "last_modified": "2011-02-22 19:26:32",
    "code": null,
    "id": 4,
    "description": null,
    "profile_id": 456,
    "ym_profile_id": 123,
    "buyer_groups": null
   },
   {
    "priority": 5,
    "member_id": 999,
    "members": [
               {
        "id": 890,
        "name": "The one I'm biased slightly against",
        "type": "percent",
        "bias_pct": -5
           }
    ],
    "name": "A secret bias only I can see",
    "last_modified": "2011-07-05 23:32:46",
    "code": null,
    "id": 1575,
    "description": null,
    "profile_id": null,
    "ym_profile_id": 123,
    "buyer_groups": null
   }
  ],
  "start_element": null,
  "count": 2,
  "num_elements": null
 }
}
```






