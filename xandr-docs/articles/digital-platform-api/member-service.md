---
Title : Member Service
Description : A member is any entity that has a financial relationship with
ms.date: 10/28/2023
ms.custom: digital-platform-api
Xandr, and each client is a single member.
---


# Member Service



A member is any entity that has a financial relationship with
Xandr, and each client is a single member.
Members are registered with the Member Service by
Xandr personnel, and all API activity must be
associated with a member. Note that the Member Service does not grant
API or UI access. Each member has multiple users who have their own UI
and API credentials, and are managed by the
<a href="user-service.md"
class="xref" target="_blank">User Service</a> .

Members and Contracts  
Before they can buy or sell ads, a member needs a contract with
Xandr. This contract will establish financial
terms and credit facilities (if applicable), and bind the member to the
terms and conditions of Xandr, such as content
quality and use of personally identifiable information.


## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000fd3__REST_API__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="ID-00000fd3__REST_API__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000fd3__REST_API__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__2"><a
href="https://api.appnexus.com/member" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/member</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__3">View your member</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__2"><a
href="https://api.appnexus.com/member?id=MEMBER_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/member?id=MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__3">View a particular member, if
you have multiple</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__2"><a
href="https://api.appnexus.com/member/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/member/meta</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__3">Find out which fields you can
filter and sort by</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__2"><a
href="https://api.appnexus.com/member?id=MEMBER_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/member?id=MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__3">Modify an existing member</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__2"><a
href="https://api.appnexus.com/member" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/member</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__REST_API__entry__3">Add a new member
(Admin-only)</td>
</tr>
</tbody>
</table>




## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000fd3__JSON_fields__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000fd3__JSON_fields__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000fd3__JSON_fields__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">allow_ad_profile_override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p>If <code
class="ph codeph">true</code>, the ad quality restrictions in <code
class="ph codeph">default_ad_profile_id</code> will take precedence over
ad quality restrictions defined at the placement level. For example, if
you restrict Advertiser X in the default ad quality profile at the
network level, but do not restrict Advertiser X at the placement level,
Advertiser X will still be restricted. If you set this to <code
class="ph codeph">false</code> , settings at the placement level will
take precedence.</p>


<b>Note:</b> If you set this to <code
class="ph codeph">true</code>, you must set the <code
class="ph codeph">default_ad_profile_id</code> as well.


<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">allow_non_cpm_payment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Default</strong>:
<code class="ph codeph">true</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">app_contract_accepted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p><strong>Not yet
supported</strong>. Indicates whether the member has agreed to the <span
class="ph">Xandr terms of service contract for <span
class="ph">Xandr's exchange. Non-admin users can only change this
field from <code class="ph codeph">False</code> to <code
class="ph codeph">True</code>. In order to set it from <code
class="ph codeph">True</code> to <code class="ph codeph">False</code>,
contact your Xandr representative.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">audit_notify_email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">Each time <span
class="ph">Xandr audits a creative belonging to this member, a
detailed response is sent to this email address. The response includes
the creative's audit status and any reasons why the creative has not
passed audit. This field supports multiple comma-separated email
addresses. Could also be used for domain audit notification ( see <code
class="ph codeph">domain_blacklist_email</code> below).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">buyer_clearing_fee_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Admin-only</strong>.
The percent of the CPM paid for inventory charged as a fee in certain
cases. See your contract for more information.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">buyer_credit_limit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Admin-only</strong>.
The credit limit with Xandr taken into
consideration when the member is buying inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">contact_email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">The email contact for this
member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">content_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">A list of available
categories that you can apply to publishers, sites, and placements. Can
be customized by the member. The array is of the following format:
<p><code
class="ph codeph">[{"id":"2950","name":"Animals"},{"id":"2951","name":"Arts &amp; Humanities"}, ... ,{"id":"2977","name":"Travel"}]</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">contract_allows_unaudited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p><strong>Admin-only</strong>.
See <code class="ph codeph">default_campaign_trust</code> and <code
class="ph codeph">default_campaign_allow_unaudited</code> for
information about Xandr-reviewed inventory. If
your contract does not allow you to run on non-<span
class="ph">Xandr-reviewed inventory for some reason, this will be
<code class="ph codeph">false</code>.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">creative_size_fee_per_gb</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Read-only</strong>.
The fee that is charged per GB for a creative that exceeds the <code
class="ph codeph">creative_size_minimum_bytes</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">creative_size_minimum_bytes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Read-only</strong>.
The size above which a creative is considered over-sized. The member is
charged a creative overage fee for serving an over-sized creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">daily_budget</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">
The safety budget for your member, in U.S. dollars. The safety budget
establishes a member-wide cap for your daily CPM media cost on
third-party inventory. This helps limit the risk of unintentional
overspend due to trafficking and campaign setup errors. Your safety
budget always operates on the <code class="ph codeph">timezone</code> of
your member and resets each day at 12am.
<ul>
<li>To control who receives email notifications when your safety budget
is approached, use the <code
class="ph codeph">send_safety_budget_notifications</code> field on the
<a href="user-service.md"
class="xref" target="_blank">User Service</a>.</li>
</ul>

<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p>The safety budget for
your member, in impressions. See <code
class="ph codeph">daily_budget</code> above for more details.</p>
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">daily_imps_self_audited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">daily_imps_unaudited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">daily_imps_verified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">deal_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Default</strong>:
<code class="ph codeph">null</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_accept_data_provider_usersync</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">See <code
class="ph codeph">default_accept_supply_partner_usersync</code>.
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_accept_deals</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p>If <code
class="ph codeph">true</code>, the <code
class="ph codeph">acceptance_status</code> field of the <a
href="deal-buyer-setting-service.md"
class="xref" target="_blank">Deal Buyer Setting Service</a> defaults to
<code class="ph codeph">active</code>, if <code
class="ph codeph">false</code>, the <code
class="ph codeph">acceptance_status</code> defaults to <code
class="ph codeph">pending</code>.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_accept_demand_partner_usersync</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p>See <code
class="ph codeph">default_accept_supply_partner_usersync</code>.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_accept_supply_partner_usersync</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">We use pixels to sync user
IDs between Xandr and our major non-platform
supply partners, such as Google, and third party data providers. This
increases our ability to apply frequency and recency caps and segment
data across the Internet. You can opt not to participate in user
syncing; however this reduces our ability to apply the right information
to your campaigns.
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_ad_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">The ID of the default <a
href="ad-profile-service.md"
class="xref" target="_blank">Ad Profile</a> to use. This is required
when <code class="ph codeph">allow_ad_profile_override</code> is <code
class="ph codeph">true</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_allow_cpa</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Default</strong>:
<code class="ph codeph">true</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_allow_cpc</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Default</strong>:
<code class="ph codeph">true</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_buyer_group_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">Currently used for an alpha
feature.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_campaign_allow_unaudited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p>You can choose to apply
Inventory Quality criteria to your campaigns (sensitive attributes,
intended audience, etc.). If this field is <code
class="ph codeph">false</code>, then certain inventory quality criteria
will be applied by default to each campaign. You can override it at any
time in the Campaign Manager or through the campaign's <a
href="profile-service.md"
class="xref" target="_blank">profile</a>. If <code
class="ph codeph">true</code>, no inventory quality criteria will be
applied to your campaigns unless you manually apply it.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_campaign_trust</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p><span
class="ph">Xandr reviews a significant portion of inventory and
applies quality attributes, and also encourages members who sell on our
platform to review their inventory in the same manner. If you would like
campaigns to by default run only on <span
class="ph">Xandr-reviewed inventory, then set this field to <code
class="ph codeph">"</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">"</code>. If you want to default to your seller trust
settings, which may include seller-reviewed and unreviewed inventory,
set this field to <code class="ph codeph">"seller"</code>. You can
override this with the campaign's <a
href="profile-service.md"
class="xref" target="_blank">profile.</a></p>
<p>Possible values:</p>
<ul>
<li><code class="ph codeph">seller</code></li>
<li><code class="ph codeph">appnexus</code></li>
</ul>
<p><strong>Default</strong>: appnexus</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_content_retrieval_timeout_ms</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">
The default timeout, specified in milliseconds, for all placements
created by this member. The default value of <code
class="ph codeph">0</code> will mean that mediated content will not be
served.

<b>Note:</b> This setting can still be
overridden by the <code
class="ph codeph">content_retrieval_timeout_ms</code> field on the
placement itself.


<p><strong>Default</strong>: <code class="ph codeph">0</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_country</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">
The objects are:
<ul>
<li><code class="ph codeph">"country_id"</code></li>
<li><code class="ph codeph">"country_name"</code></li>
<li><code class="ph codeph">"country_code"</code></li>
</ul>

<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p>The default currency for
this member. Can be overridden at more granular levels. For possible
currency values, please use the <a
href="currency-service.md"
class="xref" target="_blank">Currency Service</a>.</p>
<p><strong>Default</strong>: <code class="ph codeph">USD</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_enable_for_mediation</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p>Whether placements
created by this member are enabled to serve mediation creatives by
default. Even if this field is set to <code
class="ph codeph">false</code>, the <code
class="ph codeph">enable_for_mediation</code> field on the placement
itself can still override the behavior defined here.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">default_placement_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">The placement ID to be used
as a default when an inactive or nonexistent seller tag is called.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">developer_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Read-only</strong>.
The ID of the developer, if the member is developing on <span
class="ph">Xandr's platform (e.g., for the Apps
Marketplace).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">domain_blacklist_email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">When <span
class="ph">Xandr finds domains belonging to this member to be in
violation of its standards and auditing policies, the domains are put
into a blocklist, and an email is sent to this email address. The email
identifies the domain URL, average daily impressions, and blocklist
reason(s) for each domain that averaged at least 10,000 daily
impressions over the last 7 days. Blocked domains that averaged less
than 10,000 daily impressions over the last 7 days are not included in
the email.

<b>Note:</b> If no email address is provided
here, the email address in the <code
class="ph codeph">audit_notify_email</code> is used instead.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">dongle</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">A code that is used as a
password for a member's debug output.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">email_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string(50)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">Email code is a unique
value used when placements are processed via our email tag processing
tool. Must be an alphanumeric value.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">enable_click_and_imp_trackers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Admin-only</strong>.
If <code class="ph codeph">true</code>, external click and impression
trackers can be created in .
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">entity_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p><strong>Admin-only</strong>.
A legacy field that may be used in the future. Possible values: <code
class="ph codeph">"reseller"</code> or <code
class="ph codeph">"direct"</code> (deprecated).</p>
<p><strong>Default</strong>: <code
class="ph codeph">"reseller"</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">expose_eap_ecp_placement_settings</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">Deprecated as of March
2011.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">expose_optimization_levers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Admin-only</strong>.
If <code class="ph codeph">true</code>, optimization levers are shown in
.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">floor_optimization</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Read-only</strong>.
Indicates if floor optimization is enabled for this member and provides
the bidder ID of a real-time price provider. See <a
href="member-service.md#ID-00000fd3__floor_optimization"
class="xref">Floor Optimization</a> below for the definitions of the
objects in this array. May also be set to <code
class="ph codeph">null</code> to disable the feature.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p>The ID of the
member.</p>
<p><strong>Required on</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">interface_domain</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>This field is being
deprecated.</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">interface_domain_beta</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>This field is being
deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">inventory_trust</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">This controls who you buy
from and whether Xandr will use their quality
and category information for targeting. See <a
href="member-service.md#ID-00000fd3__inventory_trust"
class="xref">Inventory Trust</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">is_iash_compliant</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Admin-only</strong>.
If a selling member is IASH compliant, a logo will be placed next to the
member's name in  Partner Center.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">The timestamp of last
modification to this member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">max_hosted_video_size</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Admin-only</strong>.
The maximum file size for hosted in-stream video creatives. In addition
to limiting file size, setting this field enables the member to host
videos with Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">mediation</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Read-only</strong>.
Indicates whether automatic bid adjustments and reporting sync are
enabled for this member. See <a
href="member-service.md#ID-00000fd3__mediation"
class="xref">Mediation</a> below for the definitions of the objects in
this array.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">member_brand_exceptions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p>An array of brand IDs.
Creatives associated with these brands will be allowed to serve more
than once per page load on your publishers' pages (<strong>4</strong> on
those publishers' pages who have enabled sell-side page caps via the
<code class="ph codeph">seller_page_cap_enabled</code> field of the <a
href="publisher-service.md"
class="xref" target="_blank">Publisher Service</a>). You can also add
per-publisher brand exceptions using the <code
class="ph codeph">publisher_brand_exceptions</code> field of the <a
href="publisher-service.md"
class="xref" target="_blank">Publisher Service</a>. See <a
href="member-service.md#ID-00000fd3__member_brand_exceptions"
class="xref">Member Brand Exceptions</a> for the definitions of the
objects stored in this array.</p>
<p><strong>Default</strong>: <code class="ph codeph">n/a</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">The name of the member.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">native_custom_keys</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">Some sellers of native
advertising require buyers to use <code
class="ph codeph">"custom keys"</code> to target their inventory. These
keys will vary from member to member. This field allows sellers to
define what custom values they'd like buyers to pass in via a native
creative. For more information, see <a
href="member-service.md#ID-00000fd3__native_custom_keys"
class="xref">Native Custom Keys</a> below.

<b>Note:</b> You can obtain a list of native
custom keys using the read-only <a
href="member-service.md#ID-00000fd3__native_custom_keys"
class="xref">Native Custom Key Service</a>.

<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">no_reselling_priority</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">This value is used to
determine whether RTB bids are allowed to compete with your managed
campaigns. In order for an RTB bid to be able to compete with a managed
bid for an impression, this field's value must be greater than the
priority of the managed bid.
<p>For example, let's say you have the following auction and
settings:</p>
<blockquote>
<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000fd3__JSON_fields__entry__163"
class="entry colsep-1 rowsep-1">Bid Type</th>
<th id="ID-00000fd3__JSON_fields__entry__164"
class="entry colsep-1 rowsep-1">Bid Price</th>
<th id="ID-00000fd3__JSON_fields__entry__165"
class="entry colsep-1 rowsep-1">Priority</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__163">RTB</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__164">$5</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__165">8 (<code
class="ph codeph">no_reselling_priority</code>)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__163">Managed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__164">$3</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__165">8 (<span
class="ph"> priority)</td>
</tr>
</tbody>
</table>
<p>In this example, the RTB bid will not compete, even though its bid
price is higher. In order for RTB to compete on this impression, <code
class="ph codeph">no_reselling_priority</code> would have to be 9 or
higher.</p>
<p>In addition, when reselling is allowed for an impression, the highest
priority standard managed demand will be allowed to compete with the
highest priority guaranteed demand (as well as with RTB).</p>
</blockquote></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">pitbull_segment_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><div
class="note note_note">
<b>Note:</b> This field has been deprecated.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">pitbull_segment_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><div
class="note note_note">
<b>Note:</b> This field has been deprecated.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">platform_exposure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">
This determines whether and how your member appears in the <span
class="ph uicontrol">Buyers tab of the Ad Quality Manager in
 and in the <a
href="platform-member-service.md"
class="xref" target="_blank">Platform Member</a> service. Possible
values:
<ul>
<li><code class="ph codeph">"public"</code> = Your member name is
shown.</li>
<li><code class="ph codeph">"private"</code> = Your member ID is
shown.</li>
<li><code class="ph codeph">"hidden"</code> = Your member does not
appear.</li>
</ul>


<b>Note:</b>
<ul>
<li><p>Setting <code class="ph codeph">platform_exposure</code> to <code
class="ph codeph">"hidden"</code> will hide your member <code
class="ph codeph">"name"</code> and <code
class="ph codeph">"domain"</code> fields in our <a
href="https://xandr.com/sellers.json" class="xref"
target="_blank">sellers.json</a> file and list your member seat as <code
class="ph codeph">"is_confidential": 1</code>. For example,</p>
<pre class="pre codeblock"><code>{
      &quot;seller_id&quot;: &quot;7694&quot;,
      &quot;seller_type&quot;: &quot;INTERMEDIARY&quot;,
      &quot;domain&quot;: &quot;groupm.com&quot;,
      &quot;name&quot;: &quot;Xaxis – Slovakia Marketplace&quot;
 }</code></pre>
<p>This can limit the monetization of your inventory as some DSPs may
not choose to buy impressions from sellers who are not transparent in
the <code class="ph codeph">"schain"</code> object.</p></li>
<li><p>Setting <code class="ph codeph">platform_exposure</code> to <code
class="ph codeph">"public"</code> will display your member <code
class="ph codeph">"name"</code> and <code
class="ph codeph">"domain"</code> fields in our <a
href="https://xandr.com/sellers.json" class="xref"
target="_blank">sellers.json</a> file. For example,</p>
<pre class="pre codeblock"><code>{ 
           &quot;seller_id&quot;: &quot;8253&quot;, 
          &quot;is_confidential&quot;: 1, 
           &quot;seller_type&quot;: &quot;PUBLISHER&quot; 
}</code></pre></li>
<li>Note that <code class="ph codeph">primary_type</code> must be either
<code class="ph codeph">"buyer"</code> or <code
class="ph codeph">"network"</code> in order for it to appear in the
Buyers tab of the Ad Quality Manager
in .</li>
</ul>
<p><strong>Default</strong>: <code class="ph codeph">"public"</code></p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">plugins</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">The plugins that users see
on the Apps tab in . See <a
href="member-service.md#ID-00000fd3__plugins" class="xref">Plugins</a>
below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">plugins_enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Admin-only</strong>.
If <code class="ph codeph">true</code>, the Apps tab is shown in <span
class="ph">.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">pops_enabled_UI</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p><strong>Admin-only</strong>.
If <code class="ph codeph">true</code>, pop ad support is shown in <span
class="ph">.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">prioritize_margin</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p>If set to <code
class="ph codeph">true</code> Xandr will perform
a bid/no bid check for managed campaigns based on line item minimum
margin settings. If set to <code class="ph codeph">false</code> <span
class="ph">Xandr will not not perform any bid/no bid check for
managed campaigns based on the line item minimum.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">reporting_decimal_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">
The decimal mark used in reporting. This setting can be overridden at
the user and report levels (see <code
class="ph codeph">"reporting_decimal_type"</code> in the <a
href="user-service.md"
class="xref" target="_blank">User Service</a> and <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>). Possible values:
<ul>
<li><code class="ph codeph">"comma"</code></li>
<li><code class="ph codeph">"decimal"</code> (period)</li>
</ul>

<p><strong>Default</strong>: <code
class="ph codeph">"decimal"</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">reselling_description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">This description is not
currently used in .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">reselling_exposure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p>Whether or not to expose
the member's inventory to the platform for reselling in the real-time
marketplace. Possible values: <code class="ph codeph">"public"</code> or
<code class="ph codeph">"private"</code>.</p>
<p><strong>Default</strong>: <code
class="ph codeph">"private" </code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">reselling_exposed_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">The date and time at which
<code class="ph codeph">reselling_exposure</code> was changed to <code
class="ph codeph">"public"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">seller_member_groups</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Admin-only</strong>.
Specifies information about the groups of sellers to which this member
belongs. See <a
href="member-service.md#ID-00000fd3__seller_member_group"
class="xref">Seller Member Group</a> below for more information.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">seller_revshare_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Admin-only</strong>.
If this member is a seller and has a revenue sharing agreement with
Xandr, the Xandr portion
of the revenue sharing is indicated here.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">serving_domain</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><strong>Admin-only</strong>.
The domain through which advertisements are served. The format of the
object is <code class="ph codeph">{"cname":"</code><a
href="http://ad.domain.com" class="xref" target="_blank"><code
class="ph codeph">ad.domain.com</code></a><code
class="ph codeph">","type":null}</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">sherlock_notify_email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">Each time Sherlock scans a
creative belonging to this member, a response is sent to this email
address. The response includes the creative's audit status and any
reasons why the creative has not passed audit. This email address will
also receive<a
href="xandr-bidders/object-limits---faq.md"
class="xref" target="_blank">object limit notifications</a> , sent when
you reach 85, 95, and 100 percent of your limit for an object. This
field supports multiple comma-separated email addresses.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">short_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">URL-friendly name to be
used as needed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">standard_sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">The list of sizes which are
included in the standard sizes dropdown in  when
creating creatives. The array is of the following format:
<pre class="pre codeblock"><code> [{&quot;width&quot;:&quot;120&quot;,&quot;height&quot;:&quot;600&quot;,&quot;is_standard&quot;:true},{&quot;width&quot;:&quot;160&quot;,&quot;height&quot;:&quot;600&quot;,&quot;is_standard&quot;:true}, ... ,{&quot;width&quot;:&quot;728&quot;,&quot;height&quot;:&quot;90&quot;,&quot;is_standard&quot;:true},{&quot;width&quot;:&quot;800&quot;,&quot;height&quot;:&quot;60&quot;,&quot;is_standard&quot;:false}]</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">The state of the member.
Possible values: <code class="ph codeph">"active"</code> or <code
class="ph codeph">"inactive"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">thirdparty_pixels</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p><strong>Read-only</strong>.
An array of third-party pixels associated with the member. You can
automatically attach these pixels to all creatives owned by this member
using the <a
href="third-party-pixel-service.md"
class="xref" target="_blank">Third-party Pixel service</a> or attach
them individually at the creative level using the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>.</p>
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p>The timezone of the
member. See <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a> for details and accepted
values. To change the default timezone of an individual advertiser, use
the <a
href="advertiser-service.md"
class="xref" target="_blank">Advertiser Service</a> . If no timezone is
specified in the Advertiser Service, advertisers inherit the member's
timezone.</p>
<p><strong>Default</strong>: <code
class="ph codeph">"EST5EDT"</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">use_insertion_orders</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">If <code
class="ph codeph">true</code>, use insertion orders (an organizational
level above line items) for this member.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">visibility_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3"><p>The ID of the optional
visibility profile attached to the member. See the <a
href="visibility-profile-service.md"
class="xref" target="_blank">Visibility Profile Service</a> for more
details.</p>
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__1"><code
class="ph codeph">website_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__3">The company website for
this member. This is used in a number of areas where contact details are
displayed.</td>
</tr>
</tbody>
</table>



<b>Note:</b> This section applies only to
Publisher Ad Server clients.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000fd3__JSON_fields__entry__241"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000fd3__JSON_fields__entry__242"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000fd3__JSON_fields__entry__243"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__241"><code
class="ph codeph">server_of_record</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__242">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__243"><p>For some line items,
the most important performance indicator is that the line item delivers
its budget in full and evenly across its flight dates. This object is
used to hold configuration details related to these line items. For more
information, see the <a
href="member-service.md#ID-00000fd3__server_of_record"
class="xref">Server of Record</a> section below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>

**Server of Record**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000fd3__JSON_fields__entry__247"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000fd3__JSON_fields__entry__248"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000fd3__JSON_fields__entry__249"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__247"><code
class="ph codeph">enforce_true_priority_tiers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__248">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__249"><strong>Deprecated</strong>.
<p>For more information about Guaranteed Delivery line items, see the
<code class="ph codeph">delivery_goal</code> array on the <a
href="line-item-service.md"
class="xref" target="_blank">Line Item Service</a>.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__247"><code
class="ph codeph">guaranteed_delivery_enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__248">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__249"><p>If <code
class="ph codeph">true</code>, this member has access to guaranteed
delivery features.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__247"><code
class="ph codeph">guaranteed_delivery_version</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__248">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__249">
This temporary flag denotes the version of the Guaranteed Delivery
pacing algorithm being used. It can be set at either the member or <a
href="line-item-service.md"
class="xref" target="_blank">line item</a> level. The flag will be
removed when the new version (2) of the algorithm is released
platform-wide. Allowed values:
<ul>
<li><code class="ph codeph">1</code></li>
<li><code class="ph codeph">2</code></li>
</ul>

<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>



**Native Custom Keys**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000fd3__JSON_fields__entry__259"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000fd3__JSON_fields__entry__260"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000fd3__JSON_fields__entry__261"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__259"><code
class="ph codeph">custom_key</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__260">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__261">A seller-defined key that
defines what information the seller would like the buyer to pass in via
a native creative.</td>
</tr>
</tbody>
</table>

**Third-party Pixels**

The `thirdparty_pixels` array contains the fields in the table below.
These fields are read-only. To update or create third-party pixels
and/or attach third-party pixels to all creatives owned by the member,
use the <a
href="third-party-pixel-service.md"
class="xref" target="_blank">Third-party Pixel service</a>. To attach
third-party pixels to individual creatives, use the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000fd3__JSON_fields__entry__265"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000fd3__JSON_fields__entry__266"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000fd3__JSON_fields__entry__267"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__265"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__266">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__267"><strong>Read-only</strong>.
The current status of the pixel (true = active).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__265"><code
class="ph codeph">audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__266">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__267"><strong>Read-only</strong>.
Audit status of the pixel.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__265"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__266">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__267"><strong>Read-only</strong>.
The pixel's ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__265"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__266">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__267"><strong>Read-only</strong>.
The full name of the pixel.</td>
</tr>
</tbody>
</table>

**Inventory Trust**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000fd3__JSON_fields__entry__280"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000fd3__JSON_fields__entry__281"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000fd3__JSON_fields__entry__282"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__280"><code
class="ph codeph">default_allow_unaudited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__281">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__282">If <code
class="ph codeph">true</code>, campaigns using inventory quality
filtering will allow unaudited inventory from sellers unless overridden
in the <code class="ph codeph">members</code> array.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__280"><code
class="ph codeph">default_trust</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__281">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__282">Possible values:
<ul>
<li><code class="ph codeph">appnexus</code>:
Campaigns using inventory quality filtering will only buy <span
class="ph">Xandr-audited inventory from sellers unless overridden
in the members array.</li>
<li><code class="ph codeph">seller</code>: Inventory quality filtering
will allow inventory that has been audited by the selling member in
Xandr.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__280"><code
class="ph codeph">members</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__281">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__282">For each selling member,
controls banned/eligible for selling to you, whether you trust their
inventory audit, and whether you allow unaudited inventory from
them.</td>
</tr>
</tbody>
</table>

**Seller Member Group**

All fields in the `seller_member_group` object can be written by admins
only.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000fd3__JSON_fields__entry__292"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000fd3__JSON_fields__entry__293"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000fd3__JSON_fields__entry__294"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__292"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__293">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__294">Timestamp that indicates
when this seller member group was created.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__292"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__293">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__294">Specifies a description
of this seller member group.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__292"><code
class="ph codeph">display_order</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__293">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__294">Specifies the order in
which this seller member group will be displayed in <span
class="ph">. Default is <code class="ph codeph">5</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__292"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__293">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__294">Specifies the unique ID
of this seller member group.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__292"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__293">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__294">Timestamp that indicates
when this seller member group was last modified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__292"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__293">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__294">Specifies the name of
this seller member group.</td>
</tr>
</tbody>
</table>

**Plugins**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000fd3__JSON_fields__entry__313"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000fd3__JSON_fields__entry__314"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000fd3__JSON_fields__entry__315"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000fd3__JSON_fields__entry__316"
class="entry colsep-1 rowsep-1">Required On</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__313"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__314">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__315">The ID of the
plugin.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__316"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__313"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__314">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__315">The state of the plugin.
If <code class="ph codeph">"available"</code> the user has not yet
installed the plugin; if <code class="ph codeph">"installed"</code>, the
user has installed the plugin; if <code
class="ph codeph">"accept_permissions"</code>, the user has installed
the plugin, but changes to the plugin require the user to explicitly
accept the changes before continuing to use it. Possible values:
<ul>
<li><code class="ph codeph">"available"</code></li>
<li><code class="ph codeph">"installed"</code></li>
<li><code class="ph codeph">"accept_permissions"</code></li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__316"></td>
</tr>
</tbody>
</table>

**Member Brand Exceptions**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000fd3__JSON_fields__entry__325"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000fd3__JSON_fields__entry__326"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000fd3__JSON_fields__entry__327"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000fd3__JSON_fields__entry__328"
class="entry colsep-1 rowsep-1">Required On</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__325"><code
class="ph codeph">brand_idd</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__326">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__327">The ID of the brand whose
associated creatives you would like to allow to serve more than once per
page load on page-cap-enabled publishers' inventory. This setting will
only take effect on those publishers which you've enable for page
capping by setting the <code
class="ph codeph">seller_page_cap_enabled</code> field to <code
class="ph codeph">true</code> on the <a
href="publisher-service.md"
class="xref" target="_blank">Publisher Service</a>. For more information
about brands, see the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a>.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__328"></td>
</tr>
</tbody>
</table>

**Floor Optimization**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000fd3__JSON_fields__entry__333"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000fd3__JSON_fields__entry__334"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000fd3__JSON_fields__entry__335"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000fd3__JSON_fields__entry__336"
class="entry colsep-1 rowsep-1">Required On</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__333"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__334">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__335">If <code
class="ph codeph">true</code>, this member has floor optimization
enabled.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__336"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__333"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__334">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__335">The ID of an internal
real-time price provider that performs the floor optimization.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__336"></td>
</tr>
</tbody>
</table>

**Mediation**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000fd3__JSON_fields__entry__345"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000fd3__JSON_fields__entry__346"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000fd3__JSON_fields__entry__347"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000fd3__JSON_fields__entry__348"
class="entry colsep-1 rowsep-1">Required On</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__345"><code
class="ph codeph">auto_bid_adjustment_enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__346">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__347">If <code
class="ph codeph">true</code> , this member can use the automatic bid
adjustment feature, in which Xandr suggests a
bid based on an estimate what the network will pay and automatically
updates the bid as conditions change.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__348"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__345"><code
class="ph codeph">reporting_sync_enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__346">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__347">If <code
class="ph codeph">true</code>, this member can use the reporting sync
feature, in which reporting data from third-party networks can be pulled
from that network's servers. This data is used to create daily reports
and monitor trends directly from within <span
class="ph">Xandr.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000fd3__JSON_fields__entry__348"></td>
</tr>
</tbody>
</table>




## Examples

**View your member**

``` pre
$ curl - b cookies 'https://api.appnexus.com/member'
{
    "response": {
        "status": "OK",
        "member": {
            "id": 186,
            "name": "My Network",
            "whitelabel_support_email": null,
            "reselling_description": null,
            "state": "active",
            "no_reselling_priority": 6,
            "entity_type": "reseller",
            "buyer_clearing_fee_pct": null,
            "default_placement_id": null,
            "default_buyer_group_id": null,
            "thirdparty_pixels": [{
                "id": 656,
                "name": "sample pixel",
                "audit_status": "pending",
                "active": true
            }, {
                "id": 311,
                "name": "another sample pixel",
                "audit_status": "pending",
                "active": true
            }],
            "interface_domain": null,
            "interface_domain_beta": null,
            "content_categories": [{
                "id": "10432",
                "name": "Pets & Animals"
            }, {
                "id": "10433",
                "name": "Fun & Trivia"
            }, {
                "id": "10434",
                "name": "Autos & Vehicles"
            }, {
                "id": "10435",
                "name": "Beauty & Personal Care"
            }, {
                "id": "10436",
                "name": "Business & Industry"
            }, {
                "id": "10437",
                "name": "Computers & Electronics"
            }, {
                "id": "10438",
                "name": "Arts & Entertainment"
            }, {
                "id": "10439",
                "name": "Finance"
            }, {
                "id": "10440",
                "name": "Food & Drink"
            }, {
                "id": "10441",
                "name": "Games"
            }, {
                "id": "10442",
                "name": "Health"
            }, {
                "id": "10443",
                "name": "Home & Garden"
            }, {
                "id": "10444",
                "name": "Internet & Telecom"
            }, {
                "id": "10445",
                "name": "Lifestyles"
            }, {
                "id": "10446",
                "name": "Local News"
            }, {
                "id": "10447",
                "name": "News"
            }, {
                "id": "10448",
                "name": "Online Communities"
            }, {
                "id": "10449",
                "name": "Photo & Video Sharing"
            }, {
                "id": "10450",
                "name": "Real Estate"
            }, {
                "id": "10451",
                "name": "Recreation"
            }, {
                "id": "10452",
                "name": "Reference & Language"
            }, {
                "id": "10453",
                "name": "Science"
            }, {
                "id": "10454",
                "name": "Shopping"
            }, {
                "id": "10455",
                "name": "Sports"
            }, {
                "id": "10456",
                "name": "Consumer Electronics"
            }, {
                "id": "10457",
                "name": "Travel"
            }, {
                "id": "16040",
                "name": "test"
            }],
            "default_ad_profile_id": 19040,
            "email_code": null,
            "serving_domain": {
                "cname": null,
                "type": null
            },
            "reselling_exposure": "public",
            "reselling_exposed_on": "2011-07-15 20:35:17",
            "last_modified": "2011-11-16 20:51:33",
            "standard_sizes": [{
                "width": "120",
                "height": "600",
                "is_standard": true
            }, {
                "width": "160",
                "height": "600",
                "is_standard": true
            }, {
                "width": "300",
                "height": "250",
                "is_standard": true
            }, {
                "width": "468",
                "height": "60",
                "is_standard": true
            }, {
                "width": "728",
                "height": "90",
                "is_standard": true
            }, {
                "width": "180",
                "height": "150",
                "is_standard": false
            }, {
                "width": "234",
                "height": "600",
                "is_standard": false
            }, {
                "width": "430",
                "height": "600",
                "is_standard": false
            }],
            "buyer_credit_limit": 2000,
            "timezone": "EST5EDT",
            "seller_revshare_pct": null,
            "default_country": null,
            "dongle": "DONGLE",
            "platform_exposure": "hidden",
            "contact_email": null,
            "allow_ad_profile_override": true,
            "default_currency": "USD",
            "use_insertion_orders": false,
            "expose_optimization_levers": true,
            "pops_enabled_UI": true,
            "default_accept_supply_partner_usersync": true,
            "default_accept_data_provider_usersync": true,
            "default_accept_demand_partner_usersync": true,
            "short_name": "ANU",
            "expose_eap_ecp_placement_settings": true,
            "daily_imps_verified": null,
            "daily_imps_self_audited": null,
            "daily_imps_unaudited": null,
            "is_iash_compliant": false,
            "deal_types": null,
            "allow_non_cpm_payment": true,
            "default_allow_cpc": true,
            "default_allow_cpa": true,
            "visibility_profile_id": 8,
            "inventory_trust": {
                "default_trust": "appnexus",
                "default_allow_unaudited": false,
                "default_is_banned": false,
                "members": [{
                    "seller_member_id": "181",
                    "trust": "appnexus",
                    "allow_unaudited": false,
                    "is_banned": false
                }, {
                    "seller_member_id": "459",
                    "trust": "appnexus",
                    "allow_unaudited": false,
                    "is_banned": false
                }]
            },
            "seller_member_groups": [{
                "display_order": 1,
                "id": 2,
                "last_modified": "2016-01-26 18:23:38",
                "created_on": "2016-01-26 18:23:38",
                "name": "My Seller Group"
            }],
            "default_campaign_trust": "appnexus",
            "default_campaign_allow_unaudited": false,
            "contract_allows_unaudited": true,
            "active_contract": {
                "auditing_fee_per_creative": 0,
                "creative_priority_fee_1": 25,
                "creative_priority_fee_2": 25
            },
            "allow_priority_audit": true,
            "enable_mobile_ui": true,
            "contact_info": null,
            "audit_notify_email": null,
            "default_external_audit": false,
            "reporting_decimal_type": "decimal",
            "daily_budget": 500,
            "enable_click_and_imp_trackers": true,
            "plugins_enabled": true,
            "plugins": [{
                "id": "1",
                "status": "installed"
            }, {
                "id": "2",
                "status": "installed"
            }, {
                "id": "3",
                "status": "installed"
            }, {
                "id": "5",
                "status": "installed"
            }, {
                "id": "6",
                "status": "installed"
            }, {
                "id": "7",
                "status": "installed"
            }, {
                "id": "8",
                "status": "installed"
            }, {
                "id": "9",
                "status": "installed"
            }, {
                "id": "10",
                "status": "installed"
            }, {
                "id": "11",
                "status": "installed"
            }, {
                "id": "12",
                "status": "accept_permissions"
            }]
        },
        "count": 1,
        "start_element": 0,
        "num_elements": 100
    }
}
```

**Update your member**

``` pre
$ cat member_mod
{
    "member": {
        "id": 185,
        "reselling_exposure": "public"
    }
}
$ curl -b cookies -X PUT -d @member_mod 'https://api.appnexus.com/member?id=185'
{
    "response": {
        "status":"OK"
    }
}
```





## Related Topics

- <a href="reference.md"
  class="xref" target="_blank">Reference</a>
- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>






