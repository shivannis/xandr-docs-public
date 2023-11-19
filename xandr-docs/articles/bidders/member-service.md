---
Title : Member Service
Description : <figure id="ID-00005531__fig_zd1_l1c_nwb" class="fig fignone">
ms.date : 10/28/2023
<b>Note:</b> Members are integrated into <span
class="ph">Xandr's system and managed via the Member Service.
---


# Member Service



<figure id="ID-00005531__fig_zd1_l1c_nwb" class="fig fignone">

<b>Note:</b> Members are integrated into <span
class="ph">Xandr's system and managed via the Member Service.

</figure>

Any entity that has a financial relationship with
Xandr's platform (usually a buyer or seller)
needs to be added to Xandr's system as a
"member" before they can conduct transactions. Members can be registered
with the Member Service either by a bidder or by
Xandr personnel.

**Members and Contracts  
**

Before they can buy or sell ads, a member needs a contract with
Xandr. This contract will establish financial
terms and credit facilities (if applicable), and bind the member to the
terms and conditions of Xandr, such as content
quality and use of personally identifiable information. Any bidder can
create a member at any time, but members will not be able to place bids
until their contract has been approved.

<figure id="ID-00005531__fig_tkz_51c_nwb" class="fig fignone">

<b>Note:</b>
<ul>
<li>If you are looking for information about other platform members use
the <a
href="member-service.md"
class="xref" target="_blank">Platform Member Service.</a></li>
<li>In bidder sandbox environments, all functionality of the Member
Service is available.</li>
<li>The Member Service does not grant API access. That is done via the
<a href="https://wiki.xandr.com/display/consoledrafts/User%2bService"
class="xref" target="_blank">User Service</a>.</li>
</ul>

</figure>



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005531__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00005531__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00005531__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__2"><a
href="https://api.adnxs.com/member" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/member</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__3">To
see all your members</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__2"><a
href="https://api.adnxs.com/member/MEMBER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/member/MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__3">To
see a particular member</td>
</tr>
</tbody>
</table>

<figure id="ID-00005531__fig_nlz_vcc_nwb" class="fig fignone">

<b>Note:</b> The calls below are visible to
Xandr employees only. They can be made by users
with the "admin" <code class="ph codeph">user_type</code>.

</figure>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005531__entry__10" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00005531__entry__11"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00005531__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__10">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__11">https://api.<span
class="ph">adnxs.com/member</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__12">To
add a new member</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__10">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__11">https://api.<span
class="ph">adnxs.com/member/MEMBER_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__12">To
modify an existing member</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005531__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00005531__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00005531__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__21">Whether the member can provide and/or
bid for inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">agent_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__21">Used for inventory aggregator
members.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">allow_ad_profile_override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__21">This field is not currently used.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">audit_notify_email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__21">Each time Xandr
audits a creative belonging to this member, a detailed response is sent
to this email address. The response includes the creative's audit status
and any reasons why the creative has not passed audit. This field
supports multiple comma-separated email addresses.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
bidder that manages bidding for the member. Can be blank for members
that only sell inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">billing_address_1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string(255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
first line of the member's address.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">billing_address_2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string(255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
second line of the member's address.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">billing_city</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string(100)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
city of the member's address.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">billing_country</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string(50)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
country of the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">billing_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string(100)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
billing name (who to write checks to).
<ul>
<li><strong>Required On:</strong> POST.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">billing_postal_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string(50)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
postal code for the member's address.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">billing_region</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
region of the member's address.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">buyer_clearing_fee_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
percent of the CPM paid for inventory charged as a fee.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">buyer_credit_limit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
credit limit for this member when buying inventory through <span
class="ph">Xandr. Read-only.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__21">Optional way to add an internal
identification.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">contact_email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__21">This field is not currently used.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">default_ad_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">If
you want to set an <a
href="member-service.md#"
class="xref" target="_blank">ad profile</a> for all TinyTags belonging
to a member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">default_tag_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
ID of the creative to serve in the case where tags are being called
using unknown codes.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">dongle</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">A
password that can be passed into a debug auction (as the "dongle"
parameter) that will allow a member access to relevant debug output from
their bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">email_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string(50)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__21">Email code is a unique value used when
TinyTags are processed via our email tag processing tool. Must be an
alphanumeric value.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
ID of the member.
<ul>
<li><strong>Required On:</strong> PUT.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
timestamp of last modification to this bidder instance.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">platform_exposure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20"></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">See
below for details. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">price_buckets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__21">When using Preemptive Tags, a selling
member may require Price Bucket for 3rd party ad server pricing.
Depending on the kind of integration a 3rd party adserver requires, the
values might be [{"price_bucket": 10}, {"price_bucket": 20}. . . ] or
[{"price_bucket": 10, "width": 300, "height":200", "pixel_url":
"https://..."}, . . . ].</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">prioritize_margin</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">If
set to "true", Xandr will perform a bid/no bid
check for managed campaigns based on line item minimum margin settings.
 <br />
 <br />
If set to "false", Xandr will not not perform
any bid/no bid check for managed campaigns based on the line item
minimum.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">seller_revshare_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__21"><ul>
<li>Read-only for bidder-users and members.</li>
</ul>
<p>Percentage amount that Xandr takes out of
seller revenue.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">serving_domain</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__21">Used when generating tags for selling
members. (i.e. <a href="https://mycompany.adnxs.com" class="xref"
target="_blank">mycompany.adnxs.com</a> instead
<a href="https://ib.adnxs.com" class="xref" target="_blank">ib.<span
class="ph">adnxs.com</a>). "serving_domain": {"cname":
null,"type": null} Read only.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">sherlock_notify_email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__21">Each time Sherlock, our automated
creative scanning system, scans a creative belonging to this member, a
response is sent to this email address. The response includes the
creative's audit status and any reasons why the creative has not passed
audit. For more information, please see <a
href="sherlock---creative-quality-control.md"
class="xref" target="_blank">Sherlock</a>. This field supports multiple
comma-separated email addresses.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__19"><code
class="ph codeph">timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005531__entry__21">The
member timezone is the default timezone for your reports. Please see <a
href="reporting-timezones.md"
class="xref" target="_blank">Reporting Timezones</a> for possible
values. Default is "EST5EDT".  </td>
</tr>
</tbody>
</table>

**Platform Exposure**

The platform exposure setting determines how your account is displayed
to other members on the platform. There are three values which result in
slightly different behaviors as outlined below:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005531__entry__109"
class="entry colsep-1 rowsep-1">Platform Exposure Value</th>
<th id="ID-00005531__entry__110"
class="entry colsep-1 rowsep-1">Behavior</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__109"><code
class="ph codeph">hidden</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__110">Member is not displayed.
<blockquote>

<b>Note:</b> Setting <code
class="ph codeph">platform_exposure</code> to <code
class="ph codeph">"hidden"</code> will hide your member <code
class="ph codeph">"name"</code> and <code
class="ph codeph">"domain"</code> fields in our <a
href="https://xandr.com/sellers.json" class="xref"
target="_blank">sellers.json</a> file and list your member seat as <code
class="ph codeph">"is_confidential": 1</code>. For example,
<pre id="ID-00005531__codeblock_xt5_xgc_nwb"
class="pre codeblock"><code>{
      &quot;seller_id&quot;: &quot;8253&quot;,
      &quot;is_confidential&quot;: 1,
      &quot;seller_type&quot;: &quot;PUBLISHER&quot;
    }</code></pre>
<p>This can limit the monetization of your inventory as some DSPs may
not choose to buy impressions from sellers who are not transparent in
the <code class="ph codeph">"schain"</code> object.</p>

</blockquote></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__109"><code
class="ph codeph">private</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__110">Member is displayed as "Member 123"
where 123 is the member ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__109"><code
class="ph codeph">public</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005531__entry__110">Member is displayed using the billing
name.
<figure id="ID-00005531__fig_x3d_fhc_nwb" class="fig fignone">

<b>Note:</b> Setting <code
class="ph codeph">platform_exposure</code> to <code
class="ph codeph">"public"</code> will display your member <code
class="ph codeph">"name"</code> and <code
class="ph codeph">"domain"</code> fields in our <a
href="https://xandr.com/sellers.json" class="xref"
target="_blank">sellers.json</a> file. For example,
<pre id="ID-00005531__codeblock_z3d_fhc_nwb"
class="pre codeblock"><code>{
      &quot;seller_id&quot;: &quot;7694&quot;,
      &quot;seller_type&quot;: &quot;INTERMEDIARY&quot;,
      &quot;domain&quot;: &quot;groupm.com&quot;,
      &quot;name&quot;: &quot;Xaxis – Slovakia Marketplace&quot;
    }</code></pre>

</figure></td>
</tr>
</tbody>
</table>

The sample JSON below shows how to set this parameter.

``` pre
{
  "member": {
    "platform_exposure": "public"
  }
}
```





## Authentication Token

Authentication is always the first step when using the API Services. The
authentication token can then be written to our cookie file for future
use. Please see <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a> for more
detailed instructions.

**Example**

**Create a JSON-formatted file describing the member**

The only required fields are `billing_name` and `bidder_id` if the
member is associated with a bidder, but since a member has a financial
relationship with Xandr, you will probably want
to include other billing-related information.

``` pre
$ cat member
{
        "member" : {
                "active" : true,
                "billing_name" : "My Company",
                "bidder_id" : 2,
                "billing_address_1" : "One Coke Way",
                "billing_city" : "Atlanta",
                "billing_region" : "GA",
                "billing_country" : "US",
        "email_code" : "cola"
        }
}
```

**Add the member file to the Imp Bus cache.**

``` pre
$ curl -b cookies -c cookies -X POST --data-binary @member 'https://api.adnxs.com/member'
{
        "response":{
                "status":"OK","id":1
        }
}
```

**Now modify the member via a modified JSON-formatted file**

``` pre
$ cat member_mod
{
        "member" : {
                "active" : true,
                "billing_name" : "My Company",
                "bidder_id" : 2,
                "billing_address_1" : "Building 5",
                "billing_address_2" : "Company Complex",
                "billing_city" : "Atlanta",
                "billing_region" : "GA",
                "billing_country" : "US",
                "billing_postal_code" : "33608"
        }
}
```

**Update the member information in the Imp Bus cache, using the member
ID**

``` pre
$ curl -b cookies -c cookies-X PUT --data-binary @member_mod 'https://api.adnxs.com/member/1'
{
        "response":{
                "status":"OK"
        }
}
```

**View information about the member**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/member/1'
{
   "response":{
      "status":"OK",
      "member": {
        "id": 334,
        "agent_id": null,
        "code": null,
        "active": true,
        "buyer_credit_limit": 0,
        "billing_name" : "My Company",
                "bidder_id" : 2,
                "billing_address_1" : "Building 5",
                "billing_address_2" : "Company Complex",
                "billing_city" : "Atlanta",
                "billing_region" : "GA",
                "billing_country" : "US",
                "billing_postal_code" : "33608"
        "email_code": "cola",
        "seller_revshare_pct": 95,
        "price_buckets": [
        ],
        "default_tag_id": null,
        "default_ad_profile_id": 251,
        "buyer_clearing_fee_pct": null,
        "serving_domain": {
          "cname": null,
          "type": null
        },
        "last_activity": "2010-04-08 03:38:16",
        "timezone": "EST5EDT"
      }
   }
}
```






