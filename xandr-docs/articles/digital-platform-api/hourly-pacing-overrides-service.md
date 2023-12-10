---
Title : Hourly Pacing Overrides Service
Description : The Hourly Pacing Overrides Service is used to customize your line
ms.date: 10/28/2023
ms.custom: digital-platform-api
item's budget distribution within a day. This can be set for specific
---


# Hourly Pacing Overrides Service



The Hourly Pacing Overrides Service is used to customize your line
item's budget distribution within a day. This can be set for specific
days of the week or specific dates. Through this API service, you can
create an individual pacing strategy (custom spend curve) to define and
alter line item pacing for a particular date or day of the week. You can
also create multiple pacing strategies through this API service to
further customize pacing for multiple dates or days of the week.

>

## RETS API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__2"><a
href="https://api.appnexus.com/pacing-strategy?line_item_id=LINE_ITEM_ID_1,LINE_ITEM_ID_2"
class="xref"
target="_blank">https://api.appnexus.com/pacing-strategy?line_item_id=LINE_ITEM_ID_1,LINE_ITEM_ID_2</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__3">View
pacing strategies for one or more line items.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__2"><a
href="https://api.appnexus.com/pacing-strategy?line_item_id=LINE_ITEM_ID"
class="xref"
target="_blank">https://api.appnexus.com/pacing-strategy?line_item_id=LINE_ITEM_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__3">Add
a pacing strategy for a single line item.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__2"><a
href="https://api.appnexus.com/pacing-strategy?line_item_id=LINE_ITEM_ID"
class="xref"
target="_blank">https://api.appnexus.com/pacing-strategy?line_item_id=LINE_ITEM_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__3">Modify
an existing pacing strategy.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__2"><a
href="https://api.appnexus.com/pacing-strategy?line_item_id=LINE_ITEM_ID&amp;when=WHEN"
class="xref"
target="_blank">https://api.appnexus.com/pacing-strategy?line_item_id=LINE_ITEM_ID&amp;when=WHEN</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_yfr_ymw_5wb__entry__3">Delete
a pacing strategy.</td>
</tr>
</tbody>
</table>



>

## JSON Fields

>

<table
id="hourly-pacing-overrides-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all">
<thead class="thead">
<tr class="header row">
<th
id="hourly-pacing-overrides-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="hourly-pacing-overrides-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="hourly-pacing-overrides-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">line_item_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the line item.</p>
<strong>Required On</strong>: <code
class="ph codeph">GET, PUT, </code>and <code
class="ph codeph">DELETE.</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">pacing_strategies</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
pacing strategies associated with the line item. The <code
class="ph codeph">pacing_strategies</code> object array is defined in
the table below.</p>
<strong>Required On</strong>: <code class="ph codeph">PUT</code></td>
</tr>
</tbody>
</table>

**Pacing Strategies**



>

The `pacing_strategies` object is used to define a customized pacing
strategy for your line item. You're able to customize pacing within a
single day and within a single hour.

<table
id="hourly-pacing-overrides-service__table-cc2d4a30-ef2d-4967-b176-4ff7e5664517"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="hourly-pacing-overrides-service__table-cc2d4a30-ef2d-4967-b176-4ff7e5664517__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="hourly-pacing-overrides-service__table-cc2d4a30-ef2d-4967-b176-4ff7e5664517__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="hourly-pacing-overrides-service__table-cc2d4a30-ef2d-4967-b176-4ff7e5664517__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-cc2d4a30-ef2d-4967-b176-4ff7e5664517__entry__1"><code
class="ph codeph">pacing_weights</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-cc2d4a30-ef2d-4967-b176-4ff7e5664517__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-cc2d4a30-ef2d-4967-b176-4ff7e5664517__entry__3"><p>Fields
in this object determine how much to spend per hour for custom
strategies. Weights are defined as a proportion of the line item's daily
budget. Twenty-four fields are available, one for each hour of the day.
Possible hourly weight values are between 0 to 100, and the weight
allocations across all hours <strong>must</strong> equal 100.</p>
<div
id="hourly-pacing-overrides-service__p-d377ac68-b023-4be7-8f78-a8012b7a929f"
>
<strong>For example:</strong>
<pre id="hourly-pacing-overrides-service__codeblock_grw_r4w_5wb"
class="pre codeblock"><code>[
  {
    &quot;line_item_id&quot;: 13827815,
    &quot;pacing_strategies&quot;: [
      {
        &quot;strategy_type&quot;: &quot;custom&quot;,
        &quot;when&quot;: &quot;2021-01-22&quot;,
        &quot;pacing_weights&quot;: {
          &quot;0&quot;: 1.67,
          &quot;1&quot;: 1.33,
          &quot;2&quot;: 1.21,
          &quot;3&quot;: 1.25,
          &quot;4&quot;: 1.57,
          &quot;5&quot;: 2.33,
          &quot;6&quot;: 3.18,
          &quot;7&quot;: 4.05,
          &quot;8&quot;: 4.76,
          &quot;9&quot;: 5,
          &quot;10&quot;: 5.22,
          &quot;11&quot;: 4.95,
          &quot;12&quot;: 5.09,
          &quot;13&quot;: 5.12,
          &quot;14&quot;: 5.23,
          &quot;15&quot;: 5.26,
          &quot;16&quot;: 5.67,
          &quot;17&quot;: 5.99,
          &quot;18&quot;: 5.92,
          &quot;19&quot;: 6.26,
          &quot;20&quot;: 6.58,
          &quot;21&quot;: 5.69,
          &quot;22&quot;: 4,
          &quot;23&quot;: 2.67
        }
      }
    ]
  }
]</code></pre>

<p><strong>Default</strong>: <code class="ph codeph">null</code></p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-cc2d4a30-ef2d-4967-b176-4ff7e5664517__entry__1"><code
class="ph codeph">strategy_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-cc2d4a30-ef2d-4967-b176-4ff7e5664517__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-cc2d4a30-ef2d-4967-b176-4ff7e5664517__entry__3"><p>Indicates
how the line item paces within a single day. Possible values are:</p>
<ul>
<li><code class="ph codeph">asap</code>: Spend your daily budget as fast
as possible.</li>
<li><code class="ph codeph">custom</code>: Define the amount you want to
spend per hour using weights. <b>Note:</b> Weights are defined as a proportion
of the line item's daily budget.</li>
<li><code class="ph codeph">intelligent</code>: Optimally spend your
daily budget based on Xandr market dynamics.</li>
</ul>
<p>If <a
href="https://wiki.xandr.com/display/api/Profile+Service#ProfileService-DaypartTargets"
class="xref" target="_blank">Daypart Targets</a> are set on the line
item profile, your pacing strategy will automatically adapt to the
eligible hours.</p>
<p><strong>Default</strong>: N/A</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-cc2d4a30-ef2d-4967-b176-4ff7e5664517__entry__1"><code
class="ph codeph">when</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-cc2d4a30-ef2d-4967-b176-4ff7e5664517__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__table-cc2d4a30-ef2d-4967-b176-4ff7e5664517__entry__3"><p>When
the pacing strategy should be active. Possible values are:</p>
<ul>
<li><code class="ph codeph">always</code></li>
<li>A single day of the week: <code class="ph codeph">sunday</code>,
<code class="ph codeph">monday</code>, <code
class="ph codeph">tuesday</code>, <code
class="ph codeph">wednesday</code>, <code
class="ph codeph">thursday</code>, <code
class="ph codeph">friday</code>, or <code
class="ph codeph">saturday.</code></li>
<li>A single date (<code class="ph codeph">"YYYY-MM-DD"</code>,
<strong>for example</strong>: <code
class="ph codeph">"2019-09-01"</code>).</li>
</ul>
<p><strong>Default</strong>: N/A</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
</tbody>
</table>

**File Upload Method**



You may also read or write pacing strategies using a .csv file. A sample
file on `GET` or `PUT`might look like <a
href="https://xandr-be-prod.zoominsoftware.io/bundle/page/files/pacing_strategy_service_example.csv"
class="xref" target="_blank">this</a>:



<b>Note:</b>

Excel automatically formats dates as MM/DD/YYYY. When writing values to
the .csv file's **when** column, the Pacing Strategy Service expects
dates in the YYYY-MM-DD format.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__22"
class="entry align-left colsep-1 rowsep-1">line_item_id</th>
<th id="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__23"
class="entry align-left colsep-1 rowsep-1">strategy_type</th>
<th id="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__24"
class="entry align-left colsep-1 rowsep-1">when</th>
<th id="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__25"
class="entry align-left colsep-1 rowsep-1">hour</th>
<th id="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__26"
class="entry align-left colsep-1 rowsep-1">weight</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__22">1234567</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__23">intelligent</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__24">always</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__25"></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__26"></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__22">2931292</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__23">intelligent</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__24">always</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__25"></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__26"></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__22">2931292</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__23">custom</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__24">2019-09-01</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__25">0</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__26">33.3</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__22">2931292</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__23">custom</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__24">2019-09-01</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__25">1</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__26">33.35</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__22">2931292</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__23">custom</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__24">2019-09-01</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__25">2</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__26">33.35</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__22">8123952</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__23">asap</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__24">always</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__25"></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__26"></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__22">8123952</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__23">custom</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__24">monday</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__25">0</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__26">33.35</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__22">8123952</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__23">custom</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__24">monday</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__25">1</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__26">33.35</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__22">8123952</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__23">custom</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__24">monday</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__25">2</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="hourly-pacing-overrides-service__section_cyq_mnw_5wb__entry__26">33.3</td>
</tr>
</tbody>
</table>



>

## Examples



**View a line item's pacing strategy details**

``` pre
$ curl -b cookies -c cookies -X GET -H 'Accept: application/json' "https://api.appnexus.com/pacing-strategy?line_item_id=1234567"
 
 
[
    {
        "line_item_id": 1234567,
        "pacing_strategies": [
            {
                "strategy_type": "intelligent",
                "when": "always"
            }
        ]
    }
]
```





**View multiple line items' pacing strategy details**

``` pre
$ curl -b cookies -c cookies -X GET -H 'Accept: application/json' "https://api.appnexus.com/pacing-strategy?line_item_id=1234567,2345678"
 
 
[
    {
        "line_item_id": 1234567,
        "pacing_strategies": [
            {
                "strategy_type": "intelligent",
                "when": "always"
            }
        ]
    },
    {
        "line_item_id": 2345678,
        "pacing_strategies": [
            {
                "strategy_type": "intelligent",
                "when": "always"
            },
            {
                "strategy_type": "custom",
                "when": "2019-12-30",
                "pacing_weights": {
                    "0": 1.67,
                    "1": 1.33,
                    "2": 1.21,
                    "3": 1.25,
                    "4": 1.57,
                    "5": 2.33,
                    "6": 3.18,
                    "7": 4.05,
                    "8": 4.76,
                    "9": 5,
                    "10": 5.22,
                    "11": 4.95,
                    "12": 5.09,
                    "13": 5.12,
                    "14": 5.23,
                    "15": 5.26,
                    "16": 5.67,
                    "17": 5.99,
                    "18": 5.92,
                    "19": 6.26,
                    "20": 6.58,
                    "21": 5.69,
                    "22": 4,
                    "23": 2.67
                }
            }
        ]
    }
]
```





**Always deliver ASAP**

``` pre
$ cat always_asap.json
[
  {
    "line_item_id": 1234567,
    "pacing_strategies": [
      {
        "strategy_type": "asap",
        "when": "always"
      }
    ]
  }
]
 
 
$ curl -b cookies -c cookies -X PUT -H 'Content-Type: application/json' -d @always_asap.json "https://api.appnexus.com/pacing-strategy?line_item_id=1234567"
```





**Use a custom pacing strategy on a single date**

``` pre
$ cat custom_date.json

[{
    "line_item_id": 1234567,
    "pacing_strategies": [{
        "strategy_type": "custom",
        "when": "2019-12-15",
        "pacing_weights": {
            "0": 1.67,
            "1": 1.33,
            "2": 1.21,
            "3": 1.25,
            "4": 1.57,
            "5": 2.33,
            "6": 3.18,
            "7": 4.05,
            "8": 4.76,
            "9": 5,
            "10": 5.22,
            "11": 4.95,
            "12": 5.09,
            "13": 5.12,
            "14": 5.23,
            "15": 5.26,
            "16": 5.67,
            "17": 5.99,
            "18": 5.92,
            "19": 6.26,
            "20": 6.58,
            "21": 5.69,
            "22": 4,
            "23": 2.67
        }
    }]
}]
 $ curl -b cookies -c cookies -X PUT -H 'Content-Type: application/json' -d @custom_date.json "https://api.appnexus.com/pacing-strategy?line_item_id=1234567"
```





**Use a custom pacing strategy on a particular day of the week**

``` pre
$ cat custom_dow.json

[{
    "line_item_id": 1234567,
    "pacing_strategies": [{
        "strategy_type": "custom",
        "when": "tuesday",
        "pacing_weights": {
            "0": 1.67,
            "1": 1.33,
            "2": 1.21,
            "3": 1.25,
            "4": 1.57,
            "5": 2.33,
            "6": 3.18,
            "7": 4.05,
            "8": 4.76,
            "9": 5,
            "10": 5.22,
            "11": 4.95,
            "12": 5.09,
            "13": 5.12,
            "14": 5.23,
            "15": 5.26,
            "16": 5.67,
            "17": 5.99,
            "18": 5.92,
            "19": 6.26,
            "20": 6.58,
            "21": 5.69,
            "22": 4,
            "23": 2.67
        }
    }]
}]
 
$ curl -b cookies -c cookies -X PUT -H 'Content-Type: application/json' -d @custom_dow.json "https://api.appnexus.com/pacing-strategy?line_item_id=1234567"
```





**Deliver ASAP on a particular day of the week**

``` pre
$ cat asap_date.json
[
 {
    "line_item_id": 1234567,
    "pacing_strategies": [
      {
        "strategy_type": "asap",
        "when": "2019-12-15"
      }
    ]
  }
]
 
 
$ curl -b cookies -c cookies -X PUT -H 'Content-Type: application/json' -d @asap_date.json "https://api.appnexus.com/pacing-strategy?line_item_id=1234567"
(no JSON response, just HTTP 200 OK)
```





**Define multiple pacing strategies for multiple line items**

``` pre
$ cat multiple_strategies.json

[{
        "line_item_id": 1234567,
        "pacing_strategies": [{
                "strategy_type": "asap",
                "when": "2019-12-31"
            },
            {
                "strategy_type": "custom",
                "when": "monday",
                "pacing_weights": {
                    "0": 1.67,
                    "1": 1.33,
                    "2": 1.21,
                    "3": 1.25,
                    "4": 1.57,
                    "5": 2.33,
                    "6": 3.18,
                    "7": 4.05,
                    "8": 4.76,
                    "9": 5,
                    "10": 5.22,
                    "11": 4.95,
                    "12": 5.09,
                    "13": 5.12,
                    "14": 5.23,
                    "15": 5.26,
                    "16": 5.67,
                    "17": 5.99,
                    "18": 5.92,
                    "19": 6.26,
                    "20": 6.58,
                    "21": 5.69,
                    "22": 4,
                    "23": 2.67
                }
            }
        ]
    },
    {
        "line_item_id": 2345678,
        "pacing_strategies": [{
                "strategy_type": "asap",
                "when": "always"
            },
            {
                "strategy_type": "custom",
                "when": "2019-12-31",
                "pacing_weights": {
                    "0": 1.67,
                    "1": 1.33,
                    "2": 1.21,
                    "3": 1.25,
                    "4": 1.57,
                    "5": 2.33,
                    "6": 3.18,
                    "7": 4.05,
                    "8": 4.76,
                    "9": 5,
                    "10": 5.22,
                    "11": 4.95,
                    "12": 5.09,
                    "13": 5.12,
                    "14": 5.23,
                    "15": 5.26,
                    "16": 5.67,
                    "17": 5.99,
                    "18": 5.92,
                    "19": 6.26,
                    "20": 6.58,
                    "21": 5.69,
                    "22": 4,
                    "23": 2.67
                }
            }
        ]
    }
]
 
$ curl -b cookies -c cookies -X PUT -H 'Content-Type: application/json' -d @multiple_strategies.json "https://api.appnexus.com/pacing-strategy?line_item_id=1234567&line_item_id=2345678"
```





**Define multiple pacing strategies for multiple line items using a .csv
file**

``` pre
$ cat custom_spend_strategies.csv
line_item_id,strategy_type,when,hour,weight
1234567,asap,monday,,
1234567,custom,2022-12-25,0,4
1234567,custom,2022-12-25,1,4
1234567,custom,2022-12-25,2,4
1234567,custom,2022-12-25,3,4
1234567,custom,2022-12-25,4,4
1234567,custom,2022-12-25,5,5
1234567,custom,2022-12-25,6,4
1234567,custom,2022-12-25,7,4
1234567,custom,2022-12-25,8,4
1234567,custom,2022-12-25,9,4
1234567,custom,2022-12-25,10,4
1234567,custom,2022-12-25,11,5
1234567,custom,2022-12-25,12,4
1234567,custom,2022-12-25,13,4
1234567,custom,2022-12-25,14,4
1234567,custom,2022-12-25,15,4
1234567,custom,2022-12-25,16,4
1234567,custom,2022-12-25,17,5
1234567,custom,2022-12-25,18,4
1234567,custom,2022-12-25,19,4
1234567,custom,2022-12-25,20,4
1234567,custom,2022-12-25,21,4
1234567,custom,2022-12-25,22,4
1234567,custom,2022-12-25,23,5
2345678,asap,always,,
2345678,custom,2022-12-25,0,0
2345678,custom,2022-12-25,1,0
2345678,custom,2022-12-25,2,0
2345678,custom,2022-12-25,3,0
2345678,custom,2022-12-25,4,9
2345678,custom,2022-12-25,5,4
2345678,custom,2022-12-25,6,4
2345678,custom,2022-12-25,7,4
2345678,custom,2022-12-25,8,4
2345678,custom,2022-12-25,9,9
2345678,custom,2022-12-25,10,4
2345678,custom,2022-12-25,11,4
2345678,custom,2022-12-25,12,4
2345678,custom,2022-12-25,13,4
2345678,custom,2022-12-25,14,9
2345678,custom,2022-12-25,15,4
2345678,custom,2022-12-25,16,4
2345678,custom,2022-12-25,17,4
2345678,custom,2022-12-25,18,4
2345678,custom,2022-12-25,19,9
2345678,custom,2022-12-25,20,4
2345678,custom,2022-12-25,21,4
2345678,custom,2022-12-25,22,4
2345678,custom,2022-12-25,23,4
 
$ curl -b cookies -c cookies -X PUT -H 'Content-Type: text/csv' -H 'Accept: application/json' --data-binary '@custom_spend_strategies.csv' 'https://api.appnexus.com/pacing-strategy/upload-csv'
```





**Delete a line item's pacing strategy**

``` pre
$ curl -b cookies -c cookies -X DELETE -H 'Accept: application/json' "https://api.appnexus.com/pacing-strategy?line_item_id=1234567&when=always"

{
    "line_item_id": 1234567,
    "pacing_strategies": [
    {
        "strategy_type": "asap",
        "when": "always"
    }
  ]
}

$ curl -b cookies -c cookies -X DELETE -H 'Accept: application/json' "https://api.appnexus.com/pacing-strategy?line_item_id=1234567&when=2019-12-31"

{
    "line_item_id": 1234567,
    "pacing_strategies": [{
        "strategy_type": "custom",
        "when": "2019-12-31",
        "pacing_weights": {
            "0": 1.67,
            "1": 1.33,
            "2": 1.21,
            "3": 1.25,
            "4": 1.57,
            "5": 2.33,
            "6": 3.18,
            "7": 4.05,
            "8": 4.76,
            "9": 5,
            "10": 5.22,
            "11": 4.95,
            "12": 5.09,
            "13": 5.12,
            "14": 5.23,
            "15": 5.26,
            "16": 5.67,
            "17": 5.99,
            "18": 5.92,
            "19": 6.26,
            "20": 6.58,
            "21": 5.69,
            "22": 4,
            "23": 2.67
        }
    }]
}
```





>

## Related Topics



- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="line-item-service---ali.md"
  class="xref" target="_blank">Line Item (ALI) Service</a>
- <a
  href="insertion-order-service.md"
  class="xref" target="_blank">Insertion Order Service</a>








