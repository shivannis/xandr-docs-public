---
Title : Curator Bid Error Report
Description : The **Curator Bid Error Report** helps you gain insight into rejected
ms.date: 10/28/2023
ms.custom: digital-platform-api
demand through a randomly selected set of 5% of the errors logged on the
Xandr platform. Error Count has been multiplied
---


# Curator Bid Error Report





The **Curator Bid Error Report** helps you gain insight into rejected
demand through a randomly selected set of 5% of the errors logged on the
Xandr platform. Error Count has been multiplied
by 100 to account for the 5% sampling. You can use this report to
troubleshoot sell-side and buy-side settings that result in auction
errors, thereby blocking spend. The goal is to help you eliminate the
error in the future. You can find information on the owner, cause and
recommended resolution for each error in <a
href="xandr-bidders/bid-error-codes.md"
class="xref" target="_blank">Bid Error Codes</a>.

For instructions on retrieving a report, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="curator-bid-error-report.md#curator-bid-error-report__example"
class="xref">example</a> below.





## Time Frame



The `report_interval` field in the JSON request can be set to one of the
following:

- custom
- last_hour



**Data Retention Period**

Data in this report is retained for 33 days.





<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.









## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="curator-bid-error-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="curator-bid-error-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="curator-bid-error-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="curator-bid-error-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="curator-bid-error-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The hour of the error
occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The day of the error
occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The month of the error
occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">error_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">101</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The specific error that
occurred and was logged in ImpBus (ties to Error Message).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">error_message</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">varchar</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">“Creative brand banned by member's ad profile”</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">A generic error message
that describes the error that occurred (ties to Error ID).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">ad_profile_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">1432</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The Ad Profile ID of the
seller member affected by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">bidder_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">“DBM”</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The technology provider who
is representing a Buyer Member and is affected by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">bidder_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">101</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID associated with the
bidder.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"DBM(101)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name and ID associated
with the bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">brand_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"Ace Hardware"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The brand registered in the
Xandr system and associated with the creative
that is affected by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">brand_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of the brand
associated with the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">brand</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"Ace Hardware(3)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name and ID of the
brand.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"My Network"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The buyer member affected
by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of the buyer
member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">buyer_member</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"My Network(123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name and ID of the
buyer member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">122</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of the seller
member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"My Network"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The seller member affected
by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">seller_member</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"My Network(122)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name and ID of the
seller member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">creative_category_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">“Beauty”</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">A classification assigned
to both brands and creatives affected by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">creative_category_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">Int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">784</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of the creative
category.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">creative_category</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">“Beauty(784)”</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name and ID of the
creative category.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">554</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The creative identifier
associated with the buyer member that is affected by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">creative_size</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The size of the creative
affected by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">2345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of the deal affected
by the error (if Deal ID = 0 no deal was involved).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"My Deal"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name of the affected
deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">deal</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"My Deal(2345)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name and ID of the
affected deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">language_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"English"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name of the
language.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">language_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of the
language.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">language</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"English(1)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name of the
language.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"My placement"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The placement of the seller
member that is associated with the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">7890</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of the
placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">placement</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"My placement(780)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name and ID of the
placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of the publisher
affected by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"My publisher"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name of the publisher
affected by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"My publisher(321)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name and ID of the
publisher affected by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of the general
display style of the creative (banner, expandable, video, etc.)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">brand_category_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of a category under
which brands fall (Airline, Apparel, Computers and Electronics
etc.)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">brand_category_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"Airline"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name of a brand
category.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">brand_category</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"Airline(1)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name and ID of a brand
category.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">video_context</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"Outstream"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">When and where the video
creative plays (Outstream, Pre-roll, Mid-roll, Post-roll etc.)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">logged_error_message</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"Banned brand id(111) detected for the profile"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The specific error message
that describes the error that occurred (ties to Error ID) and present in
error logs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">device_type</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">6</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID for the type of
device where the error occured.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">adserver_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"AdServer One"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name of the
adserver.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">adserver_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">132</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of the
adserver.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">adserver</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"AdServer One(132)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name and ID of the
adserver.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">technical_attribute_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">“Flash”</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The feature of the
creative, such as whether it is an image, flash, video, is expandable,
etc., that is affected by the error.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">technical_attribute_
id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">350</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of the Technical
Attribute.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">technical_attribute</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">“Flash(350)”</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name and ID of the
Technical Attribute.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">buyer_seat_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">350</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The identifier for the seat
of the buyer member that is affected by the error.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">buyer_seat_code</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"SCID001"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The custom buyer seat ID
(submitted by DSP) which was used to bid on the impression</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">buyer_seat_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"FirstSeatCodeID"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The display name for the
buyer seat code.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">curator_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">12148</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The curator ID associated
with the errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">curated_deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">991</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of the curated deal
affected by the error</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">curated_deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"Renault Curator Deal"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name of the affected
curated deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">curated_deal</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"Renault Curator Deal (111)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name and ID of the
affected curated deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">curator_deal_line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">675</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The ID of the line item
associated with the deal of the curator member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">curator_deal_line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"LIOne"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name of the line item
associated with the deal of the curator member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__1">curator_deal_line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__4"><code
class="ph codeph">"LIOne(675)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__5">The name and ID of the line
item associated with the deal of the curator member.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="curator-bid-error-report__entry__296"
class="entry colsep-1 rowsep-1">Column</th>
<th id="curator-bid-error-report__entry__297"
class="entry colsep-1 rowsep-1">Type</th>
<th id="curator-bid-error-report__entry__298"
class="entry colsep-1 rowsep-1">Example</th>
<th id="curator-bid-error-report__entry__299"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="curator-bid-error-report__entry__300"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__296">error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__297">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__298"><code
class="ph codeph">2340</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__299">sum(error_count)*100</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-bid-error-report__entry__300">The amount of errors
logged on the Xandr platform over the timeframe
selected (a randomly selected set of 5% of the errors multiplied by 100
to account for the sampling).</td>
</tr>
</tbody>
</table>




## Example

**Create the JSON-formatted report request**

The JSON file should include the `report_type`
`"curator_bid_error_report"`, as well as the `columns` (dimensions and
metrics) and `report_interval` that you want to retrieve. You can also
filters for specific dimensions, define granularity (year, month, day),
and specify the format in which the data should be returned (csv, excel,
or html). For a full explanation of fields that can be included in the
JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.



``` pre
$ cat curator_bid_error_report  
{
    "report":
    {
        "report_type":"curator_bid_error_report",
        "columns":[
            "hour",
            "bidder",
            "buyer_member",
            "error_count"
        ],
        "report_interval":"custom",
        "format":"csv"
    }
}
```



**`POST` the request to the Reporting Service**



``` pre
$ curl -b cookies -c cookies -X POST -d @curator_bid_error_report 'https://api.appnexus.com/report'
{
   "response":{
      "status":"OK",
      "report_id":"097f59fc3ab7d02c5d60db42081d9b69"
   }
}
```



**`GET` the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=097f59fc3ab7d02c5d60db42081d9b69'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:19:53",
         "json_request":"{\"report\":{\"report_type\":\"curator_bid_error_report\",\"columns\":[\"hour\",\"bidder\",
            \"buyer_member\",\"error_count\",
            \"report_interval\":\"custom\"}}",
         "url": "report-download?id=b97897a7864dd8f34e7457226c7af592"
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
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/curator_bid_error_report.csv
```





<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










