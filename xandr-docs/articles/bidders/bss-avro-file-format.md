---
Title : BSS Avro File Format
Description : <div id="ID-0000a525__section_tt1_pyh_czb" >
## **BSS AVRO File Format**
This document covers how to prepare your audience files using the AVRO
file format and onboard the data into the platform. **AVRO is required
---


# BSS Avro File Format



<div id="ID-0000a525__section_tt1_pyh_czb" >

## **BSS AVRO File Format**

This document covers how to prepare your audience files using the AVRO
file format and onboard the data into the platform. **AVRO is required
to upload audiences containing extended ID’s and publisher-provided
ID’s**, and the legacy BSS file format does not support newer user ID
types.

- Segments can be created through the <a
  href="https://docs.xandr.com/bundle/xandr-api/page/segment-service.html"
  class="xref" target="_blank">segment service</a>.
- Audience files can be uploaded to segments through the <a
  href="https://docs.xandr.com/bundle/xandr-api/page/uploading-segment-data-using-bss.html"
  class="xref" target="_blank">batch segment service</a>.



<div id="ID-0000a525__section_cxn_qyh_czb" >

## **Best Practices**



- Recommended file size: 100-300mb per file
- Recommended file compression: deflate
- Recommended delivery method: <a
  href="https://docs.xandr.com/bundle/xandr-api/page/passive-segment-upload-using-aws-s3.html"
  class="xref" target="_blank">Passive Segment Upload</a> (reach out to
  your Account Manager for access)
- Updating segments: Instead of sending the full audience memberships
  again, you can upload only the changes for existing segments. This
  will reduce the data size and the chance of reaching your daily upload
  limits.





<div id="ID-0000a525__section_i21_syh_czb" >

## **Overview of Steps**



- Understanding the User-segments record

- Install the AVRO tools library

- Download the Xandr AVRO schema file

- Generate your AVRO audience file





<div id="ID-0000a525__section_x5f_tyh_czb" >

## **User-Segments Record**

A user record has two top level elements:

- User ID (uid)
- array of segments



**User ID types**



Only one id type can be uploaded per uid record (e.g. Xandr User ID,
IFA, Device ID, eid)

<table id="ID-0000a525__table_o4x_zyh_czb" class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-0000a525__table_o4x_zyh_czb__entry__1"
class="entry colsep-1 rowsep-1">User ID Type</th>
<th id="ID-0000a525__table_o4x_zyh_czb__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-0000a525__table_o4x_zyh_czb__entry__3"
class="entry colsep-1 rowsep-1">Java Library Example</th>
<th id="ID-0000a525__table_o4x_zyh_czb__entry__4"
class="entry colsep-1 rowsep-1">Python Library Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__1"><code
class="ph codeph">AppNexus/Xandr User ID (ANID)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__2">Xandr ID, also known
as user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__3"><pre
id="ID-0000a525__codeblock_tcn_kzh_czb"
class="pre codeblock"><code>{&quot;uid&quot;:
{&quot;long&quot;:12345},
&quot;segments&quot;:
[{&quot;id&quot;:123,
&quot;code&quot;:&quot;&quot;,
&quot;member_id&quot;:0,
&quot;expiration&quot;:0,
&quot;timestamp&quot;:0,
&quot;value&quot;:0}]}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__4"><pre
id="ID-0000a525__codeblock_x1v_mzh_czb"
class="pre codeblock"><code>{&#39;uid&#39;: 64, &#39;segments&#39;: [seg1]}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__1"><code
class="ph codeph">Device ID</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__2"><p>Similar utility as
ifa (Identifier for Advertising). It indicates the Mobile device type
being onboarded. The device_id record consists of two fields:</p>
<ul>
<li>domain (enum) - Possible values are idfa, sha1udid, md5udid,
openudid, aaid, windowsadid, rida, tifa, vida, and lgudid.</li>
<li>id (string)</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__3"><pre
id="ID-0000a525__codeblock_ghx_kzh_czb"
class="pre codeblock"><code>{&quot;uid&quot;:
{&quot;device_id&quot;:
{&quot;id&quot;:&quot;958cba26-f338-43f3-8bb0-ed821582daae&quot;,
&quot;domain&quot;:&quot;idfa&quot;}},
&quot;segments&quot;:
[{&quot;id&quot;:123,
&quot;code&quot;:&quot;&quot;,
&quot;member_id&quot;:0,
&quot;expiration&quot;:0,
&quot;timestamp&quot;:0,
&quot;value&quot;:0}]}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__4"><pre
id="ID-0000a525__codeblock_d5h_nzh_czb"
class="pre codeblock"><code>{&#39;uid&#39;: {&#39;id&#39;: &#39;qweqeqweq&#39;, &#39;domain&#39;: &#39;idfa&#39;}, &#39;segments&#39;: [seg1]}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__1"><code
class="ph codeph">Identifier for Advertising (or IFA)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__2"><p>Identifier for
Advertising - indicates the device type being onboarded. The ifa record
consists of two fields:</p>
<ul>
<li><strong>type</strong> (string) - Type of ID.</li>
<li><strong>id</strong> (string) - IFA ID, representing the IFA in UUID
format.</li>
</ul>
<p>See <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">device extension objec</a>t for supported
ifa types</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__3"><pre
id="ID-0000a525__codeblock_xf3_lzh_czb"
class="pre codeblock"><code>{&quot;uid&quot;:
{&quot;ifa&quot;:
{&quot;id&quot;:&quot;99136473264876328&quot;,
&quot;type&quot;:&quot;atif&quot;}},
&quot;segments&quot;:
[{&quot;id&quot;:123,
&quot;code&quot;:&quot;&quot;,
&quot;member_id&quot;:0,
&quot;expiration&quot;:0,
&quot;timestamp&quot;:0,
&quot;value&quot;:0}]}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__4"><pre
id="ID-0000a525__codeblock_q15_nzh_czb"
class="pre codeblock"><code>{&#39;uid&#39;: {&#39;id&#39;: &#39;qweqeqweq&#39;, &#39;type&#39;: &#39;atif&#39;}, &#39;segments&#39;: [seg1]}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__1"><code
class="ph codeph">External ID</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__2"><p>External ID -
indicates Member defined identifier being onboarded. The external_id
record consists of two fields:</p>
<ul>
<li><strong>member_id</strong> (int) - Member ID of the member who owns
the external_id.</li>
<li><strong>id</strong> (string) - corresponding value of the
member_id.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__3"><pre
id="ID-0000a525__codeblock_brs_lzh_czb"
class="pre codeblock"><code>{&quot;uid&quot;:
{&quot;external_id&quot;:
{&quot;id&quot;:&quot;clientid1&quot;,
&quot;member_id&quot;:958}},
&quot;segments&quot;:
[{&quot;id&quot;:123,
&quot;code&quot;:&quot;&quot;,
&quot;member_id&quot;:0,
&quot;expiration&quot;:0,
&quot;timestamp&quot;:0,
&quot;value&quot;:0}]}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__4"><pre
id="ID-0000a525__codeblock_kn2_4zh_czb"
class="pre codeblock"><code>{&#39;uid&#39;: {&#39;id&#39;: &#39;extid1&#39;, &#39;member_id&#39;: 914}, &#39;segments&#39;: [seg1]}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__1"><code
class="ph codeph">Extended ID's(eid) or Publisher-provided ID's(PPID)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__2"><p>Extended ID -
indicates the type of universal ID or publisher ID being onboarded. The
eid record consists of two fields:</p>
<ul>
<li><strong>source</strong> (string) - Source of the ID. Permitted
values are , and permissioned member-defined sources.</li>
<li><strong>id</strong> (string) - Publisher or industry ID.</li>
</ul>
<p>Today these are the only two available for audience
onboarding.</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__3"><pre
id="ID-0000a525__codeblock_dnb_mzh_czb"
class="pre codeblock"><code>{&quot;uid&quot;:
{&quot;eid&quot;:
{&quot;source&quot;:&quot;liveramp.com&quot;,
&quot;id&quot;:&quot;123123123&quot;}},
&quot;segments&quot;:
[{&quot;id&quot;:123,
&quot;code&quot;:&quot;&quot;,
&quot;member_id&quot;:0,
&quot;expiration&quot;:0,
&quot;timestamp&quot;:0,
&quot;value&quot;:0}]}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_o4x_zyh_czb__entry__4"><pre
id="ID-0000a525__codeblock_avn_4zh_czb"
class="pre codeblock"><code>{&#39;uid&#39;: {&#39;id&#39;: &#39;qweqeqweq&#39;, &#39;source&#39;: &#39;liveramp.com&#39;}, &#39;segments&#39;: [seg1]}</code></pre></td>
</tr>
</tbody>
</table>



**Segments object**



You can upload to multiple segments within the same uid record by
creating an array of segment objects.

<table id="ID-0000a525__table_tjv_rzh_czb" class="table frame-all"
style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-0000a525__table_tjv_rzh_czb__entry__1"
class="entry colsep-1 rowsep-1">File</th>
<th id="ID-0000a525__table_tjv_rzh_czb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000a525__table_tjv_rzh_czb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__3">Xandr segment ID</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__3">Xandr segment
code.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__3">Member ID of the
segment. Required when code is specified</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__1"><code
class="ph codeph">expiration</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__3"><p>Segment expiration
in minutes. Set to:</p>
<ul>
<li>0 for maximum expiration (180 days).</li>
<li>-1 for segment removal.</li>
<li>-2 for default member expiration.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__1"><code
class="ph codeph">timestamp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__2">long</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__3">Segment activation
time in seconds from epoch. It specifies when segment becomes 'live'.
Set to 0 to activate the segment immediately</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a525__table_tjv_rzh_czb__entry__3">Segment value</td>
</tr>
</tbody>
</table>



<div id="ID-0000a525__section_jpn_wzh_czb" >

## **Installing the AVRO tools library**

- Java library



``` pre
Curl -o http://archive.apache.org/dist/avro/avro-1.10.1/java/avro-tools-1.10.1.jar
```

- Python library





``` pre
python3 -m pip install avro
```





<div id="ID-0000a525__section_o3l_113_czb" >

## **Download the Xandr Avro Schema**

You can download the Xandr Avro Schema from
<a href="attachments/xandr_schema.avsc" class="xref">here</a>



<div id="ID-0000a525__section_mqp_513_czb" >

## **Generate your AVRO audience file**

See below for examples using the Java and Python libraries

**Java Example**



**Create an audience file**

``` pre
{"uid":{"long":12345},"segments":[{"id":123,"code":"","member_id":0,"expiration":0,"timestamp":0,"value":0}]}
{"uid":{"external_id":{"id":"clientid1","member_id":958}},"segments":[{"id":123,"code":"","member_id":0,"expiration":0,"timestamp":0,"value":0}]}
{"uid":{"ifa":{"id":"99136473264876328","type":"atif"}},"segments":[{"id":123,"code":"","member_id":0,"expiration":0,"timestamp":0,"value":0}]}
{"uid":{"device_id":{"id":"958cba26-f338-43f3-8bb0-ed821582daae","domain":"idfa"}},"segments":[{"id":123,"code":"","member_id":0,"expiration":0,"timestamp":0,"value":0}]}
{"uid":{"eid":{"source":"liveramp.com","id":"123123123"}},"segments":[{"id":123,"code":"","member_id":0,"expiration":0,"timestamp":0,"value":0}]}
```



**Convert the audience file into AVRO**



Run the following command

``` pre
java -jar avro-tools-1.10.1.jar fromjson --codec deflate --schema-file xandr_schema.avsc sample.json > sample.avro  
```



**Where:**

- xandr_schema.avsc = the supplied Xandr Avro schema file;
- sample.json = your audience file;
- and sample.avro = output AVRO file



<div id="ID-0000a525__section_d1y_z13_czb" >

## **Python Example**



<div id="ID-0000a525__note_olz_jb3_czb" 

Note:

- Our examples are for the **Python Avro Library**, and are not to be
  confused with the **Fast Avro Library**.
  - Python Avro library does not use uid union type names. Instead, it
    determines the uid type by full match of field names.
    - {'uid': {'id': 'qweqeqweq', 'domain': 'idfa'}, 'segments': \[…\]}
  - The Fast Avro library uses hints to specify the exact type of uid
    similar to the Java library
    - {'uid': ('external_id', {'id':'exitd1', 'member_id': 914}),
      'segments': \[{'expiration': 259200, 'id': 25815407}\]}
- DataFileWriter.append() accepts a python dictionary (dict) type, not a
  JSON.







**Creating an AVRO audience file**



**Sample script using the Python Avro Library:**

``` pre
import avro.schema
from avro.datafile import DataFileReader, DataFileWriter
from avro.io import DatumReader, DatumWriter
  
# the supplied xandr schema
schema = avro.schema.parse(open("xandr_schema.avsc", "rb").read())
  
# output avro file 
writer = DataFileWriter(open("sample.avro", "wb"), DatumWriter(), schema, codec=’deflate’)
   
# segments
seg1 = {'id': 1000, 'code': '', 'member_id': 0, 'expiration': 0, 'timestamp': 0, 'value': 0}
   
# anid
writer.append({'uid': 64, 'segments': [seg1]})
   
# external id
writer.append({'uid': {'id': 'exitd1', 'member_id': 914}, 'segments': [seg1]})
   
# idfa
writer.append({'uid': {'id': 'qweqeqweq', 'domain': 'idfa'}, 'segments': [seg1]})
   
# eid (or ppid)
writer.append({'uid': {'id': 'qweqeqweq', 'source': 'liveramp.com'}, 'segments': [seg1]})
writer.append({'uid': {'id': 'qweqeqweq', 'source': 'netid.de'}, 'segments': [seg1]})
   
writer.close()
```






