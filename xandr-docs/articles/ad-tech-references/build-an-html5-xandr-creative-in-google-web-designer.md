# Build an HTML5 <span class="ph">Xandr</span> Creative in Google Web Designer  

<div class="body">

This page explains how to use Google Web Designer to build HTML5
creatives that will properly track clicks in
<span class="ph">Xandr</span>.

<div class="p">

1.  Open Google Web Designer.

2.  Click <span class="ph uicontrol">CREATE NEW FILE</span>. The *Create
    New Blank File* pop-up displays.

3.  Click <span class="ph uicontrol">HTML</span> from the
    <span class="keyword wintitle">Others</span> menu.

4.  Enter a <span class="ph uicontrol">Name</span> and
    <span class="ph uicontrol">Title</span> for the creative.

5.  Select a <span class="ph uicontrol">Location</span> and
    <span class="ph uicontrol">Animation Mode</span>.

6.  Click <span class="ph uicontrol">OK</span>. The *Create New Blank
    File* pop-up closes.

7.  Click the <span class="ph uicontrol">+</span> button in the lower
    left of Google Web Designer under
    the <span class="keyword wintitle">Events</span> tab to add a new
    event.

    <img src="industry-reference/images/85824881.png"
    id="ID-00000b0f__image_r4j_nxm_4wb" class="image" height="150" />

        A pop-up displays.

8.  Select a target. 

    <img src="industry-reference/images/85824880.png"
    id="ID-00000b0f__image_y5b_4ym_4wb" class="image" height="150" />

    This will be the element of the ad that will be clickable.  

9.  Select an event.

10. Select one of the available options that display for the event. 

    <img src="industry-reference/images/85824879.png"
    id="ID-00000b0f__image_gs4_rym_4wb" class="image" width="349" />

11. Select <span class="ph uicontrol">Custom</span> under
    the <span class="keyword wintitle">action</span> menu.

12. Select <span class="ph uicontrol">Add custom action</span>. 

    <img src="industry-reference/images/97717278.png"
    id="ID-00000b0f__image_k5s_sym_4wb" class="image" width="349" />

13. Type a unique name in the text field that displays next to
    "*gwd*." (e.g., *XandrClick*).

14. Paste the code below into the text box provided (this is
    your `clickTag` code).

    ``` pre
    function getParameterByName(name) {
      var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
      return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
    }
    window.open(getParameterByName('clickTag'), '_blank');
    ```

    <div class="fig fignone">

    <img src="industry-reference/images/85824883.png" class="image"
    width="349" />

    <div class="p">

    <div id="ID-00000b0f__note_cxj_wvm_4wb" class="note">

    <span class="notetitle">Note:</span>
    Since Google Web Designer has a <a
    href="http://stackoverflow.com/questions/30221826/how-do-you-copy-paste-html-code-in-google-web-designer"
    class="xref" target="_blank">known issue</a> related to key
    commands, you must paste the code using your computer's menu bar
    paste option.

    </div>

    </div>

    </div>

15. Click <span class="ph uicontrol">OK</span>.

16. Test the creative by performing the following if necessary:
    1.  Click  <span class="ph uicontrol">Preview</span> in the upper
        right of Google Web Designer to open the creative in your
        browser.  

        <img src="industry-reference/images/85824886.png"
        id="ID-00000b0f__image_jwv_vym_4wb" class="image" height="150" />

    2.  Add
        "`?clickTag=`<a href="http://yoururlhere.com/" class="xref" target="_blank"><code
        class="ph codeph">https://yoururlhere.com</code></a>" in the
        address bar at the end of the landing page URL that you want to
        test.

    3.  Refresh the page and click on the creative.  

        A new window with the landing page that you entered should open
        in your browser. When the creative is served,
        <span class="ph">Xandr</span> sets a value of `clickTag` to
        <span class="ph">Xandr</span>' click tracker along with a
        redirect to the landing page URL provided in the Console.

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** <a href="creatives.html" class="link">Creatives</a>

</div>

</div>

</div>
