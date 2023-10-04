---
Title : Frequency and Recency Examples
Description : There may be instances where you want to combine frequency and recency
settings to provide an ideal user experience and minimize overexposure.
---


# Frequency and Recency Examples



There may be instances where you want to combine frequency and recency
settings to provide an ideal user experience and minimize overexposure.

<div id="frequency-and-recency-examples__section_346114a0-268c-4631-8d15-887de6dead65"
>

For example, you want to ensure that a user can see a creative a maximum
of 20 times in one month. However, you don't want them to see the
creative 20 times in one day and then never again for the rest of the
month, but instead you want to limit their exposure to a maximum of
eight impressions per week. In this case, you would set the frequency
cap to **20** impressions per **month** and **8** impressions per
**week**.

Assuming we start at the beginning of the month, it's possible for the
user to see the impression eight times the first week, eight times the
second week, four times the third week, and then never again for the
rest of that calendar month. This example assumes the user is seeing the
impression the maximum number of times specified. Depending on your
targeting and the user activity, these numbers could be distributed
differently. However, the maximums will not be exceeded.

<div id="frequency-and-recency-examples__p_7205695d-0319-4310-9c55-d75122674aad"
>

You can combine these frequency settings with recency settings to
further limit overexposure. In the preceding example, let's say you also
set a recency cap of one impression every two hours. The user would
still see a maximum of eight impressions per week, and all eight of
those could be shown in the first day. However, with the impression
being shown only once every two hours, it will be at least 14 hours
(starting from the time the first impression serves, which is considered
hour 0) before the user has reached the maximum exposure of eight
impressions for the week.



Note: If you don't set a frequency cap,
you can still set a recency cap. For example, you can set a recency cap
of one impression every three days. With no frequency settings, each
user can be shown an impression (at most) once every three days for the
entire budget period.







<div id="frequency-and-recency-examples__section_166a9ef2-3265-4ed0-b26f-ea5c7600d01c"
>

## Additional Frequency and Recency Examples

Here are some other examples that pertain specifically to frequency
capping:



Example 1

You have a line item with four creatives attached: A, B, C, D. Each
creative has a frequency cap of one impression per day, but the
insertion order has no frequency limit. User Bill fits the line items's
targeting parameters. He visits mysite.com and is shown creative A. Bill
then visits coolsite.com and is shown creative D, then C, and finally B.
When more than one creative is eligible, any one of them could be shown
randomly. At this point, there are no creatives left that meet frequency
eligibility and the line item does not serve to Bill again until the end
of the 24-hour period.

In this case, you may want to set recency caps at the insertion order or
line item level to prevent Bill from seeing creatives D, C, and B in one
visit to coolsite.com. Setting recency caps will spread out the delivery
of all creatives attached to this line item.





Example 2

Let's say each creative has a frequency cap of one impression per day,
but the line item has a frequency cap of two impressions per day. Bill
sees creative B and C (chosen at random) and the line item is maxed out
until the 24-hour window resets.





Example 3

<div id="frequency-and-recency-examples__p_eaf1288b-b2f4-42d0-903c-7dee76e1d6ef"
>

Bill fits the targeting for two line items (1 and 2). The line items
share some of the same creatives.



Note: Creative frequency applies to the
creative universally across every line item or
campaign that it is associated with.





<div id="frequency-and-recency-examples__p_1330e351-34d1-417f-bb11-1e0290f0842b"
>

Here are the frequency caps:

<table
id="frequency-and-recency-examples__table_c7c4ea0b-690b-47ce-a956-0a136a2096f0"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="frequency-and-recency-examples__table_c7c4ea0b-690b-47ce-a956-0a136a2096f0__entry__1"
class="entry">Line Item 1 / CPM= $1</th>
<th
id="frequency-and-recency-examples__table_c7c4ea0b-690b-47ce-a956-0a136a2096f0__entry__2"
class="entry">Frequency=3 impressions per day</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="frequency-and-recency-examples__table_c7c4ea0b-690b-47ce-a956-0a136a2096f0__entry__1">A</td>
<td class="entry"
headers="frequency-and-recency-examples__table_c7c4ea0b-690b-47ce-a956-0a136a2096f0__entry__2">1
impression per day</td>
</tr>
<tr class="even row">
<td class="entry"
headers="frequency-and-recency-examples__table_c7c4ea0b-690b-47ce-a956-0a136a2096f0__entry__1">B</td>
<td class="entry"
headers="frequency-and-recency-examples__table_c7c4ea0b-690b-47ce-a956-0a136a2096f0__entry__2">1
impression per day</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="frequency-and-recency-examples__table_c7c4ea0b-690b-47ce-a956-0a136a2096f0__entry__1">C</td>
<td class="entry"
headers="frequency-and-recency-examples__table_c7c4ea0b-690b-47ce-a956-0a136a2096f0__entry__2">1
impression per day</td>
</tr>
</tbody>
</table>

<table
id="frequency-and-recency-examples__table_275e1e58-9897-4282-a3df-84af334f1f17"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="frequency-and-recency-examples__table_275e1e58-9897-4282-a3df-84af334f1f17__entry__1"
class="entry">Line Item 2 / CPM=$2</th>
<th
id="frequency-and-recency-examples__table_275e1e58-9897-4282-a3df-84af334f1f17__entry__2"
class="entry">Frequency=1 impression per day</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="frequency-and-recency-examples__table_275e1e58-9897-4282-a3df-84af334f1f17__entry__1">A</td>
<td class="entry"
headers="frequency-and-recency-examples__table_275e1e58-9897-4282-a3df-84af334f1f17__entry__2">1
impression per day</td>
</tr>
<tr class="even row">
<td class="entry"
headers="frequency-and-recency-examples__table_275e1e58-9897-4282-a3df-84af334f1f17__entry__1">B</td>
<td class="entry"
headers="frequency-and-recency-examples__table_275e1e58-9897-4282-a3df-84af334f1f17__entry__2">1
impression per day</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="frequency-and-recency-examples__table_275e1e58-9897-4282-a3df-84af334f1f17__entry__1">C</td>
<td class="entry"
headers="frequency-and-recency-examples__table_275e1e58-9897-4282-a3df-84af334f1f17__entry__2">1
impression per day</td>
</tr>
<tr class="even row">
<td class="entry"
headers="frequency-and-recency-examples__table_275e1e58-9897-4282-a3df-84af334f1f17__entry__1">D</td>
<td class="entry"
headers="frequency-and-recency-examples__table_275e1e58-9897-4282-a3df-84af334f1f17__entry__2">1
impression per day</td>
</tr>
</tbody>
</table>



If there are no other advertisers bidding on Bill, the first impression
is won by LI 2, with its higher CPM. A creative is chosen at random, say
Creative A. Now LI 2 and Creative A are maxed out. On the next
impression, only LI 1 is eligible, and only Creatives B and C are still
eligible (Creative A having already served). Creative B is served.

This can get far more complex as you add line items, creatives, and more
nuanced frequency caps, such as "once per hour."





Example 4

Let's say you want to bid a CPM of $3 for the first time per day that a
user sees a creative ($1 for viewings 2 - 4, and $0.50 for any further
viewings). You can set up three identical line items with different CPMs
and frequency caps as follows:

<table
id="frequency-and-recency-examples__table_d5780bb5-0172-4f22-89b8-5aabb2a77224"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="frequency-and-recency-examples__table_d5780bb5-0172-4f22-89b8-5aabb2a77224__entry__1"
class="entry">Line Item 1</th>
<th
id="frequency-and-recency-examples__table_d5780bb5-0172-4f22-89b8-5aabb2a77224__entry__2"
class="entry">$3</th>
<th
id="frequency-and-recency-examples__table_d5780bb5-0172-4f22-89b8-5aabb2a77224__entry__3"
class="entry">CPM</th>
<th
id="frequency-and-recency-examples__table_d5780bb5-0172-4f22-89b8-5aabb2a77224__entry__4"
class="entry">1 impression per day</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="frequency-and-recency-examples__table_d5780bb5-0172-4f22-89b8-5aabb2a77224__entry__1">Line
Item 2</td>
<td class="entry"
headers="frequency-and-recency-examples__table_d5780bb5-0172-4f22-89b8-5aabb2a77224__entry__2">$1</td>
<td class="entry"
headers="frequency-and-recency-examples__table_d5780bb5-0172-4f22-89b8-5aabb2a77224__entry__3">CPM</td>
<td class="entry"
headers="frequency-and-recency-examples__table_d5780bb5-0172-4f22-89b8-5aabb2a77224__entry__4">3
impressions per day</td>
</tr>
<tr class="even row">
<td class="entry"
headers="frequency-and-recency-examples__table_d5780bb5-0172-4f22-89b8-5aabb2a77224__entry__1">Line
Item 3</td>
<td class="entry"
headers="frequency-and-recency-examples__table_d5780bb5-0172-4f22-89b8-5aabb2a77224__entry__2">$0.50</td>
<td class="entry"
headers="frequency-and-recency-examples__table_d5780bb5-0172-4f22-89b8-5aabb2a77224__entry__3">CPM</td>
<td class="entry"
headers="frequency-and-recency-examples__table_d5780bb5-0172-4f22-89b8-5aabb2a77224__entry__4">no
limit</td>
</tr>
</tbody>
</table>

On the first ad call, Line Item 1 will win the right to bid because it
has the highest CPM. On the second ad call, Line Item 1 will not be
eligible since it has reached its maximum frequency, so Line Item 2 will
win the right to bid. On the fifth ad call, Line Item 2 will not be
eligible, so Line Item 3 will win the right to bid.





<div id="frequency-and-recency-examples__section_mqd_nh1_nmb"
>

## Related Topics

- <a href="set-a-frequency-cap.html" class="xref"
  title="You can set frequency caps from the Audience &amp; Location Targeting section within the Create New Line Item and Edit Line Item screens.">Set
  a Frequency Cap</a>
- <a href="set-a-recency-cap.html" class="xref"
  title="You can set recency caps from the Audience &amp; Location Targeting section within the Create New Line Item and Edit Line Item screens.">Set
  a Recency Cap</a>






