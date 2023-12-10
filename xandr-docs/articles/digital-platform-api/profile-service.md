---
Title : Profile Service
Description : A profile is a set of targeting parameters, such as gender, age,
ms.date: 10/28/2023
ms.custom: digital-platform-api
geography, and frequency. It can be applied to several objects in the
---


# Profile Service



A profile is a set of targeting parameters, such as gender, age,
geography, and frequency. It can be applied to several objects in the
system, most of which are listed below. The most common use of the
profile service is to run a campaign; you create a profile and then
associate it with the <a
href="campaign-service.md"
class="xref" target="_blank">Campaign Service</a>. The campaign object
includes fields such as flight dates and associated creatives. 

- Except for segment targeting, parameters are absolute. For example, if
  the geographical target is set only to the United States, ONLY
  U.S.-based impressions will receive bids.
- Segment targeting uses and/or Boolean logic.
- Profiles must be associated with either an advertiser or a publisher,
  in order to be used with several other objects in the system, listed
  below.

Profiles can be used with several other objects in the system (listed
below). Any fields in the profile that do not apply to the associated
object will be ignored.

- Advertiser
- Line Item
- Creative
- Campaign
- Payment Rule
- Ad Quality Rule

It is also possible to refer to a profile within a deal object, while it
is not necessary for the profile to be associated to an advertiser or
publisher.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001d94__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001d94__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__2"><a
href="https://api.appnexus.com/profile?advertiser_id=ADVERTISER_ID&amp;member_id=MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/profile?advertiser_id=ADVERTISER_ID&amp;member_id=MEMBER_ID</a>
<p>(profile JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__3">Add
a new profile</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__2"><a
href="https://api.appnexus.com/profile?advertiser_code=ADVERTISER_CODE"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/profile?advertiser_code=ADVERTISER_CODE</a>
<p>(profile JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__3">Add
a new profile</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__2"><a
href="https://api.appnexus.com/profile?id=PROFILE_ID&amp;advertiser_id=ADVERTISER_ID&amp;member_id=MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/profile?id=PROFILE_ID&amp;advertiser_id=ADVERTISER_ID&amp;member_id=MEMBER_ID</a>
<p>(profile JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__3">Modify an existing profile</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__2"><a
href="https://api.appnexus.com/profile?code=PROFILE_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/profile?code=PROFILE_CODE&amp;advertiser_code=ADVERTISER_CODE</a>
<p>(profile JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__3">Modify an existing profile</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__2"><a
href="https://api.appnexus.com/profile?advertiser_id=ADVERTISER_ID&amp;member_id=MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/profile?advertiser_id=ADVERTISER_ID&amp;member_id=MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__3">View
all of the profiles for one of your advertisers</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__2"><a
href="https://api.appnexus.com/profile?advertiser_code=ADVERTISER_CODE"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/profile?advertiser_code=ADVERTISER_CODE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__3">View
all of the profiles for one of your advertisers</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__2"><a
href="https://api.appnexus.com/profile?id=PROFILE_ID&amp;advertiser_id=ADVERTISER_ID&amp;member_id=MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/profile?id=PROFILE_ID&amp;advertiser_id=ADVERTISER_ID&amp;member_id=MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__3">View
a specific profile for one of your advertisers</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__2"><a
href="https://api.appnexus.com/profile?code=PROFILE_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/profile?code=PROFILE_CODE&amp;advertiser_code=ADVERTISER_CODE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__3">View
a specific profile for one of your advertisers</td>
</tr>
</tbody>
</table>



<b>Note:</b> `postal_code_action_include` - To
use this service for publisher profiles, replace `advertiser_id` with
`publisher_id`.







## JSON Fields

**General**

<table id="ID-00001d94__table_zqg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_zqg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_zqg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_zqg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__1"><p><code
class="ph codeph">id</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__3">The ID of the
profile.
<p><strong>Required</strong>: <code class="ph codeph">PUT</code>, in
query string</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__3">Custom code for the
profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__3">Optional
description.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__1"><code
class="ph codeph">is_template</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__3">If true, the profile
has been saved as a targeting template in . To
get profiles that are targeting templates in ,
pass <code class="ph codeph">is_template=true</code> in the query string
of a GET call. For more details about targeting templates in <span
class="ph">, see "Managing Targeting Templates" within the app's
Help System (Customer login required).
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__3">Time of last
modification to this profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__1"><code
class="ph codeph">is_archived</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__3"><strong>Read-only</strong>. Indicates
whether the profile has been automatically archived due to it's parent
line item not being used (and therefore, having been archived). Once set
as <code class="ph codeph">true</code>, the value can't be changed and
the only calls that can be made on the profile object are <code
class="ph codeph">GET</code> and <code class="ph codeph">DELETE</code>.

<b>Note:</b> If a profile's parent <span
class="ph"> is automatically archived, the profile will also be
archived. In addition, once archived, the profile may not be associated
with any line items or campaigns.
<p><strong>Default</strong>: <code class="ph codeph">false</code></p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__1"><code
class="ph codeph">archived_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_zqg_kd1_twb__entry__3"><strong>Read-only</strong>. The
date and time on which the profile was archived (i.e., when the <code
class="ph codeph">is_archived</code> field was set to <code
class="ph codeph">true</code>).
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>

**Frequency**

For details on Frequency and Recency Targeting and the below fields,
please click <a
href="frequency-for-the-api.md"
class="xref" target="_blank">here</a>.

<table id="ID-00001d94__table_brg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_brg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_brg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_brg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__1"><code
class="ph codeph">max_lifetime_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__3">The maximum number of
impressions per person. If set, this value must be between <code
class="ph codeph">0</code> and <code class="ph codeph">255</code>.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__1"><code
class="ph codeph">min_session_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__3">The minimum number of
impressions per person per session. If set, this value must be between
<code class="ph codeph">0</code> and <code class="ph codeph">255</code>.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__1"><code
class="ph codeph">max_session_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__3">The maximum number of
impressions per person per session. If set, this value must be between
<code class="ph codeph">0</code> and <code class="ph codeph">255</code>.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__1"><code
class="ph codeph">max_day_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__3">The maximum number of
impressions per person per day. If set, this value must be between 0 and
255.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__1"><code
class="ph codeph">max_hour_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__3">The maximum number of
impressions per person per hour. If set, this value must be between
<code class="ph codeph">0</code> and <code class="ph codeph">255</code>.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__1"><code
class="ph codeph">max_week_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__3">The maximum number of
impressions per person per week. If set, this value must be between
<code class="ph codeph">0</code> and <code class="ph codeph">255</code>.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__1"><code
class="ph codeph">max_month_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__3">The maximum number of
impressions per person per month. If set, this value must be between
<code class="ph codeph">0</code> and <code class="ph codeph">255</code>.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__1"><code
class="ph codeph">min_minutes_per_imp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__3">The minimum number of
minutes between impressions per person. This field may not be set to
<code class="ph codeph">0</code>.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__1"><code
class="ph codeph">max_page_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__3">The maximum number of
impressions per page load (seller's ad request). 

<b>Note:</b> Only relevant for multi-tag
auctions (For example: /(ss)vmap).

<strong>Default</strong>: <code class="ph codeph">null</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__1"><code
class="ph codeph">require_cookie_for_freq_cap</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_brg_kd1_twb__entry__3">Indicates whether or
not you'll exclusively serve to users with cookies in order to maintain
your frequency cap settings, as we can't track the number of impressions
without cookies.
<p>Setting this field to <code class="ph codeph">true</code> indicates
that you'll only serve ads to users with cookies, thereby maintaining
your frequency settings. Setting this field to <code
class="ph codeph">false</code> indicates that you'll serve to cookieless
users as well, thereby ignoring frequency-cap settings for those users.
Because this flag is only enforced when a frequency cap has been set,
setting this field to <code class="ph codeph">true</code> won't require
cookies for an object that has no active frequency-cap settings.</p>


<b>Note:</b> If you've set a daily-occurring
frequency cap and are going to use Advanced Frequency Management, you
must set <code class="ph codeph">advanced_frequency_management</code> to
<code class="ph codeph">true</code> and <code
class="ph codeph">require_cookie_for_freq_cap</code> to <code
class="ph codeph">false</code>.


<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
</tbody>
</table>

**Targeting**

When multiple targets are set, only inventory that satisfies all
targeting criteria is eligible. For example, if you target intended
audience `general` and inventory sources x, y, and z, then the profile
will only target `general` audience inventory from inventory sources x,
y, and z. Note that you may not specify both the `segment_targets` and
`segment_group_targets` fields in any `POST` or `PUT` calls (only one of
the two may be specified).


<b>Note:</b>

- Please be aware that some targets accept an array of **objects**
  rather than integers or strings. The format can be found in the
  examples at the bottom of this page.

- For **Programmatic Guaranteed Buying Line Items**:
  - You can only target one deal target (see
    <a href="profile-service.md#ID-00001d94__Deal_Targets"
    class="xref">Deal Targets</a> below) and the `allow_unaudited` field
    must be set to `true`.
  - **Do not set any other targeting fields**.

- For <a
  href="line-item-service.md"
  class="xref" target="_blank">Augmented Line Items</a>, it is mandatory
  to set at least one country as geography targeting (See
  <a href="profile-service.md#ID-00001d94__country_targets"
  class="xref">Country Targets</a> below).

- **Effective August 30, 2021**: 
  - TapAd's Graph will provide global coverage excluding Europe.

  - Xandr's Graph will provide coverage for
    Europe and the United States.

    Please adjust your code accordingly.



<table id="ID-00001d94__table_frg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_frg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_frg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_frg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">graph_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><ul>
<li><em>Null</em> if there is no cross-device graph being targeted on
the line item</li>
<li><em>3</em> if the line item is targeting the TapAd Graph</li>
<li><em>4</em> if the line item is targeting the <span
class="ph">Xandr Graph</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">daypart_timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The timezone to be
used with the daypart_targets. For more details, see <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a>. Note that <code
class="ph codeph">null</code> is equivalent to the user's timezone.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">daypart_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The day parts during
which to serve the campaign. See <a
href="profile-service.md#ID-00001d94__DaypartTargets"
class="xref">Daypart Targets</a> below for more details. Note that if
you do not set any daypart targets, the campaign will serve on all days
of the week at all times.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">segment_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><div
id="ID-00001d94__note_hrg_kd1_twb" class="note note_note">
<b>Note:</b> If you use <code
class="ph codeph">segment_targets</code> and edit the associated
campaign in our UI, the segments will be converted to a group in the
<code class="ph codeph">segment_group_targets</code> array. Therefore,
it's recommended to use <code
class="ph codeph">segment_group_targets</code> when working via the API.

<p>The segment IDs to target, each of which has an associated action
(<code class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>). You define the Boolean logic between
segments with the <code
class="ph codeph">segment_boolean_operator</code> field outside of the
array. See <a href="profile-service.md#ID-00001d94__SegmentTargets"
class="xref">Segment Targets</a> below for more details and
example.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">segment_group_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The segment groups to
target. Whereas the <code class="ph codeph">segment_targets</code> array
allows you to define Boolean logic between individual segments, this
array allows you to establish groups of segments, defining Boolean logic
between the groups as well as between the segments within each group.
You define the Boolean logic between groups with the <code
class="ph codeph">segment_boolean_operator</code> field outside of the
array; you define the Boolean logic between segments in a group with the
<code class="ph codeph">boolean_operator</code> field within the group
object. See <a
href="profile-service.md#ID-00001d94__segment_group_targets"
class="xref">Segment Group Targets</a> below for more details and an
example.

<b>Note:</b> Null segments cannot be added.
<p>You may not add <code class="ph codeph">null</code> segments to this
array using <code class="ph codeph">POST</code> or <code
class="ph codeph">PUT</code>.</p>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">segment_boolean_operator </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">If using
segment_targets, this defines the Boolean logic between the segments
specified. If using segment_group_targets, this defines the Boolean
logic between the segment groups (the Boolean logic between segments in
a group is defined directly in the segment_group_targets array).
Possible values: <code class="ph codeph">and</code> or <code
class="ph codeph">or</code>.
<p><strong>Default</strong>: <code class="ph codeph">and</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">age_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The list of age
ranges to target for this profile. The <code
class="ph codeph">allow_unknown</code> field is available as a Boolean
in order to account for ad calls where the age of the user is not
available. See the <a
href="profile-service.md#ID-00001d94__age_targets" class="xref">Age
Targets</a> section below for more description and examples.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">gender_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The gender targeting
used for the profile. Possible values for <code
class="ph codeph">gender</code> are <code class="ph codeph">m</code> or
<code class="ph codeph">f</code>. The <code
class="ph codeph">allow_unknown</code> field is available as a Boolean
in order to account for ad calls where the gender of the user is not
available. See the <a
href="profile-service.md#ID-00001d94__gender_targets"
class="xref">Gender Targets</a> section below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">country_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The country IDs to be
either excluded or included in a profile, as defined by the <code
class="ph codeph">country_action</code> field. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a list of
country IDs. See Country Targets for more details and format.
<p><strong>Required</strong>: <code class="ph codeph">POST</code>/<code
class="ph codeph">PUT</code>, when <code
class="ph codeph">country_action</code> is include</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">country_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
the <code class="ph codeph">country_targets</code> list. Possible
values: <code class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">region_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The region/state IDs
to be either excluded or included in a profile, as defined by the <code
class="ph codeph">region_action</code> field. You can use the <a
href="region-service.md"
class="xref" target="_blank">Region Service</a> to retrieve a list of
region IDs. See <a
href="profile-service.md#ID-00001d94__RegionTargets"
class="xref">Region Targets</a> for more details and format.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code>/<code class="ph codeph">PUT</code>, when
<code class="ph codeph">region_action</code> is <code
class="ph codeph">include</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">require_transparency_and_consent_framework_string</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><ul>
<li>If <code class="ph codeph">true</code>, only allow associated
objects to purchase inventory where valid TCF string is present</li>
<li>If <code class="ph codeph">false</code>, allow associated objects to
purchase any inventory that falls within pre-defined targeting
declarations.</li>
<li>This is only supported on advertiser level as targeting at other
levels may lead to undefined behavior.<br />
<br />
</li>
</ul>

<b>Note:</b> This parameter is only
applicable to the traffic coming from territories where GDPR applies.
<p><strong>Default</strong>: <code class="ph codeph">false</code></p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">region_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
the <code class="ph codeph">region_targets</code> list. Possible values:
<code class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">dma_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The IDs of designated
market areas to be either excluded or included in a profile, as defined
by the <code class="ph codeph">dma_action</code> field. You can use the
<a
href="designated-market-area-service.md"
class="xref" target="_blank">Designated Market Area Service</a> to
retrieve a list of DMA IDs. Format example:
<pre id="ID-00001d94__codeblock_lrg_kd1_twb"
class="pre codeblock"><code>{
   &quot;dma_targets&quot;:[
      {
         &quot;dma&quot;:612
      },
      {
         &quot;dma&quot;:622
      }
   ]
}                                
                                </code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">dma_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
the <code class="ph codeph">dma_targets</code> list. Possible values:
<code class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">city_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The IDs of cities to
be either included or excluded in a profile, as defined by the <code
class="ph codeph">city_action</code> field. You can use the <a
href="city-service.md"
class="xref" target="_blank">City Service</a> to retrieve a list of city
IDs. See City Targets for more details and format.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code>/<code class="ph codeph">PUT</code>, when
<code class="ph codeph">city_action</code> is <code
class="ph codeph">include</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">city_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
the <code class="ph codeph">city_targets</code> list. Possible values:
<code class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">domain_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">List of domains to be
either included or excluded in a profile, as defined by the <code
class="ph codeph">domain_action</code> field. See the example below for
format.
<pre id="ID-00001d94__codeblock_mrg_kd1_twb"
class="pre codeblock"><code>{
   &quot;domain_targets&quot;:[
      {
         &quot;profile_id&quot;:128350561,
         &quot;domain&quot;:&quot;telenet.be&quot;
      },
      {
         &quot;profile_id&quot;:99898705,
         &quot;domain&quot;:&quot;cnn.us&quot;
      }
   ]
}                                
                                </code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">domain_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
the <code class="ph codeph">domain_targets</code> list. For details on
domains, see the <a
href="monetize_monetize-standard/create-a-domain-list-or-app-list.md"
class="xref" target="_blank">Create a Domain or App List</a>  in <span
class="ph"> documentation. Possible values: <code
class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">domain_list_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The IDs of domains
lists to either include or exclude in a profile, as defined by the <code
class="ph codeph">domain_list_action</code> field. You can use the <a
href="domain-list-service.md"
class="xref" target="_blank">Domain List Service</a> to retrieve domain
list IDs. See the example below for format.

<b>Note:</b> You can use no more than 100
domain lists in a single profile.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">domain_list_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
the <code class="ph codeph">domain_list_targets</code> list. For details
on domains, please see <a
href="monetize_monetize-standard/working-with-targeting-lists.md"
class="xref" target="_blank">Working with Targeting Lists</a> in <span
class="ph"> documentation. Possible values: <code
class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">platform_placement_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">RTB or other
Networks' inventory you can target. You can use Inventory Resold or
Reporting services to find platform placements.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">size_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">List of eligible
sizes to be included in the profile.
<p>The sizes are in an array size objects, each object containing the
width and height of each target size:</p>
<pre id="ID-00001d94__codeblock_nrg_kd1_twb"
class="pre codeblock"><code>{
   &quot;size_targets&quot;:[
      {
         &quot;width&quot;:190,
         &quot;height&quot;:213
      },
      {
         &quot;width&quot;:728,
         &quot;height&quot;:90
      }
   ]
}                                    
                                    </code></pre>

<b>Note:</b> When you enable roadblocking on a
guaranteed line item, this value is combined with creative sizes on the
line item and campaign to produce forecasting. The size with the lowest
forecasted number of impressions will be returned as the forecasted
capacity.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">seller_member_group_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The seller member
groups to be excluded or included in a profile. To target <span
class="ph">Xandr's direct supply, the format is:
<pre id="ID-00001d94__codeblock_prg_kd1_twb"
class="pre codeblock"><code>{
   &quot;seller_member_group_targets&quot;:[
      {
         &quot;id&quot;:1,
         &quot;action_include&quot;:&quot;true/false&quot;
      }
   ]
}                                
                                </code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">member_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Seller member IDs to
be either excluded or included in a profile. The specific format can be
found in the example at the bottom of the page.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">member_default_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><strong>Deprecated</strong>
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">video_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Video target IDs to
be included in a profile. See <a
href="profile-service.md#ID-00001d94__Video_Targets"
class="xref">Video Targets</a> below for the specific format.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">engagement_rate_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Target specific,
highly performant inventory based on historic performance. See <a
href="profile-service.md#ID-00001d94__Engagement_Rate_Targets"
class="xref">Engagement Rate Targets</a> below for details.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">publisher_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Managed/direct
publisher IDs to be either excluded or included in a profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">site_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The sites IDs to be
either excluded or included in a profile. Exclude or include is
inherited from the <code class="ph codeph">publisher_targets</code>
field.
<p><strong>Default</strong>: If you do not provide action with
site_targets, action will default to NULL and profile.inventory_action
will be used.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">placement_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The placement IDs to
be either excluded or included in a profile. Exclude or include is
inherited from the <code class="ph codeph">publisher_targets</code>
field.
<p><strong>Default</strong>: If you do not provide action with
placement_targets, action will default to NULL and
profile.inventory_action will be used.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">inventory_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
the <code class="ph codeph">inventory_targets</code>, <code
class="ph codeph">publisher_targets</code>, <code
class="ph codeph">site_targets</code>, and <code
class="ph codeph">placement_targets</code> list. Possible values: <code
class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>. If action is <code
class="ph codeph">include</code>, then any targeted publisher, site, or
placement will be included.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">content_category_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">object with string
and array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The content
categories to target for this profile as well as whether to allow
unknown categories. See <a
href="profile-service.md#ID-00001d94__Content_Category_Targets"
class="xref">Content Category Targets</a> below for more details and
format. To retrieve content category IDs, use the <a
href="content-category-service.md"
class="xref" target="_blank">Content Category Service.</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">deal_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The deal IDs to be
targeted by this profile. A deal is an agreement between a seller and
buyer that may provide the buyer preferential pricing, access to
exclusive inventory, reduced competition on inventory, or other
opportunities. See <a
href="profile-service.md#ID-00001d94__Deal_Targets" class="xref">Deal
Targets</a> below for more details and format.
<p>See <a
href="profile-service.md#ID-00001d94__targeting_results_for_deal_action_include_and_deal_target_fields"
class="xref">Targeting Results for deal_action_include AND deal_targets
Fields</a> for more information on how the value of this field and the
<code class="ph codeph">deal_action_include</code> field affect
targeting results.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">deal_list_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The deal list IDs to
be targeted by this profile. For example,
<pre id="ID-00001d94__codeblock_qrg_kd1_twb"
class="pre codeblock"><code>{
   &quot;profile&quot;:{
      &quot;id&quot;:1367515,
      &quot;deal_list_targets&quot;:[
         {
            &quot;id&quot;:&quot;0101&quot;
         },
         {
            &quot;id&quot;:&quot;0102&quot;
         }
      ]
   }
}                                
                                </code></pre>
<p>Deal list IDs can be fetched using the <a
href="deal-list-service.md"
class="xref" target="_blank">Deal List Service</a>.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">platform_publisher_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Third party publisher
IDs to be either excluded or included in a profile. See the <a
href="inventory-resold-service.md"
class="xref" target="_blank">Inventory Resold Service</a> for a list of
IDs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">platform_content_category_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">List of network
resold content categories to target for this profile. See the <a
href="inventory-resold-service.md"
class="xref" target="_blank">Inventory Resold Service</a> for a list of
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">use_inventory_attribute_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">If <code
class="ph codeph">true</code>, the profile will allow inventory that has
the sensitive attributes included in <code
class="ph codeph">inventory_attribute_targets</code>.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">trust</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Indicates the level
of audit which inventory must meet in order to be eligible. Possible
values: <code class="ph codeph">appnexus</code>
or <code class="ph codeph">"seller"</code>. If this field is set to
<code class="ph codeph">"</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">"</code>, the <code
class="ph codeph">allow_unaudited</code> field must be set to <code
class="ph codeph">false</code>.
<p><strong>Default</strong>: <code
class="ph codeph">seller</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">allow_unaudited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">If <code
class="ph codeph">true</code>, this profile will allow unaudited
inventory to pass targeting. If the <code class="ph codeph">trust</code>
field is set to <code
class="ph codeph">appnexus</code>, this must be set to <code
class="ph codeph">false</code>.

<b>Note:</b>
<ul>
<li>This setting overrides the seller trust settings in the <code
class="ph codeph">inventory_trust</code> object of the <a
href="member-service.md" class="xref">Member Service</a>.</li>
<li><p>For Programmatic Guaranteed Buying Line Items, <code
class="ph codeph">allow_unaudited</code> must be set to <code
class="ph codeph">true</code>.</p></li>
</ul>
<p><strong>Default</strong>: <code class="ph codeph">false</code></p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">session_freq_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Indicates how the
number of impressions seen by the user are counted during the current
browsing session. Possible values: <code
class="ph codeph">platform</code> (across all publishers in the current
session) or <code class="ph codeph">publisher</code> (for the specific
publisher).
<p><strong>Default</strong>: <code
class="ph codeph">platform</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">inventory_attribute_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The IDs of inventory
attributes to target for this profile. You can use the <a
href="inventory-attribute-service.md"
class="xref" target="_blank">Inventory Attribute Service</a> to retrieve
a list of IDs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">intended_audience_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The intended audience
targets. Possible values: <code class="ph codeph">general</code>, <code
class="ph codeph">children</code>, <code
class="ph codeph">young_adult</code>, or <code
class="ph codeph">mature</code>. Note that you can only choose to <code
class="ph codeph">include</code> (not <code
class="ph codeph">exclude</code>) intended audience targets.
<p>Example:</p>
<pre id="ID-00001d94__codeblock_srg_kd1_twb"
class="pre codeblock"><code>{
   &quot;intended_audience_targets&quot;:[
      &quot;children&quot;,
      &quot;general&quot;
   ]
};                                    
                                    </code></pre>

<b>Note:</b> To use the intended audience
targeting, <code class="ph codeph">default_trust</code> under <code
class="ph codeph">inventory_trust</code> (an attribute under the member)
must be set to <code class="ph codeph">seller</code>. Without this
setting, the intended audience targeting will not be applied.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">language_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The IDs of the
browser languages to either include or exclude in the profile, as
defined by the <code class="ph codeph">language_action</code> field. You
can use the <a
href="language-service.md"
class="xref" target="_blank">Language Service</a> to retrieve language
IDs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">language_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
<code class="ph codeph">language_targets</code>. Possible values: <code
class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">querystring_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The query string
targets to either include or exclude in the profile, as defined by the
<code class="ph codeph">querystring_action</code> field.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">querystring_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
the <code class="ph codeph">querystring_targets</code>. Possible values:
<code class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">querystring_boolean_operator</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Boolean logic to be
applied to the <code class="ph codeph">querystring_targets</code>.
Possible values: <code class="ph codeph">and</code> or <code
class="ph codeph">or</code>.
<p><strong>Default</strong>: <code class="ph codeph">and</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">postal_code_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The postal code IDs
to target. For example:
<pre id="ID-00001d94__codeblock_urg_kd1_twb"
class="pre codeblock"><code>{
   &quot;profile&quot;:{
      &quot;id&quot;:1367515,
      &quot;postal_code_targets&quot;:[
         {
            &quot;id&quot;:&quot;00135&quot;
         },
         {
            &quot;id&quot;:&quot;00136&quot;
         }
      ]
   }
}                                    
                                    </code></pre>
<p>IDs can be fetched using the <a
href="postal-code-service.md"
class="xref" target="_blank">Postal Code Service</a>.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">postal_code_list_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The postal code list
IDs to target. For example:
<pre id="ID-00001d94__codeblock_vrg_kd1_twb"
class="pre codeblock"><code>{
   &quot;profile&quot;:{
      &quot;id&quot;:1367515,
      &quot;postal_code_list_targets&quot;:[
         {
            &quot;id&quot;:&quot;0099&quot;
         },
         {
            &quot;id&quot;:&quot;0100&quot;
         }
      ]
   }
}                                    
                                    </code></pre>
<p>IDs can be fetched using the <a
href="postal-code-list-service.md"
class="xref" target="_blank">Postal Code List Service</a>.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">postal_code_action_include</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Whether to include
the postal codes defined in <code
class="ph codeph">postal_code_targets</code>, postal code lists defined
in <code class="ph codeph">postal_code_list_targets</code> in your
targeting, and political districts defined in <code
class="ph codeph">political_district_targets</code>.
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">zip_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><strong>Deprecated</strong>.
Use <code class="ph codeph">postal_code_targets</code> instead.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">supply_type_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The type(s) of supply
to either include in or exclude from targeting, as defined by the <code
class="ph codeph">supply_type_action</code> field. Possible values:
<code class="ph codeph">web</code>, <code
class="ph codeph">mobile_web</code> and <code
class="ph codeph">mobile_app</code>.

<b>Note:</b> The <code
class="ph codeph">facebook_sidebar</code> option has been deprecated.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">supply_type_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Supply types are
<code class="ph codeph">web</code>, <code
class="ph codeph">mobile_web</code>, and <code
class="ph codeph">mobile_app</code>. Possible values: <code
class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>. If this field is set to <code
class="ph codeph">include</code>, only inventory of types included in
<code class="ph codeph">supply_type_targets</code> will be targeted. If
<code class="ph codeph">exclude</code>, only inventory not in <code
class="ph codeph">supply_type_targets</code> will be targeted (except
<code class="ph codeph">facebook_sidebar</code>, which has been
deprecated).
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">user_group_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Every user is
randomly assigned to 1 of 100 user groups, no group holding any
advantage over another. You can use this field to target a specific
range of these user groups. Also, you can use the <code
class="ph codeph">include_cookieless_users</code> field to include or
exclude users without cookies. See the <a
href="profile-service.md#ID-00001d94__View_a_profile"
class="xref">View a profile</a> example below for formatting. Note that
the <a
href="user-group-pattern-service.md"
class="xref" target="_blank">User Group Pattern Service</a> can help you
calculate your user group targets.

<b>Note:</b> The most common use for user
group targets is defining user groups for A/B testing of campaign
targeting strategies. Here's how it works: You set test user group
targets in one profile and control user group targets in another. Then
you apply the user group label to each affected campaign, using the
label to identify the user group as test or control (see the <code
class="ph codeph">labels</code> field in the <a
href="campaign-service.md"
class="xref" target="_blank">Campaign Service</a>). Then you run the <a
href="network-analytics.md"
class="xref" target="_blank">Network Analytics</a>, <a
href="network-advertiser-analytics.md"
class="xref" target="_blank">Network Advertiser Analytics</a>, or <a
href="advertiser-analytics.md"
class="xref" target="_blank">Advertiser Analytics</a> report grouped by
<code class="ph codeph">user_group_for_campaign</code> to rank how
campaigns performed by user group.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">position_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The fold positions to
target. See <a href="profile-service.md#ID-00001d94__Position_Targets"
class="xref">Position Targets</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">browser_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The IDs of browsers
to either include in or exclude from your targeting, as defined by the
<code class="ph codeph">browser_action</code> field. You can use the <a
href="browser-service.md"
class="xref" target="_blank">Browser Service</a> to retrieve a list of
browser IDs. See the example below for the format.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">browser_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
the <code class="ph codeph">browser_targets</code>. Possible values:
<code class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">location_target_latitude</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The latitude of the
user's location. This must be between -90 and 90, with up to 6 decimal
places, where south is negative and north is positive. A profile can be
targeted to a specific location when GPS data is available from a mobile
device. When lat/long targeting is set, users will only be targeted
within the area defined by the center (<code
class="ph codeph">location_target_latitude</code>, <code
class="ph codeph">location_target_longitude</code>) and radius <code
class="ph codeph">location_target_radius</code>. Users will not be
targeted when GPS data is not available for the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">location_target_longitude</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The longitude of the
user's location. This must be between -180 and 180, with up to 6 decimal
places, where west is negative and east is positive. A profile can be
targeted to a specific location when GPS data is available from a mobile
device. When lat/long targeting is set, users will only be targeted
within the area defined by the center (<code
class="ph codeph">location_target_latitude</code>, <code
class="ph codeph">location_target_longitude</code>) and radius <code
class="ph codeph">location_target_radius</code>. Users will not be
targeted when GPS data is not available for the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">location_target_radius</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">integer length in
meters</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">See <code
class="ph codeph">location_target_latitude</code> for more
information.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">device_model_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The models of mobile
devices (i.e., iPhone) to either include in or exclude from your
targeting, as defined by the <code
class="ph codeph">device_model_action</code> field. To retrieve a
complete list of device models registered in our system, use the
read-only <a
href="device-model-service.md"
class="xref" target="_blank">Device Model Service</a>. See <a
href="profile-service.md#ID-00001d94__Device_Model_Targets"
class="xref">Device Model Targets</a> below for more details and
format.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">device_model_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
<code class="ph codeph">device_model_targets</code>. Possible values:
<code class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">device_type_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The types of devices
to either include in or exclude from your targeting, as defined by the
<code class="ph codeph">device_type_action</code> field.
<p>Possible values:</p>
<ul>
<li><code class="ph codeph">phone</code></li>
<li><code class="ph codeph">tablet</code></li>
<li><code class="ph codeph">pc</code></li>
<li><code class="ph codeph">tv</code></li>
<li><code class="ph codeph">gameconsole</code></li>
<li><code class="ph codeph">stb</code></li>
<li><code class="ph codeph">mediaplayer</code></li>
</ul>
<p>See <a href="profile-service.md#ID-00001d94__device_type_targets"
class="xref">Device Type Targets</a> below for format.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">device_type_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
<code class="ph codeph">device_type_targets</code>. Possible values:
<code class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">carrier_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The mobile carriers
to either include in or exclude from your targeting, as defined by the
<code class="ph codeph">carrier_action</code> field. To retrieve a
complete list of mobile carriers registered in our system, use the
read-only <a
href="carrier-service.md"
class="xref" target="_blank">Carrier Service</a>. See <a
href="profile-service.md#ID-00001d94__carrier_targets"
class="xref">Carrier Targets</a> below for more details and format.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">carrier_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
the <code class="ph codeph">carrier_targets</code>. Possible values:
<code class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">inventory_url_list_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Contains a list of
inventory list IDs (allowlists and/or blocklists). Used to attach a
single allowlist and/or one or more blocklists to the profile.
<ul>
<li>The allowlist contains a list of domains or apps to be targeted by
the line item using the profile. If an allowlist is included, domains
and apps not in the allowlist will not be targeted.</li>
<li>Each blocklist contains a list of domains or apps that are to be
excluded from targeting by line item that uses the profile.</li>
</ul>
<p>See <a href="profile-service.md#ID-00001d94__inventory_lists"
class="xref">Inventory Lists</a> for more details.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">operating_system_family_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The operating systems
as a whole (e.g., Android, Apple iOS, Windows 7, etc.) to either include
in or exclude from your targeting, as defined by the <code
class="ph codeph">operating_system_family_action</code> field. Note that
this field is used to target all versions of operating systems, whereas
<code class="ph codeph">operating_system_extended_targets</code> is used
to target specific versions of operating systems. See <a
href="profile-service.md#ID-00001d94__Operating_System_Family_Targets"
class="xref">Operating System Family Targets</a> below for more details
and format.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">operating_system_family_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Action to be taken on
<code class="ph codeph">operating_system_family_targets</code>. Possible
values: <code class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">use_operating_system_extended_targeting</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><strong>Read-only</strong>.
If <code class="ph codeph">true</code>, the <code
class="ph codeph">operating_system_extended_targets</code> field will be
respected.
<p>By default, newer profiles will have this field set to <code
class="ph codeph">true</code>. However, older profiles (and any "newer"
profiles created by duplicating them) will have this field set to <code
class="ph codeph">false</code> by default.</p>
<p>There is no way to update an older profile (or its duplicates) to set
this field to <code class="ph codeph">true</code>. If you want add OS
extended targeting to these old profiles (or their duplicates), you must
create a new profile and add your targeting settings to the new
profile.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">operating_system_extended_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The list of specific
operating systems to either include in or exclude from your targeting.
Note that this array is used to target specific operating system
versions, whereas <code
class="ph codeph">operating_system_family_targets</code> is used to
target all versions of operating systems. See <a
href="profile-service.md#ID-00001d94__Operating_System_Extended_Targets"
class="xref">Operating System Extended Targets</a> below for more
details and format.

<b>Note:</b> This field will be respected only
if <code
class="ph codeph">use_operating_system_extended_targeting</code> is
<code class="ph codeph">true</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">operating_system_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><strong>Deprecated</strong>.
Please use <code
class="ph codeph">operating_system_extended_targets</code> instead.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">operating_system_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><strong>Deprecated</strong>.
Please use <code
class="ph codeph">operating_system_extended_targets</code> instead.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">mobile_app_instance_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">A list of mobile app
instances that you'd like to include or exclude from targeting. For
field definitions, see <a
href="profile-service.md#ID-00001d94__Mobile_App_Instance_Targets"
class="xref">Mobile App Instance Targets</a> below. For more details
about what mobile app instances are and how they work, see the <a
href="mobile-app-instance-service.md"
class="xref" target="_blank">Mobile App Instance Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">mobile_app_instance_action_include</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Whether to include
the mobile app instances defined in <code
class="ph codeph">mobile_app_instance_targets</code> in your campaign
targeting.
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">mobile_app_instance_list_target</code>s</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">This list contains
mobile app instance lists (in other words, it's a list of lists). For
field definitions, see <a
href="profile-service.md#ID-00001d94__MobileAppInstanceListTargets"
class="xref">Mobile App Instance List Targets</a> below. For more
information about mobile app instance lists are and how they work, see
the <a
href="mobile-app-instance-list-service.md"
class="xref" target="_blank">Mobile App Instance List Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">mobile_app_instance_list_action_include</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Whether to include
the mobile app instance lists defined in <code
class="ph codeph">mobile_app_instance_list_targets</code> in your
campaign targeting.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">deal_action_include</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Whether to include or
exclude deals defined in <code class="ph codeph">deal_targets</code> and
deal lists defined in <code
class="ph codeph">deal_list_targets</code> in campaign and/or line item
targeting. When set to <code class="ph codeph">true</code>, deals and
deal lists will be included.

<b>Note:</b> To target or exclude deals and
deal lists, in addition to setting this field to <code
class="ph codeph">true</code> or <code class="ph codeph">false</code>,
you must also:
<ul>
<li>provide a list of deals and deal lists to include or exclude in the
<code class="ph codeph">deal_targets</code> and <code
class="ph codeph">deal_list_targets</code> array. An empty list would
either target no deals/deal lists (if <code
class="ph codeph">deal_action_include</code> is set to <code
class="ph codeph">true</code>) or target all deals/deal lists (if <code
class="ph codeph">deal_action_include</code> is set to <code
class="ph codeph">false</code>).</li>
<li>(only when using ALIs) set the <code class="ph codeph">deals</code>
field to <code class="ph codeph">true</code> within the <code
class="ph codeph">supply_strategies</code> array of the <a
href="line-item-service.md"
class="xref" target="_blank">Line Item Service</a>.</li>
</ul>

<p>See <a
href="profile-service.md#ID-00001d94__targeting_results_for_deal_action_include_and_deal_target_fields"
class="xref">Targeting Results for deal_action_include AND deal_targets
Fields</a> for more information on how the value of this field and the
<code class="ph codeph">deal_targets</code> field affect targeting
results.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">ip_range_list_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">A list of IP address
ranges to be included or excluded from campaign targeting. For more
information, see <a
href="profile-service.md#ID-00001d94__IP_Range_List_Targets"
class="xref">IP Range List Targets</a> below, as well as the
documentation for the <a
href="ip-range-list-service.md"
class="xref" target="_blank">IP Range List Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">key_value_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">A list of custom
key/value targets. For details and examples, see <a
href="profile-service.md#ID-00001d94__Key_Value_Targets"
class="xref">Key Value Targets</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">ad_slot_position_action_include</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">Intent to target
specific slots in an ad pod. Note that you can target ad slots or ad
bumpers, but not both.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">ad_slot_position_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of ints</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The ad slot positions
a buyer wants to serve on. <code class="ph codeph">-1</code> represents
the last position, <code class="ph codeph">0</code> represents the
first. By default when <code
class="ph codeph">ad_slot_position_action_include</code> is set to <code
class="ph codeph">false</code>, an empty array means spending can happen
on any position. Set <code
class="ph codeph">ad_slot_position_action_include</code> to <code
class="ph codeph">true</code> first if you want to use <code
class="ph codeph">ad_slot_position_targets</code> to specify positions
to target.
<p><strong>Default</strong>: empty row</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">ad_slot_intro_bumper_action_include</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">This controls if the
creative will target video intro positions for VAST video auctions. The
default is <code class="ph codeph">true</code>. To ensure that your
creative does not target the intro adpod position, set this field to
<code class="ph codeph">false</code>. Note that you can target ad slots
or ad bumpers, but not both.
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">ad_slot_outro_bumper_action_include</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">This controls if the
creative will target video outro positions for VAST video auctions. The
default is <code class="ph codeph">true</code>. To ensure that your
creative does not target the outro adpod position, set this field to
<code class="ph codeph">false</code> . Note that you can target ad slots
or ad bumpers, but not both.
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">screen_size_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><strong>Deprecated</strong>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">screen_size_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">optimization_zone_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><strong>Not currently
supported</strong>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">optimization_zone_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><strong>Not currently
supported</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><strong>Read-only</strong>.
The date and time when the profile was created.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">is_expired</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><strong>Read-only</strong>.
If true, the object associated with the profile is expired. This
parameter is only supported for internal purposes.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">inventory_network_resold_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">exelate_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">inventory_url_whitelist_settings</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">This object contains
fields used to determine how allowlists are applied to line item buying.
See Inventory URL Allowlist Settings.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">ads_txt_authorized_only</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">When <code
class="ph codeph">true</code>, the line item will only target web
inventory from authorized sellers of domains that have an <code
class="ph codeph">ads.txt</code> file.

<b>Note:</b> The <code
class="ph codeph">ads_txt_authorized_only</code> targeting parameter
only applies to Open Exchange inventory. It does not affect targeting of
deal inventory. It also does not apply to app inventory (since use of an
<code class="ph codeph">ads.txt</code> file for app inventory has not
yet been adopted by the industry). See <a
href="industry-reference/ads-txt---app-ads-txt-faq-for-buyers.md"
class="xref" target="_blank">Ads.txt FAQ for Buyers</a> for more
information.
<p><strong>Default</strong>: <code class="ph codeph">false</code></p>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__1"><code
class="ph codeph">political_district_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_frg_kd1_twb__entry__3">The political
district IDs to target.
<pre id="ID-00001d94__codeblock_esg_kd1_twb"
class="pre codeblock"><code>{
   &quot;profile&quot;:{
      &quot;id&quot;:130465799,
      &quot;political_district_targets&quot;:[
         {
            &quot;id&quot;:&quot;139897&quot;
         }
      ]
   }
}                                    
                                    </code></pre>
<p>IDs can be fetched using the <a
href="political-district-service.md"
class="xref" target="_blank">Political District Service</a>.</p></td>
</tr>
</tbody>
</table>

**Targeting Results for `deal_action_include` AND `deal_targets`
Fields**

The following targeting results occur for these values of the
`deal_action_include` AND `deal_targets` fields:

<table id="ID-00001d94__table_fsg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_fsg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1"><code
class="ph codeph">deal_action_include</code></th>
<th id="ID-00001d94__table_fsg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1"><code
class="ph codeph">deal_targets</code></th>
<th id="ID-00001d94__table_fsg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Targeting Result</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_fsg_kd1_twb__entry__1">true</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_fsg_kd1_twb__entry__2"><code
class="ph codeph">null</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_fsg_kd1_twb__entry__3">Target no deals</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_fsg_kd1_twb__entry__1">false</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_fsg_kd1_twb__entry__2"><code
class="ph codeph">null</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_fsg_kd1_twb__entry__3">Target all deals</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_fsg_kd1_twb__entry__1">true</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_fsg_kd1_twb__entry__2">Contains deal
targets</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_fsg_kd1_twb__entry__3">Include these deals
in targeting</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_fsg_kd1_twb__entry__1"><code
class="ph codeph">false</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_fsg_kd1_twb__entry__2">Contains deal
targets</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_fsg_kd1_twb__entry__3">Exclude these deals
in targeting</td>
</tr>
</tbody>
</table>

**Mobile App Instance Targets**

For more information about mobile app instances, including instructions
on adding them to your profile, see the <a
href="mobile-app-instance-service.md"
class="xref" target="_blank">Mobile App Instance Service</a>.

<table id="ID-00001d94__table_gsg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_gsg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_gsg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_gsg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gsg_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gsg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gsg_kd1_twb__entry__3">The unique ID of the
mobile app instance.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gsg_kd1_twb__entry__1"><code
class="ph codeph">bundle_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gsg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gsg_kd1_twb__entry__3">The bundle ID of this
mobile app instance.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gsg_kd1_twb__entry__1"><code
class="ph codeph">os_family_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gsg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gsg_kd1_twb__entry__3">The OS family ID
associated with this mobile app instance.</td>
</tr>
</tbody>
</table>

**Mobile App Instance List Targets**

For more information about mobile app instance lists, including
instructions on adding them to your profile, see the <a
href="mobile-app-instance-service.md"
class="xref" target="_blank">Mobile App Instance List Service</a>.

<table id="ID-00001d94__table_hsg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_hsg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_hsg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_hsg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_hsg_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_hsg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_hsg_kd1_twb__entry__3">The unique ID of the
mobile app instance list.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_hsg_kd1_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_hsg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_hsg_kd1_twb__entry__3">The name of this
mobile app instance list.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_hsg_kd1_twb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_hsg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_hsg_kd1_twb__entry__3">An optional
description of the list's purpose or contents.</td>
</tr>
</tbody>
</table>

**Daypart Targets**

Each object in the daypart_targets array includes the following fields.
See the <a href="profile-service.md#ID-00001d94__View_a_profile"
class="xref">View a profile</a> example below for formatting.

<table id="ID-00001d94__table_isg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_isg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_isg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_isg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_isg_kd1_twb__entry__1"><code
class="ph codeph">day</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_isg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_isg_kd1_twb__entry__3">The day of the week.
Possible values: <code class="ph codeph">sunday</code>, <code
class="ph codeph">monday</code>, <code class="ph codeph">tuesday</code>,
<code class="ph codeph">wednesday</code>, <code
class="ph codeph">thursday</code>, <code
class="ph codeph">friday</code>, <code
class="ph codeph">saturday</code>, or <code
class="ph codeph">all</code>. Note that these strings must be in lower
case.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_isg_kd1_twb__entry__1"><code
class="ph codeph">start_hour</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_isg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_isg_kd1_twb__entry__3">The start hour for
the daypart. This must be an integer between 0 and 23. The campaign will
start serving at the beginning of the hour (6 is equivalent to "6:00"
am).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_isg_kd1_twb__entry__1"><code
class="ph codeph">end_hour</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_isg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_isg_kd1_twb__entry__3">The end hour for the
daypart. This must be an integer between 0 and 23. The campaign will
stop serving at the end of the hour (23 is equivalent to "23:59").</td>
</tr>
</tbody>
</table>

**Segment Targets** 

You define the Boolean logic between segments with
`segment_boolean_operator` field outside of the array. If
`segment_boolean_operator` is `AND`, then the profile will only target
users that satisfy all segment targets. If the
`segment_boolean_operator` is `OR`, then the profile will target users
that satisfy any of the specified segments. For detailed guidance on
Boolean logic for segment targeting, see Segment Targeting.

In segment targeting, you need to keep the settings for the Boolean
logic consistent, otherwise you would not be able to edit the segments
in Invest UI. For consistent Boolean logic settings, you need to ensure
that

- `segment_boolean_operator` field is set as either “`and`” or “`or`”.
- The `boolean_operator` field in each object of the
  segment_group_targets array (See Segment Group Targets) is set as
  either “`and`” or “`or`”. However this value should be the opposite of
  what is set in segment_boolean_operator above. For example, if the
  value set in segment_boolean_operator is "`or`", the value of
  `boolean_operator` for the objects should be "`and`".
- The value of `boolean_operator` field for all objects in the
  segment_group_targets array needs to be same. In short, you cannot
  have boolean_operator of one object as "`and`" and other as "`or`" in
  the same profile.  
  For an example of consistent and inconsistent JSONs, see below.
  <table id="ID-00001d94__table_ksg_kd1_twb" class="table">
  <thead class="thead">
  <tr class="header row">
  <th id="ID-00001d94__table_ksg_kd1_twb__entry__1"
  class="entry colsep-1 rowsep-1">Consistent</th>
  <th id="ID-00001d94__table_ksg_kd1_twb__entry__2"
  class="entry colsep-1 rowsep-1">Inconsistent</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001d94__table_ksg_kd1_twb__entry__1"><pre
  id="ID-00001d94__codeblock_lsg_kd1_twb"
  class="pre codeblock"><code>{
     &quot;segment_boolean_operator&quot;:&quot;and&quot;,
     &quot;segment_group_targets&quot;:[
        {
           &quot;boolean_operator&quot;:&quot;or&quot;,
           &quot;segments&quot;:[
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;1094797&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19285936,
                 &quot;name&quot;:&quot;Travel Intender&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;3119772&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378950,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Travel&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;6502105&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378951,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Electronics and Gadgets&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;3734388&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378952,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Apparel&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              }
           ]
        },
        {
           &quot;boolean_operator&quot;:&quot;or&quot;,
           &quot;segments&quot;:[
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;2137013&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378954,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Buy Online&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;2272811&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378955,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Personal Health&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;8578372&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378957,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Shoes&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              }
           ]
        },
        {
           &quot;boolean_operator&quot;:&quot;or&quot;,
           &quot;segments&quot;:[
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;8578372&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378957,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Shoes&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;4608982&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:21015599,
                 &quot;name&quot;:&quot;Xandr Audiences - Demographic - Occupation - Detail - Attorneys&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;2420395&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:21015602,
                 &quot;name&quot;:&quot;Xandr Audiences - Demographic - Occupation - Detail - Accountants/CPA&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              }
           ]
        }
     ]
  }                                        
                                          </code></pre></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001d94__table_ksg_kd1_twb__entry__2"><pre
  id="ID-00001d94__codeblock_msg_kd1_twb"
  class="pre codeblock"><code>{
     &quot;segment_boolean_operator&quot;:&quot;and&quot;,
     &quot;segment_group_targets&quot;:[
        {
           &quot;boolean_operator&quot;:[
              &quot;and&quot;,
              &quot;- - same as segment_boolean_operator + also all other boolean_operators in the rest of the object is set to&quot;,
              &quot;or&quot;,
              &quot;therefore this is inconsistent behavior&quot;
           ],
           &quot;segments&quot;:[
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;1094797&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19285936,
                 &quot;name&quot;:&quot;Travel Intender&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;3119772&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378950,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Travel&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;6502105&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378951,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Electronics and Gadgets&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;3734388&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378952,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Apparel&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              }
           ]
        },
        {
           &quot;boolean_operator&quot;:&quot;or&quot;,
           &quot;segments&quot;:[
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;2137013&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378954,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Buy Online&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;2272811&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378955,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Personal Health&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;8578372&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378957,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Shoes&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              }
           ]
        },
        {
           &quot;boolean_operator&quot;:&quot;or&quot;,
           &quot;segments&quot;:[
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;8578372&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:19378957,
                 &quot;name&quot;:&quot;XAS - US HH Demographic - Online Shopping - Shoes&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;4608982&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:21015599,
                 &quot;name&quot;:&quot;Xandr Audiences - Demographic - Occupation - Detail - Attorneys&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              },
              {
                 &quot;action&quot;:&quot;include&quot;,
                 &quot;code&quot;:&quot;2420395&quot;,
                 &quot;deleted&quot;:false,
                 &quot;expire_minutes&quot;:null,
                 &quot;id&quot;:21015602,
                 &quot;name&quot;:&quot;Xandr Audiences - Demographic - Occupation - Detail - Accountants/CPA&quot;,
                 &quot;other_equals&quot;:null,
                 &quot;other_greater&quot;:null,
                 &quot;other_in_list&quot;:null,
                 &quot;other_less&quot;:null,
                 &quot;start_minutes&quot;:null
              }
           ]
        }
     ]
  }                                        
                                          </code></pre></td>
  </tr>
  </tbody>
  </table>

<table id="ID-00001d94__table_nsg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_nsg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_nsg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_nsg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__3">The ID of the
segment.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__3">The custom code for
the segment.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__1"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__3">Possible values:
<code class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">include</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__1"><code
class="ph codeph">start_minutes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__3">The lower bound for
the amount of time since a user was added to the segment.
<p><strong>Default</strong>: <code class="ph codeph">0</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__1"><code
class="ph codeph">expire_minutes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__3">The upper bound for
the amount of time since a user was added to the segment.
<p><strong>Default</strong>: <code class="ph codeph">-1</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__1"><code
class="ph codeph">other_equals</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__3">The exact segment
value to target.

<b>Note:</b> If you use other_in_list, you
cannot use this field.

<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__1"><code
class="ph codeph">other_less</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__3">The non-inclusive
upper bound for segment value targeting.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__1"><code
class="ph codeph">other_greater</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__3">The non-inclusive
lower bound for segment value targeting.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__1"><code
class="ph codeph">other_in_list</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nsg_kd1_twb__entry__3">The list of segment
values to target.If you use other_equals, you cannot use this field.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>


<b>Note:</b> For `other_equals`, `other_less`,
`other_greater`, and `other_in_list`, the segment value can be an
"other" value passed by the segment pixel or can be related to segment
query string values (see the "querystring_mapped" field in the <a
href="segment-service.md"
class="xref" target="_blank">Segment Service</a>). For examples of how
to target query string values in a segment, see other examples below.



**Example**:

In this example, since the `segment_boolean_operator` is `AND`, the
profile will target only users that fit in both segment 86 and segment
202.

``` pre
{
   "profile":{
      "segment_boolean_operator":"and",
      "segment_targets":[
         {
            "id":86,
            "code":null,
            "name":"Network segment 1",
            "action":"include",
            "start_minutes":0,
            "expire_minutes":-1,
            "other_less":null,
            "other_greater":null,
            "other_equals":null
         },
         {
            "id":202,
            "code":null,
            "name":"Credit Score segment",
            "action":"include",
            "start_minutes":0,
            "expire_minutes":-1,
            "other_less":null,
            "other_greater":null,
            "other_equals":null
         }
      ]
   }
}            
            
```

**Segment Group Targets**

Each segment group object contains the following fields. Note that you
define the Boolean logic between groups with the
`segment_boolean_operator` field outside of the array, and you define
the Boolean logic between segments in a group with the
`boolean_operator` field within the group object. See the example below
for formatting and for an example of the logic of combining
`segment_boolean_operator` and `boolean_operator`. For detailed guidance
on Boolean logic for segment targeting, see Segment Targeting.



<b>Note:</b> Null segments cannot be added.

You may not add `null` segments to this array using `POST` or `PUT`.



<table id="ID-00001d94__table_ssg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_ssg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_ssg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_ssg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__1"><code
class="ph codeph">boolean_operator</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__3">The boolean logic
between segments in a segment group. Possible values: <code
class="ph codeph">and</code> or <code class="ph codeph">or</code>. 
<p>The value of boolean_operator field for all objects in the
segment_group_targets array needs to be same.</p>
<p>In short, you cannot have <code
class="ph codeph">boolean_operator</code> of one object as "<code
class="ph codeph">and</code>" and other as "<code
class="ph codeph">or</code>" in the same profile.</p>
<p><strong>Default</strong>: <code class="ph codeph">or</code></p>
<p><strong>Required</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__3">The ID of the
segment.
<p><strong>Required</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__3">The custom code for
the segment.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__1"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__3">Possible values:
<code class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><strong>Default</strong>: <code
class="ph codeph">include</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__1"><code
class="ph codeph">start_minutes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__3">The lower bound for
the amount of time since a user was added to the segment.
<p><strong>Default</strong>: <code class="ph codeph">0</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__1"><code
class="ph codeph">expire_minutes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__3">The upper bound for
the amount of time since a user was added to the segment.
<p><strong>Default</strong>: <code class="ph codeph">-1</code> </p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__1"><code
class="ph codeph">other_equals</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__3">The exact segment
value to target.

<b>Note:</b> If you use <code
class="ph codeph">other_in_list</code>, you cannot use this field.

<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__1"><code
class="ph codeph">other_less</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__3">The non-inclusive
upper bound for segment value targeting.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__1"><code
class="ph codeph">other_greater</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__3">The non-inclusive
lower bound for segment value targeting.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__1"><code
class="ph codeph">other_in_list</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ssg_kd1_twb__entry__3">The list of segment
values to target.

<b>Note:</b> If you use other_equals, you
cannot use this field.

<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>



<b>Note:</b> For `other_equals`, `other_less`,
`other_greater`, and `other_in_list`, the segment value can be an
"other" value passed by the segment pixel or can be related to segment
query string values (see the "querystring_mapped" field in the <a
href="segment-service.md"
class="xref" target="_blank">Segment Service</a>). For examples of how
to target query string values in a segment, see other examples below.



**Example**:

In this example, since the `segment_boolean_operator` is `OR` and the
`boolean_operator` for each group is `AND`, the profile will target only
users that fit in both segment 11 and segment 22 or both segment 33 and
segment 44.

``` pre
{
   "profile":{
      "segment_boolean_operator":"or",
      "segment_group_targets":[
         {
            "boolean_operator":"and",
            "segments":[
               {
                  "id":11,
                  "code":null,
                  "action":"include",
                  "start_minutes":0,
                  "expire_minutes":-1,
                  "other_equals":null,
                  "other_less":null,
                  "other_greater":null
               },
               {
                  "id":22,
                  "code":null,
                  "action":"include",
                  "start_minutes":0,
                  "expire_minutes":-1,
                  "other_equals":null,
                  "other_less":null,
                  "other_greater":null
               }
            ]
         },
         {
            "boolean_operator":"and",
            "segments":[
               {
                  "id":33,
                  "code":null,
                  "action":"include",
                  "start_minutes":0,
                  "expire_minutes":-1,
                  "other_equals":null,
                  "other_less":null,
                  "other_greater":null
               },
               {
                  "id":44,
                  "code":null,
                  "action":"include",
                  "start_minutes":0,
                  "expire_minutes":-1,
                  "other_equals":null,
                  "other_less":null,
                  "other_greater":null
               }
            ]
         }
      ]
   }
}            
            
```

**Age Targets**

<table id="ID-00001d94__table_vsg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_vsg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_vsg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_vsg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_vsg_kd1_twb__entry__1"><code
class="ph codeph">allow_unknown</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_vsg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_vsg_kd1_twb__entry__3">Determines whether to
include targets where age is not know.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_vsg_kd1_twb__entry__1"><code
class="ph codeph">ages</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_vsg_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_vsg_kd1_twb__entry__3">The age ranges
targeted in this profile.</td>
</tr>
</tbody>
</table>

**ages object:**

<table id="ID-00001d94__table_wsg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_wsg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_wsg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_wsg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_wsg_kd1_twb__entry__1"><code
class="ph codeph">low</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_wsg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_wsg_kd1_twb__entry__3">The lower bound of
the age range (min 13).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_wsg_kd1_twb__entry__1"><code
class="ph codeph">high</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_wsg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_wsg_kd1_twb__entry__3">The upper bound of
the age range (max 100).</td>
</tr>
</tbody>
</table>

**Example**:

``` pre
{
   "profile":{
      "age_targets":{
         "allow_unknown":false,
         "ages":[
            {
               "low":20,
               "high":35
            }
         ]
      }
   }
}            
            
```

**  
Gender Targets**

The `gender_targets` object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__entry__512"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__entry__513"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__entry__514"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__512"><code
class="ph codeph">gender</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__513">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__514">The gender of the user. Possible
values: <code class="ph codeph">m</code> (male), or <code
class="ph codeph">f</code> (female).
<p><strong>Default</strong>: null</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__512"><code
class="ph codeph">allow_unknown</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__513">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d94__entry__514">If
<code class="ph codeph">true</code>, target ad calls where the gender of
the user is not available.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
</tbody>
</table>

**Country Targets**

Each object in the `country_targets` array contains the following
fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__entry__521"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__entry__522"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__entry__523"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__521"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__522">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__523">The ID of the country. You can use the
<a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__521"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__522">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__523"><strong>Read-only</strong>. The name
of the country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__521"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__522">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__523"><strong>Read-only</strong>. The code
for the country.</td>
</tr>
</tbody>
</table>

**  
Example**:

``` pre
{
   "profile":{
      "country_action":"include",
      "country_targets":[
         {
            "id":233,
            "name":"United States",
            "code":"US"
         }
      ]
   }
}           
            
```

**Region Targets**

Each object in the `region_targets` array contains the following fields.

<table id="ID-00001d94__table_btg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_btg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_btg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_btg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__3">The ID of the region.
You can use the <a
href="region-service.md"
class="xref" target="_blank">Region Service</a> to retrieve a list of
region IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__3"><strong>Read-only</strong>.
The name of the region.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__3"><strong>Read-only</strong>.
The code for the region.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__1"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__3"><strong>Read-only</strong>.
The name of the country to which the region belongs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__1"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_btg_kd1_twb__entry__3"><strong>Read-only</strong>.
The code for the country to which the region belongs.</td>
</tr>
</tbody>
</table>

**  
Example**:

``` pre
{
   "profile":{
      "region_action":"include",
      "region_targets":[
         {
            "id":3950,
            "name":"New York",
            "code":"NY",
            "country_name":"United States",
            "country_code":"US"
         }
      ]
   }
}            
            
```

**Require Transparency and Consent Framework String**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__entry__551"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__entry__552"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__entry__553"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__551"><code
class="ph codeph">require_transparency_and_consent_framework_string</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__552">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__553"><ul>
<li>If <code class="ph codeph">true</code>, only allow associated
objects to purchase inventory where valid TCF string is present</li>
<li>If <code class="ph codeph">false</code>, allow associated objects to
purchase any inventory that falls within pre-defined targeting
declarations.</li>
</ul></td>
</tr>
</tbody>
</table>



<b>Note:</b> This parameter is only
applicable to the traffic coming from territories where GDPR applies.



**Example**:

``` pre
{
   "profile":{
      "require_transparency_and_consent_framework_string":"false"
   }
}            
            
```

**City Targets**

Each object in the `city_targets` array contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__entry__557"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__entry__558"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__entry__559"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__557"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__558">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__559">The ID of the city to target. You can
use the <a
href="city-service.md"
class="xref" target="_blank">City Service</a> to retrieve a list of city
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__557"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__558">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__559"><strong>Read-only</strong>. The name
of the city to target.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__557"><code
class="ph codeph">region_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__558">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__559"><strong>Read-only</strong>. The name
of the region to which the city belongs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__557"><code
class="ph codeph">region_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__558">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__559"><strong>Read-only</strong>. The code
of the region to which the city belongs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__557"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__558">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__559"><strong>Read-only</strong>. The name
of the country to which the region belongs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__557"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__558">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__559"><strong>Read-only</strong>. The code
of the country to which the region belongs.</td>
</tr>
</tbody>
</table>

**  
Example**:

``` pre
{
   "profile":{
      "city_action":"include",
      "city_targets":[
         {
            "id":200942,
            "name":"Portland",
            "region_name":"Oregon",
            "region_code":"OR",
            "country_code":"US",
            "country_name":"United States"
         }
      ]
   }
}            
            
```

**Inventory Lists**

Each object in the `inventory_url_list_targets` array includes the
following fields.

<table id="ID-00001d94__table_jtg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_jtg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_jtg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_jtg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__1"><code
class="ph codeph">deleted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__3"><strong>Read-only</strong>.
Indicates whether the inventory list has been deleted.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__3">The ID of the
allowlist or blocklist to be applied.
<ul>
<li>The allowlist contains a list of domains and apps to be targeted by
the line item that uses the profile.</li>
<li>Each blocklist contains a list of domains and apps to be excluded
from targeting by the line item that uses the profile.</li>
</ul>
<p><strong>Required on</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__1"><code
class="ph codeph">list_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__3"><strong>Read-only</strong>.
Denotes whether the list is a blocklist or allowlist. Valid values are
<code class="ph codeph">whitelist</code> or <code
class="ph codeph">blacklist</code>.

<b>Note:</b> The <code
class="ph codeph">list_type</code> field (used by the <a
href="inventory-list-service.md"
class="xref" target="_blank">Inventory List Service</a>) is
<strong>not</strong> used by the Profile Service for determining whether
an inventory list is excluded (<code class="ph codeph">blacklist</code>)
in targeting or included (<code class="ph codeph">whitelist</code>). See
<code class="ph codeph">exclude</code> field in this table for excluding
or including an inventory list in targeting.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__3"><strong>Read-only</strong>.
Name of the allowlist or blocklist.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__1"><code
class="ph codeph">exclude</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_jtg_kd1_twb__entry__3"><strong>Read-only</strong>.
If <code class="ph codeph">true</code>, the inventory list will be
excluded from targeting (i.e., treated as a blocklist). If <code
class="ph codeph">false</code>, the inventory list will be included in
targeting (i.e., treated as an allowlist). This field is solely
dependent on the inventory <code
class="ph codeph">list_type</code> field described above.</td>
</tr>
</tbody>
</table>

**Example**:

``` pre
{
   "profile":{
      "id":145,
      "inventory_url_list_targets":[
         {
            "deleted":false,
            "id":51,
            "list_type":"blacklist",
            "name":"Blocklist to exclude medical sites",
            "exclude":true
         },
         {
            "deleted":false,
            "id":53,
            "list_type":"blacklist",
            "name":"Blocklist to exclude military sites",
            "exclude":true
         },
         {
            "deleted":false,
            "id":54,
            "list_type":"blacklist",
            "name":"Line Item - Blocklist - 2017-08-23T21:44:42Z",
            "exclude":true
         },
         {
            "deleted":false,
            "id":66,
            "list_type":"whitelist",
            "name":"Test Allowlist for Targeting",
            "exclude":false
         }
      ]
   }
}            
            
```

**Content Category Targets**

The `content_category_targets` object includes the `allow_unknown`
field, which is a Boolean, and the `content_category` array. Each object
in the `content_category` array contains the following fields.

<table id="ID-00001d94__table_stg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_stg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_stg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_stg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_stg_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_stg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_stg_kd1_twb__entry__3">The ID of the content
category to target.
<p><strong>Default</strong>: <code class="ph codeph">null</code></p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_stg_kd1_twb__entry__1"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_stg_kd1_twb__entry__2">num</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_stg_kd1_twb__entry__3">The action to take
for this content category. Possible values: <code
class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p>If "<code class="ph codeph">include</code>, then category will be
targeted; if <code class="ph codeph">exclude</code>, the category will
explicitly not be targeted.</p>
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
</tbody>
</table>

**Example**:

``` pre
{
   "profile":{
      "content_category_targets":{
         "allow_unknown":false,
         "content_categories":[
            {
               "id":3,
               "action":"include"
            }
         ]
      }
   }
}            
            
```

**Video Targets**

The `video_targets` object contains the `allow_unknown_playback_method`,
`allow_unknown_context`, `allow_unknown_player_size` fields and the
`playback_methods` , `contexts` , `player_sizes` arrays. For Deals, it
also contains the `deal_creative_duration` field and the
`video_framework`s arrays.

<table id="ID-00001d94__table_utg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_utg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_utg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_utg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_utg_kd1_twb__entry__1"><code
class="ph codeph">allow_unknown_playback_method</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_utg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_utg_kd1_twb__entry__3">Use this field to
target inventory where the playback method is unknown. Set this field to
<code class="ph codeph">true</code> when using the fields of the <code
class="ph codeph">playback_method</code> array to target specific
playback methods AND when you want to include inventory for which no
playback method information has been provided.
<p>If you are not targeting specific playback methods, this field will
have no effect on targeting.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_utg_kd1_twb__entry__1"><code
class="ph codeph">allow_unknown_context</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_utg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_utg_kd1_twb__entry__3">Use this field to
target inventory where the context is unknown. Set this field to <code
class="ph codeph">true</code> when using the fields of the <code
class="ph codeph">contexts</code> array to target specific contexts AND
when you want to include inventory for which no context information has
been provided.
<p>If you are not targeting specific contexts, this field will have no
effect on targeting.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_utg_kd1_twb__entry__1"><code
class="ph codeph">allow_unknown_player_size</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_utg_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_utg_kd1_twb__entry__3">Use this field to
target inventory where the player size is unknown. Set this field to
<code class="ph codeph">true</code> when using the fields of the <code
class="ph codeph">player_sizes</code> array to target specific player
sizes AND when you want to include inventory for which no player size
information has been provided.
<p>If you are not targeting specific player sizes, this field will have
no effect on targeting.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
</tbody>
</table>


<b>Note:</b>

- When you do NOT set any specific video targeting options, you will
  target all inventory, including undefined inventory.
- Ensure that you have elected to include or exclude intro and outro
  creatives by setting them in the `ad_slot_intro_bumper_action_include`
  and `ad_slot_outro_bumper_action_include` fields.



**Contexts**

The default value is an empty array, and will target any roll position.
The `contexts` array contains objects with the following fields:

<table id="ID-00001d94__table_a5g_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_a5g_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_a5g_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_a5g_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_a5g_kd1_twb__entry__1"><p><code
class="ph codeph">id</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_a5g_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_a5g_kd1_twb__entry__3">The ID of the
context. Possible values:
<ul>
<li><code class="ph codeph">1</code>: position-pre-roll</li>
<li><code class="ph codeph">2</code>: position-mid-roll</li>
<li><code class="ph codeph">3</code>: position-post-roll</li>
<li><code class="ph codeph">4</code>: outstream</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_a5g_kd1_twb__entry__1"><p><code
class="ph codeph">name</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_a5g_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_a5g_kd1_twb__entry__3"><strong>Read-only</strong>.
Possible values: <code class="ph codeph">pre-roll</code>, <code
class="ph codeph">mid-roll</code>, <code
class="ph codeph">post-roll</code>, or <code
class="ph codeph">outstream</code>.</td>
</tr>
</tbody>
</table>

**Playback Methods**

The default value is an empty array, and will target any playback
method. The `playback_methods` array contains the following fields:

<table id="ID-00001d94__table_c5g_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_c5g_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_c5g_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_c5g_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_c5g_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_c5g_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_c5g_kd1_twb__entry__3">The ID of the
playback method. Possible values:
<p><code class="ph codeph">1</code>:
playback-method-auto-play-sound-on</p>
<p><code class="ph codeph">2</code>:
playback-method-auto-play-sound-off</p>
<p><code class="ph codeph">3</code>: playback-method-click-to-play</p>
<p><code class="ph codeph">4</code>: playback-method-mouse-over</p>
<p><code class="ph codeph">5</code>:
playback-method-auto-play-sound-unknown</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_c5g_kd1_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_c5g_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_c5g_kd1_twb__entry__3"><strong>Read-only</strong>.
Possible values: <code class="ph codeph">auto_play_sound_on</code>,
<code class="ph codeph">auto_play_sound_off</code>, <code
class="ph codeph">click_to_play</code>, <code
class="ph codeph">mouse_over</code>, or <code
class="ph codeph">auto_play_sound_unknown</code>.</td>
</tr>
</tbody>
</table>

**Player Sizes**

The default value is an empty array, and will target any player size.
The `player_sizes` array contains objects with the following fields:

<table id="ID-00001d94__table_d5g_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_d5g_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_d5g_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_d5g_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_d5g_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_d5g_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_d5g_kd1_twb__entry__3">The ID of the player
size. Possible values:
<p><code class="ph codeph">1</code>: player-size-sm</p>
<p><code class="ph codeph">2</code>: player-size-med</p>
<p><code class="ph codeph">3</code>: player-size-lg</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_d5g_kd1_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_d5g_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_d5g_kd1_twb__entry__3"><strong>Read-only</strong>.
Possible values: <code class="ph codeph">small</code>, <code
class="ph codeph">medium</code>, or <code
class="ph codeph">large</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_d5g_kd1_twb__entry__1"><code
class="ph codeph">min_width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_d5g_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_d5g_kd1_twb__entry__3"><strong>Read-only</strong>.
The minimum width of the player, in pixels.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_d5g_kd1_twb__entry__1"><code
class="ph codeph">max_width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_d5g_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_d5g_kd1_twb__entry__3"><strong>Read-only</strong>.
The maximum width of the player, in pixels.</td>
</tr>
</tbody>
</table>

**Creative Duration**

The `deal_creative_duration` setting is only used by video deal line
items. It lets deals target impressions that allow at least a given
creative duration, so creatives of the defined length can successfully
serve through a deal without errors. It will aggregate only the
impressions with the given setting already in place.

<table id="ID-00001d94__table_e5g_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_e5g_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_e5g_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_e5g_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_e5g_kd1_twb__entry__1"><code
class="ph codeph">deal_creative_duration</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_e5g_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_e5g_kd1_twb__entry__3">The duration of the
video creative in seconds.</td>
</tr>
</tbody>
</table>

**Video Frameworks**

The `video_frameworks` array is only used by video deal line items. It
lets deals target impressions that allow a given video framework (for
example, VPAID) so creatives of this type can successfully serve through
a deal without errors. This setting won’t override existing placement
settings; it will aggregate only the impressions with the given setting
already in place.

<table id="ID-00001d94__table_f5g_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_f5g_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_f5g_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_f5g_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_f5g_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_f5g_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_f5g_kd1_twb__entry__3">The id of the video
framework. IDs include:
<ul>
<li><code class="ph codeph">VPAID 1.0</code></li>
<li><code class="ph codeph">VPAID 2.0</code></li>
<li><code class="ph codeph">MRAID-1</code></li>
<li><code class="ph codeph">ORMMA</code></li>
<li><code class="ph codeph">MRAID-2</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_f5g_kd1_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_f5g_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_f5g_kd1_twb__entry__3">The name of the video
framework. Possible values:
<ul>
<li><code class="ph codeph">vpaid_1_0</code></li>
<li><code class="ph codeph">vpaid_2_0</code></li>
<li><code class="ph codeph">mraid_1</code></li>
<li><code class="ph codeph">ormma</code></li>
<li><code class="ph codeph">mraid_2</code></li>
</ul></td>
</tr>
</tbody>
</table>

  
**Example**:

``` pre
{
   "profile":{
      "video_targets":{
         "allow_unknown_playback_method":true,
         "allow_unknown_context":true,
         "allow_unknown_player_size":true,
         "contexts":[
            {
               "id":1,
               "name":"pre-roll"
            },
            {
               "id":2,
               "name":"mid-roll"
            },
            {
               "id":4,
               "name":"outstream"
            }
         ],
         "playback_methods":[
            {
               "id":2,
               "name":"auto_play_sound_off"
            },
            {
               "id":3,
               "name":"click_to_play"
            }
         ],
         "player_sizes":[
            {
               "id":1,
               "name":"small",
               "min_width":0,
               "max_width":300
            }
         ],
         "deal_creative_duration":60,
         "video_frameworks":[
            {
               "id":1,
               "name":"vpaid_1_0"
            },
            {
               "id":2,
               "name":"vpaid_2_0"
            }
         ]
      }
   }
}            
            
```

**Engagement Rate Targets**

The `engagement_rate_targets` array of objects is used to target
specific, highly performant inventory based on historic performance. You
can use targeting criteria to purchase either video inventory with a
high completion rate, or highly viewable inventory, by specifying the
desired video completion rate or viewability rate.

<table id="ID-00001d94__table_j5g_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_j5g_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_j5g_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_j5g_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_j5g_kd1_twb__entry__1"><code
class="ph codeph">engagement_rate_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_j5g_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_j5g_kd1_twb__entry__3">The targeting
criteria. Possible values:
<ul>
<li><code class="ph codeph">1: video_completion</code> - Video
Completion Rate. A prediction of how likely a video impression is to be
fully played (video completes/total impressions).</li>
<li><code class="ph codeph">2: view</code> - Predicted IAB Viewability
Rate (previously known as  "Estimated IAB Viewthrough Rate"). A
prediction of how likely a web display impression is to be viewable
(viewed/measured impressions), judged by the IAB standard.</li>
<li><code class="ph codeph">3: view_over_total</code> - Predicted IAB
Viewability Rate Over Total. A prediction of how likely a web display
impression is to be viewable (viewed/total impressions), judged by the
IAB standard.</li>
<li><code class="ph codeph">4: predicted_iab_video_view_rate</code> -
Predicted IAB Video Viewability Rate. A prediction of how likely a web
video impression is to be viewable (viewed/measured impressions), judged
by the IAB standard.</li>
<li><code
class="ph codeph">5: predicted_iab_video_view_rate_over_total</code> -
Predicted IAB Video Viewability Rate Over Total A prediction of how
likely a web video impression is to be viewable (viewed/total
impressions), judged by the IAB standard.</li>
<li><code
class="ph codeph">6: predicted_100pv50pd_video_view_rate</code> -
Predicted Video Viewability Rate (100% View, 50% Duration, Sound On). A
prediction of how likely a web video impression is to be viewable
(viewed/measured impressions), judged by this custom standard (100%
viewable, 50% duration, sound on).</li>
<li><code
class="ph codeph">7: predicted_100pv50pd_video_view_rate_over_total</code>
- Predicted Video Viewability Rate Over Total (100% View, 50% Duration,
Sound On). A prediction of how likely a web video impression is to be
viewable (viewed/total impressions), judged by this custom standard
(100% viewable, 50% duration, sound on).</li>
<li><code
class="ph codeph">8: predicted_100pv1s_display_view_rate</code> -
Predicted Viewability Rate (100% View). A prediction of how likely a web
display impression is to be viewable (viewed/measured impressions),
judged by this custom standard (100% viewable, 1 second).</li>
<li><code
class="ph codeph">9: predicted_100pv1s_display_view_rate_over_total</code>
- Predicted Viewability Rate Over Total (100% View). A prediction of how
likely a web display impression is to be viewable (viewed/total
impressions), judged by this custom standard (100% viewable, 1
second).</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_j5g_kd1_twb__entry__1"><code
class="ph codeph">engagement_rate_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_j5g_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_j5g_kd1_twb__entry__3">Possible values:
<code class="ph codeph">1</code> - <code
class="ph codeph">100</code>.</td>
</tr>
</tbody>
</table>

**Deal Targets**

Each object in the `deal_targets` array contains the following fields.


<b>Note:</b> To target or exclude deals, in
addition to setting the fields within this array as needed, you must
also:

- Set the `deal_action_include` field to `true` or `false` (depending on
  inclusion or exclusion)
- When using ALIs, set the `deals` field to `true` within the
  `supply_strategies` array of the <a
  href="line-item-service.md"
  class="xref" target="_blank">Line Item Service</a>
- Programmatic Guaranteed Buying Line Items can only have one deal
  target in the `deal_targets` array. 



<table id="ID-00001d94__table_n5g_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_n5g_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_n5g_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_n5g_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_n5g_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_n5g_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_n5g_kd1_twb__entry__3">The ID of the deal.
To retrieve the IDs of your deals, use the <a
href="deal-buyer-access-service.md"
class="xref" target="_blank">Deal Buyer Access Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_n5g_kd1_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_n5g_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_n5g_kd1_twb__entry__3"><strong>Read-only</strong>.
The name of the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_n5g_kd1_twb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_n5g_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_n5g_kd1_twb__entry__3"><strong>Read-only</strong>.
The custom code for the deal. For deals with external supply partners,
this is generally the string that you will use to identify the
deal.</td>
</tr>
</tbody>
</table>

**Example**:

``` pre
{
   "profile":{
      "deal_targets":[
         {
            "id":44,
            "name":"Deal with external supply partner",
            "code":"APN-1234-2200f"
         },
         {
            "id":45,
            "name":"Deal with UI seller",
            "code":null
         }
      ]
   }
}            
            
```

**Position Targets**

The `position_targets` object contains the following fields.

<table id="ID-00001d94__table_p5g_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_p5g_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_p5g_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_p5g_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_p5g_kd1_twb__entry__1"><code
class="ph codeph">allow_unknown</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_p5g_kd1_twb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_p5g_kd1_twb__entry__3">If true, the profile
will target placements for which the fold position is not known.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_p5g_kd1_twb__entry__1"><code
class="ph codeph">positions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_p5g_kd1_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_p5g_kd1_twb__entry__3">The fold positions to
target. Possible values: <code class="ph codeph">"above"</code> or <code
class="ph codeph">"below"</code>.</td>
</tr>
</tbody>
</table>

**  
Example**:

``` pre
{
   "profile":{
      "position_targets":{
         "allow_unknown":false,
         "positions":[
            {
               "position":"above"
            }
         ]
      }
   }
}            
            
```

**Device Model Targets**

Each object in the `device_model_targets` array contains the following
fields.



<b>Tip:</b> To retrieve the IDs of device
models registered in our system, use the <a
href="device-model-service.md"
class="xref" target="_blank">Device Model Service</a>.



<table id="ID-00001d94__table_s5g_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_s5g_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_s5g_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_s5g_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_s5g_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_s5g_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_s5g_kd1_twb__entry__3">The ID of the device
model.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_s5g_kd1_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_s5g_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_s5g_kd1_twb__entry__3"><strong>Read-only</strong>.
The name of the device model, i.e., <code
class="ph codeph">Onetab XST2</code>, <code
class="ph codeph">PAD7</code>, <code class="ph codeph">A101</code>,
etc.</td>
</tr>
</tbody>
</table>

**  
Example**:

``` pre
{
   "profile":{
      "device_model_action":"include",
      "device_model_targets":[
         {
            "id":1,
            "name":"Onetab XST2"
         },
         {
            "id":2,
            "name":"PAD7"
         },
         {
            "id":3,
            "name":"A101"
         }
      ]
   }
}            
            
```

**Device Type Targets**

The `device_type_targets` array can contain one or more of the following
strings:

- `phone`
- `tablet`
- `pc`
- `tv`
- `gameconsole`
- `stb`
- `mediaplayer`

**Example**:

``` pre
{
   "profile":{
      "device_type_action":"include",
      "device_type_targets":[
         "phone",
         "tablet"
      ]
   }
}            
            
```

**Carrier Targets**

Each object in the `carrier_targets` array contains the following
fields.



<b>Note:</b>

- To retrieve the IDs of mobile carriers registered in our system, use
  the <a
  href="carrier-service.md"
  class="xref" target="_blank">Carrier Service</a>.

- The ability to target by carrier refers to the fact that you can
  target devices currently using that carrier's network. You are not
  able to target subscribers of the network.

  For example, a Verizon iPhone using a 4G network can be targeted as
  Verizon when on 4G, but not when the user is connected to their home
  wifi.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__entry__704"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__entry__705"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__entry__706"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__704"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__705">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__706">The ID of the mobile carrier.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__704"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__705">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__706"><strong>Read-only</strong>. The name
of the mobile carrier.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__704"><code
class="ph codeph">country</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__705">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__706"><strong>Read-only</strong>. The ISO
code for the country in which the carrier operates.</td>
</tr>
</tbody>
</table>

  
**Example**:

``` pre
{
   "profile":{
      "carrier_action":"include",
      "carrier_targets":[
         {
            "id":14,
            "name":"Verizon - US",
            "country":"US"
         },
         {
            "id":26,
            "name":"Sprint - US",
            "country":"US"
         },
         {
            "id":32,
            "name":"Orange - US",
            "country":"US"
         }
      ]
   }
}            
            
```

**IP Range List Targets**

For more information about IP range lists, see the <a
href="ip-range-list-service.md"
class="xref" target="_blank">IP Range List Service</a> .

Per profile, you can target up to 10 "include" IP range lists (`include`
set to `true` in the IP range list) and no more than 1 "exclude" IP
range list (`include` set to `false` in the IP range list). The excluded
IP ranges must be a subset of the included IP ranges.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__entry__716"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__entry__717"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__entry__718"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__716"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__717">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__718">The unique ID of this IP range
list.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__716"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__717">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__718">Read-only. The name of this IP range
list.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__716"><code
class="ph codeph">include</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__717">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__718">Read-only. Whether to include or
exclude the IP ranges in the IP range list. This is defined in the IP
range list itself, not in the profile</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__716"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__717">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__entry__718">Read-only. An optional description of
the list's purpose or contents.</td>
</tr>
</tbody>
</table>

**Operating System Extended Targets**

The `operating_system_extended_targets` array specifies operating system
versions (e.g., Android 3.x, Apple iOS 6, etc.) to either include in or
exclude from your targeting. Note that this array is used to target
specific operating system versions, whereas
`operating_system_family_targets` is used to target all versions of
operating systems.



<b>Note:</b>

- **OS Family Targets and OS Extended Targets Work Together**

  The OS Family and OS Extended Targets are most effective when used
  together. For examples of how to use their combined targeting
  capabilities, see the <a
  href="profile-service.md#ID-00001d94__Use_OS_Family_Targets_and_OS_Extended_Targets_together"
  class="xref">Use OS Family Targets and OS Extended Targets together</a>
  example below.

- To use `operating_system_extended_targets`, you must set
  `use_operating_system_extended_targeting` to `true`. Once a profile is
  created using the `operating_system_extended_targets`, you will not be
  allowed to set `use_operating_system_extended_targeting` to `false` or
  populate the `operating_system_targets` fields on `PUT`.



Each object in the `operating_system_extended_targets` array contains
the following fields.

<table id="ID-00001d94__table_dvg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_dvg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_dvg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_dvg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_dvg_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_dvg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_dvg_kd1_twb__entry__3">The ID of the
operating system version. To retrieve the IDs of operating system
versions registered in our system, use the <a
href="operating-system-extended-service.md"
class="xref" target="_blank">Operating System Extended Service</a>
.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_dvg_kd1_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_dvg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_dvg_kd1_twb__entry__3"><strong>Read-only</strong>.
The name of the operating system version, e.g., <code
class="ph codeph">Android 3.x</code>, <code
class="ph codeph">Apple iOS 5</code>, etc.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_dvg_kd1_twb__entry__1"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_dvg_kd1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_dvg_kd1_twb__entry__3">Action to be taken on
<code class="ph codeph">id</code>. Possible values: <code
class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.</td>
</tr>
</tbody>
</table>

  
**Example**:

``` pre
{
   "profile":{
      "use_operating_system_extended_targeting":true,
      "operating_system_extended_targets":[
         {
            "id":2,
            "name":"Android 2.1",
            "action":"exclude"
         },
         {
            "id":3,
            "name":"Android 2.2",
            "action":"include"
         }
      ]
   }
}
            
```

**Operating System Family Targets**

The `operating_system_family_targets` array specifies the operating
systems as a whole (e.g., Android, Apple iOS, Windows 7, etc.) to either
include in or exclude from your targeting, as defined by the
`operating_system_family_action` field. Note that this field is used to
target all versions of operating systems, whereas
`operating_system_targets` is used to target specific versions of
operating systems.



<b>Note:</b> **OS Family Targets and OS
Extended Targets Work Together**

The OS Family and OS Extended Targets are most effective when used
together. For examples of how to use their combined targeting
capabilities, see the <a
href="profile-service.md#ID-00001d94__Use_OS_Family_Targets_and_OS_Extended_Targets_together"
class="xref">Use OS Family Targets and OS Extended Targets together</a>
example below.



Each object in the `operating_system_family_targets` array contains the
following fields.

<table id="ID-00001d94__table_gvg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_gvg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_gvg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_gvg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gvg_kd1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gvg_kd1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gvg_kd1_twb__entry__3">The ID of the
operating system family. To retrieve the IDs of operating system
families registered in our system, use the <a
href="operating-system-family-service.md"
class="xref" target="_blank">Operating System Family Service</a> .</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gvg_kd1_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gvg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_gvg_kd1_twb__entry__3"><strong>Read-only</strong>.
The name of the operating system family, i.e., <code
class="ph codeph">Microsoft Windows</code>, <code
class="ph codeph">Android</code>, <code
class="ph codeph">Apple iOS</code>, etc.</td>
</tr>
</tbody>
</table>

**Example**:

``` pre
{
   "profile":{
      "operating_system_family_action":"exclude",
      "operating_system_family_targets":[
         {
            "id":2,
            "name":"Android"
         },
         {
            "id":3,
            "name":"Apple iOS"
         }
      ]
   }
}            
            
```

**Key Value Targets**

The key_value_targets field defines
the combination of custom keys and values that are targeted in this
profile. The field is a parsed version of a logical expression.

You can find more information on how key value targeting works and
details on how to parse out expressions for the profile service at  <a
href="custom-key-value-targeting.md"
class="xref" target="_blank">Custom Key Value Targeting</a> .

**key_value_targets object**

<table id="ID-00001d94__table_ivg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_ivg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_ivg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_ivg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ivg_kd1_twb__entry__1"><code
class="ph codeph">kv_expression</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ivg_kd1_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_ivg_kd1_twb__entry__3">This is a wrapper
object that contains all the key/value targeting objects, including the
<code class="ph codeph">header</code> and <code
class="ph codeph">exp</code> objects.</td>
</tr>
</tbody>
</table>

<table id="ID-00001d94__table_kvg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_kvg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_kvg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_kvg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_kvg_kd1_twb__entry__1"><code
class="ph codeph">header</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_kvg_kd1_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_kvg_kd1_twb__entry__3">Versioning
information used to evaluate the expression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_kvg_kd1_twb__entry__1"><code
class="ph codeph">exp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_kvg_kd1_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_kvg_kd1_twb__entry__3">The regular
expression that defines the combination of key/values.</td>
</tr>
</tbody>
</table>

**header object**

<table id="ID-00001d94__table_nvg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_nvg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_nvg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_nvg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Value</th>
<th id="ID-00001d94__table_nvg_kd1_twb__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nvg_kd1_twb__entry__1"><code
class="ph codeph">an_version</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nvg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nvg_kd1_twb__entry__3"><code
class="ph codeph">1.0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nvg_kd1_twb__entry__4">The version of the
back-end engine evaluating the expression. Current version is <code
class="ph codeph">1.0</code>. This field is required on <code
class="ph codeph">PUT</code> and <code
class="ph codeph">POST</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nvg_kd1_twb__entry__1"><code
class="ph codeph">client_version</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nvg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nvg_kd1_twb__entry__3"><code
class="ph codeph">1.0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_nvg_kd1_twb__entry__4">The version of the
client-facing implementation of the expression (the format shown in the
example below). Current version is 1.0. This field is required on <code
class="ph codeph">PUT</code> and <code
class="ph codeph">POST</code>.</td>
</tr>
</tbody>
</table>

**exp object**

<table id="ID-00001d94__table_qvg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_qvg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_qvg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_qvg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__1"><code
class="ph codeph">typ</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__3">The operators used in
the expression. Possible values include:
<ul>
<li><code class="ph codeph">and</code></li>
<li><code class="ph codeph">or</code></li>
<li><code class="ph codeph">not</code></li>
<li><code class="ph codeph">in</code></li>
<li><code class="ph codeph">eq</code> (equal to)</li>
<li><code class="ph codeph">gt</code> (greater than)</li>
<li><code class="ph codeph">lt</code> (less than)</li>
<li><code class="ph codeph">gte</code> (greater than or equal to)</li>
<li><code class="ph codeph">lte</code> (less than or equal to)</li>
<li><code class="ph codeph">neq</code> (not equal to)</li>
</ul>
<p>The operators <code class="ph codeph">and</code>, <code
class="ph codeph">or</code>, and <code class="ph codeph">not</code> can
be used only with sub-expressions.</p>
<p>The operators <code class="ph codeph">gt</code>, <code
class="ph codeph">lt</code>, <code class="ph codeph">gte</code> and
<code class="ph codeph">lte</code> can be used only with numeric
values.</p>
<p>All operators must be lowercase.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__1"><code
class="ph codeph">sbe</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__2">exp object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__3">An object containing
the sub-expression (the elements of the expression).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__1"><code
class="ph codeph">key</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__3">The name of the
targeting key</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__1"><code
class="ph codeph">vtp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__2">type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__3">This field identifies
the data type of the expression value. The value you enter in this field
must match the field and type of the corresponding value field. The
following values are valid:
<ul>
<li><code class="ph codeph">num</code> - <em>numeric</em>; a value must
be provided in the vnm field</li>
<li><code class="ph codeph">str</code> - <em>string</em>; a value must
be provided in the vst field</li>
<li><code class="ph codeph">nma</code> - <em>numeric array</em>; a value
must be provided in the vna field</li>
<li><code class="ph codeph">sta</code> - <em>string array</em>; a value
must be provided in the vsa field</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__1"><code
class="ph codeph">vnm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__2">numeric value</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__3">The value as a 32-bit
signed float (for example, 25.3). Numbers can be up to 13 digits (with a
maximum of six digits to the right of the decimal point).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__1"><code
class="ph codeph">vst</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__3">The value as a
string.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__1"><code
class="ph codeph">vna</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__2">array of numeric
values</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__3">A set of values as an
array of floats.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__1"><code
class="ph codeph">vsa</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__2">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_qvg_kd1_twb__entry__3">A set of values as an
array of strings.</td>
</tr>
</tbody>
</table>

**Example**:

``` pre
{
   "profile":{
      "key_value_targets":{
         "kv_expression":{
            "header":{
               "an_version":"1.0",
               "client_version":"1.0"
            },
            "exp":{
               "typ":"and",
               "sbe":[
                  {
                     "exp":{
                        "typ":"eq",
                        "key":"fruit",
                        "vtp":"str",
                        "vst":"apple"
                     }
                  },
                  {
                     "exp":{
                        "typ":"eq",
                        "key":"city",
                        "vtp":"str",
                        "vst":"NY"
                     }
                  }
               ]
            }
         }
      }
   }
}            
            
```

**Inventory URL Allowlist Settings**

The fields in this object are used to set how allowlists attached to a
line item will be applied. All allowlists will be applied to RTB buying
by default. You can additionally choose to apply the allowlists to
Managed buying as well.

<table id="ID-00001d94__table_cwg_kd1_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d94__table_cwg_kd1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d94__table_cwg_kd1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d94__table_cwg_kd1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_cwg_kd1_twb__entry__1"><code
class="ph codeph">apply_to_managed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_cwg_kd1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_cwg_kd1_twb__entry__3">Designates whether
the allowlist is to be applied to managed buying. If set to <code
class="ph codeph">true</code>, any allowlists associated with the line
item will be applied to managed buying.

<b>Note:</b> Set this field to <code
class="ph codeph">true</code> if the line item associated with this
profile has its <code class="ph codeph">inventory_type</code> field set
to <code class="ph codeph">direct</code>.

<strong>Default</strong>: <code class="ph codeph">false</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_cwg_kd1_twb__entry__1"><code
class="ph codeph">apply_to_rtb</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_cwg_kd1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d94__table_cwg_kd1_twb__entry__3">Read-only. All
allowlists associated with the line item will be applied to RTB buying.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
</tbody>
</table>

**Example**:

``` pre
{
   "inventory_url_whitelist_settings":{
      "apply_to_managed":true,
      "apply_to_rtb":true
   }
}            
            
```




## Examples

**View a profile**

This is an example of a profile service. Note that for the sake of
demonstration, this profile has an unrealistic targeting strategy.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/profile?id=439&advertiser_id=8&member_id=123'

{
   "response":{
      "status":"OK",
      "count":1,
      "start_element":0,
      "num_elements":100,
      "profile":{
         "id":37291837,
         "code":null,
         "description":null,
         "country_action":"include",
         "region_action":"exclude",
         "city_action":"exclude",
         "browser_action":"exclude",
         "ads_txt_authorized_only":false,
         "use_inventory_attribute_targets":true,
         "last_modified":"2015-07-17 20:01:56",
         "daypart_timezone":null,
         "dma_action":"exclude",
         "domain_action":"exclude",
         "domain_list_action":"include",
         "inventory_action":"exclude",
         "language_action":"include",
         "segment_boolean_operator":"or",
         "min_session_imps":null,
         "session_freq_type":"platform",
         "carrier_action":"exclude",
         "supply_type_action":"exclude",
         "device_type_action":"exclude",
         "screen_size_action":"exclude",
         "device_model_action":"exclude",
         "location_target_radius":null,
         "location_target_latitude":null,
         "location_target_longitude":null,
         "querystring_action":"exclude",
         "querystring_boolean_operator":"and",
         "is_expired":false,
         "non_audited_url_action":"include",
         "daypart_bitmap":"000000000000000000000000111111111111111111111000111111111111111111111000111111111111111111111000111111111111111111111000111111111111111111111000000000000000000000000000",
         "optimization_zone_action":"exclude",
         "advertiser_id":16401,
         "publisher_id":null,
         "max_session_imps":null,
         "max_day_imps":null,
         "max_lifetime_imps":100,
         "max_page_imps":null,
         "min_minutes_per_imp":30,
         "venue_action":"exclude",
         "operating_system_action":"exclude",
         "require_cookie_for_freq_cap":true,
         "trust":"seller",
         "allow_unaudited":false,
         "is_template":false,
         "created_on":"2015-07-17 20:01:56",
         "operating_system_family_action":"exclude",
         "use_operating_system_extended_targeting":true,
         "mobile_app_instance_action_include":false,
         "mobile_app_instance_list_action_include":true,
         "user_group_targets":{
            "include_cookieless_users":false,
            "groups":[
               {
                  "low":0,
                  "high":49
               }
            ]
         },
         "country_targets":[
            {
               "id":233,
               "name":"United States",
               "code":"US"
            }
         ],
         "region_targets":[
            {
               "id":3950,
               "name":"New York",
               "code":"NY",
               "country_name":"United States",
               "country_code":"US"
            }
         ],
         "city_targets":null,
         "inv_class_targets":null,
         "inventory_attribute_targets":[
            {
               "id":2,
               "name":"Political",
               "deleted":false
            },
            {
               "id":4,
               "name":"Social media",
               "deleted":false
            },
            {
               "id":6,
               "name":"Photo and video sharing",
               "deleted":false
            },
            {
               "id":8,
               "name":"Forums (moderated)",
               "deleted":false
            },
            {
               "id":10,
               "name":"Forums (unmoderated)",
               "deleted":false
            },
            {
               "id":12,
               "name":"Incentivized clicks",
               "deleted":false
            },
            {
               "id":14,
               "name":"Non-english languages",
               "deleted":false
            },
            {
               "id":16,
               "name":"Streaming media",
               "deleted":false
            },
            {
               "id":17,
               "name":"Toolbars, plugins, or extensions",
               "deleted":false
            },
            {
               "id":29,
               "name":"Contextual Nudity",
               "deleted":false
            }
         ],
         "age_targets":{
            "allow_unknown":false,
            "ages":[
               {
                  "low":18,
                  "high":24
               },
               {
                  "low":25,
                  "high":34
               },
               {
                  "low":35,
                  "high":44
               }
            ]
         },
         "daypart_targets":[
            {
               "day":"monday",
               "start_hour":0,
               "end_hour":20
            },
            {
               "day":"tuesday",
               "start_hour":0,
               "end_hour":20
            },
            {
               "day":"wednesday",
               "start_hour":0,
               "end_hour":20
            },
            {
               "day":"thursday",
               "start_hour":0,
               "end_hour":20
            },
            {
               "day":"friday",
               "start_hour":0,
               "end_hour":20
            }
         ],
         "browser_targets":[
            {
               "id":4,
               "name":"Internet Explorer (other versions)",
               "deleted":false
            },
            {
               "id":11,
               "name":"Opera (all versions)",
               "deleted":false
            }
         ],
         "dma_targets":null,
         "domain_targets":[
            {
               "profile_id":37291837,
               "domain":"test.com"
            }
         ],
         "domain_list_targets":[
            {
               "id":3905,
               "name":"Test Domain List 1",
               "description":"",
               "type":"white",
               "deleted":false
            }
         ],
         "language_targets":[
            {
               "id":1,
               "name":"English",
               "code":"EN",
               "deleted":false
            }
         ],
         "size_targets":null,
         "zip_targets":null,
         "member_targets":[
            {
               "id":1185,
               "action":"include",
               "third_party_auditor_id":null,
               "billing_name":"AppNexus Demo"
            }
         ],
         "video_targets":null,
         "segment_group_targets":[
            {
               "boolean_operator":"and",
               "segments":[
                  {
                     "id":465381,
                     "action":"include",
                     "start_minutes":null,
                     "expire_minutes":null,
                     "other_less":null,
                     "other_greater":null,
                     "other_equals":null,
                     "code":null,
                     "name":null,
                     "deleted":false,
                     "other_in_list":null
                  },
                  {
                     "id":465382,
                     "action":"include",
                     "start_minutes":null,
                     "expire_minutes":null,
                     "other_less":null,
                     "other_greater":null,
                     "other_equals":null,
                     "code":null,
                     "name":null,
                     "deleted":false,
                     "other_in_list":null
                  }
               ]
            },
            {
               "boolean_operator":"and",
               "segments":[
                  {
                     "id":514839,
                     "action":"exclude",
                     "start_minutes":null,
                     "expire_minutes":null,
                     "other_less":null,
                     "other_greater":null,
                     "other_equals":null,
                     "code":null,
                     "name":null,
                     "deleted":false,
                     "other_in_list":null
                  },
                  {
                     "id":523129,
                     "action":"include",
                     "start_minutes":null,
                     "expire_minutes":null,
                     "other_less":null,
                     "other_greater":null,
                     "other_equals":null,
                     "code":null,
                     "name":null,
                     "deleted":false,
                     "other_in_list":null
                  }
               ]
            }
         ],
         "carrier_targets":null,
         "supply_type_targets":null,
         "device_type_targets":null,
         "screen_size_targets":null,
         "device_model_targets":null,
         "querystring_targets":null,
         "gender_targets":null,
         "intended_audience_targets":[
            "general",
            "children",
            "young_adult"
         ],
         "inventory_network_resold_targets":null,
         "operating_system_targets":null,
         "operating_system_family_targets":[
            {
               "id":6,
               "name":"BlackBerry OS"
            },
            {
               "id":8,
               "name":"Linux"
            }
         ],
         "position_targets":{
            "allow_unknown":true,
            "positions":null
         },
         "site_targets":null,
         "venue_targets":null,
         "operating_system_extended_targets":null,
         "mobile_app_instance_targets":null,
         "mobile_app_instance_list_targets":[
            {
               "id":3,
               "name":"Mopub iOS Apps 1-100",
               "description":"",
               "deleted":false
            }
         ],
         "optimization_zone_targets":null,
         "content_category_targets":{
            "allow_unknown":false,
            "content_categories":[
               {
                  "id":7,
                  "action":"exclude",
                  "name":"Beauty and Personal Care",
                  "is_system":true,
                  "deleted":false
               },
               {
                  "id":10,
                  "action":"include",
                  "name":"Arts and Entertainment",
                  "is_system":true,
                  "deleted":false
               },
               {
                  "id":20344,
                  "action":"exclude",
                  "name":"",
                  "is_system":false,
                  "deleted":false
               },
               {
                  "id":22224,
                  "action":"include",
                  "name":"",
                  "is_system":false,
                  "deleted":false
               }
            ]
         },
         "deal_targets":null,
         "placement_targets":null,
         "platform_content_category_targets":null,
         "platform_placement_targets":null,
         "platform_publisher_targets":[
            {
               "id":500070,
               "action":"exclude",
               "name":"Mediaset",
               "deleted":false
            }
         ],
         "publisher_targets":null,
         "segment_targets":null,
         "exelate_targets":null,
         "ip_range_list_targets":null
      }
   }
}
```

**Target a range of query string values**

Scenario: Two auto publishers told you to expect "car year" data in the
query strings of their placements. The first passes the year with the
"car_year" parameter, and the second passes the year with the "car_YYYY"
parameter. In order to target this information in your campaign, you
added the "car_year" parameter to segment 25 and the "car_YYYY"
parameter to segment 26. Now you want to update the campaign's profile
to target placements that include either parameter when the parameter
passes any year between "car_year=2009" and "car_year=2012", so you
create the following JSON and make a PUT call to update the profile.

``` pre
$ cat profile_update

{
   "profile":{
      "segment_group_targets":[
         {
            "boolean_operator":"or",
            "segments":[
               {
                  "id":25,
                  "code":null,
                  "action":"include",
                  "start_minutes":0,
                  "expire_minutes":-1,
                  "other_less":2012,
                  "other_greater":2009
               },
               {
                  "id":26,
                  "code":null,
                  "action":"include",
                  "start_minutes":0,
                  "expire_minutes":-1,
                  "other_less":2012,
                  "other_greater":2009
               }
            ]
         }
      ]
   }
}
```

``` pre
$ curl -b cookies -c cookies -X PUT -d @profile_update 'https://api.appnexus.com/profile?id=9&advertiser_id=210&member_id=123'

{
   "response":{
      "status":"OK",
      "count":1,
      "id":9
   }
}
```

**Target a list of query string values**

Scenario: An auto publisher told you to expect any of the following
key-values in the query strings of their placements: "car_make=ford",
"car_make=honda", or "car_make=toyota". In order to target such
information, you added the parameter and values to segment 12. Now you
want to update the campaign's profile to target those values, so you
create the following JSON and make a `PUT` call to update the profile.

``` pre
$ cat profile_update

{
   "profile":{
      "segment_group_targets":[
         {
            "segments":[
               {
                  "id":12,
                  "code":null,
                  "action":"include",
                  "start_minutes":0,
                  "expire_minutes":-1,
                  "other_in_list":[
                     "ford",
                     "honda",
                     "toyota"
                  ]
               }
            ]
         }
      ]
   }
}
```

``` pre
$ curl -b cookies -c cookies -X PUT -d @profile_update 'https://api..com/profile?id=10&advertiser_id=210&member_id=123'

{
   "response":{
      "status":"OK",
      "count":1,
      "id":10
   }
}
```

**Target an exact query string value**

Scenario: An auto publisher told you to expect the following key-values
in the query strings of their placements: `car_color=red`,
`car_color=blue`, or `car_color=black`. In order to target such
information, you added the parameter and values to segment 15. Now you
want to update the campaign's profile to target a specific query string
value, `black`, so you create the following JSON and make a `PUT` call
to update the profile.

``` pre
$ cat profile_update

{
   "profile":{
      "segment_group_targets":[
         {
            "segments":[
               {
                  "id":15,
                  "code":null,
                  "action":"include",
                  "start_minutes":0,
                  "expire_minutes":-1,
                  "other_equals":"black"
               }
            ]
         }
      ]
   }
}
```

``` pre
$ curl -b cookies -c cookies -X PUT -d @profile_update 'https://api..com/profile?id=10&advertiser_id=210&member_id=123'

{
   "response":{
      "status":"OK",
      "count":1,
      "id":10
   }
}
```

**Target specific countries**

Scenario: You want to target your profile to the United States and
Canada. This requires setting `country_action` to `include` and
`country_targets` to `US` and `CA`, so you create the following JSON and
make a `PUT` call to update the profile.

``` pre
$ cat profile_update

{
   "profile":{
      "country_action":"include",
      "country_targets":[
         {
            "id":233
         },
         {
            "id":39
         }
      ]
   }
}
```

``` pre
$ curl -b cookies -c cookies -X PUT -d @profile_update 'https://api..com/profile?id=10&advertiser_id=210&member_id=123'

{
   "response":{
      "status":"OK",
      "count":1,
      "id":10
   }
}
```

**Target a specific state but exclude a DMA**

Scenario: You want to target your profile to the state of New York,
excluding the New York City area. This requires setting `region_action`
to `include`, `region_targets` to `US:NY`, `dma_action` to `exclude`,
and `dma_targets` to `501`, which is the DMA code for New York City. You
therefore create the following JSON and make a `PUT` call to update the
profile.

``` pre
$ cat profile_update

{
   "profile":{
      "region_action":"include",
      "region_targets":[
         {
            "id":1
         }
      ],
      "dma_action":"exclude",
      "dma_targets":[
         {
            "dma":501
         }
      ]
   }
}
```

``` pre
$ curl -b cookies -c cookies -X PUT -d @profile_update 'https://api..com/profile?id=10&advertiser_id=210&member_id=123'

{
   "response":{
      "status":"OK",
      "count":1,
      "id":10
   }
}
```

**Target a deal**



Scenario: You have negotiated a deal with a seller that grants you
access to inventory that is not available to other buyers (i.e., a
private auction). To take advantage of this deal, you need to use the
Deal Buyer Access Service to find the deal ID and then update the
`deal_targets` array of your profile to target that ID.

1.  To find the ID for your deal, you make a GET call to the <a
    href="deal-buyer-access-service.md"
    class="xref" target="_blank">Deal Buyer Access Service</a> and
    identify the right deal. Alternately, if you know the member ID of
    the seller, you can pass it in the query string to retrieve only
    deals you have with that seller, as shown below.

    ``` pre
    $ curl -b cookies -c cookies 'https://api.appnexus.com/deal-buyer-access?seller_member_id=814'
     
    {
       "response":{
          "status":"OK",
          "count":1,
          "start_element":0,
          "num_elements":100,
          "deals":[
             {
                "id":65,
                "code":null,
                "name":"Private deal for buyer 1085 with floor of 2.5",
                "description":null,
                "active":true,
                "seller_member_id":814,
                "start_date":"2013-12-01 00:00:00",
                "end_date":"2013-12-31 23:59:59",
                "profile_id":null,
                "floor_price":2.5,
                "currency":"USD",
                "use_deal_floor":true,
                "last_modified":"2013-12-04 22:37:49",
                "buyer":{
                   "id":1085,
                   "bidder_id":2
                },
                "type":{
                   "id":2,
                   "name":"Private Auction"
                },
                "brands":[
                   {
                      "id":1
                   }
                ]
             }
          ]
       }
    }
    ```

2.  You then create the JSON file with `deal_targets` set to the ID of
    the deal.

    ``` pre
    $ cat profile_update

    {
       "profile":{
          "deal_targets":[
             {
                "id":65
             }
          ]
       }
    }
    ```

3.  Finally, you make a PUT call to update the profile.

    ``` pre
    $ curl -b cookies -c cookies -X PUT -d @profile_update 'https://api.appnexus.com/profile?id=22&advertiser_id=210&member_id=123'

    {
       "response":{
          "status":"OK",
          "count":1,
          "id":22
       }
    }
    ```



**Use OS Family Targets and OS Extended Targets together**

The OS extended and OS family targets work in tandem to allow different
targeting scenarios for specific operating system families. This
functionality is best represented by usage examples. This section
contains the following examples (scroll down or search to view them).

- Target iOS 7.0 devices; all other OS families and other iOS versions
  will not serve
- Target all iOS devices regardless of version; all other OS families
  will not serve
- Target all OSes that are not Unknown, Linux, or Symbian
- Target all Android devices, along with iOS 7.0.
- Target all Android and all iOS and all Windows Mobile
- Target Mac OS 10.8 (Mountain Lion) and MS Windows 8.0
- Target Mac OS X 10.8 (Mountain Lion) and all Windows Desktop except XP
  and 2000
- Target all iOS operating systems except 2.0 and 2.1
- Invalid configuration: Cannot include an OS family and exclude its
  members
- Invalid configuration: Cannot include and exclude members of the same
  OS family
- Invalid configuration: Cannot include members of an excluded OS family

**Target iOS 7.0 devices; all other OS families and other iOS versions
will not serve**

``` pre
{
   "profile":{
      "operating_system_family_action":"include",
      "operating_system_family_targets":{
         
      },
      "operating_system_extended_targets":{
         "id":80,
         "name":"iOS 7.0",
         "action":"include"
      }
   }
}            
            
```

**Target all iOS devices regardless of version; all other OS families
will not serve**

``` pre
{
   "profile":{
      "operating_system_family_action":"include",
      "operating_system_family_targets":{
         "id":3,
         "name":"Apple iOS"
      }
   },
   "operating_system_extended_targets":{
      
   }
}            
            
```

**Target all OS that are not Unknown, Linux, or Symbian**

In other words, serve on any Android, iOS, MacOS, Windows, Blackberry,
or Windows Mobile device.

``` pre
{
   "profile":{
      "operating_system_family_action":"exclude",
      "operating_system_family_targets":[
         {
            "id":0,
            "name":"Unknown"
         },
         {
            "id":8,
            "name":"Linux"
         },
         {
            "id":9,
            "name":"Symbian OS"
         }
      ]
   }
}            
            
```

**Target all Android devices, along with iOS 7.0.**

All other iOS versions will not serve, and all non-Android devices will
not serve.

``` pre
{
   "profile":{
      "operating_system_family_action":"include",
      "operating_system_family_targets":{
         "id":2,
         "name":"Android"
      }
   },
   "operating_system_extended_targets":[
      {
         "id":80,
         "name":"iOS 7.0",
         "action":"include"
      }
   ]
}            
            
```

**Target all Android and all iOS and all Windows Mobile**

``` pre
{
   "profile":{
      "operating_system_family_action":"include",
      "operating_system_family_targets":[
         {
            "id":2,
            "name":"Android"
         },
         {
            "id":3,
            "name":"Apple iOS"
         },
         {
            "id":7,
            "name":"Microsoft Mobile"
         }
      ],
      "operating_system_extended_targets":{
         
      }
   }
}            
            
```

**Target Mac OS 10.8 (Mountain Lion) and MS Windows 8.0**

This example combines OS Extended Targets from different OS families.

``` pre
{
   "profile":{
      "operating_system_family_action":"include",
      "operating_system_family_targets":{
         
      },
      "operating_system_extended_targets":[
         {
            "id":81,
            "name":"10.8 Mountain Lion",
            "action":"include"
         },
         {
            "id":93,
            "name":"Windows 8",
            "action":"include"
         }
      ]
   }
}            
            
```

**Target Mac OS X 10.8 (Mountain Lion) and all Windows Desktop except XP
and 2000**

``` pre
{
   "profile":{
      "operating_system_family_action":"include",
      "operating_system_family_targets":{
         
      },
      "operating_system_extended_targets":[
         {
            "id":80,
            "name":"10.8 Mountain Lion",
            "action":"include"
         },
         {
            "id":89,
            "name":"Windows 2000",
            "action":"exclude"
         },
         {
            "id":90,
            "name":"Windows XP",
            "action":"exclude"
         }
      ]
   }
}            
            
```

**Target all iOS operating systems except 2.0 and 2.1**

``` pre
{
   "profile":{
      "operating_system_family_action":"include",
      "operating_system_family_targets":[
         {
            "id":3,
            "name":"Apple iOS"
         }
      ],
      "operating_system_extended_targets":[
         {
            "id":47,
            "action":"include",
            "name":"iOS 2.0"
         },
         {
            "id":48,
            "action":"include",
            "name":"iOS 2.1"
         }
      ]
   }
}            
            
```

The following profile targeting configurations are invalid and may
result in unexpected behavior.

**Invalid configuration: Cannot include an OS family and exclude its
members**

``` pre
{
   "profile":{
      "operating_system_family_action":"include",
      "operating_system_family_targets":[
         {
            "id":3,
            "name":"Apple iOS"
         }
      ],
      "operating_system_extended_targets":[
         {
            "id":47,
            "action":"include",
            "name":"iOS 2.0"
         },
         {
            "id":48,
            "action":"include",
            "name":"iOS 2.1"
         }
      ]
   }
}            
            
```

**Invalid configuration: Cannot include and exclude members of the same
OS family**

``` pre
{
   "profile":{
      "operating_system_family_action":"include",
      "operating_system_family_targets":{
         
      },
      "operating_system_extended_targets":[
         {
            "id":47,
            "name":"iOS 2.0",
            "action":"include"
         },
         {
            "id":48,
            "name":"iOS 2.1",
            "action":"exclude"
         }
      ]
   }
}            
            
```

**Invalid configuration: Cannot include members of an excluded OS
family**

``` pre
{
   "profile":{
      "operating_system_family_action":"include",
      "operating_system_family_targets":[
         {
            "id":3,
            "name":"Apple iOS"
         }
      ],
      "operating_system_extended_targets":[
         {
            "id":47,
            "action":"include",
            "name":"iOS 2.0"
         },
         {
            "id":48,
            "action":"include",
            "name":"iOS 2.1"
         }
      ]
   }
}            
            
```

**Target Ad Pod Positions**

**Target Specific Ad Slot Positions (Last, First, Third)**

``` pre
{
   "profile":{
      "ad_slot_intro_bumper_action_include":false,
      "ad_slot_outro_bumper_action_include":false,
      "ad_slot_position_action_include":true,
      "ad_slot_position_targets":[
         -1,
         0,
         2
      ]
   }
}            
            
```

**Target Only Bumper Positions (Intro and Outro)**

``` pre
{
   "profile":{
      "ad_slot_position_action_include":true,
      "ad_slot_position_targets":[],
      "ad_slot_intro_bumper_action_include":true,
      "ad_slot_outro_bumper_action_include":true
   }
}            
            
```

**Target Any Ad Pod Slot**

``` pre
{
   "profile":{
      "ad_slot_position_action_include":false,
      "ad_slot_position_targets":[],
      "ad_slot_intro_bumper_action_include":false,
      "ad_slot_outro_bumper_action_include":false
   }
}            
            
```

**Exclude All Ad Pod Slots and Bumpers**

This behavior is not something you will want to replicate; you will not
serve on anything.

``` pre
{
   "profile":{
      "ad_slot_position_action_include":true,
      "ad_slot_position_targets":[],
      "ad_slot_intro_bumper_action_include":false,
      "ad_slot_outro_bumper_action_include":false
   }
}            
            
```

**Target Only the Intro Bumper**

``` pre
{
   "profile":{
      "ad_slot_position_action_include":true,
      "ad_slot_position_targets":[],
      "ad_slot_intro_bumper_action_include":true,
      "ad_slot_outro_bumper_action_include":false
   }
}            
            
```

The following profile targeting configurations are invalid and may
result in unexpected behavior.

**Invalid configuration: Cannot target all ad slots and all bumper
positions**

``` pre
{
   "profile":{
      "ad_slot_position_action_include":false,
      "ad_slot_position_targets":[],
      "ad_slot_intro_bumper_action_include":true,
      "ad_slot_outro_bumper_action_include":true
   }
}            
            
```

**Target a Programmatic Guaranteed deal**



Scenario: You have negotiated a Programmatic Guaranteed deal (PG deal)
with a seller and would like to target this deal with a PG buying line
item. You'll need to create a PG deal profile using the PG deal ID. You
then must associate this profile with a PG buying line item to target
the deal (see the Create a PG buying line item example in <a
href="line-item-service---ali.md"
class="xref" target="_blank">Line Item ALI Service</a>). 

1.  Create a PG deal profile JSON that includes the deal target ID
    (<b>Note:</b> For PG buying line items, you can only have one deal target
    in the `deal_targets` array):

    ``` pre
    $ cat pg_deal_profile

    {
       "profile":{
          "deal_targets":[
             {
                "id":456
             }
          ],
          "allow_unaudited":true
       }
    }
    ```

2.  Make a POST request to the
    `https://api.``appnexus``.com/profile`
    endpoint with this PG deal profile JSON and an appropriate
    `advertiser_id`.

    ``` pre
    $ curl -b cookies -c cookies -X POST -d @pg_deal_profile 'https://api.appnexus.com/profile?advertiser_id=123'
     
    {
       "response":{
          "status":"OK",
          "count":1,
          "id":123456,
          "start_element":0,
          "num_elements":100,
          "profile":{
             "id":123456,
             "code":null,
             "description":null,
             "country_action":"exclude",
             "region_action":"exclude",
             "city_action":"exclude",
             "browser_action":"exclude",
             "use_inventory_attribute_targets":false,
             "last_modified":"2019-08-07 19:43:12",
             "daypart_timezone":null,
             "dma_action":"exclude",
             "domain_action":"exclude",
             "domain_list_action":"exclude",
             "inventory_action":"exclude",
             "language_action":"exclude",
             "segment_boolean_operator":"and",
             "min_session_imps":null,
             "session_freq_type":"platform",
             "carrier_action":"exclude",
             "supply_type_action":"exclude",
             "device_type_action":"exclude",
             "screen_size_action":"exclude",
             "device_model_action":"exclude",
             "location_target_radius":null,
             "location_target_latitude":null,
             "location_target_longitude":null,
             "querystring_action":"exclude",
             "querystring_boolean_operator":"and",
             "is_expired":false,
             "non_audited_url_action":"include",
             "daypart_bitmap":null,
             "is_archived":false,
             "archived_on":null,
             "advertiser_id":123,
             "publisher_id":null,
             "max_session_imps":null,
             "max_day_imps":null,
             "max_lifetime_imps":null,
             "max_page_imps":null,
             "min_minutes_per_imp":null,
             "venue_action":"exclude",
             "operating_system_action":"exclude",
             "require_cookie_for_freq_cap":true,
             "trust":"seller",
             "allow_unaudited":true,
             "is_template":false,
             "created_on":"2019-08-07 19:43:12",
             "operating_system_family_action":"exclude",
             "use_operating_system_extended_targeting":true,
             "mobile_app_instance_action_include":false,
             "mobile_app_instance_list_action_include":false,
             "inventory_prefer_direct":false,
             "deal_action_include":true,
             "exclude_unknown_seller_member_group":false,
             "ad_slot_position_action_include":false,
             "ad_slot_intro_bumper_action_include":true,
             "ad_slot_outro_bumper_action_include":true,
             "graph_id":null,
             "media_subtype_action_include":false,
             "ads_txt_authorized_only":false,
             "inventory_url_whitelist_settings":{
                "apply_to_rtb":true,
                "apply_to_managed":true
             },
             "user_group_targets":null,
             "country_targets":null,
             "region_targets":null,
             "city_targets":null,
             "inventory_attribute_targets":null,
             "placement_type_targets":null,
             "age_targets":null,
             "daypart_targets":null,
             "browser_targets":null,
             "dma_targets":null,
             "domain_targets":null,
             "domain_list_targets":null,
             "language_targets":null,
             "size_targets":null,
             "zip_targets":null,
             "member_targets":null,
             "video_targets":{
                "allow_unknown_playback_method":false,
                "allow_unknown_context":false,
                "allow_unknown_player_size":false
             },
             "engagement_rate_targets":null,
             "segment_group_targets":null,
             "carrier_targets":null,
             "supply_type_targets":null,
             "device_type_targets":null,
             "screen_size_targets":null,
             "device_model_targets":null,
             "querystring_targets":null,
             "gender_targets":null,
             "intended_audience_targets":null,
             "inventory_network_resold_targets":null,
             "operating_system_targets":null,
             "operating_system_family_targets":null,
             "position_targets":null,
             "site_targets":null,
             "venue_targets":null,
             "operating_system_extended_targets":null,
             "postal_code_targets":null,
             "seller_member_group_targets":null,
             "cross_device":null,
             "key_value_targets":null,
             "media_subtype_targets":null,
             "content_category_targets":null,
             "deal_targets":[
                {
                   "id":456,
                   "name":"PG Deal 123",
                   "code":"PGD_123",
                   "deleted":false
                }
             ],
             "placement_targets":null,
             "platform_content_category_targets":null,
             "platform_placement_targets":null,
             "platform_publisher_targets":null,
             "publisher_targets":null,
             "ip_range_list_targets":null,
             "mobile_app_instance_targets":null,
             "mobile_app_instance_list_targets":null,
             "ad_slot_position_targets":null,
             "inventory_url_list_targets":null,
             "max_hour_imps":null,
             "max_week_imps":null,
             "max_month_imps":null
          },
          "dbg_info":{
             "warnings":[
                
             ],
             "version":"1.18.1247",
             "output_term":"profile"
          }
       }
    }
    ```

3.  Create a PG buying line item and associate it with the ID of the
    newly created PG deal profile (see the Create a PG buying line item
    example in <a
    href="line-item-service---ali.md"
    class="xref" target="_blank">Line Item ALI Service</a>). 

    **Target a Specific Political District**

    ``` pre
    {
       "profile":{
          "political_district_targets":[
             {
                "id":"139897"
             }
          ]
       }
    }                        
                            
    ```






## Related Topics



- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="political-district-service.md"
  class="xref" target="_blank">Political District Service</a>








