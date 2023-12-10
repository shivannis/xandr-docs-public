---
Title : Ad Quality Rule Service
Description : An ad quality rule defines the ad quality settings which a network can
ms.date: 10/28/2023
ms.custom: digital-platform-api
define for its managed publishers. A network may have more than one ad
---


# Ad Quality Rule Service



An ad quality rule defines the ad quality settings which a network can
define for its managed publishers. A network may have more than one ad
quality rule applied conditionally across a publisher's inventory. For
instance, traffic originating from certain geo-locations may require
different ad quality settings.



## REST API



<b>Note:</b>

- publisher_code can be used in place of publisher_id, and
  ad_quality_rule_code can be used in place of ad_quality_rule_id for
  all of the calls below.
- If an Ad Quality (AQ) is set as `"default_brand_status": "banned"` but
  the parent brand is set as `"status": "trusted"`, the child brand
  overrides the setting in `"default_brand_status"` and it will be able
  to serve unless it is explicitly banned in the Ad Profile's brand
  override list.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000f5d__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000f5d__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000f5d__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__2"><a
href="https://api.appnexus.com/ad-quality-rule?publisher_id=PUBLISHER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/ad-quality-rule?publisher_id=PUBLISHER_ID</a>
<p>(payment rule JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__3">Add
an Ad Quality Rule.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__2"><a
href="https://api.appnexus.com/ad-quality-rule?id=AD_QUALITY_RULE_ID&amp;publisher_id=PUBLISHER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/ad-quality-rule?id=AD_QUALITY_RULE_ID&amp;publisher_id=PUBLISHER_ID</a>
<p>(publisher rule JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__3">Modify an existing Ad Quality Rule.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__2"><a
href="https://api.appnexus.com/ad-quality-rule?publisher_id=PUBLISHER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/ad-quality-rule?publisher_id=PUBLISHER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__3">View
all of the ad quality rules for a publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__2"><a
href="https://api.appnexus.com/ad-quality-rule?id=AD_QUALITY_RULE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/ad-quality-rule?id=AD_QUALITY_RULE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__3">View
a specific ad quality rule for a publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__2"><a
href="https://api.appnexus.com/ad-quality-rule?id=1%2c2%2c3"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/ad-quality-rule?id=1,2,3</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__3">View
multiple ad quality rules by ID using a comma-separated list.</td>
</tr>
</tbody>
</table>





## JSON Parameters

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000f5d__entry__19"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00000f5d__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000f5d__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__21">The
unique identifier for a ad quality rule.
<p><strong>Default</strong>: Auto-incremented Number (i.e. 123)</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__19"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__21">A
optional custom code used to reference an ad quality rule.
<p><strong>Default</strong>: Null</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__21">A
name used to describe an ad quality rule.
<p><strong>Default</strong>: None</p>
<p><strong>Required On</strong>: POST</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__19"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__21">Optional description.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__19"><code
class="ph codeph">ad_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__21">You
are required to provide an ad profile which defines quality restrictions
that should be applied to this rule.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__19"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__21">The
id of the publisher for which this ad quality rule will apply.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__19"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__21">The
id of the publisher's member for which this ad quality rule will
apply.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__19"><code
class="ph codeph">profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__21">An
optional <code class="ph codeph">profile_id</code> is used to determine
when to apply an ad quality rule. A profile is a generic set of rules
for targeting inventory, and certain ad quality rules may only apply to
certain slices of inventory. (See the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for details.)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__19"><code
class="ph codeph">priority</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000f5d__entry__21">You
can optionally provide a priority which defines the level at which this
rule should that be applied relative to other payment rules.
<p><strong>Default</strong>: 5</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__19"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__20">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000f5d__entry__21">Time of last modification to this ad
quality rule.</td>
</tr>
</tbody>
</table>





## Examples

**Define an Ad Quality Rule**

``` pre
$ cat ad-quality-rule.json
{"ad-quality-rule":
      {
        "name": "Default Ad Quality Rule",
        "description": "These quality standards will serve as the catch-all settings for this publisher",
        "active": true,
        "publisher_id": 34147,
        "ad_profile_id": 32,
        "profile_id": null,
        "priority": 1
      }
}
```

**`POST` the Ad Quality Rule for a publisher**

``` pre
$ curl -s -c cookies -b cookies -X POST -d @ad-quality-rule.json "https://api.appnexus.com/ad-quality-rule?publisher_id=34147" | json_reformat
{
  "response": {
    "status": "OK",
    "id": 103679,
    "dbg_info": {
      ...
    }
  }
}
```

**View a specific Ad Quality Rule**

``` pre
$ curl -s -c cookies -b cookies "https://api.appnexus.com/ad-quality-rule?id=103679" | json_reformat
{
  "response": {
    "status": "OK",
    "ad-quality-rule": {
      "id": 103679,
      "code": null,
      "name": "Default Ad Quality Rule",
      "description": "These quality standards will serve as the catch-all settings for this publisher",
      "active": true,
      "publisher_id": 34147,
      "ad_profile_id": 32,
      "profile_id": 0,
      "priority": 1
    },
    "dbg_info": {
      ...
    }
  }
}
```






