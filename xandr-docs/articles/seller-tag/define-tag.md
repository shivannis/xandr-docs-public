---
Title : Define Tag
This function defines parameters for an ad placement. Note that no more
ms.custom : seller-tag
---


# Define Tag




This function defines parameters for an ad placement. Note that no more
than 12 placements should be specified per page. Returns
a `Tag` `object` that can be used later after defining. 

``` pre
defineTag({params})
```




## Parameters

The parameters listed below can be sent as arguments in the function.

<table id="ID-000011c3__table_mp5_h4m_g5b" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000011c3__table_mp5_h4m_g5b__entry__1"
class="entry">Parameter</th>
<th id="ID-000011c3__table_mp5_h4m_g5b__entry__2"
class="entry">Type</th>
<th id="ID-000011c3__table_mp5_h4m_g5b__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">member</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">number</td>
<td class="entry" headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">The
member ID for the placement (overrides global setting from <code
class="ph codeph">setPageOpts()</code>)</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">invCode</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">string</td>
<td class="entry" headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">The
placement code for this placement.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">tagId</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">number</td>
<td class="entry" headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">The
placement ID for the placement.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">sizes</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">array of numbers</td>
<td class="entry" headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">One
or more placement sizes in the format <code
class="ph codeph">[300,250]</code> ({{height, width}}) for a single size
and <code class="ph codeph">[[300,250],[728,90]]</code> for multiple
sizes.
<p>If more than one size is specified, the first is the placement size
and the rest are promo sizes.</p>

<b>Note:</b> Either <code
class="ph codeph">sizes</code> or <code
class="ph codeph">sizeMapping</code> is allowed per ad slot, not both.
</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">sizeMapping</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">array of objects</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Specifies a set of
sizes based on a minimum viewport size. This allows a seller to set
which sizes should be used based on the size of the viewport. If the
viewport size is smaller than the smallest <code
class="ph codeph">minWidth</code> provided, no ad will be requested for
the ad slot. Sizes are passed in the format <code
class="ph codeph">[300,250]</code> for a single size and <code
class="ph codeph">[[300,250],[728,90]]</code> for multiple sizes.
<p>Each object in the array contains two parameters :</p>
<ul>
<li><code class="ph codeph">minWidth</code>: Specifies the minimum width
of the viewport. For example, <code
class="ph codeph">minWidth: 1024</code></li>
<li><code class="ph codeph">sizes</code>: Specifies the size(s) of the
ad. For example, <code
class="ph codeph">sizes: [[300,250],[300,600]]</code></li>
</ul>

<b>Note:</b> Either <code
class="ph codeph">sizes</code> or <code
class="ph codeph">sizeMapping</code> is allowed per ad slot, not both.
</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">targetId</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">string</td>
<td class="entry" headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">The
unique identifier of a specific ad slot, created by the
publisher/seller. Corresponds to a <code class="ph codeph">div</code>
tag in the body of the page where the ad should appear. The <code
class="ph codeph">div</code> tag's <code class="ph codeph">id</code>
should be set to the same value as the <code
class="ph codeph">targetId</code>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">forceCreativeId</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">number</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Specifies the ID of a
creative that should be forced to appear in this placement. Forcing a
creative allows you to preview an ad on a site, perform testing or
certification, and create tear sheets.

<b>Tip:</b> Creatives can also be forced in
the query string of the website URL in the format <code
class="ph codeph">ast_override_[parameter]=[value]:[creative_id]</code>
, where you will replace <code class="ph codeph">parameter</code>, <code
class="ph codeph">value</code>, and <code
class="ph codeph">creative_id</code> as needed. You may pass in multiple
<code class="ph codeph">[value]:[creative_id]</code> combinations
separated by a comma (e.g. <code
class="ph codeph">http://test.example.com/demo.html?ast_override_ index = 2 : 40611315 , 3 : 40611316</code>
)
<p>You may choose one of the following options for the <code
class="ph codeph">parameter</code>.</p>
<dl>
<dt>div</dt>
<dd>
Specifies a target div ID of the ad slot to override. In <code
class="ph codeph">value</code>, enter the div ID you would like to force
<code class="ph codeph">creative_id</code> into
</dd>
<dd>
to override the div with ID <code class="ph codeph">apn_ad_slot_1</code>
with creative <code class="ph codeph">40611315:</code>
</dd>
<dd>
<code
class="ph codeph">http://test.example.com/demo.html?ast_override_div=apn_ad_slot_1:40611315</code>
</dd>
<dt>index</dt>
<dd>
Specifies the index number of the ad slot to override, starting from
<code class="ph codeph">0</code>. In <code
class="ph codeph">value</code> enter the index number you would like to
force <code class="ph codeph">creative_id</code> into
</dd>
<dd>
To override the 3rd defined placement with creative <code
class="ph codeph">40611315:</code>
</dd>
<dd>
<code
class="ph codeph">http://test.example.com/demo.html?ast_override_index=2:40611315</code>
</dd>
<dt>tag_id</dt>
<dd>
Specifies the tag ID that of the ad slot to override. In <code
class="ph codeph">value</code> enter the tag_id you would like to force
<code class="ph codeph">creative_id</code> into. If the size of the ad
slot and creative do not match, the creative will still be rendered but
a warning message will be displayed. The creative would not serve in
this ad slot in a live auction.
</dd>
<dd>
To override <code class="ph codeph">tag_id 8011968</code> with creative
<code class="ph codeph">40611315:</code>
</dd>
<dd>
<code
class="ph codeph">http://test.example.com/demo.html?ast_override_tag_id=8011968:40611315</code>
</dd>
<dt>inv_code</dt>
<dd>
Specifies the inventory code that of the ad slot to override. In <code
class="ph codeph">value</code> enter the inventory code you would like
to force <code class="ph codeph">creative_id</code> into. If the size of
the ad slot and creative do not match, the creative will still be
rendered but a warning message will be displayed. The creative would not
serve in this ad slot in a live auction.
</dd>
<dd>
To override <code class="ph codeph">40611315:</code> with creative <code
class="ph codeph">40611315:</code>
</dd>
<dd>
<code
class="ph codeph">http://test.example.com/demo.html?ast_override_inv_code=9123450:40611315</code>

<b>Tip:</b> The query string parameters listed
above will override any value specified in the <code
class="ph codeph">forceCreativeId</code> parameter of the ad tag.

</dd>
</dl>
</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">allowSmallerSizes</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">Boolean</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Indicates whether
smaller ad sizes than defined on <code class="ph codeph">sizes</code>
are allowed.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">allowedFormats</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">array of strings</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Indicates the desired
formats. Options include ['video', 'banner', 'native, 'audio']. If <code
class="ph codeph">allowedFormats</code> are invoked, it will override
the media types assigned on the placements' settings in <span
class="ph">Monetize. Do not invoke <code
class="ph codeph">allowedFormats</code> to use an ad format, such as
<code class="ph codeph">interstitials</code>, that is not included in
the predefined options.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">rendererOptions</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">object</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Specifies one or more
options that can be passed into the renderer for custom rendering.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">position</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">string</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Identify the
placement as above or below the fold. Possible values: <code
class="ph codeph">above</code> or <code
class="ph codeph">below</code>.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">disablePsa</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">Boolean</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Indicates whether
this placement should disable PSAs from being shown.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">nobidIfUnsold</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">Boolean</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Indicates that a
blank ad should be returned if the placement is not sold rather than a
default ad or PSA.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">keywords</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">object</td>
<td class="entry" headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">A
set of key/value pairs applicable to this placement. Query string
segments are defined by key/value pairs in this object. Keywords that
contain hyphens must be surrounded by single quote marks. Best practice
is to always enclose keywords in single quotes. A maximum of 100
key/value pairs can be defined per tag.
<p>To pass custom data use any of the keywords:  <code
class="ph codeph">pt1, pt2, pt3, pt4, pt5, pt6, pt7, pt8, pt9.</code></p>
<p>These keywords can be used to pass custom data through managed
placements to managed 3rd-party creatives, for example, <code
class="ph codeph">pt1=products:ipad,ios,iphone </code></p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">trafficSourceCode</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">string</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Specifies the
third-party source of this impression.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">alwaysUseXDomainIframe</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">Boolean</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Indicates whether the
ad creative should be loaded into a cross-domain iframe. This will
prevent data leakage and does not allow the creative to access the
parent page directly.

<b>Note:</b> This parameter has been
deprecated in favor of <code class="ph codeph">enableSafeFrame.</code>
</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">privateSizes</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">array of numbers</td>
<td class="entry" headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">The
additional sizes that allowed to serve only for custom deals or packages
(when private sizes are allowed by the deal or package). In the format
<code class="ph codeph">[300,250]</code> for a single size and <code
class="ph codeph">[[300,250],[728,90]]</code> for multiple sizes</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">supplyType</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">string</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Indicates the type of
supply for this placement. Possible values are <code
class="ph codeph">mobile_web</code> ,  <code
class="ph codeph">mobile_app</code>, or  <code
class="ph codeph">web</code>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">pubClick</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">string</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Specifies a
publisher-supplied URL for third-party click tracking. This is just a
placeholder into which the publisher can insert their own click tracker.
This parameter should be used for an unencoded tracker. This parameter
is expected to be the last parameter in the URL. Please note that the
click tracker placed in this parameter will only fire if the creative
winning the auction is using Xandr click
tracking properly. For example, <code
class="ph codeph">pubClick=http://click.adserver.com/</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">reserve</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">number</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Specifies the reserve
price for this inventory. This parameter will override a preset price
and will set the hard floor if Yield Management is not being used. Price
is assumed to be in the publisher's currency. For example, <code
class="ph codeph">reserve=5.00</code>

<b>Note:</b> This option is not available from
Monetize, and must be appended to the placement
tag manually.
</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">extInvCode</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2"> string</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Specifies a
predefined value passed via the <code
class="ph codeph">ext_inv_code</code> field of the request body that can
be used in reporting. The value must be entered into the system before
it is logged. For more information, see <a
href="xandr-api/external-inventory-code-service.md"
class="xref" target="_blank">External Inventory Code Service</a>. For
example, <code class="ph codeph">ext_inv_code='10039'</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">native</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">object</td>
<td class="entry" headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">A
native ad is a collection of individual assets. These could be a title,
a description, or an image. This is an optional parameter. You do not
need to specify this in <code class="ph codeph">defineTag</code>. Any
field in the <code class="ph codeph">native</code> object configured as
<code class="ph codeph">{required:true}</code> will be required on the
bid response object. If not present, the bid is not added to the
auction.
<dl>
<dt>title</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
<code class="ph codeph">max_length: &lt;number&gt;</code>
</dd>
<dd>
Where field marked <code class="ph codeph">required: true</code> will be
required on the bid response object. If <code
class="ph codeph">max_length</code> is specified, responses for this
fields must not exceed the <code class="ph codeph">max_length</code>
number.
</dd>
<dt>body</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
<code class="ph codeph">max_length: &lt;number&gt;</code>
</dd>
<dd>
Where field marked <code class="ph codeph">required: true</code> will be
required on the bid response object. If <code
class="ph codeph">max_length</code> is specified, responses for this
field must not exceed the <code class="ph codeph">max_length</code>
number.
</dd>
<dt>image</dt>
<dd>
<pre class="pre codeblock"><code>required: &lt;true | false&gt;
sizes: [
{ width: &lt;number&gt;, height: &lt;number&gt; }
]
aspect_ratios: [
{min_width: &lt;number&gt;, min_height: &lt;number&gt;, ratio_width: &lt;number&gt;, ratio_height: &lt;number&gt;}
]</code></pre>
</dd>
<dd>
Where field marked <code class="ph codeph">required: true</code> will be
required on the bid response object.
</dd>
<dd>
If <code class="ph codeph">sizes</code> is specified, the image response
must exactly match the given width and height dimensions.
</dd>
<dd>
If <code class="ph codeph">aspect_ratios</code> are specified as an
alternative to <code class="ph codeph">sizes</code>, the image must at
least match the minimum height/width dimensions and <code
class="ph codeph">aspect_ratios</code> value defined.
</dd>
<dt>icon</dt>
<dd>
<pre class="pre codeblock"><code>required: &lt;true | false&gt;
sizes: [
{ width: &lt;number&gt;, height: &lt;number&gt; }
]
aspect_ratios: [
{min_width: &lt;number&gt;, min_height: &lt;number&gt;, ratio_width: &lt;number&gt;, ratio_height: &lt;number&gt;}
]</code></pre>

</dd>
<dd>
Where field marked <code class="ph codeph">required: true</code> will be
required on the bid response object.
</dd>
<dd>
If <code class="ph codeph">sizes</code> is specified, the image response
must exactly match the given width and height dimensions.
</dd>
<dd>
If <code class="ph codeph">aspect_ratios</code> are specified as an
alternative to <code class="ph codeph">sizes</code>, the image must at
least match the minimum height/width dimensions and <code
class="ph codeph">aspect_ratios</code> value defined.
</dd>
<dt>sponsoredBy</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
<code class="ph codeph">max_length: &lt;number&gt;</code>
</dd>
<dd>
Where this field marked <code class="ph codeph">required: true</code>
will be required on the bid response object. If <code
class="ph codeph">max_length</code> is specified, responses for this
fields must not exceed the <code class="ph codeph">max_length</code>
number.
</dd>
<dt>cta</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
Where this field is marked <code
class="ph codeph">required: true</code>, the parameter will be required
on the bid response object.
</dd>
<dt>clickUrl</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
Where this field is marked <code
class="ph codeph">required: true</code>, the parameter will be required
on the bid response object.
</dd>
<dt>privacySupported</dt>
<dd>
<code class="ph codeph">&lt;true | false&gt;</code>
</dd>
<dd>
If true, the publisher supports a privacy link. The privacy link will be
sent to the publisher in the bid response.
</dd>
<dt>video</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
<code class="ph codeph">min_duration: &lt;number&gt;</code>
</dd>
<dd>
<code class="ph codeph">max_duration: &lt;number&gt;</code>
</dd>
<dd>
<p>Where field marked <code class="ph codeph">required: true</code> will
be required on the bid response object.</p>
<p><code class="ph codeph">min_duration</code> and <code
class="ph codeph">max_duration</code> values are specified in
milliseconds.</p>
<p><code class="ph codeph">min_duration</code> default = 0</p>
</dd>
<dt>desc2</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
&#10;</dd>
<dt>rating</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
&#10;</dd>
<dt>displayUrl</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
&#10;</dd>
<dt>likes</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
&#10;</dd>
<dt>downloads</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
&#10;</dd>
<dt>price</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
&#10;</dd>
<dt>salePrice</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
&#10;</dd>
<dt>rating</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
&#10;</dd>
<dt>phone</dt>
<dd>
<code class="ph codeph">required: &lt;true | false&gt;</code>
</dd>
<dd>
&#10;</dd>
<dt>address</dt>
<dd>
<code
class="ph codeph">required: &lt;true | false&gt;</code><strong></strong>
</dd>
<dd>
&#10;</dd>
</dl>
<p><strong>Format:</strong></p>
<pre id="ID-000011c3__codeblock_vp5_h4m_g5b"
class="pre codeblock"><code>   
 native: {
    title: {required: true},
    body: {required: false, max_length: 300},
    image: {required: true},
    icon: {
       required: false,
       sizes: [{ width: 50, height: 50 }]
     },
     sponsoredBy: {required: true},
     cta: {required: true},
     clickUrl: {required: true},
     privacySupported: true,
     desc2:      {required: true},
     rating:     {required: false},
     displayUrl: {required: false},
     likes:      {required: true},
     downloads:  {required: false},
     price:      {required: false},
     salePrice:  {required: false},
     rating:     {required: true},
     phone:      {required: false},
     address:    {required: false}
   }
                        </code></pre></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">externalImpId</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">string</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Specifies the unique
identifier of an externally generated auction. For example, <code
class="ph codeph">externalImpId:'bacbab02626452b097f6030b3c89ac05'</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">enableSafeFrame</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">Boolean</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Specifies whether
this placement will be served in a SafeFrame container. See <a
href="safeframe-api-reference.md" class="xref">SafeFrame API
Reference</a> for more information.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">setSafeFrameConfig</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">Boolean</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Allows configuration
of SafeFrame, a managed iframe that provides additional consumer
protection and publisher control beyond that provided by a standard
iframe. See <a href="safeframe-api-reference.md"
class="xref">SafeFrame API Reference</a> for more information.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">initCollapsed</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">object</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Initializes the ad
iframe at zero size. The only option for the <code
class="ph codeph">expandBy</code> field is creative. This setting gives
the creative the responsibility of expanding the ad slot by calling
resizeAd function.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">prebid</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">Boolean</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Indicates that the
tag being requested is for a header bidding or prebid auction. This will
return the cpm on the adObj <code class="ph codeph">adObj.cpm</code>.
However, the ad will not be rendered. It is assumed that another ad
server will render the ad if this bid wins.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">usePmtRule</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">Boolean</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Indicates whether
payment rules should be applied to a bid before sending the bid to the
ad server. Default value is false.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">resizeAdParentDiv</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">Boolean</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Setting this property
to true will force the Parent Div container of the Ad creative to
resize. This is particularly useful when resizing banner safeframe
creatives when the parent div doesn't resize in some environments. By
default, this option is turned off. 

<b>Note:</b> The value set here can be
overridden during a resizeAd call, see resizeAd page for more
information.
</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">globalPlacementId</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">string</td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">Provides a way for
publishers to specify their own global publisher identifier to represent
the placement.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__1"><code
class="ph codeph">renderingManagement</code></td>
<td class="entry"
headers="ID-000011c3__table_mp5_h4m_g5b__entry__2">object</td>
<td class="entry" headers="ID-000011c3__table_mp5_h4m_g5b__entry__3">An
object that specifies values for rendering related features, which
influence how ads are rendered onto a webpage. These options also be set
at the setPageOpts level to apply to all ad slots on the page.
<ul>
<li><p><strong><code class="ph codeph">insertWrapperDiv</code></strong>:
When enabled, AST adds an additional div element between the main AST
<code class="ph codeph">utif</code> div and the AST iframe (or
safeframe) container for all ad slots. This option is useful for
publishers who wish to customize or control the contents of the ad
container further without modifying the main div container.</p>
<p><strong>Default</strong>: false</p></li>
<li><p><strong><code class="ph codeph">sandboxAdIframe</code></strong>:
When enabled, AST adds and populates the HTML sandbox attribute for the
AST iframe (or safeframe) container for all ad slots using the values
from the appropriate <code class="ph codeph">sandboxAttributes</code>
parameter.</p>
<p><strong>Default</strong>: false</p></li>
<li><strong><code class="ph codeph">sandboxAttributes</code></strong>:
The values of these attributes are applied to the HTML sandbox attribute
for the AST iframe (or safeframe) ad containers when the appropriate
<code class="ph codeph">andboxAdIframe</code> setting is set to true.
For suitable values to include in this array, please see the HTML
sandbox documentation. If enabled, it is advised to include at least
<code class="ph codeph">allow-same-origin</code> and <code
class="ph codeph">allow-scripts</code> to ensure that the contents of
the iframe may function properly (omitting these values may result in
some warnings in the browser console).</li>
</ul></td>
</tr>
</tbody>
</table>





## Example

``` pre
apntag.defineTag({
        member: 958,
        invCode: 'ABC1234',
    alwaysUseXDomainIframe: true,
    tagId: 123456,
        sizes: [[300,250]],     // only 1 of sizes or sizeMapping is allowed
        sizeMapping: [          // only 1 of sizes or sizeMapping is allowed
        {
            "minWidth": 1024,
                "sizes": [[300,250],[300,600]]
        },
        {
                "minWidth": 400,
                "sizes": [[320,50]]
        }
        ],
        targetId: 'apn_ad_slot_1',
    forceCreativeId: 23456786,
    allowSmallerSizes : true,
        allowedFormats : ['banner', 'video'],
    initCollapsed: { expandBy: 'creative' },
        position : 'above',
        disablePsa : true,
    noBidIfUnsold: true,
    keywords: {
                'genre': ['rock', 'pop']
    },
        trafficSourceCode: 'ssp1', 
    privateSizes : [[300,600]],                          // coming soon
        supplyType : 'mobile_web',
        pubClick : 'http://pubc1.com',           // coming soon
        pubClickEnc : 'http%3A%2F%2Fpubcl.com',  // coming soon
        reserve : 5.01,
        extInvCode : 'extcode1',
    externalImpId: 'bacbab02626452b097f6030b3c89ac05',
    enableSafeFrame: true,
        safeframeConfig: {
                allowExpansionByPush:true,
        allowExpansionByOverlay:true
    },
    rendererOptions: {
                playerTechnology: [
                        "html5",
                        "flash"
                ],
                adText: "Ad",
                showMute: true,
                showVolume: true,
                showProgressBar: true,
                allowFullscreen: true,
                skippable: {
                        videoThreshold: 15,
                        videoOffset: 5,
                        skipLocation: "top-left",
                        skipText: "Video can be skipped in %%TIME%% seconds",
                        skipButtonText: "SKIP"
                }
        },
      
      usePmtRule : false,
      resizeAdParentDiv: true,
      globalPlacementId: 'testId123',
      renderingManagement: {
               insertWrapperDiv: true,
               sandboxAdIframe: true,
               sandboxAttributes: ['allow-same-origin', 'allow-scripts', 'allow-presentation']
              }
        });
```






