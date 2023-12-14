---
Title : Buyer Geo Analytics Report
Description : The **Buyer Geo Analytics** report allows you to break down delivery and
ms.date: 10/28/2023
performance by geographic area. Sample use cases for this report
---


# Buyer Geo Analytics Report





The **Buyer Geo Analytics** report allows you to break down delivery and
performance by geographic area. Sample use cases for this report
include:

- Buyers who would like to optimize their ad campaigns
- Buyers who need to report to their client advertisers or agencies on
  line item or campaign delivery by geo

This report can break down performance along the following geographic
boundaries:

- **Country**: The user's <a
  href="xandr-api/country-service.md"
  class="xref" target="_blank">Country</a>.
- **Region/State**: The user's <a
  href="xandr-api/region-service.md"
  class="xref" target="_blank">Region</a>, e.g., Baja California or
  California.
- **Metro Code**: The user's <a
  href="xandr-api/designated-market-area-service.md"
  class="xref" target="_blank">Metro Code</a>.
- **Political Districts**: The user's <a
  href="xandr-api/political-district-service.md"
  class="xref" target="_blank">Political District</a> (US Only)

For more information on the available data fields and their definitions,
see <a href="buyer-geo-analytics-report.md#ID-00009687__p_enn_v5t_1kb"
class="xref">Dimensions</a> and
<a href="buyer-geo-analytics-report.md#ID-00009687__p_dpd_w5t_1kb"
class="xref">Metrics</a> below.



<b>Important:</b> There is a limitation to how
accurate the geo data is, particularly on impressions bought from
external supply partners. Since some external supply partners (such as
Google Ad Manager) truncate the last octet of the user's IP, we have a
less precise IP to use when performing an IP geo-lookup. As a result,
our geo data may not always be completely accurate at granular levels
(such as region and metro code) for impressions bought from these supply
sources.







## Time Frame

All dates and times are given in UTC.

**Time Ranges**

Time ranges define the time period of the data extracted for the report.
The following is a complete list of time ranges available for reports.

However, all time ranges are not available for every report.



- Custom
- Current Hour
- Last Available Day
- Last Hour
- Today
- Last 24 Hours
- Last 48 Hours
- Yesterday
- Last 2 Days
- Last 7 Days
- Last 7 Available Days
- Last 14 Days
- Last 14 Available Days
- Last 30 Days
- Last 30 Available Days
- Last Month
- Last 100 Days
- Last 365 Days
- Quarter to Date
- Month to Date
- Month to Yesterday
- Lifetime



**Intervals**

Intervals determine how your data is grouped together into rows in the
report response. The following is a complete list of intervals available
for reports. However, all intervals are not available for every report.



- Hourly: Data is grouped into rows by the hour.
- Daily: Data is grouped into rows by the day.
- Monthly: Data is grouped into rows by the month.
- Cumulative: Data is grouped together in one figure, covering the
  entire selected time range.







## Data Retention Period

This report's data is retained for 45 days. For more information about
how quickly reporting data is processed, see
<a href="availability-of-reporting-data.md" class="xref">Availability
of Reporting Data</a>.




## Dimensions



<b>Important:</b> The **Filter?** column below
shows whether a dimension can be used as a filter as well as being used
to group by.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00009687__p_enn_v5t_1kb__entry__1" class="entry">Column</th>
<th id="ID-00009687__p_enn_v5t_1kb__entry__2" class="entry">Filter?</th>
<th id="ID-00009687__p_enn_v5t_1kb__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__1">Advertiser</td>
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__2">Yes</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
advertiser name and ID, in the format "Great Advertiser (456)".</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__1">Insertion Order</td>
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__2">Yes</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
insertion order name and ID, in the format "Midwest Winter Getaways
(789)".</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__1">Line
Item</td>
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__2">Yes</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
line item name and ID, in the format "Kansas City Winter Commuters
(314)".</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__1">Campaign</td>
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__2">Yes</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
campaign name and ID associated with the auction, in the format "South
Texas Ford Drivers (123)". (Does not apply to all advertisers.)</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__1">Split</td>
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__2">Yes</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
name and ID of the split that purchased the impressions in this data
set. Splits are only applicable to augmented line items. For any rows
with a campaign name, the <strong>Split</strong> column (if included)
will be null.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__1">City</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__2">No</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
city in which the user is located.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__1">Postal
Code</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__2">No</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
postal (zip) code in which the user is located.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__1">Country</td>
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__2">Yes</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
country of the user's location, both name and code, in the format
"France (FR)". The string "250" can appear in cases where we don't know
the country or if the country doesn't map correctly to a location in our
database.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__1">Region</td>
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__2">Yes</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
region or state name and country code of the user's location, in the
format "Baden-Wurttemberg (DE)". The string "4192" can appear in cases
where we don't know the region/state or if the region/state doesn't map
correctly to a location in our database.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__1">Metro
Code</td>
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__2">Yes</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
name and ID of the metro code of the user's location, in the format "New
York NY (501)". The string "unknown values (-1)" can appear in cases
where we don't know the metro code or if the metro code doesn't map
correctly to a location in our database.

<b>Note:</b> Our reporting derives metro codes
from the city logged for the auction. However, our geo provider is
sometimes unable to determine a city from the IP address associated with
the impression, even when the metro code <strong>is</strong> determined.
Therefore, there are cases where a line item or
campaign targeting a specific metro code has impressions in
reporting showing a metro code of 1.
</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__1">Campaign Code</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__2">No</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
custom code for the campaign.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__1">State
House District</td>
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__2">Yes</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
State House District of the user's location</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__1">State
Senate District</td>
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__2">Yes</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
State Senate District of the user's location</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__1">Congressional
District</td>
<td class="entry"
headers="ID-00009687__p_enn_v5t_1kb__entry__2">Yes</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
Congressional District of the user's location</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__1">Buying
Currency</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__2">No</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
transaction currency used by the buyer to purchase this impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__1">UK
Constituent Country</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__2">No</td>
<td class="entry" headers="ID-00009687__p_enn_v5t_1kb__entry__3">The
Constituent Country of the user's location. This is applicable for
United Kingdom. Possible values include:
<ul>
<li>England</li>
<li>Scotland</li>
<li>Wales</li>
<li>Northern Ireland</li>
</ul></td>
</tr>
</tbody>
</table>







<b>Note:</b> In addition, you can also filter
on:

- one or more conversion pixels using the **Conversion Pixel** filter.
- a particular number of impressions using the **Minimum Impressions**
  filter.






## Metrics



<b>Note:</b> When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00009687__p_dpd_w5t_1kb__entry__1" class="entry">Column</th>
<th id="ID-00009687__p_dpd_w5t_1kb__entry__2" class="entry">Type</th>
<th id="ID-00009687__p_dpd_w5t_1kb__entry__3" class="entry">Formula</th>
<th id="ID-00009687__p_dpd_w5t_1kb__entry__4"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Imps</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">int</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__3">Imps</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total number of impressions (served and resold).</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Clicks</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">int</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__3">Clicks</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total number of clicks across all impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">CTR
%</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">double</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">(Clicks
/ Imps) x 100</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
rate of clicks to impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Total
Conversions</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">int</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">Total
Convs</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total number of post-view and post-click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Conversion Rate</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">double</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">Total
Convs / Imps</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
ratio of conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Booked
Revenue</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">Booked
Revenue</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total revenue booked through direct advertisers (line item). This value
will be displayed in USD as well as potentially the Buying Currency (if
you've selected that dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Post
View Conversions</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">int</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">Post
View Convs</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total number of recorded post-view conversions. This value will be
displayed in USD as well as potentially the Buying Currency (if you've
selected that dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Post
Click Conversions</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">int</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">Post
Click Convs</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total number of recorded post-click conversions. This value will be
displayed in USD as well as potentially the Buying Currency (if you've
selected that dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Revenue
eCPM</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total revenue, expressed as eCPM. For definitions of eCPM and other
terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>. This value will be displayed
in USD as well as potentially the Buying Currency (if you've selected
that dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Revenue
eCPM</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total revenue, expressed as eCPM. For definitions of eCPM and other
terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>. This value will be displayed
in USD as well as potentially the Buying Currency (if you've selected
that dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Revenue
eCPC</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total revenue, expressed as eCPC. For definitions of eCPC and other
terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>. This value will be displayed
in USD as well as potentially the Buying Currency (if you've selected
that dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Revenue
eCPA</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total revenue, expressed as eCPA. For definitions of eCPA and other
terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>. This value will be displayed
in USD as well as potentially the Buying Currency (if you've selected
that dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Cost
eCPC</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
effective cost per click. For definitions of eCPC and other terms, see
the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>. This value will be displayed
in USD as well as potentially the Buying Currency (if you've selected
that dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Cost
eCPA</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
effective cost per acquisition (conversion). For definitions of eCPA and
other terms, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>. This value will be displayed
in USD as well as potentially the Buying Currency (if you've selected
that dimension).</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Cost</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__3">Cost</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total cost of the inventory purchased. This value will be displayed in
USD as well as potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Profit</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">Booked
Revenue - Cost</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
booked revenue minus total cost.. This value will be displayed in USD as
well as potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__1">CPM</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__3">CPM</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
cost per one thousand impressions. This value will be displayed in USD
as well as potentially the Buying Currency (if you've selected that
dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Total
Cost</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">Media
Cost + Data Costs + Partner Fees + Commissions + Serving Fees +
Publisher Revenue</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total amount of costs accrued over the reported period of time. This
generally includes two types of costs, budgeted costs (media cost, data
cost, partner fees, serving fees, commissions) and publisher revenue if
you track publisher payouts on the platform.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Total
Cost eCPM</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">(Total
Cost/Imps) * 1,000</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total cost per 1,000 imps.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Total
Cost eCPC</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">Total
Cost/Clicks</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total cost per click.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Total
Cost eCPA</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">Total
Cost/Conversions</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total cost per conversion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Profit
eCPM</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__3">((Booked Revenue - Total
Cost)/Imps) * 1,000</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">Profit
per thousand impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Profit
eCPC</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">(Booked
Revenue - Total Cost)/Click</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">Profit
per click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Profit
eCPA</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">(Booked
Revenue - Total Cost)/Conversion</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">Profit
per conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Profit
Margin</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">(Booked
Revenue - Total Cost)/Booked Revenue</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">Buyer
profit margin.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Video
Skips</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">int</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total number of times a user skipped the video. Use this metric for
reporting when buying skippable inventory.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Video
Starts</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">int</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total number of times the first segment of the video creative was
downloaded and started.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">25%
Video Complete</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">int</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total number of times the video creatives completed 25% of the entire
duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">50%
Video Complete</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">int</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total number of times the video creatives completed 50% of the entire
duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">75%
Video Complete</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">int</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total number of times the video creatives completed 75% of the entire
duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Video
Completions</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">int</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total number of times the video creatives played for the entire
duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Videos
Served</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">int</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total number of video responses served to the player. An ad response
occurs when the VAST document (XML) is served in response to a request.
An ad response doesn't necessarily indicate a successful impression. For
an impression, the first frame of the video must be served.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Video
Errors</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">int</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
total number of times a video error occurred.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Revenue
Per Video Complete</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
revenue per video completion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Cost
Per Video Complete</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">money</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
cost per video completion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Video
Completion Rate</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">double</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3">(Video
Completions/Total Impressions) x 100</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
ratio of video completions to impressions, expressed as a percentage
.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Video
Start Rate</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">double</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
percentage of times the first segment of the video creative was
downloaded and started.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Video
Skip Rate</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">double</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
percentage of times the user opted to skip the video.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__1">Audience Imps</td>
<td class="entry"
headers="ID-00009687__p_dpd_w5t_1kb__entry__2">double</td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__3"></td>
<td class="entry" headers="ID-00009687__p_dpd_w5t_1kb__entry__4">The
number of impressions served to your desired demographic group.</td>
</tr>
</tbody>
</table>





## How To Run Your Report

Follow these steps to run your report.

1.  Select Reporting from the
    appropriate top menu (depending on how your account has been
    configured).
    1.  Or, from the Publishers top menu, click on
        Prebid
        Server Premium \>
        Analytics \>
        Prebid Server Analytics
2.  Select the relevant report from the list. The
    Report screen shows the available
    filters, dimensions, and delivery options for the report. The
    selections you make here will determine what report data is
    delivered to you, and how.
    

    <b>Important:</b> For an explanation of
    how grouping and filtering work, see
    <a href="dimensions-metrics-filtering-and-grouping.md"
    class="xref">Dimensions, Metrics, Filtering, and Grouping</a>.

    
3.  Select the relevant filters to limit the data displayed to just the
    information you want. For example, rather than running a report that
    shows impressions for all inventory sources, you may want to list
    results for just a select few. When you select a filter (by clicking
    Edit), a selection panel appears.
    Select items in the **Available** list (left), then click
    Add to include them in the
    **Chosen** list (right).
4.  Group by Dimension. Grouping allows you to display rows of data in
    the order you prefer.
    

    <b>Warning:</b> The more dimensions you
    group by, the larger the data set that is returned. Larger data sets
    can take substantially longer to process. Be sure to group using
    only the dimensions you need.

    
5.  Choose a delivery option. Once you've selected your filters and
    grouped by your chosen dimensions, you need to choose a delivery
    method. Available delivery methods include:
    - **Run now, show results in screen**: For smaller amounts of data,
      you may want to view the report as soon as possible in your
      browser. You can download the report in XLSX, CSV, Excel/TSV and
      JSON format. However, there is a limit of 100,000 rows per report
      when downloading as XLSX and Excel file.
    - **Run in background, notify me when results are ready to view**: A
      popup notification will let you know when the report is ready to
      view or download.
      

      <b>Tip:</b> The maximum size of the
      report that can be downloaded from the UI is 100 MB. Also, there
      is a limit of 100,000 rows per report when downloading as XLSX and
      Excel file. If the size of the report is more than that, you can
      try to download it using the <a
      href="xandr-api/report-service.md"
      class="xref" target="_blank">API</a> for that reporting service
      (The limit here is 10 million rows).

      
    - <span id="ID-00009687__d10e107">**Export, send results via
      email**: Run the report in the background and email the results to
      one or more email addresses.
    - **Save as report template**: Save your selected report settings so
      that you can run this report again in the future. You can name
      this template using the text entry field under
      Name this report (its checkbox
      is auto-selected when you choose this option). A saved report can
      be rerun from the Your Reports
      screen.
    - **Add to scheduled reports**: Run this report automatically at
      specified times and have it sent to one or more email addresses.
    - **Name this report**: Give this report with its current settings a
      name for future reference.
6.  <span id="ID-00009687__d10e136">Click Run
    report to send your report request.





## Related Topics

- <a href="reporting-guide.md" class="xref">Reporting Guide</a>
- <a href="network-reporting.md" class="xref">Network Reporting</a>
- <a href="advertiser-reporting.md" class="xref">Advertiser
  Reporting</a>
- <a href="availability-of-reporting-data.md" class="xref">Availability
  of Reporting Data</a>






