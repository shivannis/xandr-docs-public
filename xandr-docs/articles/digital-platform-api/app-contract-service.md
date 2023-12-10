---
Title : App Contract Service
Description : This is an admin-only service that allows Xandr
ms.date: 10/28/2023
ms.custom: digital-platform-api
personnel to record or update client contracts. It can only be accessed
---


# App Contract Service



This is an admin-only service that allows Xandr
personnel to record or update client contracts. It can only be accessed
by sales ops.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000ae2__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000ae2__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000ae2__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__2"><a
href="https://api.appnexus.com/app-contract" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-contract</a>
<p>(app contract JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__3">Add
a contract</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__2"><a
href="https://api.appnexus.com/app-contract" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-contract</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__3">View
all contracts</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__2"><a
href="https://api.appnexus.com/app-contract?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-contract?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__3">View
a specific contract</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__2"><a
href="https://api.appnexus.com/app-contract?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-contract?id=ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__3">Delete a contract</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__2"><a
href="https://api.appnexus.com/app-contract/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-contract/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000ae2__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000ae2__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000ae2__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__21">The
unique ID associated with the app contract.
<p><strong>Required On</strong>: <code class="ph codeph">PUT</code> and
<code class="ph codeph">DELETE</code>, in query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__19"><code
class="ph codeph">plugin_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__21">The
plugin (app) to which this contract is associated.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__19"><code
class="ph codeph">terms</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__20">int
  </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__21">The
number of days Xandr has between receipt of
payment from a subscriber and the delivery of payment to the developer.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__19"><code
class="ph codeph">revshare_pct</code> </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__20">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__21">The
shared revenue percentage.
<p><strong>Default</strong>: <code
class="ph codeph">0.00</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__19"><code
class="ph codeph">log_level_data_fee</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__20">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__21">The
fee charged for the use of log-level data.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__19"><code
class="ph codeph">start_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__20">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__21">The
start date of the app contract.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__19"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__20">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000ae2__entry__21">The
end date of the app contract.
<p><strong>Default</strong>: <code
class="ph codeph">null</code> </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__19"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__20">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000ae2__entry__21">Indicates whether this contract is
currently in effect.
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
</tbody>
</table>





## Validations



- The `plugin_id` must be a valid one from the plugin service.
- The `terms` must be between <span class="keyword apiname">0 and
  <span class="keyword apiname">(2^31)-1.
- The `revshare_pct` must be between
  <span class="keyword apiname">0.00 and
  <span class="keyword apiname">100.00.
- The `log_level_data_fee` must be of scale 2 and between
  <span class="keyword apiname">0.00 and
  <span class="keyword apiname">999999999.99.
- Both the `start_date` and `end_date` must be valid time stamps (i.e.,
  <span class="keyword apiname">2013-01-01 00:00:00).
- The `end_date` must be greater or equal to the `start_date`.
- Only one (1) active app contract per `plugin_id` is allowed.








