---
Title : Site Domain Performance Report
Description : The Site Domain Performance report can be used to view performance and
ms.date: 10/28/2023
ms.custom: digital-platform-api
optimization data by domain for a specific advertiser.
---


# Site Domain Performance Report







The Site Domain Performance report can be used to view performance and
optimization data by domain for a specific advertiser.



<b>Tip:</b> To view performance and
optimization data by domain for multiple advertisers, use the <a
href="network-site-domain-performance.md"
class="xref" target="_blank">Network Site Domain Performance</a> report.



For instructions on retrieving a report, please see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or see the <a
href="site-domain-performance-report.md#site-domain-performance-report__site-domain-performance-report-example"
class="xref">example</a> below. For an advertiser user, the advertiser
ID is detected based on the user's authentication. For a network user,
however, this report requires specifying the advertiser ID as part of
the URL, for example:



``` pre
https://api.appnexus.com/report?advertiser_id=ADVERTISER_ID
```



>

## Time Frame

>

The `report_interval` field in the JSON request can be set to one of the
following:

- yesterday

- last_7_days

- month_to_date

- month_to_yesterday



If you use the `start_date` and `end_date` fields to define the time
range, the `start_date` must not be more than 45 days in the past. Since
hourly data is not available for this report, `start_date` and
`end_date` cannot be identical and must be formatted as `"YYYY-MM-DD"`
rather than `"YYYY-MM-DD HH:MM:SS"`. Report data can be returned only
for the UTC timezone.



>

**Data Retention Period**

Data retention period for this report is 45 days.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="site-domain-performance-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="site-domain-performance-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="site-domain-performance-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="site-domain-performance-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="site-domain-performance-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">11/1/11</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The month and year
(with the first day of the month).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">11/16/11</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The day, month, and
year.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">site_domain</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">bestsiteever.com - or - itunes.apple.com/app/app-name/id1234567</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5"><p>The domain where
the impression occurred. For mobile applications, this can be the URL of
the app's location in the app store.</p>
<p>There are two additional values that may appear in place of a domain,
specifically: <code class="ph codeph">"deals.unknown"</code> or <code
class="ph codeph">"managed.unknown"</code>. These mean that we didn't
receive a valid domain as the referrer. For example, the domain may be
blank or otherwise malformed.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">ExampleCampaign (123456)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the
campaign followed by the ID (Xandr format).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">123456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The ID of the
campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">campaign_code</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">CampaignCode</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The custom code for
the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">ExampleCampaign</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the
campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">campaign_priority</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5"><p>The bidding
priority of a campaign that targets direct inventory. For more
information, see <a
href="monetize_monetize-standard/bidding-priority.md"
class="xref" target="_blank">"Bidding Priority"</a> in the UI
documentation.</p>
<p>Possible values: <code class="ph codeph">1 - 10</code>, where <code
class="ph codeph">10</code> is the highest priority.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">ExampleLineItem (323)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the line
item followed by the ID (Xandr format).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">323</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The ID of the line
item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">ExampleLineItem</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the line
item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">campaign_group</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">ExampleCampaign(123)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5"><p>The name of the
campaign group followed by the ID (Xandr
format).</p>

<b>Note:</b> <code
class="ph codeph">campaign_group</code> is a synonymous with <code
class="ph codeph">line_item</code> .
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">342</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The ID of the split
that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any reports that contain
campaigns, the <code class="ph codeph">split_id</code> (if included)
will be <code class="ph codeph">null</code> .</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"Mobile Split A"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the split
that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any reports that contain
campaigns, the <code class="ph codeph">split_name</code> (if included)
will be <code class="ph codeph">null</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">top_level_category_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">19821</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The ID of the top
content category assigned to the domain. This field may be <code
class="ph codeph">0</code> if the domain's <code
class="ph codeph">second_level_category</code> has no parent
category.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">top_level_category_name</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"Shopping"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the top
content category assigned to the domain. This field may be blank if the
domain's <code class="ph codeph">second_level_category</code> has no
parent category.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">top_level_category</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"Shopping (19821)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name and ID of
the top content category assigned to the domain. This field may be blank
if the domain's <code class="ph codeph">second_level_category</code> has
no parent category.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">second_level_category_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">20129</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The ID of the
second-level content category assigned to the domain.

<b>Note:</b> If the domain is an a top-level
category, you should not request this dimension.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">second_level_category_name</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"Shoes"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the
second-level content category assigned to the domain.

<b>Note:</b> If the domain is an a top-level
category, you should not request this dimension.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">second_level_category</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"Shoes (20129)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The ID and name of
the second-level content category assigned to the domain.

<b>Note:</b> If the domain is an a top-level
category, you should not request this dimension.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">2345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The ID of the deal.
For more information about deals you have negotiated with sellers, see
<a
href="deal-buyer-access-service.md"
class="xref" target="_blank">Deal Buyer Access Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the
deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">deal</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50 (45)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the deal
followed by the ID (Xandr format).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">deal_code</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"External seller deal code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The custom code for
the deal. For deals with external supply partners, this is generally the
string that you use to identify the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">ExampleAdvertiser (123)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the
advertiser followed by the ID (Xandr
format).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">campaign_group_name</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">ExampleGroupName</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the
campaign group</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The ID of the
advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">campaign_group_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The unique
identification number of the campaign group</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">advertiser_code</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">AdvertiserCode</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The custom code for
the advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">ExampleAdvertiser</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the
advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">buyer_member</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">MyNetwork (4567)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the
buying member followed by the ID (Xandr
format).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">4567</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The ID of the buying
member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">MyNetwork</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the
buying member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">supply_type</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">mobile_web</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The seller-classified
channel to denominate supply in terms of web, mobile-optimized web, and
mobile app impressions. Possible values are <code
class="ph codeph">'web'</code>, <code
class="ph codeph">'mobile_app'</code>, and <code
class="ph codeph">'mobile_web'</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">mobile_application_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">‘343200656’ (iOS) or ‘com.rovio.angrybirds’ (Android)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">A targetable Apple
App Store ID, Google Play package name, or Windows application ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">mobile_application_name</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">Angry Birds</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the
mobile application as it appears in the Apple App and Google Play
Stores.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">mobile_application</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">Angry Birds (com.rovio.angrybirds)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the
mobile application followed by the ID (Xandr
format).</td>
</tr>
<tr class="even row">
<td
id="site-domain-performance-report__site-domain-performance-report-fold-position-id"
class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">fold_position_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5"><p>The ID of the fold
position, i.e. where on the page the placement is located.</p>
<p>Possible values for impressions:</p>
<p><code class="ph codeph">0</code> = "unknown"</p>
<p><code class="ph codeph">1</code> = "above"</p>
<p><code class="ph codeph">2</code> = "below"</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">fold_position</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"Unknown"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The fold position,
i.e. where on the page the placement is located. For allowed values, see
<a
href="site-domain-performance-report.md#site-domain-performance-report__site-domain-performance-report-fold-position-id"
class="xref"><code class="ph codeph">fold_position_id</code></a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">age_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"25-34"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The bucket for the
age of the user. See <a
href="site-domain-performance-report.md#site-domain-performance-report__site-domain-performance-report-age-buckets"
class="xref">Age Buckets</a> below for possible values.

<b>Note:</b> For impressions older than 100
days, the <code class="ph codeph">age_bucket</code> will be <code
class="ph codeph">"unknown"</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">age_bucket_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"3"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The ID of the age
bucket. See <a
href="site-domain-performance-report.md#site-domain-performance-report__site-domain-performance-report-age-buckets"
class="xref">Age Buckets</a> below for possible values.

<b>Note:</b> For impressions older than than
100 days, the <code class="ph codeph">age_bucket_id</code> will be <code
class="ph codeph">0</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">gender</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"m", "f", "u"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The gender of the
user.

<b>Note:</b> For impressions older than 100
days, <code class="ph codeph">gender</code> will be <code
class="ph codeph">"u"</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">is_remarketing</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">0, 1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">If <code
class="ph codeph">1</code>, the campaign is remarketing. If <code
class="ph codeph">0</code>, the campaign is not remarketing.

<b>Note:</b> For impressions older than 100
days, <code class="ph codeph">is_remarketing</code> will be <code
class="ph codeph">-1</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">1942</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The unique
identification number of the conversion pixel.

<b>Note:</b> This dimension will return a
maximum of 10 conversion pixels. Also, you can filter by no more than 10
conversion pixels. Although <code class="ph codeph">pixel_id</code> is
groupable, we do not recommend that you group by this dimension since
doing so will cause conversion events to then be shown in separate rows
from impression and click events. We generally assume you want to view
all of these events in a single row so as to be able to retrieve
accurate and aggregated values for conversion rate and
cost-per-conversion calculations. As a result, we instead recommend that
you filter by <code class="ph codeph">pixel_id</code> so you can
retrieve conversion counts and related metrics for your most relevant
pixel IDs.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">operating_system_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4">24</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">
The ID of the operating system of the device.
<ul>
<li>Use the <a
href="operating-system-family-service.md"
class="xref" target="_blank">Operating System Family Service</a> to
obtain a list of operating system families.</li>
<li>Use the <a
href="operating-system-extended-service.md"
class="xref" target="_blank">Operating System Extended Service</a> to
look up which operating system versions are within a given operating
system family.</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">operating_system_name</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"Android 2.3.5 Gingerbread"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">
The ID of the operating system of the device.
<ul>
<li>Use the <a
href="operating-system-family-service.md"
class="xref" target="_blank">Operating System Family Service</a> to
obtain a list of operating system families.</li>
<li>Use the <a
href="operating-system-extended-service.md"
class="xref" target="_blank">Operating System Extended Service</a> to
look up which operating system versions are within a given operating
system family.</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">operating_system_family_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">
The ID of the operating system of the device.
<ul>
<li>Use the <a
href="operating-system-family-service.md"
class="xref" target="_blank">Operating System Family Service</a> to
obtain a list of operating system families.</li>
<li>Use the <a
href="operating-system-extended-service.md"
class="xref" target="_blank">Operating System Extended Service</a>to
look up which operating system versions are within a given operating
system family.</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">operating_system_family_name</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"Android"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">
The ID of the operating system of the device.
<ul>
<li>Use the <a
href="operating-system-family-service.md"
class="xref" target="_blank">Operating System Family Service</a> to
obtain a list of operating system families.</li>
<li>Use the <a
href="operating-system-extended-service.md"
class="xref" target="_blank">Operating System Extended Service</a> to
look up which operating system versions are within a given operating
system family.</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">12345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The ID of the seller
member associated with the site domain.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__4"><code
class="ph codeph">"BestSellerEver"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__5">The name of the
seller member associated with the site domain.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="site-domain-performance-report__entry__256"
class="entry colsep-1 rowsep-1">Column</th>
<th id="site-domain-performance-report__entry__257"
class="entry colsep-1 rowsep-1">Type</th>
<th id="site-domain-performance-report__entry__258"
class="entry colsep-1 rowsep-1">Example</th>
<th id="site-domain-performance-report__entry__259"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="site-domain-performance-report__entry__260"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">450.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">booked_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The revenue
received from the advertiser. For more information, see "<a
href="monetize_monetize-standard/network-revenue-and-billing-your-clients.md"
class="xref" target="_blank">Network Revenue and Billing Your
Clients</a>" in the UI documentation.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">2067</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The total number of
clicks.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">click_thru_pct</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">double</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">2.756%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">(clicks / imps) * 100</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The rate of clicks
to impressions as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">convs_per_mm</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">double</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">384.4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">(post_click_convs + post_view_convs / imps) * 1,000,000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The number of
conversions per million impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">double</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">0.0003844</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">(post_click_convs + post_view_convs) / imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The rate of
conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">cost_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">1.1111</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">media_cost / (post_click_convs + post_view_convs)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The cost per
acquisition/conversion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">cost_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">0.1834</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">media_cost / clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The cost per
click.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">5.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">media_cost / imps * 1000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The cost per
thousand impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">double</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">0.22756</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">clicks / imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The rate of clicks
to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">75000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The total number of
impressions served.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">100.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">media_cost</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The expense for the
buying member. For more information, see "<a
href="monetize_monetize-standard/network-revenue-and-billing-your-clients.md"
class="xref" target="_blank">Network Revenue and Billing Your
Clients</a>" in the UI documentation.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">15</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">post_click_convs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The total number of
recorded post-click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">post_click_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">double</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">0.0002</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">post_click_convs / imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The rate of
post-click conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">post_view_convs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The total number of
recorded post-view conversions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">post_view_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">double</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">0.00013</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">post_view_convs / imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The rate of
post-view conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">profit</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">0.084102</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">booked_revenue - total_cost</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">Booked revenue
minus total cost.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">profit_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">0.7778</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">((booked_revenue - media_cost) / imps) * 1000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">Profit (defined as
booked revenue minus total cost) per 1,000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">imps_viewed</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">30,450</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">imps_viewed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The number of
measured impressions that were viewable, per the IAB Viewability
definition, which states that an impression is viewable if 50% of the
pixels are in-view during 1 consecutive second.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">view_measured_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">10,120</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">view_measured_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">double</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">58%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">view_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">view_measurement_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">double</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">45%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">view_measurement_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">total_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">total_cost = media_cost + data_costs + partner_fees + commissions + serving_fees + publisher_revenue </code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260"><p>The total amount
of costs accrued over the reported period of time. This generally
includes two types of costs, budgeted costs (media cost, data cost,
partner fees, serving fees, commissions) and publisher revenue if you
track publisher payouts on the platform.</p>

<b>Note:</b> We have added logic to prevent
double counting third-party fees during the breaking change period.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">total_cost_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">(total_cost/imps) * 1,000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The total cost per
1,000 imps.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">total_cost_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">total_cost/clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The total cost per
click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">total_cost_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">total_cost/conversions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">The total cost per
conversion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">profit_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">(booked_revenue - total_cost)/clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">Profit per
click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">profit_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">(booked_revenue - total_cost)/conversions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">Profit per
conversion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__256">profit_margin</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__257">money</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__258"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__259"><code
class="ph codeph">(booked_revenue - total_cost)/booked_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__entry__260">Buyer profit
margin.</td>
</tr>
</tbody>
</table>



>

## Age Buckets



>

<table id="site-domain-performance-report__table_u2p_h42_vwb"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="site-domain-performance-report__table_u2p_h42_vwb__entry__1"
class="entry colsep-1 rowsep-1">Bucket ID</th>
<th id="site-domain-performance-report__table_u2p_h42_vwb__entry__2"
class="entry colsep-1 rowsep-1">Bucket Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__1">0</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__2">"unknown"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__2">"13-17"8</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__2">"18-24"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__1">3</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__2">"25-34"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__1">4</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__2">"35-44"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__1">5</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__2">"45-54"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__1">6</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__2">"'55-64"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__1">7</td>
<td class="entry colsep-1 rowsep-1"
headers="site-domain-performance-report__table_u2p_h42_vwb__entry__2">"65+"</td>
</tr>
</tbody>
</table>





## Example

**Create JSON formatted report request**



``` pre
$ cat domain_performance

{
    "report":
    {
        "report_type": "site_domain_performance",
        "columns": [
            "day",
            "campaign",
            "booked_revenue",
            "imps",
            "clicks",
            "click_thru_pct",
            "site_domain"
        ]
        "report_interval": "last_7_days",
        "emails": ["js@mynetwork.com"],
        "format": "csv"
    }
}
```



**POST the request to the Reporting Service**

In this example, we request execution of the report for advertiser 660.



``` pre
$ curl -b cookies -c cookies -X POST -d @domain_performance 'https://api.appnexus.com/report?advertiser_id=660'

{
    "response":{
        "status":"OK",
        "report_id":"07af1282c9485adcef49c95fa5d7496b"
    }
}
```



**Use the Report ID to retrieve the report data**

The standard response includes the report data and a Download URL that
you can use to save the data to a file. If you want to get just the
Download URL without the report data, pass `"without_data"` in the query
string.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=07af1282c9485adcef49c95fa5d7496b'

{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2011-11-16 23:51:14",
            "cache_hit": false,
            "fact_cache_hit": false,
            "fact_cache_error": "fact-cache is off for report site_domain_performance",
            "json_request": "{\"report\":{\"report_type\":\"site_domain_performance\",\"columns\":[\"day\",\"campaign",
             "booked_revenue\",\"imps\",\"clicks\",\"click_thru_pct\",\"site_domain\"],\"report_interval\":\"last_7_days\",
             \"emails\":[\"js@mynetwork.com\"],\"filters\":[{\"buyer_member_id\":\"329\"},{\"advertiser_id\":\"660\"}]}}",
            "header_info": "Report type:,site_domain_performance\u000d\u000a,\u000d\u000aRun at:,2011-11-16 23:51:14\u000d\
             u000aStart date:,2011-11-09 00:00:00\u000d\u000aEnd date:,2011-11-16 00:00:00\u000d\u000aTimezone:,\u000d\
             u000aUser:,John Smith (9685)\u000d\u000a",
            "data": "day,campaign,booked_revenue,imps,clicks,click_thru_pct,site_domain\u000d\u000a2011-11-12,ExampleCampaign - 1
             (123456),.000000,24,0,.000000000000000000%,aaaa.com\u000d\u000a2011-11-13,ExampleCampaign - 2 (789012),.000000,9,0,
             .000000000000000000%,bbbb.net\u000d\u000a2011-11-12,ExampleCampaign - 3 (345678),.000000,2,0,.000000000000000000%,
             ccc.com\u000d\u000a2011-11-13,ExampleCampaign - 3 (345678),.000000,2,0,.000000000000000000%,cccc.de\u000du000a
             2011-11-14,ExampleCampaign - 3 (345678),.000000,10,0,.000000000000000000%,dddd.com\u000d\u000a2011-11-13,
             ExampleCampaign - 4 (901234), 2.574900,22,3,13.636363636363636364%,aaaa.com\u000d\u000a2011-11-15,ExampleCampaign - 3
             (345678),8.583000,2431,10,.411353352529823118%,abab.com\
             ...
            "url": "report-download?id=495d03a7667bac467bb488043ae336e9"
        },
        "execution_status": "ready"
    }
}
```



**Use the Download URL to save the report data to a file**

You use the `"url"` field in the response to save the report data to a
file. Simply make another `GET` call and identify the location and file
that you want to save to. Be sure to use the file the extension of the
`"format"` that you specified in your initial `POST` request.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=495d03a7667bac467bb488043ae336e9' > /tmp/site_domain.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.








