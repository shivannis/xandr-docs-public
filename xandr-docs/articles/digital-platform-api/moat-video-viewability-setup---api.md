---
Title : **Moat Video Viewability Setup - API**
Description : You can amplify your video viewability metrics by tapping into a
third-party video viewability data provider like Moat. This document
---


# **Moat Video Viewability Setup - API**



You can amplify your video viewability metrics by tapping into a
third-party video viewability data provider like Moat. This document
will guide you through the process of updating a video creative to
include Moat's reporting. For steps to link an existing account with
Moat or to create one from scratch, see the <a
href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/moat-video-viewability-measurement.html"
class="xref" target="_blank">Moat Video Viewability Measurement
Setup</a> page in the UI.

<div id="moat-video-viewability-setup-api__section-0c5ac185-8a0e-472e-8d3a-e5c2b5739f60"
>

## **Update A Video Creative**

**Step 1**. **Include the following array in your JSON file**



``` pre
"thirdparty_viewability_providers": [
      {
        "thirdparty_provider_id": 1
      }
     ],
```

**Step 2.** **Make a PUT call to the Creative VAST Service with your
updated JSON file**

``` pre
curl -b -c "Authorization:$TOKEN" "https://api.appnexus.com/creative-vast?member_id=1234&advertiser_id=1234567" -X PUT -d @myvideocreative.json
```

``` pre
{
  "creative-vast": {
    "id": "46629877",
    "thirdparty_viewability_providers": [
      {
        "thirdparty_provider_id": 1
      }
    ]
  }
}
```

<div id="moat-video-viewability-setup-api__section-63635698-c1ec-44e1-96bd-3f347d3f78ea"
>

## **JSON Fields**

<div id="moat-video-viewability-setup-api__p-d246e368-c846-4d9b-b8f8-428c585914af"
>

<table
id="moat-video-viewability-setup-api__table-dc15d825-b328-4556-8eda-91b6d3940b80"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="moat-video-viewability-setup-api__table-dc15d825-b328-4556-8eda-91b6d3940b80__entry__1"
class="entry"><strong>Field</strong></th>
<th
id="moat-video-viewability-setup-api__table-dc15d825-b328-4556-8eda-91b6d3940b80__entry__2"
class="entry"><strong>Type</strong></th>
<th
id="moat-video-viewability-setup-api__table-dc15d825-b328-4556-8eda-91b6d3940b80__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="moat-video-viewability-setup-api__table-dc15d825-b328-4556-8eda-91b6d3940b80__entry__1"><code
class="ph codeph">thirdparty_viewability_providers</code></td>
<td class="entry"
headers="moat-video-viewability-setup-api__table-dc15d825-b328-4556-8eda-91b6d3940b80__entry__2">array</td>
<td class="entry"
headers="moat-video-viewability-setup-api__table-dc15d825-b328-4556-8eda-91b6d3940b80__entry__3">This
array includes a collection of third party video viewability providers
that will draw data on the given hosted video creative.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="moat-video-viewability-setup-api__table-dc15d825-b328-4556-8eda-91b6d3940b80__entry__1"><code
class="ph codeph">thirdparty_provider_id</code></td>
<td class="entry"
headers="moat-video-viewability-setup-api__table-dc15d825-b328-4556-8eda-91b6d3940b80__entry__2">int</td>
<td class="entry"
headers="moat-video-viewability-setup-api__table-dc15d825-b328-4556-8eda-91b6d3940b80__entry__3">This
id specifies which data provider will be granted access to historical
data on this hosted video creative.</td>
</tr>
</tbody>
</table>



**Third-Party Provider ID**



<table
id="moat-video-viewability-setup-api__table-29cc3d4f-1d3a-4807-bde1-fca44b561f5a"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="moat-video-viewability-setup-api__table-29cc3d4f-1d3a-4807-bde1-fca44b561f5a__entry__1"
class="entry">Provider Name</th>
<th
id="moat-video-viewability-setup-api__table-29cc3d4f-1d3a-4807-bde1-fca44b561f5a__entry__2"
class="entry">ID</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="moat-video-viewability-setup-api__table-29cc3d4f-1d3a-4807-bde1-fca44b561f5a__entry__1">MOAT</td>
<td class="entry"
headers="moat-video-viewability-setup-api__table-29cc3d4f-1d3a-4807-bde1-fca44b561f5a__entry__2">1</td>
</tr>
</tbody>
</table>

<div id="moat-video-viewability-setup-api__MoatVideoViewabilitySetupAPI-RemoveThird-partyProviders"
>

## Remove Third-party Providers

To remove third-party providers from your hosted video creative, set the
field `thirdparty_providers` to `null`. Then make a PUT call to the
Creative Service to update your creative.



``` pre
curl -b -c "Authorization:$TOKEN" "https://api.appnexus.com/creative-vast?member_id=1234&advertiser_id=1234567" -X PUT -d @myvideocreative.json
```

``` pre
{
  "creative-vast": {
    "id": "46629877",
    "thirdparty_viewability_providers": null
  }
}
```

<div id="moat-video-viewability-setup-api__MoatVideoViewabilitySetupAPI-Delete"
>

## Delete

If you wish to permanently remove this creative you can make a DELETE
call pointed to the specific creative as outlined in the example below.



``` pre
curl -b -c "Authorization:$TOKEN" "https://api.appnexus.com/creative-vast?member_id=1234&advertiser_id=1234567" -X DELETE 
```




