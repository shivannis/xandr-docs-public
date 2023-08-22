# Audience Data Integrations

<div class="body">

<div class="section">

## Integration Steps

When integrating user-based data such as behavioral and demographic
segments, the integration process involves the following steps:

<div class="note tip">

<span class="tiptitle">Tip:</span> Make sure to use the Impression Bus
endpoint (<a href="http://api.adnxs.com" class="xref"
target="_blank">https://api.<span class="ph">adnxs</span>.com</a>) for
the API services (Segment, Batch Segment and Member Data Sharing)
referenced in this section.

</div>

**Step 1.** Establish a mapping between <span class="ph">Xandr</span>'s
user IDs and your internal user IDs. User ID mapping can be done through
either our getUID or mapUID pixels; in either case data providers are
responsible for dropping the usersync pixel.

**Step 2.** Use your API credentials to <a
href="https://docs.xandr.com/bundle/xandr-api/page/authentication-service.html"
class="xref" target="_blank">authenticate</a>.

**Step 3.** Create segments through the process outlined on the <a
href="https://docs.xandr.com/bundle/data-providers/page/creating-and-managing-segments.html"
class="xref" target="_blank">Creating &amp; Managing Segments</a> page.
The <a
href="https://docs.xandr.com/bundle/xandr-api/page/segment-service.html"
class="xref" target="_blank">Segment service</a> exclusively permits you
to create segments in your own member, not in your client's (the data
buyer's) seats.

**Step 4.** Add user data to segments via the Batch Segment API service.
Alternatively, adding user data to segments can be done through
<a href="client-side-segment-calls.html" class="xref">Client Side
Segment Calls</a>. Remember that segments and users uploaded must exist
on <span class="ph">Xandr</span>'s platform for segment enrichment to be
successful. 

<div class="note">

<span class="notetitle">Note:</span> For best practices, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/batch-segment-service-best-practices.html"
class="xref" target="_blank">Batch Segment Service Best Practices</a>.

</div>

**Step 5.** Share segments with your client (the data buyer) using the
<a href="member-data-sharing-service.html" class="xref">Member Data
Sharing API service</a>. It is important to note that you may only share
segments that are housed in your data provider member.

If you are using the Batch Segment API service, there is also an
alternative option, mainly used for 1st party segments, that does not
require sharing segments from one member to another:

1.  Have your client (the data buyer) create segments in their own
    member, through the <a
    href="https://docs.xandr.com/bundle/xandr-api/page/segment-service.html"
    class="xref" target="_blank">API Segment service</a> or
    <span class="ph">Xandr</span>'s UI, and tell you the IDs (or codes,
    if you are using codes) of those segments.
2.  Have the client submit a
    <a href="https://help.xandr.com" class="xref" target="_blank">support
    ticket</a> allowing you (the data provider) to populate their
    segments using Batch Segment.
3.  <span class="ph">Xandr</span> will then permission you (the data
    provider) to populate these segments on behalf of the client.

</div>

</div>

<div class="related-links">

- **[Client Side Segment Calls](client-side-segment-calls.html)**  
- **[Streaming Server-Side
  Segmentation](streaming-server-side-segmentation.html)**  

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="integrating-your-data.html" class="link">Integrating Your
Data</a>

</div>

</div>

</div>
