---
Title : Placement Tag Parameters
Description : <b>Note:</b>
ms.date: 10/28/2023
Xandr now supports a domain,
<a href="http://adnxs-simple.com/" class="xref"
---


# Placement Tag Parameters





<b>Note:</b>

Xandr now supports a domain,
<a href="http://adnxs-simple.com/" class="xref"
target="_blank">adnxs-simple.com</a>, which does not send or read
browser cookies on requests. Clients can leverage this cookie-free
domain when there is no consent to use personal data. Relevant calls
initiated by Xandr will automatically use this
domain when there is no consent or when cookies are not required for the
function. For more information, see <a
href="https://wiki.xandr.com/display/policies/Reinforcing+Privacy+Controls+Through+a+Cookie-Free+Domain"
class="xref" target="_blank">Reinforcing Privacy Controls Through a
Cookie-Free Domain</a> (login required).



When you export a placement tag, you can include placeholders to pass in
additional query string parameters to the Xandr
platform during the ad call. This document describes the allowed
parameters. For the parameters used for video placements, see
<a href="target-video-attributes-via-query-string-parameters.md"
class="xref"
title="If you use a tag solution for in-stream video, effectively targeting demand requires knowledge and careful implementation of the range of possible tag parameters.">Target
Video Attributes via Query String Parameters</a>.

Placement Tags



<b>Note:</b>

- Currently the Xandr click tracking macro,
  (`${CLICK_URL}` or ${`CLICK_URL_ENC`}), and the cache buster macro,
  `${CACHEBUSTER}`, **DO NOT** work in placement tags. You need to use a
  publisher-supplied third-party click tracker and/or third-party cache
  buster/time stamp.
- There is a maximum of 5 custom targeting parameters per placement
  (used for query string targeting on the campaign) that will be
  processed by the Xandr platform.





<b>Important:</b>

Placement tag parameters, for example age and gender, or any unique
parameter you choose to add, can be included in the tag in order to
allow more granular targeting when working with managed inventory. To
learn more about how this kind of targeting works, see
<a href="query-string-targeting-via-placement-tags-and-segments.md"
class="xref">Query String Targeting via Placement Tags and Segments</a>.



Parameters

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d3b__entry__1" class="entry">Parameter</th>
<th id="ID-00001d3b__entry__2" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">id, ID</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">The identification
number (integer) belonging to a placement.
<p>Example: <code class="ph codeph">id=5202</code></p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">inv_code</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">The code entered on
the placement. This can be used instead of placement ID, but must be
used with <code class="ph codeph">member_id</code> as well.
<p>Example: <code
class="ph codeph">inv_code=ABC&amp;member=1</code></p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">cb</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">Publisher-supplied
cache buster. This is just a placeholder into which the publisher can
insert their own cache buster.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">pubclick</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">Publisher-supplied URL
for third-party click tracking. This is just a placeholder into which
the publisher can insert their own click tracker. This parameter should
be used for an <strong>unencoded</strong> tracker. This parameter is
expected to be the last parameter in the URL. Please note that the click
tracker placed in this parameter will only fire if the creative winning
the auction is using Xandr click tracking
properly.
<p>Example: <code
class="ph codeph">pubclick=https://click.adserver.com</code></p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">pubclickenc</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">Publisher-supplied URL
for third-party click tracking. This is just a placeholder into which
the publisher can insert their own click tracker. This parameter should
be used for an <strong>encoded</strong> tracker. This parameter does not
need to be the last parameter in the URL. Please note that the click
tracker placed in this parameter will only fire if the creative winning
the auction is using Xandr click tracking
properly.
<p>Example: <code
class="ph codeph">pubclickenc=https%3A%2F%2Fclick.adserver.com</code></p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">loc</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">The user's location
expressed in latitude and longitude, in the format: <code
class="ph codeph">snnn.ddddddddddddd,snnn.ddddddddddddd</code>. Up to 13
decimal places of precision are allowed.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">age</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">The numerical age,
birth year, or hyphenated age range of the user.
<p>Examples: <code
class="ph codeph">age=56, age=1974, age=25-35</code></p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">gender</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">The gender of the
user. Allowed values: <code class="ph codeph">m</code> for male, <code
class="ph codeph">f</code> for female
<p>Example: <code class="ph codeph">gender=m</code></p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">position</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">The position of the
tag on the page. Can be <code class="ph codeph">above</code> (above the
fold) or <code class="ph codeph">below</code>.

<b>Note:</b> This option is not available from
the UI but can be appended to the placement tag.
Also, <code class="ph codeph">above</code> and <code
class="ph codeph">below</code> must be in lower case.

<p>Example: <code class="ph codeph">position=above</code></p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">private_sizes</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">The additional sizes
that allowed to serve only for custom deals or packages (when private
sizes are allowed by the deal or package).
<p>Example: <code
class="ph codeph">private_sizes=150x300,320x480</code></p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">promo_sizes</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">Allow additional sizes
to use this placement.

<b>Note:</b> The placement needs to be set to
<code class="ph codeph">sizeless</code> and the actual size will need to
be passed in the <code class="ph codeph">size</code> parameter below.

<p>Example: <code
class="ph codeph">promo_sizes=728x90,150x300</code></p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">promo_alignment</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">Allowed values: <code
class="ph codeph">none</code> or <code class="ph codeph">center.</code>
<p>Example: <code
class="ph codeph">promo_alignment=center</code></p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">size</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">The size of the
placement - required if sizeless. This parameter will NOT override a
preset size format. Allowed format: <code
class="ph codeph">widthXheight.</code>
<p>Example: <code class="ph codeph">size=300x250</code></p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">referrer</code></td>
<td class="entry"
headers="ID-00001d3b__entry__2"><strong>Deprecated.</strong> <span
class="ph">Xandr performs domain detection automatically.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">reserve</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">The reserve price for
this inventory, which is the minimum net amount the placement will
accept for placing a creative. This parameter will override a preset
price and will set the hard floor (and soft floor where relevant) if
Yield Management is not being used or if the reserve price is greater in
value than the YM Floor wherein the Floor Rule has the override setting
on.

<b>Note:</b> This option is not available from
the UI and must be appended to the placement tag
manually.

<p>Example: <code class="ph codeph">reserve=5.00</code></p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">ext_inv_code</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">A predefined value
passed on the query string that can be used in reporting. The value must
be entered into the system before it is logged. For more information,
see <a
href="xandr-api/external-inventory-code-service.md"
class="xref" target="_blank">External Inventory Code Service.</a>
<p>Example: <code class="ph codeph">ext_inv_code=10039</code></p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">psa</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">If <code
class="ph codeph">true</code>, PSAs will serve if the auction has no
winner. Otherwise, an empty <code class="ph codeph">200 OK</code> HTTP
response will be returned. This could be useful for clients who wish to
try filling unsold impressions from a different inventory source.
Instead of serving a static tag as a default creative, the blank
response can offer more flexibility in treating unsold impressions.
Allowed values: <code class="ph codeph">true</code>, <code
class="ph codeph">false</code>, <code class="ph codeph">1</code>, or
<code class="ph codeph">0</code>.
<p>Example: <code class="ph codeph">psa=0</code></p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">pt1</code>, <code class="ph codeph">pt2</code>, <code
class="ph codeph">pt3</code>, <code class="ph codeph">pt4</code>, <code
class="ph codeph">pt5</code>, <code class="ph codeph">pt6</code>, <code
class="ph codeph">pt7</code>, <code class="ph codeph">pt8</code>, <code
class="ph codeph">pt9</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">These can be used to
pass custom data through managed placements to managed 3rd-party
creatives. For more information, see <a
href="create-a-placement-tag-macro.md" class="xref"
title="If you would like even more flexibility than what our existing macros provide, you can create a placement tag macro, which will send custom data on the placement ad call so that you can use it in your creative tag. You can create a placement tag macro if you have access to both managed supply and demand.">Create
a Placement Tag Macro</a>.
<p>Example: <code
class="ph codeph">pt1=products:ipad,ios,iphone</code></p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">use_cookies</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">If <code
class="ph codeph">0</code>, do not use any data that <span
class="ph">Xandr stores on the user for this impression. This
includes data used for segment targeting, frequency capping, and
conversion attribution. For more information on cookie-related settings,
see <a
href="xandr-api/publisher-service.md"
class="xref" target="_blank">Publisher Service</a> and <a
href="creative-macros.md" class="xref"
title="You can insert creative macros into your creative third-party tags, impression trackers, landing page URLs, and third-party pixels for reporting and optimization purposes.">Creative
Macros</a>.
<p>Example: <code class="ph codeph">use_cookies=0</code></p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">truncate_ip</code></td>
<td class="entry" headers="ID-00001d3b__entry__2">If <code
class="ph codeph">1</code> or <code class="ph codeph">true</code>, the
last octet of the user's IP address will be truncated in the bid
request. Use this flag for ad tags in jurisdictions where IP address is
considered personally identifiable information (The full IP address will
continue to be used for operational purposes and security, of course.).
For more details about privacy, see <a
href="https://wiki.xandr.com/display/policies/Privacy+and+the+Xandr+Platform"
class="xref" target="_blank">Privacy and the <span
class="ph">Xandr Platform</a> (login required).
<p>Example: <code class="ph codeph">truncate_ip=1</code></p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001d3b__entry__1"><code
class="ph codeph">custom_pub_data</code></td>
<td class="entry"
headers="ID-00001d3b__entry__2"><strong>Deprecated</strong> The contents
of <code class="ph codeph">custom_pub_data</code> should be 70
characters or less (after that it is truncated). It is permissible to
pass more than 70 characters, but only the first 70 will be logged. The
characters newline <code class="ph codeph">("\n")</code>, tab <code
class="ph codeph">("\t")</code>, and backslash <code
class="ph codeph">("\")</code> are not allowed. Otherwise, all
characters that can be displayed by the standard C library function
<code class="ph codeph">isprint</code> are allowed.</td>
</tr>
</tbody>
</table>

Example

``` pre
<!-- BEGIN IFRAME TAG - Fancy Cracker Homepage < - DO NOT MODIFY --> 
<IFRAME SRC="https://ib.sand-08.adnxs.net/tt?id=5202&cb=[CACHEBUSTER]&age=[AGE]&pubclick=[INSERT_CLICK_TAG]" FRAMEBORDER="0" SCROLLING="no" MARGINHEIGHT="0" MARGINWIDTH="0" TOPMARGIN="0" LEFTMARGIN="0" ALLOWTRANSPARENCY="true" WIDTH="728" HEIGHT="90"></IFRAME> 
<!-- END TAG -->
```

Related Topics

- <a href="create-a-placement.md" class="xref">Create a Placement</a>
- <a href="assign-a-default-creative-to-a-placement.md"
  class="xref">Assign a Default Creative to a Placement</a>
- <a href="export-placement-tags.md" class="xref">Export Placement
  Tags</a>




