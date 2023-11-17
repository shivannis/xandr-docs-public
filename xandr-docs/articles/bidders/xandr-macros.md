---
Title : Xandr Macros
Description : Macros are used to populate URLs (such as those found in creatives) with
useful information.  They are essentially variables that are expanded by
---


# Xandr Macros



Macros are used to populate URLs (such as those found in creatives) with
useful information.  They are essentially variables that are expanded by
our ad server with whatever their actual value is at the time of the ad
call.

This page contains information about all of the macros we support.  For
each macro, we list the information that that macro is replaced with
during the ad call.



Tip: For more control over URL encoding
and decoding, see the section on <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/xandr-macros.html#XandrMacros-FunctionMacros"
class="xref" target="_blank">Function Macros.</a>

For additional examples about how macros may be used when uploading
creatives, refer to the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a> page.





## Creative Macros



Warning: OpenRTB macros (like
`${AUCTION_PRICE`}) are not supported when adding creatives using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>. They are only
supported on the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
class="xref" target="_blank">Bid Response</a>.



Xandr supports the following creative macros
when adding creatives using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000041b9__entry__1"
class="entry colsep-1 rowsep-1">Macro</th>
<th id="ID-000041b9__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${CLICK_URL}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
click tracking URL.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${CLICK_URL_ENC}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
encoded click tracking URL (only necessary for some third party
adservers)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${AUCTION_ID}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
64-bit character string representing the individual auction that led to
the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${TAG_ID}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
Xandr TinyTag ID that originated the Bid
Request</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${EXT_APP_ID}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
external identifier for the application requesting the impression. This
is most useful for impressions from mobile apps.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${CREATIVE_ID}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
creative ID that won the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${DEAL_ID}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__2">The Xandr Deal
ID associated with the winning bid, if applicable. If there is no deal,
this will return 0.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${ECP}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
publisher side Estimated Clear Price for the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${RESERVE_PRICE}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
reserve price set by the publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${SESSION_FREQ}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
session frequency for the user.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${AGE}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
age of the user (if available). Integer (e.g., <code
class="ph codeph">26</code>) or 0.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${GENDER}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
gender of the user (if available). Values are <code
class="ph codeph">'f'</code>,<code class="ph codeph">'m'</code>,<code
class="ph codeph">'u'</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${CACHEBUSTER}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">A
random number string used to limit caching of the URL</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${PRICE_PAID}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
price paid for this impression. (As opposed to the price bid, before
price reduction.)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${SECOND_PRICE}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
price that represent the second highest bid in auction. Expressed in
floating point number format (e.g. 1.23)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${REFERER_URL}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">If
available, the referring URL for this inventory. 

Note: This field is deprecated (as of
May 2016). Use ${REFERER_URL_ENC} instead.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${REFERER_URL_ENC}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
encoded referring URL.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${BID_PRICE}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
price bid for this impression as opposed to the price paid after price
reduction. </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${TAG_CODE1}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__2">Integration code set on the
placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${TAG_CODE2}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__2">Additional integration code set on the
placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${INV_SOURCE_ID}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__2"><strong>Deprecated.</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${USER_ID}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
Xandr 64-bit character string representing the
user for the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${USER_IP}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
IP address of the user.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${IS_PREVIEW}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">If
we are "previewing" the creative, we can pass a flag to the third-party
server so they don't count it as a production impression. If true, we
pass a <code class="ph codeph">"1"</code>; if false, we pass a <code
class="ph codeph">"0"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${SELLER_MEMBER_ID}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
member that owns the publisher where the impression originates.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${SEG_IDS}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">IDs
of the segments belonging to the winning buyer in this user's cookie (in
order of last seen time). Note that this macro does not work for shared
segments (such as those owned by a third party data provider).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${SEG_CODES}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__2">Codes for the segments belonging to the
winning buyer in this user's cookie (in order of last seen time). Note
that this macro does not work for shared segments (such as those owned
by a third party data provider).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${DATACENTER}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">Data
center ID (1 = NYM, 2 = LAX, 3 = AMS)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${USER_CITY}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__2">Character string of the user's city</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${USER_STATE}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__2">Character string of the user's state (2
letter abbreviation. FIPS 10-4 outside US and Canada)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${SITE_ID}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">ID
of the site the impression is being served on</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${PUBLISHER_ID}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">ID
of the publisher selling the impression</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${PUBLISHER_CODE}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">Code
of the publisher selling the impression (if available)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${CREATIVE_CODE}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">Code
of the creative served (if available)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${CREATIVE_SIZE}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__2">Width x Height of the creative served
(e.g., <code class="ph codeph">"300x250"</code>)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${WIDTH}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__2">Width of the creative served</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${HEIGHT}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__2">Height of the creative served</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${SUPPLY_TYPE}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">This
macro will be populated with a numeric value that denotes the supply
type of the impression. Allowed values include:
<ul>
<li>0: web</li>
<li>1: mobile web</li>
<li>2: mobile app</li>
<li>4: toolbar</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${TIMESTAMP}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
UNIX timestamp for the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${USER_AGENT}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
user agent string from the request's HTTP header. User agent often
identifies such information as the application, operating system, and
software vendor acting on behalf of the user (e.g., "Mozilla/5.0
(Macintosh; U; Intel Mac OS X 10.5; en-US; <a href="http://rv:1.9.0.4"
class="xref" target="_blank">rv:1.9.0.4</a>) Gecko/2008102920
Firefox/3.0.4").</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${USER_AGENT_ENC}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
encoded user agent string from the request's HTTP header.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__1"><code
class="ph codeph">${EXTENDED_IDS}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__2">The
identifiers (industry IDs and publisher provided IDs) represents the
user of the impression. These would be passed as received in the
request, with multiple identifiers supported following the format :
<pre id="ID-000041b9__codeblock_hc2_nhc_wxb"
class="pre codeblock"><code>…&amp;extended_ids=&lt;source_1&gt;,&lt;id_1&gt;|&lt;source_2&gt;,&lt;id_2&gt;|…</code></pre>
The separators proposed being <code class="ph codeph">,</code> between
the source and the value, and <code class="ph codeph">|</code> between
the different IDs type and value pairs.</td>
</tr>
</tbody>
</table>

**European Ad Inventory and Providing Notice, Transparency and Choice**



Warning: In order for our clients to
meet their transparency, notice and choice/consent requirements under US
state privacy law, the GDPR and the existing ePrivacy Directive,
Xandr supports
<a href="https://iabeurope.eu/transparency-consent-framework/"
class="xref" target="_blank">the IAB Europe Transparency &amp; Consent
Framework</a> (the "Framework").

This is a reference for publishers using the macros to surface notice,
transparency and choice to end users located in applicable US states
and the EEA and signal approved vendors, and where necessary pass
consent and/or Do Not Share/Sell signals to
Xandr and demand sources and their vendors
through Xandr's platform.

This resource should not be construed as legal advice
and Xandr makes no guarantees about compliance
with any law or regulation.  Please note that because every company and
its collection, use, and storage of personal data is different, you
should also seek independent legal advice relating to obligations under
US state law, European regulations, including the GDPR and the existing
ePrivacy Directive. Only a lawyer can provide you with legal advice
specifically tailored to your situation. Nothing in this guide is
intended to provide you with, or should be used as a substitute for,
legal advice tailored to your business.

Note our <a
href="https://microsoftapc.sharepoint.com/teams/XandrServicePolicies/SitePages/Xandr-Service-Policies.aspx"
class="xref" target="_blank">Service Policies</a> (for Buying, Selling,
and Data Providers) include privacy-specific obligations of which you
should be aware. These Service Policies have been updated effective 1st
of January 2023.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000041b9__entry__87"
class="entry colsep-1 rowsep-1">Macro</th>
<th id="ID-000041b9__entry__88"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__87"><code
class="ph codeph">${GDPR_APPLIES}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__88">Designates whether GDPR regulations are
applied. Specifically, it indicates whether the user is located in a
GDPR impacted country, or if we have a GDPR-required signal passed with
the request. 1 if yes, 0 if no.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__87"><code
class="ph codeph">${GDPR}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__88">Offers same functionally as <code
class="ph codeph">${GDPR_APPLIES}.</code><br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__87"><code
class="ph codeph">${GDPR_CONSENT_STRING}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__88">This is the IAB GDPR consent string. If
the GDPR applies, then this will have a list of user approved vendors
based on the <a
href="https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework"
class="xref" target="_blank">IAB GDPR Transparency and Consent
Framework</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__87"><code
class="ph codeph">${GDPR_CONSENT}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__88">This is the IAB GDPR consent string
according to TCF 1.0 official specification. It is included to maintain
backwards compatibility for client convenience.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__87"><code
class="ph codeph">${GDPR_CONSENT_[0-9]+}</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000041b9__entry__88">For
example, GDPR_CONSENT_1, GDPR_CONSENT_12345 etc. These all resolve to
the same GDPR consent string as explained above in <code
class="ph codeph">${GDPR_CONSENT_STRING}</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__87"><code
class="ph codeph">${GPP_SID}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__88">Designates whether a section (i.e.
regulatory framework) of the <a href="https://iabtechlab.com/gpp"
class="xref" target="_blank">Global Privacy Platform</a> should be
applied. Specifically, it indicates whether the user is located in a
country affected by legislation covered by the GPP.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__87"><code
class="ph codeph">${GPP_STRING_XXXXX*}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__88">This is the IAB <a
href="https://iabtechlab.com/gpp" class="xref" target="_blank">Global
Privacy Platform</a> (GPP) string. If a section of the GPP applies, then
this will contain framework-dependent information reflecting the consent
elections of the user.

Note: * XXXXX can represent any
numerical id
</td>
</tr>
</tbody>
</table>

The following table contains reserved macro names that are not for use
by Bidder clients. They will cause conflicts with
other Xandr technologies and are not to be used
for custom macros.

<table class="table">
<thead class="thead">
<tr class="header row rowsep-1">
<th id="ID-000041b9__entry__103" class="entry">Reserved Macro Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${ADV_CODE}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${ANCOST}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${BASE64_UID_ENC}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${BASE64_UID}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${BIDPRICE}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${CND}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${CONTENT}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${CREATIVE_HEIGHT}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${CREATIVE_WIDTH}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${FLASH_BACKUP_URL}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${FLASHVARS}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${IE7_FLASH_JS_URL}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${IF_CALLBACK_URL}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${IO_CODE}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${IO_ID}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${IS_PREVIEW_COL}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${IT_CALLBACK_URL}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${MATCHED_PROFILE_CODE}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${MATCHED_PROFILE_ID}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${MEDIA_SUBTYPE}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${MEDIA_TYPE}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${MEDIA_URL_ENC}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${MEDIA_URL}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${PMT_RULE_CODE}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${POP_CALLBACK_URL}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${POP_CREATIVE_MAXIMIZED}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${POP_IS_PREPOP}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${POP_IS_TAG_INITIATED}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${POP_WINDOW_LOCATION}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${POP_WINDOW_MENUBAR}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${POP_WINDOW_RESIZABLE}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${POP_WINDOW_SCROLLBARS}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${POP_WINDOW_STATUSBAR}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${POP_WINDOW_TITLE}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${POP_WINDOW_TOOLBARS}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${PRICE_PAID_ENCR}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${PT1}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${PT2}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${PT3}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${PT4}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${PT5}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${SECOND_LEVEL_CATEGORY_ID}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${SEG_CODES_COL}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${SITE_CODE}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${SSP_DATA}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${TAG_HEIGHT}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${TAG_WIDTH}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${TOP_LEVEL_CATEGORY_ID}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${TRACKER_ID}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${UID}</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${USER_COUNTRY}</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000041b9__entry__103"><code
class="ph codeph">${VENUE_ID}</code></td>
</tr>
</tbody>
</table>





## Mobile Macros

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000041b9__entry__156"
class="entry colsep-1 rowsep-1">Macro</th>
<th id="ID-000041b9__entry__157"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${GEO_LAT}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">The latitude of the user's location,
when GPS data is available from a mobile device. Expressed in the format
"snn.ddd,snn.ddd" (e.g., <code class="ph codeph">+12.345</code> or <code
class="ph codeph">-45.123</code>), where south is represented as
negative. There can be a maximum of 5 decimal places of precision.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${GEO_LON}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">The longitude of the user's location,
when GPS data is available from a mobile device. Expressed in the format
"snn.ddd,snn.ddd" (e.g., <code class="ph codeph">+12.345</code> or <code
class="ph codeph">-45.123</code>), where west is represented as
negative. There can be a maximum of 5 decimal places of precision.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${EXT_APP_ID}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">The external identifier for the
application requesting the impression. This is useful only for
impressions from mobile apps.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${DEVICE_MD5}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">The MD5-encrypted unique identifier
representing the mobile device.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${DEVICE_SHA1}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">The SHA1-encrypted unique identifier
representing the mobile device.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${DEVICE_OPENUDID}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">The OPENUDID-encrypted unique
identifier representing the mobile device.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${DEVICE_ODIN}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">The <a
href="https://code.google.com/p/odinmobile/" class="xref"
target="_blank">ODIN</a>-encrypted unique identifier representing the
mobile device.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${DEVICE_AAID}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">The Android advertising identifier,
when the impression is from an Android device.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${DEVICE_APPLE_IDA}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">The Apple advertising identifier, when
the impression is from an Apple device.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${DEVICE_MAKE_ID}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">The Xandr
integer representing the ID of the make of the mobile device (e.g.,
<code class="ph codeph">26)</code>.  For a complete list of mobile
device make IDs, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${DEVICE_MODEL_ID}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">The Xandr
integer representing the ID of the mobile device model (e.g., <code
class="ph codeph">301</code>). For a complete list of mobile device
model IDs, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${DEVICE_WIN_ID}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">The Windows Ad ID for the device on
which this impression occurred (if applicable).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${CARRIER_ID}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">The Xandr
integer representing the mobile carrier ID. For a complete list of
mobile carrier IDs, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/carrier-service.html"
class="xref" target="_blank">Carrier Service.</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__156"><code
class="ph codeph">${SUPPLY_TYPE}</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000041b9__entry__157">This macro will be populated with a
numeric value that denotes the supply type of the impression. Allowed
values include:
<ul>
<li>0: web</li>
<li>1: mobile web</li>
<li>2: mobile app</li>
<li>4: toolbar</li>
</ul></td>
</tr>
</tbody>
</table>





## Function Macros 

A function macro a special kind of macro that performs a function on
another macro. Function macros can be used in combination with any other
creative macro, including custom macros, although if they are not
recognized at render time, they will not be translated and the function
will not be called.

Xandr currently supports
the `{$URL_ENC}` function macro, which can be used for a variety of
purposes related to encoding.  A key use case is when a URL needs to
be passed from ad server to ad server via a creative macro, and due to
the presence of unsupported characters in standard URL formatting, must
be encoded at various steps of the process.

The macro takes the following form:

``` pre
 ${URL_ENC(${MACRO_NAME},#)} 
```

where `${MACRO_NAME}` is the macro to be encoded and \# is the
integer `1`, `2`, or `3`, representing the number of times to encode the
contents. Note that more than three encodings are not supported.   



Note: Each encoding corresponds to a
step in the redirect chain, as well as how a given third-party click
tracker works with the macro. Double encoding will usually be needed for
final destination URLs when a second ad server is involved, and triple
encoding for a third ad server.

To determine whether you will need to use single, double, or triple
encoding, you should check with your third-party click tracker and then
test your `URL_ENC` macro to ensure it works. If your macro is not
working, one consequence of this may be link breakage, which will result
in users not reaching the intended destination URL.



**Encoding Examples**

**To encode click URL once:**

``` pre
${URL_ENC(${CLICK_URL},1)} 
```

If  `https://xandr.com` is passed as the click URL,
using `${URL_ENC(${CLICK_URL},1)}` to single encode the URL would result
in `https%3A%2F%2Fxandr.com`  populating the creative.

**To encode media URL once: **

``` pre
 ${URL_ENC(${MEDIA_URL},1)} 
```

**To encode media URL twice:**

``` pre
 ${URL_ENC(${MEDIA_URL},2)} 
```

**To encode a custom macro called ADFORMAT once:**

``` pre
${URL_ENC(${ADFORMAT},1)}
```






