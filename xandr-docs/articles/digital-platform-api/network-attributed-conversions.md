---
Title : Network Attributed Conversions
Description : The **Network Attributed Conversions** report allows you to view
ms.date: 10/28/2023
ms.custom: digital-platform-api
conversion pixel IDs, order IDs, times of attributed clicks or
impressions, and other information related to attributed conversions for
a member or network.
---


# Network Attributed Conversions





The **Network Attributed Conversions** report allows you to view
conversion pixel IDs, order IDs, times of attributed clicks or
impressions, and other information related to attributed conversions for
a member or network.





<b>Note:</b>

Conversion pixels are used to track actions on advertisers' web pages,
such as registering or making a purchase. They can be configured to pass
dynamic order ID values, which help networks reconcile with advertisers.
Once a conversion pixel fires, Xandr determines if the conversion can be
attributed (tied to a creative that the user viewed or clicked
previously). A post-click conversion is attributed to the last click on
a creative associated with the conversion pixel. A post-view conversion
is attributed to the last impression of a creative associated with the
conversion pixel. For a hybrid pixel, the conversion is attributed to
the last click or, if there were no clicks, the last impression of a
creative associated with the conversion pixel.

For more details about our attribution process, see <a
href="monetize_monetize-standard/conversion-attribution.md"
class="xref" target="_blank">Conversion Attribution</a> in the UI
documentation (customer login required).





>



<b>Note:</b> For instructions on retrieving a
report, please see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="network-attributed-conversions.md#report_api_template__example"
class="xref">example</a> below.







Note that this report is filtered by member ID and advertiser ID. The
member ID is detected based on the network user's authentication, but
the advertiser ID must be specified as part of the URL, for example:

``` pre
https://api.appnexus.com/report?advertiser_id=ADVERTISER_ID
```







## Time Frame

>

The `report_interval` field can be set to one of the following:

- current_hour
- last_hour
- today
- yesterday
- last_48_hours
- last_7_days
- last_30_days
- month_to_yesterday
- month_to_date
- last_30_days



Alternately, the `start_date` and `end_date` fields can be set to a
range within the last 33 days. The `timezone` field in the JSON request
can be set only to `UTC`, but this is not necessary, as the timezone
defaults to `UTC` if not specified.

**Data Retention Period**

Date retention period for the report is 90 days.



>

## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th
id="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th
id="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th
id="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th
id="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">11/1/11</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
month and year when the conversion pixel fired.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">11/18/11</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
day of the year when the conversion pixel fired.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">11/18/11 6:00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
hour of the day when the conversion pixel fired.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">11/18/11 6:00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
date and time when the conversion pixel fired.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">9012</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the conversion pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">pixel_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">PixelName</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the conversion pixel.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">pixel</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">PixelName (9012)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">678</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
order ID or SKU optionally passed in the conversion pixel. For
information about dynamically passing an order ID in a conversion pixel,
see <a
href="monetize_monetize-standard/conversion-pixels-advanced.md"
class="xref" target="_blank">Conversion Pixels Advanced</a> in the UI
documentation.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">external_data</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">New York</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Additional
data optionally passed in the conversion pixel, for example, the
conversion geography, an affiliate code, or other information related to
the sale or user. For information about dynamically passing external
data in a conversion pixel, see <a
href="monetize_monetize-standard/conversion-pixels-advanced.md"
class="xref" target="_blank">Conversion Pixels Advanced</a> in the UI
documentation.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">post_click_or_post_view_conv</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">Post Click</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of conversion. If <code class="ph codeph">"Post Click"</code>, the
conversion is attributed to a user clicking a creative. If <code
class="ph codeph">"Post View"</code>, the conversion is attributed to a
user viewing a creative. The conversion type is defined when the
conversion pixel is assigned to a line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">user_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">433</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><p>The
ID of the user that clicked or viewed the creative.</p>


<b>Note:</b> This field has been deprecated
from the API (in compliance with GDPR) and that service has been
deprecated.

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">12345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the line item to which the conversion pixel is assigned.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">LineItemName</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">LineItemName (12345)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">890123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the creative that was clicked or viewed.

<b>Note:</b> For external click or impression
trackers, creative_id will be <code
class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">CreativeName</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">CreativeName (890123)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">456789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the campaign to which the creative belongs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">CampaignName</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the campaign to which the creative belongs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">CampaignName (456789)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">342</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the split that purchased the impressions in this data set. Splits
are only applicable to augmented line items. For any reports that
contain campaigns, the <code class="ph codeph">split_id</code> (if
included) will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Mobile Split A"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the split that purchased the impressions in this data set.
Splits are only applicable to augmented line items. For any reports that
contain campaigns, the <code class="ph codeph">split_name</code> (if
included) will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">imp_time</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">11/17/11 3:00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
date and time of the impression (when the creative was served).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">imp_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the impression type.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Kept"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of impression. For possible values, see <code
class="ph codeph">imp_type_id</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">AdvertiserName</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">AdvertiserName (123)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">4567</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the member that bought the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">auction_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">6442894461734786633</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><p>The
ID of the impression event.</p>


<b>Note:</b> Clients who subscribe to
log-level data feeds can use this ID to request additional information
about the impression, such as geography and browser.

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">custom
data</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">JSON
object</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">{"price_offering_id": ["e49c1480-dbbb-4302-84ed-133e00346ec3"],"custom_id": ["e390b0d1-78df-4c08-8656-f3fe52985323"]}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
data from custom parameters received by the Universal Pixel. This data
is associated with the auction to which a conversion was
attributed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">eventName</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">purchase</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the Universal Pixel event. This field captures both standard and
custom events.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">eventValue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">520.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
monetary value, such as a cart or purchase total, associated with an
event logged by a Universal Pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">eventValueCurrency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">USD</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
currency associated with the event value logged by a Universal
Pixel.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">itemIds</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
list of item IDs logged by a Universal Pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">itemNames</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
list of item names logged by a Universal Pixel</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">itemTypes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
list of item types logged by a Universal Pixel</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">trafficType</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">WEB</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
source of the traffic that caused the Universal Pixel to fire. Possible
Values are <code class="ph codeph">WEB</code> and <code
class="ph codeph">APP</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">universal_pixel</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">30ca5f0g-d4ec-455f-af6a-91234f445991</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
UUID of the Universal Pixel associated with a conversion.</td>
</tr>
</tbody>
</table>



>

## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th
id="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th
id="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th
id="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_click_or_post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">3.00</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">The
revenue optionally passed in the conversion pixel using the <code
class="ph codeph">"value"</code> parameter.</td>
</tr>
</tbody>
</table>




## Example

**Create JSON formatted report request**

In this example, we set a filter to get information about universal
pixel 30fa5f0b-d4ec-455f-af6a-36347f888991.

>

``` pre
{
    "report": {
        "report_type": "network_attributed_conversions",
        "columns": [
            "datetime",
            "pixel_id",
            "order_id",
            "post_click_or_post_view_conv",
            "post_click_or_post_view_revenue",
            "line_item_id",
            "creative_id",
            "campaign_id",
            "imp_time",
            "imp_type_id",
            "external_data",
            "universal_pixel",
            "trafficType",
            "eventName",
            "eventValue",
            "eventValueCurrency",
            "itemIds",
            "itemNames",
            "itemTypes",
            "customData"
        ],
        "filters": [{
            "universal_pixel": "30ca5f0g-d4ec-455f-af6a-91234f445991"
        }],
        "report_interval": "yesterday",
        "emails": ["report.user@xandr.com"],
        "format": "csv"
    }
}
```



**`POST` the request to the Reporting Service**

>

``` pre
$ curl -b cookies -c cookies -X POST -d @network_attributed_conversions 'https://api.appnexus.com/report?member_id=123'

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

>

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=07af1282c9485adcef49c95fa5d7496b'

{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2011-11-22 23:51:22",
            "cache_hit": false,
            "fact_cache_hit": false,
            "json_request": "{\"report\":{\"report_type\":\"network_attributed_conversions\",\"columns\":
             [\"datetime\",\"pixel_id\",\"order_id\",\"post_click_or_post_view_conv\",
             \"post_click_or_post_view_revenue\",\"line_item_id\",\"creative_id\",\"campaign_id\",
             \"imp_time\",\"imp_type_id\",\"advertiser_id\",\"buyer_member_id\"],
             \"report_interval\":\"lifetime\",\"emails\":[\"js@email.com\"],\"filters\":
             [{\"buyer_member_id\":\"4567\"},{\"advertiser_id\":\"123\"}]}}",
            "header_info": "Report type:,conversion_pixel\u000d\u000a,\u000d\u000aRun at:,
             2011-11-22 23:51:22\u000d\u000aStart date:,2011-11-15 00:00:00\u000d\u000aEnd date:,
             2011-11-22 00:00:00\u000d\u000aTimezone:,\u000d\u000aUser:,John Smith (1432)
             \u000d\u000a",
            "data": "datetime,pixel_id,order_id,post_click_or_post_view_conv,
             post_click_or_post_view_revenue,line_item_id,creative_id,campaign_id,imp_time,
             imp_type_id,advertiser_id,buyer_member_id\u000d\u000a11704,8225230493273032227,
             123,8.7654A+32,4567,2011-11-18 06:00:13,2011-11-17 03:00:02,5,12345,678,9012,
             Post Click,.3.00\u000d\u000a11704,
             ..."
        },
        "execution_status": "ready",
        "dbg_info": {
            ...
        }
    }
}
```



**If necessary, use the Lookup Service to map objects IDs to other
relevant data, such as names, codes, and statuses**

See <a
href="lookup-service.md"
class="xref" target="_blank">Lookup Service</a> for more details.

**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `url` field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.

>

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/network_attributed_conversions.csv 
```







<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










