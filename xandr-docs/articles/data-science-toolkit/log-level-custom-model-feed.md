---
Title : Log-Level Custom Model Feed
Description : The Log-Level Custom Model Feed gives you specific information on models associated with your line items and the values calculated by each
model. 
ms.custom : data-science
---


# Log-Level Custom Model Feed



The Log-Level Custom Model Feed gives you specific information on models
associated with your line items and the values calculated by each
model. 



## SEQUENCE



The columns below are listed in the same order in which they appear in
the log-level feed file (top to bottom here, left to right in the file).



## INTEGER KEY

- tinyint = 1 byte (8 bit)
- smallint = 2 byte (16 bit)
- int = 4 byte (32 bit)
- bigint = 8 byte (64 bit)





## COLUMNS

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000005fc__entry__1" class="entry colsep-1 rowsep-1">Column
Index</th>
<th id="ID-000005fc__entry__2" class="entry colsep-1 rowsep-1">Column
Name</th>
<th id="ID-000005fc__entry__3" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000005fc__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__1">01</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__2">date_time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005fc__entry__3">UNIX
Epoch time</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005fc__entry__4">The
time and date of the impression (e.g., <code
class="ph codeph">1526057561</code> which would need to be translated to
<em>Friday, May 11, 2018 4:52:41 PM (UTC)</em>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__1">02</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__2">auction_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__3">bigint</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005fc__entry__4">The
AppNexus unique auction identifier.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__1">03</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__2">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005fc__entry__4">The
member ID of the buyer.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__1">04</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__2">user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__3">bigint</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005fc__entry__4">The
AppNexus 64-bit User ID stored in the <span
class="ph">AppNexus cookie store. This field is <code
class="ph codeph">0</code> when AppNexus does
not have a match for this user or the user's browser doesn't accept
cookies. It will be <code class="ph codeph">-1</code> for opt-out users.

<b>Note:</b> This field has been deprecated
from the API <a
href="log-level-data/log-level-data-feeds.md"
class="xref" target="_blank">Log Level Data service</a> (in compliance
with GDPR).
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__1">05</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__2">model_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005fc__entry__4">Type
of the model. Possible values are:
<ul>
<li><code class="ph codeph">1</code> = expected_value<br />
</li>
<li><code class="ph codeph">2</code> = creative_selection<br />
</li>
<li><code class="ph codeph">3</code> = ev_click<br />
</li>
<li><code class="ph codeph">4</code> = click_imp<br />
</li>
<li><code class="ph codeph">5</code> = ev_conv<br />
</li>
<li><code class="ph codeph">6</code> = conv_imp<br />
</li>
<li><code class="ph codeph">7</code> = conv_click<br />
</li>
<li><code class="ph codeph">8</code> = bid_modifier<br />
</li>
<li><code class="ph codeph">9</code> = nonvaluation<br />
</li>
<li><code class="ph codeph">10</code> = cadence<br />
</li>
<li><code class="ph codeph">11</code> = budget_splitter</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__1">06</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__2">model_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005fc__entry__4">The
ID of the custom model used in the auction. When no custom model is
used, this defaults to 0.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__1">07</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__2">leaf_code</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005fc__entry__4">An
optional string value that will be passed through to logs and reporting
to aid with debugging and performance analysis. <code
class="ph codeph">leaf_code</code> may be up to seven ASCII (7-bit)
characters and is not required to be unique, this defaults to "".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__1">08</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__2">origin</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__4">Origin indicates whether the model is
attached by AppNexus. Possible values are:
<p><code class="ph codeph">0</code> = Model attached by client</p>
<p><code class="ph codeph">1</code> = Model attached by <span
class="ph">AppNexus Optimization</p>
<p><code class="ph codeph">2</code> = Model attached by Programmable
Splits</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__1">09</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__2">experiment</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__4">Indicates whether the impression is a
test or control impression. This is currently unsupported and will be 0
for all impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__1">10</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__2">value</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__3">numeric(18,6)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__4">Value calculated by the model</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__1">11</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__2">campaign_group_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005fc__entry__4">The
ID of the Line Item</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__1">12</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__2">hashed_user_id_64</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005fc__entry__3">bytes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005fc__entry__4">The
hashed version of the AppNexus 64-bit User ID
which will we provided as a proxy in certain cases where <span
class="ph">AppNexus is unable to provide the real <code
class="ph codeph">user_id_64</code>. You will not be able to target
users via their hashed user ID. However you can use this identifier to
calculate unique users, user frequency, and user recency. An example is
provided below:
<pre class="pre codeblock"><code>user_id_64:
XXXXXX304391387YYYY
hashed_user_id_64:
0000f47b074866470613d9397f0bd7efa78c7adec992aac5e117cbe2d55993a94767</code></pre></td>
</tr>
</tbody>
</table>




<a href="custom-models.md" class="link">Custom Models</a>






