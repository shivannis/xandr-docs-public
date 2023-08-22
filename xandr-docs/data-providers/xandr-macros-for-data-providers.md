# <span class="ph">Xandr</span> Macros for Data Providers

<div class="body">

<span class="ph">Xandr</span> can populate the following information.

<div class="section">

## Macros for All Impressions

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d552e54" class="entry nocellnoborder"
style="vertical-align: top">Macro</th>
<th id="d552e57" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${REFERER_URL}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The refering URL for this inventory if
available.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e54 "><code
class="ph codeph">${REFERER_URL_ENC}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The encoded refering URL.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${USER_ID}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The <span class="ph">Xandr</span> 64-bit character
string representing the user for the impression.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${USER_IP}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The IP address of the user.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${AUCTION_ID}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The 64-bit character string representing the
individual auction that led to the impression.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${USER_AGENT}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The user agent string from the request's HTTP header.
User agent often identifies such information as the application,
operating system, and software vendor acting on behalf of the user
(e.g., "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US;
rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4").</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${USER_AGENT_ENC}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The encoded user agent string from the request's HTTP
header.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e54 "><code
class="ph codeph">${SELLER_MEMBER_ID}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The <span class="ph">Xandr</span> member ID for the
inventory seller associated with the auction.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${USER_COUNTRY}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The country for the impression's user.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${USER_STATE}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The state for the impression's user.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${USER_CITY}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The city for the impression's user.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${USER_DMA}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The DMA (Designated Market Area) for the impression's
user.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${POSTAL_CODE}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The postal code for the impression's user.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${TIME_ZONE}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The time zone for the impression's user.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${TAG_ID}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">Provides the placement ID of the tag in this
impression. The permission to view tags is part of the seller's
visibility profile. Tag IDs will not be visible unless explicitly
allowed by the seller.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e54 "><code class="ph codeph">${EXTERNAL_UID}</code></td>
<td class="entry cell-noborder"
headers="d552e57 ">The character string the inventory seller has
assigned to the user for the impression.</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d552e54 "><code class="ph codeph">${EXTENDED_IDS}</code></td>
<td class="entry cellborder"
headers="d552e57 ">The identifiers (industry IDs and publisher provided
IDs) represents the user of the impression. These would be passed as
received in the request, with multiple identifiers supported following
the format :
<pre id="ID-0000018d__codeblock_pdr_3mk_wxb"
class="pre codeblock"><code>…&amp;extended_ids=&lt;source_1&gt;,&lt;id_1&gt;|&lt;source_2&gt;,&lt;id_2&gt;|… </code></pre>
The separators proposed being <code class="ph codeph">,</code> between
the source and the value, and <code class="ph codeph">|</code> between
the different IDs type and value pairs.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## European Ad Inventory and Providing Notice, Transparency and Choice

<div class="note warning">

<span class="warningtitle">Warning:</span> In order for our clients to
meet their transparency, notice and choice/consent requirements under US
state privacy law, GDPR and the existing ePrivacy Directive,
<span class="ph">Xandr</span> supports
<a href="https://iabeurope.eu/transparency-consent-framework/"
class="xref" target="_blank">the IAB Europe Transparency &amp; Consent
Framework</a> (the "Framework").

This is a reference for publishers using the macros to surface notice,
transparency and choice to end users located in applicable US states
and the EEA and signal approved vendors, and where necessary pass
consent and/or Do Not Share/Sell signals to
<span class="ph">Xandr</span> and demand sources and their vendors
through the <span class="ph">Xandr</span> Platform.

This resource should not be construed as legal advice and
<span class="ph">Xandr</span> makes no guarantees about compliance with
any law or regulation. Please note that because every company and its
collection, use, and storage of personal data is different, you should
also seek independent legal advice relating to obligations under US
state law, European regulations, including the GDPR and the existing
ePrivacy Directive. Only a lawyer can provide you with legal advice
specifically tailored to your situation. Nothing in this guide is
intended to provide you with, or should be used as a substitute for
legal advice tailored to your business.

Note
our <a href="https://wiki.xandr.com/display/policies/Home" class="xref"
target="_blank">Service Policies</a> (for Buying, Selling, and Data
Providers) include privacy-specific obligations of which you should be
aware. These Service Policies have been updated effective 1st of January
2023.

</div>

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d552e297" class="entry nocellnoborder"
style="vertical-align: top">Macro</th>
<th id="d552e300" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e297 "><code class="ph codeph">${GDPR_APPLIES}</code></td>
<td class="entry cell-noborder"
headers="d552e300 ">Designates whether GDPR regulations are applied.
Specifically, it indicates whether the user is located in a GDPR
impacted country, or if we have a GDPR-required signal passed with the
request. 1 if yes, 0 if no.
<div class="note warning">
<span class="warningtitle">Warning:</span> A "0" may be received from an
EEA country. It is the publisher's choice to signal in this manner.
</div></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e297 "><code
class="ph codeph">${GDPR_CONSENT_STRING}</code></td>
<td class="entry cell-noborder"
headers="d552e300 ">This is the IAB GDPR consent string. If the GDPR
applies, then this will have a list of user approved vendors based on
the <a
href="https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework"
class="xref" target="_blank">IAB GDPR Transparency and Consent
Framework</a>.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e297 "><code class="ph codeph">${GPP_SID}</code></td>
<td class="entry cell-noborder"
headers="d552e300 ">Designates whether a section (i.e. regulatory
framework) of the <a href="https://iabtechlab.com/gpp" class="xref"
target="_blank">Global Privacy Platform</a> should be applied.
Specifically, it indicates whether the user is located in a country
affected by legislation covered by the GPP.</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d552e297 "><code
class="ph codeph">${GPP_STRING_XXXXX*}</code></td>
<td class="entry cellborder"
headers="d552e300 ">This is the IAB <a href="https://iabtechlab.com/gpp"
class="xref" target="_blank">Global Privacy Platform</a> (GPP) string.
If a section of the GPP applies, then this will contain
framework-dependent information reflecting the consent elections of the
user.
<div class="note">
<span class="notetitle">Note:</span> * XXXXX can represent any numerical
id.
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Macros for Mobile Impressions

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d552e381" class="entry nocellnoborder"
style="vertical-align: top">Macro</th>
<th id="d552e384" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e381 "><code class="ph codeph">${GEO_LAT }</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">The latitude of the user when GPS data is available
from a mobile device.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e381 "><code
class="ph codeph">${DERIVED_GEO_LAT}</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">An approximation of the latitude of the
user truncated down to 3 decimal places of precision.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e381 "><code class="ph codeph">${GEO_LON}</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">The longitude of the user when GPS data is available
from a mobile device.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e381 "><code
class="ph codeph">${DERIVED_GEO_LON}</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">An approximation of the longitude of the
user truncated down to 3 decimal places of precision.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e381 "><code class="ph codeph">${EXT_APP_ID}</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">The external identifier for the application
requesting the impression. This is most useful for impressions from
mobile apps.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e381 "><code class="ph codeph">${DEVICE_IFA}</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">The unique identifier for advertising (IFA)
representing the mobile device. It is defined on the principles of the
Interactive Advertising Bureau's (IAB's) guidelines for IFA on Over The
Top (OTT) media services.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e381 "><code
class="ph codeph">${DEVICE_IFA_TYPE}</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">The source of the unique identifier for advertising
(IFA) representing the mobile device. It is defined on the principles
of the Interactive Advertising Bureau's (IAB's) guidelines for IFA
on Over The Top (OTT) media services.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e381 "><code class="ph codeph">${DEVICE_MD5}</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">The MD5-encrypted unique identifier representing the
mobile device.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e381 "><code class="ph codeph">${DEVICE_SHA1}</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">The SHA1-encrypted unique identifier representing
the mobile device.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e381 "><code class="ph codeph">${DEVICE_AAID}</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">The Android advertising identifier when the
impression is from an Android device.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e381 "><code
class="ph codeph">${DEVICE_OPENUDID}</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">The OPENUDID-encrypted unique identifier
representing the mobile device.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e381 "><code
class="ph codeph">${DEVICE_APPLE_IDA}</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">The Apple advertising identifier when the impression
is from an Apple device.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e381 "><code
class="ph codeph">${DEVICE_MAKE_ID}</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">The <span class="ph">Xandr</span> 64-bit character
string representing the make of the mobile device (e.g., "Apple").</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e381 "><code
class="ph codeph">${DEVICE_MODEL_ID}</code></td>
<td class="entry cell-noborder"
headers="d552e384 ">The <span class="ph">Xandr</span> 64-bit character
string representing the model of the mobile device (e.g.,
"iPhone").</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d552e381 "><code class="ph codeph">${CARRIER_ID}</code></td>
<td class="entry cellborder"
headers="d552e384 ">The <span class="ph">Xandr</span> 64-bit character
string representing the mobile carrier.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Macros for Content Object Targeting

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d552e570" class="entry nocellnoborder"
style="vertical-align: top">Macro</th>
<th id="d552e573" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e570 "><code class="ph codeph">${CONTENT_ID}</code></td>
<td class="entry cell-noborder"
headers="d552e573 ">A unique identifier that the inventory seller has
assigned to the content.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e570 "><code
class="ph codeph">${CONTENT_LIVESTREAM}</code></td>
<td class="entry cell-noborder"
headers="d552e573 ">Denotes whether the content is live (e.g., stream,
live blog).</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e570 "><code class="ph codeph">${CONTENT_GENRE}</code></td>
<td class="entry cell-noborder"
headers="d552e573 ">The main genre of the program on which the ad will
be played.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e570 "><code
class="ph codeph">${CONTENT_CONTENTRATING}</code></td>
<td class="entry cell-noborder"
headers="d552e573 ">The type of rating for the content.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e570 "><code class="ph codeph">${CONTENT_LEN}</code></td>
<td class="entry cell-noborder"
headers="d552e573 ">The length (duration) of the content.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d552e570 "><code
class="ph codeph">${CONTENT_PROGRAM_TYPE}</code></td>
<td class="entry cell-noborder"
headers="d552e573 ">The higher level categorization of the program on
which the ad will be played.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d552e570 "><code
class="ph codeph">${CONTENT_NETWORK}</code></td>
<td class="entry cell-noborder"
headers="d552e573 ">The parent company or sub-brand which owns multiple
content channels, content brands, or digital properties.</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d552e570 "><code
class="ph codeph">${CONTENT_LANGUAGE}</code></td>
<td class="entry cellborder"
headers="d552e573 ">The language in which the content is being
streamed.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="real-time-integrations-contextual-data-providers.html"
class="link">Real Time Integrations (Contextual Data Providers)</a>

</div>

</div>

</div>
