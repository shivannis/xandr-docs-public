---
Title : Legacy BSS File Format
Description : The Batch Segment Service provides the ability to upload segment data
files in a variety of formats. See the examples below for more
---


# Legacy BSS File Format



The Batch Segment Service provides the ability to upload segment data
files in a variety of formats. See the examples below for more
information. Note, the Avro format described in <a
href="https://docs.xandr.com/bundle/xandr-api/page/bss-avro-file-format.html"
class="xref" target="_blank">BSS Avro File Format</a>, provides support
for a broader variety of user identifiers. The method described in this
topic has been the standard format in the past, but it is expected to be
deprecated in the future as user identification increasingly relies on
EIDs (extended IDs) and publisher first-party identifiers rather than
cookies.



Tip: Speak with your account
representative for assistance with configuring our system to accept your
particular file format.





## Format Overview

Each line of the file will specify a minimum of one `UID` (user ID) and
one or more `SEG` blocks. The separators are configurable. 

The following table describes the ordering of the blocks and separators
that compose each line.

<table id="ID-0000a6bf__table_jfc_c4p_pwb" class="table frame-all">
<colgroup>
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.html#ID-0000a6bf__1"
class="xref">UID</a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.html#ID-0000a6bf__21"
class="xref">SEPARATOR1</a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.html#ID-0000a6bf__ID-0000a789"
class="xref"><code class="ph codeph">SEG</code></a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.html#ID-0000a6bf__22"
class="xref">SEPARATOR2</a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.html#ID-0000a6bf__ID-0000a789"
class="xref"><code class="ph codeph">SEG</code></a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.html#ID-0000a6bf__24"
class="xref">SEPARATOR4</a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.html#ID-0000a6bf__ID-0000a789"
class="xref"><code class="ph codeph">SEG</code></a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.html#ID-0000a6bf__22"
class="xref">SEPARATOR2</a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.html#ID-0000a6bf__ID-0000a789"
class="xref"><code class="ph codeph">SEG</code></a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.html#ID-0000a6bf__26"
class="xref">SEPARATOR5</a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.html#ID-0000a6bf__11"
class="xref">DOMAIN</a></td>
</tr>
</tbody>
</table>

**UID**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a6bf__entry__12"
class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
<th id="ID-0000a6bf__entry__13"
class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
<th id="ID-0000a6bf__entry__14"
class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
<th id="ID-0000a6bf__entry__15"
class="entry colsep-1 rowsep-1"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__12"><code class="ph codeph">UID</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__13">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000a6bf__entry__14">The
Xandr user ID being added to, or removed from, a
segment.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__15"><pre class="pre codeblock"><code>5727816213491965430</code></pre></td>
</tr>
</tbody>
</table>

**SEG Block**

The `SEG` block describes the segment(s) to which the user is being
added or removed and it will contain data such as segment ID or a
user-defined segment code.

Construct a `SEG` block as follows:

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><a
href="legacy-bss-file-format.html#ID-0000a6bf__ID-0000a789"
class="xref"><code class="ph codeph">SEG_FIELD</code></a></td>
<td class="entry"><a href="legacy-bss-file-format.html#ID-0000a6bf__23"
class="xref">SEPARATOR3</a></td>
<td class="entry"><a
href="legacy-bss-file-format.html#ID-0000a6bf__ID-0000a789"
class="xref"><code class="ph codeph">SEG_FIELD</code></a></td>
</tr>
</tbody>
</table>

**`SEG_FIELD` Block**

The following table list the possible values that may be included in the
`SEG_FIELD` block. Where defaults exist, they will be applied unless
otherwise specified. Note that each `SEG` block must be regular, meaning
that it must have all fields that you have chosen to include. For
example, if you have included the `VALUE` field but don't have a value
for a particular user, you should use 0 as the value.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a6bf__entry__23"
class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
<th id="ID-0000a6bf__entry__24"
class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
<th id="ID-0000a6bf__entry__25"
class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
<th id="ID-0000a6bf__entry__26"
class="entry colsep-1 rowsep-1"><strong>Default</strong></th>
<th id="ID-0000a6bf__entry__27"
class="entry colsep-1 rowsep-1"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__23"><code
class="ph codeph">SEG_ID</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__24">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000a6bf__entry__25">The
Xandr segment ID.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__26">This is generated by the system when
the segment is created.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__27"><code
class="ph codeph">1234567890</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__23"><code
class="ph codeph">SEG_CODE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__24">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000a6bf__entry__25">A
user-defined name for the segment. You may include <code
class="ph codeph">SEG_CODE</code> or <code
class="ph codeph">SEG_ID</code> but not both.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__26"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__27"><code
class="ph codeph">"18-35_autobuy"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__23"><code
class="ph codeph">EXPIRATION</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__24">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000a6bf__entry__25">The
lifetime of the segment, starting at the value of <code
class="ph codeph">TIMESTAMP</code>. Specified in minutes. A value of
<code class="ph codeph">0</code> means that the user will expire in the
segment after the maximum allowed 180 days; <code
class="ph codeph">-1</code> means that the user will be removed from
this segment.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000a6bf__entry__26">The
default value is specified on the segment level when the segment is
created. If none exists there, your Batch Segment API configuration
setting is used. Using this field will override the default.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__27"><code
class="ph codeph">1440</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__23"><code
class="ph codeph">TIMESTAMP</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__24">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000a6bf__entry__25">The
time at which you would like your segment to go into effect. A <a
href="http://en.wikipedia.org/wiki/Unix_time" class="xref"
target="_blank">UNIX timestamp</a>, down to the second. If a timestamp
is submitted to greater specificity (down to the millisecond, for
example) then the user will not be properly written to the segment upon
upload.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000a6bf__entry__26">The
current time.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__27"><code
class="ph codeph">1278250469</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__23"><code
class="ph codeph">VALUE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__24">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000a6bf__entry__25">A
numeric value you would like to assign to a segment.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__26"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__27"><code class="ph codeph">310</code>

Note: The maximum accepted value is
2147483647. (If a value above this is included, there may be behavior
unpredictability such as the pixel fire not processing. Therefore, the
user will not be added to the segment. Other times, it will be
processed, however the value set will be much smaller than what was
passed.)
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__23"><code
class="ph codeph">MEMBER_ID</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__24">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__25">This field is required only if you use
a <code class="ph codeph">SEG_CODE</code> and upload other members' data
in addition to your own.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000a6bf__entry__26">The
<code class="ph codeph">member_id</code>.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__27">958</td>
</tr>
</tbody>
</table>

**DOMAIN**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a6bf__entry__58"
class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
<th id="ID-0000a6bf__entry__59"
class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
<th id="ID-0000a6bf__entry__60"
class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__58"><code
class="ph codeph">DOMAIN</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__59">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000a6bf__entry__60">You
may optionally specify a domain to associate with this user ID.</td>
</tr>
</tbody>
</table>





## Separators

Read on for definitions of each separator type. Each separator must be
different, except for `SEPARATOR1` and `SEPARATOR3`, which may be
identical (`SEPARATOR2` and `SEPARATOR4`, cannot be identical). Each
separator must be only 1 character in length. 



Warning: Disallowed characters

The following characters are **not** allowed as separators:
`[ ] ( ) { } $ \ / | ? * + -`



**SEPARATOR1**

Separates the user ID from the segment list (or `SEG` block). There may
be only one per line. Required.

**SEPARATOR2**

Separates segments within the segment list. There may be many per line,
since multiple segments can be associated with a single `UID`. Required
if there is more than one segment.

**SEPARATOR3**

Separates fields within each `SEG` block. If set, it must remain the
same for each line of the file (except after `SEPARATOR4`). Required if
there is more than one field within the `SEG`.

**SEPARATOR4**

The user will be removed from any segments appearing after this
separator. Optional.

**SEPARATOR5**

The user will be added to the `DOMAIN` or looked up in the set
designated directly after this separator. Optional.



Note:

**Mobile Device ID Data Fields**

In order to pass in device IDs from mobile devices, pass in `SEPARATOR5`
at the end of a line followed by one of the numbers shown in the table
below. Each number corresponds to a different mobile device
identification scheme. This table assumes ^ is used as `SEPARATOR5`:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a6bf__entry__64"
class="entry colsep-1 rowsep-1">Separator and Number</th>
<th id="ID-0000a6bf__entry__65"
class="entry colsep-1 rowsep-1">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__64">^3</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__65">idfa</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__64">^4</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__65">sha1udid</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__64">^5</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__65">md5udid</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__64">^7</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__65">openudid</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__64">^8</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__65">aaid</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__64">^9</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__65">windowsadid</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__64">^10</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__65">rida</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__64">^11</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__65">tifa</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__64">^12</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__65">vida</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__64">^13</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__65">lgudid</td>
</tr>
</tbody>
</table>





Note: **^6 sha1mac** was deprecated as
of May 7th, 2019. Do not use.







## Examples

The following examples illustrate scenarios derived from real use cases.



Note: The examples below show separator
values that may differ from the ones that were set up in your initial
batch segment configuration. Contact our Services team, if you wish to
update your configuration settings.



**Example 1**

A client is adding user `12345678900987654321` to segments `10000` and
`10001` with an expiration time of `1440` (one day). The client is also
removing user `12345678900987654321` from segments `10002` and `10003`.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a6bf__entry__86"
class="entry colsep-1 rowsep-1"><strong>Field</strong></th>
<th id="ID-0000a6bf__entry__87"
class="entry colsep-1 rowsep-1"><strong>Value</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__86"><code class="ph codeph">UID</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__87">Xandr user
ID</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__86"><code
class="ph codeph">SEPARATOR1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__87">","</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__86"><code
class="ph codeph">SEPARATOR2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__87">";"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__86"><code
class="ph codeph">SEPARATOR3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__87">":"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__86"><code
class="ph codeph">SEG_FIELD</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__87">[<code class="ph codeph">SEG_ID</code>,
<code class="ph codeph">EXPIRATION</code>]</td>
</tr>
</tbody>
</table>



``` pre
12345678900987654321,10000:1440;10001:1440;10002:-1;10003:-1
```



**Example 2**

A client is adding user `12345678900987654321` to segments with codes
`"auto_intender"` and `"nike_shopper"` with the default expiration time.
The client is also removing (using `SEPARATOR4`) user
`12345678900987654321` from segments with codes `"bicycle_intender"` and
`"newbalance_shopper"`.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a6bf__entry__98"
class="entry colsep-1 rowsep-1"><strong>Field</strong></th>
<th id="ID-0000a6bf__entry__99"
class="entry colsep-1 rowsep-1"><strong>Value</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__98"><code class="ph codeph">UID</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__99">Xandr user
Id</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__98"><code
class="ph codeph">SEPARATOR1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__99">","</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__98"><code
class="ph codeph">SEPARATOR2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__99">";"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__98"><code
class="ph codeph">SEPARATOR4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__99">"\t"  </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__98"><code
class="ph codeph">SEG_FIELD</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__99">[<code
class="ph codeph">SEG_CODE</code>]</td>
</tr>
</tbody>
</table>



Note: `\t` refers to the horizontal tab
character. It moves the cursor a tab width. The example below is
using `\t` to show where the space will appear.





``` pre
12345678900987654321,auto_intender;nike_shopper\tbicycle_intender;newbalance_shopper
```



**Example 3**

In the example, below, the client is adding user `12345678900987654321`
to segments `10000` and `10001` with no expiration (which means the user
will expire in the segment after the maximum allowed 180 days), and they
are removing the user from segment `10002`.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a6bf__entry__110"
class="entry colsep-1 rowsep-1"><strong>Field</strong></th>
<th id="ID-0000a6bf__entry__111"
class="entry colsep-1 rowsep-1"><strong>Value</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__110"><code
class="ph codeph">UID</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__111">Xandr user
ID</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__110"><code
class="ph codeph">SEPARATOR1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__111">"\t"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__110"><code
class="ph codeph">SEPARATOR3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__111">"\t"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__110"><code
class="ph codeph">SEG_FIELD</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__111">[<code
class="ph codeph">TIMESTAMP</code>, <code
class="ph codeph">SEG_ID</code>, <code class="ph codeph">VALUE</code>,
<code class="ph codeph">EXPIRATION</code>]</td>
</tr>
</tbody>
</table>





Note: `\t` refers to the horizontal tab
character. It moves the cursor a tab width. The example below is
using `\t` to show where the space will appear.





``` pre
12345678900987654321\t1320689131\t10000\t0\t0
12345678900987654321\t1320689131\t10001\t0\t0
12345678900987654321\t1320689131\t10002\t0\t-1 
```

**Example 4**

A client is adding user `"abcdefg"` to segments `10000` and `10001` with
an expiration time of `1440` (one day). The client is also adding user
`"abcdefg"` to cross-segments `10002` and `10003`.



Tip: This client is set as an `XSEG`
member.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a6bf__entry__120"
class="entry colsep-1 rowsep-1"><strong>Field</strong></th>
<th id="ID-0000a6bf__entry__121"
class="entry colsep-1 rowsep-1"><strong>Value</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__120"><code
class="ph codeph">UID</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__121">Xandr user
ID</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__120"><code
class="ph codeph">SEPARATOR1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__121">","</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__120"><code
class="ph codeph">SEPARATOR2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__121">";"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__120"><code
class="ph codeph">SEPARATOR3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__121">":"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__120"><code
class="ph codeph">SEG_FIELD</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__121">[<code
class="ph codeph">SEG_ID</code>, <code
class="ph codeph">EXPIRATION</code>]</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__120"><code
class="ph codeph">uses_external_uids</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__121"><code
class="ph codeph">true</code></td>
</tr>
</tbody>
</table>

``` pre
abcdefg,10000:1440;10001:1440
abcdefg,10002:1440;10003:1440 
```

**Example 5**

A client is adding user `12345678900987654321` to segments with code
`"car_like"` and `"bike_like"` with the default expiration time.



Tip: This client uses `SEG_CODE` and
uploads under different member names.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a6bf__entry__134"
class="entry colsep-1 rowsep-1"><strong>Field</strong></th>
<th id="ID-0000a6bf__entry__135"
class="entry colsep-1 rowsep-1"><strong>Value</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__134"><code
class="ph codeph">UID</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__135">Xandr user
ID</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__134"><code
class="ph codeph">SEPARATOR1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__135">","</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__134"><code
class="ph codeph">SEPARATOR2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__135">";"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__134"><code
class="ph codeph">SEPARATOR3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__135">":"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__134"><code
class="ph codeph">SEPARATOR4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__135">"\t"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__134"><code
class="ph codeph">SEG_FIELD</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__135">[<code
class="ph codeph">MEMBER_ID</code>, <code
class="ph codeph">SEG_CODE</code>]</td>
</tr>
</tbody>
</table>



Note: `\t` refers to the horizontal tab
character. It moves the cursor a tab width.



``` pre
12345678900987654321,400:car_like;500:bike_like
```

**Example 6**

A client is adding mobile user IDFA (ID for Advertisers)
AEBE52E7-03EE-455A-B3C4-E57283966239 to segments 10000, 10001, 10002,
10003 for varying amounts of time, via the Batch Segment Service. This
method often has low match rates on our platform because even if IDs are
successfully submitted to our service, it doesn't mean that the device
ID has actually been seen on our platform. Note, separator 5 appended
which designates the use of mobile identifiers. The value "3",
designates Apple's IDFA value—other values can be found above in the
Mobile Device ID Data Fields table.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000a6bf__entry__148"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000a6bf__entry__149"
class="entry colsep-1 rowsep-1">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__148"><code
class="ph codeph">IDFA</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__149">Apple ID for Advertisers</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__148"><code
class="ph codeph">SEPARATOR1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__149">","</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__148"><code
class="ph codeph">SEPARATOR2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__149">";"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__148"><code
class="ph codeph">SEPARATOR3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__149">":"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__148"><code
class="ph codeph">SEPARATOR4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__149">"\t"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__148"><code
class="ph codeph">SEPARATOR5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__149">"^"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__148"><code
class="ph codeph">SEG_FIELD</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000a6bf__entry__149">[<code
class="ph codeph">SEG_ID,EXPIRATION</code>]</td>
</tr>
</tbody>
</table>



Note: `\t` refers to the horizontal tab
character. It moves the cursor a tab width.





``` pre
AEBE52E7-03EE-455A-B3C4-E57283966239,10000:1440;10001:1440;10002:-1;10003:-1^3
```








