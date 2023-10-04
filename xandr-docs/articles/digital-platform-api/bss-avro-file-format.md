---
Title : BSS Avro File Format
Description : <div id="buy-side-service-template__BSSAvroFileFormat-Schema"
>
## Schema
Batch Segment Service (BSS) accepts input files in Apache Avro Object
Container Files (OCF) format. BSS OCF file should contain records
---


# BSS Avro File Format



<div id="buy-side-service-template__BSSAvroFileFormat-Schema"
>

## Schema

Batch Segment Service (BSS) accepts input files in Apache Avro Object
Container Files (OCF) format. BSS OCF file should contain records
encoded using BSS Avro schema. These records represent a user id and a
list of associated segments.

<div id="buy-side-service-template__note_r4s_nsw_5wb"


Note:

- Copy BSS schema into a file `bss-user.avsc`

For details about Avro OCF file format, go to
<a href="https://avro.apache.org/docs/" class="xref"
target="_blank">Apache Avro Documentation</a>.



**BSS Avro Schema**

**Schema details**

``` pre
{
        "name": "user",
        "type": "record",
        "fields": [
            {
                "name": "uid",
                "doc": "A record describing the type of identifier being onboarded",
                "type": [
                    {
                        "name": "anid",
                        "type": "long",
                        "doc": "Xandr user ID."
                    },
                    {
                        "name": "eid",
                        "type": "record",
                        "doc": "Extended ID - the type of universal ID or publisher ID being onboarded",
                        "fields": [
                            {
                                "name": "source",
                                "type": "string",
                                "doc": "Permitted identity sources. Refer to documentation for permitted sources"
                            },
                            {
                                "name": "id",
                                "type": "string",
                                "doc": "The value of the identifier"
                            }
                        ]
                    },
                    {
                        "name": "ifa",
                        "type": "record",
                        "doc": "Identifier for Advertising - indicates the device type being onboarded",
                        "fields": [
                            {
                                "name": "id",
                                "type": "string",
                                "doc": "IFA in UUID format."
                            },
                            {
                                "name": "type",
                                "type": "string",
                                "doc": "IFA type."
                            }
                        ]
                    },
                    {
                        "name": "external_id",
                        "type": "record",
                        "doc": "Used to onboard member-defined identifiers",
                        "fields": [
                            {
                                "name": "id",
                                "type": "string",
                                "doc": "The member-defined identifier being onboarded"
                            },
                            {
                                "name": "member_id",
                                "type": "int",
                                "doc": "Owner member ID.",
                                "default": 0
                            }
                        ]
                    },
                    {
                        "name": "device_id",
                        "type": "record",
                        "doc": "Has similar utility as ifa (Identifier for Advertising) and indicates the device type being onboarded",
                        "fields": [
                            {
                                "name": "id",
                                "type": "string",
                                "doc": "The device identifier being onboarded"
                            },
                            {
                                "name": "domain",
                                "type": {
                                    "name": "domain",
                                    "type": "enum",
                                    "doc": "Mobile device domain.",
                                    "symbols": [
                                        "idfa",
                                        "sha1udid",
                                        "md5udid",
                                        "openudid",
                                        "aaid",
                                        "windowsadid",
                                        "rida"
                                    ]
                                }
                            }
                        ]
                    }
                ]
            },
            {
                "name": "segments",
                "doc": "Array of segments.",
                "type": {
                    "type": "array",
                    "doc": "Elements of the segments array.",
                    "items": {
                        "name": "segment",
                        "type": "record",
                        "fields": [
                            {
                                "name": "id",
                                "type": "int",
                                "doc": "Segment ID. Alternatively, pair of code and member_id can be used.",
                                "default": 0
                            },
                            {
                                "name": "code",
                                "type": "string",
                                "doc": "Segment code. Requires segment.member_id.",
                                "default": ""
                            },
                            {
                                "name": "member_id",
                                "type": "int",
                                "doc": "Segment member ID. Requires segment.code.",
                                "default": 0
                            },
                            {
                                "name": "expiration",
                                "type": "int",
                                "doc": "Segment expiration in minutes. 0: max expiration (180 days); -2: default expiration; -1: segment removal.",
                                "default": 0
                            },
                            {
                                "name": "timestamp",
                                "type": "long",
                                "doc": "Defines when segment becomes 'live'. Timestamp in seconds from epoch. 0 enables segment immediately",
                                "default": 0
                            },
                            {
                                "name": "value",
                                "type": "int",
                                "doc": "User provided value associated with the segment.",
                                "default": 0
                            }
                        ]
                    }
                }
            }
        ]
    }
```



<div id="buy-side-service-template__BSSAvroFileFormat-User-SegmentsRecord"
>

## User-Segments Record

A user record has two top level elements:

- User ID (`uid`)
- array of segments

**User ID**

User ID is an Avro union and can be one of `anid`, `eid`, `ifa`,
`external_id` or `device_id`.

<table id="buy-side-service-template__table_wcd_vsw_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_wcd_vsw_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_wcd_vsw_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_wcd_vsw_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
<th id="buy-side-service-template__table_wcd_vsw_5wb__entry__4"
class="entry align-left colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__1"><code
class="ph codeph">anid</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__2">long
(64-bit)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__3">Xandr
ID, also known as <code class="ph codeph">user_id_64.</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__4"><p>Example
of user id in Java avro-tools JSON format:</p>
<pre class="pre codeblock"><code>{&quot;uid&quot;:{&quot;long&quot;:12345},&quot;segments&quot;:[...]}</code></pre>

<div id="buy-side-service-template__note_uwc_ptw_5wb"
class="note note_note">
Note:
<p>Segments array is required but omited in this example for
clarity.</p>
<p>Other toolkits and libraries can have different record format.</p>

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__1"><code
class="ph codeph">eid</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__2">record</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__3"><p>Extended
ID - indicates the type of universal ID or publisher ID being onboarded.
The eid record consists of two fields:</p>
<ul>
<li><strong><code class="ph codeph">source</code></strong> (string) -
Source of the ID. Permitted values are <code
class="ph codeph">liveramp.com</code>, <code
class="ph codeph">netid.de</code>, and <code
class="ph codeph">permissioned member-defined sources.</code></li>
<li><strong><code class="ph codeph">id</code></strong> (string) -
Publisher or industry ID.</li>
</ul></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__4"><pre
class="pre codeblock"><code>{&quot;uid&quot;:{&quot;eid&quot;:{&quot;source&quot;:&quot;liveramp.com&quot;,&quot;id&quot;:&quot;XYZ123&quot;}},&quot;segments&quot;:[...]}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__1"><code
class="ph codeph">ifa</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__2">record</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__3"><p>Identifier
for Advertising - indicates the device type being onboarded. The <code
class="ph codeph">ifa</code> record consists of two fields:</p>
<ul>
<li><strong><code class="ph codeph">type</code></strong> (string) - Type
of ID.</li>
<li><strong><code class="ph codeph">id</code></strong> (string) - IFA
ID, representing the IFA in UUID format.</li>
</ul></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__4"><pre
class="pre codeblock"><code>{&quot;uid&quot;:{&quot;ifa&quot;:{&quot;id&quot;:&quot;99136473264876328&quot;,&quot;type&quot;:&quot;atif&quot;}},&quot;segments&quot;:[...]}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__1"><code
class="ph codeph">external_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__2">record</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__3"><p>External
ID - indicates Member defined identifier being onboarded. The <code
class="ph codeph">external_id</code> record consists of two fields:</p>
<ul>
<li><strong><code class="ph codeph">member_id</code></strong> (int) -
Member ID of the member who owns the <code
class="ph codeph">external_id.</code></li>
<li><p><strong><code class="ph codeph">id</code></strong> (string) -
corresponding value of the</p>
<pre id="buy-side-service-template__codeblock_ddd_vsw_5wb"
class="pre codeblock"><code>member_id.</code></pre></li>
</ul></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__4"><pre
class="pre codeblock"><code>{&quot;uid&quot;:{&quot;external_id&quot;:{&quot;id&quot;:&quot;clientid1&quot;,&quot;member_id&quot;:958}},&quot;segments&quot;:[...]}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__1"><code
class="ph codeph">device_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__2">record</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__3"><p>Similar
utility as <code class="ph codeph">ifa</code> (Identifier for
Advertising). It indicates the Mobile device type being onboarded. The
<code class="ph codeph">device_id</code> record consists of two
fields:</p>
<ul>
<li><code class="ph codeph">domain</code> (enum) - Possible values are
<code class="ph codeph">idfa</code>, <code
class="ph codeph">sha1udid</code>, <code
class="ph codeph">md5udid</code>, <code
class="ph codeph">openudid</code>, <code class="ph codeph">aaid</code>,
<code class="ph codeph">windowsadid</code> and <code
class="ph codeph">rida.</code></li>
<li><code class="ph codeph">id</code> (string).</li>
</ul></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wcd_vsw_5wb__entry__4"><pre
class="pre codeblock"><code>{&quot;uid&quot;:{&quot;device_id&quot;:{&quot;id&quot;:&quot;958cba26-f338-43f3-8bb0-ed821582daae&quot;,&quot;domain&quot;:&quot;idfa&quot;}},&quot;segments&quot;:</code></pre></td>
</tr>
</tbody>
</table>

**Segments**

Segments are the second element of user record. It contains array of
`segment` elements. A `segment` is of type "record", and it defines
metadata associated with the segment. The fields of `segment` are:

<table id="buy-side-service-template__table_u45_wtw_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_u45_wtw_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_u45_wtw_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_u45_wtw_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__3">Xandr
segment ID.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__3">Xandr
segment code.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__3">Member
ID of the segment. Required when code is specified.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__1"><code
class="ph codeph">expiration</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__3"><p>Segment
expiration in minutes. Set to:</p>
<ul>
<li><code class="ph codeph"> 0</code> for maximum expiration (180
days).</li>
<li><code class="ph codeph">-1</code> for segment removal.</li>
<li><code class="ph codeph">-2</code> for default member
expiration.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__1"><code
class="ph codeph">timestamp</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__2">long</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__3">Segment
activation time in seconds from epoch. It specifies when segment becomes
'live'. Set to <code class="ph codeph">0</code> to activate the segment
immediately.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_u45_wtw_5wb__entry__3">Segment
value.</td>
</tr>
</tbody>
</table>

**Example**



A record with `anid` and one segment:

``` pre
{"uid":{"long":12345},"segments":[{"id":123,"code":"","member_id":0,"expiration":0,"timestamp":0,"value":0}]}
```





<div id="buy-side-service-template__BSSAvroFileFormat-GeneratingAvroFileUsingJavaavro-tools"
>

## Generating Avro File Using Java avro-tools

This example demonstrates how to generate Avro file using Apache
avro-tools library.

- Download Java Apache avro-tools using below command:

``` pre
wget https://downloads.apache.org/avro/stable/java/avro-tools-1.11.1.jar
```

- Copy following records into file `sample.json`

``` pre
{"uid":{"long":12345},"segments":[{"id":123,"code":"","member_id":0,"expiration":0,"timestamp":0,"value":0}]}
{"uid":{"external_id":{"id":"clientid1","member_id":958}},"segments":[{"id":123,"code":"","member_id":0,"expiration":0,"timestamp":0,"value":0}]}
{"uid":{"ifa":{"id":"99136473264876328","type":"atif"}},"segments":[{"id":123,"code":"","member_id":0,"expiration":0,"timestamp":0,"value":0}]}
{"uid":{"device_id":{"id":"958cba26-f338-43f3-8bb0-ed821582daae","domain":"idfa"}},"segments":[{"id":123,"code":"","member_id":0,"expiration":0,"timestamp":0,"value":0}]}
{"uid":{"eid":{"source":"liveramp.com","id":"123123123"}},"segments":[{"id":123,"code":"","member_id":0,"expiration":0,"timestamp":0,"value":0}]}
```

<div id="buy-side-service-template__note_zsn_m5w_5wb"


Note:

This file is not a real JSON. It has multiple lines where each line
represents a user record in JSON format.



- Copy BSS schema into a file `bss-user.avsc`

- Run below commands to generate an Avro file:

**Without Compression:**

``` pre
java -jar avro-tools-1.11.1.jar fromjson --schema-file bss-user.avsc sample.json > sample.avro
```

**With Snappy Compression:**

``` pre
java -jar avro-tools-1.11.1.jar fromjson --codec snappy --schema-file bss-user.avsc sample.json > sample.avro
```

- Upload `sample.avro` using BSS API or by putting it in S3 bucket.
- Check the job status using <a
  href="https://docs.xandr.com/bundle/xandr-api/page/uploading-segment-data-using-bss.html"
  class="xref" target="_blank">BSS API</a>.



<div id="buy-side-service-template__BSSAvroFileFormat-ReducedSchema"
>

## Reduced Schema

Users can use reduced schema, if they don't need to submit the full
variety of IDs. Some ID types & fields can be removed, and these removed
fields will use default values. Reduced schema should be a subset of the
<a
href="https://docs.xandr.com/bundle/xandr-api/page/bss-avro-file-format.html#BSSAvroFileFormat-BSSSchema"
class="xref" target="_blank">BSS Schema</a>, i.e., element names and
positions should match exactly.

Below is an example of reduced schema which allows generating records
with `anid,` and list of segments containing the only `id` and
`expiration` fields. Other segment fields like `value`, `timestamp`,
`member_id`, `code`, etc. will have default values.

``` pre
{
   "name":"user",
   "type":"record",
   "fields":[
      {
         "name":"uid",
         "type":[
            {
               "name":"anid",
               "type":"long"
            }
         ]
      },
      {
         "name":"segments",
         "type":{
            "type":"array",
            "items":{
               "name":"segment",
               "type":"record",
               "fields":[
                  {
                     "name":"id",
                     "type":"int",
                     "default":0
                  },
                  {
                     "name":"expiration",
                     "type":"int",
                     "default":0
                  }
               ]
            }
         }
      }
   ]
   } 
```



<div id="buy-side-service-template__section_pzd_gww_5wb"
>

## Differences Between Avro Generators Implementations

**Python Avro Library**

Python Avro library does not use uid union type names. Instead, it
determines the uid type by full match of field names. Also,
`DataFileWriter.append()` accepts a python dictionary (`dict`) type, not
a JSON.

**Example**

``` pre
writer.append({'uid': 64, 'segments': []})
writer.append({'uid': {'id': 'exitd1', 'member_id': 914}, 'segments': []})
writer.append({'uid': {'id': 'qweqeqweq', 'domain': 'idfa'}, 'segments': []})
```

Here, parameter for `DataFileWriter.append()` method is a Python `dict`,
not a JSON.

**Python Fast Avro Library**

Python Fast Avro library uses hints to specify exact type of `uid`.

**Example**

``` pre
{'uid': ('external_id', {'id':'exitd1', 'member_id': 914}), 'segments': [{'expiration': 259200, 'id': 25815407}]}
```






