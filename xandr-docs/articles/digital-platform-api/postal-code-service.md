---
Title : Postal Code Service
Description : The Postal Code Service is a read-only service. This service can be used
ms.date: 10/28/2023
ms.custom: digital-platform-api
---


# Postal Code Service



The Postal Code Service is a read-only service. This service can be used
to retrieve postal code IDs, that are registered with
Xandr for geography targeting purposes when
setting up a  or for configuring reports that
support that dimension. The main use case for the Postal Code Service is
to keep your postal code database up-to-date with
Xandr's. To access the changes that were made to
the database since the last call that you made to the service, make sure
to use the `min_last_modified` field in your call. 



<b>Warning:</b>

Due to the large number of GET calls you would need to make to obtain a
complete list of postal codes (as a result of pagination), we recommend
the following:

- Create a cache and populate it with a GET call for all objects on the
  service
- Then, for subsequent GET calls, use the `min_last_modified` filter to
  obtain updates (once per hour or once per day, since postal codes are
  updated infrequently)

You should only omit the `min_last_modified` filter if you are querying
this service for the first time.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000302e__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000302e__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000302e__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__2"><a
href="https://api.appnexus.com/postal-code" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/postal-code</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__3">View
all postal codes using <a
href="05---throttling-pagination-and-filtering.md"
class="xref" target="_blank">pagination</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__2"><a
href="https://api.appnexus.com/postal-code?min_last_modified=LAST_MODIFIED"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/postal-code?min_last_modified=LAST_MODIFIED</a>
<p><a
href="https://api.appnexus.com/postal-code?max_last_modified=LAST_MODIFIED"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/postal-code?max_last_modified=LAST_MODIFIED</a></p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__3">View
all postal codes since last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__2"><a
href="https://api.appnexus.com/postal-code?country_code=COUNTRY_CODE"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/postal-code?country_code=COUNTRY_CODE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__3">View
postal codes in a specific country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__2"><a
href="https://api.appnexus.com/postal-code/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/postal-code/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000302e__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000302e__entry__17" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-0000302e__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__18">The
ID of the postal code.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__16"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__18">The
postal code can be an alphanumeric string of up to 14 characters and can
contain a space or hyphen.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__16"><code
class="ph codeph">country_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__18">The
ID of the country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__16"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__18">The
<a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2" class="xref"
target="_blank">ISO Alpha-2 code</a> for the country to which the city
belongs. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country codes.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__16"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__18">The
name of the country to which the city belongs. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country names.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__16"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__17">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000302e__entry__18">The
date and time when the postal code was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__16"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__17">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000302e__entry__18">Designates whether the postal code is
active. If <code class="ph codeph">true</code>, the postal code is
active and available for targeting. If <code
class="ph codeph">false</code>, there is no geo-location data for the
postal code and so targeting is not possible.

<b>Note:</b>
<p>The postal codes may occasionally become active or inactive based on
changes to IP addressing or changes in geolocation technologies, as well
as changes to geographical borders.</p>
</td>
</tr>
</tbody>
</table>





## Examples

**View all postal codes**

``` pre
$ curl -b cookies -c cookies -X GET  'https://api.appnexus.com/postal-code'
      
{
    "response": {
        "status": "OK",
        "count": 238899,
        "start_element": 0,
        "num_elements": 100,
        "postal_codes": [
            {
                "id": 120560,
                "code": "AD100",
                "country_id": "4",
                "country_code": "AD",
                "country_name": "Andorra"
            },
            {
                "id": 120561,
                "code": "AD200",
                "country_id": "4",
                "country_code": "AD",
                "country_name": "Andorra"
            },
            {
                "id": 120562,
                "code": "AD300",
                "country_id": "4",
                "country_code": "AD",
                "country_name": "Andorra"
            },
            {
                "id": 120563,
                "code": "AD400",
                "country_id": "4",
                "country_code": "AD",
                "country_name": "Andorra"
            },
            {
                "id": 120564,
                "code": "AD500",
                "country_id": "4",
                "country_code": "AD",
                "country_name": "Andorra"
            },
            {
                "id": 120565,
                "code": "AD600",
                "country_id": "4",
                "country_code": "AD",
                "country_name": "Andorra"
            },
            {
                "id": 120566,
                "code": "AD700",
                "country_id": "4",
                "country_code": "AD",
                "country_name": "Andorra"
            },
            {
                "id": 173241,
                "code": "1701",
                "country_id": "6",
                "country_code": "AF",
                "country_name": "Afghanistan"
            },
            {
                "id": 173242,
                "code": "3001",
                "country_id": "6",
                "country_code": "AF",
                "country_name": "Afghanistan"
            },
            ...
       ]
    }
}
```

**View all postal codes since last modified**

``` pre
$ curl -b cookies -c cookies -X GET  'https://api.appnexus.com/postal-code?min_last_modified=2016-05-18+15:29:37'
      
{
    "response": {
        "status": "OK",
        "count": 247890,
        "start_element": 0,
        "num_elements": 100,
        "postal_codes": [
            {
                "id": 1,
                "code": "00010",
                "active": true,
                "country_id": "113",
                "country_code": "IT",
                "country_name": "Italy",
                "last_modified": "2015-09-15 14:40:30"
            },
            {
                "id": 2,
                "code": "00011",
                "active": true,
                "country_id": "113",
                "country_code": "IT",
                "country_name": "Italy",
                "last_modified": "2015-09-15 14:40:32"
            },
            {
                "id": 3,
                "code": "00012",
                "active": true,
                "country_id": "113",
                "country_code": "IT",
                "country_name": "Italy",
                "last_modified": "2015-09-15 17:29:04"
            },
            {
                "id": 4,
                "code": "00013",
                "active": true,
                "country_id": "113",
                "country_code": "IT",
                "country_name": "Italy",
                "last_modified": "2015-09-15 17:29:04"
            },
            {
                "id": 5,
                "code": "00015",
                "active": true,
                "country_id": "113",
                "country_code": "IT",
                "country_name": "Italy",
                "last_modified": "2015-09-15 17:29:05"
            },
            {
                "id": 6,
                "code": "00017",
                "active": true,
                "country_id": "113",
                "country_code": "IT",
                "country_name": "Italy",
                "last_modified": "2015-09-15 17:29:05"
            },
            {
                "id": 7,
                "code": "00018",
                "active": true,
                "country_id": "113",
                "country_code": "IT",
                "country_name": "Italy",
                "last_modified": "2015-09-15 17:29:05"
            },
            ...
       ]
    }
}
```

**View all postal codes in Canada**

``` pre
$ curl -b cookies -c cookies -X GET  'https://api.appnexus.com/postal-code?country_code=CA'
      
{
    "response": {
        "status": "OK",
        "count": 44101,
        "start_element": 0,
        "num_elements": 100,
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
            {
                "id": 119895,
                "code": "A0A 1B0",
                "country_id": "41",
                "country_code": "CA",
                "country_name": "Canada"
            },
            {
                "id": 119896,
                "code": "A0A 1C0",
                "country_id": "41",
                "country_code": "CA",
                "country_name": "Canada"
            },
            {
                "id": 119897,
                "code": "A0A 1E0",
                "country_id": "41",
                "country_code": "CA",
                "country_name": "Canada"  
        },
        ...
      ],
   }
}
```

**View postal code by postal code ID**

``` pre
$ curl -b cookies -c cookies  'https://api.appnexus.com/postal-code?id=10'
      
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "postal_code": {
            "id": 10,
            "code": "00021",
            "country_id": "113",
            "country_code": "IT",
            "country_name": "Italy",
            "last_modified": "2015-09-15 17:29:05"
        }
    }
    }
```





## Related Topics

- <a
  href="05---throttling-pagination-and-filtering.md"
  class="xref" target="_blank">Throttling, Paging, and Filtering</a>
- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>
- <a href="city-service.md"
  class="xref" target="_blank">City Service</a>
- <a
  href="country-service.md"
  class="xref" target="_blank">Country Service</a>






