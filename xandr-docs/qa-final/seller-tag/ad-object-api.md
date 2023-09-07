# Ad Object API

<div class="body">

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d232040e60" class="entry cellborder"
style="vertical-align: top">eventType</th>
<th id="d232040e63" class="entry cellborder"
style="vertical-align: top">Callback Function Signature</th>
<th id="d232040e66" class="entry cellborder"
style="vertical-align: top">Data objects</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d232040e60 "><code class="ph codeph">adRequested</code></td>
<td class="entry cellborder"
headers="d232040e63 "><code class="ph codeph">function(){}</code></td>
<td class="entry cellborder"
headers="d232040e66 ">N/A</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d232040e60 "><code class="ph codeph">adAvailable</code></td>
<td class="entry cellborder"
headers="d232040e63 "><code
class="ph codeph">function(adObj){}</code></td>
<td class="entry cellborder"
headers="d232040e66 "><pre class="pre codeblock"><code>adObj = {
        cpm: 10, 
        cpm_publisher_currency: 10,
    publisher_currency_code: &#39;$&#39;,
    adType : &#39;banner&#39;, // could also be &#39;video&#39; or &#39;native&#39; 
    auctionId : &#39;123456&#39;, 
    buyerMemberId : 999, creativeId : 53122972, 
    source : &#39;rtb&#39;, // could also be &#39;csm&#39; 
    tagId : 6051399, 
    banner : { 
        // will match adType above; based on source // SEE BELOW 
    } 
}</code></pre>
<p>Ad Type can be a banner, video, or native. See the adType object
below for more examples.</p>
<p>When source is real-time bidding (rtb), the Ad Object includes the
ad; when source is client-side mediation (csm), it includes just the
creative ID.</p></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d232040e60 "><code class="ph codeph">adLoaded</code></td>
<td class="entry cellborder"
headers="d232040e63 "><code class="ph codeph">adLoaded</code></td>
<td class="entry cellborder"
headers="d232040e66 ">Ad Object is the same as for <code
class="ph codeph">adAvailable</code>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d232040e60 "><code class="ph codeph">adNoBid</code></td>
<td class="entry cellborder"
headers="d232040e63 "><code
class="ph codeph">function(adObj){}</code></td>
<td class="entry cellborder"
headers="d232040e66 "><pre class="pre codeblock"><code>adObj = {
        auctionId : &#39;123456&#39;,
        nobid : true,
        tagId : 6051399,
}</code></pre>
<div class="note">
<span class="notetitle">Note:</span> When using Mediation, normally a
mediated bid would return alongside an RTB bid for the same
placement/slot. There is a chance the auction request may only return a
mediated bid. 
<p>In a normal response, if the mediated bid does not return with a
creative it would attempt to fall back to the RTB bid's creative. In the
case when there is no RTB bid present, the Mediation script would load
the adNoBid event to signify the lack of an available RTB bid. In this
case, the adObj will not be populated and the object will be undefined
since there is no fallback RTB bid object present.</p>
</div></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d232040e60 "><code
class="ph codeph">adRequestFailure</code></td>
<td class="entry cellborder"
headers="d232040e63 "><code
class="ph codeph">function(adError){}</code></td>
<td class="entry cellborder"
headers="d232040e66 ">Click to see details
<pre class="pre codeblock"><code>adError = {
        code : 0
        errMessage : &#39;error message&#39;;,
        exception : e,
        targetId : &#39;apn_ad_slot_1&#39;
}</code></pre></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d232040e60 "><code class="ph codeph">adError</code></td>
<td class="entry cellborder"
headers="d232040e63 "><code
class="ph codeph">function(adError, adObj){}</code></td>
<td class="entry cellborder"
headers="d232040e66 "><code class="ph codeph">adError</code> is the same
as for <code class="ph codeph">adRequestFailure</code>..
<p>Ad Object is the same as for <code
class="ph codeph">adAvailable</code>.</p></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d232040e60 "><code class="ph codeph">adBadRequest</code></td>
<td class="entry cellborder"
headers="d232040e63 "><code
class="ph codeph">function(adError){}</code></td>
<td class="entry cellborder"
headers="d232040e66 ">The tag called a placement that doesn't exist.
This could indicate an error from the Impression Bus.
<pre class="pre codeblock"><code>adError = {
        code : 0
        errMessage : &#39;error message&#39;;,
        exception : e,
        targetId : &#39;apn_ad_slot_1&#39;
}</code></pre></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d232040e60 "><code class="ph codeph">adCollapse</code></td>
<td class="entry cellborder"
headers="d232040e63 "><code class="ph codeph">function(){}</code></td>
<td class="entry cellborder"
headers="d232040e66 ">N/A</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d232040e60 "><code
class="ph codeph">adNoBidMediated</code></td>
<td class="entry cellborder"
headers="d232040e63 "><code
class="ph codeph">function(adObj)</code></td>
<td class="entry cellborder"
headers="d232040e66 "><pre class="pre codeblock"><code>adObj = {
    cpm: 10, 
        cpm_publisher_currency: 10,
    publisher_currency_code: &quot;$&quot;
    creativeId : 12345678,
    contentSource : &#39;csm&#39;,
    targetId : 7654321,
    width: 728
    height: 90
    banner : {
        width: 728,
        height: 90,
        content: &quot;&lt;!-- Creative 26299226 served by Member 12345 via Xandr --&gt;&lt;a href=\&quot;http://lax1.ib.adnxs.com/click?AAAAAAAA6D8AAAAAAADoPwAAAAAAAPA_AAAAAAAA6D8A…&quot;
        }
}</code></pre></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d232040e60 "><code
class="ph codeph">adLoadedMediated</code></td>
<td class="entry cellborder"
headers="d232040e63 "><code
class="ph codeph">function(adObj)</code></td>
<td class="entry cellborder"
headers="d232040e66 "><pre class="pre codeblock"><code>adObj = {
    cpm: 10, 
        cpm_publisher_currency: 10,
    publisher_currency_code: &#39;$&#39;
    creativeId : 12345678,
    contentSource : &#39;csm&#39;,
    targetId : 7654321,
    width: 728
    height: 90
    banner : {
        width: 728,
        height: 90,
        content: &quot;&lt;!-- Creative 26299226 served by Member 12345 via AppNexus --&gt;&lt;a href=\&quot;http://lax1.ib.adnxs.com/click?AAAAAAAA6D8AAAAAAADoPwAAAAAAAPA_AAAAAAAA6D8A…&quot;
        }
}</code></pre></td>
</tr>
</tbody>
</table>

</div>

**adType Object**

Specifies the type of ad (banner, native, or video) and the source of
the ad, either real-time bidding (rtb) or client-side mediation (csm).

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d232040e287" class="entry cellborder"
style="vertical-align: top">AdType</th>
<th id="d232040e290" class="entry cellborder"
style="vertical-align: top">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d232040e287 ">banner (source is rtb)</td>
<td class="entry cellborder"
headers="d232040e290 "><pre class="pre codeblock"><code>adObj = {
        adType: &quot;banner&quot;,
    cpm: 10,
    cpm_publisher_currency: 10,
    publisher_currency_code: &#39;$&#39;,
        source: &quot;rtb&quot;,
        creativeId: 26299226,
    targetId : &quot;target_id_123&quot;,
        banner: {
                width: 728,
                height: 90,
                content: &quot;&lt;!-- Creative 26299226 served by Member 12345 via AppNexus --&gt;&lt;a href=\&quot;http://lax1.ib.adnxs.com/click?AAAAAAAA6D8AAAAAAADoPwAAAAAAAPA_AAAAAAAA6D8A…&quot;,
                trackers: [{
                        impression_urls: [&quot;http://lax1.ib.adnxs.com/it?e=wqT_3QK2BMAtAgAAAgDWAAUIo4aftQUQhaGP-8eK89JxG…S4xMy4xMzKoBO6QCbIEBwgAEAAY2AU.&amp;s=7674360f6a0ea8c3ba7018acd3467ba291de4ad0&quot;]
                }]
        },
 &#10;        // other data in adObj omitted for brevity
}</code></pre></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d232040e287 ">banner (source is csm)</td>
<td class="entry cellborder"
headers="d232040e290 "><pre class="pre codeblock"><code>adObj = {
    adType: &quot;banner&quot;,
    cpm: 10,
    cpm_publisher_currency: 10,
    publisher_currency_code: &#39;$&#39;,
        source: &quot;csm&quot;,
    creativeId: 47259021,
        targetId : &quot;target_id_123&quot;,
        // other data in adObj omitted for brevity
}</code></pre></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d232040e287 ">video (source is rtb)</td>
<td class="entry cellborder"
headers="d232040e290 "><pre class="pre codeblock"><code>adObj =  {
        adType: &quot;video&quot;,
    cpm: 10,
    cpm_publisher_currency: 10,
    publisher_currency_code: &#39;$&#39;,
        source: &quot;rtb&quot;,
        creativeId: 47259021,
    targetId : &quot;target_id_123&quot;,
        video: {
                duration: 20000,
                playbackMethods: [&quot;auto_play_sound_on&quot;],
                frameworks: [],
                content: &quot;&lt;?xml version=\&quot;1.0\&quot; encoding=\&quot;UTF-8\&quot; standalone=\&quot;yes\&quot;?&gt;&lt;VAST version=\&quot;2.0\&quot;&gt;....&quot;
        },
 &#10;        // other data in adObj omitted for brevity
}</code></pre></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d232040e287 ">video (source is csm)</td>
<td class="entry cellborder"
headers="d232040e290 "><pre class="pre codeblock"><code>adObj =  {
        adType: &quot;video&quot;,
    cpm: 10,
    cpm_publisher_currency: 10,
    publisher_currency_code: &#39;$&#39;,
        source: &quot;csm&quot;,
        creativeId: 47211028,
        targetId : &quot;target_id_123&quot;,
        // other data in adObj omitted for brevity
}</code></pre></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d232040e287 ">native (source is rtb)</td>
<td class="entry cellborder"
headers="d232040e290 "><pre class="pre codeblock"><code>adObj = {
  adType&quot;: &quot;native&quot;,
  cpm: 10,
  cpm_publisher_currency: 10,
  publisher_currency_code: &quot;$&quot;,
  source&quot;: &quot;rtb&quot;,
  targetId: &quot;target_id_123&quot;,
  renderer_id: 123,
  renderer_url: &quot;https://renderer.url.com/here&quot;,
  native: {
    title: &quot;Native Creative Title&quot;,
    body: &quot;Native creative body.&quot;,
    icon: {
      width: 0,
      height: 0,
      url: &quot;http://cdn.adnxs.com/p/5d/f0/53/fb/5df053fbcb7...png&quot;
    },
    image: {
      width: 2352,
      height: 1516,
      url: &quot;http://cdn.adnxs.com/p/d9/d9/c7/3f/d9d9c73fb6aed0ba9...jpg&quot;
    },
    cta: &quot;Click Here&quot;,
    sponsoredBy: &quot;AppNexus&quot;,
    impressionTrackers: [
      &quot;http://lax1-ib.adnxs.com/it?e=wqT_3QKqBqgqAwAAAwDWAAUBC...&quot;
    ],
    clickTrackers: [
      &quot;http://lax1-ib.adnxs.com/click?AAAAAAAA8D8AAAAAAADwPwA...&quot;
    ],
    javascriptTrackers: &quot;&quot;,
    clickUrl: &quot;https://www.appnexus.com&quot;,
    clickFallbackUrl: &quot;&quot;
  }
}</code></pre></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Further Reading:**
- [API References](ast-api-reference.md)

</div>

</div>

</div>
