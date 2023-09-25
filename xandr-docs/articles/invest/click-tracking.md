---
Title : Click Tracking
Description : Click tracking serves many useful purposes within the ad serving
industry as a whole. For Xandr, click tracking
---


# Click Tracking



Click tracking serves many useful purposes within the ad serving
industry as a whole. For Xandr, click tracking
is necessary for optimizing to CPC and CPA goals, for bidding CPC and
CPA, and for measuring a campaign's success.



In order for Xandr to track a click to the
corresponding impression, a click tracker needs to load when a user
clicks on a creative. When the Xandr click
tracker is loaded:

1.  A click is recorded on the Xandr server.

2.  There is a redirect to the webpage that follows the click tracker.

    For example:

    ``` pre
    https://ib.adnxs.com/click?AAAAAAAAAAAAAAAAAAAA./clickenc=https://www.appnexus.com
    ```

    In this example, the Xandr click tracker is
    followed by the Xandr homepage. When the
    link is loaded, a click is recorded on
    Xandr, and then there is a redirect to the
    Xandr homepage.


## Tracking Clicks on Hosted Creatives

Xandr will configure the click tracking for
hosted creatives such as JPGs, GIFs, and PNGs since they are wrapped in
our creative templates. Our templates are set up in such a way that a
dynamically-generated click tracker is correctly populated in the
creative content. For more information, see
<a href="creative-templates.md" class="xref"
title="If you want to customize the way creatives render, you can create your own templates from scratch, or you can copy Xandr standard templates and modify them to fit your needs.">Creative
Templates</a>.

All you have to do is enter the landing page URL in the
Landing Page field , and a click URL
with encoded information about the creative will be automatically
appended to the creative. When a user clicks the URL, the user's browser
will first request the URL from adnxs.com. The
encoded information in the URL will be recorded by the server. The
user's browser will be redirected to the landing page configured for the
creative.


## Tracking Third-Party Clicks on URLs for Hosted Creatives

Most third-party click tracking URLs will automatically redirect to the
landing page, so all you have to do is enter the click tracking URL
directly in the Landing Page field.
After clicking the creative, the tracker will load and redirect to the
landing page.



## Tracking Clicks on Third-Party Tags



A simple third-party tag is made up of two parts:

- An `<a>` tag, or anchor tag, which wraps around the image.
- An `<image>` tag, which loads an image.

For example:

``` pre
<a href="https://www.cnn.com" target="_blank"><img src="media/Ad-MediumRectangle-300x250.png" width="300" height="250"></a>
```





The anchor tag contains a "href" or hyperlink reference, which in this
case is cnn.com. When the creative is clicked, the browser will redirect
to cnn.com. The landing page will load as specified by the `target`
parameter, which in this case is "\_blank", to indicate that the page
should load in a new window or tab. In order for a third-party tag to
track clicks, the `${CLICK_URL_ENC}` macro must be implemented. When an
impression is delivered, the macro will be replaced with a
dynamically-generated click tracker. The click tracker loads only when
the creative is clicked. To achieve this, the macro should be placed
right before the creative's landing page as shown here:

``` pre
<a href="${CLICK_URL_ENC}https://www.cnn.com" target="_blank"><img src="media/Ad-MediumRectangle-300x250.png" width="300" height="250"></a>
```





When an image is clicked, the "href" page loads. A click is tracked on
Xandr and followed by a redirect to
https://www.cnn.com. For example:

``` pre
<a href="https://ib.adnxs.com/click?AAAAAAAAAAAAAAAAAAAA./clickenc=https://www.cnn.com" target="_blank"><img src="media/Ad-MediumRectangle-300x250.png" width="300" height="250"></a>
```





After the user is redirected to the href, such as https://www.cnn.com,
the following takes place:

1.  The Xandr impression bus generates a click
    tracker by populating the `${CLICK_URL_ENC}` macro.
2.  The click tracker is passed to the third-party ad server in the tag.
3.  The third-party ad server will take the click tracker and insert it
    correctly into the creative so that it will load when the creative
    is clicked.





For a URL-HTML, URL-JS, raw-HTML, or raw-JS creative, you will need to
include one of the following Xandr macros in the
appropriate place in your URL/tag:

<table id="ID-00003c53__table_65ff58e8-cd31-4b57-9ac3-73f2664baedb"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00003c53__table_65ff58e8-cd31-4b57-9ac3-73f2664baedb__entry__1"
class="entry">Macro</th>
<th
id="ID-00003c53__table_65ff58e8-cd31-4b57-9ac3-73f2664baedb__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00003c53__table_65ff58e8-cd31-4b57-9ac3-73f2664baedb__entry__1">${CLICK_URL}</td>
<td class="entry"
headers="ID-00003c53__table_65ff58e8-cd31-4b57-9ac3-73f2664baedb__entry__2">The
click tracking url.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00003c53__table_65ff58e8-cd31-4b57-9ac3-73f2664baedb__entry__1">${CLICK_URL_ENC}</td>
<td class="entry"
headers="ID-00003c53__table_65ff58e8-cd31-4b57-9ac3-73f2664baedb__entry__2">The
encoded click tracking url (only necessary for some third-party ad
servers)</td>
</tr>
</tbody>
</table>





Although an encoded version is available for certain ad servers, you'll
most likely want to include the `${CLICK_URL}` macro. For example:

``` pre
https://ad.doubleclick.net/adi/N5364.Ivillage.com/B2965815.5;sz=728x90;click=${CLICK_URL};ord=${CACHEBUSTER}?
```





Here "click" is the DoubleClick variable for accepting external click
URLs. When the full URL string above is passed from
Xandr to the user's browser, the impression bus
will replace `${CLICK_URL}` with the actual click
Xandr URL, which is easily identified by the
large number of capital A's present in the string. The
Xandr click URL will look something like this:

``` pre
https://ib.adnxs.com/click?AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA__________-No5xOAAAAAAEAAAAAAAAAAAAAAAAAAABd8gsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAEAcAsHNwAAAAA./clickenc=
```





Therefore, the expanded DoubleClick content will look as follows:

``` pre
https://ad.doubleclick.net/adi/N5364.Ivillage.com/B2965815.5;sz=728x90;click=https://ib.adnxs.com/click?AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA__________-No5xOAAAAAAEAAAAAAAAAAAAAAAAAAABd8gsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAEAcAsHNwAAAAA./clickenc=;ord=1330398521?
```



The creative will first direct the browser to the impression bus where
the click will be recorded, and then to the landing page (the landing
page is specified after our `clickenc=` variable). In this example,
DoubleClick will use our click URL and `${CACHEBUSTER}` macro when
delivering the final creative content to the user's page. The
`${CACHEBUSTER}` macro ensures that a fresh call is made to the ad
server every time the tag is called, so you are accurately counting
impressions. If you don't add the `${CACHEBUSTER}` macro to the tag, you
may see inaccurate impression totals. For more information, see <a
href="supported-creative-macros.html#supported-creative-macros__table_ff4cf90f-81ed-4864-a193-a41cf7e9aaf5"
class="xref">Table 2</a>.





## Examples of Failures



<table id="ID-00003c53__simpletable_ks3_jfj_zvb"
class="simpletable frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header sthead">
<th class="stentry" scope="col">Failure</th>
<th class="stentry" scope="col">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd strow">
<td class="stentry">Failed to click on creative that appears blank</td>
<td class="stentry">Creative failed to render during the test due to geo
fencing or third party protection.</td>
</tr>
<tr class="even strow">
<td class="stentry">Failed to click on a creative</td>
<td class="stentry">Creative did not respond to clicking. For example,
clicking only a specific button.</td>
</tr>
<tr class="odd strow">
<td class="stentry">Creative loads landing page in the same browser
window</td>
<td class="stentry">Creative interfers with the browser navigation.</td>
</tr>
<tr class="even strow">
<td class="stentry">Click tracker did not fire</td>
<td class="stentry">Creative responded to clicking normally but did not
load the clicktracking URL.</td>
</tr>
</tbody>
</table>



In order to properly track clicks, all hosted HTML5 creatives must refer
the click tag parameter in the URL of the creative when it is served.
Also when the creative is clicked, it should open specific the landing
page defined in your setup.

Creative designers can either use their own code to ensure that the
reference is present, or use helper code provided in the
Xandr HTML5 library.



## Related Topics

- <a href="click-track-test.md" class="xref">Click Track Test</a>
- <a href="test-click-tracking-manually.md" class="xref"
  title="You can manually test click tracking if strange creative behavior or UI issues cause the click tracking test within the UI to be unreliable.">Test
  Click Tracking Manually</a>






