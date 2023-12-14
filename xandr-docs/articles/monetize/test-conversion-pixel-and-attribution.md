---
Title : Test Conversion Pixel and Attribution
Description : You must have a test publisher and placement to test conversion pixels.
ms.date: 10/28/2023
---


# Test Conversion Pixel and Attribution





You must have a test publisher and placement to test conversion pixels.
If necessary, users set up a test publisher and
placement as described in
<a href="create-a-publisher.md" class="xref">Create a Publisher</a>
and
<a href="create-a-placement.md" class="xref">Create a Placement</a>.
Edit the placement, and filter the campaign to the campaign that you are
testing. This will ensure that the placement will only show ads from
your test campaign. Ensure that your network or publisher ad quality
profiles has
Direct
Advertiser Trust \>
Maximum, or that you have
allowed your campaign's creative ID on the network and publisher ad
quality rules.





1.  Edit your advertising campaign to include the
    test placement: 
    1.  Select Buy
        Direct Inventory with priority
        10
    2.  Under
        Targeting, select
        Inventory and include your
        test placement from Direct
        Inventory:

    

    

    <b>Note:</b> Unless your campaign is
    already buying direct inventory, make absolutely sure to only
    include your test placement. Otherwise, you run the risk of
    delivering across your entire network instead of a single placement.

    

    
2.  <a href="understanding-the-debug-auction.md" class="xref">Run a debug
    auction</a> using a URL in this format:
    `https://secure.``adnxs``.com/tt?id=[TEST_PLACEMENT_ID]&size=[WIDTH]x[HEIGHT]&debug_member=[MEMBER_ID]&dongle=[DONGLE]`
    <div class="itemgroup stepxmp">

    For example:
    ``` pre
    https://secure.adnxs.com/tt?id=123456&size=300x250&debug_member=1234&dongle=clienta123
    ```

    
3.  <a href="understanding-the-debug-auction.md" class="xref">Review the
    debug output</a> that your test campaign serves.
    

    It will probably take 10-15 minutes for your campaign to appear.
    Once the test campaign is winning your debugs, you're ready to serve
    yourself an ad.

    

    

    

    <b>Tip:</b> Use
    <span class="kbd ph userinput">Control+<span class="kbd ph userinput">F
    or
    <span class="kbd ph userinput">Command+<span class="kbd ph userinput">F
    to search for the campaign ID.

    

    
4.  Once the test campaign is winning the debug
    auctions, serve yourself an ad using a URL in this format:
    `https://secure.``adnxs``.com/tt?id=[TEST_PLACEMENT_ID]&size=[WIDTH]x[HEIGHT]`
    
    <table id="ID-0000573c__choicetable_y4h_lpp_dmb"
    class="simpletable choicetable choicetableborder" data-border="1"
    data-frame="hsides" data-rules="rows" data-cellpadding="4"
    data-cellspacing="0" data-summary="">
    <colgroup>
    <col style="width: 50%" />
    <col style="width: 50%" />
    </colgroup>
    <thead class="thead">
    <tr class="header sthead chhead">
    <th class="stentry choptionhd" scope="col"
    style="text-align: left; vertical-align: bottom;">Option</th>
    <th class="stentry chdeschd" scope="col"
    style="text-align: left; vertical-align: bottom;">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd strow chrow">
    <th class="stentry choption" style="vertical-align: top" scope="row">To
    count post-click conversions</th>
    <td class="stentry chdesc" style="vertical-align: top">Click the
    creative.</td>
    </tr>
    <tr class="even strow chrow">
    <th class="stentry choption" style="vertical-align: top" scope="row">To
    count post-view conversions</th>
    <td class="stentry chdesc" style="vertical-align: top">Do not click, and
    proceed to the next step.</td>
    </tr>
    </tbody>
    </table>
5.  Use your browser's developer tools to confirm
    that the pixel is firing.
    1.  Open a new browser tab in Chrome or
        Firefox.
    2.  Right-click in the tab window and select
        Inspect Element.
    3.  Select the
        Network tab.
    4.  From the current tab, navigate to the page
        where the conversion pixel is placed.

    

    You will see all the calls going out from the browser to various
    servers. Within the list of calls, you should see your pixel tag:
    `https://secure.``adnxs``.com/px?id=[PIXEL_ID]&t=X `
    where `X` is `1` (JavaScript) or `2` Image.
    <table id="ID-0000573c__table_dcb_bxk_jmb" class="table frame-all">
    <tbody class="tbody">
    <tr class="odd row">
    <td class="entry">If you see the pixel call fire with the correct
    ID</td>
    <td class="entry">Success! You should see a conversion appear in
    reporting several hours after the pixel fires.</td>
    </tr>
    <tr class="even row">
    <td class="entry">If you have served yourself an ad and have confirmed
    that the pixel fired properly, but do not see conversions several hours
    later:</td>
    <td class="entry">Contact https://help.xandr.com
    and include all of the following information: your <span
    class="ph">Xandr user ID (you can find this on <code
    class="ph codeph">https://secure.</code><code
    class="ph codeph">adnxs</code><code
    class="ph codeph">.com/cookie?dongle=[YourMember'sDongle])</code>); the
    hour (including time zone) you served yourself the impression; the pixel
    ID you fired; the campaign ID you used; the page where the conversion
    pixel was trafficked; an HTTP archive (available in the browser's
    Network tab)</td>
    </tr>
    </tbody>
    </table>

    



class="section section result">

Related Topics

- <a href="server-side-conversion-pixels.md" class="xref">Server-Side
  Conversion Pixels</a>
- <a href="create-a-conversion-pixel.md" class="xref">Create a
  Conversion Pixel</a>
- <a href="export-conversion-pixels.md" class="xref">Export Conversion
  Pixels</a>
- <a href="update-campaigns.md" class="xref">Update Campaigns</a>
- <a href="conversion-pixels-advanced.md" class="xref">Conversion Pixels
  Advanced</a>
- <a href="reporting-on-conversions.md" class="xref">Reporting on
  Conversions</a>
- <a href="understanding-the-debug-auction.md"
  class="xref">Understanding the Debug Auction</a>






