---
Title : Ad Profile Service
Description : A member who owns inventory may want to create "ad approval profiles" to
define what kinds of ads can and cannot run on their pages for quality
control purposes. The Ad Profile Service lets you create your ad
---


# Ad Profile Service



A member who owns inventory may want to create "ad approval profiles" to
define what kinds of ads can and cannot run on their pages for quality
control purposes. The Ad Profile Service lets you create your ad
approval profiles. Once an ad profile has been created, it can either be
associated to individual TinyTags through the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/tinytag-service.html"
class="xref" target="_blank">TinyTag Service</a> or broadly set at the
member level through the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/member-service.html"
class="xref" target="_blank">Member Service</a>.

Approval profiles consist of three elements: members, brands, and
creatives. When creating an ad profile, you can approve or ban each
creative in the system individually, but you may prefer to save time by
approving or banning entire brands or members.

- A member should be trusted if you believe their ads will **always** be
  acceptable. For instance, you may "trust" Specific Media to run
  quality ads, so you can mitigate the need to audit each of their
  creatives.
- A brand should be trusted if you believe that ads of this brand will
  **almost always** be acceptable. However you will always have the
  ability to ban a specific creative even if it is part of a "trusted"
  brand. If the specific creative is not banned, it will run by default.
- A brand should be banned if you believe that ads of this brand will
  **never** be acceptable. You will **not** have the ability to approve
  a specific creative assigned a "banned" brand.
- The default profile (blank or ID set to 0) will ban unaudited ads from
  other members (i.e. where the member_id of the creative is different
  than the member_id of the TinyTag).



## Rest API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000992c__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000992c__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000992c__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000992c__entry__2"><a
href="https://api.adnxs.com/ad-profile/MEMBER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/ad-profile/MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000992c__entry__3">View
all ad profiles for a member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000992c__entry__2"><a
href="https://api.adnxs.com/ad-profile/MEMBER_ID/AD_PROFILE_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/ad-profile/MEMBER_ID/AD_PROFILE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000992c__entry__3">View
a particular ad profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000992c__entry__2"><a
href="https://api.adnxs.com/ad-profile/MEMBER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/ad-profile/MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000992c__entry__3">Add
a new ad profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000992c__entry__2"><a
href="https://api.adnxs.com/ad-profile/MEMBER_ID/AD_PROFILE_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/ad-profile/MEMBER_ID/AD_PROFILE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__3">Modify an existing ad profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000992c__entry__2"><a
href="https://api.adnxs.com/ad-profile/MEMBER_ID/AD_PROFILE_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/ad-profile/MEMBER_ID/AD_PROFILE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__3">Delete an existing ad profile.</td>
</tr>
</tbody>
</table>





## JSON Fields



Note: "Brands" and "creatives" make up
subsections of the ad profile.



**Ad Profile**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000992c__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000992c__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000992c__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__19"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__20">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__21"><strong>Default</strong>: true
<p>The state of the ad profile (active/inactive).</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__19"><code
class="ph codeph">default_brand_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__20">enum ('trusted', 'banned')</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000992c__entry__21">The
brand status to be used by default when no explicit selection is
made.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__19"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__21">Optional description</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__21"><strong>Required On</strong>: Update
<p>Xandr ID assigned by the API to reference
this ad_profile.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__19"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__20">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000992c__entry__21">The
timestamp of last modification to this ad profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__19"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__21"><strong>Required</strong>
<p>The member ID that owns this ad_profile.</p></td>
</tr>
</tbody>
</table>

**Brands**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000992c__entry__40"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000992c__entry__41"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000992c__entry__42"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__40"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__41">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__42"><strong>Required</strong>
<p>The ID of the brand within Xandr's brand
list.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__40"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__41">enum ('trusted', 'banned')</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__42"><strong>Required</strong>
<p>The trust setting for the specified brand.</p>

Note: If a <code
class="ph codeph">brand</code>'s <code class="ph codeph">status</code>
is set to <code class="ph codeph">"trusted"</code>, creatives associated
with that brand will serve even if the brand's overall category is <code
class="ph codeph">"banned"</code>. For example, if you mark the brand "1
and 1 Internet" (ID 17310) as trusted, creatives associated with that
brand will serve even if you ban its category, "Telecommunications" (ID
27). To get brand IDs and see what category a brand belongs to, use the
<strong>Brand Service</strong>. For category IDs, use the
<strong>Category Service</strong>.
</td>
</tr>
</tbody>
</table>

**Creatives**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000992c__entry__49"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000992c__entry__50"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000992c__entry__51"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__49"><code
class="ph codeph">approved</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__50">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__51"><strong>Required</strong>
<p>Whether the creative specified is an approved or banned.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__49"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__50">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__51"><strong>Required</strong>
<p>The ID of the creative within the Xandr set
of exchange creatives.</p></td>
</tr>
</tbody>
</table>

**Members**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000992c__entry__58"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000992c__entry__59"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000992c__entry__60"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__58"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__59">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__60">Member ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__58"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000992c__entry__59">enum ('trusted', 'banned')</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000992c__entry__60">The
action to be used for a member's creatives within the ad profile.</td>
</tr>
</tbody>
</table>





## Example

**To create a new ad profile, create a text file in JSON format.**

Below we have used the "cat" command to output an example ad profile
JSON file.

``` pre
$ cat ad_profile
{
   "ad_profile":{
      "member_id":25,
      "brands":[
         {
            "id":23,
            "status":"trusted"
         },
         {
            "id":120,
            "status":"banned"
         },
         {
            "id":123,
            "status":"banned"
         }
      ],
      "creatives":[
         {
            "id":4,
            "approved":true
         },
         {
            "id":12,
            "approved":true
         },
         {
            "id":123,
            "approved":false
         }
      ]
   }
}
```

**Add this ad profile to your member (25) with a POST request.**

``` pre
$ curl -b cookies -c cookies -d @ad_profile  "https://api.adnxs.com/ad-profile/25"
{
    "response": {
        "status": "OK",
        "id": "50"
    }
}
```

**The ID of the ad profile is 50. You can view it with a GET request.**

``` pre
$ curl -b cookies -c cookies "https://api.adnxs.com/ad-profile/25/50"
{
   "response":{
      "ad_profile":[
         {
            "id":50,
            "member_id":25,
            "brands":[
               {
                  "id":"23",
                  "status":"trusted"
               },
               {
                  "id":"120",
                  "status":"banned"
               },
               {
                  "id":"123",
                  "status":"banned"
               }
            ],
            "creatives":[
               {
                  "id":"4",
                  "approved":"true"
               },
               {
                  "id":"12",
                  "approved":"true"
               },
               {
                  "id":"123",
                  "approved":"false"
               }
            ],
            "active":true,
            "last_activity":"2009-01-03 05:29:57"
         }
      ],
      "status":"OK"
   }
}
```






