# Key Value Auction Feed

<div class="body">

<div class="note">

<span class="notetitle">Note:</span> This feed is not available to Xandr
Invest clients.

</div>

The Log-Level Key Value Auction Feed gives you information on all
eligible key/value targets in an auction.

The <span class="ph">Xandr</span> internal name for this feed
is `auction_kv_labels_feed`.

Impressions with key/value targeting will serve and be reported only for
those impressions that were logged by a placement tag containing
the **kw**\_ prefix. For example, a placement tag
containing keyname=value1 will not serve and therefore not be logged,
whereas a placement tag containing  **kw**\_keyname=value1 will serve
and be logged. This applies to ad calls with the following tag
types: */tt*, */ttj*, */fpt*, */jpt*, */pt*, */ptv*, */ssptv*, */mtj*, */map*,
and* /mob*.

<div class="note">

<span class="notetitle">Note:</span> When using
<span class="ph">Xandr</span>'s seller tag, omit the **kw\\ **prefix.
AST has the keyword object in the body of the request, so the prefix is
not needed.

</div>

- Each line returned in the feed represents a single key/value pair. For
  example, if you target on city = NY or LA, two rows will be returned,
  one for city/NY and one for city/LA.
- Each feed is delivered hourly and will be retained for 7 days. The
  feed will be logged when an auction is complete.
- If you enable the key value auction feed, it will be in your feed list
  along with all your other log-level data feeds. See <a
  href="https://docs.xandr.com/bundle/log-level-data/page/log-level-data-feeds.html"
  class="xref" target="_blank">Log-Level Data Feeds</a> for more
  information.

<div class="section">

## Columns

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d10033e132" class="entry cellborder"
style="vertical-align: top">Column Index</th>
<th id="d10033e135" class="entry cellborder"
style="vertical-align: top">Column Name</th>
<th id="d10033e138" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d10033e141" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d10033e132 ">1</td>
<td class="entry cellborder"
headers="d10033e135 ">date_time</td>
<td class="entry cellborder"
headers="d10033e138 ">UNIX Epoch time</td>
<td class="entry cellborder"
headers="d10033e141 ">The time and date of impression (e.g., <code
class="ph codeph">1526057561</code> which would need to be translated
to <em>Friday, May 11, 2018 4:52:41 PM (UTC)</em>).</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10033e132 ">2</td>
<td class="entry cellborder"
headers="d10033e135 ">auction_id_64</td>
<td class="entry cellborder"
headers="d10033e138 ">bigint</td>
<td class="entry cellborder"
headers="d10033e141 ">The unique ID of the auction.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10033e132 ">3</td>
<td class="entry cellborder"
headers="d10033e135 ">user_id_64</td>
<td class="entry cellborder"
headers="d10033e138 ">bigint</td>
<td class="entry cellborder"
headers="d10033e141 ">The <span class="ph">Xandr</span> 64-bit user ID
stored in the <span class="ph">Xandr</span> cookie store.
<p>This field is <code class="ph codeph">0</code> when:</p>
<ul>
<li><span class="ph">Xandr</span> does not have a match for this user
or </li>
<li>the user's browser doesn't accept cookies or</li>
<li>you do not have a legal basis to access and process personal data
for an impression where GDPR applies</li>
</ul>
<p>It will be <code class="ph codeph">-1</code> for
opt-out/non-consented users.</p></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10033e132 ">4</td>
<td class="entry cellborder"
headers="d10033e135 ">key_name</td>
<td class="entry cellborder"
headers="d10033e138 ">string</td>
<td class="entry cellborder"
headers="d10033e141 ">The key name.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10033e132 ">5</td>
<td class="entry cellborder"
headers="d10033e135 ">value_name</td>
<td class="entry cellborder"
headers="d10033e138 ">string</td>
<td class="entry cellborder"
headers="d10033e141 ">The key value name.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10033e132 ">6</td>
<td class="entry cellborder"
headers="d10033e135 ">key_label</td>
<td class="entry cellborder"
headers="d10033e138 ">string</td>
<td class="entry cellborder"
headers="d10033e141 ">A descriptive name of the key.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10033e132 ">7</td>
<td class="entry cellborder"
headers="d10033e135 ">value_label</td>
<td class="entry cellborder"
headers="d10033e138 ">string</td>
<td class="entry cellborder"
headers="d10033e141 ">A descriptive name of the value.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10033e132 ">8</td>
<td class="entry cellborder"
headers="d10033e135 ">hashed_user_id_64</td>
<td class="entry cellborder"
headers="d10033e138 ">bytes</td>
<td class="entry cellborder"
headers="d10033e141 ">The hashed version of the <span
class="ph">Xandr</span> 64-bit User ID which will we provided as a proxy
in certain cases where <span class="ph">Xandr</span> is unable to
provide the real <code class="ph codeph">user_id_64</code>. You will not
be able to target users via their hashed user ID. However you can use
this identifier to calculate unique users, user frequency, and user
recency. An example is provided below:
<pre class="pre codeblock"><code>user_id_64:
XXXXXX304391387YYYY
hashed_user_id_64:
0000f47b074866470613d9397f0bd7efa78c7adec992aac5e117cbe2d55993a94767</code></pre>
<div class="note">
<span class="notetitle">Note:</span> If you receive the  <code
class="ph codeph">user_id_64</code>  version of this field, you will not
receive the hashed version.
</div></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d10033e132 ">9</td>
<td class="entry cellborder"
headers="d10033e135 ">partition_time_millis</td>
<td class="entry cellborder"
headers="d10033e138 ">UNIX Epoch</td>
<td class="entry cellborder"
headers="d10033e141 ">The hourly partition any record row falls into,
represented as a UNIX Epoch timestamp value (in milliseconds). Useful
for defining hourly partitions when loading into a database or data
warehouse. For the Avro format, this field is given the timestamp-millis
logical type for native timestamp detection. For example, <code
class="ph codeph">1568077200000</code> can also be represented
as <em>Tuesday, September 10, 2019 1 AM (UTC)</em>.</td>
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
