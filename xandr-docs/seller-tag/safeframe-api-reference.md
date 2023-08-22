# SafeFrame API Reference

<div class="body refbody">

<div class="section">

  SafeFrame is a managed, API-enabled iframe. It opens a line of
communication between the publisher page content and the
iframe-contained external content, such as ads. It operates in a
secondary domain provided by the Host, and ideally established on a
content delivery network (CDN). This secondary domain serves as an
agnostic processing space between the host and external party. Any
information that the External Party needs to know about the Host domain
is accessed by request, using the SafeFrame API. This API is used to
communicate between the host site and external content, using
<span class="ph">Xandr</span>'s solution for SafeFrame: sf-ext.js. This
was built with AST, but is delivered as a separate component.

SafeFrame feature has many benefits. This includes consumer protection,
publisher control and efficiency.

</div>

<div class="section">

## SafeFrame and Video

For video customers, SafeFrame is currently only supported for Outstream
video placements. If you decide to use this functionality, make sure
that you follow the guidelines for setting up on-page tags for outstream
video in the <span class="ph">Xandr</span> Help center at
<a href="http://docs.xandr.com" class="xref"
target="_blank">http://docs.xandr.com</a>.

</div>

<div class="section">

## Implementation and Functions

- This pertains to the API that is accessible by creatives.
- The following functions are available for communication. These
  functions are implemented as per <a
  href="https://www.iab.com/wp-content/uploads/2014/08/SafeFrames_v1.1_final.pdf"
  class="xref" target="_blank">IAB Spec</a>.
  <div class="tablenoborder">

  <table class="table" data-cellpadding="4" data-cellspacing="0"
  data-summary="" data-frame="border" data-border="1" data-rules="all">
  <thead class="thead">
  <tr class="header ">
  <th id="d68568e99" class="entry nocellnoborder"
 >Function</th>
  <th id="d68568e102" class="entry cell-noborder"
 >Description</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd ">
  <td class="entry nocellnoborder"
  headers="d68568e99 "><code
  class="ph codeph">$sf.ext.register</code></td>
  <td class="entry cell-noborder"
  headers="d68568e102 ">The external party register function registers the
  SafeFrame platform to accept SafeFrame external party API calls. The
  external party creative declares the initial (collapsed) width and
  height. In addition to width and height, this function can also define a
  callback function, which informs the external content about various
  status details. </td>
  </tr>
  <tr class="even ">
  <td class="entry nocellnoborder"
  headers="d68568e99 "><code
  class="ph codeph">$sf.ext.supports</code></td>
  <td class="entry cell-noborder"
  headers="d68568e102 ">The supports function returns an object with keys
  representing what features have been turned on or off for a specific:
  Expansion, Push mode, Read cookie, Write cookie container.</td>
  </tr>
  <tr class="odd ">
  <td class="entry nocellnoborder"
  headers="d68568e99 "><code class="ph codeph">$sf.ext.geom</code></td>
  <td class="entry cell-noborder"
  headers="d68568e102 ">The geom function enables an exchange of geometric
  dimensions and location of the SafeFrame container. This includes its
  content in relation to the browser or application window, and the screen
  boundaries of the device in which the host content is being viewed.</td>
  </tr>
  <tr class="even ">
  <td class="entry nocellnoborder"
  headers="d68568e99 "><code class="ph codeph">$sf.ext.expand</code></td>
  <td class="entry cell-noborder"
  headers="d68568e102 ">The expand function expands the SafeFrame
  container to the specified geometric position, allowing intermediary
  expansions. It supports expansion in both push modes.</td>
  </tr>
  <tr class="odd ">
  <td class="entry nocellnoborder"
  headers="d68568e99 "><code
  class="ph codeph">$sf.ext.collapse</code></td>
  <td class="entry cell-noborder"
  headers="d68568e102 "> The collapse function collapses the SafeFrame
  container to the original geometric position.</td>
  </tr>
  <tr class="even ">
  <td class="entry nocellnoborder"
  headers="d68568e99 "><code class="ph codeph">$sf.ext.status</code></td>
  <td class="entry cell-noborder"
  headers="d68568e102 "> The status function returns information about the
  current state of the container. States are: expanded, expanding,
  collapsed, collapsing</td>
  </tr>
  <tr class="odd ">
  <td class="entry nocellnoborder"
  headers="d68568e99 "><code
  class="ph codeph">$sf.ext.winHasFocus</code></td>
  <td class="entry cell-noborder"
  headers="d68568e102 ">Returns whether or not the browser window or tab
  that contains the SafeFrame has focus, or is currently active.</td>
  </tr>
  <tr class="even ">
  <td class="entry -nocellborder"
  headers="d68568e99 "><code
  class="ph codeph">$sf.ext.inViewPercentage</code></td>
  <td class="entry cellborder"
  headers="d68568e102 ">Returns the percentage of area that a container is
  in view on the screen as a whole number between 0 and 100. This is as
  per the <a
  href="https://www.iab.com/wp-content/uploads/2014/08/SafeFrames_v1.1_final.pdf"
  class="xref" target="_blank">IAB Spec</a>. Please reference this for
  additional detail.</td>
  </tr>
  </tbody>
  </table>

  </div>

**apntag.defineTag({param})**

Param '`enableSafeFrame`' is added to `defineTag` which delivers the
creative in SafeFrame container.

**Parameters**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d68568e225" class="entry nocellnoborder"
style="vertical-align: top">Name</th>
<th id="d68568e228" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d68568e231" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d68568e225 "><code
class="ph codeph">enableSafeFrame</code></td>
<td class="entry nocellnoborder"
headers="d68568e228 ">boolean</td>
<td class="entry cell-noborder"
headers="d68568e231 ">Delivers the creative in SafeFrame container.</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d68568e225 "><code
class="ph codeph">setSafeFrameConfig</code></td>
<td class="entry -nocellborder"
headers="d68568e228 ">boolean</td>
<td class="entry cellborder"
headers="d68568e231 ">Allows configuration of SafeFrame, a managed
iframe that provides additional consumer protection and publisher
control beyond that provided by a standard iframe.</td>
</tr>
</tbody>
</table>

</div>

**Example**

``` pre
 
var tag = apntag.defineTag({
            enableSafeFrame : true,
            tagId : 10107529, //10066308,
            sizes : [[300,250]],
            targetId: 'apn_ad_40954389053',
           //new field
            safeframeConfig: {
              allowExpansionByPush:true,
              allowExpansionByOverlay:true
            }
          //end new field
        });
```

**apntag.setSafeFrameConfig({param})**

This function can be used to configure SafeFrame. We have given two
options, `allowExpansionByPush` and `allowExpansionByOverlay` for
SafeFrame expand API. Configuration by this function will change the
return values of `$sf.ext.supports` function. Publisher can revoke
expand permissions from here.

**Parameters**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d68568e303" class="entry nocellnoborder"
style="vertical-align: top">Name</th>
<th id="d68568e306" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d68568e309" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d68568e303 "><code
class="ph codeph">allowExpansionByPush</code></td>
<td class="entry nocellnoborder"
headers="d68568e306 ">boolean</td>
<td class="entry cell-noborder"
headers="d68568e309 ">Host can toggle expansion by push using this
param.</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d68568e303 "><code
class="ph codeph">allowExpansionByOverlay</code></td>
<td class="entry -nocellborder"
headers="d68568e306 ">boolean</td>
<td class="entry cellborder"
headers="d68568e309 ">Host can toggle expansion by overlay using this
param.</td>
</tr>
</tbody>
</table>

</div>

**Example**

``` pre
apntag.setSafeFrameConfig({
        "allowExpansionByPush" : true,
        "allowExpansionByOverlay" : true
});
```

**apntag.setPageOpts({param})**

Parameter `enableSafeFrame` is added to `setPageOpts` function. This
parameter enables SafeFrame and serves all the all ads in SafeFrame
container.

**Parameter**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d68568e377" class="entry nocellnoborder"
style="vertical-align: top">Name</th>
<th id="d68568e380" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d68568e383" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry -nocellborder"
headers="d68568e377 "><code
class="ph codeph">enableSafeFrame</code></td>
<td class="entry -nocellborder"
headers="d68568e380 ">boolean</td>
<td class="entry cellborder"
headers="d68568e383 ">Deliver all creative in safeframe container.</td>
</tr>
</tbody>
</table>

</div>

**Example**

``` pre
apntag.setPageOpts({
        //other setPageOpts params
        "enableSafeFrame" : true
});
```

<div class="note">

<span class="notetitle">Note:</span> Page level functions: All AST
functions will be page-level. Creative functions: all $sf.ext functions
will be called by creative.

</div>

</div>

<div class="section">

## Safeframe API Function Examples

The following examples show how to use the API functions for SafeFrame.

**$sf.ext.register(width, height, callbackFn)**

The SafeFrame External API register function registers the function to
accept SafeFrame external party API calls. External party creative
declares the initial (collapsed) width and height and callback function,
which informs the external content about various status details. 

**Parameters**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d68568e439" class="entry nocellnoborder"
style="vertical-align: top">Name</th>
<th id="d68568e442" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d68568e445" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d68568e439 "><code class="ph codeph">width</code></td>
<td class="entry nocellnoborder"
headers="d68568e442 ">number</td>
<td class="entry cell-noborder"
headers="d68568e445 ">Initial width of the creative</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d68568e439 "><code class="ph codeph">height</code></td>
<td class="entry nocellnoborder"
headers="d68568e442 ">number</td>
<td class="entry cell-noborder"
headers="d68568e445 ">Initial height of the creative</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d68568e439 "><code class="ph codeph">callbackFn</code></td>
<td class="entry -nocellborder"
headers="d68568e442 ">function</td>
<td class="entry cellborder"
headers="d68568e445 ">Function to be called on any operation.</td>
</tr>
</tbody>
</table>

</div>

 **Example**

``` pre
var statusUpdate = function(status) {
        if(status === 'expanded') {
                //do something
        } else if(status == 'collapsed') {
                //do something
        }
}
$sf.ext.register('300','250',statusUpdate);
```

 **$sf.ext.supports()**

This function returns an object with keys representing which features
have been turned on or off for this particular container.

**Example**

``` pre
var supports = $sf.ext.supports();
if(supports['exp-ovr']) {
        //expansion by overlay is supported so expand can be called safely with overlay param
}
if(supports['exp-push']) {
        //expansion by push is supported so expand can be called safely with push param
}
```

 **$sf.ext.geom()**

This function gets the space available around the `targetDiv` to expand
the SafeFrame container. It returns the following object:

**Example**

``` pre
 var g = $sf.ext.geom();
 if (/*check available space to expand before calling expand function*/) {
      $sf.ext.expand(obj);
 }
```

**Scroll Position Example**

``` pre
 var geom = $sf.ext.geom();
 geom.anx.scrollTop; // scrollTop
 geom.anx.scrollLeft; // scrollLeft
```

This takes into account the eventual scroll position of intermediary
same-domain iframe, when AST is itself in an iframe. 

<div class="note">

<span class="notetitle">Note:</span> `geom.anx` is a proprietary
extension to the safeframe specification. 

</div>

**$sf.ext.expand({params})**

This function expands the SafeFrame container to the specified geometric
position. All the params are compulsory, so if you are not going to
expand left than keep 'left' : 0

**Parameters**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d68568e559" class="entry nocellnoborder"
style="vertical-align: top">Name</th>
<th id="d68568e562" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d68568e565" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d68568e559 "><code class="ph codeph">l</code></td>
<td class="entry nocellnoborder"
headers="d68568e562 ">number</td>
<td class="entry cell-noborder"
headers="d68568e565 ">The new left coordinate (x) relative to the
current left coordinate. </td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d68568e559 "><code class="ph codeph">r</code></td>
<td class="entry nocellnoborder"
headers="d68568e562 ">number</td>
<td class="entry cell-noborder"
headers="d68568e565 ">The new right coordinate (x+width) relative to the
current right coordinate(x+width).</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d68568e559 "><code class="ph codeph">t</code></td>
<td class="entry nocellnoborder"
headers="d68568e562 ">number</td>
<td class="entry cell-noborder"
headers="d68568e565 ">The new top coordinate (y) relative to the current
top coordinate.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d68568e559 "><code class="ph codeph">b</code></td>
<td class="entry nocellnoborder"
headers="d68568e562 ">number</td>
<td class="entry cell-noborder"
headers="d68568e565 ">The new bottom coordinate (y+height) relative to
the current top coordinate(y+height).</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d68568e559 "><code class="ph codeph">push</code></td>
<td class="entry -nocellborder"
headers="d68568e562 ">boolean</td>
<td class="entry cellborder"
headers="d68568e565 ">Whether or not expansion should push the host
content, rather than overlay.</td>
</tr>
</tbody>
</table>

</div>

**Example**

``` pre
$sf.ext.expand({
        'l' : 0,
        'r' : 0,
        't' : 0,
        'b' : 500,
        'push' : true
});
```

 **$sf.ext.collapse()**

This function collapses the SafeFrame container to the original
geometric position.

**Example**

``` pre
$sf.ext.collapse();
```

**$sf.ext.status()**

This function returns the current state of the SafeFrame container.
Possible States are `expanded`, `collapsed`, `ready`.

**Example**

``` pre
$sf.ext.status();
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../seller-tag/seller-tag.html" class="link">Seller Tag</a>

</div>

</div>

</div>
