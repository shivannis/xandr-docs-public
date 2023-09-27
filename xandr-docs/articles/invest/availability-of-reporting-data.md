---
Title : Availability of Reporting Data
Description : This page outlines the availability of reporting data in Xandr, noting that it is typically accessible in the UI and API within two hours following the conclusion of a specific hour. While most reports aren't associated with particular objects or fields, some reports follow distinct schedules, and event data like clicks and conversions might appear in later hours due to their occurrence after initial impressions. Additionally, the data retention period differs for each report, and the page provides information about scheduled and saved reports, including their expiration after six months.
---

# Availability of Reporting Data

This page describes how, when, and for how long reporting data is or
becomes available to you.

**Important:** If you are noticing any latency in the availability of your reporting data, first check if there are any known outages at [https://status.xandr.com](https://status.xandr.com).

## Data Processing

Reporting data is generally available in the UI and API within two hours of the close of a given hour. All data in a given hour is aggregated across the entire platform at once. Therefore, timing for nearly all reports is not specific to certain objects or fields. However, a few reports run on different schedules.

## Events (Clicks, Conversions, Video Completions)

Since clicks, conversions, video completions, and other events occur
after the initial impressions that caused them, they can appear in later
hours of a report's data. As a result, you may see hours in your reports
that only contain events. The impressions associated with these events
will have occurred in earlier hours of the report. Event data is never
more than a few hours delayed.

## Data Retention

The data retention period for each report is stated on that report's page in the documentation. For a list of reports, see [Reporting Guide](reporting-guide.md).

## Scheduled Reports

A few facts to keep in mind about scheduled reports:

- Scheduled reports expire after 6 months. You must create a new
  scheduled report after 6 months.
- Scheduled reports and saved report templates cannot have a
  **Lifetime** or **Custom** date range.
- Scheduled reports are run in the order in which they were originally
  created. For example, if you create two daily reports, the daily
  report created first will run first each day.
- Daily reports are run and sent each day as soon as the data for the
  entire day (in the specified timezone) is available.
- Weekly reports are run and sent on the Monday of each week for the
  previous 7 days.
- Monthly reports are run and sent on the first day of each month.

## Saved Reports

You can save and view up to 200 reports in the UI. To retrieve a full list of saved reports, use the API [Saved Report Service](saved-report-service.md).

## Related Topics

- [Dimensions, Metrics, Filtering, and Grouping](dimensions-metrics-filtering-and-grouping.md)
- [Dates and Times in Reporting](dates-and-times-in-reporting.md)






