---
Title : Mobile App Instance Service
Description : This **read-only** service is used to retrieve app "instances". Each
ms.date: 10/28/2023
ms.custom: digital-platform-api
---


# Mobile App Instance Service



This **read-only** service is used to retrieve app "instances". Each
object retrieved by a call to this service is an "instance" of an app
described in the <a
href="mobile-app-service.md"
class="xref" target="_blank">Mobile App Service</a>. App instances can
be created via the <a
href="mobile-app-instance-list-service.md"
class="xref" target="_blank">Mobile App Instance List Service</a>.

You can add or remove mobile app instances from your campaign targeting
the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> – see the
<a href="mobile-app-instance-service.md#ID-00002024__example"
class="xref">Examples</a> section below.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002024__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00002024__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00002024__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002024__entry__2"><a
href="https://api.appnexus.com/mobile-app-instance?id=8" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/mobile-app-instance?id=8</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__3">Retrieve a specific instance of a mobile
app</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002024__entry__2"> <a
href="https://api.appnexus.com/mobile-app-instance" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/mobile-app-instance</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002024__entry__3">View
all of the mobile app instances in our system</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002024__entry__10"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00002024__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002024__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__10"><code
class="ph codeph">instance-bundle</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__11">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002024__entry__12">The
identifying information associated with this particular instance of an
app. For details, see <a
href="mobile-app-instance-service.md#ID-00002024__inst"
class="xref">Instance Bundle</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002024__entry__12">The
ID of this app instance.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__10"><code
class="ph codeph">mobile_app_store_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002024__entry__12">The
mobile app store this instance is available in. For more information,
see the <a
href="mobile-app-store-service.md"
class="xref" target="_blank">Mobile App Store Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__10"><code
class="ph codeph">store.name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002024__entry__12">The
name of the mobile app store this instance of the app is available
in.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__10"><code
class="ph codeph">store.url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002024__entry__12">The
app store URL where this instance of the app can be found.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__10"><code
class="ph codeph">mobile_app_store</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__11">multi_object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002024__entry__12">The
mobile app store this instance of the app can be found in.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__11">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__12">When this app instance was last updated
in our system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__10"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__11">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__12">When this app instance was created in
our system.</td>
</tr>
</tbody>
</table>

**Instance Bundle**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002024__entry__37"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00002024__entry__38"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002024__entry__39"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__37"><code
class="ph codeph">bundle_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__38">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002024__entry__39">The
bundle ID associated with this app.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__37"><code
class="ph codeph">os_family_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__38">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002024__entry__39">The
operating system family ID associated with this app. For details, see
the <a
href="operating-system-family-service.md"
class="xref" target="_blank">Operating System Family Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__37"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__38">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__39">When this instance's bundle was last
updated in our system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__37"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__38">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002024__entry__39">When this instance's bundle was created
in our system.</td>
</tr>
</tbody>
</table>




## Examples

**Get an existing mobile app instance**

You can view an existing mobile app instance with a `GET` call:

``` pre
$ curl -b cookies 'https://api.appnexus.com/mobile-app-instance?id=108
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "mobile-app-instance": {
            "id": 108,
            "last_modified": "2014-01-16 17:08:50",
            "created_on": "2014-01-16 17:08:50",
            "mobile_app_store": "",
            "instance-bundle": [
                {
                    "bundle_id": "3223423",
                    "os_family_id": 3,
                    "instance_priority_id": 1,
                    "last_modified": "2014-01-23 20:42:57",
                    "created_on": "2014-01-16 17:07:24"
                }
            ]
        }
    }
}
```

**Add a mobile app instance to your campaign targeting profile**

``` pre
$ cat profile-update.json
 
{
    "profile": {
        "mobile_app_instance_action_include": true,
        "mobile_app_instance_targets": [
            {
                "id": 56
            }
        ]
    }
}
 
$ curl -b cookies -X PUT -d @profile-update.json 'https://api.appnexus.com/profile?id=140537'
 
{
    "response":{
         "profile":{
             "mobile_app_instance_targets":[
                {
                    "deleted":false,
                     "os_family_id":2,
                     "bundle_id":"dsad.com.com",
                     "id":56
                }
            ],
             ...SNIP...
        },
         "num_elements":100,
         "start_element":0,
         "id":"140537",
         "count":1,
         "status":"OK"
    }
}
```





## Related Topics

- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="mobile-app-service.md"
  class="xref" target="_blank">Mobile App Service</a>
- <a
  href="mobile-app-store-service.md"
  class="xref" target="_blank">Mobile App Store Service</a>
- <a
  href="mobile-app-instance-list-service.md"
  class="xref" target="_blank">Mobile App Instance List Service</a>






