---
Title : Build an HTML5 Xandr Creative in Adobe Animate CC
Description : This guide explains how to use Adobe Animate CC to build HTML5 creatives
that will properly track clicks in Xandr.
---


# Build an HTML5 Xandr Creative in Adobe Animate CC



This guide explains how to use Adobe Animate CC to build HTML5 creatives
that will properly track clicks in Xandr.
It assumes that you are familiar using Adobe Animate CC to build
creatives.



## With Xandr HTML5 Library



1.  From within Adobe Animate CC, select the element you want to
    make clickable.

2.  Open the Actions window.   

    <img src="industry-reference/images/90478501.png"
    id="ID-00000c10__image_zwn_yjn_4wb" class="image" width="420" />

3.  Select Code Snippets in Actions
    toolbar.  

    <img src="industry-reference/images/90478502.png"
    id="ID-00000c10__image_xbf_zjn_4wb" class="image" width="330" />

4.  Click HTML Canvas, then
    Event Handlers, and then select
    Mouse Click and click
    OK if you receive a warning.  

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

    <figure class="fig fignone">
    <p><img src="industry-reference/images/90478504.png" class="image"
    height="250" /></p>
    </figure>

6.  Save and **Publish** your work. Open the project's `.html` file in
    your web browser. Add
    `?clickTag=`<a href="http://www.appnexus.com" class="xref" target="_blank"><code
    class="ph codeph">https://www.</code><code
    class="ph codeph">Xandr</code><code
    class="ph codeph">.com</code></a> at the end of the URL in the
    address bar.   
      

    <img src="industry-reference/images/90478506.png"
    id="ID-00000c10__image_aww_ckn_4wb" class="image" />

    Refresh the page and click on the ad. A new window with
    Xandr's website should open in your browser.
    When the ad is served Xandr sets the value
    of clickTag to Xandr's click tracker and a
    redirect to the landing page URL provided for the creative in
    Console.







## Related Topics



- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/use-iab-s-html5-clicktag-standard-on-xandr.html"
  class="xref" target="_blank">Use IAB's HTML5 clickTag Standard on
  Xandr</a>







<div class="linklist relinfo">

**Related information**  

- <a href="use-iab-s-html5-clicktag-standard-on-xandr.html"
  class="link">Use IAB's HTML5 clickTag Standard on Xandr</a>




