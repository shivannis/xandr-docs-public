---
Title : Advertiser Attributed Conversions
Description : The Advertiser Attributed Conversions report allows you to view
conversion pixel IDs, order IDs, times of attributed clicks or
impressions, and other information related to your advertisers'
attributed conversions.
---


# Advertiser Attributed Conversions





The Advertiser Attributed Conversions report allows you to view
conversion pixel IDs, order IDs, times of attributed clicks or
impressions, and other information related to your advertisers'
attributed conversions.



Note: Conversion pixels are used to
track actions on advertisers' web pages, such as registering or making a
purchase. They can be configured to pass dynamic order ID values, which
help networks reconcile with advertisers. Once a conversion pixel fires,
Xandr determines if the conversion can be
attributed (tied to a creative that the user viewed or clicked
previously). A post-click conversion is attributed to the last click on
a creative associated with the conversion pixel. A post-view conversion
is attributed to the last impression of a creative associated with the
conversion pixel. For a hybrid pixel, the conversion is attributed to
the last click or, if there were no clicks, the last impression of a
creative associated with the conversion pixel.

For more details about our attribution process, see <a
href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/conversion-attribution.html"
class="xref" target="_blank">Conversion Attribution</a> in the UI
documentation.



For instructions on retrieving a report, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> or the <a
href="advertiser-attributed-conversions.html#advertiser-attributed-conversions__example"
class="xref">Example</a>.

This report is filtered by member ID and advertiser ID. The member ID is
detected based on the network user's authentication, but the advertiser
ID must be specified as part of the URL, for example:

``` pre
https://api.appnexus.com/report?advertiser_id=ADVERTISER_ID
```





## Time Frame and Time Zone

The `report_interval` field in the JSON request can be set to one of the
following:

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

This report can retrieve data for the last 90 days and only in UTC
timezone.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="advertiser-attributed-conversions__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="advertiser-attributed-conversions__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="advertiser-attributed-conversions__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="advertiser-attributed-conversions__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="advertiser-attributed-conversions__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">11/1/11</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The month and year
when the conversion pixel fired.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">11/18/11</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The day of the
year when the conversion pixel fired.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">11/18/11 6:00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The hour of the
day when the conversion pixel fired.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">11/18/11 6:00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The date and time
when the conversion pixel fired.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">9012</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The ID of the
conversion pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">pixel_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">PixelName</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The name of the
conversion pixel.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">pixel</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">PixelName (9012)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">678</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The order ID or
SKU optionally passed in the conversion pixel. For information about
dynamically passing an order ID in a conversion pixel, see <a
href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/conversion-pixels-advanced.html"
class="xref" target="_blank">Conversion Pixels Advanced</a> in the UI
documentation.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">external_data</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">New York</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">Additional data
optionally passed in the conversion pixel, for example, the conversion
geography, an affiliate code, or other information related to the sale
or user. For information about dynamically passing external data in a
conversion pixel, see <a
href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/conversion-pixels-advanced.html"
class="xref" target="_blank">Conversion Pixels Advanced</a> in the UI
documentation.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">post_click_or_post_view_conv</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">Post Click</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The type of
conversion. If "Post Click", the conversion is attributed to a user
clicking a creative. If "Post View", the conversion is attributed to a
user viewing a creative. The conversion type is defined when the
conversion pixel is assigned to a line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">user_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">433</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5"><p>The ID of the
user that clicked or viewed the creative.</p>


Warning: This field has been deprecated
from the API (in compliance with GDPR) and that service has been
deprecated.

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">12345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The ID of the line
item to which the conversion pixel is assigned.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">LineItemName</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The name of the
line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">LineItemName (12345)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">890123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The ID of the
creative that was clicked or viewed.

Note: For external click or impression
trackers, <code class="ph codeph">creative_id</code> will be <code
class="ph codeph">"External Clicks"</code> or<code
class="ph codeph"> "External Imps"</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">creative_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">CreativeName</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The name of the
creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">creative</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">CreativeName (890123)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">456789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The ID of the
campaign to which the creative belongs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">CampaignName</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The name of the
campaign to which the creative belongs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">CampaignName (456789)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">342</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any reports that contain
campaigns, the <code class="ph codeph">split_id</code> (if included)
will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">"Mobile Split A"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The name of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any reports that contain
campaigns, the <code class="ph codeph">split_name</code> (if included)
will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">imp_time</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">11/17/11 3:00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The date and time
of the impression (when the creative was served).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">imp_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The ID for the
type of impression. Possible values (associated types in parentheses):
<ul>
<li><code class="ph codeph">1 ("Blank")</code>: No creative served.</li>
<li><code class="ph codeph">2 ("PSA")</code>: A public service
announcement served because there were no valid bids and no default
creative was available.</li>
<li><code class="ph codeph">3 ("Default Error")</code>: A default
creative served due to a timeout issue.</li>
<li><code class="ph codeph">4 ("Default")</code>: A default creative
served because there were no valid bids.</li>
<li><code class="ph codeph">5 ("Kept")</code>: Your advertiser's
creative served on your publisher's site.</li>
<li><code class="ph codeph">6 ("Resold")</code>: Your publisher's
impression was sold to a third-party buyer.</li>
<li><code class="ph codeph">7 ("RTB")</code>: Your advertiser's creative
served on third-party inventory.</li>
<li><code class="ph codeph">8 ("PSA Error")</code>: A public service
announcement served due to a timeout issue or lack of a default
creative.</li>
<li><code class="ph codeph">9 ("External Impression")</code>: An
impression from an impression tracker.</li>
<li><code class="ph codeph">10 ("External Click")</code>: A click from a
click tracker.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">"Kept"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The type of
impression. For possible values, see <code
class="ph codeph">imp_type_id</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The ID of the
advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">AdvertiserName</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The name of the
advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">AdvertiserName (123)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">4567</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5">The ID of the
member that bought the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__1">auction_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__4"><code
class="ph codeph">6442894461734786633</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__5"><p>The ID of the
impression event.</p>


Note: Clients who subscribe to <a
href="https://docs.xandr.com/bundle/log-level-data/page/log-level-data-feeds.html"
class="xref" target="_blank">log-level data feeds</a> can use this ID to
request additional information about the impression, such as geography
and browser.

</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="advertiser-attributed-conversions__entry__156"
class="entry colsep-1 rowsep-1">Column</th>
<th id="advertiser-attributed-conversions__entry__157"
class="entry colsep-1 rowsep-1">Type</th>
<th id="advertiser-attributed-conversions__entry__158"
class="entry colsep-1 rowsep-1">Example</th>
<th id="advertiser-attributed-conversions__entry__159"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__156">post_click_or_post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__157">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__158"><code
class="ph codeph">3.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-attributed-conversions__entry__159">The revenue
optionally passed in the conversion pixel using the "value"
parameter.</td>
</tr>
</tbody>
</table>



<div id="advertiser-attributed-conversions__example"
>

## Examples

**Create the JSON-formatted report request**

In this example, we set a filter to get information about conversion
pixel 9012.

``` pre
$ cat attributed_conversions  {
    "report":
    {
        "report_type": "attributed_conversions",
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
            "advertiser_id",
            "buyer_member_id"
        ],
        "filters": [{"pixel_id": 9012}],
        "report_interval": "last_7_days",
        "emails": ["js@email.com"],
        "format": "csv"
    }
}
```

**POST the request to the Reporting Service**

``` pre
$ curl -b cookies -c cookies -X POST -d @attributed_conversions 'https://api.appnexus.com/report?advertiser_id=123'

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
            "created_on": "2011-11-22 23:51:22",
            "cache_hit": false,
            "fact_cache_hit": false,
            "json_request": "{\"report\":{\"report_type\":\"attributed_conversions\",\"columns\":
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
href="https://docs.xandr.com/bundle/xandr-api/page/lookup-service.html"
class="xref" target="_blank">Lookup Service</a> for more details.

**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the `report-download` service. You can find
the service and report ID in the url field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/attributed_conversions.csv 
```





Note: There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










