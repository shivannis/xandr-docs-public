# Member Data Sharing Service

<div class="body">

The Member Data Sharing Service allows you to share your segments with
other platform members. Here's how it works:

1.  You ask the buyer to enable you (the data provider) in Invest DSP.
    The setting they must use to do this is located in the Invest DSP
    <span class="keyword wintitle">Segment Manager</span>, under
    <span class="keyword wintitle">Manage Data Providers</span>.
2.  You create a sharing record for a member that you want to share
    segments with.
3.  In the sharing record, you specify whether you want to share all of
    your segments or a specific list of segments.
4.  The member that you've shared your segments with can then target
    your segments in campaigns (or in the case of bidders, they will be
    sent the segment data with each bid request).

Note that when you remove a segment from a sharing record, the member
cannot add the segment to the targeting profile of any new or existing
campaign. If the member is already targeting the segment in an existing
campaign, however, the campaign will continue to target the segment
until the member manually removes it from the campaign's targeting
profile. Once the segment has been removed, the member will not be able
to add it to the campaign's targeting profile again.

<div class="note">

<span class="notetitle">Note:</span>

- Note that advertiser-level segments cannot be shared. Only
  member/network-level segments can be shared. To move segments from the
  advertiser to network level, you may set advertiser_id to NULL via the
  <a
  href="https://docs.xandr.com/bundle/xandr-api/page/segment-service.html"
  class="xref" target="_blank">Segment Service</a>.
- You can not share segments with buyer members who belong to externally
  integrated DSPs.
- The Member Data Sharing service now works on BOTH
  <span class="ph">Xandr</span>'s API
  (api.<span class="ph">appnexus</span>.com) as well as the impression
  bus API (api.<span class="ph">adnxs</span>.com). Although only
  api.<span class="ph">adnxs</span>.com is used below, it may be
  replaced with api.<span class="ph">appnexus</span>.com for those
  clients who have access to <span class="ph">Xandr</span>'s API. Only
  members who are on <span class="ph">Xandr</span> will have access to
  the API. The majority of data providers can only access the impression
  bus API.

</div>

<div class="section">

## REST API

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d12001e122" class="entry nocellnoborder"
style="vertical-align: top">HTTP Method</th>
<th id="d12001e125" class="entry nocellnoborder"
style="vertical-align: top">Endpoint</th>
<th id="d12001e128" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d12001e122 ">GET</td>
<td class="entry nocellnoborder"
headers="d12001e125 "><a
href="https://api.adnxs.com/member-data-sharing" class="xref"
target="_blank">https://api.<span
class="ph">adnxs</span>.com/member-data-sharing</a></td>
<td class="entry cell-noborder"
headers="d12001e128 ">View all of your existing sharing records.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d12001e122 ">GET</td>
<td class="entry nocellnoborder"
headers="d12001e125 "><a
href="https://api.adnxs.com/member-data-sharing/RECORD_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs</span>.com/member-data-sharing?id=RECORD_ID</a></td>
<td class="entry cell-noborder"
headers="d12001e128 ">View a specific sharing record.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d12001e122 ">GET</td>
<td class="entry nocellnoborder"
headers="d12001e125 "><a
href="https://api.adnxs.com/member-data-sharing?data_member_id=MEMBER_ID&amp;buyer_member_id=CLIENT_MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs</span>.com/member-data-sharing?data_member_id=MEMBER_ID&amp;buyer_member_id=CLIENT_MEMBER_ID</a> where
data_member_id = your member ID, and buyer_member_id = the recipient's
member ID</td>
<td class="entry cell-noborder"
headers="d12001e128 ">Retrieve the sharing record ID using member
ID's.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d12001e122 ">POST</td>
<td class="entry nocellnoborder"
headers="d12001e125 "><a
href="https://api.adnxs.com/member-data-sharing" class="xref"
target="_blank">https://api.<span
class="ph">adnxs</span>.com/member-data-sharing?data_member_id=MEMBER_ID</a>  (sharing
JSON) 
<div class="note">
<span class="notetitle">Note:</span> The member-data-sharing object
cannot be an array if singular.
</div></td>
<td class="entry cell-noborder"
headers="d12001e128 ">Create one sharing record to share segments with
one member.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d12001e122 ">POST</td>
<td class="entry nocellnoborder"
headers="d12001e125 "><a
href="https://api.adnxs.com/member-data-sharing" class="xref"
target="_blank">https://api.<span
class="ph">adnxs</span>.com/member-data-sharings?data_member_id=MEMBER_ID</a> (sharing
JSON) 
<div class="note">
<span class="notetitle">Note:</span> The member-data-sharings (plural)
object must be an array if plural.
</div></td>
<td class="entry cell-noborder"
headers="d12001e128 ">Create multiple sharing records to share segments
with multiple members.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d12001e122 ">PUT</td>
<td class="entry nocellnoborder"
headers="d12001e125 "><a
href="https://api.adnxs.com/member-data-sharing/RECORD_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs</span>.com/member-data-sharing?id=RECORD_ID</a>
<div class="note">
<span class="notetitle">Note:</span>
<ul>
<li>This method removes all existing segments, replacing the segments
with only the newly specified list.</li>
<li>To remove one or more segments from a list, you must replace the
entire list with your intended segments.</li>
</ul>
</div></td>
<td class="entry cell-noborder"
headers="d12001e128 ">Replace the list of segments shared within a
sharing record.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d12001e122 ">PUT</td>
<td class="entry nocellnoborder"
headers="d12001e125 "><a
href="https://api.adnxs.com/member-data-sharing?id=RECORD_ID&amp;append=true"
class="xref" target="_blank">https://api.<span
class="ph">adnxs</span>.com/member-data-sharing?id=RECORD_ID&amp;append=true</a>
<div class="note">
<span class="notetitle">Note:</span> Segments can only be added to the
list using the "append" flag, and not deleted.
</div></td>
<td class="entry cell-noborder"
headers="d12001e128 ">Appending segments from shared segment list within
a sharing record.</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d12001e122 ">DELETE</td>
<td class="entry -nocellborder"
headers="d12001e125 "><a
href="https://api.adnxs.com/member-data-sharing/RECORD_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs</span>.com/member-data-sharing?id=RECORD_ID</a></td>
<td class="entry cellborder"
headers="d12001e128 ">Delete a sharing record.</td>
</tr>
</tbody>
</table>

</div>

<div class="note tip">

<span class="tiptitle">Tip:</span> JSON Structure:

When adding or updating a single sharing record, you should structure
the JSON as a single object called "member_data_sharing". When adding
POST) multiple sharing records, you should structure the JSON as an
array of objects called "member_data_sharings" (note the plural) and
place the sharing data in an array. You cannot update (PUT) multiple
sharing records at the same time. For exact formatting, see the <a
href="member-data-sharing-service.html#ID-00000f2b__member-data-sharing-service-examples"
class="xref">examples</a> below.

</div>

</div>

<div class="section">

## JSON Fields

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d12001e323" class="entry nocellnoborder"
style="vertical-align: top">Field</th>
<th id="d12001e326" class="entry nocellnoborder"
style="vertical-align: top">Type (Length)</th>
<th id="d12001e329" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d12001e323 ">id</td>
<td class="entry nocellnoborder"
headers="d12001e326 ">int</td>
<td class="entry cell-noborder"
headers="d12001e329 ">The ID of the sharing record.
<p><strong>Default</strong>: Auto-generated number  <strong>Required
On</strong>: PUT/DELETE, in query string</p></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d12001e323 ">data_member_id</td>
<td class="entry nocellnoborder"
headers="d12001e326 ">int</td>
<td class="entry cell-noborder"
headers="d12001e329 "><strong>Read-only</strong>. Your member ID.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d12001e323 ">buyer_member_id</td>
<td class="entry nocellnoborder"
headers="d12001e326 ">int</td>
<td class="entry cell-noborder"
headers="d12001e329 ">The ID of the member with whom you are sharing
segments.
<p><strong>Required On</strong>: POST</p></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d12001e323 ">segment_exposure</td>
<td class="entry nocellnoborder"
headers="d12001e326 ">enum</td>
<td class="entry cell-noborder"
headers="d12001e329 ">Whether you share all of your segments or a list
of specific segments with the member. Possible values: "all" or "list". 
If you choose "all", any newly created segments will automatically be
shared with the buyer member. If you create custom segments that should
only be accessible to certain buyers, you should use "list" exposure.
<p><strong>Required On</strong>: POST</p></td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d12001e323 ">segments</td>
<td class="entry -nocellborder"
headers="d12001e326 ">array of objects</td>
<td class="entry cellborder"
headers="d12001e329 ">If segment_exposure is "list", the list of
segments that you are sharing with the member. See the first example
below for formatting.
<p><strong>Required On</strong>: POST/PUT, if segment_exposure is
"list".</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ID-00000f2b__member-data-sharing-service-examples"
class="section">

## Examples

**Share segments with members 103 and 104**

``` pre
$ cat data_share_multiple
{
    "member_data_sharings": [
        {
            "buyer_member_id": 103,
            "segment_exposure": "all"
        },
        {
            "buyer_member_id": 104,
            "segment_exposure": "list",
            "segments": [
                {
                    "id": 121175
                },
                {
                    "id": 121176
                },
                {
                    "id": 121177
                },
                {
                    "id": 121178
                }
            ]
        }
    ]
}
$ curl -b cookies -c cookies -X POST -d @data_share_multiple 'https://api.adnxs.com/member-data-sharing?data_member_id=1432'
{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": null,
        "num_elements": null,
        "id": [
            54,
            55
        ],
        "member_data_sharings": {
            "54": {
                "id": 54,
                "data_member_id": 1432,
                "buyer_member_id": 103,
                "segment_exposure": "all",
                "segments": null
            },
            "55": {
                "id": 55,
                "data_member_id": 1432,
                "buyer_member_id": 104,
                "segment_exposure": "list",
                "segments": [
                    {
                        "id": 121175,
                        "name": "Segment share 1"
                    },
                    {
                        "id": 121176,
                        "name": "Segment share 2"
                    },
                    {
                        "id": 121177,
                        "name": "Segment share 3"
                    },
                    {
                        "id": 121178,
                        "name": "Segment share 4"
                    }
                ]
            }
        },
        "dbg": {
        ...
        }
    }
}
```

**Share segments with member 105**

``` pre
$ cat data_share_single
{
    "member_data_sharing": {
        "buyer_member_id": 105,
        "segment_exposure": "all"
    }
}
$ curl -b cookies -c cookies -X POST -d @data_share_single 'https://api.adnxs.com/member-data-sharing?data_member_id=1432'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "id": "56",
        "member_data_sharing": {
            "id": 56,
            "data_member_id": 1432,
            "buyer_member_id": 105,
            "segment_exposure": "all",
            "segments": null
        },
        "dbg": {
            ...
        }
    }
    }
```

**Update the sharing record for member 104**

In this example, the PUT request adds segment 121179 to sharing record
55 (the sharing record for member 104).

``` pre
$ cat data_share_update
{
    "member_data_sharing": {
        "segments": [
            {
                "id": 121175
            },
            {
                "id": 121176
            },
            {
                "id": 121177
            },
            {
                "id": 121178
            },
            {
                "id": 121179
            }
        ]
    }
}
$ curl -b cookies -c cookies -X PUT -d @data_share_update 'https://api.adnxs.com/member-data-sharing?id=55'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "id": 55,
        "member_data_sharing": {
            "id": 55,
            "data_member_id": 1432,
            "buyer_member_id": 104,
            "segment_exposure": "list",
            "segments": [
                {
                    "id": 121175,
                    "name": "test for sharing"
                },
                {
                    "id": 121176,
                    "name": "test for sharing2"
                },
                {
                    "id": 121177,
                    "name": "test for sharing3"
                },
                {
                    "id": 121178,
                    "name": "test for sharing4"
                },
                {
                    "id": 121179,
                    "name": "test for sharing4"
                }
            ]
        },
        "dbg": {
            ...
        }
    }
}       
```

**View all of your sharing records**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/member-data-sharing'
{
    "response": {
        "status": "OK",
        "count": 5,
        "start_element": null,
        "num_elements": null,
        "member_data_sharings": [
            {
                "id": 46,
                "data_member_id": 1432,
                "buyer_member_id": 100,
                "segment_exposure": "all",
                "segments": null
            },
            {
                "id": 52,
                "data_member_id": 1432,
                "buyer_member_id": 101,
                "segment_exposure": "all",
                "segments": null
            },
            {
                "id": 53,
                "data_member_id": 1432,
                "buyer_member_id": 102,
                "segment_exposure": "all",
                "segments": null
            },
            {
                "id": 54,
                "data_member_id": 1432,
                "buyer_member_id": 103,
                "segment_exposure": "all",
                "segments": null
            },
            {
                "id": 55,
                "data_member_id": 1432,
                "buyer_member_id": 104,
                "segment_exposure": "list",
                "segments": [
                    {
                        "id": 121175,
                        "name": "Segment share 1"
                    },
                    {
                        "id": 121176,
                        "name": "Segment share 2"
                    },
                    {
                        "id": 121177,
                        "name": "Segment share 3"
                    },
                    {
                        "id": 121178,
                        "name": "Segment share 4"
                    },
                    {
                        "id": 121179,
                        "name": "Segment share 5"
                    }
                ]
            },
            {
                "id": 56,
                "data_member_id": 1432,
                "buyer_member_id": 105,
                "segment_exposure": "all",
                "segments": null
            }
        ],
        "dbg": {
            ...
        }
    }
}    
```

**View sharing record 55**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/member-data-sharing?id=55'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "member_data_sharing": {
            "id": 55,
            "data_member_id": 1432,
            "buyer_member_id": 104,
            "segment_exposure": "list",
            "segments": [
                {
                    "id": 121175,
                    "name": "Segment share 1"
                },
                {
                    "id": 121176,
                    "name": "Segment share 2"
                },
                {
                    "id": 121177,
                    "name": "Segment share 3"
                },
                {
                    "id": 121178,
                    "name": "Segment share 4"
                },
                {
                    "id": 121179,
                    "name": "Segment share 5"
                }
            ]
        },
        "dbg": {
            ...
        }
    }
}  
```

</div>

</div>

<div class="related-links">

- **[Member Data Sharing Service - Sample PHP
  Scripts](member-data-sharing-service-sample-php-scripts.html)**  

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="data-sharing.html" class="link">Data Sharing</a>

</div>

</div>

</div>
