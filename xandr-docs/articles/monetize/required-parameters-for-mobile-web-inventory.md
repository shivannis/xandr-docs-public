---
Title : Required Tag Parameters for Desktop and Mobile Web Inventory
Description : The required parameters for tags on Mobile Web inventory are `id` and
`referrer`. However, you'll need additional parameters such as width and
---


# Required Tag Parameters for Desktop and Mobile Web Inventory



The required parameters for tags on Mobile Web inventory are `id` and
`referrer`. However, you'll need additional parameters such as width and
height to monetize your inventory, unless these values have been set on
the placement.



<table
id="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb"
class="table frame-all">
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th
id="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__3"
class="entry colsep-1 rowsep-1">Required?</th>
<th
id="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__4"
class="entry colsep-1 rowsep-1">Compatible Handlers</th>
<th
id="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__5">The
unique ID of the placement where the ad will serve. If you'd rather not
pass the raw placement ID, you can pass in a combination of <code
class="ph codeph">member</code> and <code
class="ph codeph">inv_code</code> parameters. For more information, see
"Target Video Attributes via Query Parameters."</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__1"><code
class="ph codeph">referrer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__3">Required
for desktop and mobile web only</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__5">The
URL where the ad will be rendered</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__1"><code
class="ph codeph">vwidth</code></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__3">Required
to monetize inventory</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__5">Player
width (in pixels). While not required, this parameter is recommended in
order to ensure video bidders receive both width and height on bid
requests.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__1"><code
class="ph codeph">vheight</code></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__3">Required
to monetize inventory</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__5">Player
height (in pixels). While not required, this parameter is recommended in
order to ensure video bidders receive both width and height on bid
requests.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__1"><code
class="ph codeph">vmaxduration </code></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__5">For
single requests, this is the maximum video placement duration in
seconds. Any creative with a duration longer than this value will be
excluded from the auction. For podded inventory, this is the length of
the full pod.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__1"><code
class="ph codeph">vcontext</code></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__3">Required
to monetize inventory</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__4"><pre
class="pre codeblock"><code>ptv, ssptv</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__5">Position
of the video placement. Possible Values:
<ul>
<li>1 - Linear Pre-roll</li>
<li>2 - Linear Mid-roll</li>
<li>3 - Linear Post-roll</li>
<li>4 - Outstream</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__1"><code
class="ph codeph">vframeworks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__3">Required
to monetize inventory</td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry colsep-1 rowsep-1"
headers="required_parameters_for_mobile_web_inventory__table_qpk_sqh_3mb__entry__5">Frameworks
supported by the player. Possible values:
<ul>
<li>1 - VPAID 1.0</li>
<li>2 - VPAID 2.0</li>
<li>3 - MRAID-1</li>
<li>4 - MRAID-2</li>
<li>5 - ORMMA</li>
<li>6 - OMID-1</li>
</ul>

Note: <code
class="ph codeph">vframeworks</code> supports single as well as a list
of comma-separated integer values. For example,
<pre class="pre codeblock"><code>vframeworks=1,2,3</code></pre>
or
<pre class="pre codeblock"><code>vframeworks=1</code></pre>
.
</td>
</tr>
</tbody>
</table>






