---
Title : Postal Code Service
Description : The Postal Code Service is a read-only service. This service can be used
ms.date : 10/28/2023
---


# Postal Code Service



The Postal Code Service is a read-only service. This service can be used
to retrieve postal code IDs, that are registered with
Xandr, for geography targeting purposes when
setting up a  or for configuring reports that
support that dimension. The main use case for the Postal Code Service is
to keep your postal code database up-to-date with
Xandr's. To access the changes that were made to
the Xandr database since the last call that you
made to the service, make sure to use the `min_last_modified` field in
your call. 



<b>Warning:</b> Due to the large number of GET
calls you would need to make to obtain a complete list of postal codes
(as a result of pagination), we recommend the following:

- create a cache and populate it with a GET call for all objects on the
  service
- then, for subsequent GET calls, use the `min_last_modified` filter to
  obtain updates (once per hour or once per day, since postal codes are
  updated infrequently)

You should only omit the `min_last_modified` filter if you are querying
this service for the first time.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008d1f__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00008d1f__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00008d1f__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008d1f__entry__2"><a
href="https://api.adnxs.com/postal-code" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/postal-code</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008d1f__entry__3">View
all postal codes</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008d1f__entry__2"><a
href="https://api.adnxs.com/postal-code?country_code=COUNTRY_CODE"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/postal-code?country_code=COUNTRY_CODE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008d1f__entry__3">View
postal codes in a specific country</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008d1f__entry__2"><a
href="https://api.adnxs.com/postal-code/meta" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/postal-code/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008d1f__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008d1f__entry__13"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00008d1f__entry__14" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00008d1f__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__13"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__14">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__15">Designates whether the postal code is
active. If <code class="ph codeph">true</code>, the postal code is
active and available for targeting. If <code
class="ph codeph">false</code>, there is no geo-location data for the
postal code and so targeting is not possible.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__13"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008d1f__entry__15">The
postal code can be an alphanumeric strings of up to 14 characters and
can contain a space or hyphen.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__13"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008d1f__entry__15">The
<a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2" class="xref"
target="_blank">ISO Alpha-2 code</a> for the country to which the city
belongs. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country codes.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__13"><code
class="ph codeph">country_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008d1f__entry__15">The
ID of the country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__13"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008d1f__entry__15">The
name of the country to which the city belongs. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country names.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__13"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008d1f__entry__15">The
ID of the postal code.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__13"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008d1f__entry__14">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008d1f__entry__15">The
date and time when the postal code was last modified.</td>
</tr>
</tbody>
</table>




## Examples

**View all postal codes in Canada**

``` pre
$ curl -b cookies -c cookies -X GET  'https://api.adnxs.com/postal-code?country_code=CA'
{
        "response": {
        "status": "OK",
        "count": 44101,
        "start_element": null,
        "num_elements": null,
        "postal_codes": [
            {
                "id": 119892,
                "code": "A09 0A1",
                "country_id": "41",
                "country_code": "CA",
                "country_name": "Canada"
            },
            {
                "id": 119893,
                "code": "A0A 0B3",
                "country_id": "41",
                "country_code": "CA",
                "country_name": "Canada"
            },
            {
                "id": 119894,
                "code": "A0A 0C3",
                "country_id": "41",
                "country_code": "CA",
                "country_name": "Canada"
            },
            ...
      ]
   }
}
```

**View postal code by postal code ID**

``` pre
$ curl -b cookies -c cookies  'https://api.adnxs.com/postal-code?id=10'
      
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "postal_code": {
            "id": 10,
            "code": "00021",
            "country_id": "113",
            "country_code": "IT",
            "country_name": "Italy"
        }
    }
}
```

 **View all postal codes since last modified**

``` pre
$ curl -b cookies -c cookies -X GET  'https://api.adnxs.com/postal-code?min_last_modified=2017-06-28+15:02:37
{
    "response": {
        "status": "OK",
        "count": 8735,
        "start_element": null,
        "num_elements": null,
        "postal_codes": [{
            "id": 322567,
            "code": "2645-018",
            "active": true,
            "country_id": "186",
            "country_code": "PT",
            "country_name": "Portugal",
            "last_modified": "2017-06-26 15:39:18"
         },
         {
            "id": 322568,
            "code": "BS5 7XA",
            "active": true,
            "country_id": "80",
            "country_code": "GB",
            "country_name": "United Kingdom",
            "last_modified": "2017-06-26 15:39:18"
         },
         {
            "id": 322569,
            "code": "DE7 8HB",
            "active": true,
            "country_id": "80",
            "country_code": "GB",
            "country_name": "United Kingdom",
            "last_modified": "2017-06-26 15:39:18"
      },
      ...
    ]
  }
}
```




## Related Topics

- <a href="api-best-practices.md" class="xref">API Best Practices</a>
- <a href="api-semantics.md" class="xref">API Semantics</a>
- <a href="city-service.md" class="xref">City Service</a>
- <a href="country-service.md" class="xref">Country Service</a>






