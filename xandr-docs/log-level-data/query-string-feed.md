# Query String Feed

<div class="body">

<div class="note">

<span class="notetitle">Note:</span> This feed has been deprecated as of
January 2022.

</div>

The Query String Feed provides data about the query strings that come in
on your managed publishers' impressions. It contains one row for each
sold impression that passes in a query string in the correct format. For
more information on the required query string format, see <a
href="https://docs.xandr.com/bundle/log-level-data/page/query-string-feed.html#QueryStringFeed-QueryStringFormattingRequirements"
class="xref" target="_blank">Query String Formatting Requirements</a>.

<div class="note">

<span class="notetitle">Note:</span> You must be specially enabled to
log query strings and receive this feed. This is true even if you
already get a <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a>. For more information
contact your <span class="ph">Xandr</span> representative.

</div>

The <span class="ph">Xandr</span> internal name for this feed
is `custom_data_feed`.

<div class="section">

## Query String Formatting Requirements

- Only the contents of the `custom_pub_data` querystring parameter will
  be logged. Other querystring data outside of the `custom_pub_data`
  parameter will not be logged.
- The contents of `custom_pub_data` should be 70 characters or less
  (after that it is truncated).
- It is permissible to pass more than 70 characters, but only the first
  70 will be logged.
- The characters newline (`"\n"`), tab (`"\t"`), and backslash (`"\"`)
  are not allowed. Otherwise, all characters that can be displayed by
  the standard C library function `isprint` are allowed. For more
  information, see the <a
  href="http://developer.apple.com/library/ios/#documentation/system/conceptual/manpages_iphoneos/man3/isprint.3.html"
  class="xref" target="_blank">isprint(3) man page</a>.

</div>

<div class="section">

## Sequence

The columns below are listed in the same order in which they appear in
the log-level feed file (top to bottom here, left to right in the file).

</div>

<div class="section">

## Columns

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d18636e135" class="entry cellborder"
style="vertical-align: top">Column Index</th>
<th id="d18636e138" class="entry cellborder"
style="vertical-align: top">Column Name</th>
<th id="d18636e141" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d18636e144" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d18636e135 ">01</td>
<td class="entry cellborder"
headers="d18636e138 ">date_time</td>
<td class="entry cellborder"
headers="d18636e141 ">UNIX Epoch time</td>
<td class="entry cellborder"
headers="d18636e144 ">The time the impression was served (e.g., <code
class="ph codeph">1526057561</code> which would need to be translated to
<em>Friday, May 11, 2018 4:52:41 PM (UTC)</em> ).</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d18636e135 ">02</td>
<td class="entry cellborder"
headers="d18636e138 ">auction_id_64</td>
<td class="entry cellborder"
headers="d18636e141 ">bigint (64 bit)</td>
<td class="entry cellborder"
headers="d18636e144 "><span class="ph">Xandr</span>'s unique auction
identifier.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d18636e135 ">03</td>
<td class="entry cellborder"
headers="d18636e138 ">seller_member_id</td>
<td class="entry cellborder"
headers="d18636e141 ">int (32 bit)</td>
<td class="entry cellborder"
headers="d18636e144 ">The member ID of the seller.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d18636e135 ">04</td>
<td class="entry cellborder"
headers="d18636e138 ">querystring</td>
<td class="entry cellborder"
headers="d18636e141 ">string</td>
<td class="entry cellborder"
headers="d18636e144 ">The <code class="ph codeph">custom_pub_data</code>
parameter from the query string of the impression</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="log-level-data-feeds.html" class="link">Log Level Data
Feeds</a>

</div>

</div>

</div>
