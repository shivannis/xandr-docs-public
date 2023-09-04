# Build an HTML5 <span class="ph">Xandr</span> Creative in Adobe Edge

<div class="body">

This guide explains how to use Adobe Edge to build HTML5 creatives that
will properly track clicks in <span class="ph">Xandr</span>. It assumes
that you are familiar using Adobe Edge to build creatives.

<div id="ID-00000b94__section_v4v_kbn_4wb" class="section">

## With <span class="ph">Xandr</span> HTML5 Library

<div class="p H3">

1.  From within Adobe Edge, select the element you want to
    make clickable from the
    <span class="keyword wintitle">Elements</span> panel. (Naming the
    element "clickable" is not required)

    <img src="industry-reference/images/85845913.png"
    id="ID-00000b94__image_hmq_tbn_4wb" class="image" />

2.  Open **Actions** for the selected element. The Actions panel will
    pop-up with a dropdown menu. Then select **click** in the dropdown
    menu.

    <img src="industry-reference/images/85845814.png"
    id="ID-00000b94__image_wx1_xbn_4wb" class="image" />

3.  Select <span class="ph uicontrol">Links</span> and **Link in New
    Window** from the <span class="keyword wintitle">Pick an
    Action</span> area.

    <img src="industry-reference/images/85845815.png"
    id="ID-00000b94__image_ygr_fcn_4wb" class="image" width="300" />

4.  You will see code that looks like this.

    <img src="industry-reference/images/85845816.png"
    id="ID-00000b94__image_i1x_hcn_4wb" class="image" height="250" />

5.  Replace the “<a href="http://www.adobe.com" class="xref"
    target="_blank">https://www.adobe.com</a>” with
    **`APPNEXUS.getClickTag()`**. Make sure to remove the quotations.

    <img src="industry-reference/images/85845817.png"
    id="ID-00000b94__image_dk5_4cn_4wb" class="image" height="250" />

6.  From the <span class="keyword wintitle">Library</span> panel, in the
    <span class="ph uicontrol">Scripts</span> drop-down, click
    <span class="ph uicontrol">Add JS File from URL..</span>. Paste <a
    href="https://acdn.adnxs.com/html5-lib/1.3.0/appnexus-html5-lib.min.js"
    class="xref" target="_blank">https://acdn.<span
    class="ph">adnxs</span>.com/html5-lib/1.3.0/<span
    class="ph">appnexus</span>-html5-lib.min.js</a> into the field and
    click <span class="ph uicontrol">OK</span>.

    <img src="industry-reference/images/85845818.png"
    id="ID-00000b94__image_rxx_5cn_4wb" class="image" height="250" />

    <div class="p">

    <div id="ID-00000b94__note_xfn_zcn_4wb" class="note tip">

    <span class="tiptitle">Tip:</span> Use https to ensure the creative
    can serve on secure inventory.

    </div>

    </div>

7.  Click <span class="ph uicontrol">Preview in Browser</span> to open
    the ad in your browser. Add `?clickTag=http://YOUR-URL-HERE.com` at
    the end of the URL in the address bar with the landing page you want
    to test. Refresh the page and click on the ad. A new window with the
    landing page you entered should open in your browser. When the
    creative is served, <span class="ph">Xandr</span> sets the value of
    `clickTag` to <span class="ph">Xandr</span>'s click tracker and sets
    a redirect to the landing page URL provided in Console.

</div>

</div>

<div class="section">

## Without <span class="ph">Xandr</span> HTML5 Library

<div class="p">

1.  From within Adobe Edge, select the element you want to make
    clickable from the **Elements** panel. (Naming the element
    "clickable" is not required).

    <img src="industry-reference/images/85845913.png"
    id="ID-00000b94__image_gp4_j2n_4wb" class="image" />

2.  Open **Actions** for the selected element. The **Actions** panel
    will pop-up with a dropdown menu. Then select **click** in the
    dropdown menu.

    <img src="industry-reference/images/85845814.png"
    id="ID-00000b94__image_s42_q2n_4wb" class="image" />

3.  Paste the code below into the text box provided (this is your
    `clickTag` code).

    <div class="p">

    ``` pre
    function getParameterByName(name) {
      var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
      return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
    }
    window.open(getParameterByName('clickTag'), '_blank');
    ```

    </div>

    <img src="industry-reference/images/85845821.png"
    id="ID-00000b94__image_pc5_ffn_4wb" class="image" height="250" />

4.  Click <span class="ph uicontrol">Preview in Browser</span> to open
    the ad in your browser. Add `?clickTag=http://YOUR-URL-HERE.com` at
    the end of the URL in the address bar with the landing page you want
    to test. Refresh the page and click on the creative. A new window
    with the landing page you entered should open in your browser. When
    the creative is served, <span class="ph">Xandr</span> sets the value
    of `clickTag` to <span class="ph">Xandr</span>'s click tracker and
    sets a redirect to the landing page URL provided in Console.

</div>

</div>

<div class="section">

## Related Topics

<div class="p">

- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/build-an-html5-xandr-creative-in-google-web-designer.html"
  class="xref" target="_blank">Build an HTML5 Xandr Creative in Google Web
  Designer</a>

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

- <a href="build-an-html5-xandr-creative-in-google-web-designer.html"
  class="link">Build an HTML5 Xandr Creative in Google Web Designer  </a>

</div>

</div>
