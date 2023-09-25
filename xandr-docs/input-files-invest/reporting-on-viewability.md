---
Title : Reporting on Viewability
Description : This page defines viewability metrics that are available and best
practices for making optimal use of them.
---


# Reporting on Viewability





This page defines viewability metrics that are available and best
practices for making optimal use of them.

Xandr provides **always-on**, **free**,
**reliable** and **independent** ad-viewability measurement to all
participants of the internet advertising industry. Viewability improves
the performance and quality of internet advertising.

Viewability Definitions

Viewability Measurement Metrics

Not all impressions are successfully measured, because of one, or more
of the following:

- Unsupported environment - the script does not attempt to measure
  viewability in this environment because it isn't supported.
- Partial implementation - the script could not be successfully loaded
  in the browser. For example, the user left the page before the ad call
  response was returned.
- Technical limitation - the script successfully loaded in the browser,
  but still couldn't be measured.



<b>Note:</b> Viewability metrics in reporting
will be available at the same time that impression level metrics become
available.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001480__entry__1" class="entry">Viewability Metric</th>
<th id="ID-00001480__entry__2" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001480__entry__1">View-Measured
Imps</td>
<td class="entry" headers="ID-00001480__entry__2">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001480__entry__1">Viewability
Measurement Rate</td>
<td class="entry" headers="ID-00001480__entry__2">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps)</td>
</tr>
</tbody>
</table>





<b>Note:</b> The Xandr
measured viewability rate should not be directly compared to other
measurement vendors, due to differences in what, where and how
impressions were served.



Viewability Metrics



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001480__entry__7" class="entry">Viewability Metric</th>
<th id="ID-00001480__entry__8" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001480__entry__7">Viewable Imps</td>
<td class="entry" headers="ID-00001480__entry__8">The number of measured
impressions that were viewable, per the IAB Viewability definition,
which states that 50% of the pixels of a creative are in-view during 1
consecutive second.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001480__entry__7">Viewability Rate</td>
<td class="entry" headers="ID-00001480__entry__8">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
</tbody>
</table>





<b>Note:</b> An impression that could not be
measured will not have a viewability status.



Viewability Reporting

Reports With Viewability Metrics

Viewability metrics are included in several reports in the reporting
system:



<table id="ID-00001480__table-945d9152-4dfe-4e1e-a5ab-5a4d547d5df5"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00001480__table-945d9152-4dfe-4e1e-a5ab-5a4d547d5df5__entry__1"
class="entry">Member</th>
<th
id="ID-00001480__table-945d9152-4dfe-4e1e-a5ab-5a4d547d5df5__entry__2"
class="entry">Advertisers</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00001480__table-945d9152-4dfe-4e1e-a5ab-5a4d547d5df5__entry__1"><ul>
<li><a href="network-analytics-report.md" class="xref">Member
Analytics Report</a></li>
</ul></td>
<td class="entry"
headers="ID-00001480__table-945d9152-4dfe-4e1e-a5ab-5a4d547d5df5__entry__2"><ul>
<li><a href="advertiser-analytics-report.md" class="xref">Advertiser
Analytics Report</a></li>
<li><a href="site-domain-performance.md" class="xref">Site Domain
Performance</a></li>
</ul></td>
</tr>
</tbody>
</table>



How to Add Viewability Metrics

Go to the appropriate tab and select
Reporting from the navigation menu.
Select the type of report from the drop-down menu.

Viewability indicators are located in the
Metrics section. Click the
Edit button to select the desired
indicators.



<b>Tip:</b> For an explanation of how metrics
work, see <a href="dimensions-metrics-filtering-and-grouping.md"
class="xref">Dimensions, Metrics, Filtering, and Grouping</a>.



Impression-Level Viewability

A column in the Log Level Data Standard Feed enables impression-level
viewability analytics. You can determine the result of the
Xandr viewability measurement for each
individual impression and use the data to perform enhanced reporting and
in-depth analysis.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001480__entry__17" class="entry">Column</th>
<th id="ID-00001480__entry__18" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001480__entry__17">VIEW_RESULT_TYPE</td>
<td class="entry" headers="ID-00001480__entry__18">The possible values
are:
<ul>
<li>Measured Viewable</li>
<li>Measured Non-Viewable</li>
<li>Non-Measured</li>
</ul></td>
</tr>
</tbody>
</table>



For more information, see <a
href="log-level-data/log-level-data-feeds.md"
class="xref" target="_blank">Log-Level Data Feeds</a> and <a
href="log-level-data/standard-feed.md"
class="xref" target="_blank">Standard Feed</a>.

Best Practices

Viewable Imps and Viewability rate

If you select Viewable Imps and
Viewability Rate, it is recommended
that you add View-Measured Imps as
well.



<b>Important:</b> Viewability Rate = Viewable
Imps / View-Measured Imps



**Viewability Rate** is NOT **Viewable Imps / All Imps.**

For example:

- **All Imps** = 1,000,000
- **Viewed** **Imps** = 450,000

**Viewability Rate** = 50%

Without **View-Measured Imps**, you would think the results are
incorrect, and believe that **Viewability Rate** should be 450,000 /
1,000,000 = 45%, not 50%.

When you add **View-Measured Imps**, you will see that the total number
of successfully measured imps = 900,000.

**Viewability Rate = Viewable Imps / View-Measured Imps** = 450,000 /
900,000 = **50%**

Sample Report

![Viewability Sample Report](media/viewability_sample_report.png)






