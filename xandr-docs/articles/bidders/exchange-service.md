---
Title : Exchange Service
Description : Exchanges are groups of sellers organized to allow for easier supply
ms.date : 10/28/2023
targeting.
---


# Exchange Service



Exchanges are groups of sellers organized to allow for easier supply
targeting.

- This inventory will be targeted all at once. You can combine it with
  domain list targeting and member targeting.
- As new sellers are added, you do not have to update your profile or
  targeting. When targeting a single exchange, you will receive all
  members within it and any new members that join. 
- We took our premium publishers and put them all in one group, called
  " Supply". When you access
   and target inventory, you can target
   Supply. This will target all those premium
  publishers for you.
  - You can find out more information about 
    Supply here: <a
    href="xandr-monetize-supply-for-external-demand-partners.md"
    class="xref" target="_blank"> Supply for
    External Demand Partners</a>
- Sellers that belong to Exchange 1,  Supply,
  can not be individually included and excluded. The group must be
  targeted as a whole. You can individually include/exclude members that
  belong to other exchanges. 

Today we have three exchanges: 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000208f__entry__1" class="entry colsep-1 rowsep-1">ID</th>
<th id="ID-0000208f__entry__2" class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-0000208f__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__2">Direct</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__3">These are premium publishers on our
platform that we have direct integrations with. This inventory is
brought to you directly through Xandr's SSP
technology, and is formed at its core from our direct-to-publisher
supply most frequently requested and purchased by our buyers across all
formats (display, mobile, video, and native). </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__2">Connect</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__3">These are the SSPs such as Pubmatic,
Google Ad Manager, etc.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__1">3</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__2">Network</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000208f__entry__3">All
ad-networks that represent many publishers and act as SSPs. </td>
</tr>
</tbody>
</table>



## Rest API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000208f__entry__13" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000208f__entry__14"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000208f__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__13">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000208f__entry__14"><a
href="https://api.adnxs.com/exchange" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/exchange</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000208f__entry__15">To
see all of the exchanges and members that belong to them.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__13">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000208f__entry__14"><a
href="https://api.adnxs.com/exchange?id=%5bEXCHANGE_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/exchange?id=[EXCHANGE_ID</a>]</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000208f__entry__15">To
view members in a specific exchange.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000208f__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000208f__entry__23"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000208f__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__22"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__23">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000208f__entry__24">The
timestamp when the exchange was created.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__22"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__23">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__24">Description of sellers that belong to
the exchange.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000208f__entry__24">The
ID of the exchange. Today, we only have 3 exchanges.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__22"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__23">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000208f__entry__24">The
timestamp of last modification. </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__22"><code
class="ph codeph">members</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__24">Array of members that belong to that
exchange.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__22"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000208f__entry__24">The
name of the exchange.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__22"><code
class="ph codeph">restricted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__24">Indicates if the members within the
exchange can be individually targeted or blocked.
<ul>
<li>If true, the members within this exchange can not be individually
included or excluded.</li>
<li>If false, the members within this exchange can be individually
included or excluded.</li>
</ul></td>
</tr>
</tbody>
</table>

Members Object

The following table describes Member Object fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000208f__entry__46"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000208f__entry__47"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000208f__entry__48"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__46"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__47">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000208f__entry__48">ID
of the member</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__46"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__47">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000208f__entry__48">Name of the member</td>
</tr>
</tbody>
</table>




## Examples

**View all members who belong to exchange 2**

``` pre
% Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  2909  100  2909    0     0  34085      0 --:--:-- --:--:-- --:--:-- 34223
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "exchange": {
            "id": 2,
            "name": "Connect",
            "description": "Includes all SSPs/exchanges.",
            "last_activity": "2018-04-17 16:04:28",
            "created_on": "2018-04-17 16:04:28",
            "restricted": false,
            "members": [
                {
                    "id": 459,
                    "name": "Rubicon"
                },
                {
                    "id": 1752,
                    "name": "Smaato Inc."
                },
                {
                    "id": 1813,
                    "name": "MoPub Inc."
                },
                {
                    "id": 357,
                    "name": "OpenX"
                },
                {
                    "id": 74,
                    "name": "PubMatic"
                },
                {
                    "id": 3053,
                    "name": "FreeWheel SSP"
                },
                {
                    "id": 3332,
                    "name": "Telaria, Inc."
                },
                {
                    "id": 1868,
                    "name": "ONE by AOL Mobile Marketplace"
                },
                {
                    "id": 181,
                    "name": "Google AdExchange"
                },
                {
                    "id": 1226,
                    "name": "AOL ONE Display"
                },
                {
                    "id": 2850,
                    "name": "MobFox"
                },
                {
                    "id": 1117,
                    "name": "Switch Concepts Limited"
                },
                {
                    "id": 1314,
                    "name": "TripleLift Inc."
                },
                {
                    "id": 2551,
                    "name": "Sonobi - Premium"
                },
                {
                    "id": 1410,
                    "name": "Index Exchange Inc"
                },
                {
                    "id": 3292,
                    "name": "Adap.TV"
                },
                {
                    "id": 1872,
                    "name": "Media.Net Ltd"
                },
                {
                    "id": 1944,
                    "name": "Centro Media, Inc."
                },
                {
                    "id": 1942,
                    "name": "Floor6"
                },
                {
                    "id": 3703,
                    "name": "Smart RTB+"
                },
                {
                    "id": 1360,
                    "name": "Sovrn"
                },
                {
                    "id": 1354,
                    "name": "Improve Digital"
                },
                {
                    "id": 273,
                    "name": "Yahoo Ad Exchange"
                },
                {
                    "id": 3918,
                    "name": "xAd, Inc."
                },
                {
                    "id": 3425,
                    "name": "Sharethrough"
                },
                {
                    "id": 1548,
                    "name": "Criteo"
                },
                {
                    "id": 1405,
                    "name": "Ströer SSP GmbH"
                },
                {
                    "id": 2014,
                    "name": "Conversant, Inc."
                },
                {
                    "id": 3366,
                    "name": "AerServ LLC"
                },
                {
                    "id": 2568,
                    "name": "Engage:BDR"
                },
                {
                    "id": 1063,
                    "name": "Cox Digital Solutions LLC"
                },
                {
                    "id": 1263,
                    "name": "PulsePoint, Inc."
                },
                {
                    "id": 3016,
                    "name": "Yieldlab AG"
                },
                {
                    "id": 3287,
                    "name": "RTK.io (Phaedrus Media, LLC)"
                },
                {
                    "id": 2047,
                    "name": "Inneractive LTD"
                },
                {
                    "id": 3470,
                    "name": "Falk Technologies GmbH"
                },
                {
                    "id": 1475,
                    "name": "Lifestreet"
                },
                {
                    "id": 1899,
                    "name": "Zedo (ZINC)"
                },
                {
                    "id": 2877,
                    "name": "Amobee, Inc."
                },
                {
                    "id": 3104,
                    "name": "SpotXchange Inc."
                },
                {
                    "id": 3335,
                    "name": "Optimatic Inc."
                },
                {
                    "id": 3351,
                    "name": "SmartClip (Video)"
                },
                {
                    "id": 3368,
                    "name": "SMARTSTREAM.TV GmbH"
                },
                {
                    "id": 7044,
                    "name": "fluct, Inc."
                },
                {
                    "id": 1081,
                    "name": "Sonobi"
                },
                {
                    "id": 1505,
                    "name": "AdConductor"
                },
                {
                    "id": 7122,
                    "name": "Geniee, Inc. / SSP"
                },
                {
                    "id": 6901,
                    "name": "MicroAd, Inc."
                },
                {
                    "id": 1583,
                    "name": "Admeta AB"
                },
                {
                    "id": 3334,
                    "name": "Teads France SAS"
                },
                {
                    "id": 3364,
                    "name": "Taboola Inc"
                },
                {
                    "id": 7824,
                    "name": "Brightroll Exchange Video"
                },
                {
                    "id": 7911,
                    "name": "Yieldmo, Inc."
                },
                {
                    "id": 8173,
                    "name": "Kargo Global, Inc"
                },
                {
                    "id": 8128,
                    "name": "Adrizer LLC"
                },
                {
                    "id": 7702,
                    "name": "Platform-One"
                },
                {
                    "id": 3144,
                    "name": "Media.net Ltd."
                },
                {
                    "id": 7851,
                    "name": "Axonix Ltd."
                },
                {
                    "id": 8178,
                    "name": "PubNative"
                },
                {
                    "id": 4052,
                    "name": "Conversant, Inc."
                },
                {
                    "id": 7906,
                    "name": "AdForm A/S"
                },
                {
                    "id": 3360,
                    "name": "Nsight by Dailymotion"
                },
                {
                    "id": 7666,
                    "name": "Revcontent, LLC"
                },
                {
                    "id": 8678,
                    "name": "United Inc. / AdStir"
                },
                {
                    "id": 6887,
                    "name": "Vdopia, Inc."
                },
                {
                    "id": 8449,
                    "name": "Supership Inc. / Ad Generation"
                },
                {
                    "id": 8847,
                    "name": "Beacon Spark Ltd."
                },
                {
                    "id": 6933,
                    "name": "Spot.IM Inc."
                },
                {
                    "id": 3277,
                    "name": "AdsWizz Inc."
                },
                {
                    "id": 8804,
                    "name": "Adman Media USA"
                }
            ]
        },
        "dbg": {
            "warnings": [
            ],
            "version": "1.18.673",
            "output_term": "exchange"
        }
    }
}
```




## **Related Topics**



- <a href="enhanced-bidder-profiles.md" class="xref">Enhanced Bidder
  Profiles</a>
- <a
  href="hierarchy-and-ad-type-targeting-for-enhanced-bidder-profiles.md"
  class="xref">Hierarchy and Ad Type Targeting for Enhanced Bidder
  Profiles</a>
- <a href="api-use-cases-for-enhanced-bidder-profiles.md"
  class="xref">API Use Cases for Enhanced Bidder Profiles</a>
- <a
  href="frequently-asked-questions-faq-for-enhanced-bidder-profiles.md"
  class="xref">Frequently Asked Questions (FAQ) for Enhanced Bidder
  Profiles</a>
- <a href="changelog-for-enhanced-bidder-profiles.md"
  class="xref">Changelog for Enhanced Bidder Profiles</a>








