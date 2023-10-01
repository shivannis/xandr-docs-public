---
Title : Seller CMP Analytics Report
Description : The Seller CMP Analytics Report provides insight into the number,
validity, and content of the IAB Transparency & Consent Framework (IAB
TCF) strings on seller ad requests to our endpoints. This report enables
---


# Seller CMP Analytics Report





The Seller CMP Analytics Report provides insight into the number,
validity, and content of the IAB Transparency & Consent Framework (IAB
TCF) strings on seller ad requests to our endpoints. This report enables
sellers to answer questions like:

- How many ad requests contained TCF strings encoded according to the
  TCF V1 and V2 specifications?

- How many ad requests contained TCF strings that were not encoded
  properly and therefore invalid or malformed?

- Is my CMP (Consent Management Platform) correctly passing permission
  information?

This report does not prove or disprove compliance with any laws or
regulations. The language "GDPR applied" for this report means applied
TCF logic. We support the IAB TCF and this report enables sellers using
the TCF to confirm that TCF signals are communicated properly.

For instructions on retrieving a report, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> or the <a
href="seller-cmp-analytics-report.html#seller-cmp-analytics-report__seller-cmp-analytics-report-example"
class="xref">example</a> below.

Sellers wishing to have all of their ad requests treated according to
the IAB TCF standards and policies can force application of TCF logic by
passing 'gdpr=1' according to the <a
href="https://iabtechlab.com/wp-content/uploads/2018/02/OpenRTB_Advisory_GDPR_2018-02.pdf"
class="xref" target="_blank">IAB OpenRTB Spec</a>. If the GDPR parameter
is omitted but the request includes a TCF string according to the IAB
OpenRTB specification, the auction will also apply TCF logic.

A high number of present but malformed strings for a given publisher
usually means that the publisher's CMP is not creating or encoding the
strings according to TCF specifications, and therefore are unreadable to
vendors. Unreadable strings, because they do not provide clear signals
to vendors, are treated as no permission for any vendor, and should be
avoided.

For more information about the IAB TCF, please refer to the following
resources:

- <a href="https://iabeurope.eu/category/policy/tcf-updates/" class="xref"
  target="_blank">IAB Europe's TCF Policy &amp; Governance</a>

- <a
  href="https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework"
  class="xref" target="_blank">IAB Techlab TCF v1 and v2 Technical Spec
  &amp; Implementation Guides</a>

- <a
  href="https://iabtechlab.com/wp-content/uploads/2018/02/OpenRTB_Advisory_GDPR_2018-02.pdf"
  class="xref" target="_blank">IAB Techlab TCF RTB Spec</a>





## Time Frame



The `report_interval` field in the JSON request can be set to one of the
following:

- custom
- last_7_days
- month_to_date
- last_30_days







Note: To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.







<div id="seller-cmp-analytics-report__section-669c07f1-17a2-4e67-b747-fb46995769af"
>

**Data Retention Period**

Data retention period for this report is 30 days.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-cmp-analytics-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-cmp-analytics-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-cmp-analytics-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="seller-cmp-analytics-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="seller-cmp-analytics-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__5">The month in which the
impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__5">The day on which the
impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__4"><code
class="ph codeph">456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__5">The ID of the selling
member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__4"><code
class="ph codeph">555</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__5">The ID of the publisher
associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__4"><code
class="ph codeph">"PublisherA"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__5">The name of the
publisher associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__4"><code
class="ph codeph">"PublisherA (555)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__5">The name and ID of the
publisher associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__1">call_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__4"><code
class="ph codeph">"/openrtb2"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__5">The type of the ad call
request.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__1">url</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__4"><code
class="ph codeph">"itunes.apple.com/us/app/weather-crave/id324565014"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__5">The URL of the incoming
impression.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-cmp-analytics-report__entry__46"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-cmp-analytics-report__entry__47"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-cmp-analytics-report__entry__48"
class="entry colsep-1 rowsep-1">Example</th>
<th id="seller-cmp-analytics-report__entry__49"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="seller-cmp-analytics-report__entry__50"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">ad_requests_gdpr_country</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">10000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">ad_requests_gdpr_country</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The number of incoming
ad requests for which the impression originated from a GDPR-implementing
country, or the impression contained a consent string.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">ad_requests_gdpr_applied</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">970</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">ad_requests_gdpr_applied</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The number of incoming
ad requests for which TCF logic was applied. We apply TCF logic if the
IAB OpenRTB Specified flag <code class="ph codeph">gdpr</code> is set to
1 or if the <code class="ph codeph">gdpr</code> flag is omitted but the
request includes a <code class="ph codeph">gdpr_consent</code> field. If
your digital properties intend to use TCF for all GDPR-covered
inventory, this number should be close to <code
class="ph codeph">num_ad_requests_gdpr_country</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">ad_requests_gdpr_applied_malformed_consent_string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">876</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">ad_requests_gdpr_applied_malformed_consent_string</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The number of incoming
ad requests for which GDPR is applied, and the consent string is
non-blank but malformed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">ad_requests_gdpr_applied_blank_consent_string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">988</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">ad_requests_gdpr_applied_blank_consent_string</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The number of incoming
ad requests for which GDPR is applied, and the consent string is
blank.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">ad_requests_gdpr_applied_invalid_consent_string_seller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">666</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">ad_requests_gdpr_applied_invalid_consent_string_seller_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The number of ad
requests for which seller revenue attributed for the incoming
impressions, GDPR is applied and the consent string is either blank or
malformed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">ad_requests_gdpr_applied_valid_consent_string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">863</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">ad_requests_gdpr_applied_valid_consent_string</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The number of incoming
ad requests for which GDPR is applied, and the consent string is
non-null and valid.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">ad_requests_GDPR_applied_valid_consent_string_valid_cmp</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">564</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">ad_requests_GDPR_applied_valid_consent_string_valid_cmp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The number of incoming
ad requests for which GDPR is applied, the consent string is valid, and
the CMP used to generate the impression is registered with the IAB, as
seen here: <a href="https://iabeurope.eu/cmp-list/" class="xref"
target="_blank">https://advertisingconsent.eu/cmp-list/</a> .</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">ad_requests_gdpr_applied_valid_consent_string_invalid_cmp</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">787</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">ad_requests_gdpr_applied_valid_consent_string_invalid_cmp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The number of incoming
ad requests for which GDPR is applied, the consent string is valid, and
the CMP used to generate the impression is <em>not</em> registered with
the IAB, as seen here: <a href="https://iabeurope.eu/cmp-list/"
class="xref"
target="_blank">https://advertisingconsent.eu/cmp-list/</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">ad_requests_gdpr_applied_valid_consent_string_tcf_version_1</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">986</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">ad_requests_gdpr_applied_valid_consent_string_tcf_version_1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The number of incoming
ad requests for which GDPR is applied, the consent string is valid and
encoded according to TCF v1.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">ad_requests_gdpr_applied_valid_consent_string_tcf_version_2</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">600</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">ad_requests_gdpr_applied_valid_consent_string_tcf_version_2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The number of incoming
ad requests for which GDPR is applied, the consent string is valid and
encoded according to TCF v2.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">ad_requests_gdpr_applied_valid_consent_string_<span
class="ph">xandr_consented</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">998</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">ad_requests_gdpr_applied_valid_consent_string_</code><span
class="ph"><code class="ph codeph">xandr</code><code
class="ph codeph">_consented</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The number of incoming
ad requests for which GDPR is applied, and <span
class="ph">Xandr’s vendor bit (#32) is a 1 in the string for TCF
v1 encoded strings</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">pct_ad_requests_gdpr_country_gdpr_applied</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">0.87</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">pct_ad_requests_gdpr_country_gdpr_applied</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The percentage of
incoming ad requests from GDPR-implementing countries for which GDPR is
applied.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">pct_ad_requests_gdpr_applied_malformed_consent_string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">0.77</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">pct_ad_requests_gdpr_applied_malformed_consent_string</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The percentage of
incoming ad requests for which GDPR is applied, and the consent string
is non-blank but malformed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">pct_ad_requests_gdpr_applied_blank_consent_string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">0.83</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">pct_ad_requests_gdpr_applied_blank_consent_string</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The percentage of
incoming ad requests for which GDPR is applied, and the consent string
is blank.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">pct_ad_requests_gdpr_applied_valid_consent_string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">0.91</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">pct_ad_requests_gdpr_applied_valid_consent_string</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The percentage of
incoming ad requests for which GDPR is applied, and the consent string
is non-null and valid.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">pct_ad_requests_gdpr_applied_valid_consent_string_valid_cmp</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">0.77</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">pct_ad_requests_gdpr_applied_valid_consent_string_valid_cmp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The percentage of
incoming ad requests for which GDPR is applied, the consent string is
valid, and the CMP used to generate the impression is registered with
the IAB, as seen here: <a href="https://iabeurope.eu/cmp-list/"
class="xref" target="_blank">https://advertisingconsent.eu/cmp-list/</a>
.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">pct_ad_requests_gdpr_applied_valid_consent_string_invalid_cmp</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">0.76</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">pct_ad_requests_gdpr_applied_valid_consent_string_invalid_cmp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The percentage of
incoming ad requests for which GDPR is applied, the consent string is
valid, and the CMP used to generate the impression is NOT registered
with the IAB, as seen here: <a href="https://iabeurope.eu/cmp-list/"
class="xref" target="_blank">https://advertisingconsent.eu/cmp-list/</a>
.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">pct_ad_requests_gdpr_applied_valid_consent_string_tcf_version_1</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">0.65</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">pct_ad_requests_gdpr_applied_valid_consent_string_tcf_version_1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The percentage of
incoming ad requests for which GDPR is applied, the consent string is
valid and encoded according to TCF v1.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">pct_ad_requests_gdpr_applied_valid_consent_string_tcf_version_2</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">0.55</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">pct_ad_requests_gdpr_applied_valid_consent_string_tcf_version_2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The percentage of
incoming ad requests for which GDPR is applied, the consent string is
valid and encoded according to TCF v2</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__46">pct_ad_requests_gdpr_applied_valid_consent_string_<span
class="ph">xandr_consented</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__47">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__48"><code
class="ph codeph">0.73</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__49"><code
class="ph codeph">pct_ad_requests_gdpr_applied_valid_consent_string_</code><span
class="ph"><code class="ph codeph">xandr</code><code
class="ph codeph">_consented</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-cmp-analytics-report__entry__50">The percentage of
incoming ad requests for which GDPR is applied, and <span
class="ph">Xandr’s vendor bit (#32) is a 1 in the string for TCF
v1 encoded strings.</td>
</tr>
</tbody>
</table>





## Example

**Create the JSON report request**

The JSON file should include the `report_type` of `"cmp_analytics"`, as
well as the columns (dimensions and metrics) and `report_interval` that
you want to retrieve. You can also filter for specific dimensions,
define granularity (month, day), and specify the format in which the
data should be returned (csv, excel, or html). For a full explanation of
fields that can be included in the JSON file, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat cmp_analytics

{"report":
    {
        "report_type":"cmp_analytics",
        "columns":[
            "day",
            "seller_member_id",
            "call_type",
            "url",
            "ad_requests_gdpr_country",
            "ad_requests_gdpr_applied_valid_consent_string",
            "ad_requests_gdpr_applied_blank_consent_string",
            "ad_requests_gdpr_applied_valid_consent_string_tcf_version_2",
            "pct_ad_requests_gdpr_country_gdpr_applied",
            "pct_ad_requests_gdpr_applied_valid_consent_string",
            "pct_ad_requests_gdpr_applied_blank_consent_string",
            "pct_ad_requests_gdpr_applied_valid_consent_string_tcf_version_2",
        ],
        "report_interval":"last_7_days",
        "format":"csv"
    }
}
```

**`POST` the request to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>**

`POST` the JSON request to get back a report ID.

``` pre
$ curl -b cookies -X post -d @cmp_analytics "https://api.appnexus.com/report?seller_member_id=123"

{
   "response":{
      "status":"OK",
      "report_id":"09b6979a6a4c3805bdac8921378d3622"
   }
}
```

**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies 'https://api.appnexus.com/report?id=09b6979a6a4c3805bdac8921378d3622'

{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2016-12-11 19:15:48",
         "json_request": "{\"report\":{\"report_type\":\"cmp_analytics\",
             \"columns\":[\"day\",\"seller_member_id\",
             \"call_type\",\"url\",\"ad_requests_gdpr_country\",\"ad_requests_gdpr_applied_valid_consent_string\",\"ad_requests_gdpr_applied_blank_consent_string\",
             \"ad_requests_gdpr_applied_valid_consent_string_tcf_version_2\",\"pct_ad_requests_gdpr_country_gdpr_applied\",
             \"pct_ad_requests_gdpr_applied_valid_consent_string\",\"pct_ad_requests_gdpr_applied_blank_consent_string\",
             \"pct_ad_requests_gdpr_applied_valid_consent_string_tcf_version_2\"],
             \"report_interval\":\"last_7_days\",\"format\":\"csv\",\"filters\":[{\"seller_member_id\":\"123\"}]}}",
             "url":"report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```

**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `url` field of the response to
your previous `GET` call. When identifying the file that you want to
save to, be sure to use the file extension of the file format that you
specified in your initial `POST`.



Tip: If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/cmp_analytics.csv
```



Note: There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.








