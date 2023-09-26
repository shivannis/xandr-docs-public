---
Title : Native Viewability Integration for Sell-Side Providers
Description : Native SSPs using OpenRTB can integrate with
Xandr native viewability measurement by
configuring the website to modify the payload of the viewability script.
---


# Native Viewability Integration for Sell-Side Providers



Native SSPs using OpenRTB can integrate with
Xandr native viewability measurement by
configuring the website to modify the payload of the viewability script.
You can integrate the script using direct access to the DOM ID or the
classname, or use a CSS selector.

TheXandr viewability script payload can be found
in the `jstracker` field of the OpenRTB response, as defined in the <a
href="https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-Native-Ads-Specification-1-1_2016.pdf"
class="xref" target="_blank">IAB specs</a>. This payload contains the
`;dom_id=%native_dom_id%` parameter, which can be replaced using any of
the methods below.

<div id="native-ad-viewability__section_slr_2xr_gtb"
>

## Use the DOM ID

To integrate using direct access to the DOM ID, populate
`%native_dom_id%` with the ID of an HTML element that wraps the creative
content. The native ad renderer will then overwrite the
`%native_dom_id%` in the viewability script payload.



You can use any unique ID (newly created or already existing on the
page) that's compliant with the HTML standard. For example, the
following snippet shows the ID attribute applied to a `<div>` element.

``` pre
<div id="1234abcd">
  <!—native content-->

```



The native ad renderer injects the script in the page, so that the
Xandr viewability script can retrieve the HTML
element using document.`getElementById`.



<div id="native-ad-viewability__section_hmz_2xr_gtb"
>

## Use a Classname

To integrate by using access to a classname, add `anx_cr_loc` as an
attribute on an HTML element that wraps the creative content to be
rendered. The native ad renderer will then overwrite the
`%native_dom_id%` in the viewability script payload.



For example, the following snippet shows the attribute applied to a
`<div>` element.

``` pre
<div class="anx_cr_loc">  
  <!—native content -->

```





The native ad renderer removes `%native_dom_id%` from the payload using

``` pre
newViewJsPayload = viewJsPayload.replace("%native_dom_id%", "");
```





and injects the viewability script element in the ad wrapping element
directly after the creative content, as shown in the example.

``` pre
<div class="anx_cr_loc">
  <!—native content -->
  <script src="//cdn.adnxs.com/appnexusviewabilityscriptpayload_url...">
    </script>

```





<div id="native-ad-viewability__section_n2h_fxr_gtb"
>

## Use a CSS Selector



To integrate using a CSS selector, find a stable selector that selects
only your ad, and URL-encode it. For example, suppose you're using the
following code:

``` pre
<div class="right">
  <div class="ad1">
    <!—native content -->
    

```





You could use the selector `.right > .ad1` and encode it as
`.right%20%3E%20.ad1`.



The native renderer then replaces the
`%native_dom_id% `with` ;css_selector=``url encoded css selector` as
shown in the following example:

``` pre
newViewJsPayload = viewJsPayload.replace("%native_dom_id%", ";css_selector=.right%20%3E%20.ad1");
```



The viewability script then retrieves the HTML element using
`document.querySelector`.

<div id="native-ad-viewability__section_qbx_5zq_dtb"
>

## Related Topics

- <a href="introduction-to-viewability.html" class="xref">Introduction to
  Viewability</a>
- <a href="native-creatives.html" class="xref"
  title="You can host video, audio, banner, carousel, and app install native creatives with Xandr.">Native
  Creatives</a>






