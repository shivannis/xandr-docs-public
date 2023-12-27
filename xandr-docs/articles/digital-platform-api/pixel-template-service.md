---
title: Digital Platform API - Pixel Template Service
description: Use the pixel template service to find and add AppNexus-approved creative pixels from trusted providers using the pixels array.
ms.date: 10/28/2023
ms.custom: digital-platform-api
---

# Digital Platform API - Pixel Template Service

This read-only service allows you to view information about AppNexus-approved creative pixels from trusted, commonly-used providers, such as Evidon and Brilig. Most AppNexus-approved creative pixels can be added to creatives without causing re-audit.

Here's how it works:

1. You use the Pixel Template Service to find the AppNexus-approved pixel that you want to add to your creative.
1. You note the ID of the pixel as well as its required parameters.
1. You use the pixels array in [Creative Service](https://docs.xandr.com/csh?context) to add the pixel to your creative and define values for the required parameters.

## REST API


## JSON fields


## Examples

### Viewing all AppNexus-approved creative pixels

```
{code}$ curl -b cookies -c cookies 'https://api.appnexus.com/pixel-template'

{
    "response": {
        "status": "OK",
        "count": 3,
        "start_element": 0,
        "num_elements": 100,
        "pixel-templates": [
            {
                "id": 1,
                "name": "Evidon AdChoices Icon",
                "format": "raw-js",
                "content": "(function() {document.write('<sc'+'ript type=\"text/javascript\"' + ((\"https:\"
                 == document.location.protocol) ? \"https://c.betrad.com\" : \"http://c.betrad.com\") +
                 '/surly.js?;ad_wxh=${CREATIVE_SIZE};coid=${P1};nid=${P2};${P3}\"></scr'+'ipt>');}());",
                "num_required_params": 2,
                "require_reaudit": false
            },
            {
                "id": 2,
                "name": "Brilig Impression Tracker",
                "format": "url-image",
                "num_required_params": 1,
                "require_reaudit": false,
                "url": "http://p.brilig.com/contact/bct?pid=${P1}&_ct=pixel&adid=${CP_ID}&action=1"
            },
            {
                "id": 3,
                "name": "Alenty Impression Tracker",
                "format": "raw-js",
                "content": "var lnte = window.document.createElement('SCRIPT');lnte.src = 'http://js.alenty.com/
                 apnxs/l/adtrk.js'+'#customer_id=${P1}'+';advertiser=${ADV_ID}'+';campaign=${CP_ID}'+';creative=
                 ${CREATIVE_ID}'+';dimension=${WIDTH}x${HEIGHT}'+';site=${INV_SOURCE_ID}'+';sitepage=${PUBLISHER_ID}
                 _${SITE_ID}'+';external_id=-a--${SSP_DATA}-b--${PRICE_PAID}'+';url=' + encodeURIComponent
                 ('${REFERER_URL_ENC}'); lnte.type = \"text/javascript\"; window.document.body.insertBefore(lnte,
                 window.document.body.lastChild);",
                "num_required_params": 1,
                "require_reaudit": false
            }
        ]
    }
}
{code}
```

### Viewing a specific AppNexus-approved creative pixel

```
{code}$ curl -b cookies -c cookies 'https://api.appnexus.com/pixel-template?id=1'

{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "pixel-template": {
            "id": 1,
            "name": "Evidon AdChoices Icon",
            "format": "raw-js",
            "content": "(function() {document.write('<sc'+'ript type=\"text/javascript\"' + ((\"https:\"
             == document.location.protocol) ? \"https://c.betrad.com\" : \"http://c.betrad.com\") +
             /surly.js?;ad_wxh=${CREATIVE_SIZE};coid=${P1};nid=${P2};${P3}\"></scr'+'ipt>');}());",
            "num_required_params": 2,
            "require_reaudit": false
        }
    }
}
{code}
```
