---
Title : Domain Audit Status Service
Description : The Domain Audit Status Service lets you check whether or not specific
domains are on the Xandr platform and, if they
are, how Xandr has classified them. This service
---


# Domain Audit Status Service



The Domain Audit Status Service lets you check whether or not specific
domains are on the Xandr platform and, if they
are, how Xandr has classified them. This service
is particularly useful for sellers who are interested in migrating
domains onto the platform but first want to make sure that the domains
have not already been rejected by Xandr. Also,
since audited domains generally see more fill, sellers can use this
service to identify domains already on the platform that they would like
Xandr to audit.

Here's how it works:

1.  You POST a JSON file containing the domains that you are interested
    in. The JSON must be formatted as follows:

    ``` pre
    {"urls": ["URL1.com","URL2.com","URL3.de"]}
    ```

    

    Note:
    Xandr does not store the "https://" or
    "www." prefix for domains. Since this service will look for domains
    **exactly** as they are written in your JSON, it is therefore best
    not to include these prefixes in the domains you want to check.

    

2.  The response shows whether or not each domain is on the
    Xandr platform and, if it is, how
    Xandr has audited it. For the full list of
    details provided about each domain in the response, see
    <a href="domain-audit-status-service.html#ID-000013a2__JF"
    class="xref">JSON Fields</a> below.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000013a2__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000013a2__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000013a2__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__entry__2">https://api.<span
class="ph">appnexus.com/url-audit-search</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000013a2__entry__3">View
the audit status of one or more domains

Note:
<p>This is a read-only service. Although you POST a JSON file, no
objects are created in the system.</p>
</td>
</tr>
</tbody>
</table>



<div id="ID-000013a2__JF" >

## JSON Fields

For domains on the Xandr platform, all of the
following fields will be shown in the response. For domains not on the
Xandr platform, only the `url` and `found` (with
a value of `false`) fields will be shown in the response.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000013a2__JF__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000013a2__JF__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000013a2__JF__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__1"><code
class="ph codeph">audit_datetime</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__3">The date and time when the domain
was audited by Xandr.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__1"><code
class="ph codeph">audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__3">The audit status of the domain.
Possible values: "unaudited", "pending", "audited", "rejected",
"unauditable", or "is_adserver".
<ul>
<li><code class="ph codeph">audited</code> - The domain has passed the
Xandr audit.</li>
<li><code class="ph codeph">rejected</code> - The domain app has failed
the Xandr audit (due to <span
class="ph">Xandr policy violations).</li>
<li><code class="ph codeph">unaudited</code> - the domain was not
audited.</li>
<li><code class="ph codeph">unauditable</code> - the domain was not
auditable.</li>
<li><code class="ph codeph">pending</code> - <span
class="ph">Xandr audit is still pending for the domain (default
value).</li>
<li><code class="ph codeph">is_adserver</code> - the domain was not
audited and was detected as an ad server domain.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__1"><code
class="ph codeph">content_category_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__3">The content category of the domain,
as determined by Xandr. If <code
class="ph codeph">audit_status</code> is "rejected", this will be
null. You can use the read-only <a
href="https://docs.xandr.com/bundle/xandr-api/page/content-category-service.html"
class="xref" target="_blank">Content Category Service</a> to view more
details about specific content categories.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__1"><code
class="ph codeph">found</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__3">If true, the domain is on the <span
class="ph">Xandr platform.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__3">The Xandr ID
for the domain.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__1"><code
class="ph codeph">intended_audience</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__3">The intended audience of the domain,
as determined by Xandr. Possible values:
"mature", "young_adult", "children", or "general".
<p>If <code class="ph codeph">audit_status</code> is "rejected", this
will be null.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__1"><code
class="ph codeph">reason</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__3">If <code
class="ph codeph">audit_status</code> is "rejected" or "unauditable",
the reason provided by Xandr. Any other status
this field will be blank.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000013a2__JF__entry__3">The domain.</td>
</tr>
</tbody>
</table>





## Examples

**View information about two domains on the platform**

``` pre
$ cat urls
{
    "urls": ["goodurl.com","badurl.com"]
}
$ curl -b cookies -c cookies -X POST -d @urls 'https://api.appnexus.com/url-audit-search'
{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": 0,
        "num_elements": 100,
        "urls": [
            {
                "id": 3456,
                "url": "goodurl.com",
                "reason": null,
                "content_category_id": 8380,
                "intended_audience": "general",
                "audit_status": "audited",
                "audit_datetime": null,
                "found": true
            },
            {
                "id": 2194,
                "url": "badurl.com",
                "reason": "Landing page contains an excessive number or density of units",
                "content_category_id": null,
                "intended_audience": null,
                "audit_status": "rejected",
                "audit_datetime": null,
                "found": true
            }
        ]
    }
}
```

**View information about two domains that are not on the platform**

``` pre
$ cat urls
{
    "urls": ["not-there1.com","not-there2.com"]
}
$ curl -b cookies -c cookies -X POST -d @urls 'https://api.appnexus.com/url-audit-search'
{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": null,
        "num_elements": null,
        "urls": [
            {
                "url": "not-there1.com",
                "found": false
            },
            {
                "url": "not-there2.com",
                "found": false
            }
        ]
    }
}
```

**Determine which domains in a list have been audited **

In this example, we search for two domains
(<a href="https://auditedurl.com" class="xref"
target="_blank">auditedurl.com</a> and
<a href="https://notauditedurl.com" class="xref"
target="_blank">notauditedurl.com</a>). Both domains are on the
platform, but information is returned only for the one that meets the
query string criteria (`audit_status=audited`). The domain that does not
meet the query criteria is still returned in the results, but with a
`found` value of `false` because it wasn't found with the given query.

``` pre
$ cat urls
{
    "urls": ["auditedurl.com","notauditedurl.com"]
}
$ curl -b cookies -c cookies -X POST -d @urls 'https://api.appnexus.com/url-audit-search?audit_status=audited'
{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": 0,
        "num_elements": 100,
        "urls": [
            {
                "id": 3456,
                "url": "auditedurl.com",
                "reason": null,
                "content_category_id": 8380,
                "intended_audience": "general",
                "audit_status": "audited",
                "audit_datetime": null,
                "found": true
            },
            {
                "id": 7890,
                "found": false
            }
        ]
    }
}
```






