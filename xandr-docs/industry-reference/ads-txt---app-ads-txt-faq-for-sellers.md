# Ads.txt / App-Ads.txt FAQ for Sellers

<div class="body">

<div class="section">

## What is ads.txt and app-ads.txt?

The goal of Ads.txt and App-Ads.txt is to give publishers a way to list
ALL their approved SSP, ad network, and exchange partners (both direct
and resellers). Theoretically, the publisher’s inventory should not be
found via other partners.

Technically, Ads.txt and App-Ads.txt are files the publisher places on
their domain (`website.com/ads.txt`, or `website.com/app-ads.txt`).
Ads.txt is a file used to declare authorized sellers of display
inventory on the web, whereas app-ads.txt is a file used to declare
authorized sellers of application inventory. Within the respective files
each approved partner is listed with their tech platform
(<span class="ph">Xandr</span>, Google, Rubicon, etc.), account detail,
and the relationship. DSPs & SSPs will regularly crawl these files to
discover the approved inventory sources.

You can read more about what problems these standards are meant to solve
on the IAB Tech Lab
blog: <a href="https://iabtechlab.com/ads-txt-about/" class="xref"
target="_blank">https://iabtechlab.com/ads-txt-about/</a>

</div>

<div class="section">

## How is <span class="ph">Xandr</span> as a DSP going to use ads.txt and app-ads.txt files?

<span class="ph">Xandr</span> is using Ads.txt and App-Ads.txt
information as a way to strengthen our existing inventory quality
programs.

</div>

<div class="section">

## How should publishers or networks incorporate their <span class="ph">Xandr</span> accounts into their ads.txt file?

For more information on how publishers and networks should use ads.txt
and app-ads.txt, see
<a href="xandr-support-for-ads-txt-and-app-ads-txt.html"
class="xref"><span class="ph">Xandr</span> Support for Ads.txt</a>.

</div>

<div class="section">

## Is <span class="ph">Xandr</span> recommending that all publishers and networks implement ads.txt?

Yes. The Ads.txt standard was launched in early 2018, and has gained
significant traction in the industry. Some buyers will exclusively
purchase content that is considered "authorized" by Ads.txt. App-Ads.txt
formally launched in the Spring of 2019, and is also quickly gaining
traction.  

</div>

<div class="section">

## Where can I find an example ads.txt file?

There are some samples of what ads.txt files should look like in
<a href="xandr-support-for-ads-txt-and-app-ads-txt.html"
class="xref"><span class="ph">Xandr</span> Support for Ads.txt</a>.

</div>

<div class="section">

## What percentage of <span class="ph">Xandr</span> publisher clients are ads.txt compliant? 

Over 90% of our top 1000 publishers are compliant and have ads.txt files
on their domains.

</div>

<div class="section">

## How often does <span class="ph">Xandr</span>'s crawler update?

Daily for Ads.txt. Weekly for App-Ads.txt.

</div>

<div class="section">

## How is ads.txt currently being used by <span class="ph">Xandr</span> buyer clients? 

Buyers (both <span class="ph">Xandr</span> UI and API users as well as
external bidder clients) benefit from
<span class="ph">Xandr</span>'s daily ads.txt file crawling and
enforcement because, by default, they only buy from compliant sellers if
a domain has an ads.txt file associated to it. Buyers do not have the
option to target any differently because <span class="ph">Xandr</span>
simply suspends supply paths in violation of information found in
sellers' ads.txt files.

</div>

<div class="section">

## What percentage of buyers are actively crawling publishers' files currently? At what cadence? Is this number expected to rise in the near future?

We have no way to know which bidders are crawling and which are not.
Some buyers have publicly said that they both crawl for ads.txt and
app-ads.txt files, and enforce inventory standards on the basis of these
results. <span class="ph">Xandr</span> performs scanning and enforcement
on a daily basis for display inventory, and a weekly basis for
application inventory. 

</div>

<div class="section">

## Can publishers be blocked by buyers because they do not support ads.txt or app-ads.txt, or because their files are incorrect?

If a publisher has a file in error (meaning they don't include all their
sellers that are authorized), then that has the potential impact them.
If a file is found that appears unintentionally broken or corrupted in
some way, <span class="ph">Xandr</span> will check with publishers
rather than immediately disable buying from parties whose information is
not found in the file. 

</div>

<div class="section">

## Why isn't <span class="ph">Xandr</span> enforcing ads.txt compliance for external bidder demand?

We are not enforcing ads.txt compliance for external bidders because we
anticipate that many of our external bidder partners will be rolling out
ads.txt detection and enforcement mechanisms within their own systems,
and wanted to avoid duplication of logic.

For bidders who are buying external SSP demand via
<span class="ph">Xandr</span> and are building out their own ads.txt
compliance mechanisms, we recommend they implement enforcement
mechanisms in a similar fashion to <span class="ph">Xandr</span> - if
the SSP is listed in the file, then treat them as an authorized
relationship via <span class="ph">Xandr</span>.

</div>

<div class="section">

## Related Topics

<div class="p">

- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/ads-txt---app-ads-txt-faq-for-buyers.html"
  class="xref" target="_blank">Ads.txt/App-Ads.txt FAQ for Buyers</a>
- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/xandr-support-for-ads-txt-and-app-ads-txt.html"
  class="xref" target="_blank">Xandr Support for Ads.txt/App-Ads.txt</a>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="industry-initiatives-and-xandr.html" class="link">Industry
Initiatives and Xandr</a>

</div>

</div>

<div class="linklist relinfo" lang="en-US">

**Related information**  

- <a href="ads-txt---app-ads-txt-faq-for-buyers.html" class="link">Ads.txt
  / App-Ads.txt FAQ for Buyers</a>
- <a href="xandr-support-for-ads-txt-and-app-ads-txt.html"
  class="link">Xandr Support for Ads.txt and App-Ads.txt</a>

</div>

</div>
