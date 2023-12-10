---
Title : Legacy BSS File Format
Description : The Batch Segment Service provides the ability to upload segment data
ms.date: 10/28/2023
ms.custom: digital-platform-api
files in a variety of formats. See the examples below for more
---


# Legacy BSS File Format





The Batch Segment Service provides the ability to upload segment data
files in a variety of formats. See the examples below for more
information. Note, the Avro format described in <a
href="bss-avro-file-format.md"
class="xref" target="_blank">BSS Avro File Format</a>, provides support
for a broader variety of user identifiers. The method described in this
topic has been the standard format in the past, but it is expected to be
deprecated in the future as user identification increasingly relies on
EIDs (extended IDs) and publisher first-party identifiers rather than
cookies.

class="note tip note_tip">

<b>Tip:</b> Speak with your account
representative for assistance with configuring our system to accept your
particular file format.





>

## Format Overview

Each line of the file will specify a minimum of one `UID` (user ID) and
one or more `SEG` blocks. The separators are configurable.

The following table describes the ordering of the blocks and separators
that compose each line.

<table id="buy-side-service-template__table_dmr_kkx_5wb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-UID"
class="xref" target="_blank"><code class="ph codeph">UID</code></a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-SEPARATOR1"
class="xref" target="_blank">SEPARATOR1</a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-SEG-FIELDBlock"
class="xref" target="_blank"><code class="ph codeph">SEG</code></a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-SEPARATOR2"
class="xref" target="_blank">SEPARATOR2</a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-SEG-FIELDBlock"
class="xref" target="_blank"><code class="ph codeph">SEG</code></a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-SEPARATOR4"
class="xref" target="_blank">SEPARATOR4</a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-SEG-FIELDBlock"
class="xref" target="_blank"><code class="ph codeph">SEG</code></a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-SEPARATOR2"
class="xref" target="_blank">SEPARATOR2</a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-SEG-FIELDBlock"
class="xref" target="_blank"><code class="ph codeph">SEG</code></a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-SEPARATOR5"
class="xref" target="_blank">SEPARATOR5</a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-DOMAIN"
class="xref" target="_blank">DOMAIN</a></td>
</tr>
</tbody>
</table>

**UID**

<table id="buy-side-service-template__table_emr_kkx_5wb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Name</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Type</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Description</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">UID</code></td>
<td class="entry colsep-1 rowsep-1">int</td>
<td class="entry colsep-1 rowsep-1">The Xandr user ID being added to, or
removed from, a segment.</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">5727816213491965430</code></td>
</tr>
</tbody>
</table>

**SEG Block**

The `SEG` block describes the segment(s) to which the user is being
added or removed and it will contain data such as segment ID or a
user-defined segment code.

Construct a `SEG` block as follows:

<table id="buy-side-service-template__table_fmr_kkx_5wb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-SEG-FIELDBlock"
class="xref" target="_blank"><code
class="ph codeph">SEG_FIELD</code></a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-SEPARATOR3"
class="xref" target="_blank">SEPARATOR3</a></td>
<td class="entry colsep-1 rowsep-1"><a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-SEG-FIELDBlock"
class="xref" target="_blank"><code
class="ph codeph">SEG_FIELD</code></a></td>
</tr>
</tbody>
</table>

**SEG_FIELD Block**

The following table list the possible values that may be included in the
`SEG_FIELD` block. Where defaults exist, they will be applied unless
otherwise specified. Note that each `SEG` block must be regular, meaning
that it must have all fields that you have chosen to include. For
example, if you have included the `VALUE` field but don't have a value
for a particular user, you should use 0 as the value.

<table id="buy-side-service-template__table_gmr_kkx_5wb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Name</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Type</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Description</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEG_ID</code></td>
<td class="entry colsep-1 rowsep-1">int</td>
<td class="entry colsep-1 rowsep-1"><p>The Xandr segment ID.</p>
<p><strong>Default:</strong> This is generated by the system when the
segment is created.</p></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">1234567890</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEG_CODE</code></td>
<td class="entry colsep-1 rowsep-1">string</td>
<td class="entry colsep-1 rowsep-1">A user-defined name for the segment.
You may include <code class="ph codeph">SEG_CODE</code> or <code
class="ph codeph">SEG_ID</code> but not both.</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">"18-35_autobuy"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">EXPIRATION</code></td>
<td class="entry colsep-1 rowsep-1">int</td>
<td class="entry colsep-1 rowsep-1"><p>The lifetime of the segment,
starting at the value of <code class="ph codeph">TIMESTAMP</code>.
Specified in minutes. A value of <code class="ph codeph">0</code> means
that the user will expire in the segment after the maximum allowed 180
days; <code class="ph codeph">-1</code> means that the user will be
removed from this segment.</p>
<p><strong>Default:</strong> The default value is specified on the
segment level when the segment is created. If none exists there, your
Batch Segment API configuration setting is used. Using this field will
override the default.</p></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">1440</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">TIMESTAMP</code></td>
<td class="entry colsep-1 rowsep-1">int</td>
<td class="entry colsep-1 rowsep-1"><p>The time at which you would like
your segment to go into effect. A <a
href="http://en.wikipedia.org/wiki/Unix_time" class="xref"
target="_blank">UNIX timestamp</a>, down to the <em>second</em>. If a
timestamp is submitted to greater specificity (down to the millisecond,
for example) then the user will not be properly written to the segment
upon upload.</p>
<p><strong>Default:</strong> The current time.</p></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">1278250469</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">VALUE</code></td>
<td class="entry colsep-1 rowsep-1">int</td>
<td class="entry colsep-1 rowsep-1">A numeric value you would like to
assign to a segment.</td>
<td class="entry colsep-1 rowsep-1"><p><code
class="ph codeph">310</code></p>

class="note note_note">
<b>Note:</b>
<p>The maximum accepted value is 2147483647. (If a value above this is
included, there may be behavior unpredictability such as the pixel fire
not processing. Therefore, the user will not be added to the segment.
Other times, it will be processed, however the value set will be much
smaller than what was passed.)</p>

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">MEMBER_ID</code></td>
<td class="entry colsep-1 rowsep-1">int</td>
<td class="entry colsep-1 rowsep-1"><p>This field is required only if
you use a <code class="ph codeph">SEG_CODE</code> and upload other
members' data in addition to your own.</p>
<p><strong>Default:</strong> The <code
class="ph codeph">member_id</code>.</p></td>
<td class="entry colsep-1 rowsep-1">958</td>
</tr>
</tbody>
</table>

**DOMAIN**

<table id="buy-side-service-template__table_hmr_kkx_5wb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Name</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Type</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Description</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">DOMAIN</code></td>
<td class="entry colsep-1 rowsep-1">string</td>
<td class="entry colsep-1 rowsep-1">You may optionally specify a domain
to associate with this user ID.</td>
</tr>
</tbody>
</table>



>

## Separators

Read on for definitions of each separator type. Each separator must be
different, except for `SEPARATOR1` and `SEPARATOR3`, which may be
identical (`SEPARATOR2` and `SEPARATOR4`, cannot be identical). Each
separator must be only 1 character in length.



class="note caution note_caution">

CAUTION: Disallowed characters

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

The user will be added to the `DOMAIN` or looked up in the set
designated directly after this separator. Optional.





<b>Note:</b>

**Mobile Device ID Data Fields**

In order to pass in device IDs from mobile devices, pass in `SEPARATOR5`
at the end of a line followed by one of the numbers shown in the table
below. Each number corresponds to a different mobile device
identification scheme. This table assumes ^ is used as `SEPARATOR5`:

<table id="buy-side-service-template__table_mfg_rmx_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_mfg_rmx_5wb__entry__1"
class="entry colsep-1 rowsep-1">Separator and Number</th>
<th id="buy-side-service-template__table_mfg_rmx_5wb__entry__2"
class="entry colsep-1 rowsep-1">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__1">^3</td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__2">idfa</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__1">^4</td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__2">sha1udid</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__1">^5</td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__2">md5udid</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__1">^7</td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__2">openudid</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__1">^8</td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__2">aaid</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__1">^9</td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__2">windowsadid</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__1">^10</td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_mfg_rmx_5wb__entry__2">rida</td>
</tr>
</tbody>
</table>









<b>Note:</b> **^6 sha1mac** was deprecated as
of May 7th, 2019. Do not use.







>

## Examples

The following examples illustrate scenarios derived from real use cases.





<b>Note:</b>

The examples below show separator values that may differ from the ones
that were set up in your initial batch segment configuration. Contact
our Services team, if you wish to update your configuration settings.





**Example 1**

A client is adding user `12345678900987654321` to segments `10000` and
`10001` with an expiration time of `1440` (one day). The client is also
removing user `12345678900987654321` from segments `10002` and `10003`.

<table id="buy-side-service-template__table_pft_ynx_5wb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">UID</code></td>
<td class="entry colsep-1 rowsep-1">Xandr user ID</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR1</code></td>
<td class="entry colsep-1 rowsep-1">","</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR2</code></td>
<td class="entry colsep-1 rowsep-1">";"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR3</code></td>
<td class="entry colsep-1 rowsep-1">":"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEG_FIELD</code></td>
<td class="entry colsep-1 rowsep-1">[<code
class="ph codeph">SEG_ID</code>, <code
class="ph codeph">EXPIRATION</code>]</td>
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

<table id="buy-side-service-template__table_rft_ynx_5wb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">UID</code></td>
<td class="entry colsep-1 rowsep-1">Xandr user Id</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR1</code></td>
<td class="entry colsep-1 rowsep-1">","</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR2</code></td>
<td class="entry colsep-1 rowsep-1">";"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR4</code></td>
<td class="entry colsep-1 rowsep-1">"\t"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEG_FIELD</code></td>
<td class="entry colsep-1 rowsep-1">[<code
class="ph codeph">SEG_CODE</code>]</td>
</tr>
</tbody>
</table>





<b>Note:</b>

`\t` refers to the horizontal tab character. It moves the cursor a tab
width. The example below is using `\t` to show where the space will
appear.





``` pre
12345678900987654321,auto_intender;nike_shopper\tbicycle_intender;newbalance_shopper
```

**Example 3**

In the example, below, the client is adding user `12345678900987654321`
to segments `10000` and `10001` with no expiration (which means the user
will expire in the segment after the maximum allowed 180 days), and they
are removing the user from segment `10002`.

<table id="buy-side-service-template__table_tft_ynx_5wb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">UID</code></td>
<td class="entry colsep-1 rowsep-1">Xandr user ID</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR1</code></td>
<td class="entry colsep-1 rowsep-1">"\t"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR3</code></td>
<td class="entry colsep-1 rowsep-1">"\t"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEG_FIELD</code></td>
<td class="entry colsep-1 rowsep-1">[<code
class="ph codeph">TIMESTAMP</code>, <code
class="ph codeph">SEG_ID</code>, <code class="ph codeph">VALUE</code>,
<code class="ph codeph">EXPIRATION</code>]</td>
</tr>
</tbody>
</table>



class="note warning note_warning">

<b>Warning:</b>

`\t` refers to the horizontal tab character. It moves the cursor a tab
width. The example below is using `\t` to show where the space will
appear.



``` pre
12345678900987654321\t1320689131\t10000\t0\t0
12345678900987654321\t1320689131\t10001\t0\t0
12345678900987654321\t1320689131\t10002\t0\t-1
```



**Example 4**

A client is adding user `"abcdefg"` to segments `10000` and `10001` with
an expiration time of `1440` (one day). The client is also adding user
`"abcdefg"` to cross-segments `10002` and `10003`.



class="note tip note_tip">

<b>Tip:</b> This client is set as an `XSEG`
member.





<table id="buy-side-service-template__table_wft_ynx_5wb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">UID</code></td>
<td class="entry colsep-1 rowsep-1">Xandr user ID</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR1</code></td>
<td class="entry colsep-1 rowsep-1">","</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR2</code></td>
<td class="entry colsep-1 rowsep-1">";"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR3</code></td>
<td class="entry colsep-1 rowsep-1">":"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEG_FIELD</code></td>
<td class="entry colsep-1 rowsep-1">[<code
class="ph codeph">SEG_ID</code>, <code
class="ph codeph">EXPIRATION</code>]</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">uses_external_uids</code></td>
<td class="entry colsep-1 rowsep-1"><code
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



class="note tip note_tip">

<b>Tip:</b> This client uses `SEG_CODE` and
uploads under different member names.





<table id="buy-side-service-template__table_zft_ynx_5wb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">UID</code></td>
<td class="entry colsep-1 rowsep-1">Xandr user ID</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR1</code></td>
<td class="entry colsep-1 rowsep-1">","</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR2</code></td>
<td class="entry colsep-1 rowsep-1">";"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR3</code></td>
<td class="entry colsep-1 rowsep-1">":"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEPARATOR4</code></td>
<td class="entry colsep-1 rowsep-1">"\t"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">SEG_FIELD</code></td>
<td class="entry colsep-1 rowsep-1">[<code
class="ph codeph">MEMBER_ID</code>, <code
class="ph codeph">SEG_CODE</code>]</td>
</tr>
</tbody>
</table>





<b>Note:</b> `\t` refers to the horizontal tab
character. It moves the cursor a tab width.





``` pre
12345678900987654321,400:car_like;500:bike_like
```

**Example 6**

A client is adding mobile user IDFA (ID for Advertisers)
AEBE52E7-03EE-455A-B3C4-E57283966239 to segments 10000, 10001, 10002,
10003 for varying amounts of time, via the Batch Segment Service. This
method often has low match rates on our platform because even if IDs are
successfully submitted to our service, it doesn't mean that the device
ID has actually been seen on our platform. Note, separator 5 appended
which designates the use of mobile identifiers. The value "3",
designates Apple's IDFA value—other values can be found above in the <a
href="legacy-bss-file-format.md#LegacyBSSFileFormat-MobileDeviceIDDataFields"
class="xref" target="_blank">Mobile Device ID Data Fields</a> table.

<table id="buy-side-service-template__table_cgt_ynx_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_cgt_ynx_5wb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_cgt_ynx_5wb__entry__2"
class="entry colsep-1 rowsep-1">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__1"><code
class="ph codeph">IDFA</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__2">Apple
ID for Advertisers</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__1"><code
class="ph codeph">SEPARATOR1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__2">","</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__1"><code
class="ph codeph">SEPARATOR2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__2">";"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__1"><code
class="ph codeph">SEPARATOR3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__2">":"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__1"><code
class="ph codeph">SEPARATOR4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__2">"\t"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__1"><code
class="ph codeph">SEPARATOR5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__2">"^"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__1"><code
class="ph codeph">SEG_FIELD</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buy-side-service-template__table_cgt_ynx_5wb__entry__2">[<code
class="ph codeph">SEG_ID,EXPIRATION</code>]</td>
</tr>
</tbody>
</table>





<b>Note:</b> `\t` refers to the horizontal tab
character. It moves the cursor a tab width.





``` pre
AEBE52E7-03EE-455A-B3C4-E57283966239,10000:1440;10001:1440;10002:-1;10003:-1^3
```






