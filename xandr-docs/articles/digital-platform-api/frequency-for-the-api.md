---
Title : Frequency for the API
Description : When a user is shown an ad multiple times over a short period, that user
can begin to ignore the ad, reaching the point where they don't even see
it anymore. Or they can see it often enough that they're simply annoyed
---


# Frequency for the API



When a user is shown an ad multiple times over a short period, that user
can begin to ignore the ad, reaching the point where they don't even see
it anymore. Or they can see it often enough that they're simply annoyed
by it. This is referred to as overexposure or ad burnout. Frequency and
recency targeting helps you prevent overexposure by limiting how often a
user is shown a creative. For example, you might decide that after a
user has seen the same creative more than three times in a single day,
it's not worth showing that creative to that user again. Or you might
price a campaign higher if the user has seen it fewer than three times
in a day and price it lower if the user has seen it more than three
times. This page has information about:

- The frequency and recency targeting supported by our API through the
  <a href="profile-service.html" class="xref">Profile Service</a>
- Example of how to use this type of targeting
- How and where you can apply frequency and recency targeting



## Supported Targeting

Xandr supports several levels of frequency
targeting through the API. This targeting is specified on the
<a href="profile-service.html" class="xref">Profile Service</a>, which
can be set at the advertiser, insertion order line item, campaign, and
creative level. The API frequency settings follow the format shown here:

<img src="xandr-api/images/166637066.png" class="image" width="390"
height="193" />

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000030bd__entry__1"
class="entry colsep-1 rowsep-1">Setting</th>
<th id="ID-000030bd__entry__2" class="entry colsep-1 rowsep-1">Profile
Field</th>
<th id="ID-000030bd__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000030bd__entry__1">x
imps per day</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__2"><code
class="ph codeph">max_day_imps</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000030bd__entry__3">The
maximum number of times a creative can be served to a user within one
day.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-000030bd__entry__1">x
imps per hour</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__2"><code
class="ph codeph">max_hour_imps</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000030bd__entry__3">The
maximum number of times a creative can be served to a user within a
one-hour period.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000030bd__entry__1">x
imps per week</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__2"><code
class="ph codeph">max_week_imps</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000030bd__entry__3">The
maximum number of times a creative can be served within one week,
beginning on Sunday.
<p>Regardless of when a creative is first served to the user, every
Sunday the impression count for the user will be reset to zero and the
frequency values will begin recounting. </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-000030bd__entry__1">x
imps per month</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__2"><code
class="ph codeph">max_month_imps</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000030bd__entry__3">The
maximum number of times a creative can be served within one calendar
month.
<p>Regardless of how far into a month a creative is first served to the
user, the impression count for the user will be reset on the first day
of the following month and the frequency count will start
over. </p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000030bd__entry__1">x
imps per lifetime</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__2"><code
class="ph codeph">max_lifetime_imps</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000030bd__entry__3">The
maximum number of times a creative can be served to the user.</td>
</tr>
</tbody>
</table>

The API recency settings follow the format shown here:

<img src="xandr-api/images/166637067.png" class="image" width="358"
height="167" />

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000030bd__entry__19"
class="entry colsep-1 rowsep-1">Setting</th>
<th id="ID-000030bd__entry__20" class="entry colsep-1 rowsep-1">Profile
Field</th>
<th id="ID-000030bd__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000030bd__entry__19">1
imp per x minutes/hours/days/weeks</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__20"><code
class="ph codeph">min_minutes_per_imp</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000030bd__entry__21">A
single creative will not be shown to an individual user more than once
every x minutes. (Value is in minutes, so 1 imp every 2 hours would be a
value of 120.)</td>
</tr>
</tbody>
</table>

Some additional settings related to frequency capping include the
following:

<img src="xandr-api/images/166637068.png" class="image" width="249"
height="66" />

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000030bd__entry__25"
class="entry colsep-1 rowsep-1">Setting</th>
<th id="ID-000030bd__entry__26" class="entry colsep-1 rowsep-1">Profile
Field</th>
<th id="ID-000030bd__entry__27"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__25">Serve only 1 imp per page</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__26"><code
class="ph codeph">max_page_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__27">Creatives from a single advertiser will
not be shown on a given page load in more than the specified number of
placements. (If this value is set in , the value
will be null [off] or 1 [on].)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__25">Include users without cookies</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__26"><code
class="ph codeph">require_cookie_for_freq_cap</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000030bd__entry__27">A
value of  <code class="ph codeph">false</code>  indicates you will serve
to non-cookie users and ignore the frequency cap settings for those
users. There is no way to identify these users, so if you set this field
to <code class="ph codeph">false</code> your frequency and recency caps
will not apply for any user without cookies.
<p>Setting this option to <code class="ph codeph">true</code> indicates
a creative will serve only to users who use cookies.  This setting could
limit your delivery.</p></td>
</tr>
</tbody>
</table>

In addition to the preceding fields, there are three more fields that
can be set only through the API:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000030bd__entry__34"
class="entry colsep-1 rowsep-1">Setting</th>
<th id="ID-000030bd__entry__35" class="entry colsep-1 rowsep-1">Profile
Field</th>
<th id="ID-000030bd__entry__36"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__34">Minimum imps per session</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__35"><code
class="ph codeph">min_session_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__36">Creatives from a single campaign will
be shown to a given user at least X times per session.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__34">Maximum imps per session </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__35"><code
class="ph codeph">max_session_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__36">Creatives from a single campaign will
not be shown to a given user more than X times per session.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__34">Advanced Frequency Management</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__35"><code
class="ph codeph">advanced_frequency_management</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030bd__entry__36">Indicates whether you want to use the
Advanced Frequency Management feature (AFM). If this field is set to
<code class="ph codeph">true</code>, AFM will be enabled for your line
item. If this field is set to <code class="ph codeph">false</code>, AFM
will be disabled.
<p>Advanced Frequency Management is an <strong>open beta</strong>
feature. This feature is designed to have a UI-enablement option upon
full release.</p></td>
</tr>
</tbody>
</table>





## Examples

Show a creative no more than 50 times over the lifetime of the campaign,
3 times per session, and 10 times per day:

- `max_lifetime_imps` = 50
- `max_session_imps` = 3
- `max_day_imps` = 10

Show a campaign up to 8 times per day but no more than once per hour:

- `max_day_imps` = 8
- `min_minutes_per_imp` = 60

Show a campaign no more than 3 times per hour:

- `min_minutes_per_imp` = 20 minutes





## Where and How

Frequency can be applied through profiles to <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">advertisers</a>, <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">insertion orders</a>, <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">line items</a>, <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">campaigns</a>, and <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
class="xref" target="_blank">creatives</a>, as well as to <a
href="https://docs.xandr.com/bundle/xandr-api/page/payment-rule-service.html"
class="xref" target="_blank">payment rules</a> for publishers. The most
restrictive setting always takes precedence. For Adserver clients:
Frequency can also be used for forecasting. Set the forecasting on the
<a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">profile</a>, then reference that profile in
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/inventory-forecasting-services.html"
class="xref" target="_blank">Inventory Forecasting Services</a>.

When you set a frequency or recency cap for an object at one level, its
child objects will inherit that cap, but it will be inherited by all
child objects as a group. For example: If you set a frequency cap of ten
impressions per day at the advertiser level and have ten line items
attached to that advertiser, one line item could potentially use all 10
of the allotted impressions on one user. If you would like to spread the
ten impressions out more evenly among your line items, you should also
set a frequency cap at the line item level.

Another important point to remember is that frequency and recency
settings will be applied according to the strictest settings available.
For example, imagine that you have two creatives, `A` and `B`,
associated with the same line item. The frequency settings for
creative `A` specify that it can only serve three times per day (where a
day is defined as a calendar day). Creative `B` is set to only serve
once per day. The line item settings, however, specify a frequency cap
of two impressions per day.

Since the strictest settings are applied, the line item frequency
settings override those set at the creative level. Therefore, even
though creative `A`'s settings dictate that it can serve three times per
day, it will never serve more than the two times per day specified at
the line item level. If creative `B` serves its single allowed
impression to the user before `A` can serve, `A` will only be allowed to
serve once to that user.





## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
  class="xref" target="_blank">Advertiser Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
  class="xref" target="_blank">Insertion Order Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
  class="xref" target="_blank">Line Item Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
  class="xref" target="_blank">Creative Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/payment-rule-service.html"
  class="xref" target="_blank">Payment Rule Service</a>
- <a href="profile-service.html" class="xref">Profile Service</a>






