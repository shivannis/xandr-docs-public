---
Title : Inventory Forecasting Services
Description : <b>Note:</b> Inventory Forecasting Services
ms.date: 10/28/2023
ms.custom: digital-platform-api
are available only to Xandr Ad Server customers.
---


# Inventory Forecasting Services





<b>Note:</b> Inventory Forecasting Services
are available only to Xandr Ad Server customers.



For a publisher to commit to delivering against an advertiser's budget,
that publisher needs a way to forecast how much inventory is available
for the advertiser to buy. In addition, the publisher needs a way to
discover *inventory contention.* Inventory contention occurs when there
are multiple guaranteed line items competing for the same inventory.
Understanding contention is important so the publisher can make
prioritization decisions when conflicts occur.

The API services described on this page are designed to help you learn
about inventory availability and contention. <a
href="inventory-forecasting-services.md#ID-00001db9__inventory-forecasting-services-forecast-inventory-multi-service"
class="xref">Forecast Inventory-Multi Service</a> and <a
href="inventory-forecasting-services.md#ID-00001db9__inventory-forecasting-services-forecast-contention-multi-services"
class="xref">Forecast Contention-Multi Service</a> are fully supported
services.



<b>Note:</b> The Inventory Forecasting
Services support both legacy guaranteed delivery line items (GDLI) and
guaranteed delivery augmented line items (GDALI). The following will
help you make proper forecasting requests for these different line item
types:

- **Legacy GDLIs**
  - Legacy GDLIs support campaigns, but do not support splits.
  - If you do not have multiple child campaigns, pass an empty array (
    `campaigns: [ ]` )
  - For more information, see <a
    href="monetize_monetize-standard/using-multiple-campaigns-with-a-guaranteed-line-item.md"
    class="xref" target="_blank">Using Multiple Campaigns with a Guaranteed
    Line Item</a>.
- **GDALIs**
  - GDALIs support splits, but do not support campaigns.
  - When you include split details in your request, you can use the
    query string parameter `split_breakout=true` to return a forecast
    broken down by individual splits as well as the line item as a
    whole.
  - The  GDALI UI uses Inventory Forecasting
    Services for its **Forecasting Footer** (for more information, see
    the "Forecasting" section in <a
    href="monetize_monetize-standard/create-a-guaranteed-delivery-line-item-gdali.md"
    class="xref" target="_blank">Create a Guaranteed Delivery Augmented Line
    Item</a>).





## Forecast Inventory-Multi Service

**REST API**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001db9__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001db9__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001db9__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__2"><a
href="https://api.appnexus.com/forecast-inventory-multi" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/forecast-inventory-multi</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__3">Run
an inventory forecast using a hypothetical profile.

<b>Note:</b> The Forecast Inventory-Multi
Service only supports <code class="ph codeph">POST</code> calls.
</td>
</tr>
</tbody>
</table>

**Query String Parameters**

Use the query string parameters shown in the table below to tune the
output. For Legacy GDLI and GDALI usage, see examples below.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001db9__entry__7"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001db9__entry__8"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__7"><code
class="ph codeph">priority</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__8">When
passed on the query string in the form <code
class="ph codeph">priority=x</code>, inventory from lower priority line
items will be displaced and considered available.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__7"><code
class="ph codeph">roadblocking_enabled</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__8">This
field specifies whether multiple ad sizes are grouped together in a
roadblock. When passed as <code
class="ph codeph">roadblocking_enabled=true</code>, two or more ad sizes
are required to be passed in the <code
class="ph codeph">size_targets</code> array of the profile. For
page-level roadblocking, you must include the master creative sizes in
the <code class="ph codeph">roadblock</code> object under <code
class="ph codeph">line_item</code>. For more information about
roadblocking, see <a
href="monetize_monetize-standard/target-your-inventory-with-roadblocking.md"
class="xref" target="_blank">Target Your Inventory with
Roadblocking</a>.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__7"><code
class="ph codeph">competitive_exclusions_enabled</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__8">If
this field is passed in you must also pass <code
class="ph codeph">advertiser_id</code>, <code
class="ph codeph">creative_id</code>, or both. For more information
about competitive exclusions, see <a
href="monetize_monetize-standard/competitive-exclusions.md"
class="xref" target="_blank">Competitive Exclusions</a>.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__7"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__8">When
<code class="ph codeph">competitive_exclusions_enabled=true</code> is
passed, you should also pass in this field with the advertiser ID whose
creatives have competing brands or offer categories, and therefore
should not be included in the resulting forecast. For more information
about competitive exclusions, see <a
href="monetize_monetize-standard/competitive-exclusions.md"
class="xref" target="_blank">Competitive Exclusions</a>.
<p><strong>Required</strong>: No, unless <code
class="ph codeph">competitive_exclusions_enabled</code> is also passed
in the query string.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__7"><code
class="ph codeph">creative_id</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__8">When
<code class="ph codeph">competitive_exclusions_enabled=true</code> is
passed, you should also pass in this field with a creative ID that has
competing brands or offer categories, and therefore should not be
included in the resulting forecast. For more information about
competitive exclusions, see <a
href="monetize_monetize-standard/competitive-exclusions.md"
class="xref" target="_blank">Competitive Exclusions</a>.
<p><strong>Required</strong>: No, unless <code
class="ph codeph">competitive_exclusions_enabled</code> is also passed
in the query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__7"><code
class="ph codeph">line_item_exclusions</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__8">A
comma-separated list of line item IDs to exclude from the forecast.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__7"><code
class="ph codeph">viewability</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__8">When
set to true, the forecast will include only viewable impressions.
Viewable impressions are calculated based on historic data. Applies to
guaranteed delivery line items with a vCPM revenue type.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__7"><code
class="ph codeph">dynamic_timeout</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__8">The
number of tries (defaults to 1).
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__7"><code
class="ph codeph">dynamic_attempts</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__8">The
amount of time to wait for each trial (default is 2 minutes, minimum in
prod is 10 seconds).
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__7"><code
class="ph codeph">split_breakout</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__8">When <code
class="ph codeph">split_breakout=true</code> is passed you should also
pass split level details. This will return a forecast broken down by
individual splits as well as the line item as a whole.

<b>Note:</b> GDALIs support splits; Legacy
GDLIs do not support splits. 

<p><strong>Required</strong>: No</p></td>
</tr>
</tbody>
</table>

**JSON Fields**

**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001db9__entry__29"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001db9__entry__30"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001db9__entry__31"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__29"><code
class="ph codeph">line_item</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__30">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__31">The
flight dates and profile information associated with the line item
against which you want to forecast.
<p><strong>Required</strong>: Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__29"><code
class="ph codeph">campaigns</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__30">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__31">An
array of objects containing campaign information for the line item.

<b>Note:</b> Legacy GDLIs support campaigns;
GDALIs do not support campaigns. If your Legacy GDLI does not have
multiple child campaigns, pass an empty array ( <code
class="ph codeph">campaigns: []</code> ).  

<p><strong>Required</strong>: Yes for Legacy GDLIs, but can be empty.
Line items cannot have both campaigns and splits.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__29"><code
class="ph codeph">splits</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__30">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__31"> An
array of objects containing split information for the line item.

<b>Note:</b> GDALIs support splits; Legacy
GDLIs do not support splits. If your GDALI does not have splits, pass an
empty array ( <code class="ph codeph">splits: []</code> ). For more
information, see <a
href="splits-service.md"
class="xref" target="_blank">Splits Service</a>.

<p><strong> Required</strong>: Yes for GDALIs, but can be empty. Line
items cannot have both campaigns and splits.</p></td>
</tr>
</tbody>
</table>

**Line Item**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001db9__entry__41"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001db9__entry__42"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001db9__entry__43"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__41"><code
class="ph codeph">start_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__42">string </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__43">The
starting flight date.
<p><strong>Required</strong>: Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__41"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__42">string </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__43">The
end date of the flight. 
<p><strong>Required</strong>: Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__41"><code
class="ph codeph">timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__42">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__43">The
timezone for which the line item is active. See <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a> for details and accepted
values.
<p><strong>Required</strong>: No, If not specified, member default
timezone will be used.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__41"><code
class="ph codeph">profile</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__42">object </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__43">An
instance of the profile object. Use this object to define your targeting
for the line item. See <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for a list of available
fields. See <a
href="inventory-forecasting-services.md#ID-00001db9__inventory-forecasting-services-forecasting-profiles"
class="xref">Forecasting Profiles</a> below for profile settings that
are specific to forecasting.
<p>This field is required, but you can pass an empty object. However,
passing an empty profile means you're forecasting without applying any
targeting to your line item.</p>
<p><strong>Required</strong>: Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__41"><code
class="ph codeph">roadblock</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__42">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__43">The
roadblock settings for the line item.
<p><strong>Required</strong>: Yes, only if <code
class="ph codeph">roadblocking_enabled = true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__41"><code
class="ph codeph">creatives</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__42">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__43">The
creatives associated with the campaign. If you include creatives you
must include at least the creative ID. See <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> for a list and
descriptions of available fields.
<p><strong>Required</strong>: No</p></td>
</tr>
</tbody>
</table>

**Roadblock**

Roadblocks can be set on either the line item level or the campaign
level, but not both. If a roadblock has been set on a campaign, it can't
be set on the parent line item. Roadblocks can be applied only for
managed inventory and can't be enabled when you're working with
third-party inventory.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001db9__entry__62"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001db9__entry__63"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001db9__entry__64"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__62"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__63">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__64">The
type of roadblock. If you include the roadblock object, this field is
required. Possible values include:
<ul>
<li><code class="ph codeph">null</code>: There is no roadblocking set at
the line item level. (GDALI only)</li>
<li><code class="ph codeph">no_roadblock</code>: There is no
roadblocking set at the line item level. (Legacy GDLI only)</li>
<li><code class="ph codeph">normal_roadblock</code>: The line item
serves if the number of creatives is greater than or equal to the number
of ad slots available. (Legacy GDLI only)</li>
<li><code class="ph codeph">partial_roadblock</code>: The line item
serves when at least one creative of each size fits an eligible ad slot.
(GDALI &amp; Legacy GDLI)</li>
<li><code class="ph codeph">exact_roadblock</code>: The line item serves
when the number of creatives is equal to the number of ad slots
available. (Legacy GDLI only)</li>
</ul>

<b>Note:</b> For GDALIs, this value must be
either <code class="ph codeph">null</code> or <code
class="ph codeph">partial_roadblock.</code>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__62"><code
class="ph codeph">master_width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__63">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__64">The
width of the master creative. Set this value only when using page-level
roadblocking. For standard roadblocking, omit this field or set the
value to 0. (Do not set the value to null.)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__62"><code
class="ph codeph">master_height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__63">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__64">The
height of the master creative. Set this value only when using page-level
roadblocking. For standard roadblocking, omit this field or set the
value to 0. (Do not set the value to null.)</td>
</tr>
</tbody>
</table>

The master creative is the creative with a size matching
the `master_height` and `master_width` specified in the roadblock
object. If more than one creative matches that size, the system will
choose one as the master.

The master creative is used for page-level roadblocking, where one
impression is recorded for the full set of creatives delivered for the
roadblock. That recorded impression is based on the master creative.
This means that if the master creative doesn't serve, no impression will
be recorded. If you want to use creative-level roadblocking, where each
creative delivered is counted as an impression, leave
the `master_width` and `master_height` values blank.

For more on roadblocking, see <a
href="monetize_monetize-standard/target-your-inventory-with-roadblocking.md"
class="xref" target="_blank">Target Your Inventory with Roadblocking</a>.

**Campaigns**



<b>Note:</b> Legacy GDLIs support campaigns;
GDALIs do not support campaigns.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001db9__entry__74"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001db9__entry__75"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001db9__entry__76"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__74"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__75">string </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__76">The
name of the campaign. You can forecast on multiple campaigns within a
single line item, so the name must be unique within each line item.
<p><strong>Required</strong>: Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__74"><code
class="ph codeph">profile</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__75">object </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__76">An
instance of the profile object. Use this object to define your targeting
for the campaign. See <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for a list and
descriptions of available fields. See <a
href="inventory-forecasting-services.md#ID-00001db9__inventory-forecasting-services-forecasting-profiles"
class="xref">Forecasting Profiles</a> below for profile settings that
are specific to forecasting.
<p><strong>Required</strong>: Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__74"><code
class="ph codeph">start_date </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__75">string </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__76">The
starting date of the campaign. 
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__74"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__75">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__76">The
ending date of the campaign.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__74"><code
class="ph codeph">timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__75">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__76">The
timezone for which the line item is active. See <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a> for details and accepted
values.
<p><strong>Required</strong>: No, If not specified, member default
timezone will be used.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__74"><code
class="ph codeph">creatives</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__75">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__76">The
creatives associated with the campaign. If you include creatives you
must include at least the creative ID. See <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> for a list and
descriptions of available fields.
<p><strong>Required</strong>: No</p></td>
</tr>
</tbody>
</table>

**Forecasting Profiles**

You can define the targeting requirements for your forecast by using the
<a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> on the line item and
the campaign. However, there are some differences in how you need to
define some of the fields for forecasting as opposed to other types of
targeting specifications.

**postal_code_targets**

The fields for the `postal_code_targets` object in the `profile` service
are defined in the <a
href="postal-code-service.md"
class="xref" target="_blank">Postal Code Service</a>. If you want to
forecast based on postal codes, you *must* provide the following
information:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001db9__entry__95"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001db9__entry__96"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001db9__entry__97"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__95"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__96">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__97">The
postal code can be an alphanumeric string of up to 14 characters and can
contain a space or hyphen.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__95"><code
class="ph codeph">country_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__96">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__97">The
<a href="https://www.maxmind.com/en/iso3166" class="xref"
target="_blank">ISO code</a> for the country to which the city belongs.
You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country codes.</td>
</tr>
</tbody>
</table>

**Example**

**Expand source**

``` pre
"postal_code_targets":[  
        {
                "code": "02692",
                "country_id": "59"
        },
        {
                "code": "83712",
                "country_id": "233"
        }
]
```

**Legacy GDLI Example - Checking Inventory Availability for Legacy GDLIs
with Multiple Campaigns**

To see an inventory availability forecast across multiple child
campaigns based on proposed targeting, create a JSON file in the format
shown here:

``` pre
{
  "line_item": {
    "start_date": "2019-02-10",
    "end_date": "2019-03-01",
    "profile": {
      "country_targets": [
        {
          "id": 169
        }
      ],
      "country_action": "include"
    }
  },
  "campaigns": [
    {
      "name": "foo",
      "start_date": "2019-02-11",
      "end_date": "2019-02-15",
      "profile": {
        "daypart_targets": [
          {
            "day": "tuesday",
            "start_hour": 8,
            "end_hour": 20
          }
        ]
      }
    },
    {
      "name": "bar",
      "start_date": "2019-02-20",
      "end_date": "2019-02-28",
      "profile": {
        "browser_targets": [
          {
            "id": 11
          }
        ],
        "browser_action": "include"
      }
    }
  ]
}
```

If you do not have multiple campaigns, simply pass in an empty array for
campaigns:

``` pre
{
  "line_item": {
    "start_date": "2019-02-10",
    "end_date": "2019-03-01",
    "profile": {
      "country_targets": [
        {
          "id": 169
        }
      ],
      "country_action": "include"
    }
  },
  "campaigns": [
  ]
}
```

Then `POST` it to the service as follows:

``` pre
$ curl --silent  -b cookies -X POST -d '@/tmp/forecast-inventory-multi.json' "https://api.appnexus.com/forecast-inventory-multi"
```

You'll get back JSON in the following format:

``` pre
{
   "response" : {
      "start_element" : 0,
      "inventory" : [
         {
            "daily_detail" : [
               {
                  "end_date" : "2019-02-11",
                  "available" : 0,
                  "capacity" : 0,
                  "days_in_forecast" : 0,
                  "start_date" : "2019-02-11"
               },
               {
                  "available" : 0,
                  "capacity" : 0,
                  "end_date" : "2019-02-12",
                  "days_in_forecast" : 0,
                  "start_date" : "2019-02-12"
               },
               {
                  "end_date" : "2019-02-13",
                  "available" : 0,
                  "capacity" : 0,
                  "days_in_forecast" : 0,
                  "start_date" : "2019-02-13"
               },
               {
                  "end_date" : "2019-02-14",
                  "capacity" : 0,
                  "available" : 0,
                  "start_date" : "2019-02-14",
                  "days_in_forecast" : 0
               },
               {
                  "available" : 118759,
                  "capacity" : 126738,
                  "end_date" : "2019-02-15",
                  "days_in_forecast" : 0,
                  "start_date" : "2019-02-15"
               },
               {
                  "days_in_forecast" : 0,
                  "start_date" : "2019-02-20",
                  "end_date" : "2019-02-20",
                  "available" : 163474200,
                  "capacity" : 176586394
               },
               {
                  "days_in_forecast" : 0,
                  "start_date" : "2019-02-21",
                  "end_date" : "2019-02-21",
                  "available" : 256485594,
                  "capacity" : 274037191
               },
               {
                  "capacity" : 212467438,
                  "available" : 199091285,
                  "end_date" : "2019-02-22",
                  "start_date" : "2019-02-22",
                  "days_in_forecast" : 0
               },
               {
                  "capacity" : 189452983,
                  "available" : 177450785,
                  "end_date" : "2019-02-23",
                  "start_date" : "2019-02-23",
                  "days_in_forecast" : 0
               },
               {
                  "start_date" : "2019-02-24",
                  "days_in_forecast" : 0,
                  "capacity" : 180309046,
                  "available" : 168589468,
                  "end_date" : "2019-02-24"
               },
               {
                  "start_date" : "2019-02-25",
                  "days_in_forecast" : 0,
                  "capacity" : 182850122,
                  "available" : 171364216,
                  "end_date" : "2019-02-25"
               },
               {
                  "end_date" : "2019-02-26",
                  "available" : 129049282,
                  "capacity" : 139962276,
                  "days_in_forecast" : 0,
                  "start_date" : "2019-02-26"
               },
               {
                  "start_date" : "2019-02-27",
                  "days_in_forecast" : 0,
                  "capacity" : 171623425,
                  "available" : 158879752,
                  "end_date" : "2019-02-27"
               },
               {
                  "end_date" : "2019-02-28",
                  "capacity" : 268133170,
                  "available" : 250959715,
                  "start_date" : "2019-02-28",
                  "days_in_forecast" : 0
               }
            ],
            "summary" : {
               "days_in_forecast" : 14,
               "start_date" : "2019-02-10",
               "available" : 1675463056,
               "capacity" : 1795548783,
               "end_date" : "2019-03-01"
            }
         }
      ],
      "num_elements" : 1,
      "count" : 1,
      "status" : "OK"
   }
}
```

**GDALI Example - Checking Inventory Availability for GDALIs with
Splits**

To see an inventory availability forecast across splits based on
proposed targeting, create a JSON file in the format shown here:

``` pre
{
    "line_item": {
        "ad_types": [
            "banner"
        ],
        "start_date": "2022-04-28 00:00:00",
        "end_date": "2022-05-01 23:59:59",
        "profile": {
            "country_targets": [
                {
                    "id": 123,
                    "action": "include",
                }
            ],
            "size_targets": {
                "width": 190,
                "height": 213
            },
            {
                "width": 728,
                "height": 90
            },
            "id": null,
            "advertiser_id": 5878213,
            "graph_id": null
        },
        "creatives": [],
        "roadblock": null
    },
    "splits": [
        {
            "id": 111111111,
            "conditions": []
            "is_default": false,
            "active": true,
            "order": 1,
            "name": "Name1",
            "allocation_strategy": "unconstrained",
            "creatives": []
        },
        {
            "id": 222222222,
            "conditions": []
            "is_default": false,
            "active": true,
            "order": 2,
            "name": "Name2",
            "allocation_strategy": "unconstrained",
            "creatives": []
        },
        {
            "id": 333333333,
            "is_default": true,
            "active": false,
            "order": 5,
            "name": "Default",
            "allocation_strategy": "unconstrained",
            "creatives": []
        }
    ]
}
```

If you do not have splits, simply pass in an empty array for splits:

``` pre
{
    "line_item": {
        "ad_types": [
            "banner"
        ],
        "start_date": "2022-04-28 00:00:00",
        "end_date": "2022-05-01 23:59:59",
        "profile": {
            "country_targets": [
                {
                    "id": 123,
                    "action": "include",
                }
            ],
            "size_targets": {
                "width": 190,
                "height": 213
            },
            {
                "width": 728,
                "height": 90
            },
            "id": null,
            "advertiser_id": 5878213,
            "graph_id": null
        },
        "creatives": [],
        "roadblock": null
    },
    "splits": [        
    ]
}
```

Then `POST` it to the service either without any additional queries or
with the `split_breakout` query:

**`POST` without additional queries:**

``` pre
$ curl --silent  -b cookies -X POST -d '@/tmp/forecast-inventory-multi.json' "https://api.appnexus.com/forecast-inventory-multi"
```

You'll get back JSON in the following format:

``` pre
{
    "line_item": {
        "ad_types": [
            "banner"
        ],
        "start_date": "2022-04-28 00:00:00",
        "end_date": "2022-05-01 23:59:59",
        "profile": {
            "country_targets": [
                {
                    "id": 123,
                    "action": "include",
                }
            ],
            "size_targets": {
                "width": 190,
                "height": 213
            },
            {
                "width": 728,
                "height": 90
            },
            "id": null,
            "advertiser_id": 5878213,
            "graph_id": null
        },
        "creatives": [],
        "roadblock": null
    },
    "splits": [
        {
            "id": 111111111,
            "conditions": []
            "is_default": false,
            "active": true,
            "order": 1,
            "name": "Name1",
            "allocation_strategy": "unconstrained",
            "creatives": []
        },
        {
            "id": 222222222,
            "conditions": []
            "is_default": false,
            "active": true,
            "order": 2,
            "name": "Name2",
            "allocation_strategy": "unconstrained",
            "creatives": []
        },
        {
            "id": 333333333,
            "is_default": true,
            "active": false,
            "order": 5,
            "name": "Default",
            "allocation_strategy": "unconstrained",
            "creatives": []
        }
    ]
}
```

**POST with `split_breakout` query:**

``` pre
$ curl --silent  -b cookies -X POST -d '@/tmp/forecast-inventory-multi.json' "https://api.appnexus.com/forecast-inventory-multi?split_breakout=true"
```

You'll get back JSON in the following format:

``` pre
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "inventory": [
            {
                "split_breakout": [
                    {
                        "name": "split 1",
                        "id": 111111111,
                        "daily_detail": [
                            {
                                "available": 0,
                                "capacity": 0,
                                "days_in_forecast": 0,
                                "start_date": "2022-12-13",
                                "end_date": "2022-12-13"
                            },
                            {
                                "available": 0,
                                "capacity": 0,
                                "days_in_forecast": 0,
                                "start_date": "2022-12-14",
                                "end_date": "2022-12-14"
                            },
                            {
                                "available": 0,
                                "capacity": 0,
                                "days_in_forecast": 0,
                                "start_date": "2022-12-15",
                                "end_date": "2022-12-15"
                            },
                            {
                                "available": 0,
                                "capacity": 0,
                                "days_in_forecast": 0,
                                "start_date": "2022-12-16",
                                "end_date": "2022-12-16"
                            }
                        ],
                        "summary": {
                            "available": 0,
                            "capacity": 0,
                            "days_in_forecast": 4,
                            "start_date": "2022-12-13",
                            "end_date": "2022-12-16"
                        }
                    },
                    {
                        "name": "split 2",
                        "id": 222222222,
                        "daily_detail": [
                            {
                                "available": 0,
                                "capacity": 0,
                                "days_in_forecast": 0,
                                "start_date": "2022-12-13",
                                "end_date": "2022-12-13"
                            },
                            {
                                "available": 0,
                                "capacity": 0,
                                "days_in_forecast": 0,
                                "start_date": "2022-12-14",
                                "end_date": "2022-12-14"
                            },
                            {
                                "available": 0,
                                "capacity": 0,
                                "days_in_forecast": 0,
                                "start_date": "2022-12-15",
                                "end_date": "2022-12-15"
                            },
                            {
                                "available": 0,
                                "capacity": 0,
                                "days_in_forecast": 0,
                                "start_date": "2022-12-16",
                                "end_date": "2022-12-16"
                            }
                        ],
                        "summary": {
                            "available": 0,
                            "capacity": 0,
                            "days_in_forecast": 4,
                            "start_date": "2022-12-13",
                            "end_date": "2022-12-16"
                        }
                    },
                    {
                        "name": "Default",
                        "id": 000000000,
                        "daily_detail": [
                            {
                                "available": 14076857,
                                "capacity": 19714967,
                                "days_in_forecast": 0,
                                "start_date": "2022-12-13",
                                "end_date": "2022-12-13"
                            },
                            {
                                "available": 17695775,
                                "capacity": 18459811,
                                "days_in_forecast": 0,
                                "start_date": "2022-12-14",
                                "end_date": "2022-12-14"
                            },
                            {
                                "available": 18542490,
                                "capacity": 19292381,
                                "days_in_forecast": 0,
                                "start_date": "2022-12-15",
                                "end_date": "2022-12-15"
                            },
                            {
                                "available": 18106140,
                                "capacity": 18859887,
                                "days_in_forecast": 0,
                                "start_date": "2022-12-16",
                                "end_date": "2022-12-16"
                            }
                        ],
                        "summary": {
                            "available": 68421262,
                            "capacity": 76327046,
                            "days_in_forecast": 4,
                            "start_date": "2022-12-13",
                            "end_date": "2022-12-16"
                        }
                    }
                ],
                "daily_detail": [
                    {
                        "available": 14076857,
                        "capacity": 19714967,
                        "days_in_forecast": 0,
                        "start_date": "2022-12-13",
                        "end_date": "2022-12-13"
                    },
                    {
                        "available": 17695775,
                        "capacity": 18459811,
                        "days_in_forecast": 0,
                        "start_date": "2022-12-14",
                        "end_date": "2022-12-14"
                    },
                    {
                        "available": 18542490,
                        "capacity": 19292381,
                        "days_in_forecast": 0,
                        "start_date": "2022-12-15",
                        "end_date": "2022-12-15"
                    },
                    {
                        "available": 18106140,
                        "capacity": 18859887,
                        "days_in_forecast": 0,
                        "start_date": "2022-12-16",
                        "end_date": "2022-12-16"
                    }
                ],
                "summary": {
                    "available": 68421262,
                    "capacity": 76327046,
                    "days_in_forecast": 4,
                    "start_date": "2022-12-13",
                    "end_date": "2022-12-16"
                }
            }
        ]
    }
}
```

**Legacy GDLI Example - Checking Inventory Availability for Legacy GDLIs
with a Roadblock**

To run an inventory availability forecast given a roadblock with several
creative sizes, you'll need to:

- Modify your profile to include the `size_targets` array.
- Pass `roadblocking_enabled=true` on the query string of the request.

It's possible to define size targets and also add creatives to your line
item or campaigns. When you do this, all sizes will be used in the
forecast. When you enable roadblocking, the size with the smallest
number of available impressions will be used as the forecasted capacity.



<b>Note:</b> In this example, the
`size_targets` and creative sizes will all be considered when
determining forecasting.



Here's an example of the JSON you would send in your query:

``` pre
{
    "line_item": {
        "ad_types": [
            "banner"
        ],
        "start_date": "2022-05-16 00:00:00",
        "end_date": "2022-06-12 23:59:59",
        "timezone": "Europe/Brussels",
        "profile": {},
        "creatives": [],
        "roadblock": {
            "type": "partial_roadblock",
            "master_width": 320,
            "master_height": 101
        }
    },
    "campaigns": [],
}       
```

**GDALI Example - Checking Inventory Availability for GDALIs with a
Roadblock**

To run an inventory availability forecast on GDALIs given a roadblock
with several creative sizes, you'll need to:

- Modify your profile to include the `size_targets` array.
- Pass `roadblocking_enabled=true` on the query string of the request.

It's possible to define size targets and also add creatives to your line
item. When you do this, all sizes will be used in the forecast. When you
enable roadblocking, the size with the smallest number of available
impressions will be used as the forecasted capacity.



<b>Note:</b> In this example, the
`size_targets` and creative sizes will all be considered when
determining forecasting.



Here's an example of the JSON you would send in your query:

``` pre
{
    "line_item": {
        "ad_types": [
            "banner"
        ],
        "start_date": "2022-05-16 00:00:00",
        "end_date": "2022-06-12 23:59:59",
        "timezone": "Europe/Brussels",
        "profile": {
            "country_targets": [
                {
                    "id": 123,
                    "action": "include",
                }
            ],
            size_targets": {
                "width": 320,
            "height": 101
        },
        {
            "width": 320,
            "height": 252
        },
        "id": null,
        "advertiser_id": 7777777,
        "graph_id": null
    },
    "creatives": [],
    "roadblock": {
        "type": "partial_roadblock",
        "master_width": 320,
        "master_height": 101
    },
    "splits": [
        {
            "id": 111111111
            "conditions": []
            "is_default": false,
            "active": true,
            "order": 1,
            "name": "Name1",
            "allocation_strategy": "unconstrained",
            "creatives": []
        },
        {
            "id": 222222222,
            "conditions": []
            "is_default": false,
            "active": true,
            "order": 2,
            "name": "Name2",
            "allocation_strategy": "unconstrained",
            "creatives": []
        },
        {
            "id": 333333333,
            "is_default": true,
            "active": false,
            "order": 7,
            "name": "Default",
            "allocation_strategy": "unconstrained",
            "creatives": []
        }
    ]
}
```





## Forecast Contention-Multi Service

**REST API**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001db9__entry__104" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001db9__entry__105"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001db9__entry__106"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__104"><code
class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__105"><a
href="https://api.appnexus.com/forecast-contention-multi" class="xref"
target="_blank"><code class="ph codeph">https://api.</code><span
class="ph"><code class="ph codeph">appnexus</code><code
class="ph codeph">.com/forecast-contention-multi</code></a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__106">Run an inventory contention forecast
using a hypothetical targeting profile.

<b>Tip:</b> The Forecast Contention-Multi
Service only supports <code class="ph codeph">POST</code> calls.
</td>
</tr>
</tbody>
</table>

**Query String Parameters**

Use the query string parameters shown in the table below to tune the
output. For Legacy GDLI and GDALI usage, see examples below.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001db9__entry__110"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001db9__entry__111"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__110"><code
class="ph codeph">priority</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__111">When passed on the query string in the
form <code class="ph codeph">priority=x</code>, inventory from lower
priority line items will be displaced and considered available.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__110"><code
class="ph codeph">competitive_exclusions_enabled</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__111">If
this field is passed in you must also pass <code
class="ph codeph">advertiser_id</code>, <code
class="ph codeph">creative_id</code>, or both. For more information
about competitive exclusions, see <a
href="monetize_monetize-standard/competitive-exclusions.md"
class="xref" target="_blank">Competitive Exclusions</a>.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__110"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__111">When <code
class="ph codeph">competitive_exclusions_enabled=true</code> is passed,
you should also pass in this field with the advertiser ID whose
creatives have competing brands or offer categories, and therefore
should not be included in the resulting forecast. For more information
about competitive exclusions, see <a
href="monetize_monetize-standard/competitive-exclusions.md"
class="xref" target="_blank">Competitive Exclusions</a>.
<p><strong>Required</strong>: No, unless <code
class="ph codeph">competitive_exclusions_enabled</code> is also passed
in the query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__110"><code
class="ph codeph">creative_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__111">When <code
class="ph codeph">competitive_exclusions_enabled=true</code> is passed,
you should also pass in this field with a creative ID that has competing
brands or offer categories, and therefore should not be included in the
resulting forecast. For more information about competitive exclusions,
see <a
href="monetize_monetize-standard/competitive-exclusions.md"
class="xref" target="_blank">Competitive Exclusions</a>.
<p><strong>Required</strong>: No, unless <code
class="ph codeph">competitive_exclusions_enabled</code> is also passed
in the query string.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__110"><code
class="ph codeph">line_item_exclusions</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__111">A
comma-separated list of line item IDs to exclude from the forecast.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__110"><code
class="ph codeph">dynamic_timeout</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__111">The number of tries (defaults to 1)
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__110"><code
class="ph codeph">dynamic_attempts</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__111">The amount of time to wait for each
trial (default is 2 minutes, minimum in prod is 10 seconds)
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__110"><code
class="ph codeph">split_breakout</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__111">When <code
class="ph codeph">split_breakout=true</code> is passed you should also
pass split level details. This will return a forecast, broken down by
individual splits as well as the line item as a whole.

<b>Note:</b> GDALIs support splits; Legacy
GDLIs do not support splits. 

<p><strong>Required</strong>: No</p></td>
</tr>
</tbody>
</table>

**JSON Fields**

**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001db9__entry__128"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001db9__entry__129"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001db9__entry__130"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__128"><code
class="ph codeph">line_item</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__129">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__130">The flight dates and profile
information associated with the line item against which you want to
forecast.
<p><strong>Required</strong>: Yes </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__128"><code
class="ph codeph">campaigns</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__129">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__130">An
array of objects containing campaign information for the line item.

<b>Note:</b> Legacy GDLIs support campaigns;
GDALIs do not support campaigns. If your Legacy GDLI does not have
multiple child campaigns, pass an empty array ( <code
class="ph codeph">campaigns: []</code> ).

<p><strong>Required</strong>: Yes for Legacy GDLIs, but can be empty.
Line items cannot have both campaigns and splits.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__128"><code
class="ph codeph">splits</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__129">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__130">An
array of objects containing split information for the line item.

<b>Note:</b> GDALIs support splits; Legacy
GDLIs do not support splits. If your GDALI does not have splits, pass an
empty array ( <code class="ph codeph">splits: []</code> ). For more
information, see <a
href="splits-service.md"
class="xref" target="_blank">Splits Service</a>. 

<p><strong>Required</strong>: Yes for GDALIs, but can be empty. Line
items cannot have both campaigns and splits.</p></td>
</tr>
</tbody>
</table>

**Line Item**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001db9__entry__140"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001db9__entry__141"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001db9__entry__142"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__140"><code
class="ph codeph">start_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__141">string </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__142">The starting flight date.
<p><strong>Required</strong>: Yes </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__140"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__141">string </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__142">The end date of the flight.
<p><strong>Required</strong>: Yes  </p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__140"><code
class="ph codeph">timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__141">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__142">The timezone for which the line item
is active. See <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a> for details and accepted
values.
<p><strong>Required</strong>: No. If not specified, member default
timezone will be used.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__140"><code
class="ph codeph">profile</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__141">object </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001db9__entry__142">An
instance of the profile object. Use this object to define your targeting
for the line item. See <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for a list of available
fields. See <a
href="inventory-forecasting-services.md#ID-00001db9__inventory-forecasting-services-forecasting-profiles"
class="xref">Forecasting Profiles</a> above for profile settings that
are specific to forecasting.
<p>This field is required, but you can pass an empty object. However,
passing an empty profile means you're forecasting without applying any
targeting to your line item.</p>
<p><strong>Required</strong>: Yes </p></td>
</tr>
</tbody>
</table>

**Campaigns**




<b>Note:</b> Legacy GDLIs support campaigns;
GDALIs do not support campaigns.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001db9__entry__155"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001db9__entry__156"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001db9__entry__157"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__155"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__156">string </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__157">The name of the campaign. You can
forecast on multiple campaigns within a single line item, so the name
must be unique within each line item.
<p><strong>Required</strong>: Yes </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__155"><code
class="ph codeph">profile</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__156">object </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__157"> An instance of the profile object.
Use this object to define your targeting for the line item. See <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for a list and
descriptions of available fields. See <a
href="inventory-forecasting-services.md#ID-00001db9__inventory-forecasting-services-forecasting-profiles"
class="xref">Forecasting Profiles</a> above for profile settings that
are specific to forecasting.
<p><strong>Required</strong>: Yes </p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__155"><code
class="ph codeph">start_date </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__156">string </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__157">The starting date of the campaign. 
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__155"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__156">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__157">The ending date of the campaign.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__155"><code
class="ph codeph">timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__156">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__157">The timezone for which the line item
is active. See <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a> for details and accepted
values.
<p><strong>Required</strong>: No. f not specified, member default
timezone will be used.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__155"><code
class="ph codeph">creatives</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__156">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001db9__entry__157">The creatives associated with the
campaign. If you include creatives you must include at least the
creative ID. See <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> for a list and
descriptions of available fields.
<p><strong>Required</strong>: No</p></td>
</tr>
</tbody>
</table>

**Legacy GDLI Example - Checking Inventory Contention for Legacy GDLIs
with Multiple Campaigns**

To see an inventory contention forecast across multiple child campaigns
based on your proposed targeting settings, create a JSON file in the
format shown below:

``` pre
{
  "line_item": {
    "start_date": "2019-02-10",
    "end_date": "2019-03-01",
    "profile": {
      "country_targets": [
        {
          "id": 169
        }
      ],
      "country_action": "include"
    }
  },
  "campaigns": [
    {
      "name": "foo",
      "start_date": "2019-02-11",
      "end_date": "2019-02-15",
      "profile": {
        "daypart_targets": [
          {
            "day": "tuesday",
            "start_hour": 8,
            "end_hour": 20
          }
        ]
      }
    },
    {
      "name": "bar",
      "start_date": "2019-02-20",
      "end_date": "2019-02-28",
      "profile": {
        "browser_targets": [
          {
            "id": 11
          }
        ],
        "browser_action": "include"
      }
    }
  ]
}      
```

If you do not have multiple campaigns, simply pass in an empty array for
campaigns:

``` pre
{
  "line_item": {
    "start_date": "2019-02-10",
    "end_date": "2019-03-01",
    "profile": {
      "country_targets": [
        {
          "id": 169
        }
      ],
      "country_action": "include"
    }
  },
  "campaigns": [
  ]
}
```

Then `POST` it to the service as follows:

``` pre
$ curl --silent  -b cookies -X POST -d '/tmp/forecast-contention-multi.json' "https://api.appnexus.com/forecast-contention-multi"
      
```

You'll get back JSON in the following format:

``` pre
{
   "response" : {
      "num_elements" : 100,
      "count" : 2,
      "start_element" : 0,
      "status" : "OK",
      "contention" : [
         {
            "competing_impressions" : 25083480,
            "line_item" : {
               "status" : "live",
               "advertiser_id" : 123456,
               "start_date" : "2019-01-19 00:00:00",
               "revenue_type" : "cpm",
               "profile_id" : 50058150,
               "member_id" : 1234,
               "name" : "carrot juice airplane",
               "delivery_goal" : {
                  "reserved" : true,
                  "type" : "percentage",
                  "disallow_non_guaranteed" : true,
                  "percentage" : 100
               },
               "id" : 123457,
               "revenue_value" : 0,
               "currency" : "EUR",
               "priority" : 19,
               "state" : "active",
               "end_date" : "2019-12-31 23:59:59"
            }
         },
         {
            "line_item" : {
               "start_date" : "2019-01-19 00:00:00",
               "revenue_type" : "cpm",
               "status" : "live",
               "advertiser_id" : 123456,
               "delivery_goal" : {
                  "reserved" : true,
                  "percentage" : 100,
                  "type" : "percentage",
                  "disallow_non_guaranteed" : true
               },
               "currency" : "EUR",
               "revenue_value" : 0,
               "id" : 123456,
               "state" : "active",
               "priority" : 19,
               "end_date" : "2019-12-31 23:59:59",
               "profile_id" : 6,
               "name" : "lightning battery horse staple",
               "member_id" : 1234
            },
            "competing_impressions" : 88514063
         }
      ]
   }
}
```

``` pre
{
   "response" : {
      "num_elements" : 100,
      "count" : 2,
      "start_element" : 0,
      "status" : "OK",
      "contention" : [
         {
            "competing_impressions" : 25083480,
            "line_item" : {
               "status" : "live",
               "advertiser_id" : 123456,
               "start_date" : "2019-01-19 00:00:00",
               "revenue_type" : "cpm",
               "profile_id" : 50058150,
               "member_id" : 1234,
               "name" : "carrot juice airplane",
               "delivery_goal" : {
                  "reserved" : true,
                  "type" : "percentage",
                  "disallow_non_guaranteed" : true,
                  "percentage" : 100
               },
               "id" : 123457,
               "revenue_value" : 0,
               "currency" : "EUR",
               "priority" : 19,
               "state" : "active",
               "end_date" : "2019-12-31 23:59:59"
            }
         },
         {
            "line_item" : {
               "start_date" : "2019-01-19 00:00:00",
               "revenue_type" : "cpm",
               "status" : "live",
               "advertiser_id" : 123456,
               "delivery_goal" : {
                  "reserved" : true,
                  "percentage" : 100,
                  "type" : "percentage",
                  "disallow_non_guaranteed" : true
               },
               "currency" : "EUR",
               "revenue_value" : 0,
               "id" : 123456,
               "state" : "active",
               "priority" : 19,
               "end_date" : "2019-12-31 23:59:59",
               "profile_id" : 6,
               "name" : "lightning battery horse staple",
               "member_id" : 1234
            },
            "competing_impressions" : 88514063
         }
      ]
   }
}
```

**GDALI Example - Checking Inventory Contention for GDALIs with Splits**

To see an inventory contention forecast across splits based on your
proposed targeting settings, create a JSON file in the format shown
below:

``` pre
{
    "line_item": {
        "ad_types": [
            "banner"
        ],
        "start_date": "2022-04-28 00:00:00",
        "end_date": "2022-05-01 23:59:59",
        "profile": {
            "country_targets": [
                {
                    "id": 123,
                    "action": "include",
                }
            ],
            "size_targets": {
                "width": 190,
                "height": 213
            },
            {
                "width": 728,
                "height": 90
            },
            "id": null,
            "advertiser_id": 5878213,
            "graph_id": null
        },
        "creatives": [],
        "roadblock": null
    },
    "splits": [
        {
            "id": 111111111,
            "conditions": []
            "is_default": false,
            "active": true,
            "order": 1,
            "name": "Name1",
            "allocation_strategy": "unconstrained",
            "creatives": []
        },
        {
            "id": 222222222,
            "conditions": []
            "is_default": false,
            "active": true,
            "order": 2,
            "name": "Name2",
            "allocation_strategy": "unconstrained",
            "creatives": []
        },
        {
            "id": 333333333,
            "is_default": true,
            "active": false,
            "order": 5,
            "name": "Default",
            "allocation_strategy": "unconstrained",
            "creatives": []
        }
    ]
}
```

**GDALI Example - Checking Inventory Contention for GDALIs with Splits**

To see an inventory contention forecast across splits based on your
proposed targeting settings, create a JSON file in the format shown
below:

``` pre
{
    "line_item": {
        "ad_types": [
            "banner"
        ],
        "start_date": "2022-04-28 00:00:00",
        "end_date": "2022-05-01 23:59:59",
        "profile": {
            "country_targets": [
                {
                    "id": 123,
                    "action": "include",
                }
            ],
            "size_targets": {
                "width": 190,
                "height": 213
            },
            {
                "width": 728,
                "height": 90
            },
            "id": null,
            "advertiser_id": 5878213,
            "graph_id": null
        },
        "creatives": [],
        "roadblock": null
    },
    "splits": [
        {
            "id": 111111111,
            "conditions": []
            "is_default": false,
            "active": true,
            "order": 1,
            "name": "Name1",
            "allocation_strategy": "unconstrained",
            "creatives": []
        },
        {
            "id": 222222222,
            "conditions": []
            "is_default": false,
            "active": true,
            "order": 2,
            "name": "Name2",
            "allocation_strategy": "unconstrained",
            "creatives": []
        },
        {
            "id": 333333333,
            "is_default": true,
            "active": false,
            "order": 5,
            "name": "Default",
            "allocation_strategy": "unconstrained",
            "creatives": []
        }
    ]
}
```

Then `POST` it to the service as follows:

``` pre
$ curl --silent  -b cookies -X POST -d '/tmp/forecast-contention-multi.json' "https://api.appnexus.com/forecast-contention-multi"
      
```

You'll get back JSON in the following format:

``` pre
{
   "response" : {
      "num_elements" : 100,
      "count" : 2,
      "start_element" : 0,
      "status" : "OK",
      "contention" : [
         {
            "competing_impressions" : 25083480,
            "line_item" : {
               "status" : "live",
               "advertiser_id" : 123456,
               "start_date" : "2019-01-19 00:00:00",
               "revenue_type" : "cpm",
               "profile_id" : 50058150,
               "member_id" : 1234,
               "name" : "carrot juice airplane",
               "delivery_goal" : {
                  "reserved" : true,
                  "type" : "percentage",
                  "disallow_non_guaranteed" : true,
                  "percentage" : 100
               },
               "id" : 123457,
               "revenue_value" : 0,
               "currency" : "EUR",
               "priority" : 19,
               "state" : "active",
               "end_date" : "2019-12-31 23:59:59"
            }
         },
         {
            "line_item" : {
               "start_date" : "2019-01-19 00:00:00",
               "revenue_type" : "cpm",
               "status" : "live",
               "advertiser_id" : 123456,
               "delivery_goal" : {
                  "reserved" : true,
                  "percentage" : 100,
                  "type" : "percentage",
                  "disallow_non_guaranteed" : true
               },
               "currency" : "EUR",
               "revenue_value" : 0,
               "id" : 123456,
               "state" : "active",
               "priority" : 19,
               "end_date" : "2019-12-31 23:59:59",
               "profile_id" : 6,
               "name" : "lightning battery horse staple",
               "member_id" : 1234
            },
            "competing_impressions" : 88514063
         }
      ]
   }
}
```




## Related Topics

- <a href="reference.md"
  class="xref" target="_blank">Reference</a>

- <a
  href="profile-service.md"
  class="xref" target="_blank">Profile Service</a>

- <a
  href="monetize_monetize-standard/guaranteed-delivery.md"
  class="xref" target="_blank">Guaranteed Delivery</a>

- <a
  href="monetize_monetize-standard/competitive-exclusions.md"
  class="xref" target="_blank">Competitive Exclusions</a>






