---
Title : Video Ad Pod Report
Description : <b>Note:</b> This report is deprecated in
ms.date: 10/28/2023
ms.custom: digital-platform-api
August, 2023.
---


# Video Ad Pod Report







<b>Note:</b> This report is deprecated in
August, 2023.



The **Video Ad Pod report** shows metrics for groups of ads delivered
sequentially in between segments of non-commercial video programming.



<b>Note:</b> Video metrics are recorded for
VAST creatives only.



For instructions on retrieving a report, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="video-ad-pod-report.md#video-ad-pod-report__video-ad-pod-report-example"
class="xref">example</a> below.



>

## Time Frame

>

The `report_interval` field in the JSON request can be set to one of the
following:

- custom

- last_hour

- today

- yesterday

- last_48_hours

- last_7_days(not including today)

- last_30_days

- month_to_date

- last_365_days



>



<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.







>

## Data Retention Period



>

Data in this report is retained for 420 days.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="video-ad-pod-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="video-ad-pod-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="video-ad-pod-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="video-ad-pod-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="video-ad-pod-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The hour of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The day of the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The month of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The ID of the buyer member of
the video ad pod.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"Test"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The name of the buyer member of
the video ad pod.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">buyer_member</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"Test (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The name and ID of the buyer
member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">675</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The ID of the seller member of
the ad pod.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"Test"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The name of the seller member of
the ad pod.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">seller_member</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"Test (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The name and ID of the seller
member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">9</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The ID of a creative served in
the pod.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">creative_name</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"MyCreative"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The name of a creative served in
the pod.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">creative</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"MyCreative(9)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The name and ID of a creative
served in the pod.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The code for the geographic
country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The name of the geographic
country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">content_category_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The ID of the content category
associated with the ad pod in the placement or placement group.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">content_category</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"Travel"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The name of the content category
associated with the ad pod in the placement or placement group.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">video_context</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"bannerstream"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">When the video creative was
served in the pod.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">video_playback_method</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"auto-play, sound on"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The playback method for the
creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">ad_pod_call_type</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"Open RTB"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The type of the ad request
call.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">creative_duration</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"10"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The length of the ad in
seconds.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">max_ad_duration</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"45"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The maximum video ad duration in
seconds allowed by a placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">max_placement_duration</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"60"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The maximum placement duration
in seconds.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">video_player_size</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"small"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The size of the video player
based on pixel width and calculated from player dimensions</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">seller_type</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"console"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The type of seller for the ad
pod. Options are console or external.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">ad_slot_type</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5"><p>The ID of the type of
position (ad or bumper) within an ad pod.</p>

<ul>
<li>0 - normal slot,</li>
<li>1 - intro bumper</li>
<li>2 - outro bumper</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">ad_slot_position</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4">"Outro Bumper"</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The chronological order of an ad
within its ad pod (placement set).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">average_ad_slot_creative_duration</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4">10</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The average length of creatives
that were served in an ad slot</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">placement_set_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4">7</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The ID of the placement
set.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__1">device_type</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__4"><code
class="ph codeph">"Laptop"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__5">The name for the type of device
where the creative is displayed.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="video-ad-pod-report__entry__151"
class="entry colsep-1 rowsep-1">Column</th>
<th id="video-ad-pod-report__entry__152"
class="entry colsep-1 rowsep-1">Type</th>
<th id="video-ad-pod-report__entry__153"
class="entry colsep-1 rowsep-1">Example</th>
<th id="video-ad-pod-report__entry__154"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="video-ad-pod-report__entry__155"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__151">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__152">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__153"><code
class="ph codeph">2340</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__154"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__155">The total number of
impressions. For video ads, an impression takes place when the first
frame of the video is loaded.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__151">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__152">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__153"><code
class="ph codeph">4000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__154"><code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__155">The total number of
clicks.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__151">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__152">double</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__153"><code
class="ph codeph">0.4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__154"><code
class="ph codeph">clicks/imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__155">The click-through rate--the
ratio of clicks to impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__151">completion_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__152">double</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__153"><code
class="ph codeph">0.5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__154"><code
class="ph codeph">completions/imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__155">The ratio of video ad
completions to impressions, expressed as a percentage.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__151">unfilled_seconds</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__152">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__153"><code
class="ph codeph">15</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__154"><code
class="ph codeph">unfilled_seconds</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__155">The number of seconds in the
ad pod that could not be supplied with ad content.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__151">completions</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__152">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__153"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__154"><code
class="ph codeph">completions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__155">The number of video ads that
play to completion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__151">ad_pod_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__152">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__153"><code
class="ph codeph">100</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__154"><code
class="ph codeph">ad_pod_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-ad-pod-report__entry__155">The booked/reseller revenue of
the ad pod based on the type of impressions.</td>
</tr>
</tbody>
</table>





## Example

**Create JSON formatted report request**

The JSON file should include the `report_type`
`"video_pod_analytics_network"`, as well as the `columns` (dimensions
and metrics) and `report_interval` that you want to retrieve. You can
also filters for specific dimensions, define granularity (year, month,
day), and specify the format in which the data should be returned (csv,
excel, or html). For a full explanation of fields that can be included
in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.



``` pre
$ cat video_pod_analytics_network
  {
    "report":
    {
        "report_type":"video_pod_analytics_network",
        "columns":[
            "hour",
            "ad_slot_type",
            "buyer_member",
            "imps"
        ],
        "report_interval":"last_48_hours",
        "format":"csv"
    }
}
```



**`POST` the request to the Reporting Service**



``` pre
$ curl -b cookies -c cookies -X POST -d @video_ad_pod 'https://api.appnexus.com/report'
{
   "response":{
      "status":"OK",
      "report_id":"097f59fc3ab7d02c5d60db42081d9b69"
   }
}
```





**`GET` the report status from the Report Service**

``` pre
Make a GET call with the Report ID to retrieve the status of the report. Continue making this GET call until the {{execution_status}} is "ready". Then use the *report-download* service to save the report data to a file, as described in the next step.
```





``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=097f59fc3ab7d02c5d60db42081d9b69'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:19:53",
         "json_request":"{\"report\":{\"report_type\":\"video_pod_analytics_network\",\"columns\":[\"hour\",\"ad_slot_type\",
            \"buyer_member\",\"imps\",
            \"report_interval\":\"last_48_hours\"}}",
         "url": "report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```



**`GET` the report data from the Report Download Service**



To download the report data to a file, make another `GET` call with the
Report ID, but this time to the **report-download** service. You can
find the service and Report ID in the `url` field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.



<b>Tip:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/video_pod_analytics_network.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










