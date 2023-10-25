---
Title : Reporting Instructions
Description : A few facts to keep in mind about scheduled reports:
- Scheduled reports expire after 6 months. You must create a new
---


# Reporting Instructions



A few facts to keep in mind about scheduled reports:



- Scheduled reports expire after 6 months. You must create a new
  scheduled report after 6 months.
- Scheduled reports and saved report templates cannot have
  a **Lifetime** or **Custom** date range.
- Scheduled reports are run in the order in which they were originally
  created. For example, if you create two daily reports, the daily
  report created first will run first each day.
- Daily reports are run and sent each day as soon as the data for the
  entire day (in the specified timezone) is available.
- Weekly reports are run and sent on the Monday of each week for the
  previous 7 days.
- Monthly reports are run and sent on the first day of each month.



Tip: Note that the report will not
include a list of which segments are being targeted. This is why you may
want to consider including the segment IDs or codes in the campaign
name.





Note: Note that if you are sending a
monthly report, the data provider will not know if you have added or
removed segment targeting over the course of that month. Thus, you will
need to track segment targeting dates manually if any changes are made
and send these to the data provider.

For more information on API reporting, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.








