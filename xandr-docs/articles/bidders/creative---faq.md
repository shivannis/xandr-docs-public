---
Title : Creative - FAQ
Description : <div id="creative-faq__section_jqx_fnm_4wb" >
## Ad Quality
**Can I rotate brands in my creative or show more than one brand at the
same time?**
No, each creative may show only one brand. This may not change during
---


# Creative - FAQ



<div id="creative-faq__section_jqx_fnm_4wb" >

## Ad Quality

**Can I rotate brands in my creative or show more than one brand at the
same time?**

No, each creative may show only one brand. This may not change during
the lifetime that the creative is used on the platform unless the
creative stops serving, set put into the queue for reaudit, and is
audited for the new brand. Creatives also may not show more than one
brand. If the creative is clearly for an online retailer and shows a
product now made by that retailer, but is a sample product you can buy
at that retailer, and if the creative clicks through to that retailer's
website, then this is fine.

**Do I have to set the brand of my creative?**

No, this is done by our auditing team.

**What exactly is a brand?**

BMW is a brand. BMW 5-series is not considered a separate brand.

**Why are my creatives not serving?**

There are a number of reasons a creative may not be serving:

- If a creative has active=0, it will not serve.
- If a creative has is_expired=1, it both has not served and has not
  been modified in over last 14 days (on the 15th day, it is updated as
  **Expired**). As of March 2018, expired creatives will be
  automatically reactivated if your bidder resumes bidding with the
  creative.
- If a creative has failed the Microsoft audit, it will not serve on
  Microsoft inventory.
- If a creative is "pending" for the Xandr audit, it will only serve on
  the portion of the inventory that allows unaudited creatives.

Sellers in Xandr can also choose to ban by the brand, category,
language, technical attribute or buyer, so an otherwise-valid creative
may be banned by a seller.

**How can I find the brands and brand categories that Xandr audit
assigned to my creatives?**

To check the brand and brand category assigned by Xandr audit to your
creatives:

- Using the <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
  class="xref" target="_blank">Creative Service</a>, get the "brand"
  field of the creative. This will have the brand ID and name, and the
  category ID for the brand. E.g.:
  - GET `https://api.adnxs.com/creative/MEMBER_ID/CREATIVE_ID`
- Using the <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/category-service.html"
  class="xref" target="_blank">Category Service</a>, you can get the
  name of the Category.
  - To get a specific category:
    - `GET https://api.adnxs.com/category/CATEGORY_ID`
  - To get all categories:
    - `GET https://api.adnxs.com/category`



<div id="creative-faq__section_bcc_dwm_4wb" >

## Audit - General

**Can I pass macro values into the creative audit that are used when the
creative is previewed?**

No, the creative must serve without any dynamic parameters being passed
in when the creative is previewed as part of the creative audit.

Example: Say the creative URL is
`https://cnd.server.com/123.js?camp={CAMP}`, and the value passed for
CAMP in the bid response would result in a creative being served for
brand ABC. Then calling the URL
`https://cnd.server.com/123.js?camp={CAMP}`, without any macro
replacement, must also result in a creative being returned for brand
ABC.

**Can I serve one creative in the audit and another when I win an
auction?**

No, the creative that is uploaded into Xandr must show an advertisement
for the underlying brand when it is previewed, as well as when it is
delivered in RTB. This means that the creative must be able to serve
without any macros being populated.

**Do I have to pay separately for the MSFT audit and the Xandr audit?**

No, when the auditors review a creative, they will audit it for both
Microsoft and Xandr. This is all included in the same audit fee. The
fields audit_status and msft_audit_status will be populated accordingly.

**How can I set a creative to be active?**

This can be done using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a> by setting the active
field to "active." This can also be done through the bidder UI in the
creative tab, by selecting the creative in question, then checking the
"active" box in the full edit screen.

**How do I make sure my creatives aren't audited?**

Using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>, set the audit status
to "no-audit".

**How do I put my creative in the audit queue?**

Using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>, set the allow_audit
field to true. This can also be done through the bidder UI in the
creative tab, by selecting the creative in question, then checking
"resubmit" in the "Audit Status" field. The creative must also be active
and the member the creative is registered under must also be active.

**If I disagree with the results of an audit, what should I do?**

Use our Customer Support form at
<a href="https://help.xandr.com/" class="xref"
target="_blank">https://help.xandr.com/</a> to contact the Ad Quality
team.

**What does is_expired=1 mean?**

This means that the creative both has not served and has not been
modified in over last14 days, and it is effectively inactive (on the
15th day, it is updated as **Expired**). As of March 2018, expired
creatives will be automatically reactivated if your bidder resumes
bidding with the creative.



<div id="creative-faq__section_zzc_t1n_4wb" >

## Audit Status

**How can I get the audit status of my creatives?**

There are three methods that are available:

1.  Using the <a
    href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
    class="xref" target="_blank">Creative Service</a>.
    - To use the creative service, you can make daily calls using the
      `min_last_modified` parameter, in the format of `YYYY-MM-DD` to
      see all creatives that have had their status changed. You should
      also use the `num_elements` and `start_element` parameter.
    - For example, if you run
      `https://api.adnxs.com/creative/12345?min_last_modified=2018-05-15&num_elements=100&start_element=0`,
      the results will include 100 creatives modified since May
      15, 2018. The `count` parameter will include the total number of
      creatives, but because the API will only return up to 100 objects
      at a time, you can page through the results by using the
      start_element parameter.
2.  Use the <a
    href="https://docs.xandr.com/bundle/xandr-bidders/page/audit-notify-request.html"
    class="xref" target="_blank">audit notify request</a>.
    - When creatives are audited, audit notify requests are sent to the
      handler if this has been set up in the <a
      href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
      class="xref" target="_blank">Bidder Service</a>.
    - In order to set use an audit notify request handler, you must have
      a single endpoint that can receive and process these requests as
      they are sent.
3.  Use an Excel export.
    - If you would like a weekly report of your creative status sent by
      email, please speak with your Xandr technical and account team.
4.  Use the
    <a href="https://bidder.xandr.com/" class="xref" target="_blank">bidder
    UI</a>.

**What is returned when I call the creative service?**

The entire creative object is return when you call the creative service,
so you will need to parse out the relevant audit status parameters.



<div id="creative-faq__section_ycd_gbn_4wb" >

## Macros

**Are custom macros or Xandr macros replaced first?**

Xandr macros are replaced first, so you cannot return Xandr macros in
the custom macros portion of your bid response.



<div id="creative-faq__section_ghm_hbn_4wb" >

## Uploading Creatives

**Can I upload multiple creatives in one API call?**

No. But you can programmatically upload multiple creatives in
consecutive POSTs to the API. Please note that you only make 60 writes
in a rolling 60-second window.

**How can I upload creatives?**

You can upload creatives using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a> API.

**How do I upload a Flash creative?**

In the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a> API, you can either
provide a link in the `media_url` field, or provide a tag using the
`content` field. If you host a javascript file that delivers the flash,
you would specify the URL of your javascript in the media_url, and the
format would be url-js. The media_url may be, for example,
`https://ad.sample_site.com/ad_server/ads.js?my_ad_id=12345&price_paid=$\{PRICE_PAID\}&custom_macro=$\{custom_macro\}`
would call your delivery javascript.

In the alternative, you may want Xandr to deliver the javascript or
iframe that delivers the flash. For example, you may use format
"iframe-html" (or raw-js, if you enter the raw javascript - not if you
use an html tag that calls javascript) and set the content to be:

``` pre
<SCRIPT 
 TYPE="text/javascript" 
 SRC="https://ad.sample_site.com/ad_server/ads.js?my_ad_id=12345&price_paid=${PRICE_PAID}&custom_macro=${custom_macro}">
</SCRIPT>
```

**What is the creative code?**

The code is your internal ID for a creative. When a creative is made in
Xandr, it is given an ID in our system (e.g. 12345). If you internally
refer to this creative as 'abc', you would specify the code of the
creative as 'abc'. When you bid, you then submit either 12345 as the ID
or 'abc' as the code.

**What is the correct format to use?**

The format can be one of: 'url-html','url-js', 'flash','image','raw-js',
'iframe-html', or 'text'. The values url-html and url-js are to be used
when you're using the media_url parameter in the creative. This means
that the creative is defined purely by a reference to a website that has
html or javascript content. The format raw-js should be used when the
creative is purely javascript. This mean that the creative is only
javascript. If the creative is in the following format:

`<script language="JavaScript" type="text/javascript">javascript here....</script>`

then the creative is iframe-html and not raw-js.

If there's a javascript tag, you can still bid with iframe creatives
(and vice-versa) - Xandr will format the content of your creative
appropriately. For example, we will use document.write(...) around your
iframe creative for javascript tags.






