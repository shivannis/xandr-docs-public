---
Title : Line Item Reporting Service
Description : <b>Note:</b> This field or feature is part of
ms.date: 10/28/2023
ms.custom: digital-platform-api
functionality currently in either Alpha or Beta phase. It is therefore
---


# Line Item Reporting Service





<b>Note:</b> This field or feature is part of
functionality currently in either Alpha or Beta phase. It is therefore
subject to change.



Xandr admins can use this service to create
the `standard_v2` line item.  



## REST API

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-0000242f__entry__1" class="entry colsep-1 rowsep-1">HTTP
Methods</th>
<th id="ID-0000242f__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000242f__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__2">http://sor-api.<span
class="ph">adnxs.net/standard_v2
<p>(standard_v2 JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__3">Add
a new Augmented Targeting line item and associated profile</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__2">http://sor-api.<span
class="ph">adnxs.net/standard_v2
<p>(standard_v2 JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__3">Modify an Augmented Targeting line item
and associated profile</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000242f__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000242f__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000242f__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__10"><code
class="ph codeph">line_item</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__11">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__12">See
<a href="line-item-reporting-service.md#ID-0000242f__line-item-array"
class="xref">Line Item Array</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__10"><code
class="ph codeph">campaigns</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__11">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__12">See
<a href="line-item-reporting-service.md#ID-0000242f__cam_array"
class="xref">Campaigns Array</a></td>
</tr>
</tbody>
</table>

**Line Item Array**

The Line Item Array functions like the <a
href="line-item-service.md"
class="xref" target="_blank">Line Item Service</a>.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000242f__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000242f__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000242f__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__21">The
ID of the line item.
<p><strong>Required On:</strong> <code class="ph codeph">PUT</code>, in
query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__21">The
name of the line item.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__19"><code
class="ph codeph">line_item_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__21">For
the Line Item Reporting Service to work correctly, select <code
class="ph codeph">standard_v2</code>.
<p><strong>Default:</strong> <code
class="ph codeph">standard_v1</code></p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__19"><code
class="ph codeph">revenue_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__21">The
way the advertiser has agreed to pay you. Possible values for <code
class="ph codeph">line_item_type</code> = <code
class="ph codeph">standard_v2</code> are listed below:
<ul>
<li><code class="ph codeph">"cpm"</code> - A flat payment per 1000
impressions.
<ul>
<li>Requires a <code class="ph codeph">revenue_value</code></li>
</ul></li>
<li><code class="ph codeph">"vcpm"</code> - Expected value for each
impression.</li>
</ul>
<p>For a revenue type of <code class="ph codeph">"cpm"</code> or <code
class="ph codeph">"vcpm"</code>, one of the following is required:</p>
<ul>
<li><code class="ph codeph">goal_type</code>:
<ul>
<li><code class="ph codeph">cpa</code> - Use <a
href="line-item-service.md#LineItemService-GoalPixels"
class="xref" target="_blank">Goal Pixels array</a></li>
<li><code class="ph codeph">cpc</code> - Use <a
href="line-item-reporting-service.md#ID-0000242f__ID-0000258c"
class="xref">Valuation array</a></li>
</ul></li>
</ul>
<p>Each can also include:</p>
<ul>
<li><code class="ph codeph">max_avg_cpm</code> in the <a
href="line-item-reporting-service.md#ID-0000242f__ID-0000258c"
class="xref">Valuation array</a></li>
</ul>
<p><strong>Required On:</strong><code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__19"><code
class="ph codeph">revenue_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__20">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__21">The
amount paid to the network by the advertiser.
<p><strong>Required On:</strong><code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__19"><code
class="ph codeph">budget_intervals</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__20">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__21">See
<a
href="line-item-service.md#LineItemService-BudgetIntervals"
class="xref" target="_blank">Budget Intervals</a>

<b>Note:</b>
<ul>
<li>Set <code class="ph codeph">enable_pacing</code> to <code
class="ph codeph">true</code></li>
</ul>
<p>AND</p>
<ul>
<li>Set <code class="ph codeph">lifetime_budget</code> or <code
class="ph codeph">lifetime_budget_imp</code> and <code
class="ph codeph">lifetime_pacing</code></li>
</ul>
<p>OR</p>
<ul>
<li>Set <code class="ph codeph">lifetime_budget</code> or <code
class="ph codeph">lifetime_budget_imps</code> and <code
class="ph codeph">daily_budget</code> or <code
class="ph codeph">daily_budget_imps</code></li>
</ul>
<p><strong>Required On:</strong><code class="ph codeph">POST</code></p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__19"><code
class="ph codeph">creative</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__20">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__21">The
creatives that are associated with the line item. You must first add the
creative through the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> if you don't already
have a creative to use. See <a
href="line-item-reporting-service.md#ID-0000242f__CreativeArray"
class="xref">Creative Array</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__19"><code
class="ph codeph">profile</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__20">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__21">See
<a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a>.</td>
</tr>
</tbody>
</table>

**Creative Array**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000242f__entry__46"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000242f__entry__47"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000242f__entry__48"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__46"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__47">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__48">The
ID of the creative. Either <code class="ph codeph">id</code> or <code
class="ph codeph">code</code> is required when updating creative
association.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__46"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__47">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__48">The
custom code for the creative. Either <code
class="ph codeph">id</code> or <code class="ph codeph">code</code> is
required when updating creative association.</td>
</tr>
</tbody>
</table>

**Valuation Array**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000242f__entry__55"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000242f__entry__56"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000242f__entry__57"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__55"><code
class="ph codeph">goal_threshold</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__56">decimal</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__57">For
line items with the <code class="ph codeph">goal_type</code> "cpc", the
performance goal threshold, which determines the bid/no bid cutoff on
optimized campaigns.
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__55"><code
class="ph codeph">goal_target</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__56">decimal</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__57">For
line items with the <code class="ph codeph">goal_type</code> "cpc", the
performance goal target, representing the desired clicks or
click-through rate.
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__55"><code
class="ph codeph">performance_mkt_managed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__56">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__57"><strong>Default:</strong> Set to <code
class="ph codeph">false</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__55"><code
class="ph codeph">min_margin_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__56">decimal</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__57">For
line items with <code class="ph codeph">revenue_type</code> "cpm",
"cpa", or "cpc" the minimum margin PCT.
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__55"><code
class="ph codeph">min_avg_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__56">decimal</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__57">The
line item revenue cannot fall below this minimum average eCPM.
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__55"><code
class="ph codeph">max_avg_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__56">decimal</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000242f__entry__57">The
line item revenue cannot exceed this maximum average eCPM.
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>

**Campaigns Array**

The following is the default campaign that you have to feed the Line
Item Reporting Service when you create a new line item. You will always
have to construct a campaign with the following fields and values, and
the Line Item Reporting Service will create and associate the actual
campaign for you. The Line Item Reporting Service expects the campaign
in a list, even though you would only put one campaign.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000242f__entry__76"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000242f__entry__77"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000242f__entry__78"
class="entry colsep-1 rowsep-1">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__76"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__77">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__78">Line Item's name</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__76"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__77">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__78">Line Item's state</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__76"><code
class="ph codeph">inventory_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__77">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__78"><code
class="ph codeph">"both"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__76"><code
class="ph codeph">cpm_bid_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__77">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__78"><code
class="ph codeph">"bpp"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__76"><code
class="ph codeph">require_cookie_for_tracking</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__77">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000242f__entry__78"><code
class="ph codeph">"false"</code></td>
</tr>
</tbody>
</table>





## Examples

**Create a new Augmented Trading line item**

``` pre
$ cat standard_v2.json
{
  "standard_v2": {
    "line_item": {
      "line_item_type": "standard_v2",
      "payout_margin": null,
      "require_cookie_for_tracking": true,
      "name": "Tst",
      "code": null,
      "state": "active",
      "start_date": null,
      "end_date": null,
      "click_url": null,
      "lifetime_budget": null,
      "lifetime_budget_imps": null,
      "lifetime_pacing": null,
      "enable_pacing": null,
      "daily_budget": null,
      "daily_budget_imps": null,
      "budget_intervals": [
        {
          "start_date": "2016-01-08 00:00:00",
          "end_date": "2016-01-09 00:00:00",
          "lifetime_budget": 1,
          "lifetime_budget_imps": null,
          "parent_interval_id": 7103,
          "lifetime_pacing": false,
          "enable_pacing": true,
          "daily_budget": 1,
          "daily_budget_imps": null
        }
      ],
      "insertion_orders": [
        {
          "id": 269592,
          "name": "First Test",
          "code": null,
          "state": "active",
          "advertiser_id": 764141,
          "start_date": null,
          "end_date": null,
          "remaining_days": null,
          "total_days": null,
          "last_modified": "2016-01-08 21:57:18",
          "timezone": "EST5EDT",
          "currency": "JPY",
          "comments": null,
          "billing_code": null,
          "line_items": [
            {
              "id": 2621282,
              "name": "First LI",
              "code": null,
              "state": "active",
              "start_date": null,
              "end_date": null,
              "timezone": "EST5EDT"
            },
            {
              "id": 2621320,
              "name": "TEst 2",
              "code": null,
              "state": "active",
              "start_date": null,
              "end_date": null,
              "timezone": "EST5EDT"
            },
            {
              "id": 2621351,
              "name": "Test",
              "code": null,
              "state": "active",
              "start_date": null,
              "end_date": null,
              "timezone": "EST5EDT"
            }
          ],
          "spend_protection_pixels": null,
          "labels": null,
          "broker_fees": null,
          "budget_intervals": [
            {
              "id": 7103,
              "object_id": 269592,
              "object_type": "insertion_order",
              "start_date": "2016-01-08 00:00:00",
              "end_date": "2016-01-09 00:00:00",
              "timezone": "EST5EDT",
              "lifetime_budget": 1,
              "lifetime_budget_imps": null,
              "lifetime_pacing": false,
              "enable_pacing": false,
              "daily_budget_imps": null,
              "daily_budget": null
            }
          ],
          "tpas_details": null,
          "lifetime_pacing": null,
          "lifetime_budget": null,
          "lifetime_budget_imps": null,
          "enable_pacing": null,
          "lifetime_pacing_span": null,
          "allow_safety_pacing": null,
          "daily_budget": null,
          "daily_budget_imps": null,
          "lifetime_pacing_pct": null
        }
      ],
      "currency": "JPY",
      "broker_fees": [],
      "manage_creative": true,
      "creative_distribution_type": "even",
      "creatives": [],
      "labels": [],
      "revenue_type": "vcpm",
      "revenue_value": null,
      "track_revenue": "track",
      "pixels": [],
      "valuation": {
        "goal_target": 1,
        "goal_threshold": 1,
        "performance_mkt_managed": false,
        "min_margin_pct": 1,
        "min_avg_cpm": 1,
        "max_avg_cpm": 1
      },
      "goal_type": "cpc",
      "goal_value": null,
      "goal_pixels": null,
      "comments": null,
      "profile": {
        "require_cookie_for_freq_cap": true,
        "max_day_imps": null,
        "max_lifetime_imps": null,
        "min_minutes_per_imp": null,
        "max_page_imps": null,
        "device_type_action": "exclude",
        "device_type_targets": null,
        "supply_type_action": "exclude",
        "supply_type_targets": null,
        "city_targets": null,
        "city_action": "exclude",
        "country_action": "exclude",
        "country_targets": null,
        "region_targets": null,
        "region_action": "exclude",
        "dma_targets": null,
        "dma_action": "exclude",
        "location_target_latitude": null,
        "location_target_longitude": null,
        "location_target_radius": null,
        "zip_targets": null,
        "postal_code_targets": null,
        "content_category_targets": null,
        "domain_action": "exclude",
        "domain_targets": null,
        "domain_list_action": "exclude",
        "domain_list_targets": null,
        "inventory_action": "exclude",
        "placement_targets": null,
        "publisher_targets": null,
        "site_targets": null,
        "mobile_app_instance_action_include": false,
        "mobile_app_instance_targets": null,
        "mobile_app_instance_list_action_include": false,
        "mobile_app_instance_list_targets": null,
        "member_targets": null,
        "platform_content_category_targets": null,
        "platform_placement_targets": null,
        "platform_publisher_targets": null,
        "segment_boolean_operator": "or",
        "segment_group_targets": [],
        "daypart_targets": null,
        "daypart_timezone": null,
        "querystring_action": "exclude",
        "querystring_boolean_operator": "and",
        "querystring_targets": null,
        "position_targets": {
          "allow_unknown": true,
          "positions": null
        },
        "gender_targets": null,
        "age_targets": null,
        "certified_supply": false,
        "allow_unaudited": false,
        "trust": "appnexus",
        "video_targets": {
          "contexts": null,
          "playback_methods": null,
          "player_sizes": null,
          "allow_unknown_playback_method": false,
          "allow_unknown_context": false,
          "allow_unknown_player_size": false
        },
        "inventory_attribute_targets": [
          {
            "id": "2"
          },
          {
            "id": "4"
          },
          {
            "id": "6"
          },
          {
            "id": "8"
          },
          {
            "id": "10"
          },
          {
            "id": "14"
          },
          {
            "id": "16"
          },
          {
            "id": "18"
          }
        ],
        "intended_audience_targets": [
          "general",
          "children",
          "young_adult"
        ],
        "use_inventory_attribute_targets": true,
        "use_operating_system_extended_targeting": true,
        "operating_system_extended_targets": null,
        "operating_system_family_action": "exclude",
        "operating_system_family_targets": null,
        "operating_system_action": "exclude",
        "operating_system_targets": null,
        "language_action": "exclude",
        "language_targets": null,
        "browser_action": "exclude",
        "browser_targets": null,
        "carrier_action": "exclude",
        "carrier_targets": null,
        "device_model_action": "exclude",
        "device_model_targets": null
      },
      "id": 0
    },
    "campaigns": [
      {
        "name": "Tst",
        "state": "active",
        "inventory_type": "both",
        "cpm_bid_type": "bpp",
        "require_cookie_for_tracking": false
      }
    ]
  }
}
 
$ curl -b cookies -c cookies -X POST -d @standard_v2.json "http://sor-api.adnxs.net/standard_v2"
```






