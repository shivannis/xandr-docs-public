---
Title : Domain List Service
Description : <div id="buy-side-service-template__note_nnq_ffp_wwb"
Note: The "whitelist" and "blacklist"
terminology is being changed to "allowlist" and "blocklist",
respectively, for our APIs in the future. This is a part of an ongoing
---


# Domain List Service





<div id="buy-side-service-template__note_nnq_ffp_wwb"


Note: The "whitelist" and "blacklist"
terminology is being changed to "allowlist" and "blocklist",
respectively, for our APIs in the future. This is a part of an ongoing
effort to evaluate our current terminology usage and usher in more
inclusive terminology for Xandr platforms.



The Domain List service lets you define a list of domains that can be
included or excluded from a campaign's targeting profile. Domain lists
in targeting profiles are used to place domains with similar
characteristics in groups that you can use to easily include or exclude
domains from campaign targeting. They're generally used as *allowlists*
or *blocklists.* Allowlists contain domains that you want to include in
your campaign targeting, and blocklists contain domains that you want to
exclude. (See `domain_list_targets` and `domain_list_action` in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> to see how to include
these lists in your profiles).





## REST API



<table
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/domain-list" class="xref"
target="_blank">https://api.appnexus.com/domain-list</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all domain lists.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/domain-list?id=DOMAIN_LIST_ID"
class="xref"
target="_blank">https://api.appnexus.com/domain-list?id=DOMAIN_LIST_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific domain list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/domain-list?search=SEARCH_TERM"
class="xref"
target="_blank">https://api.appnexus.com/domain-list?search=SEARCH_TERM</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Search
for domain lists with names or descriptions containing certain
characters.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/domain-list" class="xref"
target="_blank">https://api.appnexus.com/domain-list</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new domain list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/domain-list?id=DOMAIN_LIST_ID"
class="xref"
target="_blank">https://api.appnexus.com/domain-list?id=DOMAIN_LIST_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an existing domain list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/domain-list?id=DOMAIN_LIST_ID"
class="xref"
target="_blank">https://api.appnexus.com/domain-list?id=DOMAIN_LIST_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Delete
an existing domain list.</td>
</tr>
</tbody>
</table>







## JSON Fields



<table
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">A
description of the domain list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">domains</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Array
of domains in the format <code class="ph codeph">["</code><a
href="http://domain1.com/" class="xref" target="_blank"><code
class="ph codeph">domain1.com</code></a><code
class="ph codeph">", "</code><a href="http://domain2.com/" class="xref"
target="_blank"><code class="ph codeph">domain2.com</code></a><code
class="ph codeph">", ... , "</code><a href="http://domain10.com/"
class="xref" target="_blank"><code
class="ph codeph">domain10.com</code></a><code
class="ph codeph">"]</code>.</p>

<div id="buy-side-service-template__note_l1m_mfp_wwb"
class="note note_note">
Note:
<p>"www" is stripped from domains</p>
<p>Domains which begin with <code class="ph codeph">"www"</code> will
have the <code class="ph codeph">"www"</code> substring stripped out
before being stored in our system. For example, <code
class="ph codeph">"</code><a href="http://www.example.org/" class="xref"
target="_blank"><code class="ph codeph">www.example.org</code></a><code
class="ph codeph">"</code> will be shortened to <code
class="ph codeph">"</code><a href="http://example.org/" class="xref"
target="_blank"><code class="ph codeph">example.org</code></a><code
class="ph codeph">"</code></p>

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
internal system identifier for the domain list.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">PUT</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Read-only
timestamp of when the domain list was last changed.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
name of the domain list as specified by the user. This name must be
unique.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
type of domain list. Possible values are <strong>black</strong> and
<strong>white</strong>. This value is strictly informational; it does
not determine whether the list is included or excluded in targeting.</p>
<ul>
<li><strong>Default:</strong> "white"</li>
</ul></td>
</tr>
</tbody>
</table>







## Examples

**Adding a domain list**

<div id="buy-side-service-template__p-20eb2a6d-1e56-42a6-96ee-f5d79f857f38"
>

``` pre
$ cat domain-list

{
   "domain-list":{
      "name":"Domains to target",
      "description":"A list of the domains to target for Campaign A",
      "type":"white",
      "domains":["domain-a.com", "domain-b.net", "domain-c.org"]
   }
}

$ curl -b cookies -c cookies -X POST --data-binary @domain-list 'https://api.appnexus.com/domain-list'

{
   "response":{
      "status":"OK",
      "id":9
   }
}
```



**Viewing domain list 9**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/domain-list?id=9'

{
   "response":{
      "domain-list":{
         "id":9,
         "name":"Domains to target",
         "description":"A list of the domains to target for Campaign A",
         "type":"white",
         "domains":["domain-a.com", "domain-b.net", "domain-c.org"]
      }
      "status":"OK"
   }
}
```

**Adding domain lists to profile 35 as a "allowlist"**

``` pre
$ cat domain-list-profile

{
   "profile":{
      "id":35,
      "domain_list_targets":[{"id":9}, {"id":10}, {"id":15}, {"id":18}],
      "domain_list_action":"include",
   }
}

$ curl -b cookies -c cookies -X PUT --data-binary @domain-list-profile 'https://api.appnexus.com/profile?id=35'

{
   "response":{
      "status":"OK",
      "id":35
   }
}
```

**Searching for domain lists with names or descriptions containing
"test"**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/domain-list?search=test'

{
  "response": {
    "status": "OK",
    "domain-lists": [
      {
        "id": 1733,
        "name": "Add Test",
        "description": "",
        "type": "white",
        "domains": [
          "amblergazette.com",
          "facebook.com",
          "google.com",
          "zwire.com"
        ],
        "last_modified": "2011-03-10 18:03:07"
      }
      }
```



<div id="buy-side-service-template__section_uft_vgp_wwb"
>

## **Related Topics**



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
  class="xref" target="_blank">API Best Practices</a>








