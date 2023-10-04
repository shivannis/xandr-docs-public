---
Title : Using Performance Goals with CPM Booked Revenue
Description : The purpose of this page is to illustrate how to best use
Xandr optimization when your client is paying
you on a CPM basis but will measure results on a CPA, CPC or CTR basis.
---


# Using Performance Goals with CPM Booked Revenue



The purpose of this page is to illustrate how to best use
Xandr optimization when your client is paying
you on a CPM basis but will measure results on a CPA, CPC or CTR basis.

In the past, Xandr recommended setting up this
scenario as a line item with CPM booked revenue and a campaign with the
**Optimize to a predicted CPC/CPA goal** buying strategies.

With the release of enhanced Performance Goals section on the line item,
we no longer recommend using campaign-based CPC/CPA goals in this case
as performance goals will always be more efficient.

To understand why it is better to use performance goals on the line item
rather than **Optimize to a predicted CPC/CPA goal** campaign buying
strategies for line items using CPM booked revenue, consider the
following scenario.

You are responsible for trafficking the following line item from an
insertion order with the following specifications:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001475__entry__1" class="entry">Placement</th>
<th id="ID-00001475__entry__2" class="entry">Flight Dates</th>
<th id="ID-00001475__entry__3" class="entry">Rate Type</th>
<th id="ID-00001475__entry__4" class="entry">Rate</th>
<th id="ID-00001475__entry__5" class="entry">Units</th>
<th id="ID-00001475__entry__6" class="entry">Net Cost</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001475__entry__1">Creative_ABC_RON</td>
<td class="entry" headers="ID-00001475__entry__2">5/1/14 - 5/31/14</td>
<td class="entry" headers="ID-00001475__entry__3">CPM</td>
<td class="entry" headers="ID-00001475__entry__4">$1.00</td>
<td class="entry" headers="ID-00001475__entry__5">10,000,000</td>
<td class="entry" headers="ID-00001475__entry__6">$10,000</td>
</tr>
</tbody>
</table>

Additional information:

- The agency issuing the insertion order has stated they would like to
  pay around $5 per conversion
- You would like to make as much margin as possible with this IO

Let's take a look at what this insertion order would look like if we
trafficked it the old way using the **Optimize to a predicted CPA goal**
campaign buying strategy.

The Old Way: Optimize to a predicted CPA goal (no longer recommended)

The Setup

First, you would set up a line item with a budget of $10,000 and a $1.00
CPM booked revenue. Then you would set up a campaign and select the
**Optimize to a predicted CPA goal** buying strategy, and enter the goal
and caps to ensure your margin.

The setup would look something like this:

<img
src="../images/using-performance-goals-with-cpm-booked-revenue/optimize_to_cpa.png"
class="image" />

The Results

After setting the campaign live, you may notice positive results.
However, behind the scenes the algorithm is buying inventory that does
not meet the client's goal.

To understand the sub-optimal results, consider the following breakdown
of what is happening inside the optimization algorithm. A, B, C, and D
below represent four sites that have become optimized on your campaign.
For simplicity's sake, assume the conversion rates are constant and you
can buy enough impressions to get one more conversion.

Let's take a look:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001475__entry__13" class="entry">Site</th>
<th id="ID-00001475__entry__14" class="entry">Conversion Rate</th>
<th id="ID-00001475__entry__15" class="entry">Bid Price (CPM) with max
bid cap</th>
<th id="ID-00001475__entry__16" class="entry">Advertiser's Cost
(CPM)</th>
<th id="ID-00001475__entry__17" class="entry">Imps bought</th>
<th id="ID-00001475__entry__18" class="entry">Network's eCPA</th>
<th id="ID-00001475__entry__19" class="entry">Advertiser's eCPA</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001475__entry__13">A</td>
<td class="entry" headers="ID-00001475__entry__14">1 conversion per
2,500 imps</td>
<td class="entry" headers="ID-00001475__entry__15">(1/2500) * 5 * 1000 =
$2.00
<p>=&gt; $0.80</p></td>
<td class="entry" headers="ID-00001475__entry__16">$1.00</td>
<td class="entry" headers="ID-00001475__entry__17">2,500</td>
<td class="entry" headers="ID-00001475__entry__18">$2.00</td>
<td class="entry" headers="ID-00001475__entry__19">$2.50</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001475__entry__13">B</td>
<td class="entry" headers="ID-00001475__entry__14">1 conversion per
5,000 imps</td>
<td class="entry" headers="ID-00001475__entry__15">(1/5000) * 5 * 1000 =
$1.00
<p>=&gt; $0.80</p></td>
<td class="entry" headers="ID-00001475__entry__16">$1.00</td>
<td class="entry" headers="ID-00001475__entry__17">5,000</td>
<td class="entry" headers="ID-00001475__entry__18">$4.00</td>
<td class="entry" headers="ID-00001475__entry__19">$5.00</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001475__entry__13">C</td>
<td class="entry" headers="ID-00001475__entry__14">1 conversion per
7,500 imps</td>
<td class="entry" headers="ID-00001475__entry__15">(1/7500) * 5 * 1000 =
$0.67</td>
<td class="entry" headers="ID-00001475__entry__16">$1.00</td>
<td class="entry" headers="ID-00001475__entry__17">7,500</td>
<td class="entry" headers="ID-00001475__entry__18">$5.00</td>
<td class="entry" headers="ID-00001475__entry__19">$7.50</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001475__entry__13">D</td>
<td class="entry" headers="ID-00001475__entry__14">1 conversion per
10,000 imps</td>
<td class="entry" headers="ID-00001475__entry__15">(1/10000) * 5 * 1000
= $0.50</td>
<td class="entry" headers="ID-00001475__entry__16">$1.00</td>
<td class="entry" headers="ID-00001475__entry__17">10,000</td>
<td class="entry" headers="ID-00001475__entry__18">$5.00</td>
<td class="entry" headers="ID-00001475__entry__19">$10.00</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001475__entry__13"><strong>TOTAL</strong></td>
<td class="entry"
headers="ID-00001475__entry__14"><strong>----------------</strong></td>
<td class="entry"
headers="ID-00001475__entry__15"><strong>----------------</strong></td>
<td class="entry"
headers="ID-00001475__entry__16"><strong>----------------</strong></td>
<td class="entry"
headers="ID-00001475__entry__17"><strong>25,000</strong></td>
<td class="entry"
headers="ID-00001475__entry__18"><strong>$4.00</strong></td>
<td class="entry"
headers="ID-00001475__entry__19"><strong>$6.25</strong></td>
</tr>
</tbody>
</table>

Looking at these four optimized sites, you may see some good things: for
instance, you're making a 44% margin and, as far as you can tell, you
are getting conversions at a $4.00 CPA.

However, two things are going very poorly:

1.  You are **not hitting the advertiser's performance goal.** Instead
    of the $3.50 CPA that you're seeing based on your media cost, the
    advertiser will see a $6.25 CPA based on their media cost (your
    booked revenue).
2.  You have delivered **nearly 3/4 of the budget here on inventory (C
    & D) that does not meet the advertiser's performance goals.**

The main issue is that the **Optimize to a predicted CPA goal** buying
strategy prices inventory based on historical performance and **your
cost, not the advertiser's**. As a result, you end up buying inventory
that's cheap for you but disappointing to your advertiser.

A better strategy would find inventory that:

1.  is priced cheaply enough to make your desired margin ($0.80 CPM in
    this example), and
2.  still meets your advertiser's goal.

**Performance Goals** helps do just that.

Now let's take a look at our four optimized sites again, but this time
buying with a CPA performance goal on the line item and an **Optimize to
% a margin of booked revenue** buying strategy.

The New Way - Using Performance Goals (recommended)

The Setup

<img
src="../images/using-performance-goals-with-cpm-booked-revenue/optimize_to_margin.png"
class="image" />

The Results

A, B, C, and D below represent the very same optimized sites, but this
time we're buying using Performance Goals on the line item.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001475__entry__55" class="entry">Site</th>
<th id="ID-00001475__entry__56" class="entry">Conversion Rate</th>
<th id="ID-00001475__entry__57" class="entry">Advertiser eCPA</th>
<th id="ID-00001475__entry__58" class="entry">Performance Goals Bid/No
Bid Decision</th>
<th id="ID-00001475__entry__59" class="entry">Bid</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001475__entry__55">A</td>
<td class="entry" headers="ID-00001475__entry__56">1 conversion per
2,500 imps</td>
<td class="entry" headers="ID-00001475__entry__57">$2.50</td>
<td class="entry" headers="ID-00001475__entry__58">Bid</td>
<td class="entry" headers="ID-00001475__entry__59">$0.80</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001475__entry__55">B</td>
<td class="entry" headers="ID-00001475__entry__56">1 conversion per
5,000 imps</td>
<td class="entry" headers="ID-00001475__entry__57">$5.00</td>
<td class="entry" headers="ID-00001475__entry__58">Bid</td>
<td class="entry" headers="ID-00001475__entry__59">$0.80</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001475__entry__55">C</td>
<td class="entry" headers="ID-00001475__entry__56">1 conversion per
7,500 imps</td>
<td class="entry" headers="ID-00001475__entry__57">$7.50</td>
<td class="entry" headers="ID-00001475__entry__58">No Bid</td>
<td class="entry" headers="ID-00001475__entry__59">---</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001475__entry__55">D</td>
<td class="entry" headers="ID-00001475__entry__56">1 conversion per
10,000 imps</td>
<td class="entry" headers="ID-00001475__entry__57">$10.00</td>
<td class="entry" headers="ID-00001475__entry__58">No Bid</td>
<td class="entry" headers="ID-00001475__entry__59">---</td>
</tr>
</tbody>
</table>

The performance goals bid decisioning **prevents you from buying
inventory that does not meet the advertiser's performance goal.**

The system can now allocate the budget from C & D towards buying more
impressions from A & B and/or learning on other sites that may be likely
to hit your performance goal.

Further troubleshooting to improve delivery

If you find that you are still not on track to deliver the full budget
for the advertiser, **performance goals give you a much greater degree
of control by enabling you to adjust either performance or your margin
to improve** **delivery.**

Trade Performance for Delivery

With the two fields in the Performance Goals section of line item setup,
you can easily increase your no-bid threshold while still tracking
revenue at your client's stated CPA or CPC goal. In this scenario, you
are making a strategic tradeoff between delivery and performance.

<img
src="../images/using-performance-goals-with-cpm-booked-revenue/performance_goals.png"
class="image" />

Trade Margin For Delivery

Adjusting the Optimize to a % margin of
booked revenue field on the campaign will allow you to increase
and decrease your bid price, changing your margin and also controlling
the price you're bidding for inventory.



Important:

You will soon be able to adjust your margin centrally on the line item
for all associated campaigns.



<img
src="../images/using-performance-goals-with-cpm-booked-revenue/margin.png"
class="image" />

By successfully managing tradeoffs between performance, margin and
delivery, you can manage your line item to meet your clients' goals
while also maximizing your margin.




