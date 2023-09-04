# Build an HTML5 <span class="ph">Xandr</span> Creative in Adobe Animate CC

<div class="body">

This guide explains how to use Adobe Animate CC to build HTML5 creatives
that will properly track clicks in <span class="ph">Xandr</span>.
It assumes that you are familiar using Adobe Animate CC to build
creatives.

<div class="section">

## With <span class="ph">Xandr</span> HTML5 Library

<div class="p">

1.  From within Adobe Animate CC, select the element you want to
    make clickable.

2.  Open the <span class="ph uicontrol">Actions</span> window.  

    <img src="industry-reference/images/90478501.png"
    id="ID-00000c10__image_zwn_yjn_4wb" class="image" width="420" />

3.  Select <span class="ph uicontrol">Code Snippets</span> in Actions
    toolbar. 

    <img src="industry-reference/images/90478502.png"
    id="ID-00000c10__image_xbf_zjn_4wb" class="image" width="330" />

4.  Click <span class="ph uicontrol">HTML Canvas</span>, then
    <span class="ph uicontrol">Event Handlers</span>, and then select
    <span class="ph uicontrol">Mouse Click</span> and click
    <span class="ph uicontrol">OK</span> if you receive a warning. 

    <img src="industry-reference/images/90478503.png"
    id="ID-00000c10__image_qyd_1kn_4wb" class="image" height="250" />

5.  You will see a text editor pre-populated with code. Replace the
    “`alert("Mouse clicked");`” with:

    ``` pre
    function getParameterByName(name) {
      var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
      return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
    }
    window.open(getParameterByName('clickTag'), '_blank');
    ```

    <div class="fig fignone">

    <img src="industry-reference/images/90478504.png" class="image"
    height="250" />

    </div>

6.  Save and **Publish** your work. Open the project's `.html` file in
    your web browser. Add
    `?clickTag=`<a href="http://www.appnexus.com" class="xref" target="_blank"><code
    class="ph codeph">https://www.</code><span class="ph"><code
    class="ph codeph">Xandr</code></span><code
    class="ph codeph">.com</code></a> at the end of the URL in the
    address bar.   

    <img src="industry-reference/images/90478506.png"
    id="ID-00000c10__image_aww_ckn_4wb" class="image" />

    Refresh the page and click on the ad. A new window with
    <span class="ph">Xandr</span>'s website should open in your browser.
    When the ad is served <span class="ph">Xandr</span> sets the value
    of clickTag to <span class="ph">Xandr</span>'s click tracker and a
    redirect to the landing page URL provided for the creative in
    Console.

</div>

</div>

<div class="section">

## Related Topics

<div class="p">

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

- <a href="use-iab-s-html5-clicktag-standard-on-xandr.html"
  class="link">Use IAB's HTML5 clickTag Standard on Xandr</a>

</div>

</div>
