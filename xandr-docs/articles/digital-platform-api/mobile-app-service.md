---
Title : Mobile App Service
Description : This read-only service is used to retrieve **mobile apps that have been
ms.date: 10/28/2023
ms.custom: digital-platform-api
audited by Xandr**, as well as their associated
instances. For the purposes of this service, a *mobile app* is defined
---


# Mobile App Service



This read-only service is used to retrieve **mobile apps that have been
audited by Xandr**, as well as their associated
instances. For the purposes of this service, a *mobile app* is defined
as the canonical representation of an application, while a version of
that app designed to run on a particular device (a "port") would be an
*instance* of that app. This is analogous to the distinction between a
class and an instance of a class.

For example, if `"Happy Pirate Party Pro"` is a mobile app, in order to
represent the app, its instances would include the Android version, the
iOS version, the Windows Phone version, and any other versions that run
as apps on mobile devices.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000213d__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000213d__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000213d__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__2">https://api.<span
class="ph">appnexus.com/mobile-app</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__3">Retrieve all mobile apps registered with
the system</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__2">https://api.<span
class="ph">appnexus.com/mobile-app?id=4</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__3">Retrieve information about a single
mobile app, including its instances</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__2">https://api.<span
class="ph">appnexus.com/mobile-app?search="The app name"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__3">Search for a mobile app</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000213d__entry__13"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-0000213d__entry__14" class="entry colsep-1 rowsep-1">Type
(length)</th>
<th id="ID-0000213d__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__13"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__14">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__15">When this object was registered with
our system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__13"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000213d__entry__15">The
unique ID associated with this app.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__13"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__14">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__15">When this object was last updated.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__13"><code
class="ph codeph">mobile-app-instance</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__14">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000213d__entry__15">A
list of the instances of this app that are registered with our system.
This field is returned only when requesting a specific mobile app.
<p>For more information about an individual app instance, use the <a
href="mobile-app-instance-service.md"
class="xref" target="_blank">Mobile App Instance Service</a>.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__13"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000213d__entry__15">The
name of the app.</td>
</tr>
</tbody>
</table>

**Mobile App Instance**

Each object in the `mobile-app-instance` array contain the following
fields, which describe an instance of an app. For more information, see
the <a
href="mobile-app-instance-service.md"
class="xref" target="_blank">Mobile App Instance Service</a> (for
reading) and <a
href="mobile-app-instance-list-service.md"
class="xref" target="_blank">Mobile App Instance List Service</a> (for
writing).

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000213d__entry__31"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-0000213d__entry__32"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000213d__entry__33"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__31"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__32">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__33">When this instance was created.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__31"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__32">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000213d__entry__33">The
ID associated with this instance.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__31"><code
class="ph codeph">instance-bundle</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__32">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000213d__entry__33">The
identifying information associated with the instance of an app.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__31"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__32">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__33">When this instance was last
updated.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__31"><code
class="ph codeph">mobile_app_store</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__32">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000213d__entry__33">This wrapper object holds the name,
URL, and ID of the app store where this instance of the app is being
made available.</td>
</tr>
</tbody>
</table>





## Examples

**Retrieve all mobile apps registered with the system**

``` pre
$ curl -b cookies https://api.appnexus.com/mobile-app
{
    "response": {
        "status": "OK",
        "count": 163,
        "start_element": 0,
        "num_elements": 100,
        "mobile-apps": [
            {
                "id": 1,
                "name": "Best App Ever, no Really",
                "last_modified": "2013-10-24 13:50:32",
                "created_on": "2013-10-24 13:50:32"
            },
            ...
        ],
        ...
        }
}
```

**Retrieve information about a single mobile app, including its
instances**

In this example, we retrieve information about a single mobile app,
including information about its registered instances. You can use the
instance ID to get information using the <a
href="mobile-app-instance-service.md"
class="xref" target="_blank">Mobile App Instance Service</a>.

``` pre
$ curl -b cookies https://api.appnexus.com/mobile-app?id=4
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "mobile-app": {
            "id": 4,
            "name": "AutoCreated_958_2i0H2F2d7o9x6k5r4M7l4I1s8r4l4y9",
            "verified": false,
            "last_modified": "2014-02-13 17:07:32",
            "created_on": "2014-02-13 17:07:32",
            "mobile-app-instance": [
                {
                    "id": 4,
                    "last_modified": "2014-02-13 17:07:32",
                    "created_on": "2014-02-13 17:07:32",
                    "mobile_app_store": null,
                    "instance-bundle": [
                        {
                            "bundle_id": "Android, com.king.candycrushsaga",
                            "os_family_id": 2,
                            "instance_priority_id": 1,
                            "last_modified": "2014-02-13 17:07:32",
                            "created_on": "2014-02-13 17:07:32"
                        }
                    ]
                }
            ]
        }
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
  href="mobile-app-instance-service.md"
  class="xref" target="_blank">Mobile App Instance Service</a>
- <a
  href="mobile-app-instance-list-service.md"
  class="xref" target="_blank">Mobile App Instance List Service</a>






