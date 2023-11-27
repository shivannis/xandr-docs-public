---
Title : Audience Data Integrations
Description : ## Integration Steps
ms.custom : data-providers
ms.date : 10/28/2023
When integrating user-based data such as behavioral and demographic
segments, the integration process involves the following steps:
<b>Tip:</b> Make sure to use the Impression
Bus endpoint (<a href="http://api.adnxs.com" class="xref"
---


# Audience Data Integrations





## Integration Steps

When integrating user-based data such as behavioral and demographic
segments, the integration process involves the following steps:



<b>Tip:</b> Make sure to use the Impression
Bus endpoint (<a href="http://api.adnxs.com" class="xref"
target="_blank">https://api.adnxs.com</a>) for
the API services (Segment, Batch Segment and Member Data Sharing)
referenced in this section.



**Step 1.** Establish a mapping between Xandr's
user IDs and your internal user IDs. User ID mapping can be done through
either our getUID or mapUID pixels; in either case data providers are
responsible for dropping the usersync pixel.

**Step 2.** Use your API credentials to <a
href="xandr-api/authentication-service.md"
class="xref" target="_blank">authenticate</a>.

**Step 3.** Create segments through the process outlined on the <a
href="creating-and-managing-segments.md"
class="xref" target="_blank">Creating &amp; Managing Segments</a> page.
The <a
href="xandr-api/segment-service.md"
class="xref" target="_blank">Segment service</a> exclusively permits you
to create segments in your own member, not in your client's (the data
buyer's) seats.

**Step 4.** Add user data to segments via the Batch Segment API service.
Alternatively, adding user data to segments can be done through
<a href="client-side-segment-calls.md" class="xref">Client Side
Segment Calls</a>. Remember that segments and users uploaded must exist
on Xandr's platform for segment enrichment to be
successful. 



<b>Note:</b> For best practices, see <a
href="xandr-api/batch-segment-service-best-practices.md"
class="xref" target="_blank">Batch Segment Service Best Practices</a>.



**Step 5.** Share segments with your client (the data buyer) using the
<a href="member-data-sharing-service.md" class="xref">Member Data
Sharing API service</a>. It is important to note that you may only share
segments that are housed in your data provider member.

If you are using the Batch Segment API service, there is also an
alternative option, mainly used for 1st party segments, that does not
require sharing segments from one member to another:

1.  Have your client (the data buyer) create segments in their own
    member, through the <a
    href="xandr-api/segment-service.md"
    class="xref" target="_blank">API Segment service</a> or
    Xandr's UI, and tell you the IDs (or codes,
    if you are using codes) of those segments.
2.  Have the client submit a
    <a href="https://help.xandr.com" class="xref" target="_blank">support
    ticket</a> allowing you (the data provider) to populate their
    segments using Batch Segment.
3.  Xandr will then permission you (the data
    provider) to populate these segments on behalf of the client.






