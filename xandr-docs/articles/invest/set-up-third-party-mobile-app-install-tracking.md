---
Title : Set Up Third-Party Mobile App Install Tracking
Description : This page explains how to set up third-party mobile app install tracking
with an external vendor; it also describes the process by which those
installs are reported back to Xandr by the
vendor. Finally, it covers how server-side conversion tracking works in
---


# Set Up Third-Party Mobile App Install Tracking



This page explains how to set up third-party mobile app install tracking
with an external vendor; it also describes the process by which those
installs are reported back to Xandr by the
vendor. Finally, it covers how server-side conversion tracking works in
general, as well as providing links to further documentation.



## App Install Tracking Vendors

These are examples of partners that have integrated with
Xandr for app install tracking. For any
questions please reach out to these partners directly.

- <a href="https://www.flurry.com/" class="xref"
  target="_blank">Flurry</a>
- Sam4Mobile
- <a href="https://www.singular.net/" class="xref"
  target="_blank">Singular</a>
- <a href="https://www.appsflyer.com/" class="xref"
  target="_blank">AppsFlyer</a>
- <a href="https://tapstream.com/" class="xref"
  target="_blank">TapStream</a>
- MDotM
- <a href="https://admanager.google.com/home/" class="xref"
  target="_blank">Google Ad Manager</a>
- <a href="https://kochava.com/" class="xref" target="_blank">Kochava</a>
- <a href="https://www.conversantmedia.com/" class="xref"
  target="_blank">Epsilon Conversant</a>
- TapSense
- <a href="https://www.tune.com/" class="xref" target="_blank">Tune
  (formerly HasOffers)</a>
- <a href="https://www.adjust.com/" class="xref"
  target="_blank">Adjust</a>
  - <a href="https://docs.adjust.com/en/network-integration/" class="xref"
    target="_blank">Adjust Network Integrations Page</a>
  - <a href="https://partners.adjust.com/index.md" class="xref"
    target="_blank">Adjust Partner Page (Click URL Builder)</a>





## Set Up Third-party Mobile App Install Tracking



<b>Note:</b> The instructions given here will
only work with Xandr-hosted creatives at this
time. Technically, our server-side conversion attribution requires the
`${SSP_DATA`} macro to be populated by the creative's ad server, so any
ad server that populates this macro will work. In practice, there are
not any other ad servers that populate this macro at this time.



**Step 1. Create a Conversion Pixel**



Follow the process described in
<a href="create-a-conversion-pixel.md" class="xref">Create a
Conversion Pixel</a> to set up a conversion tracker in our system. When
this tracker fires, it informs Xandr that a
conversion has taken place. You will provide this conversion pixel ID to
the install tracking vendor so they can perform the server-side
conversion call described below.



<b>Note:</b> **Specific to AppsFlyer**: While
creating a Conversion Pixel section, make sure that the SDK event names
used in Appsflyer match the Conversion Event names in
Xandr. Otherwise, the conversion will not be
passed back to Xandr and won't be reflected in
the Microsoft Invest UI.





**Step 2. Get the Click URL from the install tracking vendor**

The install tracking vendor should provide you with a URL template that
they will use to track conversions. You may want to fill out the URL
with other macros; Xandr will replace the text
of these macros with relevant data when the data is provided. These
macros are used to pass information back to
Xandr so that it can be used with our systems.
For more information about the macros we support and their meanings, see
<a href="creative-macros.md" class="xref"
title="You can insert creative macros into your creative third-party tags, impression trackers, landing page URLs, and third-party pixels for reporting and optimization purposes.">Creative
Macros</a>.

Here's an example of what a click URL from an install tracking vendor
could look like:

``` pre
https://wetrackinstalls.com/serve?action=click&publisher_id=[publisher_id]&site_id=[site_id]&offer_id=[offer_id] &odin=${DEVICE_ODIN}&open_udid=${DEVICE_OPENUDID}&ios_ifa=${DEVICE_APPLE_IDA}&ref_id=${SSP_DATA} 
```



<b>Note:</b> The URL you get from the vendor
**must** use the macro `${SSP_DATA`} as the click ID. This click ID will
be used in the "post-back" call described below, which the vendor makes
to report a successful app install. If this macro is not included in the
URL, Xandr will not be able to record the
conversion.



**Step 3. Set the creative's landing page URL to the provided install
tracking vendor URL**

Set the landing page of the creative (also known as the click URL) to
the URL provided by your tracking vendor. This process is described in
<a href="add-a-creative.md" class="xref"
title="You can add a creative by either uploading a spreadsheet or the creative files directly from your computer. Only secure content is supported.">Add
a Creative</a> and <a href="add-creatives-in-bulk.md" class="xref"
title="You can add multiple third-party, hosted, and native creatives to the Creative Manager simultaneously by either uploading a spreadsheet or the creative files directly from your computer. Only secure content is supported.">Add
Creatives in Bulk</a>.



<b>Note:</b> Make sure you fill out the click
URL with any desired <a href="creative-macros.md" class="xref"
title="You can insert creative macros into your creative third-party tags, impression trackers, landing page URLs, and third-party pixels for reporting and optimization purposes.">Creative
Macros</a>, as described in **Step 2** above.



**Step 4. The install tracking vendor reports conversions back to
Xandr**

When a creative with the install tracking click URL is clicked, the
install tracking vendor will make a "post-back" call to
Xandr that will report a successful conversion.
Here's an example of a post-back URL:

``` pre
https://sspx-router.adnxs.com/sspx?id=[appnexus conversion pixel ID]&sspdata=[click id passed in ${SSP_DATA} on click]
```

You should never need to see this URL, since it's called by the install
tracking vendor, not you, the client. However, this information could be
useful to you in case any issues arise. For more information about how
the server-side conversion tracking process works, see
<a href="server-side-conversion-pixels.md" class="xref">Server-Side
Conversion Pixels</a>.





<b>Note:</b> The sspx handler is supported
over non-secure (http://adnxs.com/sspx) and secure
(https://secure.adnxs.com/sspx) modes.





## How It Works

When your creative's landing page URL is set up correctly, the install
tracking process works as follows.

See the diagram below for a visualization of how this process works. The
numbers in the diagram correspond to each of the bulleted points below.

1.  The user clicks on the creative. The landing page for the creative
    is the URL provided by the app install tracker as described in
    **Step 2** above.

2.  Xandr logs the click and fills in the
    `${SSP_DATA`{style="line-height: 1.6;"}} token, as well as any
    device identifiers (such as `${DEVICE_APPLE_IDA`{style="line-height:
    1.6;"}} and other <a href="creative-macros.md" class="xref"
    title="You can insert creative macros into your creative third-party tags, impression trackers, landing page URLs, and third-party pixels for reporting and optimization purposes.">Creative
    Macros</a> before redirecting to the install tracking vendor's
    server. The install tracking vendor also logs the click, along with
    the now filled-in contents of the `${SSP_DATA`{style="line-height:
    1.6;"}} token and device IDs. The install tracker then redirects the
    user to the app download page.

3.  The user installs the app from the app download page.

4.  The app notifies the tracking vendor of an install and sends along
    its device ID.

5.  The install tracking vendor matches the device ID provided by the
    app to the click it logged earlier, and then fires the
    Xandr server-side conversion pixel, passing
    the `${SSP_DATA`{style="line-height: 1.6;"}} token. This registers
    the conversion with Xandr.

    ![Third Party App Install Tracking](media/third-party-app-install-tracking.png)
  





## Related Topics

- <a href="server-side-conversion-pixels.md" class="xref">Server-Side
  Conversion Pixels</a>
- <a href="create-a-conversion-pixel.md" class="xref">Create a
  Conversion Pixel</a>
- <a href="add-a-creative.md" class="xref"
  title="You can add a creative by either uploading a spreadsheet or the creative files directly from your computer. Only secure content is supported.">Add
  a Creative</a>
- <a href="add-creatives-in-bulk.md" class="xref"
  title="You can add multiple third-party, hosted, and native creatives to the Creative Manager simultaneously by either uploading a spreadsheet or the creative files directly from your computer. Only secure content is supported.">Add
  Creatives in Bulk</a>






