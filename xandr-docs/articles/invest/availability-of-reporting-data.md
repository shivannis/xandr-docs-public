---
Title : Availability of Reporting Data
Description : This page describes how, when, and for how long reporting data is or
becomes available to you.
---


# Availability of Reporting Data





This page describes how, when, and for how long reporting data is or
becomes available to you.



<b>Important:</b> If you are noticing any
latency in the availability of your reporting data, first check if there
are any known outages at <a href="https://status.xandr.com" class="xref"
target="_blank">https://status.xandr.com</a>.



Data Processing

Reporting data is generally available in the UI
and API within two hours of the close of a given hour. All data in a
given hour is aggregated across the entire platform at once. Therefore,
timing for nearly all reports is not specific to certain objects or
fields. However, a few reports run on different schedules.

Events (Clicks, Conversions, Video Completions)

Since clicks, conversions, video completions, and other events occur
after the initial impressions that caused them, they can appear in later
hours of a report's data. As a result, you may see hours in your reports
that only contain events. The impressions associated with these events
will have occurred in earlier hours of the report. Event data is never
more than a few hours delayed.

Data Retention

The data retention period for each report is stated on that report's
page in the documentation. For a list of reports, see
<a href="reporting-guide.md" class="xref">Reporting Guide</a>.

Scheduled Reports

A few facts to keep in mind about scheduled reports:

- Scheduled reports expire after 6 months. You must create a new
  scheduled report after 6 months.
- Scheduled reports and saved report templates cannot have a
  **Lifetime** or Custom date range.
- Scheduled reports are run in the order in which they were originally
  created. For example, if you create two daily reports, the daily
  report created first will run first each day.
- Daily reports are run and sent each day as soon as the data for the
  entire day (in the specified timezone) is available.
- Weekly reports are run and sent on the Monday of each week for the
  previous 7 days.
- Monthly reports are run and sent on the first day of each month.

Saved Reports

You can save and view up to 200 reports in the
UI. To retrieve a full list of saved reports, use the API <a
href="xandr-api/saved-report-service.md"
class="xref" target="_blank">Saved Report Service</a>.

Related Topics

- <a href="dimensions-metrics-filtering-and-grouping.md"
  class="xref">Dimensions, Metrics, Filtering, and Grouping</a>
- <a href="dates-and-times-in-reporting.md" class="xref">Dates and Times
  in Reporting</a>






