---
Title : Creative Custom Request Template Service
Description : <b>Note:</b> Mediation is available only to
ms.date: 10/28/2023
ms.custom: digital-platform-api
Monetize Ad Server customers.
---


# Creative Custom Request Template Service





<b>Note:</b> Mediation is available only to
Monetize Ad Server customers.



To support mobile ad server mediation, Xandr
uses a mediated creative type. Unlike standard creatives, which reside
as static content on a server, mediated creatives are configurable
containers that fetch server side content. The Creative Custom Request
Template Service is used to build the requests that populate these
mediated creatives. It does this by managing a set of custom templates,
each of which will correspond to a different ad server, and which is
associated with a template "type" defined by the <a
href="xandr-api-internal/creative-custom-request-template-type-service.md"
class="xref" target="_blank">Creative Custom Request Template Type
Service</a>.

This document describes the fields made available by this API service,
as well as providing usage examples. See the <a
href="creative-custom-request-template-service.md#ID-00001680__examples_custom_request_template_service"
class="xref">Examples</a> section below.



<b>Note:</b>



- For more information about mediated creatives, see the <a
  href="creative-service.md"
  class="xref" target="_blank">Creative Service</a>.





- For a list of supported query string parameters and macros, see <a
  href="xandr-api-internal/creative-custom-request-template-parameters.md"
  class="xref" target="_blank">Creative Custom Request Template
  Parameters</a>.







## REST API



<b>Note:</b>

- This information is for Xandr employees. If
  you are an employee and an admin user, your permissions are as
  follows:
  - You will see the global templates
  - You can view member-specific templates by appending a =member_id=
    field to the query string of your request.
- **Template Viewing Permissions  
  **:
  

  If you are a member you will be able to view the following templates:
  - Global templates (those belonging to `member_id`=0)
  - Your own templates, i.e., those associated with your `member_id`

  



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001680__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001680__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001680__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001680__entry__2"> <a
href="https://api.appnexus.com/creative-custom-request-template"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-template</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__entry__3">Create a custom request template</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__entry__1"><code class="ph codeph">GET</code> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001680__entry__2"><a
href="https://api.appnexus.com/creative-custom-request-template?id=123"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-template?id=123</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001680__entry__3">View
a specific custom request template</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001680__entry__2"><a
href="https://api.appnexus.com/creative-custom-request-template?member_id=0"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-template?member_id=0</a>
<p><a
href="https://api.appnexus.com/creative-custom-request-template?member_id=YOUR_MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-template?member_id=YOUR_MEMBER_ID</a></p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001680__entry__3">View
all of the custom request templates you have permission to view</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001680__entry__2"> <a
href="https://api.appnexus.com/creative-custom-request-template"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-template</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__entry__3">Update a custom request template</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001680__entry__2"> <a
href="https://api.appnexus.com/creative-custom-request-template?id=123"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-template?id=123</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__entry__3">Delete a custom request template</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001680__entry__2"> <a
href="https://api.appnexus.com/creative-custom-request-template/meta"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-template/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001680__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>




## JSON Fields

<table id="ID-00001680__table_nnn_ltb_rwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001680__table_nnn_ltb_rwb__entry__1"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00001680__table_nnn_ltb_rwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001680__table_nnn_ltb_rwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">macros</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">These are the macros
(or query string parameters) that will be sent on the request. See <a
href="creative-custom-request-template-service.md#ID-00001680__macros_custom_request_template_service"
class="xref">Macros</a>.
<p><strong>Sort by:</strong> No</p>
<p><strong>Filter by:</strong> No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">The ID of this
template.
<p><strong>Required On:</strong> <code class="ph codeph">PUT</code>
 </p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">type_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">The ID of the <a
href="xandr-api-internal/creative-custom-request-template-type-service.md"
class="xref" target="_blank">Creative Custom Request Template Type</a>
associated with this template.
<p><strong>Default:</strong> <code class="ph codeph">null</code> </p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code> </p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">The member ID whose
mediation creatives will be associated with this template. For more
information see the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> and the <a
href="member-service.md"
class="xref" target="_blank">Member Service</a>.
<p><strong>Default:</strong> <code class="ph codeph">0</code> </p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">media_subtype_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">The media subtype ID
for this template. Derived from the <a
href="creative-custom-request-template-service.md#ID-00001680__media_subtype_custom_req_template_service"
class="xref">Media Subtype</a> object below.
<p><strong>Default:</strong> <code class="ph codeph">null</code></p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">hostname</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">The hostname of the
ad server we're building a mediation request for.
<p><strong>Default:</strong> <code class="ph codeph">null</code></p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code> </p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong>Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">uri</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">The full URI of the
external ad server to which we'll send our request.
<p><strong>Default:</strong> <code class="ph codeph">null</code></p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST, PUT</code> if is_client is <code
class="ph codeph">false</code>.<code class="ph codeph"> </code></p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">port</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">The port on the
external ad server to which we'll send our request.
<p><strong>Default:</strong> <code class="ph codeph">80</code></p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">is_post</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">Whether the HTTP
request we're making is a <code class="ph codeph">POST</code>.
<p><strong>Default:</strong> <code class="ph codeph">false</code></p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">content</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">The content payload
we're sending with the request. For example, this may be a string of
JSON or XML.
<p><strong>Default:</strong> <code class="ph codeph">null</code></p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">timeout_ms</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">The timeout supported
by that ad server (Or the timeout we're going to impose on waiting for
that ad server?)
<p><strong>Default:</strong> 0</p>
<p><strong>Sort by:</strong>Yes</p>
<p><strong>Filter by:</strong>Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">is_client</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">Whether the request
is originating from an HTTP client (for example, an SDK).
<p><strong>Default:</strong> <code class="ph codeph">false</code></p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">media_subtype</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">The display style of
creatives that can use this template. Each media subtype belongs to a
superordinate media type. For example, the "Standard Banner" media
subtype belongs to the "Banner" media type. See <a
href="creative-custom-request-template-service.md#ID-00001680__media_subtype_custom_req_template_service"
class="xref">Media Subtype</a> below for more details.
<p><strong>Sort by:</strong> No</p>
<p><strong>Filter by:</strong> No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_nnn_ltb_rwb__entry__3">The date and time at
which this object was last updated.
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
</tbody>
</table>



>

## Macros

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001680__macros_custom_request_template_service__entry__1"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00001680__macros_custom_request_template_service__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001680__macros_custom_request_template_service__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__3">The
ID of this macro.
<p><strong>Default:</strong> <code class="ph codeph">null</code> </p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__1"><code
class="ph codeph">template_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__3">The
Creative Custom Request Template this macro is associated with.
<p><strong>Default:</strong> <code class="ph codeph">null</code></p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__3">The
query string parameter that will be built into the url, e.g., <code
class="ph codeph">send_referer</code>.
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__3">A
description of what the macro does, e.g., "Toggle if referer should be
sent".
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__3">The
type of value the parameter will accept. Note that the default value of
<code class="ph codeph">"string"</code> is also the most common. Allowed
values include:
<ul>
<li><code class="ph codeph">true_false</code></li>
<li><code class="ph codeph">string</code></li>
<li><code class="ph codeph">url</code></li>
<li><code class="ph codeph">integer</code></li>
<li><code class="ph codeph">decimal</code></li>
<li><code class="ph codeph">string_list</code></li>
<li><code class="ph codeph">select_from_list</code>             </li>
</ul>
<p><strong> Default:</strong> <code class="ph codeph">string</code></p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__1"><code
class="ph codeph">is_required</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__3">Whether
this macro is required in a call to the external ad server.
<p><strong>Default:</strong> <code class="ph codeph">true</code></p>
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__macros_custom_request_template_service__entry__3">The
date and time at which this macro object was last updated.
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
</tbody>
</table>

**Media Subtype**

You can use the <a
href="media-subtype-service.md"
class="xref" target="_blank">Media Subtype Service</a> and <a
href="media-type-service.md"
class="xref" target="_blank">Media Type Service</a> to view all
supported media subtypes and the media types to which they belong. For a
general definition of each supported media type, see <a
href="media-type-service.md"
class="xref" target="_blank">Supported Media Types</a>.

<table id="ID-00001680__table_rnn_ltb_rwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001680__table_rnn_ltb_rwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001680__table_rnn_ltb_rwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001680__table_rnn_ltb_rwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_rnn_ltb_rwb__entry__1"><code
class="ph codeph"> id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_rnn_ltb_rwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_rnn_ltb_rwb__entry__3">The ID of the media
subtype.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_rnn_ltb_rwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_rnn_ltb_rwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_rnn_ltb_rwb__entry__3"><strong>Read
Only.</strong> The name of the media subtype.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_rnn_ltb_rwb__entry__1"><code
class="ph codeph">media_type_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_rnn_ltb_rwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_rnn_ltb_rwb__entry__3"><strong>Read
Only.</strong> The name of the media type to which the subtype
belongs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_rnn_ltb_rwb__entry__1"><code
class="ph codeph">mediatype_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_rnn_ltb_rwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001680__table_rnn_ltb_rwb__entry__3"><strong>Read
Only.</strong> The ID of the media type to which the subtype
belongs.</td>
</tr>
</tbody>
</table>



>

## Examples

**View all creative request templates (that you have permissions to
view)**

``` pre
In the example below, note the difference between how standard Xandr macros are displayed in the {{uri}} field, e.g.,
* $\{USER_IP\}
and how the custom macros defined on a per-ad-server basis by this service are displayed:
* \#\{MK_SITEID\}.
You can see definitions for each macro in the {{macros}} array of objects below. You will only be able to view request templates belonging to your own member ID or public templates belonging to member ID 0.
{code}
$ curl -b cookies https://api.appnexus.com/creative-custom-request-template?member_id=0
{
    "response": {
        "status": "OK",
        "count": 4,
        "start_element": 0,
        "num_elements": 100,
        "creative-custom-request-templates": [
            {
                "id": 1,
                "type_id": 2,
                "member_id": 0,
                "media_subtype_id": 1,
                "hostname": "w.inmobi.com",
                "uri": "/showad.asm?mk-siteid=#{MK_SITEID}&mk-carrier=${USER_IP}&h-user-agent=${USER_AGENT_ENC}&h-referer=${REFERER_URL_ENC}&u-id-map=${INMOBI_UID_MAP}&u-latlong-accu=${INMOBI_LAT_LONG_ACCU}&u-age=${AGE}&u-gender=${GENDER}&d-localization=${USER_LOCALE}&d-nettype=${INMOBI_NETTYPE}&d-orientation=${INMOBI_ORIENTATION}",
                "port": 80,
                "is_post": false,
                "content": "",
                "timeout_ms": 200,
                "is_client": false,
                "last_modified": "2013-07-10 19:27:41",
                "media_subtype": {
                    "id": 1,
                    "name": "Standard Banner",
                    "media_type_name": "Banner",
                    "mediatype_id": 1
                },
                "macros": [
                    {
                        "id": 1,
                        "template_id": 1,
                        "code": "MK_SITEID",
                        "name": "MK_SITEID",
                        "type": "string",
                        "is_required": true,
                        "last_modified": "2013-07-10 19:27:41"
                    }
                ]
            },
            {
                "id": 2,
                "type_id": 3,
                "member_id": 0,
                "media_subtype_id": 1,
                "hostname": "ads.mydas.mobi",
                "uri": "/getAd?apid=#{APID}&auid=${DEVICE_MD5}&ua=${USER_AGENT_ENC}&uip=${USER_IP}&age=${AGE}&gender=${GENDER}&zip=${POSTAL_CODE}&lat=${GEO_LAT}&long=${GEO_LON}",
                "port": 80,
                "is_post": false,
                "content": "",
                "timeout_ms": 200,
                "is_client": false,
                "last_modified": "2013-07-10 19:27:50",
                "macros": [
                    {
                        "id": 2,
                        "template_id": 2,
                        "code": "APID",
                        "name": "APID",
                        "type": "string",
                        "is_required": true,
                        "last_modified": "2013-07-10 19:27:50"
                    }
                ]
            },
            {
                "id": 3,
                "type_id": 4,
                "member_id": 0,
                "media_subtype_id": 5,
                "hostname": "ads.mojiva.com",
                "uri": "/ad?zone=#{ZONE}&ip=${USER_IP}&ua=${USER_AGENT_ENC}&url=${REFERER_URL_ENC}&udid=${DEVICE_MD5}&lat=${GEO_LAT}&long=${GEO_LON}&country=${USER_COUNTRY}&region=${USER_STATE}&city=${USER_CITY}&dma=${USER_DMA}&zip=${POSTAL_CODE}",
                "port": 80,
                "is_post": false,
                "content": "",
                "timeout_ms": 200,
                "is_client": false,
                "media_subtype": {
                    "id": 1,
                    "name": "Standard Banner",
                    "media_type_name": "Banner",
                    "media_type_id": 1
                },
                "last_modified": "2013-07-10 19:28:00",
                "macros": [
                    {
                        "id": 3,
                        "template_id": 3,
                        "code": "ZONE",
                        "name": "ZONE",
                        "type": "string",
                        "is_required": true,
                        "last_modified": "2013-07-10 19:28:00"
                    }
                ]
            },
            {
                "id": 4,
                "type_id": 5,
                "member_id": 0,
                "media_subtype_id": 5,
                "hostname": "a.jumptap.com",
                "uri": "/a/ads?hid_sha1=${DEVICE_SHA1}&idfa=${DEVICE_APPLE_IDA}&pub=#{PUB}&site=#{SITE}&spot=#{SPOT}&url=${REFERER_URL_ENC}&ua=${USER_AGENT_ENC}&client-ip=${USER_IP}&country=${USER_COUNTRY}&ll=${JUMPTAP_LAT_LONG_ENC}&mt-age=${AGE}&mt-gender=${GENDER}",
                "port": 80,
                "is_post": false,
                "content": "",
                "timeout_ms": 200,
                "is_client": false,
                "media_subtype": {
                    "id": 5,
                    "name": "Interstitial",
                    "media_type_name": "Interstitial",
                    "media_type_id": 3
                },
                "last_modified": "2013-07-10 19:28:10",
                "macros": [
                    {
                        "id": 4,
                        "template_id": 4,
                        "code": "PUB",
                        "name": "PUB",
                        "type": "string",
                        "is_required": true,
                        "last_modified": "2013-07-10 19:28:10"
                    },
                    {
                        "id": 5,
                        "template_id": 4,
                        "code": "SITE",
                        "name": "SITE",
                        "type": "string",
                        "is_required": true,
                        "last_modified": "2013-07-10 19:28:10"
                    },
                    {
                        "id": 6,
                        "template_id": 4,
                        "code": "SPOT",
                        "name": "SPOT",
                        "type": "string",
                        "is_required": true,
                        "last_modified": "2013-07-10 19:28:10"
                    }
                ]
            }
        ],
        "dbg_info": {
            "instance": "28.bm-hbapi.prod.nym1",
            "slave_hit": true,
            "db": "141.bm-mysql.prod.nym1",
            "reads": 1,
            "read_limit": 100,
            "read_limit_seconds": 60,
            "writes": 0,
            "write_limit": 60,
            "write_limit_seconds": 60,
            "awesomesauce_cache_used": false,
            "count_cache_used": false,
            "warnings": [],
            "time": 66.461801528931,
            "start_microtime": 1373651335.4519,
            "version": "1.13.52",
            "slave_lag": 1,
            "member_last_modified_age": 68896
        }
    }
}
{code}
```

**View a single creative custom request template**

``` pre
{code}
$ curl -b cookies https://api.appnexus.com/creative-custom-request-template?id=2
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "creative-custom-request-template": {
            "id": 2,
            "type_id": 3,
            "member_id": 0,
            "media_subtype_id": 1,
            "hostname": "ads.mydas.mobi",
            "uri": "/getAd?apid=#{APID}&auid=${DEVICE_MD5}&ua=${USER_AGENT_ENC}&uip=${USER_IP}&age=${AGE}&gender=${GENDER}&zip=${POSTAL_CODE}&lat=${GEO_LAT}&long=${GEO_LON}",
            "port": 80,
            "is_post": false,
            "content": "",
            "timeout_ms": 200,
            "is_client": false,
            "media_subtype": {
                "id": 1,
                "name": "Standard Banner",
                "media_type_name": "Banner",
                "media_type_id": 1
            },
            "last_modified": "2013-07-10 18:57:43",
            "macros": [
                {
                    "id": 2,
                    "template_id": 2,
                    "code": "APID",
                    "name": "APID",
                    "type": "string",
                    "is_required": true,
                    "last_modified": "2013-07-02 00:50:53"
                }
            ]
        },
        "dbg_info": {
            "instance": "05.hbapi.sand-08.lax1",
            "slave_hit": false,
            "db": "master",
            "awesomesauce_cache_used": false,
            "count_cache_used": false,
            "warnings": [],
            "time": 68.688154220581,
            "start_microtime": 1373910064.7161,
            "version": "1.13.53.1",
            "slave_miss": "no_service_index",
            "slave_lag": 0,
            "member_last_modified_age": 1373910064
        }
    }
}
{code}
```

**Create a request template**

``` pre
Create a JSON file specifying the fields of your request template. Note that the {{type_id}} field is required on {{POST}}. For more information about the request template types, see the [Creative Custom Request Template Type Service]. For documentation of the ad request parameters and macros we support for integration with external mobile ad servers, see [Creative Custom Request Template Parameters].
{code}
$ cat create.json
{
    "creative-custom-request-template": {
        "hostname": "ads.light-vs-wily.com",
        "uri": "/a/ads?hid_sha1=${DEVICE_SHA1}&idfa=${DEVICE_APPLE_IDA}&enemy=#{ENEMY}&light_or_wily=#{LIGHT_OR_WILY}&megaman_version=#{MEGAMAN_VERSION}&url=${REFERER_URL_ENC}&ua=${USER_AGENT_ENC}&client-ip=${USER_IP}&country=${USER_COUNTRY}&ll=${JUMPTAP_LAT_LONG_ENC}&mt-age=${AGE}&mt-gender=${GENDER}",
        "port": 49995,
        "is_post": false,
        "content": "",
        "timeout_ms": 2,
        "is_client": false,
        "type_id": 1
    }
}
{code}
Make a POST call to the API with the JSON payload included.
{code}
$ curl -b cookies -X POST -d @create.json https://api.appnexus.com/creative-custom-request-template
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "creative-custom-request-template": {
            "id": 13,
            "type_id": 1,
            "member_id": 0,
            "media_subtype_id": 1,
            "hostname": "ads.light-vs-wily.com",
            "uri": "/a/ads?hid_sha1=${DEVICE_SHA1}&idfa=${DEVICE_APPLE_IDA}&enemy=#{ENEMY}&light_or_wily=#{LIGHT_OR_WILY}&megaman_version=#{MEGAMAN_VERSION}&url=${REFERER_URL_ENC}&ua=${USER_AGENT_ENC}&client-ip=${USER_IP}&country=${USER_COUNTRY}&ll=${JUMPTAP_LAT_LONG_ENC}&mt-age=${AGE}&mt-gender=${GENDER}",
            "port": 49995,
            "is_post": false,
            "content": "",
            "timeout_ms": 2,
            "is_client": false,
            "media_subtype": {
                "id": 1,
                "name": "Standard Banner",
                "media_type_name": "Banner",
                "media_type_id": 1
            },
            "last_modified": "2013-07-15 19:02:02",
            "macros": ""
        },
        "dbg_info": {
            "instance": "07.hbapi.sand-08.lax1",
            "slave_hit": false,
            "db": "master",
            "awesomesauce_cache_used": false,
            "count_cache_used": false,
            "warnings": [],
            "time": 67.02995300293,
            "start_microtime": 1373914957.1776,
            "version": "1.13.53.1",
            "slave_miss": "no_service_index",
            "slave_lag": 0,
            "member_last_modified_age": 1373914957
        }
    }
}
{code}
```

**Update a request template**

``` pre
First create a JSON file with only those parameters you'd like to update. Note that you must include the {{id}} of the request template being updated.
{code}
$ cat update.json
{"creative-custom-request-template":{"id":13, "type_id":2, "timeout_ms":250}}
{code}
Make the PUT call, including the JSON update.
{note}
In order to make a successful {{PUT}} call, you must do the following:
* Specify the ID of the request template in the JSON file
* Do not add any query string parameters (like {{?id=123}}) to your request (see the example below)
{note}
{code}
$ curl -b cookies -X PUT -d @update.json https://api.appnexus.com/creative-custom-request-template
{code}
Finally, note that a successful {{PUT}} call will not return any JSON response.
```

**Delete a request template**

``` pre
Deleting a request template is straightforward -- unlike the {{PUT}} call above, you will need to specify the ID of the template you want to delete:
{code}
$ curl -b cookies -X DELETE https://api.appnexus.com/creative-custom-request-template?id=123
{code}
```





## Related Topics

<a href="creative-custom-request-template-type-service.md"
class="xref">Creative Custom Request Template Type Service</a>

<a href="creative-custom-request-template-parameters.md"
class="xref">Creative Custom Request Template Parameters</a>






