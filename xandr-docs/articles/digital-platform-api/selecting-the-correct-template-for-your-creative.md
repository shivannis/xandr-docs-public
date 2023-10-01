---
Title : Selecting the Correct Template for Your Creative
Description : Please use the guide below in determining which template to use for your
creatives.
---


# Selecting the Correct Template for Your Creative



Please use the guide below in determining which template to use for your
creatives.

<div id="buy-side-service-template__note_tpq_vm4_wwb"
class="note tip note_tip">

Tip: A creative's `media_url` /
`content`value is plugged into the the creative template to form the
code that is delivered to the user's browser. Therefore, it is essential
to choose the appropriate template ID when submitting a creative. For
more information about creatives, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>.



<div id="buy-side-service-template__note_gsl_xm4_wwb"


Note: Get more information about
template IDs

For more information about creative templates (and template IDs), see
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-template-service.html"
class="xref" target="_blank">Creative Template Service</a>.



<div id="buy-side-service-template__section_av4_cr4_wwb"
>

## ID:1

This template is used if your creative is a single URL that points to a
piece of html code.

You will need to pass the URL in the `media_url` field and set an `id`
of 1 in the template object.

**Template**

``` pre
    <iframe frameborder="0" width="${CREATIVE_WIDTH}" height="${CREATIVE_HEIGHT}" marginheight="0" marginwidth="0" target="_blank" scrolling="no" src="${MEDIA_URL}"></iframe>  
            
```



<div id="buy-side-service-template__SelectingtheCorrectTemplateforYourCreative-Example"
>

## Example

**Creative**

``` pre
{
    "creative": {
        "width": 320,
        "height": 50,
        "media_url": "http://test.com/piece_of_html",
        "template": {
            "id": 1
        }
    }
}
```

The following will be sent to the user's browser.

``` pre
<iframe frameborder="0" width="320" height="50" marginheight="0" marginwidth="0" target="_blank" scrolling="no" src="http://test.com/piece_of_html"></iframe>
```



<div id="buy-side-service-template__SelectingtheCorrectTemplateforYourCreative-ID-2"
>

## ID: 2

This template is used if your creative is a single URL that points to a
piece of Javascript code.

You will need to pass the URL in the `media_url` field and set an `id`
of 2 in the template object.

**Template**

``` pre
<html><body style="margin-left: 0%; margin-right: 0%; margin-top: 0%; margin-bottom: 0%"><script type="text/javascript" src="${MEDIA_URL}"></script></body></html>
      
```



<div id="buy-side-service-template__SelectingtheCorrectTemplateforYourCreative-Example-1"
>

## Example

**Creative**

``` pre
{
    "creative": {
        "width": 320,
        "height": 50,
        "media_url": "http://test.com/piece_of_js",
        "template": {
            "id": 2
        }
    }
}
```

The following will be sent to the user's browser.

``` pre
<html><body style="margin-left: 0%; margin-right: 0%; margin-top: 0%; margin-bottom: 0%"><script type="text/javascript" src="http://test.com/piece_of_js"></script></body></html>
```



<div id="buy-side-service-template__SelectingtheCorrectTemplateforYourCreative-ID-5"
>

## ID: 5

This template is used if your creative starts and ends with Javascript
components, even if the Javascript code writes HTML.

You will need to pass the Javascript code in the content field and set
an id of 5 in the template object.

**Template**

``` pre
<html><body style="margin-left: 0%; margin-right: 0%; margin-top: 0%; margin-bottom: 0%"><script type="text/javascript">${CONTENT}</script></body></html>
      
```



<div id="buy-side-service-template__SelectingtheCorrectTemplateforYourCreative-Example-2"
>

## Example

**Creative**

``` pre
{
    "creative": {
        "width": 320,
        "height": 50,
        "content": "var source = "http://test.com/test.img; var cw = 320; var ch = 50; ",
        "template": {
            "id": 5
        }
    }
}
```

The following will be sent to the user's browser.

``` pre
<html><body style="margin-left: 0%; margin-right: 0%; margin-top: 0%; margin-bottom: 0%"><script type="text/javascript">var source = "http://test.com/test.img"; var cw = 320; var ch = 50</script></body></html>
```



<div id="buy-side-service-template__SelectingtheCorrectTemplateforYourCreative-ID-6"
>

## ID: 6

This template is used if your creative starts and ends with HTML
components, even if these HTML components are \<script\> tags.

You will need to pass the html code in the content field and set an id
of 6 in the template object.

**Template**

``` pre
      ${CONTENT}
      
```



<div id="buy-side-service-template__SelectingtheCorrectTemplateforYourCreative-Example-3"
>

## Example

**Creative**

``` pre
 {
    "creative": {
        "width": 320,
        "height": 50,
        "content": "<script type="text/javascript">var hostname = "http://hostname.com";</script><noscript>var hostname = "http://hostname.com";</noscript>",
        "template": {
            "id": 7
        }
    }
}
 
```

The following will be sent to the user's browser.

``` pre
<script type="text/javascript">var hostname = "http://hostname.com";</script><noscript>var hostname = "http://hostname.com";</noscript>
```



<div id="buy-side-service-template__section_rv3_sr4_wwb"
>

## **Related Topics**



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/creative-template-service.html"
  class="xref" target="_blank">Creative Template Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
  class="xref" target="_blank">Creative Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/creative-search-service.html"
  class="xref" target="_blank">Creative Search Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/creative-macro-check-service.html"
  class="xref" target="_blank">Creative Macro Check Service</a>
- <a href="https://docs.xandr.com/csh?context=65931030" class="xref"
  target="_blank">Creative Troubleshooting FAQ</a>








