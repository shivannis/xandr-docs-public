---
Title : Plugin Instance Service
Description : When you develop an app for the Apps Marketplace, you build an umbrella
ms.date: 10/28/2023
ms.custom: digital-platform-api
app and then one or more specific app instances that plug into the
workflow in different places. The Plugin Instance Service allows you to
---


# Plugin Instance Service



When you develop an app for the Apps Marketplace, you build an umbrella
app and then one or more specific app instances that plug into the
workflow in different places. The Plugin Instance Service allows you to
create and control these instances. For information about creating and
managing an umbrella app, see the
<a href="plugin-service.md" class="xref">Plugin Service</a>.



## REST API



<b>Note:</b> There are three different user
roles, two of which that can make calls to this service:

- **App Providers** - Members who develop apps in the Apps Marketplace
- **App Subscribers** - Members who subscribe to and use apps
- **Non-member Developers** - These app developers are not associated to
  members and cannot make calls to this service

Certain roles are restricted from making one or more calls. The roles
that can make the calls are specified in the **Description** column in
the table below.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000005cb__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000005cb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000005cb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__2"><a
href="https://api.appnexus.com/plugin-instance" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/plugin-instance</a><br />
(plugin-instance JSON)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__3">Add
an app.
<ul>
<li>App Providers.</li>
<li>App Subscribers.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__2"><a
href="https://api.appnexus.com/plugin-instance?id=PLUGIN_INSTANCE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/plugin-instance?id=PLUGIN_INSTANCE_ID</a>
<p>(plugin-instance JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__3">Modify an app.
<ul>
<li>App Providers.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__2"><a
href="https://api.appnexus.com/plugin-instance" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/plugin-instance</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__3">View
all apps instances.
<ul>
<li>App Providers.</li>
<li>App Subscribers (will only see instances to which they are
associated).</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__2"><a
href="https://api.appnexus.com/plugin-instance?id=PLUGIN_INSTANCE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/plugin-instance?id=PLUGIN_INSTANCE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__3">View
a specific app instance.
<ul>
<li>App Providers.</li>
<li>App Subscribers (will only see an instance if they are associated to
it).</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__2"><a
href="https://api.appnexus.com/plugin-instance?id=PLUGIN_INSTANCE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/plugin-instance?id=PLUGIN_INSTANCE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__3">Delete an app instance.
<ul>
<li>App Providers</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__2"><a
href="https://api.appnexus.com/plugin?id=PLUGIN_INSTANCE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/plugin?id=PLUGIN_INSTANCE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__3">Delete all apps installed by a
subscriber.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__2"><a
href="https://api.appnexus.com/plugin-instance?id=PLUGIN_INSTANCE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/plugin-instance?id=PLUGIN_INSTANCE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__3">Delete all apps created by a
developer.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000005cb__entry__25"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000005cb__entry__26"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000005cb__entry__27"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__25"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__27">The
tooltip that displays when you hover over the app instance.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__25"><code
class="ph codeph">flavor</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__26">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__27">The
location where the app is integrated into the  workflow. Possible
values:
<ul>
<li><code class="ph codeph">"standalone"</code> - The app is available
to network users in the main Apps tab.</li>
<li><code class="ph codeph">"creative_action"</code> - The app is
available to network users directly from the Creative Manager
screen.</li>
<li><code class="ph codeph">"advertiser_menu"</code> - The app is
available to advertiser users in the Advertisers tab.</li>
<li><code class="ph codeph">"publisher_menu"</code> - The app is
available to publisher users in the Publishers tab.</li>
<li><code class="ph codeph">"conversion_pixel"</code> - The app uses a
tracking pixel to count the number of downloads of this app.</li>
</ul>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__25"><code
class="ph codeph">icon_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__27">The
URL of the icon that is displayed with the app instance.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__25"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__26">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__27">The
ID of the app instance.
<p><strong>Default</strong>: Auto-generated number</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code>/<code class="ph codeph">DELETE</code>, in
query string</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__25"><code
class="ph codeph">iframe_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__27">The
URL pointing to the content of the app.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__25"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__27">The
name that is displayed with the app instances.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__25"><code
class="ph codeph">plugin_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__26">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__27">The
ID of the app that the instance belongs to.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__25"><code
class="ph codeph">proxy_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005cb__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005cb__entry__27">The
URL of the proxy.md file. This proxy file allows for cross-frame
communication between  and your app. It must be
uploaded to a URL on the same domain as your app.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
</tbody>
</table>





## Examples

**Add an app**

``` pre
$ cat plugin_instance.json
{
   "plugin-instance": {
       "name": "Test instance 1",
       "plugin_id": 45,
       "flavor": "standalone",
       "iframe_url": "https://www.iframe_url.com",
       "name": "Test Instance 1",
       "description": "This is the tooltip for Test Instance 1.",
       "icon_url": "https://www.icon_url.com",
       "proxy_url": "https://www.iframe_url.com/proxy.md"
   }
}
$ curl -b cookies -c cookies -X POST -d @plugin_instance 'https://api.appnexus.com/plugin-instance'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 65,
        "start_element": null,
        "num_elements": null,
        "plugin-instance": {
            "id": 65,
            "plugin_id": 45,
            "flavor": "standalone",
            "iframe_url": "https://www.iframe_url.com",
            "js_api_version": "",
            "name": "Test Instance 1",
            "description": "This is the tooltip for Test Instance 1.",
            "icon_url": "https://www.icon_url.com",
            "proxy_url": "https://www.iframe_url.com/proxy.md"
        },
        "dbg_info": {
            ...
        }
    }
}
```

**Modify an app**

``` pre
$ cat modify-plugin.json
{
    "plugin-instance": {
       "name": "Napoleon Bonaparte"
    }
}
$ curl -b cookies -c cookies -X PUT -d @modify-plugin.json 'https://sand.api.appnexus.com/plugin-instance?id=146' | json-pp
{
    "response":{
        "status":"OK",
        "count":1,
        "id":"146",
        "start_element":null,
        "num_elements":null,
        "plugin-instance":{
            "id":146,
            "plugin_id":101,
            "flavor":"advertiser_menu",
            "iframe_url":"https:\/\/www.myadgent.com\/logos",
            "js_api_version":"",
            "name":"Napoleon Boneparte",
            "description":null,
            "icon_url":null,
            "proxy_url":"https:\/\/www.myadgent.com\/logos\/video-appnexus-96-96.png"
        },
        "dbg_info":{
            ...
        }
    }
}
```

**View all apps**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/plugin-instance'
{
    "response": {
        "status": "OK",
        "count": 58,
        "start_element": null,
        "num_elements": null,
        "plugin-instances": [
            {
                "id": 2,
                "plugin_id": 1,
                "flavor": "campaign_profile_segment",
                "iframe_url": "https://host.appnexus/segment-targeting/boolean/",
                "js_api_version": "",
                "name": "Advanced Segment Chooser",
                "description": "Allows you to select groups of segments and perform boolean comparison of them.",
                "icon_url": "https://console.appnexus.com/favicon.ico",
                "proxy_url": "https://host.appnexus/proxy_new.md"
            },
            {
                "id": 3,
                "plugin_id": 2,
                "flavor": "standalone",
                "iframe_url": "https://my.evidon.com/tag?i=17",
                "js_api_version": "",
                "name": "Evidon",
                "description": "Evidon InForm enables businesses to comply with privacy laws and self-regulatory programs  across North America and Europe.",
                "icon_url": "https://betteradblog.files.wordpress.com/2011/11/adchoices14x16.png",
                "proxy_url": "https://my.evidon.com/client_plugins/proxy.md"
            },
            {
                "id": 4,
                "plugin_id": 3,
                "flavor": "standalone",
                "iframe_url": "https://agents.proximic.com/appnexus/v1/index.jsp",
                "js_api_version": "",
                "name": "Agents",
                "description": "Add powerful contextual and brand safety data to your media buy.",
                "icon_url": "https://static.proximic.com/img/proximic_appnexus_16x16.png",
                "proxy_url": "https://agents.proximic.com/appnexus/v1/proxy.md"
            },
            {
                "id": 5,
                "plugin_id": 4,
                "flavor": "standalone",
                "iframe_url": "https://audexp.apps.exelate.com",
                "js_api_version": "",
                "name": "Audience eXplorer",
                "description": "eXelate provides data on online purchase intent, household demographics and behavioral propensities that enable digital advertisers to make optimal marketing decisions.",
                "icon_url": "https://www.exelate.com/favicon.ico",
                "proxy_url": "https://audexp.apps.exelate.com/AppNexusPluginProxy"
            },
            {
                "id": 6,
                "plugin_id": 5,
                "flavor": "standalone",
                "iframe_url": "https://e1.targusinfo.com/plugin/e1anx.md",
                "js_api_version": "",
                "name": "Audience Wizard",
                "description": "Create customized audience groups based on TARGUSinfos offline data  including thousands of demographic, branding, product, lifestyle/lifestage and consumer behavior profiles.",
                "icon_url": "https://targusinfo.com/files/images/16x16_T.png",
                "proxy_url": "https://e1.targusinfo.com/plugin/e1anxproxy.md"
            },
            {
                "id": 7,
                "plugin_id": 6,
                "flavor": "standalone",
                "iframe_url": "https://marketplace.brilig.com/brilig-webapp/loginAppNexusOuterFrame.jsp",
                "js_api_version": "",
                "name": "Audience DataMizer",
                "description": "Access recommended audience buys and the ability to shop for and deploy 15 billion data points, encompassing 7,500 audience segments from 200 million profiles.",
                "icon_url": "https://cdn.adnxs.com/applogos/brilig16_16.png",
                "proxy_url": "https://marketplace.brilig.com/brilig-webapp/proxy.md"
            },
            ...
        ],
        "dbg_info": {
            ...
        }
    }
}
```

**View a specific app**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/plugin-instance?id=32'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "plugin-instance": {
            "id": 32,
            "plugin_id": 27,
            "flavor": "standalone",
            "iframe_url": "https://apps.eyereturn.com/appnexus-app/",
            "js_api_version": "",
            "name": "eyeReturn",
            "description": "Build a rich media banner featuring multiple products and messages  No experience needed!",
            "icon_url": "https://www.eyereturnmarketing.com/img/logos/erm_app_logo_16x16.png",
            "proxy_url": "https://apps.eyereturn.com/appnexusproxy.md"
        },
        "dbg_info": {
            ...
        }
    }
}
```

**Delete an app**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://sand.api.appnexus.com/plugin-instance?id=20' | json-pp
{
    "response":{
        "status":"OK",
        "dbg_info":{
            ...
        }
    }
}
```






