---
Title : Build an HTML5 Xandr Creative in Adobe Animate CC
Description : This guide explains how to use Adobe Animate CC to build HTML5 creatives
ms.date : 10/28/2023
ms.custom : industry-reference
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

    ![Actions Window](media/actions-window.png)

3.  Select Code Snippets in Actions
    toolbar.  

   ![Code Snippets in Actions](media/code-snippet-in-actions.png)

4.  Click HTML Canvas, then
    Event Handlers, and then select
    Mouse Click and click
    OK if you receive a warning.  

    ![Click HTML Canvas](media/click-html-canvas.png)

5.  You will see a text editor pre-populated with code. Replace the
    “`alert("Mouse clicked");`” with:

    ``` pre
    function getParameterByName(name) {
      var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
      return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
    }
    window.open(getParameterByName('clickTag'), '_blank');
    ```

    ![Mouse Clicked](media/mouse-clicked.png)

6.  Save and **Publish** your work. Open the project's `.html` file in
    your web browser. Add
    `?clickTag=`<a href="http://www.appnexus.com" class="xref" target="_blank"><code
    class="ph codeph">https://www.</code><code
    class="ph codeph">Xandr</code><code
    class="ph codeph">.com</code></a> at the end of the URL in the
    address bar.   
      

    ![Save and Publish](media/save-and-publish.png)

    Refresh the page and click on the ad. A new window with
    Xandr's website should open in your browser.
    When the ad is served Xandr sets the value
    of clickTag to Xandr's click tracker and a
    redirect to the landing page URL provided for the creative in
    Console.







## Related Topics



- <a
  href="use-iab-s-html5-clicktag-standard-on-xandr.md"
  class="xref" target="_blank">Use IAB's HTML5 clickTag Standard on
  Xandr</a>







<div class="linklist relinfo">

**Related information**  

- <a href="use-iab-s-html5-clicktag-standard-on-xandr.md"
  class="link">Use IAB's HTML5 clickTag Standard on Xandr</a>




