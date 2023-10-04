---
Title : Geo Analytics Report
Description : The **Geo Analytics** report allows you to break down campaign delivery
and performance by geographic area. Sample use cases for this report
---


# Geo Analytics Report







The **Geo Analytics** report allows you to break down campaign delivery
and performance by geographic area. Sample use cases for this report
include:

- Buyers who would like to optimize their campaigns
- Buyers who need to report to their client advertisers or agencies on
  campaign delivery





This report can break down campaign performance along the following
geographic boundaries:

- **Country**: The user's <a
  href="https://docs.xandr.com/bundle/xandr-api/page/country-service.html"
  class="xref" target="_blank">country</a> location.
- **Region**: The user's <a
  href="https://docs.xandr.com/bundle/xandr-api/page/region-service.html"
  class="xref" target="_blank">regional</a> location.
- **DMA**: The user's <a
  href="https://docs.xandr.com/bundle/xandr-api/page/designated-market-area-service.html"
  class="xref" target="_blank">designated market area</a>.



For more information on the available data fields and their definitions,
see <a href="geo-analytics-report.html#geo-analytics-report__dimensions"
class="xref">Dimensions</a> and
<a href="geo-analytics-report.html#geo-analytics-report__metrics"
class="xref">Metrics</a> below.

For instructions on running this report, see the
<a href="geo-analytics-report.html#geo-analytics-report__example"
class="xref">Example</a>.



Note: **On the accuracy of determining
user geography by IP address**

There is a limitation to how accurate the geo data is, particularly on
impressions bought from external supply partners. Since some external
supply partners (such as Google Ad Manager) truncate the last octet of
the user's IP, we have a less precise IP to use when performing an IP
geo-lookup. As a result, our geo data may not always be completely
accurate at granular levels (such as region and DMA) for impressions
bought from these supply sources.







## Time Frame



The `report_interval` field in the request can be set to one of the
following:

- today
- yesterday
- last_7_days



**Data Retention Period**

Data retention period for this report is 45 days.





Note: To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.







<div id="geo-analytics-report__dimensions" >

## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="geo-analytics-report__dimensions__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="geo-analytics-report__dimensions__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="geo-analytics-report__dimensions__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="geo-analytics-report__dimensions__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The year and month
in which the auction took place.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The year, month,
and day in which the auction took place.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">hourly</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The hour at which
the auction took place.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The ID of the
member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">advertiser_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The type of
currency used by the advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The insertion order
ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The campaign
ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The name of the
campaign associated with the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The advertiser ID.
If the value is 0, either the impression was purchased by an external
buyer, or a default or PSA was shown.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The line item
ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The name of the
advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The ID of the split
that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any reports that contain
campaigns, the <code class="ph codeph">split_id</code> (if included)
will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The name of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any reports that contain
campaigns, the <code class="ph codeph">split_name</code> (if included)
will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">campaign_code</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The user-assigned
code used to identify the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">advertiser_code</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The user-assigned
code associated with the advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_country_code</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The country code of
the user's location as defined by the <a
href="https://docs.xandr.com/bundle/xandr-api/page/country-service.html"
class="xref" target="_blank">Country Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_country_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The country ID of
the user's location as defined by the <a
href="https://docs.xandr.com/bundle/xandr-api/page/country-service.html"
class="xref" target="_blank">Country Service</a>. <code
class="ph codeph">250</code> is shown in cases where we don't know the
country or if the country doesn't map correctly to a location in our
database.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_region_code</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The region code of
the user's location as defined by the <a
href="https://docs.xandr.com/bundle/xandr-api/page/region-service.html"
class="xref" target="_blank">Region Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_region_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The region ID of
the user's location as defined by the <a
href="https://docs.xandr.com/bundle/xandr-api/page/region-service.html"
class="xref" target="_blank">Region Service</a>. <code
class="ph codeph">4291</code> is shown in cases where we don't know the
region or if the region doesn't map correctly to a location in our
database.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_dma_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The ID of the
user's designated market area location as defined by the <a
href="https://docs.xandr.com/bundle/xandr-api/page/designated-market-area-service.html"
class="xref" target="_blank">Designated Market Area Service</a>.

Note: <strong>Why am I seeing a DMA ID
of 1?</strong>
<p>Our reporting derives DMA from the city logged for the auction.
However, our geo provider is sometimes unable to determine a city from
the IP address associated with the impression, even when DMA
<strong>is</strong> determined. Therefore, there are cases where a
campaign targeting a specific DMA has impressions in reporting showing a
DMA of <code class="ph codeph">1</code>.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_dma_name</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The name of the
user's designated market area location as defined by the <a
href="https://docs.xandr.com/bundle/xandr-api/page/designated-market-area-service.html"
class="xref" target="_blank">Designated Market Area Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_postal_code</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The postal code of
the user's location. For postal codes, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/postal-code-service.html"
class="xref" target="_blank">Postal Code Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_city_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The ID of the
user's city location. For city IDs, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/city-service.html"
class="xref" target="_blank">City Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_city_name</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The name of the
user's city location. For city names, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/city-service.html"
class="xref" target="_blank">City Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">insertion_order_name</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The name of the
insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">insertion_order_code</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The user-defined
code associated with the insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The name of the
line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">line_item_code</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The user-defined
code associated with the line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The name of the
user's country, as defined by the <a
href="https://docs.xandr.com/bundle/xandr-api/page/country-service.html"
class="xref" target="_blank">Country Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_region_name</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The name of the
region of the user's location as defined by the <a
href="https://docs.xandr.com/bundle/xandr-api/page/region-service.html"
class="xref" target="_blank">Region Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_region</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">geo_dma</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The unique
identification number of the conversion pixel.

Note: This dimension will return a
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
pixel ids.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The transaction
currency used by the buyer to purchase this impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">uk_constituent_country</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The constituent
country of the user. This is applicable for United Kingdom. Possible
values include:
<ul>
<li><code class="ph codeph">England</code></li>
<li><code class="ph codeph">Scotland</code></li>
<li><code class="ph codeph">Wales</code></li>
<li><code class="ph codeph">Northern Ireland</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">congressional_district_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The ID of the
congressional district</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">congressional_district_name</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The name of the
congressional district</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">state_house_district_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The ID of the state
house district</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">state_senate_district_id</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The ID of the state
senate district</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">state_house_district_name</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The name of the
state house district</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__1">state_senate_district_name</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__dimensions__entry__4">The ID of the state
senate district</td>
</tr>
</tbody>
</table>



<div id="geo-analytics-report__metrics" >

## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="geo-analytics-report__metrics__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="geo-analytics-report__metrics__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="geo-analytics-report__metrics__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th id="geo-analytics-report__metrics__entry__4"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="geo-analytics-report__metrics__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total number of
impressions (served and resold).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total number of
clicks across all impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">cost</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">cost</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total cost of the
inventory purchased.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total revenue
booked through direct advertisers (line item).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The cost per one
thousand impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total number of
post-view and post-click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">total_convs /
imps</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The ratio of
conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total number of
recorded post-view conversions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total number of
recorded post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">profit</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">booked_revenue -
total_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">Booked revenue minus
total cost.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">click_thru_pct</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">(clicks / imps) x
100</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The rate of clicks to
impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">external_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">external_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The number of external
(non-network) impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">external_clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">external_clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The number of external
(non-network) clicks.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">booked_revenue_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">booked_revenue_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total revenue
booked through a direct advertiser, expressed in the currency of that
advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">total_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">total_cost =
media_cost + data_costs + partner_fees + commissions + serving_fees +
publisher_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5"><p>The total amount of
costs accrued over the reported period of time. This generally includes
two types of costs, budgeted costs (media cost, data cost, partner fees,
serving fees, commissions) and publisher revenue if you track publisher
payouts on the platform.</p>

Note: We have added logic to prevent
double counting third-party fees during the breaking change period.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">total_cost_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">(total_cost/imps) *
1,000</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total cost per
1,000 imps.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">total_cost_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">total_cost/clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total cost per
click.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">total_cost_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">total_cost/conversions</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total cost per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">profit_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">((booked_revenue -
total_cost)/imps) * 1,000</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">Profit per 1,000
imps.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">profit_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">(booked_revenue -
total_cost)/clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">Profit per click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">profit_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">(booked_revenue -
total_cost)/conversions</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">Profit per
conversion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">profit_margin</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">(booked_revenue -
total_cost)/booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">Buyer profit
margin.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">video_skips</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total number of
times a user skipped the video. Use this metric for reporting when
buying skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">video_starts</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">11</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total number of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">video_25_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total number of
times the video creatives completed 25% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">video_50_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total number of
times the video creatives completed 50% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">video_75_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total number of
times the video creatives completed 75% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">video_completions</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">12</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total number of
times the video creatives played for the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">video_served</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total number of
video responses served to the player.An ad response occurs when the VAST
document (XML) is served in response to a request.An ad response doesn't
necessarily indicate a successful impression. For an impression, the
first frame of the video must be served.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">video_errors</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total number of
times a video error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">revenue_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">25.76</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The revenue per video
completion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">cost_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">22.76</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The cost per video
completion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">video_completion_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4">(video
completions/total impressions) x 100</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The ratio of video
completions to impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">video_start_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The percentage of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">video_skip_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The percentage of
times the user opted to skip the video.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">booked_revenue_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The revenue booked by
the buyer to purchase this impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">cost_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The amount of media
cost for direct publisher and purchased real-time inventory in the
currency the buyer used to purchase the inventory.

Note: Exchange rates are not yet
available in reporting.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">cpm_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The cost per 1000
impressions in the currency the buyer used to purchase the inventory.

Note: Exchange rates are not yet
available in reporting.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">cost_ecpa_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The cost per
acquisition/conversion in the currency the buyer used to purchase the
inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">cost_ecpc_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The cost per click in
the currency the buyer used to purchase the inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">revenue_ecpm_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The revenue per 1,000
impressions in the buying currency.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">revenue_ecpc_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The revenue per click
in the buying currency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">revenue_ecpa_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The revenue per
conversion in the buying currency.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__1">total_cost_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="geo-analytics-report__metrics__entry__5">The total sum of media
costs, data costs and partner fees in buying (advertiser) currency</td>
</tr>
</tbody>
</table>



<div id="geo-analytics-report__example" >

## Example

**Create the JSON-formatted report request**

The file should contain the `report_type` of `"geo_analytics"` as well
as the columns and report_interval that you want to retrieve. For a full
explanation of the fields that can be included in the file, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.

Note that the more dimensions you group by, the larger the data set
being returned will be. Larger data sets may take substantially longer
to process, so be sure to group by only those dimensions you require.

``` pre
$ cat geo_analytics

{
    "report":{
        "report_type":"geo_analytics",
        "timezone":"EST5EDT",
        "report_interval":"last_7_days",
        "groups":[
            "advertiser_id"
        ],
        "columns":[
            "advertiser_id",
            "imps",
            "clicks",
            "click_thru_pct",
            "total_convs",
            "convs_rate",
            "booked_revenue",
            "cost",
            "profit",
            "cpm"
        ],
        "orders":[
            "advertiser_id",
            "imps",
            "clicks",
            "click_thru_pct",
            "total_convs",
            "convs_rate",
            "booked_revenue",
            "cost",
            "profit",
            "cpm"
        ]
    }
}
```

**`POST` the request to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>**

``` pre
$ curl -b cookies -X POST -d @geo_analytics 'https://api.appnexus.com/report'
{
  "response": {
    "status": "OK",
    "report_id": "58e7a1db8d0ccf222e21ffc7c3cd01fb"
  }
}
```

**`GET` the report status from the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call periodically until the
`execution_status` is `"ready"`. Then use the **report-download**
service to save the report data to a file as shown in the next step.

``` pre
$ curl -b cookies "https://api.appnexus.com/report?id=58e7a1db8d0ccf222e21ffc7c3cd01fb"

{
    "response": {
        
        "execution_status": "ready",
        "report": {
            "url": "https://hb.nym1.sand-08.adnxs.net/report-download?id=58e7a1db8d0ccf222e21ffc7c3cd01fb",
            "query_time": "0",
            "finished_on": "2013-02-19 18:28:51",
            "started_on": "2013-02-19 18:28:48",
            "entity_id": "0",
            "user_id": "2027",
            "report_size": "93",
            "row_count": "0",
            "header_info": "Report ID:,58e7a1db8d0ccf222e21ffc7c3cd01fb
Run at:,2013-02-19 18:28:46
Start date:,2013-02-12 05:00:00
End date:,2013-02-19 05:00:00
Timezone:,EST5EDT
User:,Ursula Nimbus (2027)
",
            "json_request": "{"report":{"report_type":"geo_analytics","timezone":"EST5EDT","report_interval":"last_7_days","groups":["advertiser_id"],"columns":["advertiser_id","imps","clicks","click_thru_pct","total_convs","convs_rate","booked_revenue","cost","profit","cpm"],"pivot_report":false,"fixed_columns":[],"orders":["advertiser_id","imps","clicks","click_thru_pct","total_convs","convs_rate","booked_revenue","cost","profit","cpm"],"name":" Report - 02\/19\/2013","ui_columns":["advertiser_id","imps","clicks","click_thru_pct","total_convs","convs_rate","booked_revenue","cost","profit","cpm"]}}",
            "fact_cache_error": "did not find any cache table for 30,31,36,66,32,34",
            "fact_cache_hit": false,
            "cache_hit": false,
            "created_on": "2013-02-19 18:28:46",
            "name": " Report - 02/19/2013"
        },
        "status": "OK"
    }
}
```

**`GET` the report data from the Report Download Service**

Use the **report-download** service to download your data to a file. The
service name and report ID can be extracted from the `url` field in the
response.

``` pre
$ curl -b cookies "https://api.appnexus.com/report-download?id=58e7a1ddb80ccf222e21ffc7c3cd01fb" > /tmp/geo_analytics.csv
```





Note: There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










