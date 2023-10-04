---
Title : App Installation Service
Description : This service allows app developers to install apps on client systems.
---


# App Installation Service



This service allows app developers to install apps on client systems.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000099__entry__1"
class="entry colsep-1 rowsep-1">Method</th>
<th id="ID-00000099__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000099__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__2"><a
href="https://api.appnexus.com/app-installation" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-installation</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__3">View
all installations</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__1"><code class="ph codeph">GET</code> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__2"><a
href="https://api.appnexus.com/app-installation?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-installation?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__3">View
a specific installation</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__2"><a
href="https://api.appnexus.com/app-installation" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-installation</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__3">Install an app for a client</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__2"><a
href="https://sand.api.appnexus.com/app-installation?id=ID" class="xref"
target="_blank">https://sand.api.<span
class="ph">appnexus.com/app-installation?id=ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__3">Update an app installation</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__2"><a
href="https://api.appnexus.com/app-installation?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-installation?id=ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__3">Delete an app installation </td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000099__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000099__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000099__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code
class="ph codeph">accepted_permissions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__21">Indicates whether permission was
received to access the areas required by the app for use.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code
class="ph codeph">addendum</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__21">This contains the text of the agreement
that appears when a user installs the app. This field can be edited
using the <strong>Markdown</strong> markup language.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code
class="ph codeph">has_payment_access</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__21">Indicates whether payment terms and
fees can be applied to this app.
<p><strong>Read-only</strong></p>
<strong>Default</strong>: <code class="ph codeph">true</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__21">The
unique identification number of each installation instance.
<p><strong>Required</strong>: <code class="ph codeph">PUT</code> and
<code class="ph codeph">DELETE</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code
class="ph codeph">installed_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__21">The
date and time that this app was installed by the user.
<p><strong>Read-only</strong></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code
class="ph codeph">installer_user_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__21">The
unique identification of the user with permission to install apps from
the Apps Marketplace. This is also the user who can accept or reject
addendum agreements.
<p><strong>Read-only</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code
class="ph codeph">log_level_data_fee</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__21">The
fee being charged to the user to consume log-level data.
<p><strong>Read-only</strong></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code
class="ph codeph">permissions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__21">The
operations that the app can perform on behalf of the currently logged in
user. For more information, see <a
href="app-installation-service.html#ID-00000099__permissions_app_installation_service"
class="xref">Permissions</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code
class="ph codeph">plugin_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__21">The
unique identification number of the plugin installed in this instance.
<p><strong>Required</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code
class="ph codeph">subscriber_email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__21">The
email address of the specified contact person at the app installer.
<p><strong>Read-only</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code
class="ph codeph">subscriber_entity_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__21">The
unique identification number of the parent of the user that installed
the app.
<p><strong>Required</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code
class="ph codeph">subscriber_entity_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__21">The
parent organization of the user that installed the app. Possible values
include "member" or "bidder". When adding an installation, you must
choose the correct option for the <code
class="ph codeph">subscriber_entity_id</code> (below).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code
class="ph codeph">subscriber_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__21">The
name of the contact person at the app installer.
<p><strong>Read-only</strong></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__19"><code
class="ph codeph">subscriber_phone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__21">The
phone number of the specified contact person at the app installer.
<p><strong>Read-only</strong></p></td>
</tr>
</tbody>
</table>

**Permissions**

Each object in the `permissions` array contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000099__entry__64"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000099__entry__65"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000099__entry__66"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__64"><code
class="ph codeph">privileges</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__65">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__66">The
types of calls that the app can make to the API service and the specific
fields that can be used.
<pre class="pre codeblock"><code>{
    &quot;method&quot;: &quot;get&quot;,
    &quot;fields&quot;: null
}</code></pre>
<p>Within each object, <code class="ph codeph">method</code> defines the
calls that can be made to the service ("get", "post", "put", or
"delete"), and <code class="ph codeph">fields</code> restricts the
permissions to particular fields in the service. If <code
class="ph codeph">fields</code> is null, the permissions apply to all
fields in the service. Note that use of the "delete" method must be
approved by a Xandr representative.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__64"><code
class="ph codeph">service</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000099__entry__65">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000099__entry__66">The
name of the API service that the app is permitted to use.</td>
</tr>
</tbody>
</table>





## Examples

**View all installations**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/app-installation'
{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":0,
        "num_elements":100,
        "app-installations":[
            {
                "id":9,
                "plugin_id":47,
                "addendum":"This is test text to demonstrate the addendum functionality.",
                "subscriber_entity_type":"member",
                "subscriber_entity_id":3754,
                "accepted_permission":false,
                "installed_on":"2013-05-01 20:58:28",
                "installer_user_id":5447,
                "permissions":null,                     
                "has_payment_access":false   
                "log_level_data_fee":5500,
                "subscriber_phone":"",
                "subscriber_email":"zivester@appnexus.com",
                "subscriber_name":"Zach Ivester"
            }
        ],
        "dbg_info":{
            ...
        }
    }
}
```

**View a specific installation**

``` pre
$ curl -b cookies -c cookies 's://sand.api.appnexus.com/app-installation?id=868'
{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":null,
        "num_elements":null,
        "app-installation":{
            "id":868,
            "plugin_id":4,
            "entity_type":"bidder",
            "entity_id":226,
            "status":"installed"
        }
```

**Install an app to a client**

``` pre
$ cat add-app-installation.json
{
    "app-installation":
        {
        "plugin_id": "20",
        "subscriber_entity_type": "member",
        "subscriber_entity_id":  "238"
        }
}
$ curl -b cookies -c cookies -X POST -d @add-app-installation.json 's://api.appnexus.com/app-installation' | json-pp
{
    "response":{
        "status":"OK",
        "count":1,
        "id":18716,
        "start_element":0,
        "num_elements":100,
        "app-installation":{
            "id":18716,
            "plugin_id":20,
            "addendum":null,
            "subscriber_entity_type":"member",
            "subscriber_entity_id":238,
            "accepted_permission":true,
            "installed_on":"2013-05-13 12:54:50",
            "installer_user_id":3052,
            "permissions":null,                     
            "has_payment_access":false   
            "log_level_data_fee":null,
            "subscriber_phone":null,
            "subscriber_email":null,
            "subscriber_name":"Netseer - member 238"
        },
        "dbg_info":{
            ...
        }
    }
}
```

**Update an app installation**

``` pre
$ cat update-app-installation.json
{
    "app-installation": 
        {
        "plugin_id": "19",
        "addendum": "www.site.com",
        "accepted_permission": false,
        "log_level_data_fee": "2000",
        "subscriber_phone": "914-555-1212",
        "subscriber_email": "JMS@live.com",
        "subscriber_name": "Ben Smith"
        }
} 
$ curl -b cookies -c cookies -X PUT -d @update-app-installation.json 's://api.appnexus.com/app-installation?id=23'
{
    "response":{
        "status":"OK",
        "count":1,
        "id":"23",
        "start_element":0,
        "num_elements":100,
        "app-installation":{
            "id":23,
            "plugin_id":50,
            "addendum":null,
            "subscriber_entity_type":"member",
            "subscriber_entity_id":185,
            "accepted_permission":false,
            "installed_on":"2013-05-07 15:05:45",
            "installer_user_id":43,
            "permissions":null,                     
            "has_payment_access":false   
            "log_level_data_fee":2500,
            "subscriber_phone":"",
            "subscriber_email":"PQ5ejohnson@appnexus.com",
            "subscriber_name":"Emily HB"
        },
        "dbg_info":{
            ...
        }
    }
}
```

**Delete an app installation**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/app-installation?id=121'
{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":0,
        "num_elements":100,
        "dbg_info":{
            ...
        }
    }
}
 
```





## Related topics

- <a href="apps-marketplace-services.html" class="xref">Apps Marketplace
  Services</a>






