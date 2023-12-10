---
Title : Plugin Service
Description : When you develop an app for the Apps Marketplace, you build an umbrella
ms.date: 10/28/2023
ms.custom: digital-platform-api
app and then one or more specific app instances that plug into the
workflow in different places. The Plugin Service allows you to create
---


# Plugin Service



When you develop an app for the Apps Marketplace, you build an umbrella
app and then one or more specific app instances that plug into the
workflow in different places. The Plugin Service allows you to create
and control the umbrella app. For information about creating and
managing app instances, see the <a
href="plugin-instance-service.md"
class="xref" target="_blank">Plugin Instance Service</a>.



## REST API



<b>Note:</b> There are three different user
roles that can make calls to this service:

- **App Providers** - Members who develop apps in the Apps Marketplace
- **App Subscribers** - Members who subscribe to and use apps
- **Non-member Developers** - App providers who are not associated to
  any member

Certain roles are restricted from making one or more calls. The roles
that can make the calls are specified in the **Description** column in
the table below.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000240__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000240__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000240__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__2"><a
href="https://api.appnexus.com/plugin" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/plugin</a><br />
(plugin JSON)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__3">Add
an app
<ul>
<li>App providers.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__2"><a
href="https://api.appnexus.com/plugin?id=PLUGIN_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/plugin?id=PLUGIN_ID</a>
<p>(plugin JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__3">Modify an app
<ul>
<li>App providers.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__2"><a
href="https://api.appnexus.com/plugin" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/plugin</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__3">View
all apps
<ul>
<li>App Providers.</li>
<li>App Subscribers (will only see apps to which they are
associated).</li>
<li>Non-member Developers (will only see apps to which they are
associated).</li>
</ul>

<b>Note:</b> To view all apps that a member
has installed, execute a GET call against the <strong>Member</strong>
service. Locate the id field under
plugins. All plugins that this member
has installed (regardless of whether they are associated) are listed by
plugin number.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__2"><a
href="https://api.appnexus.com/plugin?id=PLUGIN_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/plugin?id=PLUGIN_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__3">View
a specific app
<ul>
<li>App Providers.</li>
<li>App Subscribers (will only see apps to which they are
associated).</li>
<li>Non-member Developers (will only see app if they are associated to
it).</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__2"><a
href="https://api.appnexus.com/plugin?developer_id=DEVELOPER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/plugin?developer_id=DEVELOPER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__3">View
all apps created by a specific subscriber, developer, or non-member
developer.
<ul>
<li>App Subscribers.</li>
<li>App Providers.</li>
<li>Non-member Developers.</li>
</ul>

<b>Note:</b> If you cannot see apps that you
have created, contact your Xandr representative.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__2"><a
href="https://api.appnexus.com/plugin" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/plugin</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__3">Delete an app
<ul>
<li>App Providers</li>
</ul></td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000240__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000240__entry__23"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000240__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">addendum</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__24"><strong>Read-only</strong>. Contains
the text of the addendum terms for the app.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">allowed_asset_count</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__24"><strong>Read-only</strong>. Indicates
the number of images that can be associated to an app. This cannot
exceed five (5). These images are defined in the App-Asset service
(Admin only).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">author_display_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
author name that is displayed below the name of the app on the main Apps
Marketplace page and in the More Info dialog.
<p><strong>Default</strong>: <code class="ph codeph">null</code></p>
![Plugin service-a](media/plugin-service-a.png)
![Plugin service-b](media/plugin-service-ab.png)

</figure></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">click_to_install</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__24">Indicates whether the install option on
the Apps Marketplace UI screen is functional.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">contact_email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
email address that you can use to contact the app developer. This
appears on the Fee Details Screen.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">contact_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
name of the app developer. This appears on the Fee Details Screen.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">contact_phone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
phone number that you can use to contact the app developer. This appears
on the Fee Details Screen.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">contact_text</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__24">This is any additional text that
usually providers more information about the app developer. This appears
on the Fee Details Screen.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
description of the app that is displayed in the More Info dialog.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">developer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
developer of the app. For more information, see <a
href="plugin-service.md#ID-00000240__developer"
class="xref">Developer</a> below.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">domains</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
sites to which Apps Marketplace will look to see if a user is already
logged into . For more information, see <a
href="plugin-service.md#ID-00000240__domains" class="xref">Domains</a>
below.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">featured</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__24"><strong>Read-only</strong>. Indicates
whether the app is listed in the carousel area of the available apps.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">has_payment_access</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__24"><strong>Read-only</strong>. Indicates
whether payment terms and fees can be applied to this app.
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
ID of the app.
<p><strong>Default</strong>: Auto-generated number</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code>/<code class="ph codeph">DELETE</code>, in
query string</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">is_available</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">If
true, the app is exposed to members in the Apps Marketplace by default.
You can use the <code class="ph codeph">member_availabilities</code>
field to override this setting for specific members. For example, if you
wanted to expose the app only to specific clients, you would set <code
class="ph codeph">is_available</code> to <code
class="ph codeph">false</code> and then use <code
class="ph codeph">member_availabilities</code> to expose the app to
those specific clients. For more details, see <a
href="plugin-service.md#ID-00000240__member_availabilities"
class="xref">Member Availabilities</a> below.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">log_level_data_fee</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__24"><strong>Read-only</strong>. The dollar
amount charged to the member consuming log-level data.
<p><strong>Default</strong>: <code class="ph codeph">null</code></p>
<p><strong>Required On</strong>: This field can only be updated through
the <a
href="digital-api-internal/app-contract-service.md"
class="xref" target="_blank">App Contract Service</a>.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">member_availabilities</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__24">This setting indicates if this app is
available to certain members or restricted from certain members. This
value will override the setting <code
class="ph codeph">is_available</code> . For more information, see <a
href="plugin-service.md#ID-00000240__member_availabilities"
class="xref">Member Availabilities</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">moreinfo_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
URL of the app used for demo purposes.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
name of the app that is displayed on the main Apps Marketplace page and
in the More Info dialog.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">permissions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
operations that the app can perform on behalf of the currently logged in
user. For more information, see <a
href="plugin-service.md#ID-00000240__permissions"
class="xref">Permissions</a> below.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">plugin_category_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
identification number of the category to which this app will be
assigned. Note that if you select a number that is a sub-level category,
this app will automatically be assigned to both this category and the
associate parent category. If you enter a parent category, however, the
app belongs only to that one and not to any sub-level category.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">plugin-instances</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__24"><strong>Read-only</strong>. The
specific instances associated to the app. For more information about app
instances, see the <a
href="plugin-instance-service.md"
class="xref" target="_blank">Plugin Instance Service</a>.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">public_key</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
public key of the public/private key pair for authenticating the
app.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">recommended</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__24"><strong>Read-only</strong>. Indicates
whether the app is listed in the <strong>Recommended Apps</strong> row
of the Apps Marketplace Screen.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">summary</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
description of the app that is displayed on the main Apps Marketplace
page.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__22"><code
class="ph codeph">video_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__24">The
URL of the tutorial video for this app. Must be Vimeo hosted.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>

**Developer**

The `developer` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000240__entry__103"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000240__entry__104"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000240__entry__105"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__103"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__104">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__105">The ID of the developer that built the
app. You can use the Developer Service to retrieve this ID.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__103"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__104">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__105"><strong>Read-only</strong>. The name
of the developer that built the app.</td>
</tr>
</tbody>
</table>

**Domains**

The `domains` object contains the following field:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000240__entry__112"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000240__entry__113"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000240__entry__114"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__112"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__113">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__114">The domain name of the site to which
Apps Marketplace will look to see if a user is logged on.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>

**Permissions**

Each object in the `permissions` array contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000240__entry__118"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000240__entry__119"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000240__entry__120"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__118"><code
class="ph codeph">privileges</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__119">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__120">The types of calls that the app can
make to the API service and the specific fields that can be used.
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
approved by an Xandr representative.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__118"><code
class="ph codeph">service</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__119">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__120">The name of the API service that the
app is permitted to use.</td>
</tr>
</tbody>
</table>

**Member Availabilities**

The main `is_available` field defines whether or not the app is exposed
to all members by default. You can use the `member_availabilities` field
to override this default for specific members. For example, if you
wanted to expose the app only to select members, you would set
`is_available` to `false` and then use `member_availabilities` to expose
the app to those specific members.

Each object in the `member_availabilities` array contains the following
fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000240__entry__127"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000240__entry__128"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000240__entry__129"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__127"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__128">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__129">The ID of the member.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code>/<code class="ph codeph">PUT</code>, if
passing main <code class="ph codeph">is_available</code> field.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__127"><code
class="ph codeph">is_available</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000240__entry__128">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000240__entry__129">If
<code class="ph codeph">true</code>, the app is exposed to the member.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code>/<code class="ph codeph">PUT</code>, if
passing <code class="ph codeph">id.</code></p></td>
</tr>
</tbody>
</table>





## Examples

**Add an app**

``` pre
$ cat add-plugin.json
{
    "plugin":
 {
        "name": "JMS November App",
        "description": "This is a test for an app created by another user.",
        "public_key": "-----BEGIN PUBLIC KEY-----\nMFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAL88J0hPSmfYfKmWw\/y4xwdeTZsbwDeU\n\ 
                 /vkE+r88KaVJ0gG7K8BT+0nhfeOalrw\/EfX\/ta0YWxRb\/\/Yco39MbssCAwEAAQ==\n-----END PUBLIC KEY-----",
        "moreinfo_url": null,
        "is_available": "true",
        "summary": "The Test App does something great.",
        "contact_name": "The Test Application",
        "contact_phone": "1-800-TESTAPP",
        "contact_email": "hello@testapp.com",
        "contact_text": "Support email: support@testapp.com",
        "author_display_name": "Test App #2555",
        "developer":
 {
            "id": 7
        },
        "permissions":
[
            {
                "service": "segment",
                "privileges":
[
                    {
                        "method": "post",
                        "fields": null
                    }
                ]
            }
        ]
    }
}
$ curl -b cookies -c cookies -X POST -d @add-plugin.json 'https://api.appnexus.com/plugin' | json-pp
{
    "response":{
        "status":"OK",
        "count":1,
        "id":142,
        "start_element":0,
        "num_elements":100,
                "plugin":{
            "id":142,
            "name":"JMS November App",
            "description":"This is a test for an app created by another user.",
            "public_key":"-----BEGIN PUBLIC KEY-----             
                         \nMFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAL88J0hPSmfYfKmWw\/y4xwdeTZsbwDeU\n\/
                         vkE+r88KaVJ0gG7K8BT+0nhfeOalrw\/EfX\/ta0YWxRb\/\/Yco39MbssCAwEAAQ==\n-----END PUBLIC KEY-----",
            "moreinfo_url":null,
            "log_level_data_fee":null,
            "plugin_category_id":null,
            "is_available":false,
            "summary":"The Test App does something great.",
            "contact_name":"The Test Application",
            "contact_phone":"1-800-TESTAPP",
            "contact_email":"hello@testapp.com",
            "contact_text":"Support email: support@testapp.com",
            "author_display_name":"Test App #2555",
            "recommended":false,
            "featured":false,
            "has_payment_access":false,
            "is_frozen":false,
            "allowed_asset_count":5,
            "addendum":null,
            "click_to_install":false,
            "video_url":null,
            "developer":{
                "id":14,
                "name":"taylortest"
            },
            "domains":null,
            "permissions":[
                {
                    "service":"segment",
                    "privileges":[
                        {
                            "method":"post",
                            "fields":null
                        }
                    ],
                    "methods":[
                        "post"
                    ]
                }
            ],
            "plugin-instances":null,
            "member_availabilities":null
        },
        "dbg_info":{
            ...
        }
    }
}
```

**Modify an app**

``` pre
$ cat modify-plugin2.json
{
    "plugin": {
       "plugin_category_id": "33",
       "flavor": "converson_pixel"
    }
}
$ curl -b cookies -c cookies -X PUT -d @modify-plugin2.json 'https://api.appnexus.com/plugin?id=104' | json-pp
{
    "response":{
        "status":"OK",
        "count":1,
        "id":"104",
        "start_element":0,
        "num_elements":100,
        "plugin":{
            "id":104,
            "name":"JMS app",
            "description":"This is a test for an app created by a user.",
            "public_key":"",
            "moreinfo_url":null,
            "log_level_data_fee":null,
            "plugin_category_id":33,
            "is_available":false,
            "summary":"The Test App does something great.",
            "contact_name":"The Test Application",
            "contact_phone":"1-800-TESTAPP",
            "contact_email":"hello@testapp.com",
            "contact_text":"Support email: support@testapp.com",
            "author_display_name":"Test App #2000",
            "recommended":true,
            "featured":false,
            "has_payment_access":false,
            "is_frozen":false,
            "allowed_asset_count":5,
            "addendum":null,
            "click_to_install":false,
            "video_url":null,
            "developer":{
                "id":7,
                "name":"John Smith"
            },
            "domains":null,
            "permissions":[
                {
                    "service":"advertiser",
                    "privileges":[
                        {
                            "method":"post",
                            "fields":null
                        },
                        {
                            "method":"delete",
                            "fields":[
                                "code",
                                "id"
                            ]
                        }
                    ],
                    "methods":[
                        "post",
                        "delete"
                    ]
                },
                {
                    "service":"campaign",
                    "privileges":[
                        {
                            "method":"post",
                            "fields":null
                        },
                        {
                            "method":"delete",
                            "fields":[
                                "code",
                                "id"
                            ]
                        }
                    ],
                    "methods":[
                        "post",
                        "delete"
                    ]
                },
                {
                    "service":"insertion-order",
                    "privileges":[
                        {
                            "method":"post",
                            "fields":null
                        },
                        {
                            "method":"delete",
                            "fields":[
                                "code",
                                "id"
                            ]
                        }
                    ],
                    "methods":[
                        "post",
                        "delete"
                    ]
                },
                {
                    "service":"line-item",
                    "privileges":[
                        {
                            "method":"post",
                            "fields":null
                        },
                        {
                            "method":"delete",
                            "fields":[
                                "code",
                                "id"
                            ]
                        }
                    ],
                    "methods":[
                        "post",
                        "delete"
                    ]
                },
                {
                    "service":"publisher",
                    "privileges":[
                        {
                            "method":"post",
                            "fields":null
                        },
                        {
                            "method":"delete",
                            "fields":[
                                "code",
                                "id"
                            ]
                        }
                    ],
                    "methods":[
                        "post",
                        "delete"
                    ]
                },
                {
                    "service":"site",
                    "privileges":[
                        {
                            "method":"post",
                            "fields":null
                        },
                        {
                            "method":"delete",
                            "fields":[
                                "code",
                                "id"
                            ]
                        }
                    ],
                    "methods":[
                        "post",
                        "delete"
                    ]
                }
            ],
            "plugin-instances":[
                {
                    "id":167,
                    "plugin_id":104,
                    "flavor":"standalone",
                    "iframe_url":"https:\/\/localhost\/app\/",
                    "js_api_version":"1.1",
                    "name":"testy test",
                    "description":"TBD",
                    "icon_url":"https:\/\/localhost\/app\/",
                    "proxy_url":"https:\/\/google.com"
                }
            ],
            "member_availabilities":[
                {
                    "id":185,
                    "is_available":true
                },
                {
                    "id":324,
                    "is_available":true
                },
                {
                    "id":1066,
                    "is_available":true
                }
            ]
        },
        "dbg_info":{
            ...
        }
    }
}
```

**View all apps**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/plugin' | json-pp
{
    "response":{
        "status":"OK",
        "count":14,
        "start_element":0,
        "num_elements":100,
        "plugins":[
            {
                "id":2,
                "name":"Example Plugin 1",
                "description":"This is an example full description.  It should support <span style='color: green'>HTML<\/span>.
                                 <br><br>\nThis plugin does the following when installed:\n<ul><li>Nothing.<\/li><\/ul>",
                "public_key":"-----BEGIN PUBLIC KEY-----\nMEwwDQYJKoZIhvcNAQEBBQADOwAwOAIxAL7yOpVHyI0JnHZxa4UKJrenZpjNFLV0\      
                                 nBaAfRbmp5xMrHYIHZXdYplyEOeLw8\/y2TQIDAQAB\n-----END PUBLIC KEY-----",
                "moreinfo_url":null,
                "log_level_data_fee":null,
                "plugin_category_id":null,
                "is_available":false,
                "summary":"Manage first party data, buy third party data and build custom audiences that are immediately 
                                 available to target 
                                 inventory.",
                "contact_name":"Sam",
                "contact_phone":"",
                "contact_email":"smati@example.com",
                "contact_text":"",
                "author_display_name":"Mr. Example",
                "recommended":false,
                "featured":false,
                "has_payment_access":false,
                "is_frozen":false,
                "allowed_asset_count":5,
                "addendum":null,
                "click_to_install":false,
                "video_url":null,
                "developer":{
                    "id":1,
                    "name":"Xandr,
                     Inc."
                },
                "domains":null,
                "permissions":[
                    {
                        "service":"user",
                        "privileges":[
                            {
                                "method":"get",
                                "fields":[
                                    "entity_name"
                                ]
                            }
                        ],
                        "methods":[
                            "get"
                        ]
                    },
                    {
                        "service":"profile",
                        "privileges":[
                            {
                                "method":"get",
                                "fields":[
                                    "daypart_timezone"
                                ]
                            }
                        ],
                        "methods":[
                            "get"
                        ]
                    },
                    {
                        "service":"campaign",
                        "privileges":[
                            {
                                "method":"put",
                                "fields":[
                                    "profile_id"
                                ]
                            }
                        ],
                        "methods":[
                            "put"
                        ]
                    },
                    {
                        "service":"saved-report",
                        "privileges":[
                            {
                                "method":"get",
                                "fields":[
                                    "id"
                                ]
                            }
                        ],
                        "methods":[
                            "get"
                        ]
                    },
                    {
                        "service":"not-real-service",
                        "privileges":[
                            {
                                "method":"get",
                                "fields":[
                                    "id"
                                ]
                            }
                        ],
                        "methods":[
                            "get"
                        ]
                    }
                ],
                "plugin-instances":[
                    {
                        "id":7,
                        "plugin_id":2,
                        "flavor":"standalone",
                        "iframe_url":"https:\/\/xandr.com\/contact\/",
                        "js_api_version":"",
                        "name":"Plugin 1",
                        "description":"",
                        "icon_url":"https:\/\/wiki.xandr.com\/download\/attachments\/34406872\/an-labs-symbol.png?
                                                 version=1&modificationDate=1327610813446",
                        "proxy_url":"https:\/\/www.xandr.com"
                    }
                ],
                "member_availabilities":[
                    {
                        "id":185,
                        "is_available":true
                    },
                    {
                        "id":326,
                        "is_available":true
                    },
                    {
                        "id":709,
                        "is_available":true
                    },
                    {
                        "id":884,
                        "is_available":true
                    }
                ]
            },
            {
                "id":3,
                "name":"Example Plugin 2",
                "description":"Lorem ipsum...",
                "public_key":"-----BEGIN PUBLIC KEY-----\nMEwwDQYJKoZIhvcNAQEBBQADOwAwOAIxANoHW5tUyLrWXo0fBe6KuxQFLgcyIU1X\ 
                                 n6hW9OUPU1vFBITj7LcCVg5RbRM7wV+TClwIDAQAB\n-----END PUBLIC KEY-----",
                "moreinfo_url":null,
                "log_level_data_fee":null,
                "plugin_category_id":null,
                "is_available":false,
                "summary":"",
                "contact_name":"",
                "contact_phone":"",
                "contact_email":"",
                "contact_text":"",
                "author_display_name":"",
                "recommended":false,
                "featured":false,
                "has_payment_access":false,
                "is_frozen":false,
                "allowed_asset_count":5,
                "addendum":null,
                "click_to_install":false,
                "video_url":null,
                "developer":{
                    "id":1,
                    "name":"Xandr,
                     Inc."
                },
                "domains":null,
                "permissions":null,
                "plugin-instances":[
                    {
                        "id":8,
                        "plugin_id":3,
                        "flavor":"standalone",
                        "iframe_url":"https:\/\/xandr.com\/contact\/",
                        "js_api_version":"",
                        "name":"Plugin 2",
                        "description":"",
                        "icon_url":"https:\/\/www.xandr.com\/favicon.ico",
                        "proxy_url":"https:\/\/www.xandr.com"
                    }
                ],
                "member_availabilities":[
                    {
                        "id":185,
                        "is_available":true
                    },
                    {
                        "id":326,
                        "is_available":true
                    },
                    {
                        "id":709,
                        "is_available":true
                    },
                    {
                        "id":884,
                        "is_available":true
                    }
                ]
            },
```

**View a specific app**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/plugin?id=104' | json-pp
{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":0,
        "num_elements":100,
        "plugin":{
            "id":104,
            "name":"JMS app",
            "description":"This is a test for an app created by a user.",
            "public_key":"",
            "moreinfo_url":null,
            "log_level_data_fee":null,
            "plugin_category_id":33,
            "is_available":false,
            "summary":"The Test App does something great.",
            "contact_name":"The Test Application",
            "contact_phone":"1-800-TESTAPP",
            "contact_email":"hello@testapp.com",
            "contact_text":"Support email: support@testapp.com",
            "author_display_name":"Test App #2000",
            "recommended":true,
            "featured":false,
            "has_payment_access":false,
            "is_frozen":false,
            "allowed_asset_count":5,
            "addendum":null,
            "click_to_install":false,
            "video_url":null,
            "developer":{
                "id":7,
                "name":"John Smith"
            },
            "domains":null,
            "permissions":[
                {
                    "service":"advertiser",
                    "privileges":[
                        {
                            "method":"post",
                            "fields":null
                        },
                        {
                            "method":"delete",
                            "fields":[
                                "code",
                                "id"
                            ]
                        }
                    ],
                    "methods":[
                        "post",
                        "delete"
                    ]
                },
                {
                    "service":"campaign",
                    "privileges":[
                        {
                            "method":"post",
                            "fields":null
                        },
                        {
                            "method":"delete",
                            "fields":[
                                "code",
                                "id"
                            ]
                        }
                    ],
                    "methods":[
                        "post",
                        "delete"
                    ]
                },
                {
                    "service":"insertion-order",
                    "privileges":[
                        {
                            "method":"post",
                            "fields":null
                        },
                        {
                            "method":"delete",
                            "fields":[
                                "code",
                                "id"
                            ]
                        }
                    ],
                    "methods":[
                        "post",
                        "delete"
                    ]
                },
                {
                    "service":"line-item",
                    "privileges":[
                        {
                            "method":"post",
                            "fields":null
                        },
                        {
                            "method":"delete",
                            "fields":[
                                "code",
                                "id"
                            ]
                        }
                    ],
                    "methods":[
                        "post",
                        "delete"
                    ]
                },
                {
                    "service":"publisher",
                    "privileges":[
                        {
                            "method":"post",
                            "fields":null
                        },
                        {
                            "method":"delete",
                            "fields":[
                                "code",
                                "id"
                            ]
                        }
                    ],
                    "methods":[
                        "post",
                        "delete"
                    ]
                },
                {
                    "service":"site",
                    "privileges":[
                        {
                            "method":"post",
                            "fields":null
                        },
                        {
                            "method":"delete",
                            "fields":[
                                "code",
                                "id"
                            ]
                        }
                    ],
                    "methods":[
                        "post",
                        "delete"
                    ]
                }
            ],
            "plugin-instances":[
                {
                    "id":167,
                    "plugin_id":104,
                    "flavor":"standalone",
                    "iframe_url":"https:\/\/localhost\/app\/",
                    "js_api_version":"1.1",
                    "name":"testy test",
                    "description":"TBD",
                    "icon_url":"https:\/\/localhost\/app\/",
                    "proxy_url":"https:\/\/google.com"
                }
            ],
            "member_availabilities":[
                {
                    "id":185,
                    "is_available":true
                },
                {
                    "id":324,
                    "is_available":true
                },
                {
                    "id":1066,
                    "is_available":true
                }
            ]
        },
        "dbg_info":{
            ...
        }
    }
}
```

**View all apps created by a specific subscriber, developer, or
non-member developer**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/plugin?developer_id=7' | json-pp
{
    "response":{
        "status":"OK",
        "count":13,
        "start_element":0,
        "num_elements":100,
        "plugins":[
            "id":89,
                "name":"John M. Schneider III App",
                "description":"This is a test for an app created by a user.",
                "public_key":"",
                "moreinfo_url":null,
                "log_level_data_fee":null,
                "plugin_category_id":null,
                "is_available":false,
                "summary":"The Test App does something great.",
                "contact_name":"Test App person",
                "contact_phone":"1-800-TESTAPP",
                "contact_email":"hello@testapp.com",
                "contact_text":"Support email: support@testapp.com",
                "author_display_name":"Test App Creator",
                "recommended":false,
                "featured":false,
                "has_payment_access":false,
                "is_frozen":false,
                "allowed_asset_count":5,
                "addendum":null,
                "click_to_install":false,
                "video_url":null,
                "developer":{
                    "id":7,
                    "name":"John Smith"
                },
                "domains":null,
                "permissions":[
                    {
                        "service":"segment",
                        "privileges":[
                            {
                                "method":"post",
                                "fields":null
                            }
                        ],
                        "methods":[
                            "post"
                        ]
                    }
                ],
                "plugin-instances":null,
                "member_availabilities":[
                    {
                        "id":1066,
                        "is_available":true
                    }
                ]
            },
            {
                "id":99,
                "name":"John M. Schneider Jr",
                "description":"This is a test for an app created by a user.",
                "public_key":"",
                "moreinfo_url":null,
                "log_level_data_fee":null,
                "plugin_category_id":null,
                "is_available":false,
                "summary":"The Test App does something great.",
                "contact_name":"The Test App JMS",
                "contact_phone":"1-800-TESTAPP",
                "contact_email":"hello@testapp.com",
                "contact_text":"Support email: support@testapp.com",
                "author_display_name":"Test App JMS",
                "recommended":false,
                "featured":false,
                "has_payment_access":false,
                "is_frozen":false,
                "allowed_asset_count":5,
                "addendum":null,
                "click_to_install":false,
                "video_url":null,
                "developer":{
                    "id":7,
                    "name":"John Smith"
                },
                "domains":null,
                "permissions":[
                    {
                        "service":"segment",
                        "privileges":[
                            {
                                "method":"post",
                                "fields":null
                            }
                        ],
                        "methods":[
                            "post"
                        ]
                    }
                ],
                "plugin-instances":null,
                "member_availabilities":[
                    {
                        "id":1066,
                        "is_available":true
                    }
                ]
            },
            {
                "id":100,
                "name":"Napoleon Boneparte",
                "description":"This is a test for an app created by a user.",
                "public_key":"",
                "moreinfo_url":null,
                "log_level_data_fee":null,
                "plugin_category_id":null,
                "is_available":false,
                "summary":"The Test App does something great.",
                "contact_name":"The Test App JMS",
                "contact_phone":"1-800-TESTAPP",
                "contact_email":"hello@testapp.com",
                "contact_text":"Support email: support@testapp.com",
                "author_display_name":"Test App JMS",
                "recommended":false,
                "featured":false,
                "has_payment_access":false,
                "is_frozen":false,
                "allowed_asset_count":5,
                "addendum":null,
                "click_to_install":false,
                "video_url":null,
                "developer":{
                    "id":7,
                    "name":"John Smith"
                },
                "domains":null,
                "permissions":[
                    {
                        "service":"segment",
                        "privileges":[
                            {
                                "method":"post",
                                "fields":null
                            }
                        ],
                        "methods":[
                            "post"
                        ]
                    }
                ],
                "plugin-instances":null,
                "member_availabilities":[
                    {
                        "id":1066,
                        "is_available":true
                    }
                ]
            },
            {
                "id":101,
                "name":"November Test App",
                "description":"This is a test for an app created by a user.",
                "public_key":"",
                "moreinfo_url":null,
                "log_level_data_fee":null,
                "plugin_category_id":null,
                "is_available":false,
                "summary":"The Test App does something great.",
                "contact_name":"The Test Application",
                "contact_phone":"1-800-TESTAPP",
                "contact_email":"hello@testapp.com",
                "contact_text":"Support email: support@testapp.com",
                "author_display_name":"Test App JMS",
                "recommended":false,
                "featured":false,
                "has_payment_access":false,
                "is_frozen":false,
                "allowed_asset_count":5,
                "addendum":null,
                "click_to_install":false,
                "video_url":null,
                "developer":{
                    "id":7,
                    "name":"John Smith"
                },
                "domains":null,
                "permissions":[
                    {
                        "service":"segment",
                        "privileges":[
                            {
                                "method":"post",
                                "fields":null
                            }
                        ],
                        "methods":[
                            "post"
                        ]
                    }
                ],
                "plugin-instances":null,
                "member_availabilities":[
                    {
                        "id":1066,
                        "is_available":true
                    }
                ]
            },
            {
                "id":102,
                "name":"JMS app",
                "description":"This is a test for an app created by a user.",
                "public_key":"",
                "moreinfo_url":null,
                "log_level_data_fee":null,
                "plugin_category_id":null,
                "is_available":false,
                "summary":"The Test App does something great.",
                "contact_name":"The Test Application",
                "contact_phone":"1-800-TESTAPP",
                "contact_email":"hello@testapp.com",
                "contact_text":"Support email: support@testapp.com",
                "author_display_name":"Test App for John",
                "recommended":false,
                "featured":false,
                "has_payment_access":false,
                "is_frozen":false,
                "allowed_asset_count":5,
                "addendum":null,
                "click_to_install":false,
                "video_url":null,
                "developer":{
                    "id":7,
                    "name":"John Smith"
                },
                "domains":null,
                "permissions":[
                    {
                        "service":"segment",
                        "privileges":[
                            {
                                "method":"post",
                                "fields":null
                            }
                        ],
                        "methods":[
                            "post"
                        ]
                    }
                ],
                "plugin-instances":null,
                "member_availabilities":[
                    {
                        "id":1066,
                        "is_available":true
                    }
                ]
            },
            {
                "id":104,
                "name":"JMS app",
                "description":"This is a test for an app created by a user.",
                "public_key":"",
                "moreinfo_url":null,
                "log_level_data_fee":null,
                "plugin_category_id":33,
                "is_available":false,
                "summary":"The Test App does something great.",
                "contact_name":"The Test Application",
                "contact_phone":"1-800-TESTAPP",
                "contact_email":"hello@testapp.com",
                "contact_text":"Support email: support@testapp.com",
                "author_display_name":"Test App #2000",
                "recommended":true,
                "featured":false,
                "has_payment_access":false,
                "is_frozen":false,
                "allowed_asset_count":5,
                "addendum":null,
                "click_to_install":false,
                "video_url":null,
                "developer":{
                    "id":7,
                    "name":"John Smith"
                },
                "domains":null,
                "permissions":[
                    {
                        "service":"advertiser",
                        "privileges":[
                            {
                                "method":"post",
                                "fields":null
                            },
                            {
                                "method":"delete",
                                "fields":[
                                    "code",
                                    "id"
                                ]
                            }
                        ],
                        "methods":[
                            "post",
                            "delete"
                        ]
                    },
                    {
                        "service":"campaign",
                        "privileges":[
                            {
                                "method":"post",
                                "fields":null
                            },
                            {
                                "method":"delete",
                                "fields":[
                                    "code",
                                    "id"
                                ]
                            }
                        ],
                        "methods":[
                            "post",
                            "delete"
                        ]
                    },
                    {
                        "service":"insertion-order",
                        "privileges":[
                            {
                                "method":"post",
                                "fields":null
                            },
                            {
                                "method":"delete",
                                "fields":[
                                    "code",
                                    "id"
                                ]
                            }
                        ],
                        "methods":[
                            "post",
                            "delete"
                        ]
                    },
                    {
                        "service":"line-item",
                        "privileges":[
                            {
                                "method":"post",
                                "fields":null
                            },
                            {
                                "method":"delete",
                                "fields":[
                                    "code",
                                    "id"
                                ]
                            }
                        ],
                        "methods":[
                            "post",
                            "delete"
                        ]
                    },
                    {
                        "service":"publisher",
                        "privileges":[
                            {
                                "method":"post",
                                "fields":null
                            },
                            {
                                "method":"delete",
                                "fields":[
                                    "code",
                                    "id"
                                ]
                            }
                        ],
                        "methods":[
                            "post",
                            "delete"
                        ]
                    },
                    {
                        "service":"site",
                        "privileges":[
                            {
                                "method":"post",
                                "fields":null
                            },
                            {
                                "method":"delete",
                                "fields":[
                                    "code",
                                    "id"
                                ]
                            }
                        ],
                        "methods":[
                            "post",
                            "delete"
                        ]
                    }
                ],
                "plugin-instances":[
                    {
                        "id":167,
                        "plugin_id":104,
                        "flavor":"standalone",
                        "iframe_url":"https:\/\/localhost\/app\/",
                        "js_api_version":"1.1",
                        "name":"testy test",
                        "description":"TBD",
                        "icon_url":"https:\/\/localhost\/app\/",
                        "proxy_url":"https:\/\/google.com"
                    }
                ],
                "member_availabilities":[
                    {
                        "id":185,
                        "is_available":true
                    },
                    {
                        "id":324,
                        "is_available":true
                    },
                    {
                        "id":1066,
                        "is_available":true
                    }
                ]
            },
            {
                "id":111,
                "name":"JMS December App",
                "description":"This is a test for an app created by a user.",
                "public_key":"",
                "moreinfo_url":null,
                "log_level_data_fee":null,
                "plugin_category_id":null,
                "is_available":false,
                "summary":"The Test App does something great.",
                "contact_name":"The Test Application",
                "contact_phone":"1-800-TESTAPP",
                "contact_email":"hello@testapp.com",
                "contact_text":"Support email: support@testapp.com",
                "author_display_name":"Test App #2555",
                "recommended":false,
                "featured":false,
                "has_payment_access":false,
                "is_frozen":false,
                "allowed_asset_count":5,
                "addendum":null,
                "click_to_install":false,
                "video_url":null,
                "developer":{
                    "id":7,
                    "name":"John Smith"
                },
                "domains":null,
                "permissions":[
                    {
                        "service":"segment",
                        "privileges":[
                            {
                                "method":"post",
                                "fields":null
                            }
                        ],
                        "methods":[
                            "post"
                        ]
                    }
                ],
                "plugin-instances":null,
                "member_availabilities":[
                    {
                        "id":1066,
                        "is_available":true
                    }
                ]
            }
        ],
        "dbg_info":{
            ...
        }
    }
}
```

**Delete an app**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/plugin?id=80' | json-pp
{
    "response":{
        "status":"OK",
        "dbg_info":{
            ...
        }
    }
}
```






