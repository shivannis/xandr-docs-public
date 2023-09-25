---
Title : Create an Insertion Order
Description : Insertion orders enable you to better organize, track, and allocate
budget to your line items. Associating your line items with insertion
---


# Create an Insertion Order



Insertion orders enable you to better organize, track, and allocate
budget to your line items. Associating your line items with insertion
orders allows you to preserve historical pacing and performance data
across line items under a single insertion order, and to streamline your
setup for long-standing advertiser relationships.

For an overview of all buy-side objects, see the
<a href="object-hierarchy.md" class="xref">Object Hierarchy</a>.



## Create a New Insertion Order

1.  Click the Create New button from
    the Insertion Orders menu, then
    select the appropriate advertiser.

    You can also search for the advertiser if necessary.

2.  Fill out the basic setup, which includes information such as name
    and budget and billing details. For more information on these
    settings, see
    <a href="create-an-insertion-order.html#ID-000017f7__ID-0000185d"
    class="xref">Basic Setup</a>.
    1.  Enter a name for the insertion order and optionally enter an
        external code and/or a billing code.
    2.  Select a state.
        

        <b>Tip:</b> To avoid spending before
        you're ready, set the state to "Inactive" until everything
        related to the buy has been set up and verified.

        
    3.  Optionally, set a currency. If not set, the insertion order will
        inherit the advertiser's currency. You cannot change the
        currency after saving the insertion order.
        

        <b>Tip:</b> As a best practice, align
        currency to the billing currency in order to achieve the best
        possible local currency experience. See
        <a href="currency-support.md" class="xref">Currency Support</a>.

        
    4.  Select a viewability standard.
    5.  Select a budget type.
    6.  Optionally, set up billing periods and pacing. For more
        information, see <a
        href="create-an-insertion-order.html#ID-000017f7__p-b89b4063-87a7-423a-876f-af09460be03b"
        class="xref">Billing Periods</a> and <a
        href="create-an-insertion-order.html#ID-000017f7__p-44115d1e-ead2-4f95-a3bc-7ea05a1cc5b4"
        class="xref">Pacing</a>.
    7.  Optionally, enable political advertising on this insertion order
        and identify whether this advertising takes place on the federal
        or state or local level, or both. For more information, see
        <a href="create-an-insertion-order.html#ID-000017f7__ID-000018bb"
        class="xref">Political Advertising</a>.
        

        <b>Note:</b> This option will only
        appear if you have already declared that this advertiser
        conducts political advertising on the
        <a href="create-an-advertiser.md" class="xref">advertiser</a>.

        

3.  Set the supply strategy, determining the inventory type and
    inventory lists for targeting. These settings can be further refined
    on the line item. For more information, see
    <a href="inventory-lists-ali-only.md" class="xref">Inventory Lists</a>.
    1.  Select the inventory type: App &
        Web (the default), App
        Only (mobile inventory), or
        Web Only (standard websites
        and websites optimized for browsers on mobile devices).

    2.  Select an allowlist, or create one directly from the insertion
        order. This determines the inventory that may be targeted by any
        line items belonging to this insertion order.

        Allowlists include the Xandr Inventory
        List, a collection of inventory that
        Xandr has selected based on demonstrated
        demand interest within our marketplace and vetted via additional
        quality controls (as well as platform inventory quality
        filtering).

    3.  Select a blocklist, or create one directly from the insertion
        order. This determines which inventory will be excluded from
        targeting by line items belonging to this insertion order. The
        Xandr blocklist is applied by default.

4.  If this insertion order contains line items for political
    advertising, fill out the
    <a href="create-an-insertion-order.html#ID-000017f7__ID-000018bb"
    class="xref">Political Advertising</a> section.

5.  Optionally, set caps for frequency (how many times a user may see
    ads for this insertion order) and recency (how much time must elapse
    before a user may see another ad for this insertion order). For more
    information, see
    <a href="frequency-and-recency-caps.md" class="xref"
    title="From the Audience &amp; Location Targeting section, you can apply frequency and recency caps to your line item to prevent overexposure by limiting how many (frequency) and how often (recency) creatives are shown to a user. You can use the Creative Frequency and Recency Report to view how often and how frequently users are viewing a specific advertiser&#39;s creatives.">Frequency
    and Recency Caps</a>.
    

    <b>Important:</b> Frequency caps can also
    be set at the advertiser, line item, and creative levels. The most
    restrictive setting always takes precedence.

    

6.  Optionally, assign reporting labels. The labels (Trafficker, Sales
    Rep, and Insertion Order Type) will then appear in the
    <a href="network-analytics-report.md" class="xref">Member Analytics
    Report</a>. For more information, see
    <a href="reporting-labels.md" class="xref">Reporting Labels</a>.

7.  Optionally, associate existing augmented line items with the
    insertion order.
    

    <b>Important:</b> Any budget or
    impressions that occurred before the line item was associated to the
    insertion order do not count towards the lifetime budget of the
    insertion order.

    

8.  Optionally, add comments to the insertion order.

9.  Click Save to save the insertion
    order. Alternatively, click the arrow next to
    Save and select
    Save and Create Line Item to go
    directly to creating a line item associated with this insertion
    order.





## Basic Setup

In the Basic Setup section, you enter basic information about the
insertion order, such as its name and its budget and billing details.
Settings are:

Name

The name for the insertion order. You will later be able to search for
and report on the insertion order using this name.

External Code (optional)

An external code used for reporting. (Xandr also
assigns an internal code automatically.) The code may only contain
alphanumeric characters, periods, underscores or dashes. It is not
case-sensitive (upper- and lower-case characters are treated the same).

Billing Code (optional)

An internal billing code you want to appear on invoices for this
insertion order, if you receive insertion-order-specific invoices. For
details on invoices, see
<a href="understanding-your-invoice.md" class="xref"
title="Annotated descriptions of the contents of your Xandr invoices.">Understanding
Your Invoice</a>.

State

The state of the insertion order. If "Active", child line items and
campaigns will be eligible to serve.



<b>Tip:</b> To avoid spending before you're
ready, set the state to "Inactive" until everything related to the buy
has been set up and verified.



Currency



If not set, the insertion order will inherit the advertiser's currency.
You cannot change the currency after saving the insertion order.



<b>Tip:</b> As a best practice, align currency
to the billing currency in order to achieve the best possible local
currency experience. See
<a href="currency-support.md" class="xref">Currency Support</a>.





Viewability Standard

The viewability standard used for this insertion order. Defaults to
**IAB** (Internal Advertising Bureau). For more information, see
<a href="introduction-to-viewability.md" class="xref">Introduction to
Viewability</a>.

Budget Type

Determines whether the budget will be allocated by revenue (money) or by
impression. All billing periods must have the same budget type.



Select a budget type:

- Revenue - use to associate only
  revenue-based line items to this insertion order.
- Impression - use to associate only
  impression-based line items to this insertion order.
- Flexible - use to associate both
  impression-based and revenue-based line items to this insertion order.
  All budgets must be set on the line item object when using the
  Flexible budget type.





<b>Warning:</b> You cannot change the
Budget Type once you save the
insertion order.



Billing Periods

Billing periods allow you to allocate portions of your marketing budget
to discrete periods of time. You can associate an external code with a
billing period for reporting and invoicing.

You can also set billing periods (or flight dates) on augmented line
items, or copy the periods you have set on the insertion order to
augmented line items already associated with the insertion order. Any
line item flight dates must occur within the dates of the parent
insertion order's billing periods.

- **Dates**

  You may set both a start and an end date (**Set Dates**) or set a
  start date without an end date (**No Dates**). If you select
  No End Date, you can only create a
  single billing period on the insertion order, but you may still
  specify multiple flights with end dates on the line item. If you
  select Set Dates, you can create up
  to 52 billing periods.

- **Budgets**

  You may set a budget for each billing period (**Set Budgets**) or not
  specify a budget (**Unlimited Budget**). If you do not specify a
  budget at the insertion order level, you can still specify budgets on
  the line item.

  

  <b>Important:</b>
  - You cannot set a start date in the past.
  - Once you have saved an insertion
    order with **Set Dates** or No End
    Date, or Set Budget or
    Unlimited Budget, these settings
    cannot be changed.

  

Pacing

Pacing determines how quickly budget is spent over the lifetime of the
insertion order.

Options are:

- **Base daily allocation on average of remaining billing period
  budget**- Automatically divide your remaining budget evenly across the
  remaining days in the billing period. Use the slider to adjust the
  percentage of the daily average allocation as necessary. This option
  is only available if the insertion order has both a billing period end
  date and a budget.

- **Set pacing on the Line Item**

  

  <b>Warning:</b> If you select this option,
  be sure to set your budget pacing on the line
  item level. Otherwise, severe overspend can occur.

  

- **Use Daily Budget**- Set a custom daily budget to define your own
  pacing.

  

  <b>Important:</b>
  You can set budgets at the line item level,
  but your insertion order budget takes precedence. When your insertion
  order budget runs out, all objects under the insertion order will stop
  buying impressions, whether or not they have reached their own budget
  limits.

  





## Political Advertising



<b>Note:</b> This section will only appear if
you have already declared that this insertion order will conduct
political advertising in its Basic
Setup section.







## Political Organization Details



This section contains the details of the person or organization that is
purchasing ads on Xandr. For example, a
candidate, an agency, or a political consultant.

The required fields must be filled out for any state or local political
advertising that will or could serve in California,
Illinois, Maryland, Nevada, New Jersey, New York, Virginia, or
Washington, or for political advertising at the federal level
that will or could serve in Washington State. If
your political ad will not be served in any of those states, you may
enter "N/A”. For more information on political
advertising, see
<a href="../snippets/../topics/political-advertising.html"
class="xref">Political Advertising</a>.

We reserve the right to implement additional screening at any time.

<table id="ID-000017f7__d30e123" class="table frame-all">
<caption><span class="table--title-label">Table 1. <span
class="title">Political Organization Details</caption>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000017f7__d30e123__entry__1" class="entry">Field Name</th>
<th id="ID-000017f7__d30e123__entry__2" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000017f7__d30e123__entry__1"><span
class="ph uicontrol">Subject of the Ads</td>
<td class="entry" headers="ID-000017f7__d30e123__entry__2">The candidate
or ballot initiative that is supported or opposed.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000017f7__d30e123__entry__1"><span
class="ph uicontrol">Payment Method</td>
<td class="entry" headers="ID-000017f7__d30e123__entry__2">How the
political organization pays you. Options are:
<ul>
<li>Bank account (direct deposit)
</li>
<li>Check </li>
<li>Credit or debit card </li>
<li>Other. If this is selected, you
must specify details.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000017f7__d30e123__entry__1"><span
class="ph uicontrol">U.S. FEC ID</td>
<td class="entry" headers="ID-000017f7__d30e123__entry__2">Optional. ID
number assigned by the <a href="http://fec.gov" class="xref"
target="_blank">U.S. Federal Election Committee</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000017f7__d30e123__entry__1"><span
class="ph uicontrol">Organization Name</td>
<td class="entry" headers="ID-000017f7__d30e123__entry__2">Name of the
person, group, organization, or business that is paying you to advertise
on Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000017f7__d30e123__entry__1"><span
class="ph uicontrol">Address</td>
<td class="entry" headers="ID-000017f7__d30e123__entry__2">Address of
the person, group, organization, or business that is advertising.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000017f7__d30e123__entry__1"><span
class="ph uicontrol">City</td>
<td class="entry" headers="ID-000017f7__d30e123__entry__2">City of the
person, group, organization, or business that is advertising.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000017f7__d30e123__entry__1"><span
class="ph uicontrol">State, Province, or Region</td>
<td class="entry" headers="ID-000017f7__d30e123__entry__2">State,
province, or region of the person, group, organization, or business that
is advertising.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000017f7__d30e123__entry__1"><span
class="ph uicontrol">ZIP or Postal Code</td>
<td class="entry" headers="ID-000017f7__d30e123__entry__2">ZIP or postal
code of the person, group, organization, or business that is
advertising.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000017f7__d30e123__entry__1"><span
class="ph uicontrol">Country</td>
<td class="entry" headers="ID-000017f7__d30e123__entry__2">Country of
the person, group, organization, or business that is advertising.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000017f7__d30e123__entry__1"><span
class="ph uicontrol">Phone</td>
<td class="entry" headers="ID-000017f7__d30e123__entry__2">Phone number
of the person, group, organization, or business that is
advertising.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000017f7__d30e123__entry__1"><span
class="ph uicontrol">Independent Expenditure Committee</td>
<td class="entry" headers="ID-000017f7__d30e123__entry__2">Select this
if any ads are being paid for by an independent expenditure committee: a
political committee that makes only independent expenditures; that is,
it spends money on political communications that expressly advocate the
election or defeat of a clearly identified candidate and does not
coordinate with a candidate, a candidate’s authorized committee, or an
agent of the candidate.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000017f7__d30e123__entry__1"><span
class="ph uicontrol">Treasurer Name</td>
<td class="entry" headers="ID-000017f7__d30e123__entry__2">Treasurer for
the committee purchasing the ads, or the person whose role mostly
closely resembles a treasurer.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000017f7__d30e123__entry__1"><span
class="ph uicontrol">State Registration Form</td>
<td class="entry" headers="ID-000017f7__d30e123__entry__2"><span
class="ph">New York and New Jersey require copies of state
registration forms from independent expenditure committees making
purchases. Creatives won't serve in those states until the form is
uploaded.</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 1.
<span class="title">Political Organization Details





You must check I certify that all information
provided herein is accurate and up to date, and acknowledge and agree
that Xandr is
relying on the accuracy of this information. before you can save
the insertion order.



## Related Topics

- <a href="view-insertion-order-details.md" class="xref"
  title="The Insertion Order Details screen displays settings for a specific insertion order, essential metrics, and performance visualizations.">View
  Insertion Order Details</a>
- <a href="create-an-advertiser.md" class="xref">Create an
  Advertiser</a>
- <a href="create-an-augmented-line-item-ali.md" class="xref"
  title="You create augmented line items (ALIs) to define your financial relationship with an advertiser, set up targeting for an advertising campaign, and schedule your advertisements to run.">Create
  an Augmented Line Item</a>
- <a href="augmented-line-items-ali.md" class="xref">Augmented Line
  Items (ALI)</a>
- <a href="buy-side-targeting.md" class="xref">Buy-Side Targeting</a>
- <a href="basic-buy-side-setup-procedures.md" class="xref">Basic
  Buy-side Setup Procedures</a>
- <a href="political-advertising.md" class="xref">Political
  Advertising</a>






