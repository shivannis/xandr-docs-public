---
Title : Query String Feed
Description : <b>Note:</b> This feed has been deprecated as
ms.custom : log-level-data
ms.date : 10/28/2023
of January 2022.
---


# Query String Feed





<b>Note:</b> This feed has been deprecated as
of January 2022.



The Query String Feed provides data about the query strings that come in
on your managed publishers' impressions. It contains one row for each
sold impression that passes in a query string in the correct format. For
more information on the required query string format, see <a
href="query-string-feed.md#QueryStringFeed-QueryStringFormattingRequirements"
class="xref" target="_blank">Query String Formatting Requirements</a>.



<b>Note:</b> You must be specially enabled to
log query strings and receive this feed. This is true even if you
already get a <a
href="standard-feed.md"
class="xref" target="_blank">Standard Feed</a>. For more information
contact your Xandr representative.



The Xandr internal name for this feed
is `custom_data_feed`.



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





## Sequence

The columns below are listed in the same order in which they appear in
the log-level feed file (top to bottom here, left to right in the file).





## Columns

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001ed7__entry__1" class="entry colsep-1 rowsep-1">Column
Index</th>
<th id="ID-00001ed7__entry__2" class="entry colsep-1 rowsep-1">Column
Name</th>
<th id="ID-00001ed7__entry__3" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001ed7__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ed7__entry__1">01</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ed7__entry__2">date_time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001ed7__entry__3">UNIX
Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001ed7__entry__4">The
time the impression was served (e.g., <code
class="ph codeph">1526057561</code> which would need to be translated to
<em>Friday, May 11, 2018 4:52:41 PM (UTC)</em> ).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ed7__entry__1">02</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ed7__entry__2">auction_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ed7__entry__3">bigint (64 bit)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ed7__entry__4">Xandr's unique
auction identifier.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ed7__entry__1">03</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ed7__entry__2">seller_member_id</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001ed7__entry__3">int
(32 bit)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001ed7__entry__4">The
member ID of the seller.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ed7__entry__1">04</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ed7__entry__2">querystring</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ed7__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001ed7__entry__4">The
<code class="ph codeph">custom_pub_data</code> parameter from the query
string of the impression</td>
</tr>
</tbody>
</table>






