---
Title : Member Profile Service
Description : The Member Profile Service allows you to establish a single, global
ms.date: 10/28/2023
ms.custom: digital-platform-api
profile to limit the countries and domains from which you accept
third-party impressions. Your campaigns will not bid on third-party
---


# Member Profile Service



The Member Profile Service allows you to establish a single, global
profile to limit the countries and domains from which you accept
third-party impressions. Your campaigns will not bid on third-party
impressions that do not match the requirements of the member profile.



<b>Note:</b> Be sure to align your campaign
<a href="profile-service.md" class="xref">profiles</a> with your
member profile; otherwise, your campaign targeting may not be effective.

Example 1: Your member profile is set to accept third-party impressions
from the US and Canada. A campaign is set to target impressions from the
US, Canada, and Mexico. In this case, the campaign will never have the
chance to target impressions from Mexico because the member profile
prevents those impressions from being available for bidding.

Example 2: Your member profile is set to block third-party impressions
from domain list 1, which includes apples.com, oranges.com, and
pears.com. A campaign is set to target domain list 3, which includes
plums.com, bananas.com, and apples.com. Note that apples.com is included
in both domain list 1 and domain list 3. In this case, the campaign will
never have the chance to target impressions from apples.com because the
member profile blocks domain list 1.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001c8d__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001c8d__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001c8d__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c8d__entry__2"><a
href="https://api.appnexus.com/member-profile" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/member-profile</a> (member-profile
JSON)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__3">Create your member profile</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__1"><code class="ph codeph">PUT</code> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c8d__entry__2"><a
href="https://api.appnexus.com/member-profile" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/member-profile</a> (member-profile
JSON)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__3">Update your member profile</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__1"><code class="ph codeph">GET</code> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c8d__entry__2"><a
href="https://api.appnexus.com/member-profile" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/member-profile</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c8d__entry__3">View
your member profile</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__1"><code
class="ph codeph">DELETE</code> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c8d__entry__2"><a
href="https://api.appnexus.com/member-profile" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/member-profile</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__3">Delete your member profile</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__1"><code class="ph codeph">GET</code> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c8d__entry__2"><a
href="https://api.appnexus.com/member-profile/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/member-profile/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c8d__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>



<b>Note:</b> Since you have only one member
profile, you do not need to include the profile ID in `PUT`, `GET`, or
`DELETE` requests.







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001c8d__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001c8d__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001c8d__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c8d__entry__21">The
ID of the member profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__19"><code
class="ph codeph">domain_list_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c8d__entry__21">The
action to perform on domain_list_targets. Possible values:   
<ul>
<li><code class="ph codeph">"include"</code> - You will accept
third-party impressions only from the domains in the specified domain
lists. </li>
<li><code class="ph codeph">"exclude"</code> - You will accept
third-party impressions from all domains except those in the specified
domain lists.</li>
</ul>
<p><strong>Default</strong>: <code
class="ph codeph">"exclude"</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__19"><code
class="ph codeph">domain_list_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__20">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c8d__entry__21">The
<a
href="domain-list-service.md"
class="xref" target="_blank">domain lists</a> to include or exclude. See
the <a
href="member-profile-service.md#ID-00001c8d__examples_member_profile_service"
class="xref">examples</a> below for formatting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__19"><code
class="ph codeph">country_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__20">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001c8d__entry__21">The
countries from which you will accept third-party impressions. You will
accept impressions only from these countries. Note that if you do not
specify any countries, you will accept third-party impressions from all
countries. See <a
href="member-profile-service.md#ID-00001c8d__examples_member_profile_service"
class="xref">examples</a> below.  </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__19"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__20">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__21"><strong>Read-only</strong>. The date on
which the member profile was last modified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__19"><code
class="ph codeph">inventory_url_list_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__20">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__21">Contains a list of inventory list IDs
(allowlists and/or blocklists). Used to attach a single allowlist and/or
one or more blocklists to the profile.
<ul>
<li>The allowlist contains a list of domains or apps to be targeted by
the line item using the profile. If an allowlist is included, domains
and apps not in the allowlist will not be targeted.</li>
<li>Each blocklist contains a list of domains or apps that are to be
excluded from targeting by line item that uses the profile.</li>
</ul>
<p>See <a href="profile-service.md#ID-00001d94__inventory_lists"
class="xref">Inventory Lists</a> for more details.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__19"><code
class="ph codeph">require_transparency_and_consent_framework_string</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__20">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001c8d__entry__21"><ul>
<li>If <code class="ph codeph">true</code>, only allow associated
objects to purchase inventory where valid TCF string is present</li>
<li>If <code class="ph codeph">false</code>, allow associated objects to
purchase any inventory that falls within pre-defined targeting
declarations.</li>
</ul>

<b>Note:</b> This parameter is only
applicable to the traffic coming from territories where GDPR applies.
<p><strong>Default</strong>: <code class="ph codeph">false</code></p>
</td>
</tr>
</tbody>
</table>



>

## Examples

**Creating your member profile**

``` pre
$ cat profile { "member-profile": { "domain_list_action": "include", "domain_list_targets": [ { "id": 23620 }, { "id": 23625 } ], "country_targets": [ { "id": 1 }, { "id": 2 } ] } } $ curl -b cookies -X POST -d @profile 'https://api.appnexus.com/member-profile' { "response": { "status": "OK", "id": 121740 } } 
```

**Updating your member profile to accept third-party impressions from an
additional country**

``` pre
$ cat profile_update { "member-profile": { "country_targets": [ { "id": 233 }, { "id": 59 } ] } } $ curl -b cookies -X PUT -d @profile_update 'https://api.appnexus.com/member-profile' { "response": { "status": "OK", "id": 121740 } } 
```

**Viewing your member profile**

``` pre
$ curl -b cookies 'https://api.appnexus.com/member-profile' { "response": { "status": "OK", "member-profile": { "id": 121740, "domain_list_action": "include", "country_targets": [ { "id": 233, "name": "United States", "code": "US"  }, {  "id": 58, "name": "Czech Republic", "code": "CZ" }, { "id": 59, "name": "Germany", "code": "DE" } ], "domain_list_targets": [ { "id": "23620", "name": "Domain List 1", "description": "Include Domain List 1", "type": "white" }, { "id": "23625", "name": "Domain List 2", "description": "Include Domain List 2", "type": "white" } ], "last_modified": "2011-12-15 16:57:51" }, "count": 1, "start_element": 0, "num_elements": 100 } } 
```



**Require Transparency and Consent Framework String**

``` pre
{
    "profile": {
        "require_transparency_and_consent_framework_string": "false",
         
    }
}
```








