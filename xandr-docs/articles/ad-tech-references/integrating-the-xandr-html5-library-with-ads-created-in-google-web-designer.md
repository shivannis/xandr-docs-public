# Integrating the <span class="ph">Xandr</span> HTML5 Library with Ads Created in Google Web Designer

<div class="body">

Follow these instructions to modify an ad created in Google Web Designer
such that it works seamlessly with the <span class="ph">Xandr</span>
HTML5 Library. This is required to properly track clicks.

<div class="section">

## Banner Ads

**Prerequisites**

You will require a text editor to complete the procedure below. If you
do not have one, we recommend
<a href="http://www.sublimetext.com/2" class="xref"
target="_blank">Sublime Text</a>.

**Step 1: Locate the `index.html` file**

Before you begin, locate the folder containing the ad created in Google
Web Designer. If the ad is located in a  `.zip`  file, you must unzip
the file to reveal a folder containing its various assets.

Then, locate and open the file named  `index.html` . This file is where
you will make all of the necessary changes in the steps below.

**Step 2: Add the <span class="ph">Xandr</span> HTML5 Library**

Ensure that the actual <span class="ph">Xandr</span> HTML5 Library is
linked to inside  `index.html` . The library can be found here:  <a
href="https://acdn.adnxs.com/html5-lib/1.3.0/appnexus-html5-lib.min.js"
class="xref" target="_blank">https://acdn.<span
class="ph">adnxs</span>.com/html5-lib/1.3.0/<span
class="ph">appnexus</span>-html5-lib.min.js</a>

Link the library inside the  `<head> ` tag in the  `index.html`  file,
by adding the following  `<script>`  tag:

<div class="p">

``` pre
<script type="text/javascript" src="https://acdn..com/html5-lib/1.3.0/-html5-lib.min.js"></script>
```

</div>

<div class="note tip">

<span class="tiptitle">Tip:</span> Use https to ensure the creative can
serve on secure inventory.

</div>

**Step 3: Replace hard-coded URL with `APPNEXUS.getClickTag()`**

You could have an ad created in Google Web Designer that has a
hard-coded URL embedded. 

Search for  `gwd-events="handlers"`  in the `index.html`  file to find
hard-coded URLs. If they are present, you will find a block of code that
looks like this:

``` pre
<script type="text/javascript" gwd-events="handlers">
        gwd.auto_BodyClick = function(event) {
                // GWD Predefined Function
    gwd.actions.gwdGenericad.exit('gwd-ad', 'https://appnexus.com', true);
  };
</script>
```

<div class="p">

<div id="ID-00000a39__note_znf_4lv_4wb" class="note tip">

<span class="tiptitle">Tip:</span> The hardcoded URL (in this case, 
<a href="https://xandr.com/" class="xref" target="_blank"><code
class="ph codeph">https://xandr.com/</code></a> ) will vary based on the
specific ad you are working with.

</div>

Replace `"`<a href="https://xandr.com" class="xref" target="_blank"><code
class="ph codeph">https://xandr.com</code></a>`"` (including the
quotation marks) with  `APPNEXUS.getClickTag().` The function should
look something like this:

</div>

``` pre
<script type="text/javascript" gwd-events="handlers">
        gwd.auto_BodyClick = function(event) {
                // GWD Predefined Function
    gwd.actions.gwdGenericad.exit('gwd-ad', APPNEXUS.getClickTag(), true);
  };
</script>
```

**Step 4. Save changes**

**Step 5. Re-zip creative contents**

Select all of the contents within the folder created when you unzipped
the file. Compress the contents into a new `.zip` file. 

<div class="fig fignone">

<img src="industry-reference/images/85823701.png" class="image" />

</div>

<div class="p">

You are now ready to upload your HTML5 creative onto the
<span class="ph">Xandr</span> platform. 

<div id="ID-00000a39__note_urn_htw_dyb" class="note">

<span class="notetitle">Note:</span> For information on using Google Web
Designer to build HTML5 creative that will properly track clicks in
Xandr, go to: <a
href="https://docs.xandr.com/bundle/industry-reference/page/build-an-html5-xandr-creative-in-google-web-designer.html"
class="xref" target="_blank">Build an HTML5 Xandr Creative in Google Web
Designer</a>.

If you are facing any build related issue, you can raise a ticket in
<a href="https://help.xandr.com/s/login/" class="xref"
target="_blank">Xandr Customer Support Portal</a> or get in touch with
your Xandr Account Representative.

</div>

</div>

**IAB Validator (Optional)**

If you would like to verify how this creative measures up to IAB
guidelines, you can do so using the 

<a
href="https://www.iab.com/news/iab-tech-lab-releases-html5-ad-validator/"
class="xref" target="_blank">HTML5 Ad Validator</a> tool.

</div>

<div class="section">

## Related Topics

<div class="p">

- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/integrating-the-xandr-html5-library-with-ads-created-in-adobe-edge.html"
  class="xref" target="_blank">Integrate the Xandr HTML5 Library with Ads
  Created in Adobe Edge</a>
- <a
  href="https://github.com/appnexus/appnexus-html5-lib/blob/master/docs/Walkthrough-For-Manually-Created-Ads.md"
  class="xref" target="_blank">Integrating the Xandr HTML5 Library with
  Manually Created HTML5 Ads</a>
- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/use-iab-s-html5-clicktag-standard-on-xandr.html"
  class="xref" target="_blank">Use IAB's HTML5 clickTag Standard on
  Xandr</a>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** <a href="creatives.html" class="link">Creatives</a>

</div>

</div>

<div class="linklist relinfo" lang="en-US">

**Related information**  

- <a
  href="integrating-the-xandr-html5-library-with-ads-created-in-adobe-edge.html"
  class="link">Integrating the Xandr HTML5 Library with Ads Created in
  Adobe Edge</a>
- <a href="use-iab-s-html5-clicktag-standard-on-xandr.html"
  class="link">Use IAB's HTML5 clickTag Standard on Xandr</a>

</div>

</div>
