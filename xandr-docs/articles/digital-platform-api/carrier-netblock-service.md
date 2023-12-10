---
Title : Carrier Netblock Service
Description : This admin-only service can be used to map blocks of IP addresses to
ms.date: 10/28/2023
ms.custom: digital-platform-api
internet providers, enabling advertisers with mobile campaigns to target
specific internet providers.
---


# Carrier Netblock Service



This admin-only service can be used to map blocks of IP addresses to
internet providers, enabling advertisers with mobile campaigns to target
specific internet providers.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001299__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001299__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001299__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__2"><a
href="https://api.appnexus.com/carrier-netblock" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/carrier-netblock</a>
<p>(add_mapping JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__3">Add
a new carrier-netblock mapping</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__2"><a
href="https://api.appnexus.com/carrier-netblock?id=CARRIER_NETBLOCK_MAPPING_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/carrier-netblock?id=CARRIER_NETBLOCK_MAPPING_ID</a>
<p>(update_mapping JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__3">Modify an existing carrier-netblock
mapping</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__2"><a
href="https://api.appnexus.com/carrier-netblock" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/carrier-netblock</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__3"><p>View all carrier-netblock
mappings</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__2"><a
href="https://api.appnexus.com/carrier-netblock?id=CARRIER_NETBLOCK_MAPPING_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/carrier-netblock?id=CARRIER_NETBLOCK_MAPPING_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__3">View
a specific carrier-netblock mapping</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__2"><a
href="https://api.appnexus.com/carrier-netblock?id=CARRIER_NETBLOCK_MAPPING_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/carrier-netblock?id=CARRIER_NETBLOCK_MAPPING_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__3">Delete a carrier-netblock mapping</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__2"><a
href="https://api.appnexus.com/carrier-netblock/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/carrier-netblock/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001299__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001299__entry__23"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001299__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__24">The
ID of the carrier-netblock mapping.
<p><strong>Default:</strong> Auto-generated number.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__22"><code
class="ph codeph">carrier_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__24">The
ID of the internet carrier. You can use the <a
href="xandr-bidders/carrier-service.md"
class="xref" target="_blank">Carrier Service</a> to see the list of
available carriers and their ID's.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__22"><code
class="ph codeph">start_ip</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__24">The
IP address at the start of the range of IP addresses you wish to map.
This value must be entered as a flattened integer. Please convert the IP
address using a tool such as <a
href="http://www.smartconversion.com/unit_conversion/IP_Address_Converter.aspx"
class="xref" target="_blank">this</a>, in order to get a flattened
integer to <code class="ph codeph">POST</code> or <code
class="ph codeph">PUT</code>.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__22"><code
class="ph codeph">end_ip</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__24">The
IP address at the end of the range of IP addresses you wish to map.
Please convert the IP address using a tool such as <a
href="http://www.smartconversion.com/unit_conversion/IP_Address_Converter.aspx"
class="xref" target="_blank">this</a>, in order to get a flattened
integer to <code class="ph codeph">POST</code> or <code
class="ph codeph">PUT</code>.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__22"><code
class="ph codeph">notes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__24">Any
notes relevant to the carrier-netblock mapping.
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__22"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001299__entry__23">date</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001299__entry__24">The
date and time on which the carrier-netblock mapping was last
modified.</td>
</tr>
</tbody>
</table>





## Examples

**Add a carrier-netblock mapping**

``` pre
$ cat add_mapping

{
        "carrier-netblock": {
             "carrier_id": 26,
             "start_ip": "2886794753",
             "end_ip": "4294967295"                
        }
}
```

``` pre
$ curl -b cookies -c cookies -X POST -d @add_mapping.json "https://api.appnexus.com/carrier-netblock"
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": 11829,
    "start_element": 0,
    "num_elements": 100,
    "carrier-netblock": {
      "id": 11829,
      "carrier_id": 26,
      "start_ip": 2886794753,
      "end_ip": 4294967295,
      "notes": null,
      "last_activity": "2013-09-12 13:47:04"
    },
  }
}
```

**Update a carrier-netblock mapping**

``` pre
$ cat update_mapping

{
        "carrier-netblock": {
             "start_ip": "3221225471",
             "end_ip": "4294967295"               
        }
}
```

``` pre
$ curl -b cookies -c cookies -X PUT -d @update_mapping.json "https://api.appnexus.com/carrier-netblock?id=11829"
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": "11829",
    "start_element": 0,
    "num_elements": 100,
    "carrier-netblock": {
      "id": 11829,
      "carrier_id": 26,
      "start_ip": 3221225471,
      "end_ip": 4294967295,
      "notes": null,
      "last_activity": "2013-09-12 14:55:28"
    },
  }
}
```

**View all carrier-netblock mappings**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/carrier-netblock"
{
  "response": {
    "status": "OK",
    "count": 6950,
    "start_element": 0,
    "num_elements": 100,
    "carrier-netblocks": [
      {
        "id": 4,
        "carrier_id": 165,
        "start_ip": 3452776960,
        "end_ip": 3452777215,
        "notes": "Seed",
        "last_activity": "2013-08-07 20:49:55"
      },
      {
        "id": 5,
        "carrier_id": 165,
        "start_ip": 3452811776,
        "end_ip": 3452812031,
        "notes": "Seed",
        "last_activity": "2013-08-07 20:49:55"
      },
      {
        "id": 6,
        "carrier_id": 165,
        "start_ip": 3517383936,
        "end_ip": 3517384191,
        "notes": "Seed",
        "last_activity": "2013-08-07 20:49:55"
      },
      {
        "id": 46,
        "carrier_id": 14,
        "start_ip": 68665344,
        "end_ip": 68665351,
        "notes": "Seed",
        "last_activity": "2012-11-27 16:11:25"
      },
      {
        "id": 48,
        "carrier_id": 14,
        "start_ip": 204593600,
        "end_ip": 204593615,
        "notes": "Seed",
        "last_activity": "2012-11-27 16:11:25"
      },
      {
        "id": 51,
        "carrier_id": 14,
        "start_ip": 214464808,
        "end_ip": 214464815,
        "notes": "Seed",
        "last_activity": "2012-11-27 16:11:25"
      },
 ...
      {
        "id": 1219,
        "carrier_id": 151,
        "start_ip": 3582880768,
        "end_ip": 3582885887,
        "notes": "Seed",
        "last_activity": "2013-05-15 15:15:00"
      },
      {
        "id": 1220,
        "carrier_id": 151,
        "start_ip": 3584180736,
        "end_ip": 3584180991,
        "notes": "Seed",
        "last_activity": "2013-05-15 15:15:00"
      },
      {
        "id": 1221,
        "carrier_id": 151,
        "start_ip": 3584181248,
        "end_ip": 3584182015,
        "notes": "Seed",
        "last_activity": "2013-05-15 15:15:00"
      },
      {
        "id": 1252,
        "carrier_id": 199,
        "start_ip": 44040192,
        "end_ip": 45088767,
        "notes": "Seed",
        "last_activity": "2013-05-15 15:18:07"
      },
      {
        "id": 1255,
        "carrier_id": 199,
        "start_ip": 1050537728,
        "end_ip": 1050537731,
        "notes": "Seed",
        "last_activity": "2013-05-15 15:18:07"
      }
    ],
  }
}
```

**View a specific carrier-netblock mapping**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/carrier-netblock?id=46"
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "carrier-netblock": {
      "id": 46,
      "carrier_id": 14,
      "start_ip": 68665344,
      "end_ip": 68665351,
      "notes": "Seed",
      "last_activity": "2012-11-27 16:11:25"
    },
  }
}
```






