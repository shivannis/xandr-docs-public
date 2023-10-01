---
Title : Identity Type Participant Service
Description : Note: This service currently is in
Alpha. It is still under development and may be subject to change
---


# Identity Type Participant Service







Note: This service currently is in
Alpha. It is still under development and may be subject to change
without notice. Contact your Microsoft Account Representative to get
enabled.





The identity type participant service in Identity Management Framework
allows identity framework participants to manage permissions for all
identity solutions that they are leveraging. With the identity type
participant service, each publisher participant can:

- choose the external bidder(s) permitted to access their identifier,
  and
- determine the partner(s) on the platform that are entitled to receive
  the identifier's value within their log data feeds.



## REST API

<table id="identity-type-participant-services__table_nmm_2tz_jyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="identity-type-participant-services__table_nmm_2tz_jyb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="identity-type-participant-services__table_nmm_2tz_jyb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="identity-type-participant-services__table_nmm_2tz_jyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td rowspan="5" class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type-participant" class="xref"
target="_blank">https://api.appnexus.com/identity-type-participant</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__3">View
all the participants in the platform.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1"
class="xref"
target="_blank">https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__3">View
details of a participants of a specific identifier. Here, <code
class="ph codeph">IDENTITY_ID1</code> of the identifier is passed as
query string in the method.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1,IDENTITY_ID2,IDENTITY_ID3"
class="xref"
target="_blank">https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1,IDENTITY_ID2,IDENTITY_ID3</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__3">View
participants mapped to multiple identifiers using a comma-separated
list.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1&amp;participant_member_id=MEMBER_ID1"
class="xref"
target="_blank">https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1&amp;participant_member_id=MEMBER_ID1</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__3">View
participants mapped to an identifier and filters by a member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1&amp;participant_member_id=MEMBER_ID1,MEMBER_ID2,MEMBER_ID3"
class="xref"
target="_blank">https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1&amp;participant_member_id=MEMBER_ID1,MEMBER_ID2,MEMBER_ID3</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__3">View
participants that are mapped to an identifier and filters by multiple
members.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1"
class="xref"
target="_blank">https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__3">Add
an identity type participant under a specific identifier. Here, <code
class="ph codeph">IDENTITY_ID1</code> is an example of an identifier of
the publisher participant.
<ul>
<li>Participant and Microsoft admin only field</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1"
class="xref"
target="_blank">https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__3">Update
an existing identity type participant details.
<ul>
<li>Participant and Microsoft admin only field.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1&amp;participant_member_id=MEMBER_ID1"
class="xref"
target="_blank">https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID1&amp;participant_member_id=MEMBER_ID1</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_nmm_2tz_jyb__entry__3">Delete
an existing identity type participant.
<ul>
<li>Participant and Microsoft admin only field.</li>
</ul></td>
</tr>
</tbody>
</table>



<div id="identity-type-participant-services__section_ivd_5tz_jyb"
>

## JSON Fields

**Registration fields for ldentity Type Participant**



<table id="identity-type-participant-services__table_s2g_wtz_jyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="identity-type-participant-services__table_s2g_wtz_jyb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="identity-type-participant-services__table_s2g_wtz_jyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="identity-type-participant-services__table_s2g_wtz_jyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_s2g_wtz_jyb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_s2g_wtz_jyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_s2g_wtz_jyb__entry__3">Microsoft
created ID of the identity type participant.
<ul>
<li><strong>Read Only</strong></li>
<li><strong>Required On</strong>: POST, PUT, and DELETE</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_s2g_wtz_jyb__entry__1"><code
class="ph codeph">participant_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_s2g_wtz_jyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_s2g_wtz_jyb__entry__3">The
member ID to which the identity type participant belong.
<ul>
<li><strong>Required On</strong>: POST, PUT, and DELETE</li>
</ul></td>
</tr>
</tbody>
</table>





**The control settings for an Identity Type Participant Service**

<table id="identity-type-participant-services__table_utr_vsm_lyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="identity-type-participant-services__table_utr_vsm_lyb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="identity-type-participant-services__table_utr_vsm_lyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="identity-type-participant-services__table_utr_vsm_lyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_utr_vsm_lyb__entry__1"><code
class="ph codeph">external_bidder_control</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_utr_vsm_lyb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_utr_vsm_lyb__entry__3">Setting
that enables sending of identifiers to the external bidders and
specifies the eligible ones. For more information, see <a
href="#identity-type-participant-services__1" class="xref">External
Bidder Control</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_utr_vsm_lyb__entry__1"><code
class="ph codeph">lld_exposure_control</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_utr_vsm_lyb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_utr_vsm_lyb__entry__3">Setting
that configures if the identifier can be utilized in log-level data
(LLD) and determine the authorized recipients. For more information, see
<a href="#identity-type-participant-services__2" class="xref">Log Level
Data Exposure Control</a> below.</td>
</tr>
</tbody>
</table>

**External Bidder Control**

The master setting to control if the identifier can be sent to the
external bidders and specifies the eligible external bidders. This field
defines default list of bidders who will be receiving the newly
registered source and identifier. By default, member participants can
use the bidders defined at the identifier level.

<table id="identity-type-participant-services__table_xcw_xpq_pyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="identity-type-participant-services__table_xcw_xpq_pyb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="identity-type-participant-services__table_xcw_xpq_pyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="identity-type-participant-services__table_xcw_xpq_pyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_xcw_xpq_pyb__entry__1"><code
class="ph codeph">allow_bidders</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_xcw_xpq_pyb__entry__2">string </td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_xcw_xpq_pyb__entry__3">External
bidders' members enabled to recieve the identifier: 

Options:
<ul>
<li><code class="ph codeph">“use_master_settings”</code></li>
<li><code class="ph codeph">“none”</code></li>
<li><code class="ph codeph">“include_subset”</code></li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_xcw_xpq_pyb__entry__1"><code
class="ph codeph">external_bidder_list</code> </td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_xcw_xpq_pyb__entry__2">array
of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_xcw_xpq_pyb__entry__3">List
of member_id enabled for: <code
class="ph codeph">“include_subset”</code>. </td>
</tr>
</tbody>
</table>

**Log Level Data Exposure Control**

The participant setting to regulate if the identifier can be utilized in
log-level data (LLD) and determine the authorized recipients. This field
defines the list of members who will be able to see actual ID values in
LLD feed for the newly registered source and identifier. By default,
member participants can use the members defined at the identifier
level. 

<table id="identity-type-participant-services__table_asn_ylr_pyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="identity-type-participant-services__table_asn_ylr_pyb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="identity-type-participant-services__table_asn_ylr_pyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="identity-type-participant-services__table_asn_ylr_pyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_asn_ylr_pyb__entry__1"><code
class="ph codeph">lld_exposure_allowed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_asn_ylr_pyb__entry__2">string </td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_asn_ylr_pyb__entry__3">Members
enabled to receive identifier values in LLD    

Options:
<ul>
<li><code class="ph codeph">“use_master_settings”</code></li>
<li><code class="ph codeph">“none”</code></li>
<li><code class="ph codeph">“include_subset”</code></li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_asn_ylr_pyb__entry__1"><code
class="ph codeph">exposure_member_list</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_asn_ylr_pyb__entry__2">array
of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-participant-services__table_asn_ylr_pyb__entry__3">List
of member_id enabled for: <code
class="ph codeph">“include_subset”</code>. </td>
</tr>
</tbody>
</table>

<div id="identity-type-participant-services__section_yr2_d5z_jyb"
>

## Example

**Create an identity type participant**

``` pre
$ cat identity_type_participant.json
{
  "identity_type_particpant": {
    "id": 103,
    "participant_member_id": "113",
    "external_bidder_control": {
      "allow_bidders": "use_master_settings",
      "external_bidder_list": []
    },
    "lld_exposure_control": {
      "lld_exposure_allowed": "include_subset",
      "exposure_member_list": [
        312
      ]
    }
  }
}
$ curl -b cookie -c cookie -X POST  'https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID001'
{
    "response": {
        "status":"OK",
        "id":103
        }
}
```

**View details of an identity type participant**

``` pre
$ curl -b cookie -c cookie 'https://api.appnexus.com/identity-type-participant?id=IDENTITY_ID001&participant_member_id=113'
{
    "response": {
        "status":"OK",
        "identity_type_particpant": {
              "id": 103,
              "participant_member_id": "113",
              "external_bidder_control": {
                    "allow_bidders": "use_master_settings",
                    "external_bidder_list": []
                  },
                "lld_exposure_control": {
                    "lld_exposure_allowed": "include_subset",
                    "exposure_member_list": [312]
                  }
               }
          }
}
```



<div id="identity-type-participant-services__section_exm_g5z_jyb"
>

## Related Topics

- <a href="identity-type-service.html" class="xref">Identity Type
  Service</a>






