---
Title : Visibility Profile Service
Description : If you resell your inventory, the Visibility Profile Service enables you
ms.date: 10/28/2023
ms.custom: digital-platform-api
to control the level of detail you pass to buyers in your bid requests.
---


# Visibility Profile Service



If you resell your inventory, the Visibility Profile Service enables you
to control the level of detail you pass to buyers in your bid requests.
Specifically, you can expose or hide publisher IDs and names, placement
IDs and names, publisher-provided age and gender data, the universal and
custom categorization of your inventory, inventory URLs, location
information, and more.

The default settings in your profile (i.e., `expose_age_default`,
`expose_gender_default`, and so on) apply to all platform buyers and
external bidders, but you can override the default settings for specific
platform buyers and external bidders using the `buyer_members` and
`bidders` arrays. For example, you might hide inventory data by default
and then expose data only to specific buying members with whom you have
a special business relationship. Alternately, you might expose inventory
data to everyone except specific buying members whom you deem to be
competitors.

In addition to affecting the data that buyers see in your bid requests,
visibility settings affect the data that buyers see when they report on
impressions bought from you. For example, if you hide publisher IDs and
names from a buyer, that buyer won't see your publisher IDs and names in
reporting.



<b>Note:</b> Although you can create multiple
visibility profiles, you can attach only one to your member (see the
`visibility_profile_id` field in the <a
href="member-service.md"
class="xref" target="_blank">Member Service</a>). If you are interested
in attaching visibility profiles directly to publishers, please speak
with your Account Representative.



>

## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="visibility-profile-service__section_rzr_xyr_swb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="visibility-profile-service__section_rzr_xyr_swb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="visibility-profile-service__section_rzr_xyr_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__2"><p><a
href="https://api.appnexus.com/visibility-profile" class="xref"
target="_blank">https://api.appnexus.com/visibility-profile</a></p>
<p>(visibility_profile JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__3">Add
a visibility profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__2"><p><a
href="https://api.appnexus.com/visibility-profile?id=VISIBILITY_PROFILE_ID"
class="xref"
target="_blank">https://api.appnexus.com/visibility-profile?id=VISIBILITY_PROFILE_ID</a></p>
<p>(visibility_profile JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__3">Modify
a visibility profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__2"><a
href="https://api.appnexus.com/visibility-profile?id=VISIBILITY_PROFILE_ID"
class="xref"
target="_blank">https://api.appnexus.com/visibility-profile?id=VISIBILITY_PROFILE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__3">Delete
a visibility profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__2"><a
href="https://api.appnexus.com/visibility-profile" class="xref"
target="_blank">https://api.appnexus.com/visibility-profile</a></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__3">View
all of your visibility profiles.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__2"><a
href="https://api.appnexus.com/visibility-profile?id=VISIBILITY_PROFILE_ID"
class="xref"
target="_blank">https://api.appnexus.com/visibility-profile?id=VISIBILITY_PROFILE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__3">View
a specific visibility profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__2"><a
href="https://api.appnexus.com/visibility-profile?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/visibility-profile?id=1,2,3</a></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__3">View
multiple visibility profiles by ID using a comma-separated list.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__2"><a
href="https://api.appnexus.com/visibility-profile/meta" class="xref"
target="_blank">https://api.appnexus.com/visibility-profile/meta</a></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__section_rzr_xyr_swb__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>



>

## JSON Fields



<table id="visibility-profile-service__table_gnq_lcs_swb" class="table">
<thead class="thead">
<tr class="header row">
<th id="visibility-profile-service__table_gnq_lcs_swb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="visibility-profile-service__table_gnq_lcs_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="visibility-profile-service__table_gnq_lcs_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p><strong>Read-only.</strong>
The ID of the visibility profile.</p>
<p><strong>Default</strong>: Auto-generated number (i.e., 123)</p>
<p><strong>Required On</strong>: PUT, in query string</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><strong>Read-only</strong>.
The ID of the member that owns the visibility profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>The
name of the visibility profile.</p>
<p><strong>Required On</strong>: POST</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">notes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3">Additional
information about the visibility profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_publishers_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p><strong>Do
Not Use.</strong></p>
<p><em>Not available to all clients.</em> If <code
class="ph codeph">true</code>, publisher IDs are passed in your bid
requests. This applies to all platform members and bidders not set
separately in the <code class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_tags_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p><strong>Do
Not Use.</strong></p>
<p><em>Not available to all clients.</em> If <code
class="ph codeph">true</code>, placement IDs are passed in your bid
requests. This applies to all platform members and bidders not set
separately in the <code class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_age_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided age data is
passed in your bid requests. This applies to all platform members and
bidders not set separately in the <code
class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_gender_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided gender data is
passed in your bid requests. This applies to all platform members and
bidders not set separately in the <code
class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_universal_categories_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_custom_categories_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>The
visibility of your custom content categories in your bid requests.
Possible values:</p>
<ul>
<li><code class="ph codeph">none</code> - No custom categories are
passed in your bid requests</li>
<li><code class="ph codeph">all</code> - All custom categories are
passed in your bid requests</li>
<li><code class="ph codeph">list</code> - The custom categories listed
in the <code class="ph codeph">custom_categories</code> array are passed
in your bid requests</li>
</ul>
<p><strong>Default</strong>: <code
class="ph codeph">none</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">url_exposure_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>The
visibility of inventory URLs in your bid requests. Possible values:</p>
<ul>
<li><code class="ph codeph">full</code> - Full URLs are passed in your
bid requests</li>
<li><code class="ph codeph">domain</code> - Only domains of URLs are
passed in your bid requests</li>
<li><code class="ph codeph">hidden</code> - URLs are not passed in your
bid requests</li>
</ul>
<p><strong>Default</strong>: <code
class="ph codeph">full</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_bid_requests_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_auction_id_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_locale_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_ecp_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_reserve_price_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, the publisher-provided reserve
prices are passed in your bid requests. This applies to all platform
members and bidders not set separately in the <code
class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_user_id_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided user IDs are
passed in your bid requests. This applies to all platform members and
bidders not set separately in the <code
class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_ip_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided IP addresses are
passed in your bid requests. This applies to all platform members and
bidders not set separately in the <code
class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_venue_id_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_user_agent_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided user agents are
passed in your bid requests. This applies to all platform members and
bidders not set separately in the <code
class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_city_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided cities are
available for targeting and reporting for buyers using Invest DSP. This
applies to all Invest DSP members and bidders not set separately in the
<code class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p>If <code class="ph codeph">true</code> and this visibility profile is
associated with a deal using <a
href="deal-service.md#ID-000012eb__seller_restricted_targeting"
class="xref">Seller Restricted Targeting</a>, Invest buyers targeting
the deal will be unable to target cities. See the <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more details.</p>
<p>Buyers on external DSPs can target and report on cities regardless of
this setting.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_state_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided states are
available for targeting and reporting for buyers using Invest DSP. This
applies to all Invest DSP members and bidders not set separately in the
<code class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p>If <code class="ph codeph">true</code> and this visibility profile is
associated with a deal using <a
href="deal-service.md#ID-000012eb%2523seller_restricted_targeting"
class="xref">Seller Restricted Targeting</a>, Invest buyers targeting
the deal will be unable to target states. See the <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more details.</p>
<p>Buyers on external DSPs can target and report on states regardless of
this setting.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_dma_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided DMAs are
available for targeting and reporting for buyers using Invest DSP. This
applies to all Invest DSP members and bidders not set separately in the
<code class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p>If <code class="ph codeph">true</code> and this visibility profile is
associated with a deal using <a
href="deal-service.md#ID-000012eb%2523seller_restricted_targeting"
class="xref">Seller Restricted Targeting</a>, Invest buyers targeting
the deal will be unable to target DMAs. See the <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more details.</p>
<p>Buyers on external DSPs can target and report on DMAs regardless of
this setting.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_postal_code_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided postal codes are
passed in your bid requests. This applies to all platform members and
bidders not set separately in the <code
class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_geo_lat_lon_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided latitude and
longitude information is passed in your bid requests. This applies to
all platform members and bidders not set separately in the <code
class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_device_id_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided device IDs are
passed in your bid requests. This applies to all platform members and
bidders not set separately in the <code
class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_device_model_id_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_querystring_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided query strings
are passed in your bid requests. This applies to all platform members
and bidders not set separately in the <code
class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_application_id_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided Android or iOS
mobile application IDs are passed in your bid requests. This applies to
all platform members and bidders not set separately in the <code
class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_site_id_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, publisher-provided placement group
(site) IDs are passed in your bid requests. This applies to all platform
members and bidders not set separately in the <code
class="ph codeph">buyer_members</code> and <code
class="ph codeph">bidders</code> arrays below.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_datetime_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><strong>Do
Not Use.</strong> This field is ignored.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">buyer_members</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">array
of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>The
visibility rules for specific Xandr platform members. See <a
href="visibility-profile-service.md#VisibilityProfileService-BuyerMembers"
class="xref" target="_blank">Buyer Members</a> below for more
details.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">bidders</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">array
of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3">The
visibility rules for specific external bidders and/or contextual data
providers. See <a
href="visibility-profile-service.md#VisibilityProfileService-Bidders"
class="xref" target="_blank">Bidders</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">custom_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">array
of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><p>The
custom content categories that are passed in your bid requests. See <a
href="visibility-profile-service.md#VisibilityProfileService-CustomCategories"
class="xref" target="_blank">Custom Categories</a> below for more
details.</p>
<p><strong>Required On</strong>: POST, if <code
class="ph codeph">expose_custom_categories_default</code> is <code
class="ph codeph">list</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3"><strong>Read-only.</strong>
The date and time when the visibility profile was last modified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_device_type_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3">If
<code class="ph codeph">true</code> and this visibility profile is
associated with a deal using <a
href="deal-service.md#ID-000012eb%2523seller_restricted_targeting"
class="xref">Seller Restricted Targeting</a>, Invest buyers targeting
the deal will be unable to target device types. See the <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_segment_groups_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3">If
<code class="ph codeph">true</code> and this visibility profile is
associated with a deal using <a
href="deal-service.md#ID-000012eb%2523seller_restricted_targeting"
class="xref">Seller Restricted Targeting</a>, Invest buyers targeting
the deal will be unable to target segments. See the <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_video_context_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3">If
<code class="ph codeph">true</code> and this visibility profile is
associated with a deal using <a
href="deal-service.md#ID-000012eb%2523seller_restricted_targeting"
class="xref">Seller Restricted Targeting</a>, Invest buyers targeting
the deal will be unable to target video contexts (e.g. pre-roll). See
the <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_video_content_genres_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3">If
<code class="ph codeph">true</code> and this visibility profile is
associated with a deal using <a
href="deal-service.md#ID-000012eb%2523seller_restricted_targeting"
class="xref">Seller Restricted Targeting</a>, Invest buyers targeting
the deal will be unable to target video content genres (e.g. comedy).
See the <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_video_program_types_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3">If
<code class="ph codeph">true</code> and this visibility profile is
associated with a deal using <a
href="deal-service.md#ID-000012eb%2523seller_restricted_targeting"
class="xref">Seller Restricted Targeting</a>, Invest buyers targeting
the deal will be unable to target video program types (e.g. series). See
the <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_video_content_ratings_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3">If
<code class="ph codeph">true</code> and this visibility profile is
associated with a deal using <a
href="deal-service.md#ID-000012eb%2523seller_restricted_targeting"
class="xref">Seller Restricted Targeting</a>, Invest buyers targeting
the deal will be unable to target video content ratings. See the <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_video_content_duration_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3">If
<code class="ph codeph">true</code> and this visibility profile is
associated with a deal using <a
href="deal-service.md#ID-000012eb%2523seller_restricted_targeting"
class="xref">Seller Restricted Targeting</a>, Invest buyers targeting
the deal will be unable to target video content durations (e.g.
short-form). See the <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_video_content_networks_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3">If
<code class="ph codeph">true</code> and this visibility profile is
associated with a deal using <a
href="deal-service.md#ID-000012eb%2523seller_restricted_targeting"
class="xref">Seller Restricted Targeting</a>, Invest buyers targeting
the deal will be unable to target video content networks. See the <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__1"><code
class="ph codeph">expose_video_delivery_types_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_gnq_lcs_swb__entry__3">If
<code class="ph codeph">true</code> and this visibility profile is
associated with a deal using <a
href="deal-service.md#ID-000012eb%2523seller_restricted_targeting"
class="xref">Seller Restricted Targeting</a>, Invest buyers targeting
the deal will be unable to target video delivery types (e.g. VOD). See
the <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more details.</td>
</tr>
</tbody>
</table>

**Custom Categories**



If `expose_custom_categories_default` is set to `list`, you use this
array to specify the custom categories that you want to pass in your bid
requests. Each object in the array represents a single custom category
and contains the following fields. See the examples below for
formatting.

class="note tip note_tip">

<b>Tip:</b> You can use the <a
href="content-category-service.md"
class="xref" target="_blank">Content Category Service</a> to get the IDs
of your custom content categories.



<table id="visibility-profile-service__table_hxv_t3s_swb" class="table">
<thead class="thead">
<tr class="header row">
<th id="visibility-profile-service__table_hxv_t3s_swb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="visibility-profile-service__table_hxv_t3s_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="visibility-profile-service__table_hxv_t3s_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_hxv_t3s_swb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="visibility-profile-service__table_hxv_t3s_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_hxv_t3s_swb__entry__3">The ID
of the custom content category that is passed in your bid requests.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_hxv_t3s_swb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-center colsep-1 rowsep-1 valign-top"
headers="visibility-profile-service__table_hxv_t3s_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_hxv_t3s_swb__entry__3"><strong>Read-only</strong>.
The name of the custom content category.</td>
</tr>
</tbody>
</table>

**Buyer Members**



You use this array to define visibility rules for specific Xandr
platform members. Each object in the array represents a single member
and contains the following fields. See the examples below for
formatting.

class="note tip note_tip">

<b>Tip:</b> You can can use the <a
href="platform-member-service.md"
class="xref" target="_blank">Platform Member Service</a> to get the IDs
of Xandr platform members.



<table id="visibility-profile-service__table_p2t_jjs_swb" class="table">
<thead class="thead">
<tr class="header row">
<th id="visibility-profile-service__table_p2t_jjs_swb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="visibility-profile-service__table_p2t_jjs_swb__entry__2"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th id="visibility-profile-service__table_p2t_jjs_swb__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>The
ID of the Xandr platform member to which you want to apply specific
visibility rules.</p>
<p><strong>Required On</strong>: POST</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><strong>Read-only.</strong>
The name of the Xandr platform member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_publishers </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p>For select customers: If <code class="ph codeph">true</code>,
publisher IDs are passed in your bid requests to the member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_tags</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p>For select customers: If <code class="ph codeph">true</code>,
placement IDs are passed in your bid requests to the member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_age</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, age data is passed in your bid
requests to the member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_gender</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, gender data is passed in your bid
requests to the member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_universal_categories</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_custom_categories</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>The
visibility of your custom content categories in your bid requests to the
member. Possible values:</p>
<ul>
<li><code class="ph codeph">none</code> - No custom categories are
passed in your bid requests</li>
<li><code class="ph codeph">all</code> - All custom categories are
passed in your bid requests</li>
<li><code class="ph codeph">list</code> - The custom categories listed
in the <code class="ph codeph">custom_categories</code> array are passed
in your bid requests</li>
</ul>
<p><strong>Default</strong>: <code
class="ph codeph">none</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">custom_categories</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>The
custom content categories that are passed in your bid requests to the
member. See <a
href="visibility-profile-service.md#VisibilityProfileService-CustomCategories"
class="xref" target="_blank">Custom Categories</a> above for the fields
in this array.</p>
<p><strong>Required On</strong>: POST, if <code
class="ph codeph">expose_custom_categories_default</code> is <code
class="ph codeph">list</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">url_exposure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>The
visibility of inventory URLs in your bid requests to the member.
Possible values:</p>
<ul>
<li><code class="ph codeph">full</code> - Full URLs are passed in your
bid requests</li>
<li><code class="ph codeph">domain</code> - Only domains of URLs are
passed in your bid requests</li>
<li><code class="ph codeph">hidden</code> - URLs are not passed in your
bid requests</li>
</ul>
<p><strong>Default</strong>: <code
class="ph codeph">full</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_bid_requests</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_auction_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_locale</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_ecp</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_reserve_price</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, reserve prices are exposed to the
owning member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_user_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, user IDs are exposed to the owning
member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_ip</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, IP addresses are exposed to the
owning member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_venue_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_user_agent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, user agents are exposed to the
owning member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_city</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3">If
<code class="ph codeph">true</code>, cities are available for targeting
and reporting for the Invest DSP buyer.
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, states are available for targeting
and reporting for the Invest DSP buyer.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_dma</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, DMAs are available for targeting
and reporting for the Invest DSP buyer.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_postal_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, postal codes are exposed to the
owning member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_geo_lat_lon</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, latitude and longitude information
is exposed to the owning member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_device_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, device IDs are exposed to the
owning member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_device_model_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_querystring</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, query strings are exposed to the
owning member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_application_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, Android or iOS mobile application
IDs are exposed to the owning member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_site_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p>If
<code class="ph codeph">true</code>, placement group (site) IDs are
exposed to the owning member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__1"><code
class="ph codeph">expose_datetime</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_p2t_jjs_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
</tbody>
</table>

**Bidders**





You use this array to define visibility rules for specific external
bidders and/or contextual data providers. Each object in the array
represents a single bidder and contains the following fields. See the
examples below for formatting.

class="note tip note_tip">

<b>Tip:</b> There is no service for directly
getting external bidder IDs; however, the <a
href="platform-member-service.md"
class="xref" target="_blank">Platform Member Service</a> gets you
information about platform members, including the bidders that they are
using.





<table id="visibility-profile-service__table_esk_2ms_swb" class="table">
<thead class="thead">
<tr class="header row">
<th id="visibility-profile-service__table_esk_2ms_swb__entry__1"
class="entry align-center colsep-1 rowsep-1">Field</th>
<th id="visibility-profile-service__table_esk_2ms_swb__entry__2"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th id="visibility-profile-service__table_esk_2ms_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>The
ID of the external bidder to which you want to apply specific visibility
rules.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><strong>Read-only.</strong>
The name of the external bidder.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_publishers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p>For select customers: If <code class="ph codeph">true</code>,
publisher IDs are passed in your bid requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_tags</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p>For select customers: If <code class="ph codeph">true</code>,
placement IDs are passed in your bid requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_age</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>If
<code class="ph codeph">true</code>, age data is passed in your bid
requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_gender</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>If
<code class="ph codeph">true</code>, gender data is passed in your bid
requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_universal_categories</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_custom_categories</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>The
visibility of your custom content categories in your bid requests to the
bidder. Possible values:</p>
<ul>
<li><code class="ph codeph">none</code> - No custom categories are
passed in your bid requests</li>
<li><code class="ph codeph">all</code> - All custom categories are
passed in your bid requests</li>
<li><code class="ph codeph">list</code> - The custom categories listed
in the <code class="ph codeph">custom_categories</code> array are passed
in your bid requests</li>
</ul>
<p><strong>Default</strong>: <code
class="ph codeph">none</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">custom_categories</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">array
of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>The
custom content categories that are passed in your bid requests to the
bidder. See <a
href="visibility-profile-service.md#VisibilityProfileService-CustomCategories"
class="xref" target="_blank">Custom Categories</a> above for the fields
in this array.</p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>, if
<code class="ph codeph">expose_custom_categories_default</code> is <code
class="ph codeph">list</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">url_exposure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>The
visibility of inventory URLs in your bid requests to the bidder.
Possible values:</p>
<ul>
<li><code class="ph codeph">full</code> - Full URLs are passed in your
bid requests</li>
<li><code class="ph codeph">domain</code> - Only domains of URLs are
passed in your bid requests</li>
<li><code class="ph codeph">hidden</code> - URLs are not passed in your
bid requests</li>
</ul>
<p><strong>Default</strong>: <code
class="ph codeph">full</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_bid_requests</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_auction_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_locale</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_ecp</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_reserve_price</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>If
<code class="ph codeph">true</code>, reserve prices are passed in your
bid requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_user_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>If
<code class="ph codeph">true</code>, user IDs are passed in your bid
requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_ip</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>If
<code class="ph codeph">true</code>, IP addresses are passed in your bid
requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_venue_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_user_agent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>If
<code class="ph codeph">true</code>, user agents passed in your bid
requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_city</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3">If
<code class="ph codeph">true</code>, cities are available for targeting
and reporting for the Invest DSP bidder.
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3">If
<code class="ph codeph">true</code>, states are available for targeting
and reporting for the Invest DSP bidder.
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_dma</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3">If
<code class="ph codeph">true</code>, DMAs are available for targeting
and reporting for the Invest DSP bidder.
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_postal_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>If
<code class="ph codeph">true</code>, postal codes are passed in your bid
requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_geo_lat_lon</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>If
<code class="ph codeph">true</code>, latitude and longitude information
is passed in your bid requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_device_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>If
<code class="ph codeph">true</code>, device IDs are passed in your bid
requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_device_model_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_querystring</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>If
<code class="ph codeph">true</code>, query strings are passed in your
bid requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_application_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>If
<code class="ph codeph">true</code>, Android or iOS mobile application
IDs are passed in your bid requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_site_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p>If
<code class="ph codeph">true</code>, placement group (site) IDs are
passed in your bid requests to the bidder.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__1"><code
class="ph codeph">expose_datetime</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="visibility-profile-service__table_esk_2ms_swb__entry__3"><p><strong>Do
Not Use.</strong> This field is ignored.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
</tbody>
</table>



>

## Examples

**Add a visibility profile - show inventory data to all buyers except
member 9**



In this example, the POST request creates a visibility profile that
allows all Xandr platform members and external bidders except member 9
to see publisher, placement, age, gender, category, and URL information
in your bid requests.

``` pre
$ cat visibility_profile

{
    "visibility-profile": {
        "name": "Test Visibility Profile",
        "expose_age_default": true,
        "expose_gender_default": true,
        "expose_custom_categories_default": "all",
        "url_exposure_default": "full",
        "expose_reserve_price_default": true,
        "expose_user_id_default": true,
        "expose_ip_default": true,
        "expose_user_agent_default": true,
        "expose_postal_code_default": true,
        "expose_geo_lat_lon_default": true,
        "expose_device_id_default": true,
        "expose_querystring_default": true,
        "expose_application_id_default": true,
        "expose_site_id_default": true,
        "buyer_members": [
            {
                "id": 9,
                "expose_age": false,
                "expose_gender": false,
                "expose_custom_categories": "none",
                "url_exposure": "hidden"
            }
        ]
    }
}

$ curl -b cookies -X POST -d @visibility_profile 'https://api.appnexus.com/visibility-profile'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 1818,
        "start_element": 0,
        "num_elements": 100,
        "visibility-profile": {
            "id": 1818,
            "member_id": 1066,
            "name": "Test Visibility Profile",
            "notes": null,
            "expose_age_default": true,
            "expose_gender_default": true,
            "expose_custom_categories_default": "all",
            "url_exposure_default": "full",
            "expose_reserve_price_default": true,
            "expose_user_id_default": true,
            "expose_ip_default": true,
            "expose_user_agent_default": true,
            "expose_postal_code_default": true,
            "expose_geo_lat_lon_default": true,
            "expose_device_id_default": true,
            "expose_querystring_default": true,
            "expose_application_id_default": true,
            "expose_site_id_default": true,
            "last_modified": "2015-08-31 21:18:54",
            "buyer_members": [
                {
                    "id": 9,
                    "expose_age": false,
                    "expose_gender": false,
                    "expose_custom_categories": "none",
                    "url_exposure": "hidden",
                    "expose_bid_requests": true,
                    "expose_reserve_price": true,
                    "expose_user_id": true,
                    "expose_ip": true,
                    "expose_user_agent": true,
                    "expose_postal_code": true,
                    "expose_geo_lat_lon": true,
                    "expose_device_id": true,
                    "expose_querystring": true,
                    "expose_application_id": true,
                    "expose_site_id": true,
                    "name": "DisplayWords Bidder - member 9",
                    "custom_categories": null
                }
            ],
            "bidders": null,
            "custom_categories": null
        }
    }
}
```



**Add a visibility profile - hide inventory data from all buyers except
member 9**



In this example, the POST request creates a visibility profile that
prevents all Xandr platform members and external bidders except member 9
from seeing publisher, placement, age, gender, category, and URL
information in your bid requests.

``` pre
$ cat visibility_profile

{
    "visibility-profile": {
        "name": "Test Visibility Profile",
        "expose_age_default": false,
        "expose_gender_default": false,
        "expose_custom_categories_default": "none",
        "url_exposure_default": "hidden",
        "expose_reserve_price_default": true,
        "expose_user_id_default": true,
        "expose_ip_default": true,
        "expose_user_agent_default": true,
        "expose_postal_code_default": true,
        "expose_geo_lat_lon_default": true,
        "expose_device_id_default": true,
        "expose_querystring_default": true,
        "expose_application_id_default": true,
        "expose_site_id_default": true,
        "buyer_members": [
            {
                "id": 9,
                "expose_age": true,
                "expose_gender": true,
                "expose_custom_categories": "all",
                "url_exposure": "full",
                "expose_bid_requests": true,
                "expose_reserve_price": true,
                "expose_user_id": true,
                "expose_ip": true,
                "expose_user_agent": true,
                "expose_postal_code": true,
                "expose_geo_lat_lon": true,
                "expose_device_id": true,
                "expose_querystring": true,
                "expose_application_id": true,
                "expose_site_id": true,
            }
        ]
    }

$ curl -b cookies -X POST -d @visibility_profile 'https://api.appnexus.com/visibility-profile'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 1819,
        "start_element": 0,
        "num_elements": 100,
        "visibility-profile": {
            "id": 1819,
            "member_id": 1066,
            "name": "Test Visibility Profile",
            "notes": null,
            "expose_age_default": false,
            "expose_gender_default": false,
            "expose_custom_categories_default": "none",
            "url_exposure_default": "hidden",
            "expose_reserve_price_default": true,
            "expose_user_id_default": true,
            "expose_ip_default": true,
            "expose_user_agent_default": true,
            "expose_postal_code_default": true,
            "expose_geo_lat_lon_default": true,
            "expose_device_id_default": true,
            "expose_querystring_default": true,
            "expose_application_id_default": true,
            "expose_site_id_default": true,
            "last_modified": "2015-08-31 21:57:13",
            "buyer_members": [
                {
                    "id": 9,
                    "expose_age": true,
                    "expose_gender": true,
                    "expose_custom_categories": "all",
                    "url_exposure": "full",
                    "expose_reserve_price": true,
                    "expose_user_id": true,
                    "expose_ip": true,
                    "expose_user_agent": true,
                    "expose_postal_code": true,
                    "expose_geo_lat_lon": true,
                    "expose_device_id": true,
                    "expose_querystring": true,
                    "expose_application_id": true,
                    "expose_site_id": true,
                    "name": "DisplayWords Bidder - member 9",
                    "custom_categories": null
                }
            ],
            "bidders": null,
            "custom_categories": null
        }
    }
}
```



**Modify visibility profile 1818**



In this example, the PUT request updates visibility profile 1818 to
allow only custom content category 24214 to be passed in your bid
requests. This applies to all Xandr platform members and external
bidders except platform member 9, whose visibility is defined separately
(see {{buyer_members}} array in the response).

``` pre
$ cat visibility_profile_update

{
    "visibility-profile": {
        "expose_custom_categories_default": "list",
        "custom_categories": [
            {
                "id": 24214
            }
        ]
    }
}

$ curl -b cookies -X PUT -d @visibility_profile_update 'https://api.appnexus.com/visibility-profile?id=1818'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "1818",
        "start_element": 0,
        "num_elements": 100,
        "visibility-profile": {
            "id": 1818,
            "member_id": 1066,
            "name": "Test Visibility Profile",
            "notes": null,
            "expose_age_default": true,
            "expose_gender_default": true,
            "expose_custom_categories_default": "list",
            "url_exposure_default": "full",
            "expose_reserve_price_default": true,
            "expose_user_id_default": true,
            "expose_ip_default": true,
            "expose_user_agent_default": true,
            "expose_postal_code_default": true,
            "expose_geo_lat_lon_default": true,
            "expose_device_id_default": true,
            "expose_querystring_default": true,
            "expose_application_id_default": true,
            "expose_site_id_default": true,
            "last_modified": "2015-08-31 21:24:43",
            "buyer_members": [
                {
                    "id": 9,
                    "expose_age": false,
                    "expose_gender": false,
                    "expose_custom_categories": "none",
                    "url_exposure": "hidden",
                    "expose_reserve_price": true,
                    "expose_user_id": true,
                    "expose_ip": true,
                    "expose_user_agent": true,
                    "expose_postal_code": true,
                    "expose_geo_lat_lon": true,
                    "expose_device_id": true,
                    "expose_querystring": true,
                    "expose_application_id": true,
                    "expose_site_id": true,
                    "name": "DisplayWords Bidder - member 9",
                    "custom_categories": null
                }
            ],
            "bidders": null,
            "custom_categories": [
                {
                    "id": 24214,
                    "name": "TEST"
                }
            ]
        }
    }
}
```



**View all of your visibility profiles**

``` pre
$ curl -b cookies 'https://api.appnexus.com/visibility-profile'

{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": 0,
        "num_elements": 100,
        "visibility-profiles": [
            {
                "id": 1816,
                "member_id": 1066,
                "name": "Test Visibility Profile",
                "notes": null,
                "expose_age_default": true,
                "expose_gender_default": true,
                "expose_custom_categories_default": "list",
                "url_exposure_default": "full",
                "expose_reserve_price_default": true,
                "expose_user_id_default": true,
                "expose_ip_default": true,
                "expose_user_agent_default": true,
                "expose_postal_code_default": true,
                "expose_geo_lat_lon_default": true,
                "expose_device_id_default": true,
                "expose_querystring_default": true,
                "expose_application_id_default": true,
                "expose_site_id_default": true,
                "last_modified": "2015-08-31 18:14:45",
                "buyer_members": [
                    {
                        "id": 9,
                        "expose_age": true,
                        "expose_gender": true,
                        "expose_custom_categories": "none",
                        "url_exposure": "full",
                        "expose_reserve_price": true,
                        "expose_user_id": true,
                        "expose_ip": true,
                        "expose_user_agent": true,
                        "expose_postal_code": true,
                        "expose_geo_lat_lon": true,
                        "expose_device_id": true,
                        "expose_querystring": true,
                        "expose_application_id": true,
                        "expose_site_id": true,
                        "name": "DisplayWords Bidder - member 9",
                        "custom_categories": null
                    }
                ],
                "bidders": [
                    {
                        "id": 6,
                        "expose_age": true,
                        "expose_gender": true,
                        "expose_custom_categories": "none",
                        "url_exposure": "full",
                        "expose_reserve_price": true,
                        "expose_user_id": true,
                        "expose_ip": true,
                        "expose_user_agent": true,
                        "expose_postal_code": true,
                        "expose_geo_lat_lon": true,
                        "expose_device_id": true,
                        "expose_querystring": true,
                        "expose_application_id": true,
                        "expose_site_id": true,
                        "name": "Dilling HBF Test New",
                        "custom_categories": null
                    }
                ],
                "custom_categories": [
                    {
                        "id": 24214,
                        "name": "TEST"
                    }
                ]
            },
            {
                "id": 1818,
                "member_id": 1066,
                "name": "Test Visibility Profile",
                "notes": null,
                "expose_age_default": true,
                "expose_gender_default": true,
                "expose_custom_categories_default": "list",
                "url_exposure_default": "full",
                "expose_reserve_price_default": true,
                "expose_user_id_default": true,
                "expose_ip_default": true,
                "expose_user_agent_default": true,
                "expose_postal_code_default": true,
                "expose_geo_lat_lon_default": true,
                "expose_device_id_default": true,
                "expose_querystring_default": true,
                "expose_application_id_default": true,
                "expose_site_id_default": true,
                "last_modified": "2015-08-31 21:24:43",
                "buyer_members": [
                    {
                        "id": 9,
                        "expose_age": false,
                        "expose_gender": false,
                        "expose_custom_categories": "none",
                        "url_exposure": "hidden",
                        "expose_reserve_price": true,
                        "expose_user_id": true,
                        "expose_ip": true,
                        "expose_user_agent": true,
                        "expose_postal_code": true,
                        "expose_geo_lat_lon": true,
                        "expose_device_id": true,
                        "expose_querystring": true,
                        "expose_application_id": true,
                        "expose_site_id": true,
                        "name": "DisplayWords Bidder - member 9",
                        "custom_categories": null
                    }
                ],
                "bidders": null,
                "custom_categories": [
                    {
                        "id": 24214,
                        "name": "TEST"
                    }
                ]
            }
        ]
    }
}
```

**View visibility profile 1818**

``` pre
$ curl -b cookies 'https://api.appnexus.com/visibility-profile?id=1818'

{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "visibility-profile": {
            "id": 1818,
            "member_id": 1066,
            "name": "Test Visibility Profile",
            "notes": null,
            "expose_age_default": true,
            "expose_gender_default": true,
            "expose_custom_categories_default": "list",
            "url_exposure_default": "full",
            "expose_reserve_price_default": true,
            "expose_user_id_default": true,
            "expose_ip_default": true,
            "expose_user_agent_default": true,
            "expose_postal_code_default": true,
            "expose_geo_lat_lon_default": true,
            "expose_device_id_default": true,
            "expose_querystring_default": true,
            "expose_application_id_default": true,
            "expose_site_id_default": true,
            "last_modified": "2015-08-31 21:24:43",
            "buyer_members": [
                {
                    "id": 9,
                    "expose_age": false,
                    "expose_gender": false,
                    "expose_custom_categories": "none",
                    "url_exposure": "hidden",
                    "name": "DisplayWords Bidder - member 9",
                    "custom_categories": null
                }
            ],
            "bidders": null,
            "custom_categories": [
                {
                    "id": 24214,
                    "name": "TEST"
                }
            ]
        }
    }
}
```






