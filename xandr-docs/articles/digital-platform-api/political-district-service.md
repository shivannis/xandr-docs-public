---
Title : Political District Service
Description : The Political District Service allows political buyers to target
geographies based on legislative district boundaries.
---


# Political District Service



The Political District Service allows political buyers to target
geographies based on legislative district boundaries.

The feature is available within the existing geo targeting module in
Invest, and it's called "Political District (US Only)". It allows
political buyers to target the following political geography levels:

- Congressional District
- State Senate District
- State House District  
    



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002e31__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00002e31__entry__2"
class="entry colsep-1 rowsep-1">Endpoint </th>
<th id="ID-00002e31__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__2"><a
href="https://api.appnexus.com/political-district?id=DISTRICT_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/political-district?id=DISTRICT_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__3">View
an existing political district</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__2"><a
href="https://api.appnexus.com/political-district?search=SEARCH_TERM"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/political-district?search=SEARCH_TERM</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__3">Search a political district (only
available for <code class="ph codeph">district_id, </code><code
class="ph codeph">district_name, district_type_id, region_id</code>)</td>
</tr>
</tbody>
</table>





## JSON Fields

**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002e31__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002e31__entry__11" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00002e31__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__12">The
ID of the political district </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__12">The
name of the political district </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__10"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__11">string </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__12">(Optional) The detailed description of
political district information</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__10"><code
class="ph codeph">postal_codes_count</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__12">The
total number of post codes belonging to a particular district</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__10"><code
class="ph codeph">postal_code_list_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__12">The
ID of the postal code list associated with political district</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__10"><code
class="ph codeph">postal_codes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__11">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__12">The
postal codes that are to be included in the postal code list. For
example,
<pre class="pre codeblock"><code>&quot;postal_codes&quot;:[
            {&quot;id&quot;: 1},
            {&quot;id&quot;: 2},
            {&quot;id&quot;: 3}
         ]</code></pre>
<p><strong>Required On</strong>: POST and PUT</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__10"><code
class="ph codeph">political_district</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__11">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__12">The
list details the complete information for political district</td>
</tr>
</tbody>
</table>

**Postal Code Object**

The postal_codes object contains the following fields: 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002e31__entry__34"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002e31__entry__35"
class="entry colsep-1 rowsep-1">Type(length)</th>
<th id="ID-00002e31__entry__36"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__34"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__35">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__36">The
ID of the postal code.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__34"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__35">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__36">The
postal code, which can be an alphanumeric string containing 5
characters.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__34"><code
class="ph codeph">country_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__35">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__36">The
ID associated with the country</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__34"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__35">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__36">The
status of the postal code, which highlights if the postal code is
active/inactive</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__34"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__35">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__36">The <a
href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2" class="xref"
target="_blank">ISO Alpha-2 code</a> for the country to which the city
belongs. To retrieve a complete list of country codes, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/country-service.html"
class="xref" target="_blank">Country Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__34"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__35">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__36">The
name of the country to which the city belongs. To retrieve a complete
list of country names, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/country-service.html"
class="xref" target="_blank">Country Service</a>.</td>
</tr>
</tbody>
</table>

**Political District Object**

The political_district object contains the following fields: 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002e31__entry__55"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002e31__entry__56" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00002e31__entry__57"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__55"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__56">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__57">The
ID of the political district</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__55"><code
class="ph codeph">district_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__56">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__57">The
name of the political district</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__55"><code
class="ph codeph">district_type_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__56">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__57">The
type of district. Possible values are:
<ol>
<li>Congress<br />
</li>
<li>State House<br />
</li>
<li>State Senate</li>
</ol></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__55"><code
class="ph codeph">region_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__56">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__57">The
region_id is obtained by the API, from the region_code which is passed
in the request header</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__55"><code
class="ph codeph">postal_code_list_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__56">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__57">The
ID of postal code list</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__55"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__56">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__57"><ul>
<li><strong>Read Only</strong></li>
</ul>
<p>The time of creation of the political district list.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__55"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__56">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__57"><ul>
<li><strong>Read Only</strong></li>
</ul>
<p>The time of last modification made to the political district
list.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__55"><code
class="ph codeph">country_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__56">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__57">The
ID associated with the country</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__55"><code
class="ph codeph">region_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002e31__entry__56">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002e31__entry__57">The
region_code is present in the request header which is used by the API to
find the region_id.</td>
</tr>
</tbody>
</table>





## Examples

**View an existing political district by ID**

``` pre
curl -b cookies -c cookies -s "https://api.appnexus.com/political-district?id=145125" {
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "political-district": {
            "id": 145125,
            "name": "AR State House 012",
            "description": null,
            "postal_codes_count": 7,
            "postal_code_list_id": "145125",
            "postal_codes": [
                {
                    "id": 53520,
                    "code": "72714",
                    "country_id": 233,
                    "active": true,
                    "country_code": "US",
                    "country_name": "United States"
                },
                {
                    "id": 53521,
                    "code": "72715",
                    "country_id": 233,
                    "active": true,
                    "country_code": "US",
                    "country_name": "United States"
                },
                {
                    "id": 53527,
                    "code": "72722",
                    "country_id": 233,
                    "active": true,
                    "country_code": "US",
                    "country_name": "United States"
                },
                {
                    "id": 53535,
                    "code": "72736",
                    "country_id": 233,
                    "active": true,
                    "country_code": "US",
                    "country_name": "United States"
                },
                {
                    "id": 53538,
                    "code": "72739",
                    "country_id": 233,
                    "active": true,
                    "country_code": "US",
                    "country_name": "United States"
                },
                {
                    "id": 53544,
                    "code": "72747",
                    "country_id": 233,
                    "active": true,
                    "country_code": "US",
                    "country_name": "United States"
                },
                {
                    "id": 53563,
                    "code": "72768",
                    "country_id": 233,
                    "active": true,
                    "country_code": "US",
                    "country_name": "United States"
                }
            ],
            "political_district": [
                {
                    "id": 5199,
                    "district_name": "AR State House 012",
                    "district_type_id": 2,
                    "region_id": 3921,
                    "postal_code_list_id": 145125,
                    "created_on": "2022-04-11 16:10:08",
                    "last_modified": "2022-04-11 16:10:08",
                    "country_id": 233
                }
            ]
        },
        "count": 1,
        "dbg_info": {
            "warnings": [],
            "version": "1.1.61",
            "output_term": "political-district"
        }
    }
}
```

**View an existing political district by district name**

``` pre
curl -b cookies -c cookies -s "https://api.appnexus.com/political-district?district_name=NY+State+House+001" {    
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "political-districts": [
            {
                "id": 144908,
                "name": "NY State House 001",
                "description": null,
                "postal_codes_count": 36,
                "postal_code_list_id": "144908",
                "postal_codes": [
                    {
                        "id": 8190,
                        "code": "11954",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8191,
                        "code": "11955",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8192,
                        "code": "11956",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8193,
                        "code": "11957",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8194,
                        "code": "11958",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8195,
                        "code": "11959",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8197,
                        "code": "11960",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8199,
                        "code": "11962",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8200,
                        "code": "11963",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8201,
                        "code": "11964",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8202,
                        "code": "11965",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8204,
                        "code": "11968",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8205,
                        "code": "11969",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8207,
                        "code": "11971",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8208,
                        "code": "11972",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8212,
                        "code": "11977",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 8213,
                        "code": "11978",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    }
                ],
                "political_district": [
                    {
                        "id": 4987,
                        "district_name": "NY State House 001",
                        "district_type_id": 2,
                        "region_id": 3950,
                        "postal_code_list_id": 144908,
                        "created_on": "2022-04-11 16:09:07",
                        "last_modified": "2022-04-11 16:09:07",
                        "country_id": 233
                    }
                ]
            }
        ],
        "count": 1,
        "dbg_info": {
            "warnings": [],
            "version": "1.1.61",
            "output_term": "political-districts"
        }
    }
}    
```

**View an existing political district by postal_code_list_id**

``` pre
$ curl -b cookies -X GET --url 'https://api.appnexus.com/political-district?postal_code_list_id=139897' {
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "political-districts": [
            {
                "id": 139897,
                "name": "AK Congress 01",
                "description": null,
                "postal_codes_count": 267,
                "postal_code_list_id": "139897",
                "postal_codes": [
                    {
                        "id": 70153,
                        "code": "99501",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                    },
                    {
                        "id": 70154,
                        "code": "99502",
                        "country_id": 233,
                        "active": true,
                        "country_code": "US",
                        "country_name": "United States"
                        },
```





## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
  class="xref" target="_blank">Profile Service</a>






