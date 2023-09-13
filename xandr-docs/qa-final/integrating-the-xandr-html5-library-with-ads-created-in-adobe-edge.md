# Integrating the <span class="ph">Xandr</span> HTML5 Library with Ads Created in Adobe Edge

<div class="body">

Follow these instructions to modify an ad created in Adobe Edge such
that it works seamlessly with the <span class="ph">Xandr</span> HTML5
Library. This is required to properly track clicks.

<div class="section">

## Banner Ads

**Prerequisites**

You will require a text editor to complete the procedure below. If you
do not have one, we recommend
<a href="http://www.sublimetext.com/2" class="xref"
target="_blank">Sublime Text</a>.

**Step 1: Locate the correct files to edit**

Before you begin, locate the folder containing the ad created in Adobe
Edge. If the ad is located in a `.zip` file, you must unzip the file to
reveal a folder containing its various assets.

Then, locate the following files:

- `index.html` .
- a file with the extension  `.js`  at the root level of the ad folder,
  for example,  `300x250edge.js`   or  `edgeActions.js`

These files are where you will make all of the necessary changes in the
steps below.

**Step 2: Add the <span class="ph">Xandr</span> HTML5 Library**

Ensure that the actual <span class="ph">Xandr</span> HTML5 Library is
linked to inside  `index.html` . The library can be found here: <a
href="https://acdn.adnxs.com/html5-lib/1.3.0/appnexus-html5-lib.min.js"
class="xref" target="_blank">https://acdn.<span
class="ph">adnxs</span>.com/html5-lib/1.3.0/<span
class="ph">appnexus</span>-html5-lib.min.js</a>

<div class="p">

Link the library inside the `<head>`tag in the  `index.html`  file, by
adding the following `<script>` tag:

``` pre
<script type="text/javascript" src="https://acdn..com/html5-lib/1.3.0/-html5-lib.min.js"></script>
```

</div>

<div class="note tip">

<span class="tiptitle">Tip:</span> Use https to ensure the creative can
serve on secure inventory.

</div>

**Step 3: Add Click Event**

For this step, you make all your changes to the **.js** file.

**Without Existing Click Event**

You may see an Adobe Edge JavaScript function that handles events with
no existing click events. It will look similar to:

``` pre
//Edge symbol: 'stage'
(function(symbolName){
  Symbol.bindTriggerAction(compId,symbolName,"Default Timeline",16750,function(sym,e){
    sym.play(0);
  });
//Edge binding end
})("stage");
```

In order to support the click event using
the `APPNEXUS.click()` function, you must add the following function: 

``` pre
Symbol.bindElementAction(compId,symbolName,"${Stage}","click",function(sym,e){
        APPNEXUS.click();
});
```

Once the click event has been added, you will have a function that looks
similar to:

``` pre
//Edge symbol: 'stage'
(function(symbolName){
  Symbol.bindTriggerAction(compId,symbolName,"Default Timeline",16750,function(sym,e){
    sym.play(0);
  });
  Symbol.bindElementAction(compId,symbolName,"${Stage}","click",function(sym,e){
    APPNEXUS.click();
  });
//Edge binding end
})("stage");
```

**With Existing Click Event**

You may see an Adobe Edge JavaScript function that handles events with
an existing click event. It will look similar to:

``` pre
//Edge symbol: 'stage'
(function(symbolName){
 Symbol.bindElementAction(compId, symbolName, "${Stage}", "click", function(sym, e) {
        window.open("https://xandr.com");         
 });
//Edge binding end
})("stage");
```

In order to support the click event using
the `APPNEXUS.click()` function, you must replace the hard-coded URL, 
<a href="https://xandr.com" class="xref" target="_blank"><code
class="ph codeph">https://xandr.com</code></a>  to add the
function  `APPNEXUS.getClickTag()`.

Once you have replaced the hard-coded URL, you will have a function that
looks like this:

``` pre
//Edge symbol: 'stage'
(function(symbolName){
 Symbol.bindElementAction(compId, symbolName, "${Stage}", "click", function(sym, e) {
        window.open(APPNEXUS.getClickTag());         
 });
//Edge binding end
})("stage");
```

**Step 4. Save changes**

Save the changes.

**Step 5. Re-zip creative contents**

Select all of the contents within the folder created when you unzipped
the file. Compress the contents into a new `.zip` file.

<div class="fig fignone">

<img src="media/85823705.png" alt="Rezipping" class="image"/>

</div>

You are now ready to upload your HTML5 creatives onto the
<span class="ph">AppNexus</span> platform. 

**IAB Validator (Optional)**

If you would like to verify how this creative measures up to IAB
guidelines, you can do so using the <a
href="https://www.iab.com/news/iab-tech-lab-releases-html5-ad-validator/"
class="xref" target="_blank">HTML5 Ad Validator</a>tool.

</div>

<div class="section">

## Related Topics

<div class="p">

- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/integrating-the-xandr-html5-library-with-ads-created-in-google-web-designer.html"
  class="xref" target="_blank">Integrating the Xandr HTML5 Library with
  Ads Created in Google Web Designer</a>

- <a
  href="https://github.com/appnexus/appnexus-html5-lib/blob/master/docs/Walkthrough-For-Manually-Created-Ads.md"
  class="xref" target="_blank">Integrating the AppNexus HTML5 Library with
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

  href="integrating-the-xandr-html5-library-with-ads-created-in-google-web-designer.html"
  class="link">Integrating the Xandr HTML5 Library with Ads Created in
  Google Web Designer</a>
- <a href="use-iab-s-html5-clicktag-standard-on-xandr.html"
  class="link">Use IAB's HTML5 clickTag Standard on Xandr</a>

</div>

</div>
