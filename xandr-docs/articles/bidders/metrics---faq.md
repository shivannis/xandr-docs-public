---
Title : Metrics - FAQ
Description : <div id="metrics-faq__section_qn2_gts_4wb" >
## Metrics availability
**Where can I find metrics on my bidder's performance?**
Metrics are available for your bidder as part of the
<a href="https://bidder.xandr.com/" class="xref" target="_blank">bidder
---


# Metrics - FAQ



<div id="metrics-faq__section_qn2_gts_4wb" >

## Metrics availability

**Where can I find metrics on my bidder's performance?**

Metrics are available for your bidder as part of the
<a href="https://bidder.xandr.com/" class="xref" target="_blank">bidder
UI</a>. Use your bidder authentication credentials to access the UI.



<div id="metrics-faq__section_xck_3ts_4wb" >

## What do the following metrics mean?

**Bid requests available**

This is the total number of requests that come into Xandr's platform. It
is not the number of requests that meet your particular profile; it is
all of the requests that, if you have no profile, you would be eligible
to receive.

**Bid requests sent**

This is not actually the number of requests that are sent to your
bidder. It is the number of number of requests that are actually sent to
your bidder minus the number of aborted bids. The following shows an
example of an aborted bid on a given connection - since only one bid
request can be out on a given connection at a time:

Time 0 ms: bid request 1 sent to your bidder

Time 1 ms: bid request 2 queued

Time 1.5 ms: bid request 3 queued

Time 99: bid response 1 received

Time 100: bid request 2 sent

Time 102: bid request 3 aborted because it timed out before the request
was sent.



<div id="metrics-faq__section_zg1_lts_4wb" >

## Accessing the raw data for Metrics

For each graph in the Metrics section, you can download a text file with
the raw data.

On the upper right corner of each graph, there is a button called
'Export Raw Data'. When this button is clicked, you will be prompted to
save a file. This file will contain all the data points in the graph.

For example:

Bid requests - Available,1333306500,1333392900,300 | \[lots of data
here\]

The format of the text file follows the below layout:

<table id="metrics-faq__table_pyc_4ts_4wb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Selected
Metric</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Start time</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>End time</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Time between data points (in
seconds)</strong></td>
<td class="entry colsep-1 rowsep-1"><strong>Data points</strong></td>
</tr>
</tbody>
</table>

Please note the Start and End times are in Unix time stamps.



<div id="metrics-faq__section_hyk_sts_4wb" >

## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/metrics-screen.html"
  class="xref" target="_blank">Bidder UI Metrics (for Data Providers)</a>






