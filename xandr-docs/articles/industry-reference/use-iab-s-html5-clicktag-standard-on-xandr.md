---
Title : Use IAB's HTML5 clickTag Standard on Xandr
Description : Follow these instructions to use the IAB's clickTag standard in HTML5
creatives hosted with Xandr. This allows
---


# Use IAB's HTML5 clickTag Standard on Xandr



Follow these instructions to use the IAB's clickTag standard in HTML5
creatives hosted with Xandr. This allows
Xandr to track clicks and set the ad's landing
page to the URL provided in .



## Prerequisites

You will require a text editor to complete the procedure below. If you
do not have one, we recommend
<a href="http://www.sublimetext.com/2" class="xref"
target="_blank">Sublime Text</a>.



Note:

Do not hardcode landing page URLs for your creative. This will be set in
 when the assets are uploaded.







##  Step 1: Add the Xandr HTML5 Library

Add the Xandr HTML5 Library inside the `<head>`
tag in the** `index.html`** file, by adding the
following `<script>` tag:

`<script type="text/javascript" src="https://acdn.``adnxs``.com/html5-lib/1.4.1/``appnexus``-html5-lib.min.js"></script>`





Tip: Use https to ensure the creative
can serve on secure inventory.









##  Step 2: Add  `APPNEXUS.getClickTag()` to a clickable element

Wrap the banner markup in an HTML element that opens a new window and
uses the `APPNEXUS.getClickTag()` function. This will retrieve the value
of the clickTag parameter set in the ad URL. The example below uses the
\<a\> anchor element with the `href` attribute set to
`javascript:void(0)` and an `onClick` attribute set to
 `window.open(APPNEXUS.getClickTag(), '_blank');`.

Open `<a href="javascript:void(0)" onClick="window.open(APPNEXUS.getClickTag(), '_blank');">` immediately
after `<body>` and be sure to close it with `</a>` immediately
before `</body>`. The banner markup should go
between `<a href="javascript:void(0)" onClick="window.open(APPNEXUS.getClickTag(), '_blank');">` and `</a>`.



``` pre
<body>
        <a href="javascript:void(0)" onClick="window.open(APPNEXUS.getClickTag(), '_blank');">
                <!-- Your banner markup goes here. -->
        </a>
</body>
```







## Step 3: Test

Save your work. Open the **`index.html`** file in your web browser. Add
`?clickTag=http://www.xandr.com` at the end of the URL in the address
bar.

`file:///Users/username/Desktop/ad.html?clickTag=http://www.xandr.com`

Refresh the page and click on the ad. A new window with
Xandr' website should open in your browser. When
the ad is served Xandr sets the value of
clickTag to Xandr' click tracker and a redirect
to the landing page URL provided for the creative in
.

Save your work again.





## Step 4. Zip creative contents

Select all of the contents. Compress the contents into a `.zip` file.

<figure class="fig fignone">
<p><img src="industry-reference/images/85824025.png"
class="image" /></p>
</figure>

You are now ready to upload your HTML5 creative onto the
Xandr platform. 





## Additional Option

Xandr follows <a
href="http://www.iab.com/guidelines/html5-for-digital-advertising-guidance-for-ad-designers-creative-technologists/"
class="xref" target="_blank">IAB HTML5 guidance</a> for clickTag
(Section 3.10.1). The ad URL returned to a publisher's page includes a
clickTag parameter in the query string. Ad developers who prefer not to
use Xandr' `getClickTag()` convenience can
access the clickTag parameter's value with their own Javascript. In this
case, the ad does not need to load the Xandr
HTML5 Library.

**Example Ad URL with clickTag
Parameter**`https://vcdn.``adnxs``.com/.../index.html?clickTag=http%3A%2F%2Fnym1-ib.``adnxs``.com%2Fclick%3FAA...gwJUgAAAAA.%2Fbn%3D0%2Fclickenc%3Dhttp%253A%252F%252Fwww.``appnexus``.com%252F`





## Related Topics



- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/build-an-html5-xandr-creative-in-google-web-designer.html"
  class="xref" target="_blank">Build an HTML5 Xandr Creative in Google Web
  Designer</a>
- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/build-an-html5-xandr-creative-in-adobe-edge.html"
  class="xref" target="_blank">Build an HTML5 Xandr Creative in Adobe
  Edge</a>
- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/integrating-the-xandr-html5-library-with-ads-created-in-adobe-edge.html"
  class="xref" target="_blank">Integrate the Xandr HTML5 Library with Ads
  Created in Adobe Edge</a>
- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/integrating-the-xandr-html5-library-with-ads-created-in-google-web-designer.html"
  class="xref" target="_blank">Integrating the Xandr HTML5 Library with
  Ads Created in Google Web Designer</a>







<div class="linklist relinfo">

**Related information**  

- <a href="build-an-html5-xandr-creative-in-google-web-designer.html"
  class="link">Build an HTML5 Xandr Creative in Google Web Designer  </a>
- <a href="build-an-html5-xandr-creative-in-adobe-edge.html"
  class="link">Build an HTML5 Xandr Creative in Adobe Edge</a>
- <a
  href="integrating-the-xandr-html5-library-with-ads-created-in-adobe-edge.html"
  class="link">Integrating the Xandr HTML5 Library with Ads Created in
  Adobe Edge</a>
- <a
  href="integrating-the-xandr-html5-library-with-ads-created-in-google-web-designer.html"
  class="link">Integrating the Xandr HTML5 Library with Ads Created in
  Google Web Designer</a>




