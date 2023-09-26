---
Title : Create an Advertiser
Description : Creating an advertiser object is the first step before you can start
running ad campaigns and serving creatives on behalf of an advertiser.
---


# Create an Advertiser



Creating an advertiser object is the first step before you can start
running ad campaigns and serving creatives on behalf of an advertiser.

Step 1. Start a New Advertiser

On the Advertisers screen, click the
+ New button.

This opens the Create New Advertiser
screen, where you define all relevant details for your advertiser.



Tip: You can expand or collapse each
section of the screen. To expand or collapse all sections at once, click
the Expand All or
Collapse All link in the upper right.



Step 2. Fill Out Basic Setup

In the Basic Setup section, enter the
basic details for the advertiser.

- **Name** - Enter the advertiser's name.

- **External Code** - If you want to report on the advertiser using an
  external code (rather than the internal ID that
  Xandr assigns automatically), enter the code
  here.

- **State** - Set the state of the advertiser. "Active" means child
  insertion orders and line items will be eligible to serve. To avoid
  accidental spending, you should set the state to "Inactive" until
  everything related to the buy has been set up and verified.

- **Time Zone** - Select the advertiser's time zone.
  

  Note: To apply a time zone change to
  child objects, make sure the checkbox is selected. If it is not
  selected, the time zone change made to the advertiser will not apply
  to its child objects, resulting in a child object's budget being reset
  to a different time zone than the advertiser.

  

- **Currency** - Select the currency for the advertiser. Typically, this
  defines the billing currency. This currency will be assigned to all
  new insertion orders and line items under the advertiser unless a
  different currency is set on the insertion order or line item level.
  For more information, see
  <a href="currency-support.html" class="xref">Currency Support</a>.

- **Political Advertising** - If you are releasing advertisements
  related to an election, ballot initiative, or political candidate in
  the United States, you must specify that here. You must also certify
  that all such advertising has been paid for, or will be paid for, with
  U.S. currency from financial institutions in the United States, and
  that no portion of the payment is provided by foreign nationals or
  foreign principals

  If you select I'm running political
  advertising on all IOs under this advertiser, then all
  insertion orders will have the
  Political Advertising section
  enabled by default. You can optionally disable this on an individual
  insertion order.

  If you select Use political advertising
  details template, then all insertion orders with political
  advertising enabled will automatically use the political advertising
  details from the template you will create on the insertion order. You
  can optionally modify these details on an individual insertion order.

  You will be asked to specify more details about your political
  advertisements when you
  <a href="create-an-insertion-order.html" class="xref">Create an
  Insertion Order</a>. For more information about political advertising,
  see <a href="political-advertising.html" class="xref">Political
  Advertising</a>.

Step 3. Create a Political Advertising Details Template (Optional)



Note: The Political Advertising Details
Template is only enabled when you have specified that you are running
political advertising and that you would like to create a political
advertising details template.



The political advertising details entered here will automatically
populate all new political advertising insertion orders that require
this information. You can modify the details for an individual insertion
order at any time. You must still certify that the details you have
entered are correct for each individual insertion order.

What you enter here will not affect any insertion orders that have
already been created.



Tip: Templates are typically used when
all or most of your political advertising is paid for by a single
political organization.







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

<table id="ID-00001668__d21e123" class="table frame-all">
<caption><span class="table--title-label">Table 1. <span
class="title">Political Organization Details</caption>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00001668__d21e123__entry__1" class="entry">Field Name</th>
<th id="ID-00001668__d21e123__entry__2" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001668__d21e123__entry__1"><span
class="ph uicontrol">Subject of the Ads</td>
<td class="entry" headers="ID-00001668__d21e123__entry__2">The candidate
or ballot initiative that is supported or opposed.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001668__d21e123__entry__1"><span
class="ph uicontrol">Payment Method</td>
<td class="entry" headers="ID-00001668__d21e123__entry__2">How the
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
<td class="entry" headers="ID-00001668__d21e123__entry__1"><span
class="ph uicontrol">U.S. FEC ID</td>
<td class="entry" headers="ID-00001668__d21e123__entry__2">Optional. ID
number assigned by the <a href="http://fec.gov" class="xref"
target="_blank">U.S. Federal Election Committee</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001668__d21e123__entry__1"><span
class="ph uicontrol">Organization Name</td>
<td class="entry" headers="ID-00001668__d21e123__entry__2">Name of the
person, group, organization, or business that is paying you to advertise
on Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001668__d21e123__entry__1"><span
class="ph uicontrol">Address</td>
<td class="entry" headers="ID-00001668__d21e123__entry__2">Address of
the person, group, organization, or business that is advertising.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001668__d21e123__entry__1"><span
class="ph uicontrol">City</td>
<td class="entry" headers="ID-00001668__d21e123__entry__2">City of the
person, group, organization, or business that is advertising.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001668__d21e123__entry__1"><span
class="ph uicontrol">State, Province, or Region</td>
<td class="entry" headers="ID-00001668__d21e123__entry__2">State,
province, or region of the person, group, organization, or business that
is advertising.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001668__d21e123__entry__1"><span
class="ph uicontrol">ZIP or Postal Code</td>
<td class="entry" headers="ID-00001668__d21e123__entry__2">ZIP or postal
code of the person, group, organization, or business that is
advertising.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001668__d21e123__entry__1"><span
class="ph uicontrol">Country</td>
<td class="entry" headers="ID-00001668__d21e123__entry__2">Country of
the person, group, organization, or business that is advertising.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001668__d21e123__entry__1"><span
class="ph uicontrol">Phone</td>
<td class="entry" headers="ID-00001668__d21e123__entry__2">Phone number
of the person, group, organization, or business that is
advertising.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001668__d21e123__entry__1"><span
class="ph uicontrol">Independent Expenditure Committee</td>
<td class="entry" headers="ID-00001668__d21e123__entry__2">Select this
if any ads are being paid for by an independent expenditure committee: a
political committee that makes only independent expenditures; that is,
it spends money on political communications that expressly advocate the
election or defeat of a clearly identified candidate and does not
coordinate with a candidate, a candidate’s authorized committee, or an
agent of the candidate.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001668__d21e123__entry__1"><span
class="ph uicontrol">Treasurer Name</td>
<td class="entry" headers="ID-00001668__d21e123__entry__2">Treasurer for
the committee purchasing the ads, or the person whose role mostly
closely resembles a treasurer.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001668__d21e123__entry__1"><span
class="ph uicontrol">State Registration Form</td>
<td class="entry" headers="ID-00001668__d21e123__entry__2"><span
class="ph">New York and New Jersey require copies of state
registration forms from independent expenditure committees making
purchases. Creatives won't serve in those states until the form is
uploaded.</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 1.
<span class="title">Political Organization Details





Step 4. Enter Advanced Settings

In the Advanced Settings section,
enter any optional advanced settings that are useful.

- **Frequency & Recency** - Set caps for frequency (how many times a
  user may see ads from this advertiser) and/or recency (how much time
  must elapse before the user may see another ad from this advertiser).
  For more information, see
  <a href="frequency-and-recency-caps.html" class="xref"
  title="From the Audience &amp; Location Targeting section, you can apply frequency and recency caps to your line item to prevent overexposure by limiting how many (frequency) and how often (recency) creatives are shown to a user. You can use the Creative Frequency and Recency Report to view how often and how frequently users are viewing a specific advertiser&#39;s creatives.">Frequency
  and Recency Caps</a>.
- **Reporting Labels** - Associate a Salesperson, Account Manager, or
  Advertiser Type to the advertiser. This enables you to report on
  performance by these labels in Network
  reporting. For example, you might associate an Account Manager with
  each advertiser and then run a report grouped by Account Manager to
  find out which managers are responsible for which advertisers or
  compare advertiser performance across managers.
- **Billing Information** - Change the information that appears in
  advertiser and/or insertion order-specific invoices. By default, your
  member billing information will appear in the "Bill To" section of
  those invoices.
  - To show your advertiser's name and address in the "Bill To" section
    instead, complete the fields in the
    Billing Information section. The
    Billing Name field may contain a
    maximum of 50 characters.
  - To show just the advertiser's name with the member's address, enter
    the name but leave the rest of the fields blank. For more about
    receiving advertiser- and/or insertion order-specific invoices, see
    <a
    href="https://wiki.appnexus.com/display/finance/Understanding%2bYour%2bInvoice"
    class="xref" target="_blank">Understanding Your Invoice</a>.
    

    Tip: You may also choose to include
    a billing code on your insertion order-specific invoices. For more
    details, see
    <a href="create-an-insertion-order.html" class="xref">Create an
    Insertion Order</a>.

    
- **Brand Settings** - You can set a default brand and offer category to
  be assigned to all creatives added under this advertiser. If you
  submit a creative for Xandr audit, the audit
  team will validate and, when necessary, alter these settings.
- **Exclusions** - for publishers using
  Monetize's
  <a href="https://docs.xandr.com/bundle/seller-tag/page/seller-tag.html"
  class="xref" target="_blank">AST</a> - Managed publishers can conduct
  a single auction for multiple ad slots on a page. Competitive
  exclusions ensure that creatives from competitive brands (e.g., Coke
  and Pepsi) and competitive offer categories never serve alongside each
  other. You can define up to 25 brand exclusions and up to 25 offer
  category exclusions.
- **Insertion Orders** - Select this check box to ensure that all line
  items under this advertiser also have an insertion order (
  Advertiser
  \> Insertion Order \>
  Line Items). Insertion orders
  allow you to better represent your financial relationship with an
  advertiser. This check box must be selected if you want to use
  <a href="working-with-insertion-orders.html" class="xref">Working with
  Insertion Orders</a> and/or the
  <a href="augmented-line-items-ali.html" class="xref">Augmented Line
  Items (ALI)</a>.



Warning: Warning regarding preexisting
line items

If you select this option, and you have already created line items
before enabling this setting, those line items will stop spending. To
allow those line items to continue spending, create an insertion order
and associate them with it. All newly created line items will require an
insertion order.



Step 5. Save the Advertiser

To finish adding the advertiser to the platform, click the
Save button. On the Advertiser Details
screen, you can continue to set up more objects required to buy
inventory for the advertiser.

<div id="ID-00001668__section-3e9be725-8072-4d59-83df-69185430d381"
>

## Related Topic

- <a href="network-analytics-report.html" class="xref">Network Analytics
  Report</a>






