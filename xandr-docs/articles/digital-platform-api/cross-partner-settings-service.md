---
Title : Cross-Partner Settings Service
Description : The Cross-Partner Settings Service allows for the retrieval and editing
of the the member-wide settings for a member in PSP. They contain global
---


# Cross-Partner Settings Service



The Cross-Partner Settings Service allows for the retrieval and editing
of the the member-wide settings for a member in PSP. They contain global
bidder timeouts, price granularity details for bids, and currency
settings. Cross Partner Settings are <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/add-or-edit-psp-global-settings.html"
class="xref" target="_blank">Global Settings in the UI</a>.



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="cross-partner-settings-service__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="cross-partner-settings-service__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="cross-partner-settings-service__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__2"><a
href="https://api.appnexus.com/prebid/cross-partner-settings?member_id=9385"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/cross-partner-settings?member_id=9385</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__3">Get all the
cross-partner settings for the caller's member.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__2"><a
href="https://api.appnexus.com/prebid/cross-partner-settings"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/cross-partner-settings</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__3">Create a new
cross-partner setting. Pass the cross-partner settings as JSON in the
body of the request.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__2"><a
href="https://api.appnexus.com/prebid/cross-partner-settings"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/cross-partner-settings</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__3">Update an existing
cross-partner setting. Pass the updated cross-partner settings as JSON
in the body of the request.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__1"><code
class="ph codeph">PATCH</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__2"><a
href="https://api.appnexus.com/prebid/cross-partner-settings"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/cross-partner-settings</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__3">Update a portion of
an existing cross-partner setting. Pass the updated cross-partner
settings as JSON in the body of the request.</td>
</tr>
</tbody>
</table>







## GET

Get all the cross-partner settings. In order for the request to be valid
user session data must be included.



**Parameters**

<table class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="cross-partner-settings-service__entry__16"
class="entry colsep-1 rowsep-1">Name</th>
<th id="cross-partner-settings-service__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="cross-partner-settings-service__entry__18"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="cross-partner-settings-service__entry__19"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__16"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__17">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__18">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__19"><p>The member id the
cross-partner settings will be associated with.</p></td>
</tr>
</tbody>
</table>





**Example call using curl**

``` pre
curl data=
    {
         "username":"aedwards_1",  
         "user_id":"1", 
         "user_type":"admin", 
         "entity_id": 7293, 
         "initial_user_id":null, 
         "initial_user_name":null, 
         "access_control": 
             {  
                 "member_configured":null, 
                 "groups":{ 
                     "roles":[123],  
                     "teams":[232,12,32] 
                 }
             }
} 
 
'https://api.appnexus.com/prebid/cross-partner-settings?member_id=9385 
```





**Session Data**

<table class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="cross-partner-settings-service__entry__24"
class="entry colsep-1 rowsep-1">Name</th>
<th id="cross-partner-settings-service__entry__25"
class="entry colsep-1 rowsep-1">Type</th>
<th id="cross-partner-settings-service__entry__26"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="cross-partner-settings-service__entry__27"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__24"><code
class="ph codeph">username</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__25">string</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__26">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__27">The name of the user
making the request.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__24"><code
class="ph codeph">user_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__25">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__26">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__27">The id of the user
making the request.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__24"><code
class="ph codeph">user_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__25">string</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__26">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__27">The type of user
making the request, for example "admin"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__24"><code
class="ph codeph">entity_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__25">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__26">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__27">The id of the user's
entity.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__24"><code
class="ph codeph">initial_user_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__25">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__26">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__27"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__24"><code
class="ph codeph">initial_user_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__25">string</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__26">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__27"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__24"><code
class="ph codeph">access_control</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__25">object</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__26">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__27"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__24"><code
class="ph codeph">access_control.member_configured</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__25"></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__26">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__27"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__24"><code
class="ph codeph">access_control.groups</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__25">object</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__26">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__27"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__24"><code
class="ph codeph">access_control.groups.roles</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__25">array</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__26">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__27"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__24"><code
class="ph codeph">access_control.groups.teams</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__25">array</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__26">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__27"></td>
</tr>
</tbody>
</table>



**Response**



A successful response will return JSON containing the cross-partner
settings for the passed member.

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="cross-partner-settings-service__entry__72"
class="entry colsep-1 rowsep-1">Field</th>
<th id="cross-partner-settings-service__entry__73"
class="entry colsep-1 rowsep-1">Type</th>
<th id="cross-partner-settings-service__entry__74"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__72"><code
class="ph codeph">bidder_timeout_ms</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__73">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__74">The maximum time, in
milliseconds, that Prebid Server Premium partners and other bidders in
our marketplace are given to respond.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__72"><code
class="ph codeph">deleted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__73">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__74">Indicates if the
cross-partner setting has been deleted.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__72"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__73">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__74">Unique identifier
for the cross-partner setting object.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__72"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__73">string</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__74">The last
modification date of the cross-partner setting object.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__72"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__73">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__74">Unique identifier of
the member the cross-partner setting object belongs to.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__72"><code
class="ph codeph">price_granularity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__73">object</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__74">See the <a
href="#cross-partner-settings-service__p-001" class="xref">price
granularity</a> table below.</td>
</tr>
</tbody>
</table>





Note: The full timeout hierarchy in
order from highest to lowest priority is:

1.  <a
    href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/understanding-the-debug-auction.html"
    class="xref" target="_blank">Debug Auction timeout value</a>
    (2000ms) \[if debug=1/true\]
2.  Ad Request auction_timeout_ms value set by the publisher
    1.  For AMP, <a
        href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/add-or-edit-psp-global-settings.html"
        class="xref" target="_blank">See guidance here</a>
    2.  For Android, <a
        href="https://docs.xandr.com/bundle/mobile-sdk/page/set-the-auction-timeout-for-android.html"
        class="xref" target="_blank">See guidance here</a>
    3.  For iOS, <a
        href="https://docs.xandr.com/bundle/mobile-sdk/page/set-the-auction-timeout-for-ios.html"
        class="xref" target="_blank">See guidance here</a>
3.  Placement-level `auction_timeout_ms` value. Contact your
    Xandr Representative to set this value
4.  PSP Global Settings (Cross Partner) Timeout value set by the
    publisher. <a
    href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/add-or-edit-psp-global-settings.html"
    class="xref" target="_blank">See guidance here</a>
5.  Member-level `default_auction_timeout_ms` value for the given data
    center. Contact your Xandr Representative to
    set this value
6.  Member-level `default_auction_timeout_ms` value. Contact your
    Xandr Representative to set this value
7.  Xandr data center/global default (150ms)



**Price Granularity**



Price granularity defines the CPM price buckets into which demand
partner bids will be grouped. For more information, see
<a href="https://docs.prebid.org/adops/price-granularity.html"
class="xref" target="_blank">Prebid documentation</a>.

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="cross-partner-settings-service__entry__93"
class="entry colsep-1 rowsep-1">Property</th>
<th id="cross-partner-settings-service__entry__94"
class="entry colsep-1 rowsep-1">Type</th>
<th id="cross-partner-settings-service__entry__95"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__93"><code
class="ph codeph">label</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__94">string</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__95">The accepted value
for price granularity. See <a
href="https://docs.prebid.org/adops/price-granularity.html" class="xref"
target="_blank">Prebid documentation</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__93"><code
class="ph codeph">ranges</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__94">array</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__95">Container object
describing the price granularity range.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__93"><code
class="ph codeph">ranges.max</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__94">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__95">The maximum length
of the range.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__93"><code
class="ph codeph">ranges.increment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__94">float</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__95">The amount to
increment through the range.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__93"><code
class="ph codeph">precision</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__94">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__95">The number of
decimal places to round the price. Two is the default, so a price of
2.1234 would be rounded to two decimal places, 2.12.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__93"><code
class="ph codeph">currency_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__94">string</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__95">String containing
desired currency code for price bucket calculations. Must be a part of
the Xandr-<a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/currency-support.html"
class="xref" target="_blank">approved list of currencies.</a></td>
</tr>
</tbody>
</table>





**Example Response**

``` pre
{
    "id": 5,
    "member_id": 7293,
    "bidder_timeout_ms": 0,
    "price_granularity": {
        "label": "Dense",
        "ranges": [
            {
                "max": 3,
                "increment": 0.01
            },
            {
                "max": 8,
                "increment": 0.05
            },
            {
                "max": 20,
                "increment": 0.5
            }
        ],
        "currency_code": "USD"
        "precision": 2
    },
    "last_modified": "2019-10-31T17:37:50Z",
    "deleted": false
} 
```







## POST

Create a new cross-partner setting.



**Example call using curl**

``` pre
"id": 123,
    "member_id": 13859,
    "bidder_timeout_ms": 995,
    "price_granularity": {
        "label": "Dense",
        "ranges": [
            {
                "max": 3,
                "increment": 0.01
            },
            {
                "max": 8,
                "increment": 0.05
            },
            {
                "max": 20,
                "increment": 0.5
            }
        ],
        "precision": 2,
        "currency_code": "USD"
    }
}
```





**Parameters**

<table class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="cross-partner-settings-service__entry__114"
class="entry colsep-1 rowsep-1">Name</th>
<th id="cross-partner-settings-service__entry__115"
class="entry colsep-1 rowsep-1">Type</th>
<th id="cross-partner-settings-service__entry__116"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="cross-partner-settings-service__entry__117"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__114"><code
class="ph codeph">bidder_timeout_ms</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__115">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__116">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__117"><p>The maximum
time, in milliseconds, that Prebid Server Premium partners and other
bidders in our marketplace are given to respond.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__114"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__115">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__116">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__117">The member id the
cross-partner settings will be associated with.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__114"><code
class="ph codeph">price_granularity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__115">object</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__116">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__entry__117"><p>The price
granularity settings. See the <a
href="#cross-partner-settings-service__p-002" class="xref">price
granularity</a> table for more details on this object.</p></td>
</tr>
</tbody>
</table>



**Price Granularity**

Price granularity defines the CPM price buckets into which demand
partner bids will be grouped. For more information, see
<a href="https://docs.prebid.org/adops/price-granularity.html"
class="xref" target="_blank">Prebid documentation</a>.

<div id="cross-partner-settings-service__p-8f1abb77-1842-41c5-ad92-64291db2a5b0"
>

<table
id="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th
id="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__3"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__1"><code
class="ph codeph">ranges</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__4">Container
object describing the price granularity range.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__1"><code
class="ph codeph">ranges.max</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__4">The
maximum length of the range.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__1"><code
class="ph codeph">ranges.increment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__2">float</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__4">The
amount to increment through the range.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__1"><code
class="ph codeph">precision</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__4">The
number of decimal places to round the price. Two is the default, so a
price of 2.1234 would be rounded to two decimal places, 2.12.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__1"><code
class="ph codeph">currency_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="cross-partner-settings-service__table-19170373-7437-44a8-ae59-5a202e70873b__entry__4">String
containing desired currency code for price bucket calculations. Must be
a part of the Xandr-<a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/currency-support.html"
class="xref" target="_blank">approved list of currencies.</a></td>
</tr>
</tbody>
</table>





**Example**

``` pre
{
    "username":"aedwards_1",  
    "user_id":"1", 
    "user_type":"admin", 
    "entity_id": 7293, 
    "initial_user_id":null, 
    "initial_user_name":null, 
    "access_control": {  
        "member_configured":null, 
        "groups":{ 
            "roles":[123],  
            "teams":[232,12,32] 
        }
     }
}
```







## Related Topics

- <a
  href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/currency-support.html"
  class="xref" target="_blank">Currency Support</a>

- <a
  href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/add-or-edit-psp-global-settings.html"
  class="xref" target="_blank">Add or Edit PSP Global Settings</a>






