---
Title : Inventory Availability Report
Description : Inventory availability reports offer insight into the types of inventory
ms.date : 10/28/2023
available on the platform. These reports are available by request only;
---


# Inventory Availability Report





Inventory availability reports offer insight into the types of inventory
available on the platform. These reports are available by request only;
please use the <a href="https://help.xandr.com/s/login/" class="xref"
target="_blank">support portal</a>. Due to the structure of our
impression availability databases, reporting dimensions are limited to
those outlined below. Please also note:

- Our databases contain 30 days worth of historical inventory
  availability data. Reports are therefore limited to this timeframe.
- Additional reporting restrictions may apply to mobile impressions.
  Please contact your Xandr representative for further information.





## Time Frame

You can run this report for a custom time frame, set the `start_date`
and `end_date` fields in your report request. For more details about
these fields, see <a
href="report-service.md"
class="xref">Report Service</a>.

**Data Retention Period**

Data in this report is retained for 30 days.





## Dimensions



<table
id="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9"
class="table frame-all">
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1"
class="entry align-center colsep-1 rowsep-1">Column</th>
<th
id="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th
id="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3"
class="entry align-center colsep-1 rowsep-1">Filter?</th>
<th
id="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"
class="entry align-center colsep-1 rowsep-1">Example</th>
<th
id="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">day</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">date</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">"2023-04-18"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">The
day of the impression.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">month</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">date</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">"2023-04"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">The
month of the impression.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">seller_member_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">9876</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">Internal
ID of the selling member.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">seller_member_name</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">string</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">No</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">"CNN"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">Display
name of the seller member</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">size</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">string</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">"120"x"600"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">The
standard size of a creative. To know more about the sizes, see
standard_sizes returned from <a
href="member-service.md"
class="xref">member-service.md</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">geo_country</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">string</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">The
code of the geographical country associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">imp_type_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">5</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">The
ID for the type of impression. Possible values (associated types in
parentheses):
<ul>
<li><code class="ph codeph">1 ("Blank")</code>: No creative served.</li>
<li><code class="ph codeph">2 ("PSA")</code>: A public service
announcement served because there were no valid bids and no default
creative was available.</li>
<li><code class="ph codeph">3 ("Default Error")</code>: A default
creative served due to a timeout issue.</li>
<li><code class="ph codeph">4 ("Default")</code>: A default creative
served because there were no valid bids.</li>
<li><code class="ph codeph">5 ("Kept")</code>: Your advertiser's
creative served on your publisher's site.</li>
<li><code class="ph codeph">6 ("Resold")</code>: Your publisher's
impression was sold to a third-party buyer.</li>
<li><code class="ph codeph">7 ("RTB")</code>: Your advertiser's creative
served on third-party inventory.</li>
<li><code class="ph codeph">8 ("PSA Error")</code>: A public service
announcement served due to a timeout issue or lack of a default
creative.</li>
<li><code class="ph codeph">9 ("External Impression")</code>: An
impression from an impression tracker.</li>
<li><code class="ph codeph">10 ("External Click")</code>: A click from a
click tracker.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">site_domain</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">string</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">bestsiteever.com</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5"><p>The
domain where the impression occurred. For mobile applications, this can
be the URL of the app's location in the app store.</p>
<p>There are two additional values that may appear in place of a domain,
specifically: <code class="ph codeph">"deals.unknown"</code> or <code
class="ph codeph">"managed.unknown"</code>. These mean that we didn't
receive a valid domain as the referrer. For example, the domain may be
blank or otherwise malformed.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">media_type_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">5</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">The
ID associated with a certain media type. For example, video. For more
details, see <a
href="media-type-service.md"
class="xref">media-type-service.md</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">audit_type_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">2</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5"><p>The
integer code for the priority of the audit. Allowed values:</p>
<ul>
<li><code class="ph codeph">1</code>: Standard</li>
<li><code class="ph codeph">2</code>: Priority</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">browser_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">The
ID associated with a certain browser. For example, Microsoft Edge. For
more details, see <a
href="browser-service.md"
class="xref">browser-service.md</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">mobile_application</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">string</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">No</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">"Angry Birds (com.rovio.angrybirds)"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">The
name of the mobile application followed by the ID in Xandr's
format.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">language_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">The
ID associated with a certain browser. For example, English. For more
details, see <a
href="language-service.md"
class="xref">language-service.md</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">operating_system_family_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">5</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">The
ID associated with a certain operating system family. For example,
Microsoft Windows. For more details, see <a
href="operating-system-family-service.md"
class="xref">operating-system-family-service.md</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">datacenter_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">001</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">The
ID of the data center used to route the request to demand partners.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">seller_join_date</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">20220901</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">The
date when a seller member was added. If less than a year, the exact date
will show; if over a year, the join date will show as <strong>+1
year</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">mobile_application_id</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">string</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">"343200656" (iOS) or "com.rovio.angrybirds" (Android)</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">A
targetable Apple App Store ID, Google Play package name, or Windows
application ID.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__1">device_type</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__3">Yes</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-4d8410a1-c615-439e-877a-7641e5885bc9__entry__5">Device
type ID on which the impression was served. Possible values are:
<ul>
<li>0 (other devices)</li>
<li>1 (desktops &amp; laptops)</li>
<li>2 (mobile phones)</li>
<li>3 (tablets)</li>
<li>4 (tv)</li>
<li>5 (game consoles)</li>
<li>6 (media players)</li>
<li>7 (set top box)</li>
</ul></td>
</tr>
</tbody>
</table>







## Metrics



<table
id="inventory-availability-report__table-3a7ca30f-ddec-40e7-983c-15b9fa890264"
class="table frame-all">
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="inventory-availability-report__table-3a7ca30f-ddec-40e7-983c-15b9fa890264__entry__1"
class="entry align-center colsep-1 rowsep-1">Column</th>
<th
id="inventory-availability-report__table-3a7ca30f-ddec-40e7-983c-15b9fa890264__entry__2"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th
id="inventory-availability-report__table-3a7ca30f-ddec-40e7-983c-15b9fa890264__entry__3"
class="entry align-center colsep-1 rowsep-1">Example</th>
<th
id="inventory-availability-report__table-3a7ca30f-ddec-40e7-983c-15b9fa890264__entry__4"
class="entry align-center colsep-1 rowsep-1">Formula</th>
<th
id="inventory-availability-report__table-3a7ca30f-ddec-40e7-983c-15b9fa890264__entry__5"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-3a7ca30f-ddec-40e7-983c-15b9fa890264__entry__1">imps</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-3a7ca30f-ddec-40e7-983c-15b9fa890264__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-3a7ca30f-ddec-40e7-983c-15b9fa890264__entry__3"><code
class="ph codeph">1000</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-availability-report__table-3a7ca30f-ddec-40e7-983c-15b9fa890264__entry__4">imps</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-availability-report__table-3a7ca30f-ddec-40e7-983c-15b9fa890264__entry__5">The
number of available impressions.</td>
</tr>
</tbody>
</table>







## Example

**Create the JSON-formatted report request**

The JSON file should include the `report_type` of
`"platform_inventory_availability"`, as well as the `columns`
(dimensions and metrics) and `report_interval` that you want to
retrieve. You can also filter for specific dimensions, define
granularity (year, month, day), and specify the format in which the data
should be returned (csv, excel, or html). For a full explanation of
fields that can be included in the JSON file, see the <a
href="report-service.md"
class="xref">Report Service</a>.

>

``` pre
$ cat platform_inventory_availability

{
    "report": {
        "columns": [
            "day",
            "seller_member_name",
            "audit_type",
            "size",
            "device_type",
            "operating_system_family",
            "geo_country",
            "imps"
        ],
        "format": "csv",
        "report_interval": "today",
        "report_type": "platform_inventory_availability"
    }
}
```



**`POST` the request to the Report Service**

>

``` pre
$ curl -b cookies -X POST -d @platform_inventory_availability 'https://api.appnexus.com/report'

{
   "response":{
      "status":"OK",
      "report_id":"6b177543a9411ffa67b09bdf5e76cac1"
   }
}
```



**`GET` the report status from the Report Service**

>

``` pre
$ curl -b cookies 'https://api.appnexus.com/report?id=6b177543a9411ffa67b09bdf5e76cac1'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2020-08-25 13:03:37",
         "json_request":"{\"report\":{\"report_type\":\"platform_inventory_availability\",\"columns\":[\"day\",\"seller_member_name\",\"audit_type\",\"imps\",\"size\",\"device_type\,\"operating_system_family\,\"geo_country\"],\"report_interval\":\"today\",\"format\":\"csv\",\"grouping\":{\"additional_grouping_sets\":[],\"unselected_implicit_groupings\":[],\"additional_groups_on_bottom\":true},\"timezone\":\"UTC\",\"filters\":[{\"device_type\":\"123456\"}],\"reporting_decimal_type\":\"decimal\",\"use_cache\":true},\"extraction_version\":\"refactored\",\"end_date\":1598400000,\"start_date\":1598313600,\"user_id\":\"987654\"}",
         "url": "report-download?id=6b177543a9411ffa67b09bdf5e76cac1"
      },
      "execution_status":"ready"
   }
}
```



**`GET` the report data from the Report Download Service**



To download the report data to a file, make another `GET` call with the
Report ID, but this time to the **report-download** service. You can
find the service and Report ID in the `url` field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.







``` pre
$ curl -b cookies 'https://api.appnexus.com/report-download?id=6b177543a9411ffa67b09bdf5e76cac1' > /tmp/platform_inventory_availability.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










