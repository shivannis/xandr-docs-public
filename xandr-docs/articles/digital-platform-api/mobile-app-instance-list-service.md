---
Title : Mobile App Instance List Service
Description : The Mobile App Instance List Service is used to define a list of <a
href="https://docs.xandr.com/bundle/xandr-api/page/mobile-app-instance-service.html"
---


# Mobile App Instance List Service



The Mobile App Instance List Service is used to define a list of <a
href="https://docs.xandr.com/bundle/xandr-api/page/mobile-app-instance-service.html"
class="xref" target="_blank">mobile app instances</a> that you can
target with campaigns. Think of it as the mobile app version of the <a
href="https://docs.xandr.com/bundle/xandr-api/page/domain-list-service.html"
class="xref" target="_blank">Domain List Service</a>.

Remember that a mobile app instance is a concrete representation of the
"mobile app" abstraction. For example, there will be multiple
"instances" of an application for each platform it targets, such as
Android or iOS. For more information about this distinction, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/mobile-app-service.html"
class="xref" target="_blank">Mobile App Service</a>.

This service also has the side effect of creating mobile apps in the
system if they don't already exist. These apps can then be viewed using
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/mobile-app-service.html"
class="xref" target="_blank">Mobile App Service</a>.

<div id="mobile-app-instance-list-service__section_ylm_1fc_xwb"
>

## REST API



<table id="mobile-app-instance-list-service__table_zms_bfc_xwb"
class="table">
<thead class="thead">
<tr class="header row">
<th id="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__2"><a
href="https://api.appnexus.com/mobile-app-instance-list?id=4"
class="xref"
target="_blank">https://api.appnexus.com/mobile-app-instance-list?id=4</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__3">View
a single mobile app instance list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__2"><a
href="https://api.appnexus.com/mobile-app-instance-list" class="xref"
target="_blank">https://api.appnexus.com/mobile-app-instance-list</a>(mobile
app instance list JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__3">Add
a mobile app instance list to the system.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__2"><a
href="https://api.appnexus.com/mobile-app-instance-list" class="xref"
target="_blank">https://api.appnexus.com/mobile-app-instance-list</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__3">View
all of your mobile app instance lists.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__2"><a
href="https://api.appnexus.com/domain-list?search=SEARCH_TERM"
class="xref" target="_blank">https://api.appnexus.com/</a> <a
href="https://api.appnexus.com/mobile-app-instance-list" class="xref"
target="_blank">mobile-app-instance-list</a> <a
href="https://api.appnexus.com/domain-list?search=SEARCH_TERM"
class="xref" target="_blank">?search=SEARCH_TERM</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_zms_bfc_xwb__entry__3">Search
for mobile app instances with names or descriptions containing certain
characters.</td>
</tr>
</tbody>
</table>





<div id="mobile-app-instance-list-service__section_xqb_ffc_xwb"
>

## JSON Fields



<table id="mobile-app-instance-list-service__table_dhl_gfc_xwb"
class="table">
<colgroup>
<col style="width: 26%" />
<col style="width: 21%" />
<col style="width: 52%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__1"><code
class="ph codeph">apps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__3">A
list of app instances associated with this particular app ID.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__3">The
ID of this instance list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__3"><p>The
name of this instance list.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__3">An
optional description of this instance list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__3">The
member ID associated with this app instance list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__3">When
this app instance list was last updated.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_dhl_gfc_xwb__entry__3">When
this app instance list was created.</td>
</tr>
</tbody>
</table>

**Apps**

<table id="mobile-app-instance-list-service__table_x2p_mfc_xwb"
class="table" style="width:100%;">
<colgroup>
<col style="width: 26%" />
<col style="width: 20%" />
<col style="width: 53%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__1"><code
class="ph codeph">instance_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__3">The
instance ID associated with this app instance.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__1"><code
class="ph codeph">bundle_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__3"><p>The
bundle ID associated with this app instance.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__1"><code
class="ph codeph">os_family_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__3">The
OS family ID associated with this app instance. For a complete listing
of OS family IDs, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-family-service.html"
class="xref" target="_blank">Operating System Family Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mobile-app-instance-list-service__table_x2p_mfc_xwb__entry__3">When
this app instance was last updated.</td>
</tr>
</tbody>
</table>





<div id="mobile-app-instance-list-service__section_yhv_qfc_xwb"
>

## Examples

**Add a mobile app instance list to the system**

In this example, we add a small mobile app instance list to the system
with a `POST` call.

``` pre
$ cat the-list.json
 
{
    "mobile-app-instance-list": {
        "name": "A Series of Unfortunate Apps",
        "description": "Mobile games which we'd like to exclude from our campaigns due to their complete lack of smurfiness.",
        "apps": [
            {
                "bundle_id": "com.unfortunate.screamfest",
                "os_family_id": 2
            },
            {
                "bundle_id": "com.unfortunate.eggsmash",
                "os_family_id": 2
            }
        ]
    }
}
 
$ curl -b cookies -c cookies -X POST -d @the-list.json https://api.appnexus.com/mobile-app-instance-list?member_id=1309
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 77,
        "start_element": 0,
        "num_elements": 100,
        "mobile-app-instance-list": {
            "id": 77,
            "name": "A Series of Unfortunate Apps",
            "description": "Mobile games which we'd like to exclude from our campaigns due to their complete lack of smurfiness.",
            "member_id": 1309,
            "last_modified": "2014-02-04 20:39:03",
            "created_on": "2014-02-04 20:39:03",
            "apps": [
                {
                    "instance_id": 220,
                    "last_modified": "2014-02-04 20:39:03",
                    "bundle_id": "com.unfortunate.screamfest",
                    "os_family_id": 2
                },
                {
                    "instance_id": 221,
                    "last_modified": "2014-02-04 20:39:03",
                    "bundle_id": "com.unfortunate.eggsmash",
                    "os_family_id": 2
                }
            ]
        },
        ... 
    }
}
```

**View an existing mobile app instance list**



A simple `GET` request with the object ID in the query string fetches
the object.

``` pre
$ curl -b cookies https://api.appnexus.com/mobile-app-instance-list?id=77
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "mobile-app-instance-list": {
            "id": 77,
            "name": "A Series of Unfortunate Apps",
            "description": "Mobile games which we'd like to exclude from our campaigns due to their complete lack of smurfiness.",
            "member_id": 1309,
            "last_modified": "2014-02-04 20:39:03",
            "created_on": "2014-02-04 20:39:03",
            "apps": [
                {
                    "instance_id": 220,
                    "last_modified": "2014-02-04 20:39:03",
                    "bundle_id": "com.unfortunate.screamfest",
                    "os_family_id": 2
                },
                {
                    "instance_id": 221,
                    "last_modified": "2014-02-04 20:39:03",
                    "bundle_id": "com.unfortunate.eggsmash",
                    "os_family_id": 2
                }
            ]
        },
    ...
    }
}
```



**Add a mobile app instance list to your targeting profile**



In this example, we add a fictional mobile app instance list to our
targeting profile for use by campaigns. The profile object we get back
should reflect the update. For more information about profiles, see the
<a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a>.

``` pre
$ cat update.json
 
{
    "profile": {
        "mobile_app_instance_list_targets": [
            {
                "id": 2
            }
        ],
        "mobile_app_instance_list_action_include": true
    }
}
 
$ curl -b cookies -X PUT -d @update.json 'https://api.appnexus.com/profile?id=140537'
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "140537",
        "start_element": 0,
        "num_elements": 100,
        "profile": {
            "mobile_app_instance_targets": "",
            "mobile_app_instance_list_targets": [
                {
                    "id": 2,
                    "name": "Angry List",
                    "description": "List of games that will be played by everyone",
                    "deleted": false
                }
            ],
        ...SNIP...
        }
    }
}
```





**Searching for mobile app instance lists with names or descriptions
containing "test"**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/mobile-app-instance-list?search=test'
 
{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "mobile-app-instance-lists": [{
                "id": 31,
                "name": "Sample Test IPHONE list",
                "description": "",
                "member_id": 927,
                "last_modified": "2014-02-24 18:55:57",
                "created_on": "2014-02-24 18:45:57",
                "apps": [{
                        "instance_id": 2,
                        "last_modified": "2014-02-24 18:55:57",
                        "bundle_id": "it.studios.fish",
                        "os_family_id": 3
                    },
                    {
                        "instance_id": 14576,
                        "last_modified": "2014-02-24 18:55:57",
                        "bundle_id": "587033035",
                        "os_family_id": 3
                    },
                    {
                        "instance_id": 14576,
                        "last_modified": "2014-02-24 18:55:57",
                        "bundle_id": "com.cshomegrown.LX-Player",
                        "os_family_id": 3
                    },
                    {
                        "instance_id": 14576,
                        "last_modified": "2014-02-24 18:55:57",
                        "bundle_id": "561921433",
                        "os_family_id": 3
                    }
                ],
                "num_apps": 4
            },
            {
                "id": 61,
                "name": "test",
                "description": "test APP 428312806",
                "member_id": 2350,
                "last_modified": "2014-03-13 13:13:55",
                "created_on": "2014-03-13 13:13:55",
                "apps": [{
                        "instance_id": 225,
                        "last_modified": "2014-03-13 13:13:55",
                        "bundle_id": "com.wordfeud.free",
                        "os_family_id": 3
                    },
                    {
                        "instance_id": 225,
                        "last_modified": "2014-03-13 13:13:55",
                        "bundle_id": "428312806",
                        "os_family_id": 3
                    }
                ],
                "num_apps": 2
            }
        ]
    }
}
```





<div id="mobile-app-instance-list-service__section_blt_dgc_xwb"
>

## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/mobile-app-instance-service.html"
  class="xref" target="_blank">Mobile App Instance Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/mobile-app-service.html"
  class="xref" target="_blank">Mobile App Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/mobile-app-store-service.html"
  class="xref" target="_blank">Mobile App Store Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
  class="xref" target="_blank">API Best Practices</a>








