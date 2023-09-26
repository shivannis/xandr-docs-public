---
Title : Test Click Tracking Manually
Description : You can manually test click tracking if strange creative behavior or UI
issues cause the click tracking test within the
UI to be unreliable.
---


# Test Click Tracking Manually



You can manually test click tracking if strange creative behavior or UI
issues cause the click tracking test within the
UI to be unreliable.



**Developer tools:** Familiarize yourself with Chrome developer tools
(More Tools \> Developer tools) which will show you elements of the page
and network calls.



Note: Ensure the macros are in place by
taking a quick look at your code to confirm that ${CLICK_URL} or
${CLICK_URL_ENC} appears.







1.  Preview the creative by accessing the <a
    href="https://creative-preview-an.com/cached/creative/insert%20creative%20id%20here"
    class="xref"
    target="_blank">https://creative-preview-an.com/cached/creative/insert
    creative id here</a> webpage.
    

    Insert the appropriate creative ID to the end of the URL replacing
    "insert creative id here". For example:
    <a href="https://creative-preview-an.com/cached/creative/196745"
    class="xref"
    target="_blank">https://creative-preview-an.com/cached/creative/196745</a>.

    
2.  Thenright
    click \> inspect \>
    network tab 
3.  Click on the settings (gear icon) in the top
    right of dev tools
4.  Enable the "Auto-open DevTools for popups",
    under
    Preferences
    \> Global 
5.  Click on the Creative 
6.  The landing page will open and the dev tools
    should automatically open in the new tab
7.  Search for "click" in the Network tab
8.  You should see a call similar to the following:
    ` `<a href="https://nym1-ib.adnxs-simple.com/click?AAAAAAA" class="xref"
    target="_blank"><code
    class="ph codeph">https://nym1-ib.adnxs-simple.com/click?AAAAAAA</code></a>` `
    
    

    The creative will start tracking clicks.
    <div id="test-click-tracking-manually__note-4691789e-99de-46fe-8da1-1ef0e15cb3d4"
    

    Note: If you see this above call
    only once after clicking the creative, then your creative's click
    tracking is working properly. The call should only occur once per
    click. If the call appears more than once, then your creative is
    experiencing a click-tracking problem that gives it an artificially
    higher CTR.

    

    



<div id="test-click-tracking-manually__postreq_5c97beb2-df7d-46ae-aa55-bf000334b623"
>

Related Topics

- <a href="click-tracking.html" class="xref"
  title="Click tracking serves many useful purposes within the ad serving industry as a whole. For Xandr, click tracking is necessary for optimizing to CPC and CPA goals, for bidding CPC and CPA, and for measuring a campaign&#39;s success.">Click
  Tracking</a>






