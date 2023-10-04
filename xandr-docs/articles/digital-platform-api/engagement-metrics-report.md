---
Title : Engagement Metrics Report
Description : The Engagement Metrics report provides information about ad viewability,
as well as indicating any problems that might be preventing Xandr from
measuring an impression's viewability. This report is only available for
---


# Engagement Metrics Report





The Engagement Metrics report provides information about ad viewability,
as well as indicating any problems that might be preventing Xandr from
measuring an impression's viewability. This report is only available for
Xandr Publisher Adserver customers.





## Time Frame

All dates and times are given in UTC.

**Time Ranges**

Time ranges define the time period of the data extracted for the report.
The following is a complete list of time ranges available for reports.

However, all time ranges are not available for every report.

- custom
- current_hour
- last_available_day
- last_hour
- today
- last_24_hours
- last_48_hours
- yesterday
- last_2_days
- last_7_days
- last_7_available_days
- last_14_days
- last_14_available_days
- last_30_days
- last_30_available_days
- last_month
- last_100_days
- last_365_days
- quarter_to_date
- month_to_date
- month_to_yesterday
- lifetime

**Intervals**

Intervals determine how your data is grouped together into rows in the
report response. The following is a complete list of intervals available
for reports. However, all intervals are not available for every report.

- Hourly: Data is grouped into rows by the hour.
- Daily: Data is grouped into rows by the day.
- Monthly: Data is grouped into rows by the month.
- Cumulative: Data is grouped together in one figure, covering the
  entire selected time range.



Note: For more information about how
quickly report data is processed, see <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/availability-of-reporting-data.html"
class="xref" target="_blank">Availability of Reporting Data</a>







## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="engagement-metrics-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="engagement-metrics-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="engagement-metrics-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="engagement-metrics-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="engagement-metrics-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"><code
class="ph codeph">"Verizon Wireless (789)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">The advertiser whose
creative is served on impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"><code
class="ph codeph">"Publisher XYZ 347967"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">The publisher on whose
inventory this impression has occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">placement</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"><code
class="ph codeph">"FP 728x90 (567)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">A placement is an open
slot on a publisher website where an advertiser creative with matching
specifications can serve.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"><code
class="ph codeph">"InsertionOrderABC648359"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">The insertion order under
which this impression was purchased. The buy-side hierarchy is Insertion
Order &gt; Line Item &gt; Campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"><code
class="ph codeph">"LineItemDEF947764"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">The line item under which
this impression was purchased. The buy-side hierarchy is Line Item &gt;
Campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"><code
class="ph codeph">Campaign</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">The campaign which
purchased this impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">creative</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"><code
class="ph codeph">"Q1 2010 - 728x90 (554)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">The creative served for
the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"><code
class="ph codeph">"Banner", "Pop", "Interstitial"</code>, <code
class="ph codeph">"Video"</code>, <code class="ph codeph">"Text"</code>,
<code class="ph codeph">"Expandable"</code>, <code
class="ph codeph">"Skin"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">The media type associated
with the creative that served on this impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">impression_type</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"><code
class="ph codeph">"External Impression"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">See Impression Types below
for definitions of the different types of impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">device_type</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"><code
class="ph codeph">"Mobile Phones"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">The type of device on
which the impression was served. Possible values:
<ul>
<li><code class="ph codeph">Desktops &amp; Laptops</code></li>
<li><code class="ph codeph">Tablets</code></li>
<li><code class="ph codeph">Mobile Phones</code></li>
<li><code class="ph codeph">TV</code></li>
<li><code class="ph codeph">Game Consoles</code></li>
<li><code class="ph codeph">Set Top Box</code></li>
<li><code class="ph codeph">Media Players</code></li>
<li><code class="ph codeph">Other Devices</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">operating_system_family</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"><code
class="ph codeph">"Android"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">The name of the operating
system family associated with the device the impression was served
on.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">buyer</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">The name of the buyer
associate with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">seller</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">The name of the seller
associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__1">minimum_impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__5">The minimum number of
impressions you'd like to filter by. For example, you may want to see
only impressions and unique from members whose volume exceeds 100,000
impressions over the selected time range.</td>
</tr>
</tbody>
</table>





## Metrics



Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="engagement-metrics-report__entry__76"
class="entry colsep-1 rowsep-1">Column</th>
<th id="engagement-metrics-report__entry__77"
class="entry colsep-1 rowsep-1">Type</th>
<th id="engagement-metrics-report__entry__78"
class="entry colsep-1 rowsep-1">Example</th>
<th id="engagement-metrics-report__entry__79"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="engagement-metrics-report__entry__80"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">75000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The total number of
impressions (served and resold).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">measurable_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">6500</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79"></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">viewed_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">1872</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">viewed_impsview_non_measurable_reason</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of measured
impressions that were viewable according to the IAB Viewability
definition, which states that an impression is viewable if 50% of the
pixels are in view for 1 continuous second.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">viewability_measurement_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">double</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">45%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">View Measured Imps /
Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">viewability_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">double</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">58%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">Viewed Imps / View
Measured Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">in_view_duration</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">time</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">35</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The <code
class="ph codeph">average in_view duration</code> (in seconds) measured
for which impressions met the IAB Viewability definition.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_measured_imps
(unsupported_cross-domain_iframe)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">115</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not measured because the creative cannot be measured because the ad was
served in a cross-domain iframe and the browser was not supported. All
modern browsers are supported but certain old versions may not be
supported.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_measured_imps
(creative_not_found)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">85</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not measured because the creative could not be found by the viewability
script on the page. For example, this could occur if the div is being
replaced or the creative isn't located within five seconds.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_measured_imps
(script_not_initialized)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">35</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not measured because the measurement script did not initialize. This
could occur for very short sessions when a user leaves a page before the
other component (like the OS in mobile apps) can provide feedback on
viewability.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_measured_imps
(no_script_callback)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">200</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not measured because no callback was received from the measurement
script. For example, this could occur if the script hasn't
executed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_measured_imps
(unsupported_in-app_SDK)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">175</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not measured because the in-app SDK for the specific inventory is not
supported. Please visit the <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/viewability-faq.html"
class="xref" target="_blank">Viewability FAQ</a> to learn about
supported in-app SDKs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_measured_imps
(unsupported_native_integration)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">200</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79"></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not measured because the specific type of native inventory is not
supported. Please visit the <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/viewability-faq.html"
class="xref" target="_blank">Viewability FAQ</a> to learn about
supported native supply.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_measured_imps
(unsupported_media_type)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">135</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not measured because the media type is not supported. Please visit the
<a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/viewability-faq.html"
class="xref" target="_blank">Viewability FAQ</a> to learn about
supported media types.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_measured_imps
(unsupported_supply_type)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">120</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not measured because the supply type is not supported. Please visit the
<a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/viewability-faq.html"
class="xref" target="_blank">Viewability FAQ</a> to learn about
supported supply types.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_measured_imps
(unsupported_impression_type)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">145</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not measured because the imp type is not supported. Please visit the <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/viewability-faq.html"
class="xref" target="_blank">Viewability FAQ</a> to learn about
supported impression types.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_measured_imps
(unknown)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">115</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not measured because of an unknown reason.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_viewed_imps
(creative_not_loaded)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">125</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not viewed because the creative did not load before the web page was
closed. For example, when a user leaves the web page within one second
of the creative being loaded.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_viewed_imps
(not_visible_per_SDK)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">80</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not viewed because in-app SDK responded with not visible signal. For
example, the Open Measurement Software Development Kit (OM SDK) reported
the ad as non-viewable.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_viewed_imps
(hidden_browser)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">60</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not viewed because either the browser was not in focus, or the browser
tab was hidden.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_viewed_imps
(creative_hidden_by _css/html)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">125</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not viewed because the creative was explicitly hidden by CSS or HTML on
the webpage. For more details, check your ads' recent style
changes.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_viewed_imps
(out_of_viewport)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">95</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not viewed because the creative was outside the visible area of a
webpage on a display device. Ensure that the creative is visible and not
at the bottom of the page.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_viewed_imps
(insufficient_surface_area)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">100</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not viewed because the surface threshold based on IAB definition was not
met.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_viewed_imps
(insufficient_duration)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">50</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not viewed because time threshold based on IAB definition was not
met.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">not_viewed_imps
(unknown)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">int</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">75</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The number of impressions
not viewed because of an unknown reason.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">in_view_duration
(greater_than_0%_pixels)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">time</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The average duration (in
seconds) for which impressions displaying greater than 0% of the pixels
in the creative remained in view.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">in_view_duration
(greater_than_25%_pixels)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">time</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">15</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The average duration (in
seconds) for which impressions displaying greater than 25% of the pixels
in the creative remained in view.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">in_view_duration
(greater_than_50%_pixels)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">time</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">35</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The average duration (in
seconds) for which impressions displaying greater than 50% of the pixels
in the creative remained in view.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">in_view_duration
(greater_than_75%_pixels)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">time</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">20</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The average duration (in
seconds) for which impressions displaying greater than 75% of the pixels
in the creative remained in view.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__76">in_view_duration
(equal_to_100%_pixels)</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__77">time</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__78"><code
class="ph codeph">40</code></td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__79">not applicable</td>
<td class="entry colsep-1 rowsep-1"
headers="engagement-metrics-report__entry__80">The average duration (in
seconds) for which impressions displaying 100% of the pixels in the
creative remained in view.</td>
</tr>
</tbody>
</table>





## Example

**Create the JSON-formatted report request**

The JSON file should include the `report_type` of
`"engagement_metrics_network"`, as well as the columns (dimensions and
metrics) and `report_interval` that you want to retrieve. You can also
filter for specific dimensions, define granularity (`year`, `month`,
`day`), and specify the format in which the data should be returned
(`"csv"`, `"excel"`, or `"html"`). For a full explanation of fields that
can be included in the JSON file, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat engagement_metrics_network
  {
    "report":
    {
        "report_type":"engagement_metrics_network",
        "columns":[
            "advertiser",
            "insertion_order",
            "creative",
            "device_type",
            "imps",
            "in_view_duration",
            "viewability_rate"
        ],
        "report_interval":"last_7_days",
        "format":"csv"
    }
}
```

**`POST` the request to the Reporting Service**

``` pre
$ curl -b cookies -X POST -d @engagement_metrics_network 'https://api.appnexus.com/report'
{
   "response":{
      "status":"OK",
      "report_id":"097f59fc3ab7d02c5d60db42081d9b69"
   }
}
```

**`GET` the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies 'https://api.appnexus.com/report?id=097f59fc3ab7d02c5d60db42081d9b69'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:19:53",
         "json_request":"{\"report\":{\"report_type\":\"engagement_metrics_network\",\"columns\":[\"advertiser\",
            \"insertion_order\",\"creative\",\"device_type\",\"imps\",\"in_view_duration\",\"viewability_rate\"],
            \"report_interval\":\"last_7_days\"}}",
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



Note: If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/engagement_metrics_network.csv
```



Note: There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.








