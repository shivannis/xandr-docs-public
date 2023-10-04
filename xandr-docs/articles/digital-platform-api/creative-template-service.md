---
Title : Creative Template Service
Description : The Xandr platform categorizes creatives by format, media type, and
media subtype. Format defines the resource type of creatives (flash,
---


# Creative Template Service



The Xandr platform categorizes creatives by format, media type, and
media subtype. Format defines the resource type of creatives (flash,
image, etc.); media type defines the general display style of creatives
(banner, expandable, video, etc.); and media subtype defines the
specific display style of creatives (standard banner, MediaMind
expandable, Standard VAST, etc.).

**Standard Templates**

For each format, media type, and media subtype combination, Xandr
provides a standard creative template that ensures proper rendering on
web pages when creatives are served. You cannot edit these templates,
but the Creative Template Service allows you to view them and examine
their rendering code.

**Custom Templates**

If you want to customize the way certain types of creatives render, you
can build your own templates. With custom templates, you have complete
control of the JavaScript, HTML, or XML rendering code, and you can
define macros to prompt your traffickers to enter information and make
decisions about the behavior of creatives when they are uploaded.

<div id="buy-side-service-template__note_plm_ch4_wwb"


Note: You can have up to 100 custom
templates. Please note, however, that Xandr does not provide support for
creatives that do not render correctly as a result of errors in custom
template code.





## REST API



<table
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/template" class="xref"
target="_blank">https://api.appnexus.com/template</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all templates (standard and custom).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/template?member_id=null" class="xref"
target="_blank">https://api.appnexus.com/template?member_id=null</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
standard templates only.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/template?id=TEMPLATE_ID" class="xref"
target="_blank">https://api.appnexus.com/template?id=TEMPLATE_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific template.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/template" class="xref"
target="_blank">https://api.appnexus.com/template</a> (template
JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new custom template.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/template?id=TEMPLATE_ID" class="xref"
target="_blank">https://api.appnexus.com/template?id=TEMPLATE_ID</a>
(template JSON)</p>

<div id="buy-side-service-template__note_lyj_3h4_wwb"
class="note warning note_warning">
Warning:
<p>When you modify a custom template, your changes immediately affect
any creatives that are already using the template. If your changes cause
these creatives to stop rendering properly, their audit status will be
changed to "rejected," and they will stop serving on most third-party
inventory.</p>

</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
a custom template.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/template?id=TEMPLATE_ID" class="xref"
target="_blank">https://api.appnexus.com/template?id=TEMPLATE_ID</a></p>

<div id="buy-side-service-template__note_vhr_mh4_wwb"
class="note note_note">
Note:
<p>You cannot delete a custom template that is used by one or more
creatives, but you can archive the template to prevent future creatives
from using it. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-template-service.html#CreativeTemplateService-Examples"
class="xref" target="_blank">Archiving a custom template</a> example
below for more details.</p>

</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Delete
a custom template.</td>
</tr>
</tbody>
</table>



**Creating a Custom Template (iPhone only)**

This functionality is for an ad to download a specific app from iTunes.
A “direct-link” will not work in iPhone because of security. Therefore,
it cannot access the Seller Tag (AST) Library directly. In lieu of this,
we raise an event.

<div id="buy-side-service-template__note_onw_ph4_wwb"
class="note warning note_warning">

Warning: The user should have some
prior familiarity with creating custom templates and macros.



To accomplish this:

Create a placement that has a default creative that uses a template.
This lists the templates the member has access to. There’s a set of
Xandr creative templates that are not standard templates. This situation
would require a custom template.

The template needs to be associated with the default creative. When that
creative is selected, it finds this template. It sends out an additional
JavaScript function, along with the creative. It calls that function and
then sends that event to the Seller Tag library. This will open the
iTunes app store from the main page frame, where the Seller Tag library
is running.

Summarizing:

1.  The template takes in a urI.
2.  It sends an event out to the Seller Tag library.
3.  Seller Tag core has a listener for this custom event, and it
    launches iTunes.
4.  We pass this event name and what app store url that we want to open.
    The url takes you to the specific resource in the iTunes app store.

**Example Template**

``` pre
function iTunesClick(url)
{window.parent.document.dispatchEvent(new CustomEvent('apntag_iTunesLaunch', {
detail: { url: url }})); }
document.write('<a
href="#"
onclick="iTunesClick(\\\'${CLICK_URL}\\\');"><img
width="${CREATIVE_WIDTH}" height="${CREATIVE_HEIGHT}"
style="border-style: none" src="${MEDIA_URL}"/></a>');
```





## JSON Fields



<table
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the creative template.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">PUT/DELETE,</code> in query string.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(30)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
name of the creative template.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
description of the creative template.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the member that owns the template. For standard Xandr templates,
this is null.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">ad_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><div
>
<div id="buy-side-service-template__note_rvs_wh4_wwb"
class="note note_note">
Note:
<p>This field only applies when you are associating creatives to <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">augmented line items</a>.</p>


<p>The type of creative used. Possible values:</p>
<ul>
<li>"banner"</li>
<li>"video" (includes audio types)</li>
<li>"native"</li>
</ul>
<p>This value determines how auction items are tracked for the line
item's buying strategy, paying strategy, optimization options, creative
association, and targeting options.</p>

<div id="buy-side-service-template__note_ir3_b34_wwb"
class="note note_note">
Note:
<p>All creatives associated to a line item must have the same ad type,
which should match the <code class="ph codeph">ad_type</code> selected
in the <a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Line Item Service - ALI</a>.</p>

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">media_subtype</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
display style of creatives that can use this template. Each media
subtype belongs to a superordinate media type, for example, the
"Standard Banner" media subtype belongs to the "Banner" media type. See
<a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-template-service.html#CreativeTemplateService-MediaSubtype"
class="xref" target="_blank">Media Subtype</a> below for more
details.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">format</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
format of creatives that can use this template, for example, "image" or
"flash". See <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-template-service.html#CreativeTemplateService-Format"
class="xref" target="_blank">Format</a> below for more details.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_default</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
<code class="ph codeph">true,</code> the template is automatically
assigned to creatives that match the template's media type, media
subtype, and format. When the creatives are uploaded, this default
assignment can be overridden, if necessary. Note that there can be only
one default creative template per media type, media subtype, and format
combination.</p>
<ul>
<li><strong>Default</strong> - <code class="ph codeph">false</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_archived</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
<code class="ph codeph">true,</code> the template is archived. Archiving
a template prevents future creatives from using the template but does
not affect creatives already using the template.</p>
<ul>
<li><strong>Default</strong> - <code class="ph codeph">false</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">content_js</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
template's rendering code in JavaScript. The code can include both Xandr
standard macros and your own custom macros. Xandr macros must begin with
the $ symbol, and custom macros must begin with the # symbol. Each
custom macro must be defined in the <code
class="ph codeph">macros</code> array.</p>
<ul>
<li><strong>Required On:</strong> <code class="ph codeph">POST,</code>
if <code class="ph codeph">content_html</code> and <code
class="ph codeph">content_xml</code> are not provided.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">content_html</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
template's rendering code in HTML. The code can include both Xandr
standard macros and your own custom macros. Xandr macros must begin with
the $ symbol, and custom macros must begin with the # symbol. Each
custom macro must be defined in the <code
class="ph codeph">macros</code> array.</p>
<ul>
<li><strong>Required On:</strong> <code class="ph codeph">POST,</code>
if <code class="ph codeph">content_js</code> and <code
class="ph codeph">content_xml</code> are not provided.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">content_xml</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">callback_content_html</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">When
<code class="ph codeph">media_subtype</code> is "Popup" or "Popunder",
<code class="ph codeph">content_js</code> defines the rendering code for
the pop window, and this field defines the rendering code for the
content in the pop window.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">macros</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
custom macros used in the <code class="ph codeph">content_js</code>,
<code class="ph codeph">content_html</code>, or <code
class="ph codeph">content_xml</code> fields. You can include up to 20
custom macros in a template. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-template-service.html#CreativeTemplateService-CustomMacros"
class="xref" target="_blank">Custom Macros</a> below for more
details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time when the creative template was last modified.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>





<div id="buy-side-service-template__CreativeTemplateService-MediaSubtype"
>

## **Media Subtype**

You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-subtype-service.html"
class="xref" target="_blank">Media Subtype Service</a> and <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-type-service.html"
class="xref" target="_blank">Media Type Service</a> to view all
supported media subtypes and the media types to which they belong.

<table id="buy-side-service-template__table_i4w_f34_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_i4w_f34_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_i4w_f34_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_i4w_f34_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4w_f34_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4w_f34_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4w_f34_wwb__entry__3"><p>The
ID of media subtype.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4w_f34_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4w_f34_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4w_f34_wwb__entry__3"><p>The
name of the media subtype.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4w_f34_wwb__entry__1"><code
class="ph codeph">mediatype_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4w_f34_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4w_f34_wwb__entry__3"><p>The
ID of the media type to which the subtype belongs.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4w_f34_wwb__entry__1"><code
class="ph codeph">media_type_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4w_f34_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4w_f34_wwb__entry__3"><p>The
name of the media type to which the subtype belongs.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>



<div id="buy-side-service-template__CreativeTemplateService-Format"
>

## **Format**

You can use the
<a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Creative Format Service</a> to view all supported
creative formats.

<table id="buy-side-service-template__table_j4w_f34_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_j4w_f34_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_j4w_f34_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_j4w_f34_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
<th id="buy-side-service-template__table_j4w_f34_wwb__entry__4"
class="entry align-left colsep-1 rowsep-1">Filter By?</th>
<th id="buy-side-service-template__table_j4w_f34_wwb__entry__5"
class="entry align-left colsep-1 rowsep-1">Sort By?</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4w_f34_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4w_f34_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4w_f34_wwb__entry__3"><p>The
ID of creative format.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4w_f34_wwb__entry__4">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4w_f34_wwb__entry__5">Yes</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4w_f34_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4w_f34_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4w_f34_wwb__entry__3"><p>The
name of the creative format.</p>
<p><strong>Read Only.</strong></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4w_f34_wwb__entry__4">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4w_f34_wwb__entry__5">Yes</td>
</tr>
</tbody>
</table>



<div id="buy-side-service-template__CreativeTemplateService-CustomMacros"
>

## **Custom Macros**

You must define each custom macro used in the `content_js`,
`content_html`, or `content_xml` field.

<table id="buy-side-service-template__table_k4w_f34_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_k4w_f34_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_k4w_f34_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_k4w_f34_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__2">string
(30)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__3"><p>The
macro name exactly as it is used in the <code
class="ph codeph">content_js</code>, <code
class="ph codeph">content_html</code>, or <code
class="ph codeph">content_xml</code> field. For example, if
#{BORDER_SIZE} is the macro in the <code
class="ph codeph">content_js</code> field, you would pass "BORDER_SIZE"
here.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__2">string
(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__3"><p>The
user-friendly name for this macro that traffickers will see when they
add creatives that use this template via the UI.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__3"><p>The
type of value that traffickers will provide for this macro when they add
creatives that use this template via the Creative Service or UI.
Possible values: "true/false", "string", "url", "integer", "decimal",
"string_list", "select_from_list" and "file". For example, on the UI, if
you set this to "true/false", traffickers will see the macro name
followed by a check box.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__1"><code
class="ph codeph">is_required</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__3"><p>If
true, traffickers will be required to provide a value for the macro when
adding creatives that use this template.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__1"><code
class="ph codeph">default_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__3"><p>If
<code class="ph codeph">is_required</code> is false, this is the default
value that will be used when traffickers do not provide a value for the
macro when adding creatives that use this template.</p>
<p><strong>Required On:</strong><code class="ph codeph"> POST,</code> if
<code class="ph codeph">is_required</code> is false.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__1"><code
class="ph codeph">other_data</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_k4w_f34_wwb__entry__3">The
accepted values for the macro, if <code class="ph codeph">type</code> is
"string_list" or "select_from_list".</td>
</tr>
</tbody>
</table>





## Examples

**View all creative templates**

<div id="buy-side-service-template__p-20eb2a6d-1e56-42a6-96ee-f5d79f857f38"
>

``` pre
{code}
$ curl -b cookies -c cookies 'https://api.appnexus.com/template'

{
    "response": {
        "status": "OK",
        "count": 74,
        "start_element": 0,
        "num_elements": 100,
        "templates": [
            {
                "id": 1,
                "name": "Standard",
                "description": null,
                "last_modified": "2012-02-20 21:36:13",
                "is_archived": false,
                "member_id": null,
                "is_default": true,
                "content_html": "<iframe frameborder=\"0\" width=\"${CREATIVE_WIDTH}\" height=\"
                 ${CREATIVE_HEIGHT}\"marginheight=\"0\" marginwidth=\"0\" target=\"_blank\"
                 scrolling=\"no\" src=\"${MEDIA_URL}\"></iframe>",
                "content_js": "document.write('<iframe frameborder=\"0\" width=\"${CREATIVE_WIDTH}\"
                 height=\"${CREATIVE_HEIGHT}\" marginheight=\"0\" marginwidth=\"0\" target=\"_blank\"
                 scrolling=\"no\" src=\"${MEDIA_URL}\"> </iframe>');",
                "content_xml": null,
                "callback_content_html": null,
                "media_subtype": {
                    "id": 1,
                    "name": "Standard Banner",
                    "media_type_name": "Banner",
                    "media_type_id": 1
                },
                "format": {
                    "id": 1,
                    "name": "url-html"
                },
                "macros": null
            },
            {
                "id": 2,
                "name": "Standard",
                "description": null,
                "last_modified": "2012-01-31 14:33:37",
                "is_archived": false,
                "member_id": null,
                "is_default": true,
                "content_html": "<html><body style=\"margin-left: 0%; margin-right: 0%; margin-top:
                 0%; margin-bottom: 0%\"><script type=\"text/javascript\" src=\"${MEDIA_URL}\">
                 </script></body></html>",
                "content_js": "document.write('<script type=\"text/javascript\" src=\"${MEDIA_URL}\">
                 </scr'+'ipt>');",
                "content_xml": null,
                "callback_content_html": null,
                "media_subtype": {
                    "id": 1,
                    "name": "Standard Banner",
                    "media_type_name": "Banner",
                    "media_type_id": 1
                },
                "format": {
                    "id": 2,
                    "name": "url-js"
                },
                "macros": null
            },
            {
                "id": 3,
                "name": "Standard",
                "description": null,
                "last_modified": "2012-01-31 14:33:37",
                "is_archived": false,
                "member_id": null,
                "is_default": true,
                "content_html": "\u000a<html><body style=\"margin-left: 0%; margin-right: 0%; margin-top:
                 0%;margin-bottom: 0%\"><script type=\"text/javascript\">\u000a<!--\u000a(function()\u000a\
                 u0009{\u000a\u0009var flashAd='<OBJECT id=\"${AUCTION_ID}\" data=\"${MEDIA_URL}\" classid=
                 \"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" WIDTH=\"${CREATIVE_WIDTH}\" HEIGHT=\
                 "${CREATIVE_HEIGHT}\"flashvars=\"${FLASHVARS}\"><PARAM NAME=movie VALUE=\"${MEDIA_URL}\">
                 <PARAM NAME=loop VALUE=true><PARAM NAME=menu VALUE=false><PARAM NAME=quality VALUE=high>
                 <PARAM NAME=wmode VALUE=\"opaque\"><PARAM NAME=bgcolor VALUE=#FFFFFF><PARAM NAME=
                 allowscriptaccess VALUE=always><PARAM NAME=flashvarsVALUE=\"${FLASHVARS}\"><OBJECT TYPE=\
                 "application/x-shockwave-flash\" data=\"${MEDIA_URL}?${FLASHVARS}\"
                 ..."
                "content_js": "(function()\u000a\u0009{\u000a\u0009var flashAd='<OBJECT id=\"${AUCTION_ID}\"
                 data=\"${MEDIA_URL}\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" WIDTH=
                 \"${CREATIVE_WIDTH}\"HEIGHT=\"${CREATIVE_HEIGHT}\" flashvars=\"${FLASHVARS}\"><PARAM NAME=movie
                 VALUE=\"${MEDIA_URL}\"><PARAM NAME=loop VALUE=true><PARAM NAME=menu VALUE=false><PARAM NAME=
                 quality VALUE=high><PARAM NAME=wmode VALUE=\"opaque\"><PARAM NAME=bgcolor VALUE=#FFFFFF>
                 <PARAM NAME=allowscriptaccess VALUE=always><PARAM NAME=flashvars VALUE=\"${FLASHVARS}\">
                 <OBJECT TYPE=\"application/x-shockwave-flash\" data=\"${MEDIA_URL}? ${FLASHVARS}\" width=\
                 "${CREATIVE_WIDTH}\" height=\"${CREATIVE_HEIGHT}\" wmode=\"opaque\" allowscriptaccess=
                 \"always\"></OBJECT></OBJECT>';\u000a\u0009var flashBackupUrl='${FLASH_BACKUP_URL}';\u000a\
                 u0009varalternate = '';\u000a\u0009if (flashBackupUrl)\u000a\u0009{\u000a\u0009\u0009alternate=
                 '<a href=\"${CLICK_URL}\" target=\"_blank\">\"<img width=\"${CREATIVE_WIDTH}\" height=
                 ..."
                "content_xml": null,
                "callback_content_html": null,
                "media_subtype": {
                    "id": 1,
                    "name": "Standard Banner",
                    "media_type_name": "Banner",
                    "media_type_id": 1
                },
                "format": {
                    "id": 3,
                    "name": "flash"
                },
                "macros": null
            },
            {
                "id": 4,
                "name": "Standard",
                "description": null,
                "last_modified": "2012-01-31 14:33:37",
                "is_archived": false,
                "member_id": null,
                "is_default": true,
                "content_html": "<a href=\"${CLICK_URL}\" target=\"_blank\"><img width=\"${CREATIVE_WIDTH}
                 \" height=\"${CREATIVE_HEIGHT}\" style=\"border-style: none\" src=\"${MEDIA_URL}\"/></a>",
                "content_js": "document.write('<a href=\"${CLICK_URL}\" target=\"_blank\"><img width=
                 \"${CREATIVE_WIDTH}\" height=\"${CREATIVE_HEIGHT}\" style=\"border-style: none\" src=
                 \"${MEDIA_URL}\"/></a>');",
                "content_xml": null,
                "callback_content_html": null,
                "media_subtype": {
                    "id": 1,
                    "name": "Standard Banner",
                    "media_type_name": "Banner",
                    "media_type_id": 1
                },
                "format": {
                    "id": 4,
                    "name": "image"
                },
                "macros": null
            },
            ...
        ]
    }
}
{code}
```



**View a specific creative template**

In this example, the request gets details about the Xandr standard
template for rendering creatives of the media type "Banner", media
subtype "Standard Banner", and format "flash".

``` pre
{code}
$ curl -b cookies -c cookies 'https://api.appnexus.com/template?id=3'

{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "template": {
            "id": 3,
            "name": "Standard",
            "description": null,
            "last_modified": "2012-01-31 14:33:37",
            "is_archived": false,
            "member_id": null,
            "is_default": true,
            "content_html": "\u000a<html><body style=\"margin-left: 0%; margin-right: 0%; margin-top:
             0%;margin-bottom: 0%\"><script type=\"text/javascript\">\u000a<!--\u000a(function()\u000a\
             u0009{\u000a\u0009var flashAd='<OBJECT id=\"${AUCTION_ID}\" data=\"${MEDIA_URL}\" classid=
             \"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" WIDTH=\"${CREATIVE_WIDTH}\" HEIGHT=\
             "${CREATIVE_HEIGHT}\"flashvars=\"${FLASHVARS}\"><PARAM NAME=movie VALUE=\"${MEDIA_URL}\">
             <PARAM NAME=loop VALUE=true><PARAM NAME=menu VALUE=false><PARAM NAME=quality VALUE=high>
             <PARAM NAME=wmode VALUE=\"opaque\"><PARAM NAME=bgcolor VALUE=#FFFFFF><PARAM NAME=
             allowscriptaccess VALUE=always><PARAM NAME=flashvarsVALUE=\"${FLASHVARS}\"><OBJECT TYPE=\
             "application/x-shockwave-flash\" data=\"${MEDIA_URL}?${FLASHVARS}\"
             ..."
            "content_js": "(function()\u000a\u0009{\u000a\u0009var flashAd='<OBJECT id=\"${AUCTION_ID}\"
             data=\"${MEDIA_URL}\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" WIDTH=
             \"${CREATIVE_WIDTH}\"HEIGHT=\"${CREATIVE_HEIGHT}\" flashvars=\"${FLASHVARS}\"><PARAM NAME=movie
             VALUE=\"${MEDIA_URL}\"><PARAM NAME=loop VALUE=true><PARAM NAME=menu VALUE=false><PARAM NAME=
             quality VALUE=high><PARAM NAME=wmode VALUE=\"opaque\"><PARAM NAME=bgcolor VALUE=#FFFFFF>
             <PARAM NAME=allowscriptaccess VALUE=always><PARAM NAME=flashvars VALUE=\"${FLASHVARS}\">
             <OBJECT TYPE=\"application/x-shockwave-flash\" data=\"${MEDIA_URL}? ${FLASHVARS}\" width=\
             "${CREATIVE_WIDTH}\" height=\"${CREATIVE_HEIGHT}\" wmode=\"opaque\" allowscriptaccess=
             \"always\"></OBJECT></OBJECT>';\u000a\u0009var flashBackupUrl='${FLASH_BACKUP_URL}';\u000a\
             u0009varalternate = '';\u000a\u0009if (flashBackupUrl)\u000a\u0009{\u000a\u0009\u0009alternate=
             '<a href=\"${CLICK_URL}\" target=\"_blank\">\"<img width=\"${CREATIVE_WIDTH}\" height=
             ..."
            "content_xml": null,
            "callback_content_html": null,
            "media_subtype": {
                "id": 1,
                "name": "Standard Banner",
                "media_type_name": "Banner",
                "media_type_id": 1
            },
            "format": {
                "id": 3,
                "name": "flash"
            },
            "macros": null
        }
    }
}
{code} 
```

**Add a custom template**

In this example, the POST request creates a custom creative template for
rendering standard banner image creatives with a border. The template
contains two custom macros for defining the border size and border
color.

``` pre
{code}$ cat template

{
    "template": {
        "name": "Image with border",
        "media_subtype":
            {
                "id": 1
            },
        "format":
            {
                "id": 4
            },
        "content_js": "document.write('<a href=${CLICK_URL}><img src=${MEDIA_URL} border=#{BORDER_SIZE}
         border_color=#{BORDER_COLOR}></img></a>');",
        "macros":[
            {
                "code": "BORDER_SIZE",
                "name": "Image Border Size",
                "type": "integer",
                "is_required": false,
                "default_value": "4"
            },
            {
                "code": "BORDER_COLOR",
                "name": "Image Border Color",
                "type": "string",
                "is_required": false,
                "default_value": "black"
            }
        ]
    }
}{code}
{code}
$ curl -b cookies -c cookies -X POST -d @template 'https://api.appnexus.com/template'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 222,
        "start_element": 0,
        "num_elements": 100,
        "template": {
            "id": 222,
            "name": "Image with border",
            "description": null,
            "last_modified": "2012-02-22 23:20:05",
            "is_archived": false,
            "member_id": 1066,
            "is_default": false,
            "content_html": null,
            "content_js": "document.write('<a href=${CLICK_URL}><img src=${MEDIA_URL} border=#{BORDER_SIZE}
             border_color=#{BORDER_COLOR}></img></a>');",
            "content_xml": null,
            "callback_content_html": null,
            "media_subtype": {
                "id": 1,
                "name": "Standard Banner",
                "media_type_name": "Banner",
                "media_type_id": 1
            },
            "format": {
                "id": 4,
                "name": "image"
            },
            "macros": [
                {
                    "code": "BORDER_COLOR",
                    "name": "Image Border Color",
                    "is_required": false,
                    "type": "string",
                    "default_value": "black",
                    "other_data": null
                },
                {
                    "code": "BORDER_SIZE",
                    "name": "Image Border Size",
                    "is_required": false,
                    "type": "integer",
                    "default_value": "4",
                    "other_data": null
                }
            ]
        }
    }
}
{code} 
```

**Modify a custom template**

In this example, the PUT request updates the default values of the
custom macros in custom template 222.

``` pre
{code}$ cat template_update

{
    "template": {
        "macros":[
            {
                "code": "BORDER_SIZE",
                "name": "Image Border Size",
                "type": "integer",
                "is_required": false,
                "default_value": "6"
            },
            {
                "code": "BORDER_COLOR",
                "name": "Image Border Color",
                "type": "string",
                "is_required": false,
                "default_value": "blue"
            }
        ]
    }
}{code}
{code}
$ curl -b cookies -c cookies -X PUT -d @template_update 'https://api.appnexus.com/template?id=222'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "222",
        "start_element": 0,
        "num_elements": 100,
        "template": {
            "id": 222,
            "name": "Image with border",
            "description": null,
            "last_modified": "2012-02-22 23:49:39",
            "is_archived": false,
            "member_id": 1066,
            "is_default": false,
            "content_html": null,
            "content_js": "document.write('<a href=${CLICK_URL}><img src=${MEDIA_URL} border=#{BORDER_SIZE} border_color=#{BORDER_COLOR}></img></a>');",
            "content_xml": null,
            "callback_content_html": null,
            "media_subtype": {
                "id": 1,
                "name": "Standard Banner",
                "media_type_name": "Banner",
                "media_type_id": 1
            },
            "format": {
                "id": 4,
                "name": "image"
            },
            "macros": [
                {
                    "code": "BORDER_COLOR",
                    "name": "Image Border Color",
                    "is_required": false,
                    "type": "string",
                    "default_value": "blue",
                    "other_data": null
                },
                {
                    "code": "BORDER_SIZE",
                    "name": "Image Border Size",
                    "is_required": false,
                    "type": "integer",
                    "default_value": "6",
                    "other_data": null
                }
            ]
        }
    }
}
{code} 
```

**Archive a custom template**

In this example, the PUT request sets the `is_archived`field to true,
thus archiving the template and preventing future creatives from using
it.

``` pre
{code}$ cat template_archive

{
    "template": {
         "is_archived": true
    }
}{code}
{code}
$ curl -b cookies -c cookies -X PUT -d @template_archive 'https://api.appnexus.com/template?id=222'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "222",
        "start_element": 0,
        "num_elements": 100,
        "template": {
            "id": 222,
            "name": "Image with border",
            "description": null,
            "last_modified": "2012-02-22 23:57:52",
            "is_archived": true,
            "member_id": 1066,
            "is_default": false,
            "content_html": null,
            "content_js": "document.write('<a href=${CLICK_URL}><img src=${MEDIA_URL} border=#{BORDER_SIZE}
             border_color=#{BORDER_COLOR}></img></a>');",
            "content_xml": null,
            "callback_content_html": null,
            "media_subtype": {
                "id": 1,
                "name": "Standard Banner",
                "media_type_name": "Banner",
                "media_type_id": 1
            },
            "format": {
                "id": 4,
                "name": "image"
            },
            "macros": [
                {
                    "code": "BORDER_COLOR",
                    "name": "Image Border Color",
                    "is_required": false,
                    "type": "string",
                    "default_value": "blue",
                    "other_data": null
                },
                {
                    "code": "BORDER_SIZE",
                    "name": "Image Border Size",
                    "is_required": false,
                    "type": "integer",
                    "default_value": "6",
                    "other_data": null
                }
            ]
        }
    }
}
{code} 
```

**Re-activate an archived custom template**

In this example, the PUT request sets the {{is_archived}} field to
false, thus re-activating the template and allowing new creatives to use
it.

``` pre
{code}$ cat template_activate

{
    "template": {
         "is_archived": false
    }
}{code}
{code}
$ curl -b cookies -c cookies -X PUT -d @template_activate 'https://api.appnexus.com/template?id=222'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "222",
        "start_element": 0,
        "num_elements": 100,
        "template": {
            "id": 222,
            "name": "Image with border",
            "description": null,
            "last_modified": "2012-02-22 23:57:52",
            "is_archived": false,
            "member_id": 1066,
            "is_default": false,
            "content_html": null,
            "content_js": "document.write('<a href=${CLICK_URL}><img src=${MEDIA_URL} border=#{BORDER_SIZE}
             border_color=#{BORDER_COLOR}></img></a>');",
            "content_xml": null,
            "callback_content_html": null,
            "media_subtype": {
                "id": 1,
                "name": "Standard Banner",
                "media_type_name": "Banner",
                "media_type_id": 1
            },
            "format": {
                "id": 4,
                "name": "image"
            },
            "macros": [
                {
                    "code": "BORDER_COLOR",
                    "name": "Image Border Color",
                    "is_required": false,
                    "type": "string",
                    "default_value": "blue",
                    "other_data": null
                },
                {
                    "code": "BORDER_SIZE",
                    "name": "Image Border Size",
                    "is_required": false,
                    "type": "integer",
                    "default_value": "6",
                    "other_data": null
                }
            ]
        }
    }
}
{code} 
```

**Delete a custom template**

In this example, the DELETE request removes the custom template from the
system entirely.

``` pre
{code}$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/template?id=222'

{
    "response": {
        "status": "OK"
    }
}
{code}
```






