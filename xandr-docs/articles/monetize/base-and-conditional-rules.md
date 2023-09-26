---
Title : Base and Conditional Rules
Description : There are two different scenarios in which base and conditional rules
are applied:
1.  **Publisher ad quality**: Publisher base and conditional ad quality
---


# Base and Conditional Rules



There are two different scenarios in which base and conditional rules
are applied:

1.  **Publisher ad quality**: Publisher base and conditional ad quality
    rules give you the ability to determine which collection of ad
    quality settings you would like to apply to a particular impression
    based on attributes such as creative size, placement, or user
    frequency. The base rule, synonymous with the default rule, is used
    when no conditional rules exist, or when the existing conditional
    rules' targeting requirements are not met by an impression. At most,
    only two ad quality rules can apply. One of those two is the network
    rule, which always applies, and the other will be either the base or
    conditional rule. See
    <a href="working-with-publisher-ad-quality.html" class="xref">Working
    with Ad Quality</a> for details.
2.  **Publisher payment rules**: Payment rules represent a financial
    agreement between a network and a publisher. Publisher base and
    conditional payment rules are used by publishers to set this
    agreement at the impression level. See
    <a href="create-payment-rules.html" class="xref">Create Payment
    Rules</a> for details on setting up publisher payment rules.

Conditional Rules

A conditional rule has specific targeted settings (frequency, geography,
size, placements) that are used as requirements. If an impression does
not meet all of the specified requirements of the rule, that rule will
not be considered when determining how to pay the publisher.

You can establish priority settings for each of your conditional rules.
Priorities run from 1 (lowest priority) to 10 (highest priority).

Priority settings determine the order in which rules are reviewed and
eventually applied to impressions. For example, assume that you have an
impression that was served in South Carolina. The conditions of the
impression will be reviewed against the conditions of the rules,
starting with the highest priority.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002577__entry__1" class="entry">Conditional Rule</th>
<th id="ID-00002577__entry__2" class="entry">Priority</th>
<th id="ID-00002577__entry__3" class="entry">Geotargeting
Requirement</th>
<th id="ID-00002577__entry__4" class="entry">Match All Targeting
Criteria?</th>
<th id="ID-00002577__entry__5" class="entry">Apply Rule?</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00002577__entry__1">Conditional Rule
1</td>
<td class="entry" headers="ID-00002577__entry__2">9</td>
<td class="entry" headers="ID-00002577__entry__3">Florida</td>
<td class="entry" headers="ID-00002577__entry__4">No</td>
<td class="entry" headers="ID-00002577__entry__5">No</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002577__entry__1">Conditional Rule
2</td>
<td class="entry" headers="ID-00002577__entry__2">8</td>
<td class="entry" headers="ID-00002577__entry__3">Georgia</td>
<td class="entry" headers="ID-00002577__entry__4">No</td>
<td class="entry" headers="ID-00002577__entry__5">No</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002577__entry__1">Conditional Rule
3</td>
<td class="entry" headers="ID-00002577__entry__2">6</td>
<td class="entry" headers="ID-00002577__entry__3">South Carolina</td>
<td class="entry" headers="ID-00002577__entry__4">YES</td>
<td class="entry" headers="ID-00002577__entry__5">YES</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002577__entry__1">Conditional Rule
4</td>
<td class="entry" headers="ID-00002577__entry__2">5</td>
<td class="entry" headers="ID-00002577__entry__3">North Carolina</td>
<td class="entry" headers="ID-00002577__entry__4">Not checked</td>
<td class="entry" headers="ID-00002577__entry__5">N/A</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002577__entry__1">Conditional Rule
5</td>
<td class="entry" headers="ID-00002577__entry__2">2</td>
<td class="entry" headers="ID-00002577__entry__3">Virginia</td>
<td class="entry" headers="ID-00002577__entry__4">Not checked</td>
<td class="entry" headers="ID-00002577__entry__5">N/A</td>
</tr>
</tbody>
</table>

The impression is checked against the criteria of **Conditional Rule 1**
(highest priority) and finds that it does not match, so it goes to
**Conditional Rule 2** (next by priority). That is not a match, so the
check proceeds to **Conditional Rule 3**, which matches, so that rule is
applied.



Important: Only one rule can apply to a
served impression. The highest priority conditional rule that matches
the targeting of the impression will apply. All conditional rules with
the same priority are reviewed; when multiple rules with the same
priority all meet the impression conditions, a selection as to which
rule will be used is made at random.



As a general guideline, rules with a higher number of conditions should
be assigned a higher priority, especially if there are matching
conditions in multiple rules, to ensure that the most detailed rule is
applied to the impression. Assume you have an impression that was served
in South Carolina, was seen 12 times on that platform, and is 120x600 in
size.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002577__entry__31" class="entry">Conditional Rule</th>
<th id="ID-00002577__entry__32" class="entry">Priority</th>
<th id="ID-00002577__entry__33" class="entry">Geotargeting
Requirement</th>
<th id="ID-00002577__entry__34" class="entry">Frequency</th>
<th id="ID-00002577__entry__35" class="entry">Match All Targeting
Criteria?</th>
<th id="ID-00002577__entry__36" class="entry">Apply Rule?</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00002577__entry__31">Conditional Rule
6</td>
<td class="entry" headers="ID-00002577__entry__32">9</td>
<td class="entry" headers="ID-00002577__entry__33">South Carolina</td>
<td class="entry" headers="ID-00002577__entry__34">None</td>
<td class="entry"
headers="ID-00002577__entry__35"><strong>YES</strong></td>
<td class="entry"
headers="ID-00002577__entry__36"><strong>YES</strong></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002577__entry__31">Conditional Rule
7</td>
<td class="entry" headers="ID-00002577__entry__32">8</td>
<td class="entry" headers="ID-00002577__entry__33">Georgia</td>
<td class="entry" headers="ID-00002577__entry__34">10-15 times</td>
<td class="entry" headers="ID-00002577__entry__35">No</td>
<td class="entry" headers="ID-00002577__entry__36">No</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002577__entry__31">Conditional Rule
8</td>
<td class="entry" headers="ID-00002577__entry__32">6</td>
<td class="entry" headers="ID-00002577__entry__33">South Carolina</td>
<td class="entry" headers="ID-00002577__entry__34">10-15 times</td>
<td class="entry" headers="ID-00002577__entry__35"><strong>Not
Checked</strong></td>
<td class="entry" headers="ID-00002577__entry__36"><strong>Not
Checked</strong></td>
</tr>
</tbody>
</table>

In this situation, two rules (**Conditional Rule 6** and **Conditional
Rule 8**) match the impression. However, because **Conditional Rule 6**
has a higher priority, any impression served in South Carolina will
follow this rule, regardless of the frequency or dimension values.

See <a href="create-payment-rules.html" class="xref">Create Payment
Rules</a> for more information.

Base Rules

It is possible that none of the conditions of the impression meet the
criteria of any conditional rules for a publisher. In that case,
Monetize defaults to the base rule. For example,
assume that you have an impression that was served in Utah.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002577__entry__55" class="entry">Conditional Rule</th>
<th id="ID-00002577__entry__56" class="entry">Priority</th>
<th id="ID-00002577__entry__57" class="entry">Geotargeting
Requirement</th>
<th id="ID-00002577__entry__58" class="entry">Match All Targeting
Criteria?</th>
<th id="ID-00002577__entry__59" class="entry">Apply Rule?</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00002577__entry__55">Conditional Rule
9</td>
<td class="entry" headers="ID-00002577__entry__56">9</td>
<td class="entry" headers="ID-00002577__entry__57">Florida</td>
<td class="entry" headers="ID-00002577__entry__58">No</td>
<td class="entry" headers="ID-00002577__entry__59">No</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002577__entry__55">Conditional Rule
10</td>
<td class="entry" headers="ID-00002577__entry__56">8</td>
<td class="entry" headers="ID-00002577__entry__57">Georgia</td>
<td class="entry" headers="ID-00002577__entry__58">No</td>
<td class="entry" headers="ID-00002577__entry__59">No</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002577__entry__55">Conditional Rule
11</td>
<td class="entry" headers="ID-00002577__entry__56">6</td>
<td class="entry" headers="ID-00002577__entry__57">South Carolina</td>
<td class="entry" headers="ID-00002577__entry__58">No</td>
<td class="entry" headers="ID-00002577__entry__59">No</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002577__entry__55">Conditional Rule
12</td>
<td class="entry" headers="ID-00002577__entry__56">5</td>
<td class="entry" headers="ID-00002577__entry__57">North Carolina</td>
<td class="entry" headers="ID-00002577__entry__58">No</td>
<td class="entry" headers="ID-00002577__entry__59">No</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002577__entry__55">Conditional Rule
13</td>
<td class="entry" headers="ID-00002577__entry__56">2</td>
<td class="entry" headers="ID-00002577__entry__57">Virginia</td>
<td class="entry" headers="ID-00002577__entry__58">No</td>
<td class="entry" headers="ID-00002577__entry__59">No</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002577__entry__55">Base Rule</td>
<td class="entry" headers="ID-00002577__entry__56">1 (default)</td>
<td class="entry" headers="ID-00002577__entry__57">(No Criteria)</td>
<td class="entry" headers="ID-00002577__entry__58">(No Comparison)</td>
<td class="entry"
headers="ID-00002577__entry__59"><strong>YES</strong></td>
</tr>
</tbody>
</table>

In this situation, Monetize was unable to match
the impression criteria to any existing conditional rules, so the base
rule (which has no conditions) is applied.



Important: The use of geo targeting by
state is only one condition used as an example. You could substitute
placement, size, or frequency conditions and get the same result.



Related Topics

- <a href="working-with-payment-rules.html" class="xref">Working with
  Payment Rules</a>
- <a href="create-payment-rules.html" class="xref">Create Payment
  Rules</a>
- <a href="working-with-publisher-ad-quality.html" class="xref">Working
  with Ad Quality</a>




