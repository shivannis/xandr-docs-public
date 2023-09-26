---
Title : Seller CMP Analytics Report
Description : The Seller CMP Analytics Report provides insight into the number,
validity, and content of the IAB Transparency & Consent Framework (IAB
TCF) strings on seller ad requests to Xandr
endpoints. This report enables sellers to answer questions like:
---


# Seller CMP Analytics Report





The Seller CMP Analytics Report provides insight into the number,
validity, and content of the IAB Transparency & Consent Framework (IAB
TCF) strings on seller ad requests to Xandr
endpoints. This report enables sellers to answer questions like:

- How many ad requests contained TCF strings encoded according to the
  TCF v1 or v2 specifications?
- How many ad requests contained TCF strings that were not encoded
  properly and therefore invalid or malformed?
- Is my CMP (Consent Management Platform) correctly passing permission
  information to Xandr?

This report does not prove or disprove compliance with any laws or
regulations. The language "GDPR applied" for this report means,
Xandr applied TCF logic.
Xandr supports the IAB TCF and this report
enables sellers using the TCF to confirm that TCF signals are
communicated properly.

For ad requests where TCF logic is applied the classification is
summarized in this diagram:

<img src="../images/seller-cmp-analytics/seller-cmp-analytics.png"
class="image" />

Sellers wishing to have all of their ad requests treated according to
the IAB TCF standards and policies can force application of
Xandr TCF logic by passing 'gdpr=1' according to
the IAB OpenRTB Spec. If the GDPR parameter is omitted but the request
includes a TCF string via URL params, Xandr will
apply TCF logic (unless the impression is received via OpenRTB). For
impressions received via OpenRTB, the
Regs.ext.gdpr field must be set to
**1** in order for Xandr to apply TCF logic.

A high number of present but malformed strings for a given publisher
usually means that the publisher's CMP is not creating or encoding the
strings according to TCF specifications, and therefore are unreadable to
Xandr and other vendors. Unreadable strings,
because they do not provide clear signals to vendors, are treated as no
permission for any vendor, and should be avoided.

For more information about the IAB TCF, please refer to the following
resources:

- <a href="https://www.iabeurope.eu/category/policy/tcf-updates/"
  class="xref" target="_blank">IAB Europe's TCF Policy</a>
- <a
  href="https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework"
  class="xref" target="_blank">IAB Techlab TCF v1 and v2 Technical
  Spec</a>
- <a
  href="https://iabtechlab.com/wp-content/uploads/2018/02/OpenRTB_Advisory_GDPR_2018-02.pdf"
  class="xref" target="_blank">IAB Techlab TCF RTB Spec</a>

Time Frame

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



Data for this report is grouped into rows by the day.

Dimensions



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000057f2__entry__1" class="entry">Column</th>
<th id="ID-000057f2__entry__2" class="entry">Filter?</th>
<th id="ID-000057f2__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000057f2__entry__1">Publisher</td>
<td class="entry" headers="ID-000057f2__entry__2">Y</td>
<td class="entry" headers="ID-000057f2__entry__3">The name and ID of the
publisher associated with the impression. For example, New York Times
(723968)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000057f2__entry__1">Ad Request Call
Type</td>
<td class="entry" headers="ID-000057f2__entry__2">N</td>
<td class="entry" headers="ID-000057f2__entry__3">The path where <span
class="ph">Xandr received the ad request. This generally
corresponds to the seller integration. For example: /openrtb2, /ut/v3,
/ut/v3/prebid, /ptv, /ttj.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000057f2__entry__1">Publisher Name</td>
<td class="entry" headers="ID-000057f2__entry__2">N</td>
<td class="entry" headers="ID-000057f2__entry__3">The publisher
associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000057f2__entry__1">YMD</td>
<td class="entry" headers="ID-000057f2__entry__2">N</td>
<td class="entry" headers="ID-000057f2__entry__3">The year, month, and
day of the impression, expressed using the format yyyy-mm-dd, for
example: 2019-09-15.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000057f2__entry__1">URL</td>
<td class="entry" headers="ID-000057f2__entry__2">N</td>
<td class="entry" headers="ID-000057f2__entry__3">The URL of the
incoming impression.</td>
</tr>
</tbody>
</table>



Metrics



Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000057f2__entry__19" class="entry">Column</th>
<th id="ID-000057f2__entry__20" class="entry"> Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000057f2__entry__19">Ad Requests GDPR
Country</td>
<td class="entry" headers="ID-000057f2__entry__20">The number of
incoming ad requests for which the impression originated from a
GDPR-implementing country, or the impression contained a consent
string.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000057f2__entry__19">Ad Requests GDPR
Applied</td>
<td class="entry" headers="ID-000057f2__entry__20">The number of
incoming ad requests for which Xandr applied TCF
logic. Xandr applies TCF logic if the IAB
OpenRTB Specified flag gdpr is set to 1 or if the gdpr flag is omitted
but the request includes a gdpr_consent field. If your digital
properties intend to use TCF for all GDPR-covered inventory, this number
should be close to Ad Requests GDPR Country.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000057f2__entry__19">Malformed Consent
Strings</td>
<td class="entry" headers="ID-000057f2__entry__20">The number of ad
requests where Xandr applied TCF logic ("GDPR
applied"), but the string received could not be decoded. This number
should ideally be zero.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000057f2__entry__19">Blank Consent
Strings</td>
<td class="entry" headers="ID-000057f2__entry__20">The number of ad
requests where Xandr applied TCF logic ("GDPR
applied"), but the string was either blank or the field gdpr_consent was
omitted. This number should ideally be zero.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000057f2__entry__19">Seller Revenue
Invalid Consent Strings</td>
<td class="entry" headers="ID-000057f2__entry__20">TThe total estimated
seller revenue associated with invalid (un-decodable) strings. If a
string is unreadable but present, an impression is served without
personal data such as cookies. This number should ideally be zero,
indicating that all ad requests had a decodable string.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000057f2__entry__19">Valid Consent
Strings</td>
<td class="entry" headers="ID-000057f2__entry__20">The number of ad
requests where Xandr applied TCF logic ("GDPR
applied") and the request contained a string that was parseable. This
number should ideally equal the number of ad requests where <span
class="ph">Xandr applied TCF logic.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000057f2__entry__19">Valid CMP
Impressions</td>
<td class="entry" headers="ID-000057f2__entry__20">The number of
incoming ad requests for which GDPR is applied, the consent string is
valid, and the CMP used to generate the impression is registered with
the IAB, as seen at <a href="https://iabeurope.eu/cmp-list/"
class="xref" target="_blank">https://iabeurope.eu/cmp-list/</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000057f2__entry__19">Invalid CMP
Impressions</td>
<td class="entry" headers="ID-000057f2__entry__20">Number of incoming ad
requests for which GDPR is applied, the consent string is valid, and the
CMP used to generate the impression is NOT registered with the IAB, as
seen at <a href="https://iabeurope.eu/cmp-list/" class="xref"
target="_blank">https://iabeurope.eu/cmp-list/</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000057f2__entry__19">TCF Version 1
Impressions</td>
<td class="entry" headers="ID-000057f2__entry__20">The number of ad
requests where Xandr applied TCF logic ("GDPR
applied"), the string was parseable, and the decoded value of
cookie_version was 1, indicating that this TC string was created
according to the TCF v1.0 specification. The specification can be found
here: <a
href="https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework"
class="xref"
target="_blank">https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework</a>. </td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000057f2__entry__19">TCF Version 2
Impressions</td>
<td class="entry" headers="ID-000057f2__entry__20">The number of ad
requests where Xandr applied TCF logic ("GDPR
applied"), the string was parseable, and the decoded value of
cookie_version was 2, indicating that this TC string was created
according to the TCF v2.0 specification. The specification can be found
here: <a
href="https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework"
class="xref"
target="_blank">https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework</a>
.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000057f2__entry__19"><span
class="ph">Xandr Consented Impressions</td>
<td class="entry" headers="ID-000057f2__entry__20"><p>For TCF v1-encoded
strings, the number of incoming ad requests for which GDPR is applied,
and Xandr's vendor bit (#32) is a 1 in the
string.</p>
<p>For TCF v2 encoded strings, the number of incoming ad requests for
which GDPR is applied, Xandr's vendor bit (#32)
is a 1 in the string, and we have established legal basis to process
personal data (i.e. consent for purpose 1 <strong>and</strong> either
consent or legitimate interest for purposes 2, 7 and 10 is signalled in
the consent string).</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000057f2__entry__19">Percent Ad Requests
GDPR Applied</td>
<td class="entry" headers="ID-000057f2__entry__20">The percentage of
incoming ad requests from GDPR-implementing countries for which GDPR is
applied.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000057f2__entry__19">Percent Bad Consent
Strings</td>
<td class="entry" headers="ID-000057f2__entry__20">The percentage of
incoming ad requests for which GDPR is applied and the consent string is
non-blank and malformed.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000057f2__entry__19">Percent Blank Consent
Strings</td>
<td class="entry" headers="ID-000057f2__entry__20">The percentage of
incoming ad requests for which GDPR is applied and the consent string is
blank.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000057f2__entry__19">Percent Valid Consent
Strings</td>
<td class="entry" headers="ID-000057f2__entry__20">The percentage of
incoming ad requests for which GDPR is applied and the consent string is
non-null and valid.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000057f2__entry__19">Percent Valid CMP
Impressions</td>
<td class="entry" headers="ID-000057f2__entry__20">The percentage of
incoming ad requests for which GDPR is applied, the consent string is
valid, and the CMP used to generate the impression is registered with
the IAB, as shown at <a href="https://iabeurope.eu/cmp-list/"
class="xref" target="_blank">https://iabeurope.eu/cmp-list/</a> .</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000057f2__entry__19">Percentage Invalid
CMP Impressions</td>
<td class="entry" headers="ID-000057f2__entry__20">The percentage of
incoming ad requests for which GDPR is applied, the consent string is
valid, and the CMP used to generate the impression is NOT registered
with the IAB, as shown at <a href="https://iabeurope.eu/cmp-list/"
class="xref" target="_blank">https://iabeurope.eu/cmp-list/</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000057f2__entry__19">Percent TCF Version 1
Impressions</td>
<td class="entry" headers="ID-000057f2__entry__20">The percentage of
incoming ad requests for which GDPR is applied and the consent string is
valid and encoded according to TCF v1.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000057f2__entry__19">Percent TCF Version 2
Impressions</td>
<td class="entry" headers="ID-000057f2__entry__20">The percentage of
incoming ad requests for which GDPR is applied and the consent string is
valid and encoded according to TCF v2.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000057f2__entry__19">Percent <span
class="ph">Xandr Consented</td>
<td class="entry" headers="ID-000057f2__entry__20">The percentage of
incoming ad requests for which GDPR is applied and the vendor bit (#32)
for Xandr is a 1 for TCF v1 encoded strings</td>
</tr>
</tbody>
</table>



To Run Your Report

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
    

    Important: For an explanation of
    how grouping and filtering work, see
    <a href="dimensions-metrics-filtering-and-grouping.html"
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
    

    Warning: The more dimensions you
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
      

      Tip: The maximum size of the
      report that can be downloaded from the UI is 100 MB. Also, there
      is a limit of 100,000 rows per report when downloading as XLSX and
      Excel file. If the size of the report is more than that, you can
      try to download it using the <a
      href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
      class="xref" target="_blank">API</a> for that reporting service
      (The limit here is 10 million rows).

      
    - <span id="ID-000057f2__d10e107">**Export, send results via
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
6.  <span id="ID-000057f2__d10e136">Click Run
    report to send your report request.





## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/seller-cmp-analytics-report.html"
  class="xref" target="_blank">Seller CMP Analytics Report API</a>






