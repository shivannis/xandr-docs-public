---
Title : Buy-Side Forecasting Service
Description : <b>Note:</b> This page can only be viewed by
ms.date: 10/28/2023
ms.custom: digital-platform-api
Xandr employees.
---


# Buy-Side Forecasting Service





<b>Note:</b> This page can only be viewed by
Xandr employees.



A successful campaign requires, among other things, accurate delivery.
Delivery can sometimes be difficult to predict. For example, a trader
may not know whether lowering a bid will result in under delivery. To
help traders better understand the dynamics behind available impressions
for a particular campaign, you can create a forecast. These forecasts
provide buyers with insight into the number of impressions that could be
delivered, given their campaign's targeting choices at various CPM bids.
Access to this type of data before the actual campaign runs, helps
buyers better plan budgets with their clients.



## REST API

The Buy-Side Forecasting Service supports `GET`, `POST`, and `DELETE`
calls. `PUT` calls are not supported.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001048__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001048__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001048__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__2">https://api.<span
class="ph">appnexus.com/periscope-forecast?member_id=MEMBER_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001048__entry__3">Add
a new forecast</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__2">https://api.<span
class="ph">appnexus.com/periscope-forecast?id=ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__3">Delete a forecast. To delete a forecast,
the <code class="ph codeph">forecast_id</code> number is required</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__2">https://api.<span
class="ph">appnexus.com/periscope-forecast?member_id=MEMBER_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001048__entry__3">View
all forecasts</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__2">https://api.<span
class="ph">appnexus.com/periscope-forecast?id=ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001048__entry__3">View
a specific forecast</td>
</tr>
</tbody>
</table>





## JSON Fields 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001048__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001048__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001048__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__16"><code class="ph codeph">id</code><br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001048__entry__18">The
ID of the forecast.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__16"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001048__entry__18">The
date on which the forecast was created.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__16"><code
class="ph codeph">deleted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__17">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__18"><code class="ph codeph">true</code> = A
forecast that has been deleted. / <code class="ph codeph">false</code> =
A forecast that has not been deleted.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__16"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__17">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__18">Name of the forecast object.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__16"><code
class="ph codeph">profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001048__entry__18">The
ID number of the profile object. (It is the same object used in the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a>.)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__16"><code
class="ph codeph">campaign_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001048__entry__18">The
ID number of the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__16"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001048__entry__18">The
ID number of the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__16"><code
class="ph codeph">creative_property_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__17">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__18">List of attributes that applies to
underlying creatives. Each JSON object will match with one
creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__16"><code
class="ph codeph">bid_buckets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__17">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001048__entry__18">The
results of the forecast, containing the following information:
<ul>
<li><code class="ph codeph">bid_bucket_percent</code>: % of total daily
impressions (win rate).</li>
<li><code class="ph codeph">bid_bucket_price</code>: The CPM base bid
necessary to win that % of daily impressions.</li>
<li><code class="ph codeph">cumulative_imps_available</code>: Number of
daily impressions that would be won at the CPM bid price.</li>
<li><code class="ph codeph">cumulate_cost</code>: Daily budget needed to
win those impressions.</li>
</ul></td>
</tr>
</tbody>
</table>





## Examples



**Create a new forecast that targets users in Brazil and Australia, with
a display (banner) of 300 x 250 pixels.**

<table class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>API call</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>curl -b cookies -c cookies -X POST -d @forecast.json &#39;https://api.appnexus.com/periscope-forecast?member_id=1234&#39;</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>JSON</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>{
  &quot;forecast&quot;: {
    &quot;name&quot;: &quot;My Forecast&quot;,
    &quot;creative_property_targets&quot;: [
      {
        &quot;media_subtype_id&quot;: 1,
        &quot;width&quot;: 300,
        &quot;height&quot;: 250,
        &quot;brand_id&quot;: 350
      }
    ],
    &quot;profile&quot;: {
      &quot;country_targets&quot;: [
        {
          &quot;id&quot;: 18,
          &quot;code&quot;: &quot;AU&quot;
        },
        {
          &quot;id&quot;: 34,
          &quot;code&quot;: &quot;BR&quot;
        }
      ],
      &quot;country_action&quot;: &quot;include&quot;
    }
  }
}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Response</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 50,
        &quot;dbg_info&quot;: {
            &quot;instance&quot;: &quot;03.forecast-api.prod.0002&quot;,
            &quot;db&quot;: &quot;&quot;,
            &quot;warnings&quot;: [
 &#10;            ],
            &quot;start_microtime&quot;: 1463161332.731,
            &quot;time&quot;: 4,
            &quot;version&quot;: &quot;&quot;,
            &quot;output_term&quot;: &quot;forecast&quot;
        },
        &quot;forecast&quot;: [
            {
                &quot;id&quot;: 179,
                &quot;created_on&quot;: &quot;2016-05-13 17:42:12&quot;,
                &quot;deleted&quot;: false,
                &quot;name&quot;: &quot;My Forecast&quot;,
                &quot;profile_id&quot;: 57167266,
                &quot;campaign_id&quot;: 13100202,
                &quot;member_id&quot;: 1234,
                &quot;creative_property_targets&quot;: [
                    {
                        &quot;id&quot;: 562,
                        &quot;forecast_id&quot;: 179,
                        &quot;media_subtype_id&quot;: 1,
                        &quot;width&quot;: 300,
                        &quot;height&quot;: 250,
                        &quot;is_skippable&quot;: null,
                        &quot;duration_ms&quot;: null
                    }
                ],
                &quot;bid_buckets&quot;: [
 &#10;                ],
                &quot;profile&quot;: {
                    &quot;id&quot;: 57167266,
                    &quot;code&quot;: null,
                    &quot;description&quot;: &quot;PERISCOPE_HOLD_PROFILE_DESC&quot;,
                    &quot;country_action&quot;: &quot;include&quot;,
                    &quot;region_action&quot;: &quot;exclude&quot;,
                    &quot;city_action&quot;: &quot;exclude&quot;,
                    &quot;browser_action&quot;: &quot;exclude&quot;,
                    &quot;use_inventory_attribute_targets&quot;: false,
                    &quot;last_modified&quot;: &quot;2016-05-13 17:42:11&quot;,
                    &quot;daypart_timezone&quot;: null,
                    &quot;dma_action&quot;: &quot;exclude&quot;,
                    &quot;domain_action&quot;: &quot;exclude&quot;,
                    &quot;domain_list_action&quot;: &quot;exclude&quot;,
                    &quot;inventory_action&quot;: &quot;exclude&quot;,
                    &quot;language_action&quot;: &quot;exclude&quot;,
                    &quot;segment_boolean_operator&quot;: &quot;and&quot;,
                    &quot;min_session_imps&quot;: null,
                    &quot;session_freq_type&quot;: &quot;platform&quot;,
                    &quot;carrier_action&quot;: &quot;exclude&quot;,
                    &quot;supply_type_action&quot;: &quot;exclude&quot;,
                    &quot;device_type_action&quot;: &quot;exclude&quot;,
                    &quot;screen_size_action&quot;: &quot;exclude&quot;,
                    &quot;device_model_action&quot;: &quot;exclude&quot;,
                    &quot;location_target_radius&quot;: null,
                    &quot;location_target_latitude&quot;: null,
                    &quot;location_target_longitude&quot;: null,
                    &quot;querystring_action&quot;: &quot;exclude&quot;,
                    &quot;querystring_boolean_operator&quot;: &quot;and&quot;,
                    &quot;is_expired&quot;: false,
                    &quot;non_audited_url_action&quot;: &quot;include&quot;,
                    &quot;daypart_bitmap&quot;: null,
                    &quot;optimization_zone_action&quot;: &quot;exclude&quot;,
                    &quot;advertiser_id&quot;: 945485,
                    &quot;publisher_id&quot;: null,
                    &quot;max_session_imps&quot;: null,
                    &quot;max_day_imps&quot;: null,
                    &quot;max_lifetime_imps&quot;: null,
                    &quot;max_page_imps&quot;: null,
                    &quot;min_minutes_per_imp&quot;: null,
                    &quot;venue_action&quot;: &quot;exclude&quot;,
                    &quot;operating_system_action&quot;: &quot;exclude&quot;,
                    &quot;require_cookie_for_freq_cap&quot;: true,
                    &quot;trust&quot;: &quot;seller&quot;,
                    &quot;allow_unaudited&quot;: false,
                    &quot;is_template&quot;: false,
                    &quot;created_on&quot;: &quot;2016-05-13 17:42:11&quot;,
                    &quot;operating_system_family_action&quot;: &quot;exclude&quot;,
                    &quot;use_operating_system_extended_targeting&quot;: false,
                    &quot;mobile_app_instance_action_include&quot;: false,
                    &quot;mobile_app_instance_list_action_include&quot;: false,
                    &quot;certified_supply&quot;: false,
                    &quot;user_group_targets&quot;: null,
                    &quot;country_targets&quot;: [
                        {
                            &quot;id&quot;: 18,
                            &quot;name&quot;: &quot;Australia&quot;,
                            &quot;code&quot;: &quot;AU&quot;
                        },
                        {
                            &quot;id&quot;: 34,
                            &quot;name&quot;: &quot;Brazil&quot;,
                            &quot;code&quot;: &quot;BR&quot;
                        }
                    ],
                    &quot;region_targets&quot;: null,
                    &quot;city_targets&quot;: null,
                    &quot;inventory_attribute_targets&quot;: null,
                    &quot;age_targets&quot;: null,
                    &quot;daypart_targets&quot;: null,
                    &quot;browser_targets&quot;: null,
                    &quot;dma_targets&quot;: null,
                    &quot;domain_targets&quot;: null,
                    &quot;domain_list_targets&quot;: null,
                    &quot;language_targets&quot;: null,
                    &quot;size_targets&quot;: null,
                    &quot;zip_targets&quot;: null,
                    &quot;member_targets&quot;: null,
                    &quot;video_targets&quot;: {
                        &quot;allow_unknown_playback_method&quot;: false,
                        &quot;allow_unknown_context&quot;: false,
                        &quot;allow_unknown_player_size&quot;: false
                    },
                    &quot;engagement_rate_targets&quot;: null,
                    &quot;segment_group_targets&quot;: null,
                    &quot;carrier_targets&quot;: null,
                    &quot;supply_type_targets&quot;: null,
                    &quot;device_type_targets&quot;: null,
                    &quot;screen_size_targets&quot;: null,
                    &quot;device_model_targets&quot;: null,
                    &quot;querystring_targets&quot;: null,
                    &quot;gender_targets&quot;: null,
                    &quot;intended_audience_targets&quot;: null,
                    &quot;inventory_network_resold_targets&quot;: null,
                    &quot;operating_system_targets&quot;: null,
                    &quot;operating_system_family_targets&quot;: null,
                    &quot;position_targets&quot;: null,
                    &quot;site_targets&quot;: null,
                    &quot;venue_targets&quot;: null,
                    &quot;operating_system_extended_targets&quot;: null,
                    &quot;optimization_zone_targets&quot;: null,
                    &quot;postal_code_targets&quot;: null,
                    &quot;seller_member_group_targets&quot;: null,
                    &quot;cross_device&quot;: null,
                    &quot;content_category_targets&quot;: null,
                    &quot;deal_targets&quot;: null,
                    &quot;placement_targets&quot;: null,
                    &quot;platform_content_category_targets&quot;: null,
                    &quot;platform_placement_targets&quot;: null,
                    &quot;platform_publisher_targets&quot;: null,
                    &quot;publisher_targets&quot;: null,
                    &quot;segment_targets&quot;: null,
                    &quot;exelate_targets&quot;: null,
                    &quot;ip_range_list_targets&quot;: null,
                    &quot;mobile_app_instance_targets&quot;: null,
                    &quot;mobile_app_instance_list_targets&quot;: null
                }
            }
        ]
    }
}</code></pre></td>
</tr>
</tbody>
</table>





**Create a forecast that targets video inventory with creative property
targets.**

<table class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>API call</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>curl -b cookies -c cookies -X POST -d @forecast2.json &#39;https://api.appnexus.com/periscope-forecast?member_id=1234&#39;</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>JSON</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>{  &quot;forecast&quot;: {
    &quot;name&quot;: &quot;My Second Forecast&quot;,
    &quot;creative_property_targets&quot;: [
      {
        &quot;media_subtype_id&quot;: 64,
        &quot;width&quot;: 1,
        &quot;height&quot;: 1,
        &quot;brand_id&quot;: 96,
        &quot;is_skippable&quot;: true,
        &quot;duration_ms&quot;: 30000
      }
    ],
    &quot;profile&quot;: {
      &quot;video_targets&quot;: {
        &quot;allow_unknown_playback_method&quot;: true,
        &quot;allow_unknown_context&quot;: true,
        &quot;allow_unknown_player_size&quot;: true
      },
      &quot;device_type_action&quot;: &quot;include&quot;,
      &quot;device_type_targets&quot;: [
        &quot;phone&quot;,
        &quot;tablet&quot;
      ]
    }
  }
}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Response</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 50,
        &quot;dbg_info&quot;: {
            &quot;instance&quot;: &quot;02.forecast-api.prod.0002&quot;,
            &quot;db&quot;: &quot;&quot;,
            &quot;warnings&quot;: [
            ],
            &quot;start_microtime&quot;: 1463162647.753,
            &quot;time&quot;: 6,
            &quot;version&quot;: &quot;&quot;,
            &quot;output_term&quot;: &quot;forecast&quot;
        },
        &quot;forecast&quot;: [
            {
                &quot;id&quot;: 181,
                &quot;created_on&quot;: &quot;2016-05-13 18:04:07&quot;,
                &quot;deleted&quot;: false,
                &quot;name&quot;: &quot;My Second Forecast&quot;,
                &quot;profile_id&quot;: 57167512,
                &quot;campaign_id&quot;: 13100348,
                &quot;member_id&quot;: 958,
                &quot;creative_property_targets&quot;: [
                    {
                        &quot;id&quot;: 564,
                        &quot;forecast_id&quot;: 181,
                        &quot;media_subtype_id&quot;: 64,
                        &quot;width&quot;: 1,
                        &quot;height&quot;: 1,
                        &quot;is_skippable&quot;: true,
                        &quot;duration_ms&quot;: 30000
                    }
                ],
                &quot;bid_buckets&quot;: [
                ],
                &quot;profile&quot;: {
                    &quot;id&quot;: 57167512,
                    &quot;code&quot;: null,
                    &quot;description&quot;: &quot;PERISCOPE_HOLD_PROFILE_DESC&quot;,
                    &quot;country_action&quot;: &quot;exclude&quot;,
                    &quot;region_action&quot;: &quot;exclude&quot;,
                    &quot;city_action&quot;: &quot;exclude&quot;,
                    &quot;browser_action&quot;: &quot;exclude&quot;,
                    &quot;use_inventory_attribute_targets&quot;: false,
                    &quot;last_modified&quot;: &quot;2016-05-13 18:04:06&quot;,
                    &quot;daypart_timezone&quot;: null,
                    &quot;dma_action&quot;: &quot;exclude&quot;,
                    &quot;domain_action&quot;: &quot;exclude&quot;,
                    &quot;domain_list_action&quot;: &quot;exclude&quot;,
                    &quot;inventory_action&quot;: &quot;exclude&quot;,
                    &quot;language_action&quot;: &quot;exclude&quot;,
                    &quot;segment_boolean_operator&quot;: &quot;and&quot;,
                    &quot;min_session_imps&quot;: null,
                    &quot;session_freq_type&quot;: &quot;platform&quot;,
                    &quot;carrier_action&quot;: &quot;exclude&quot;,
                    &quot;supply_type_action&quot;: &quot;exclude&quot;,
                    &quot;device_type_action&quot;: &quot;include&quot;,
                    &quot;screen_size_action&quot;: &quot;exclude&quot;,
                    &quot;device_model_action&quot;: &quot;exclude&quot;,
                    &quot;location_target_radius&quot;: null,
                    &quot;location_target_latitude&quot;: null,
                    &quot;location_target_longitude&quot;: null,
                    &quot;querystring_action&quot;: &quot;exclude&quot;,
                    &quot;querystring_boolean_operator&quot;: &quot;and&quot;,
                    &quot;is_expired&quot;: false,
                    &quot;non_audited_url_action&quot;: &quot;include&quot;,
                    &quot;daypart_bitmap&quot;: null,
                    &quot;optimization_zone_action&quot;: &quot;exclude&quot;,
                    &quot;advertiser_id&quot;: 945485,
                    &quot;publisher_id&quot;: null,
                    &quot;max_session_imps&quot;: null,
                    &quot;max_day_imps&quot;: null,
                    &quot;max_lifetime_imps&quot;: null,
                    &quot;max_page_imps&quot;: null,
                    &quot;min_minutes_per_imp&quot;: null,
                    &quot;venue_action&quot;: &quot;exclude&quot;,
                    &quot;operating_system_action&quot;: &quot;exclude&quot;,
                    &quot;require_cookie_for_freq_cap&quot;: true,
                    &quot;trust&quot;: &quot;seller&quot;,
                    &quot;allow_unaudited&quot;: false,
                    &quot;is_template&quot;: false,
                    &quot;created_on&quot;: &quot;2016-05-13 18:04:06&quot;,
                    &quot;operating_system_family_action&quot;: &quot;exclude&quot;,
                    &quot;use_operating_system_extended_targeting&quot;: false,
                    &quot;mobile_app_instance_action_include&quot;: false,
                    &quot;mobile_app_instance_list_action_include&quot;: false,
                    &quot;certified_supply&quot;: false,
                    &quot;user_group_targets&quot;: null,
                    &quot;country_targets&quot;: null,
                    &quot;region_targets&quot;: null,
                    &quot;city_targets&quot;: null,
                    &quot;inventory_attribute_targets&quot;: null,
                    &quot;age_targets&quot;: null,
                    &quot;daypart_targets&quot;: null,
                    &quot;browser_targets&quot;: null,
                    &quot;dma_targets&quot;: null,
                    &quot;domain_targets&quot;: null,
                    &quot;domain_list_targets&quot;: null,
                    &quot;language_targets&quot;: null,
                    &quot;size_targets&quot;: null,
                    &quot;zip_targets&quot;: null,
                    &quot;member_targets&quot;: null,
                    &quot;video_targets&quot;: {
                        &quot;allow_unknown_playback_method&quot;: true,
                        &quot;allow_unknown_context&quot;: true,
                        &quot;allow_unknown_player_size&quot;: true
                    },
                    &quot;engagement_rate_targets&quot;: null,
                    &quot;segment_group_targets&quot;: null,
                    &quot;carrier_targets&quot;: null,
                    &quot;supply_type_targets&quot;: null,
                    &quot;device_type_targets&quot;: [
                        &quot;phone&quot;,
                        &quot;tablet&quot;
                    ],
                    &quot;screen_size_targets&quot;: null,
                    &quot;device_model_targets&quot;: null,
                    &quot;querystring_targets&quot;: null,
                    &quot;gender_targets&quot;: null,
                    &quot;intended_audience_targets&quot;: null,
                    &quot;inventory_network_resold_targets&quot;: null,
                    &quot;operating_system_targets&quot;: null,
                    &quot;operating_system_family_targets&quot;: null,
                    &quot;position_targets&quot;: null,
                    &quot;site_targets&quot;: null,
                    &quot;venue_targets&quot;: null,
                    &quot;operating_system_extended_targets&quot;: null,
                    &quot;optimization_zone_targets&quot;: null,
                    &quot;postal_code_targets&quot;: null,
                    &quot;seller_member_group_targets&quot;: null,
                    &quot;cross_device&quot;: null,
                    &quot;content_category_targets&quot;: null,
                    &quot;deal_targets&quot;: null,
                    &quot;placement_targets&quot;: null,
                    &quot;platform_content_category_targets&quot;: null,
                    &quot;platform_placement_targets&quot;: null,
                    &quot;platform_publisher_targets&quot;: null,
                    &quot;publisher_targets&quot;: null,
                    &quot;segment_targets&quot;: null,
                    &quot;exelate_targets&quot;: null,
                    &quot;ip_range_list_targets&quot;: null,
                    &quot;mobile_app_instance_targets&quot;: null,
                    &quot;mobile_app_instance_list_targets&quot;: null
                }
            }
        ]
    }
}</code></pre></td>
</tr>
</tbody>
</table>





**Get all forecasts for a member**

<table class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>API call</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>curl -b cookies -c cookies -X GET &#39;https://api.appnexus.com/periscope-forecast?member_id=1234&#39;</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Response</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>{
  &quot;response&quot;: {
    &quot;status&quot;: &quot;OK&quot;,
    &quot;count&quot;: 1,
    &quot;start_element&quot;: 0,
    &quot;num_elements&quot;: 50,
    &quot;dbg_info&quot;: {
      &quot;instance&quot;: &quot;03.forecast-api.prod.0002&quot;,
      &quot;db&quot;: &quot;&quot;,
      &quot;warnings&quot;: [
      ],
      &quot;start_microtime&quot;: 1466438990.442,
      &quot;time&quot;: 5,
      &quot;version&quot;: &quot;&quot;,
      &quot;output_term&quot;: &quot;forecast&quot;
    },
    &quot;forecast&quot;: [
      {
        &quot;id&quot;: 198,
        &quot;created_on&quot;: &quot;2016-05-18 21:20:49&quot;,
        &quot;deleted&quot;: false,
        &quot;name&quot;: &quot;AngPlayerSizeAny&quot;,
        &quot;profile_id&quot;: 57471324,
        &quot;campaign_id&quot;: 13147960,
        &quot;member_id&quot;: 1370,
        &quot;creative_property_targets&quot;: [
          {
            &quot;id&quot;: 595,
            &quot;forecast_id&quot;: 198,
            &quot;media_subtype_id&quot;: 64,
            &quot;width&quot;: 1,
            &quot;height&quot;: 1,
            &quot;is_skippable&quot;: false,
            &quot;duration_ms&quot;: 90000
          }
        ],
        &quot;bid_buckets&quot;: [
        ]
      }
        ]
 }</code></pre></td>
</tr>
</tbody>
</table>








