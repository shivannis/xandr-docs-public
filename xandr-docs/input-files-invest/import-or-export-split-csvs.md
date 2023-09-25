---
Title : Import or Export Split CSVs
Description : You can create or edit splits in bulk by importing a CSV specifying the
details of your splits.
---


# Import or Export Split CSVs



You can create or edit splits in bulk by importing a CSV specifying the
details of your splits.

Import or Export a CSV



<b>Note:</b> When you import a CSV, it
replaces all of the existing splits on your line item. To keep targeting
the existing splits, they must be specified in the spreadsheet with the
same split IDs.



1.  Go to Line
    Item  \>  Programmable
    Splits.
2.  Click
    Actions
     \>  Import CSV to
    import a CSV file or
    Actions
     \>  Export CSV to
    export a CSV file.

CSV Rules

- Each row defines a split.
- Columns optionally specify the split ID, name, capped/uncapped status,
  allocation, active status, feature, or user test group allocation.
  Optionally, columns can also associate creatives, bids, or expected
  values with a split. The columns are in an AND relationship. That is,
  a split matches the criteria specified by all the columns.
- Separate multiple values with commas.
- You can modify any feature to exclude a value with the operator "not".
  This matches impressions where one or more of the specified values is
  not true.

Segment operators work slightly differently from other operators:

- Separate multiple segments with commas
- "include" or "exclude" must be specified for all segments
- "ANY" or "ALL" must be specified for segments within a group (even if
  the group only contains one segment)
  - "ALL" represents AND (it matches impressions when all of the
    specified values are true)
  - "ANY" represents OR (it matches impressions where one or more of the
    specified values is true)

Split Settings

This table describes the allowed values for each column. All columns are
optional.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002318__entry__1" class="entry">Feature Class</th>
<th id="ID-00002318__entry__2" class="entry">Column Title</th>
<th id="ID-00002318__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td rowspan="3" class="entry" headers="ID-00002318__entry__1">Basic
Information</td>
<td class="entry" headers="ID-00002318__entry__2">ID</td>
<td class="entry" headers="ID-00002318__entry__3">The split ID. If
specified, the row will replace the existing split definition. If left
blank, a new split will be created and an ID will be assigned
automatically.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Name</td>
<td class="entry" headers="ID-00002318__entry__3">The name of the
split.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Active</td>
<td class="entry" headers="ID-00002318__entry__3">The status of the
split. "1" is active and "0" is inactive. If left blank, the split will
default to active.</td>
</tr>
<tr class="even row">
<td rowspan="8" class="entry"
headers="ID-00002318__entry__1">Behaviors</td>
<td class="entry" headers="ID-00002318__entry__2">Spend Allocation</td>
<td class="entry" headers="ID-00002318__entry__3">The percentage of the
line item budget allocated to the split. The spend allocation for each
split should be between 1 and 99. If the sum of all specified splits
does not equal 100, the remainder will be assigned to impressions that
pass ALI targeting but don't meet any split conditions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Priority</td>
<td class="entry" headers="ID-00002318__entry__3">This feature is not
yet available through CSV import.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Cap</td>
<td class="entry" headers="ID-00002318__entry__3">Acceptable values are
"constrained" (capped) or "unconstrained" (uncapped). If you don't
specify, the split will default to uncapped.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Max Bid</td>
<td class="entry" headers="ID-00002318__entry__3">How much you are
willing to pay for impressions, in the local currency set at the
Advertiser level</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Bid Multiplier</td>
<td class="entry" headers="ID-00002318__entry__3">This feature is not
yet available through CSV import.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Creatives</td>
<td class="entry" headers="ID-00002318__entry__3">List the IDs of
creatives you would like to serve on this split.
<p><strong>Example:</strong></p>
<pre class="pre codeblock"><code>98603894, 98714312, 98754614</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Custom Macros</td>
<td class="entry" headers="ID-00002318__entry__3">This feature is not
yet available through CSV import.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Test Groups</td>
<td class="entry" headers="ID-00002318__entry__3">Activates the user
test groups feature, targeting a unique group of users per split for A/B
testing. The value represents the percentage of eligible users on the
line item to be targeted.
<p><strong>Example:</strong></p>
<p>Target 20% of eligible users:</p>
<pre class="pre codeblock"><code>20</code></pre>
<p>
![Import or Export Splits test groups](media/import-or-export-split-csvs/splits-test-groups.png)

alt="Spreadsheet specifying User Test Group allocations and features for all the splits on a line item" /></p></td>
</tr>
<tr class="even row">
<td rowspan="5" class="entry" headers="ID-00002318__entry__1">Geo
<p>For more information, see <a
href="additional-geo-restrictions-ali.md" class="xref"
title="In addition to country, you can also restrict the impressions you target based on other geographic details of the users viewing them.">Additional
Geo Restrictions - ALI</a> .</p></td>
<td class="entry" headers="ID-00002318__entry__2">Country</td>
<td class="entry" headers="ID-00002318__entry__3">User country. Values
are country IDs, not names. The IDs are listed in the drop-down menu for
the field in the UI or available through the API
with the <a
href="xandr-api/country-service.md"
class="xref" target="_blank">Country Service</a>.
<p><strong>Example:</strong></p>
<p>Include the United States and Canada:</p>
<pre class="pre codeblock"><code>any 233, 41</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Region</td>
<td class="entry" headers="ID-00002318__entry__3">User geographic
region. The IDs are listed in the drop-down menu for the field in <span
class="ph">the UI or available through the API with the <a
href="xandr-api/region-service.md"
class="xref" target="_blank">Region Service</a>.
<p><strong>Example:</strong></p>
<p>Include North-East and North-West:</p>
<pre class="pre codeblock"><code>any 538, 541</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">City</td>
<td class="entry" headers="ID-00002318__entry__3">User city. The IDs are
listed in the drop-down menu for the field in the
UI or available through the API with the <a
href="xandr-api/city-service.md"
class="xref" target="_blank">City Service</a>.
<p><strong>Example:</strong></p>
<p>Exclude New York and Los Angeles:</p>
<pre class="pre codeblock"><code>not 198423, 181953</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Metro Code</td>
<td class="entry" headers="ID-00002318__entry__3">User <a
href="additional-geo-restrictions-ali.md" class="xref"
title="In addition to country, you can also restrict the impressions you target based on other geographic details of the users viewing them.">metro
code</a>. The IDs are listed in the drop-down menu for the field in
the UI or available through the API with the <a
href="xandr-api/designated-market-area-service.md"
class="xref" target="_blank">Designated Market Area Service</a>.
<p><strong>Example:</strong></p>
<p>Include Atlanta GA and Augusta GA:</p>
<pre class="pre codeblock"><code>any 524,520</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Postal Code</td>
<td class="entry" headers="ID-00002318__entry__3">User <a
href="additional-geo-restrictions-ali.md" class="xref"
title="In addition to country, you can also restrict the impressions you target based on other geographic details of the users viewing them.">postal
code</a>. The IDs are listed in the drop-down menu for the field in
the UI or available through the API with the <a
href="xandr-api/postal-code-service.md"
class="xref" target="_blank">Postal Code Service</a> .
<div class="note note_note">
<b>Note:</b> When specifying postal code, you
must also include the country code. For example, to target postcode 2096
in Australia, enter "AU:2096".

<p><strong>Example:</strong></p>
<p>Include US zip codes 11238 and 10010:</p>
<pre class="pre codeblock"><code>any US:11238, US:10010</code></pre></td>
</tr>
<tr class="odd row">
<td rowspan="7" class="entry" headers="ID-00002318__entry__1">Inventory
<p>For more information, see <a href="inventory-targeting-ali.md"
class="xref">Inventory Targeting</a>.</p></td>
<td class="entry" headers="ID-00002318__entry__2">Size</td>
<td class="entry" headers="ID-00002318__entry__3">The placement size of
impressions.
<div class="note note_note">
<b>Note:</b> The format for size values is
heightXwidth.

<p><strong>Example:</strong></p>
<p>Include 300x600 and 300x800 placements:</p>
<pre class="pre codeblock"><code>any 300X600,300X800</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Domain or App</td>
<td class="entry" headers="ID-00002318__entry__3">Impression domain ID
or app ID. The IDs are listed in the drop-down menu for the field in
the UI. Mobile app IDs are also available
through the API with the <a
href="xandr-api/mobile-app-service.md"
class="xref" target="_blank">Mobile App Service</a>.
<p><strong>Example:</strong></p>
<p>Include cnn.com:</p>
<pre class="pre codeblock"><code>any 324</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Placement</td>
<td class="entry" headers="ID-00002318__entry__3">Placement ID. The IDs
are available through the API with the <a
href="xandr-api/placement-service.md"
class="xref" target="_blank">Placement Service</a>.
<p><strong>Example:</strong></p>
<p>Include placements 482348, 506200, and 506199:</p>
<pre class="pre codeblock"><code>any 482348, 506200, 506199</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Publisher</td>
<td class="entry" headers="ID-00002318__entry__3">Publisher ID. The IDs
are available through the API with the <a
href="xandr-api/publisher-service.md"
class="xref" target="_blank">Publisher Service</a>.
<p><strong>Example:</strong></p>
<p>Exclude Publisher:</p>
<pre class="pre codeblock"><code>any 233,41</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Seller Member</td>
<td class="entry" headers="ID-00002318__entry__3">Seller Member ID. The
IDs are listed in the drop-down menu for the field in <span
class="ph">the UI or available through the API with the <a
href="xandr-api/platform-member-service.md"
class="xref" target="_blank">Platform Member Service</a> .
<p><strong>Example:</strong></p>
<p>Exclude Xandr Demo and <span
class="ph">Xandr Testing Account:</p>
<pre class="pre codeblock"><code>not 233,41</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Inventory type</td>
<td class="entry" headers="ID-00002318__entry__3">Inventory type.
Options: web, app, all
<p><strong>Example:</strong></p>
<p>Include web inventory:</p>
<pre class="pre codeblock"><code>any web</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Inventory list</td>
<td class="entry" headers="ID-00002318__entry__3">Inventory blocklist or
allowlist.
<p><strong>Examples:</strong></p>
<p>Target allowlist 16245:</p>
<pre class="pre codeblock"><code>all 16245</code></pre>
<p>Exclude blocklist 150:</p>
<pre class="pre codeblock"><code>not_any 150</code></pre></td>
</tr>
<tr class="even row">
<td rowspan="7" class="entry" headers="ID-00002318__entry__1">System
<p>For more information, see <a href="buy-side-targeting.md"
class="xref">Buy-Side Targeting</a>.</p></td>
<td class="entry" headers="ID-00002318__entry__2">Operating System
Family</td>
<td class="entry" headers="ID-00002318__entry__3">User operating system
family ID. The IDs are listed in the drop-down menu for the field in
the UI or available through the API with the <a
href="xandr-api/operating-system-family-service.md"
class="xref" target="_blank">Operating System Family Service</a> .
<p><strong>Example:</strong></p>
<p>Include Microsoft Windows:</p>
<pre class="pre codeblock"><code>any 5</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Operating System
Version</td>
<td class="entry" headers="ID-00002318__entry__3">User operating system
ID. The IDs are listed in the drop-down menu for the field in <span
class="ph">the UI or available through the API with the <a
href="xandr-api/operating-system-service.md"
class="xref" target="_blank">Operating System Service</a> .
<p><strong>Example:</strong></p>
<p>Include Android Gingerbread 2.3.3 and 2.3.4:</p>
<pre class="pre codeblock"><code>any 22,23</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Browser</td>
<td class="entry" headers="ID-00002318__entry__3">Browser ID. The IDs
are listed in the drop-down menu for the field in the
UI or available through the API with the <a
href="xandr-api/browser-service.md"
class="xref" target="_blank">Browser Service</a> .
<p><strong>Example:</strong></p>
<p>Exclude Firefox 3, 4, and other versions:</p>
<pre class="pre codeblock"><code>not 6, 4, 7</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Browser Language</td>
<td class="entry" headers="ID-00002318__entry__3">Browser language ID.
The IDs are listed in the drop-down menu for the field in <span
class="ph">the UI or available through the API with the <a
href="xandr-api/language-service.md"
class="xref" target="_blank">Language Service</a> .
<p><strong>Example:</strong></p>
<p>Include English:</p>
<pre class="pre codeblock"><code>any 1</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Device type</td>
<td class="entry" headers="ID-00002318__entry__3">The type of device to
be targeted. Options are "pc &amp; other devices", "phone", and
"tablet".
<p><strong>Example:</strong></p>
<p>Exclude phones and tablets:</p>
<pre class="pre codeblock"><code>not phone, tablet</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Device carrier</td>
<td class="entry" headers="ID-00002318__entry__3">The ID of the specific
mobile carrier. The IDs are listed in the drop-down menu for the field
in the UI or available through the API with the
<a
href="xandr-api/carrier-service.md"
class="xref" target="_blank">Carrier Service</a>.
<p><strong>Example:</strong></p>
<p>Include AT&amp;T and Verizon:</p>
<pre class="pre codeblock"><code>any 60, 14</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Model</td>
<td class="entry" headers="ID-00002318__entry__3">The ID of the device
model. The IDs are listed in the drop-down menu for the field in <span
class="ph">the UI or available through the API with the <a
href="https://xandr-prod.zoominsoftware.io/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a>.
<p><strong>Example:</strong></p>
<p>Include Samsung Galaxy Tab GT-P1000, GTP1000T, GTP1010:</p>
<pre class="pre codeblock"><code>any 5941, 5946, 5947</code></pre></td>
</tr>
<tr class="odd row">
<td rowspan="3" class="entry" headers="ID-00002318__entry__1">Inventory
Performance
<p>For more information, see <a href="introduction-to-viewability.md"
class="xref">Introduction to Viewability</a>.</p></td>
<td class="entry" headers="ID-00002318__entry__2">Viewability
Threshold</td>
<td class="entry" headers="ID-00002318__entry__3">Evaluate web display
impressions by how likely they are to be measured as viewable by the IAB
standard, as determined by Xandr optimization.
<p><strong>Example:</strong></p>
<p>Include impressions that are at least 80% likely to achieve IAB
viewability rate:</p>
<pre class="pre codeblock"><code>&gt;=0.8</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Video Viewability
Threshold</td>
<td class="entry" headers="ID-00002318__entry__3">Evaluate web video
impressions by how likely they are to be measured as viewable by the IAB
standard, as determined by Xandr optimization.
<p><strong>Example:</strong></p>
<p>Include impressions that are at least 60% likely to achieve IAB video
viewability rate:</p>
<pre class="pre codeblock"><code>&gt;=0.6</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Completion Rate
Threshold</td>
<td class="entry" headers="ID-00002318__entry__3">Evaluate web video
impressions by how likely they are to be completed, as determined by
Xandr optimization.
<p><strong>Example:</strong></p>
<p>Exclude impressions that are no more than 20% likely to be
completed:</p>
<pre class="pre codeblock"><code>not &lt;=0.20</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__1">Segment</td>
<td class="entry" headers="ID-00002318__entry__2">Segment
Presence/Absence</td>
<td class="entry" headers="ID-00002318__entry__3">Segment presence or
absence, age, and value.
<p><strong>Example:</strong></p>
<p>Target the following users:</p>
<ol>
<li>Include users that have a value of 0 that are in segment ID -
3359836</li>
<li>Include users that are either in segment ID - 1879649 or in segment
ID - 39246</li>
<li><p>Include users that are not in segment ID - 3359827</p>
<pre class="pre codeblock"><code>ANY include (3359836) [value = 0], ANY include (1879649), include (39246), ANY exclude (3359827)</code></pre>
<p>Target the following users:</p></li>
<li>Exclude users who have been in Segment 108 for less than two
hours</li>
<li><p>Include users who have been in Segment 109 for at least 10
minutes and Segment 110 for at least 15 minutes</p>
<pre class="pre codeblock"><code>ALL exclude 108[age&lt;120], ALL include 109[age&gt;=10], include 110[age&gt;=15]</code></pre>
<p>Include if Segment 110 is greater than 3 or Segment 112 is less than
4:</p>
<pre class="pre codeblock"><code>ANY include 110[value&gt;3], include 112[value&lt;4]</code></pre>
<p>Include users who have been in Segment 110 for less than 1440 minutes
and whose value is greater than 3:</p>
<pre class="pre codeblock"><code>ANY include 110[age&lt;1440 value&gt;3]</code></pre>
<p>See <a
href="import-or-export-split-csvs.html#ID-00002318__p_bjm_npv_pkb"
class="xref">CSV Rules</a> above for special constraints on
segments.</p></li>
</ol></td>
</tr>
<tr class="odd row">
<td rowspan="9" class="entry" headers="ID-00002318__entry__1">Frequency
&amp; Recency
<p>For more information, see <a href="frequency-and-recency-caps.md"
class="xref"
title="From the Audience &amp; Location Targeting section, you can apply frequency and recency caps to your line item to prevent overexposure by limiting how many (frequency) and how often (recency) creatives are shown to a user. You can use the Creative Frequency and Recency Report to view how often and how frequently users are viewing a specific advertiser&#39;s creatives.">Frequency
Targeting</a>.</p></td>
<td class="entry" headers="ID-00002318__entry__2">Daily frequency</td>
<td class="entry" headers="ID-00002318__entry__3">The number of times
the user has seen an ad on this split on the present day.
<p><strong>Example:</strong></p>
<p>Exclude if the user has seen an ad more than 5 times today:</p>
<pre class="pre codeblock"><code>not &gt;5</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Lifetime
frequency</td>
<td class="entry" headers="ID-00002318__entry__3">The number of times
the user has seen an ad on this split over their lifetime.
<p><strong>Example:</strong></p>
<p>Include if the user has seen the ad fewer than 5 times over their
lifetime:</p>
<pre class="pre codeblock"><code>any &lt;5</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Split recency</td>
<td class="entry" headers="ID-00002318__entry__3">How recently (in
minutes) the user has seen an ad on this split.
<p><strong>Example:</strong></p>
<p>Exclude if the user has seen an ad on this split in the past 10
minutes:</p>
<pre class="pre codeblock"><code>not &lt;=10</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Advertiser lifetime
frequency</td>
<td class="entry" headers="ID-00002318__entry__3">The number of times
the user has seen an ad from this advertiser over the user's lifetime.
<p><strong>Example:</strong></p>
<p>Exclude if the user has seen ads from this advertiser more than 20
times in their lifetime:</p>
<pre class="pre codeblock"><code>not &gt;20</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Advertiser daily
frequency</td>
<td class="entry" headers="ID-00002318__entry__3">The number of times
the user has seen an ad from this advertiser on the present day.
<p><strong>Example:</strong></p>
<p>Include if the user has seen ads from this advertiser fewer than 3
times today.</p>
<pre class="pre codeblock"><code>any &lt; 3</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Advertiser
recency</td>
<td class="entry" headers="ID-00002318__entry__3">How recently (in
minutes) the user has seen an ad from this advertiser.
<p><strong>Example:</strong></p>
<p>Exclude if the user has seen an ad from this advertiser in the past
30 minutes:</p>
<pre class="pre codeblock"><code>not &gt; 30</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Line item lifetime
frequency</td>
<td class="entry" headers="ID-00002318__entry__3">The number of times
the user has seen an ad on this line item over the user's lifetime.
<p><strong>Example:</strong></p>
<p>Include if the user has seen an ad from this advertiser 15 or fewer
times over their lifetime:</p>
<pre class="pre codeblock"><code>any &lt;=15</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002318__entry__2">Line item daily
frequency</td>
<td class="entry" headers="ID-00002318__entry__3">The number of times
the user has seen an ad on this line item on the present day.
<p><strong>Example:</strong></p>
<p>Exclude if the user has seen an ad on this line item more than 5
times today:</p>
<pre class="pre codeblock"><code>not &gt; 5</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002318__entry__2">Line item recency</td>
<td class="entry" headers="ID-00002318__entry__3">How recently (in
minutes) the user has seen an ad on this line item.
<p><strong>Example:</strong></p>
<p>Include if the user last saw an ad on this line item more than 3
hours ago:</p>
<pre class="pre codeblock"><code>any &gt; 180</code></pre></td>
</tr>
</tbody>
</table>

Example CSV

This is a <a
href="../attachments/import-or-export-split-csvs/sample-splits-csv.csv"
class="xref">sample splits CSV</a>.

Related Topics

- <a href="configure-a-programmable-split.md" class="xref"
  title="You can use programmable splits to refine line item targeting and dynamically adjust bids, budget allocation, and creative allocation across a line item&#39;s targeted inventory. Splits are recommended if you have sophisticated targeting requirements.">Configure
  a Programmable Split</a>
- <a href="understanding-splits.md" class="xref">Understanding
  Splits</a>
- <a href="update-splits.md" class="xref">Update Splits</a>
- <a href="explore-splits.md" class="xref">Explore Splits</a>




