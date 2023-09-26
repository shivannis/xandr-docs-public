---
Title : Dimensions, Metrics, Filtering, and Grouping
Description : This page outlines how to design your reports so that you can:
- Reduce the size of the data set by removing data you don't care about
- Increase the relevance of the data you do get
- Get your results more quickly; requesting smaller data sets often
increases reporting performance
Every report returns a collection of data. In this document, this
---


# Dimensions, Metrics, Filtering, and Grouping



This page outlines how to design your reports so that you can:

- Reduce the size of the data set by removing data you don't care about

- Increase the relevance of the data you do get

- Get your results more quickly; requesting smaller data sets often
  increases reporting performance

  Every report returns a collection of data. In this document, this
  collection of data is referred to as a data set; these data sets are
  described in terms of dimensions and metrics.

  Similarly, when you are configuring a report, you can choose to filter
  the data set.

  The key recommendations of this document are as follows:

- Filter out as much data as possible - smaller data is faster data

- Choose as few dimensions as possible - the report automatically groups
  by all selected dimensions. The more dimensions you group by, the
  larger the data set becomes.



<table id="ID-000015b0__table_ufl_gwg_3kb" class="table frame-all">
<caption><span class="table--title-label">Table 1. <span
class="title">Key Terms</caption>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000015b0__table_ufl_gwg_3kb__entry__1"
class="entry colsep-1 rowsep-1">Term</th>
<th id="ID-000015b0__table_ufl_gwg_3kb__entry__2"
class="entry colsep-1 rowsep-1">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000015b0__table_ufl_gwg_3kb__entry__1"><strong>Dimensions</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000015b0__table_ufl_gwg_3kb__entry__2">Dimensions are things
the data set describes, such as advertisers, publishers, line items, or
domains. In other words, dimensions are what the data set is about.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000015b0__table_ufl_gwg_3kb__entry__1"><strong>Metrics</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000015b0__table_ufl_gwg_3kb__entry__2"><p>Metrics are
numbers that measure the performance of the dimensions you've selected.
Examples include:</p>
<ul>
<li>How many impressions came through this publisher?</li>
<li>What is the click-through rate across this campaign's
creatives?</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000015b0__table_ufl_gwg_3kb__entry__1"><strong>Filtering</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000015b0__table_ufl_gwg_3kb__entry__2">Filtering removes
dimensions you don't care about. This reduces the size of the data set.
For example, you might want to see only those impressions that occurred
on weekends in a certain region of France.

Tip: Filter out as much irrelevant data
as possible – smaller data is faster data.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000015b0__table_ufl_gwg_3kb__entry__1"><strong>Grouping</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000015b0__table_ufl_gwg_3kb__entry__2"><p>Reports
automatically group by all selected dimensions. Grouping causes the
dimensions to be output in a specific order. This can be useful for
understanding relationships between dimensions. For example, you can see
how the different line items under an advertiser are performing.</p>
<p>Since the report automatically applies grouping to dimensions,
selecting many dimensions can generate a very large data set. For every
additional dimension you select, the data set becomes larger.</p>

Tip: Select as few dimensions as
possible. The more dimensions you select, the larger the data set
becomes.
</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 1. <span class="title">Key
Terms



Visualizing the Process

The diagram below gives a simplified view of the process that generates
the data set that you receive.

In **Step 1**, unnecessary data is removed. This is important to keep
your reports small and relevant. We recommend filtering out as much
information as possible.

In **Step 2**, the data set is automatically grouped by the selected
dimensions. This step can generate a large data set if you selected many
dimensions. We recommend selecting as few dimensions as possible.

In **Step 3**, our systems generate the report. You have the option to
view the report, have it run in the background or have it exported and
emailed to you (in CSV or Excel format). This goes more quickly with
smaller data sets.

<img
src="../images/dimensions-metrics-filtering-and-grouping/filtering-and-grouping.png"
class="image" />

A Tiny Example Database

All of the examples below will use the same underlying "database", which
contains two dimensions,:**Advertiser** and **Line Item**; and two
metrics: **Impressions** and **Clicks**. Here it is in its entirety:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000015b0__entry__11" class="entry">ID</th>
<th id="ID-000015b0__entry__12" class="entry">Advertiser</th>
<th id="ID-000015b0__entry__13" class="entry">Line Item</th>
<th id="ID-000015b0__entry__14" class="entry">Impressions</th>
<th id="ID-000015b0__entry__15" class="entry">Clicks</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__11">1</td>
<td class="entry" headers="ID-000015b0__entry__12">A</td>
<td class="entry" headers="ID-000015b0__entry__13">ACME Axe Co.</td>
<td class="entry" headers="ID-000015b0__entry__14">1792</td>
<td class="entry" headers="ID-000015b0__entry__15">21</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__11">2</td>
<td class="entry" headers="ID-000015b0__entry__12">A</td>
<td class="entry" headers="ID-000015b0__entry__13">ACME Axe Co.</td>
<td class="entry" headers="ID-000015b0__entry__14">4355</td>
<td class="entry" headers="ID-000015b0__entry__15">34</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__11">3</td>
<td class="entry" headers="ID-000015b0__entry__12">A</td>
<td class="entry" headers="ID-000015b0__entry__13">Bar-None Ice Cream
Cones</td>
<td class="entry" headers="ID-000015b0__entry__14">78,231</td>
<td class="entry" headers="ID-000015b0__entry__15">1408</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__11">4</td>
<td class="entry" headers="ID-000015b0__entry__12">B</td>
<td class="entry" headers="ID-000015b0__entry__13">Candles R-US</td>
<td class="entry" headers="ID-000015b0__entry__14">2843</td>
<td class="entry" headers="ID-000015b0__entry__15">65</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__11">5</td>
<td class="entry" headers="ID-000015b0__entry__12">B</td>
<td class="entry" headers="ID-000015b0__entry__13">Doggie
Accessories</td>
<td class="entry" headers="ID-000015b0__entry__14">9486</td>
<td class="entry" headers="ID-000015b0__entry__15">123</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__11">6</td>
<td class="entry" headers="ID-000015b0__entry__12">C</td>
<td class="entry" headers="ID-000015b0__entry__13">Evergreen Synthetic
Xmas Trees</td>
<td class="entry" headers="ID-000015b0__entry__14">2238</td>
<td class="entry" headers="ID-000015b0__entry__15">46</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__11">7</td>
<td class="entry" headers="ID-000015b0__entry__12">D</td>
<td class="entry" headers="ID-000015b0__entry__13">Frog Hollow Athletic
Socks</td>
<td class="entry" headers="ID-000015b0__entry__14">8198</td>
<td class="entry" headers="ID-000015b0__entry__15">214</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__11">8</td>
<td class="entry" headers="ID-000015b0__entry__12">D</td>
<td class="entry" headers="ID-000015b0__entry__13">Frog Hollow Athletic
Socks</td>
<td class="entry" headers="ID-000015b0__entry__14">103</td>
<td class="entry" headers="ID-000015b0__entry__15">12</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__11">9</td>
<td class="entry" headers="ID-000015b0__entry__12">E</td>
<td class="entry" headers="ID-000015b0__entry__13">Best Soap &amp;
Candle</td>
<td class="entry" headers="ID-000015b0__entry__14">3883</td>
<td class="entry" headers="ID-000015b0__entry__15">41</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__11">10</td>
<td class="entry" headers="ID-000015b0__entry__12">E</td>
<td class="entry" headers="ID-000015b0__entry__13">Best Soap &amp;
Candle</td>
<td class="entry" headers="ID-000015b0__entry__14">1292</td>
<td class="entry" headers="ID-000015b0__entry__15">183</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__11">11</td>
<td class="entry" headers="ID-000015b0__entry__12">E</td>
<td class="entry" headers="ID-000015b0__entry__13">Best Soap &amp;
Candle</td>
<td class="entry" headers="ID-000015b0__entry__14">902</td>
<td class="entry" headers="ID-000015b0__entry__15">81</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__11">12</td>
<td class="entry" headers="ID-000015b0__entry__12">E</td>
<td class="entry" headers="ID-000015b0__entry__13">Best Soap &amp;
Candle</td>
<td class="entry" headers="ID-000015b0__entry__14">5352</td>
<td class="entry" headers="ID-000015b0__entry__15">212</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__11">13</td>
<td class="entry" headers="ID-000015b0__entry__12">F</td>
<td class="entry" headers="ID-000015b0__entry__13">Farmer Snowplows</td>
<td class="entry" headers="ID-000015b0__entry__14">12,448</td>
<td class="entry" headers="ID-000015b0__entry__15">256</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__11">14</td>
<td class="entry" headers="ID-000015b0__entry__12">F</td>
<td class="entry" headers="ID-000015b0__entry__13">Farmer Snowplows</td>
<td class="entry" headers="ID-000015b0__entry__14">23,984</td>
<td class="entry" headers="ID-000015b0__entry__15">782</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__11">15</td>
<td class="entry" headers="ID-000015b0__entry__12">F</td>
<td class="entry" headers="ID-000015b0__entry__13">Farmer Snowplows</td>
<td class="entry" headers="ID-000015b0__entry__14">8,764</td>
<td class="entry" headers="ID-000015b0__entry__15">128</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__11">16</td>
<td class="entry" headers="ID-000015b0__entry__12">G</td>
<td class="entry" headers="ID-000015b0__entry__13">Gretchen's Organic
Chocolates</td>
<td class="entry" headers="ID-000015b0__entry__14">48,996</td>
<td class="entry" headers="ID-000015b0__entry__15">973</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__11">17</td>
<td class="entry" headers="ID-000015b0__entry__12">H</td>
<td class="entry" headers="ID-000015b0__entry__13">Hap's Go-Kart Track
and Petting Zoo</td>
<td class="entry" headers="ID-000015b0__entry__14">1108</td>
<td class="entry" headers="ID-000015b0__entry__15">87</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__11">18</td>
<td class="entry" headers="ID-000015b0__entry__12">H</td>
<td class="entry" headers="ID-000015b0__entry__13">Hap's Go-Kart Track
and Petting Zoo</td>
<td class="entry" headers="ID-000015b0__entry__14">1872</td>
<td class="entry" headers="ID-000015b0__entry__15">116</td>
</tr>
</tbody>
</table>

You can also <a
href="../attachments/dimensions-metrics-filtering-and-grouping/tiny-db.csv"
class="xref">download</a> the example in CSV format

Filtering Examples

The examples in this section illustrate how data set sizes are affected
by filtering. Filtering is useful for several reasons:

- Filtering the data set reduces its size. A smaller data set is easier
  for a computer to process more quickly.
- Filtering the data set reduces the amount of irrelevant information
  humans have to deal with.

Example 1. Filter by a minimum of 9,000 impressions

In this example, we use a filter to see which of our line items has at
least the minimum specified amount of reach. This reduces the size of
the data set from 18 rows to 5.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000015b0__entry__106" class="entry">ID</th>
<th id="ID-000015b0__entry__107" class="entry">Advertiser</th>
<th id="ID-000015b0__entry__108" class="entry">Line Item</th>
<th id="ID-000015b0__entry__109" class="entry">Impressions</th>
<th id="ID-000015b0__entry__110" class="entry">Clicks</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__106">3</td>
<td class="entry" headers="ID-000015b0__entry__107">A</td>
<td class="entry" headers="ID-000015b0__entry__108">Bar-None Ice Cream
Cones</td>
<td class="entry" headers="ID-000015b0__entry__109">78231</td>
<td class="entry" headers="ID-000015b0__entry__110">1408</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__106">5</td>
<td class="entry" headers="ID-000015b0__entry__107">B</td>
<td class="entry" headers="ID-000015b0__entry__108">Doggie
Accessories</td>
<td class="entry" headers="ID-000015b0__entry__109">9486</td>
<td class="entry" headers="ID-000015b0__entry__110">123</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__106">13</td>
<td class="entry" headers="ID-000015b0__entry__107">F</td>
<td class="entry" headers="ID-000015b0__entry__108">Farmer
Snowplows</td>
<td class="entry" headers="ID-000015b0__entry__109">12448</td>
<td class="entry" headers="ID-000015b0__entry__110">256</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__106">14</td>
<td class="entry" headers="ID-000015b0__entry__107">F</td>
<td class="entry" headers="ID-000015b0__entry__108">Farmer
Snowplows</td>
<td class="entry" headers="ID-000015b0__entry__109">23984</td>
<td class="entry" headers="ID-000015b0__entry__110">782</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__106">16</td>
<td class="entry" headers="ID-000015b0__entry__107">G</td>
<td class="entry" headers="ID-000015b0__entry__108">Gretchen's Organic
Chocolates</td>
<td class="entry" headers="ID-000015b0__entry__109">48996</td>
<td class="entry" headers="ID-000015b0__entry__110">973</td>
</tr>
</tbody>
</table>

Example 2. Filter by two line items

In this example, we check the performance of two of our line items. This
reduces our data set to 6 rows out of a possible 18.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000015b0__entry__136" class="entry">ID</th>
<th id="ID-000015b0__entry__137" class="entry">Advertiser</th>
<th id="ID-000015b0__entry__138" class="entry">Line Item</th>
<th id="ID-000015b0__entry__139" class="entry">Impressions</th>
<th id="ID-000015b0__entry__140" class="entry">Clicks</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__136">1</td>
<td class="entry" headers="ID-000015b0__entry__137">A</td>
<td class="entry" headers="ID-000015b0__entry__138">ACME Axe Co.</td>
<td class="entry" headers="ID-000015b0__entry__139">1792</td>
<td class="entry" headers="ID-000015b0__entry__140">21</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__136">2</td>
<td class="entry" headers="ID-000015b0__entry__137">A</td>
<td class="entry" headers="ID-000015b0__entry__138">ACME Axe Co.</td>
<td class="entry" headers="ID-000015b0__entry__139">4355</td>
<td class="entry" headers="ID-000015b0__entry__140">34</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__136">9</td>
<td class="entry" headers="ID-000015b0__entry__137">E</td>
<td class="entry" headers="ID-000015b0__entry__138">Best Soap &amp;
Candle</td>
<td class="entry" headers="ID-000015b0__entry__139">3883</td>
<td class="entry" headers="ID-000015b0__entry__140">41</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__136">10</td>
<td class="entry" headers="ID-000015b0__entry__137">E</td>
<td class="entry" headers="ID-000015b0__entry__138">Best Soap &amp;
Candle</td>
<td class="entry" headers="ID-000015b0__entry__139">1292</td>
<td class="entry" headers="ID-000015b0__entry__140">183</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__136">11</td>
<td class="entry" headers="ID-000015b0__entry__137">E</td>
<td class="entry" headers="ID-000015b0__entry__138">Best Soap &amp;
Candle</td>
<td class="entry" headers="ID-000015b0__entry__139">902</td>
<td class="entry" headers="ID-000015b0__entry__140">81</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__136">12</td>
<td class="entry" headers="ID-000015b0__entry__137">E</td>
<td class="entry" headers="ID-000015b0__entry__138">Best Soap &amp;
Candle</td>
<td class="entry" headers="ID-000015b0__entry__139">5352</td>
<td class="entry" headers="ID-000015b0__entry__140">212</td>
</tr>
</tbody>
</table>

Example 3. Filter by advertisers B and D

In this example, we filter out all but two advertisers. This reduces our
data set size from 18 row to 4 rows.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000015b0__entry__171" class="entry">ID</th>
<th id="ID-000015b0__entry__172" class="entry">Advertiser</th>
<th id="ID-000015b0__entry__173" class="entry">Line Item</th>
<th id="ID-000015b0__entry__174" class="entry">Impressions</th>
<th id="ID-000015b0__entry__175" class="entry">Clicks</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__171">4</td>
<td class="entry" headers="ID-000015b0__entry__172">B</td>
<td class="entry" headers="ID-000015b0__entry__173">Candles R-US</td>
<td class="entry" headers="ID-000015b0__entry__174">2843</td>
<td class="entry" headers="ID-000015b0__entry__175">65</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__171">5</td>
<td class="entry" headers="ID-000015b0__entry__172">B</td>
<td class="entry" headers="ID-000015b0__entry__173">Doggie
Accessories</td>
<td class="entry" headers="ID-000015b0__entry__174">9486</td>
<td class="entry" headers="ID-000015b0__entry__175">123</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015b0__entry__171">7</td>
<td class="entry" headers="ID-000015b0__entry__172">D</td>
<td class="entry" headers="ID-000015b0__entry__173">Frog Hollow Athletic
Socks</td>
<td class="entry" headers="ID-000015b0__entry__174">8198</td>
<td class="entry" headers="ID-000015b0__entry__175">214</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015b0__entry__171">8</td>
<td class="entry" headers="ID-000015b0__entry__172">D</td>
<td class="entry" headers="ID-000015b0__entry__173">Frog Hollow Athletic
Socks</td>
<td class="entry" headers="ID-000015b0__entry__174">103</td>
<td class="entry" headers="ID-000015b0__entry__175">12</td>
</tr>
</tbody>
</table>

Grouping and Dimension Selection Guidance

Grouping can increase the size of the data set by adding rows (possibly
a very large number of rows). Since the Xandr
reporting system automatically groups by all the dimensions you select,
a best practice is to select as few dimensions as possible to get just
the information you need. You can further reduce the effects of this
automatic grouping of dimensions by applying filtering.

Related Topics

- <a href="availability-of-reporting-data.html" class="xref">Availability
  of Reporting Data</a>
- <a href="dates-and-times-in-reporting.html" class="xref">Dates and Times
  in Reporting</a>




