---
Title : VAST Check
Description : When adding a third-party VAST or VPAID video creative, a series of
checks are performed on the XML. This page describes the different
---


# VAST Check



When adding a third-party VAST or VPAID video creative, a series of
checks are performed on the XML. This page describes the different
outputs you may see and corrective action that can be taken.

<div id="ID-000014af__ID-000014c9" >

##  VAST Check Requirements

- **Duration**:  A duration with format 00:00:00 is required.
  - Creatives longer than 30 seconds may not deliver on Instream
    inventory due to duration limits; targeting Outstream is
    recommended.  
- **Formats**: To deliver on all player types, the following formats are
  recommended:
  - VAST: Flv, Mp4, WebM
  - VPAID: application/JavaScript, application/x-shockwave/flash
- **Secure**: All URLs inside the VAST document must be prefixed
  with `https://` to serve on secure inventory.
- **Click Tracking:** Xandr automatically wraps
  third-party creatives to provide impression, click, and playback
  tracking.
  - To view the Xandr wrapper of your
    creative: <a href="http://ib.adnxs.com/cr?id=ID&amp;format=vast" class="xref"
    target="_blank">ib.adnxs.com/cr?id=[INSERT_ID]&amp;format=vast</a>
- **\<Wrapper\> tags**  
    
  <div id="ID-000014af__note-779dc162-3785-4c5a-b664-08cf8bcb336e"
  

  Note: To manually inspect the
  elements of your XML file, paste the VAST URL into a browser.

  





## ** Possible VAST Check Outputs**

- All attributes are present and valid  
- Invalid creative: some attributes need attention 
- Some adjustments are suggested   
- Unable to run VAST check 
- The VAST XML appears to no longer exist

**All attributes are present and valid**

If VAST check was successful, it means that your VAST document has
satisfied all of the requirements above. 

**Invalid creative: some attributes need attention**

If VAST check returns this message, your creative contains errors that
will prevent it from saving. Open your VAST file by pasting the VAST URL
into a browser to check the missing information.

**Video duration is undefined**

**Cause:** The `Duration` information for the video creative is missing
or invalid. A creative must have a duration declared to be eligible to
serve on the Open Exchange. If your creative has a duration but you are
seeing this error, the duration format may be invalid. Durations must
have format "00:00:00".

**Corrective action**: Reach out to your third-party ad server to add
the missing duration information or revise the format. Valid duration
example:

<figure class="fig fignone">
<p><img src="images/valid-duration.png" class="image" width="500"
height="200" /></p>
<p>No recommended video formats detected</p>
</figure>

**Cause**: The MediaFile information for the video creative
contains none of the recommended video formats. At least one video
format must be present for the creative to save. 

**Corrective action**: Reach out to your third-party ad server to update
the creative with at least one of the recommended video formats. Sample
XML with recommended VAST formats:

<figure class="fig fignone">
<p><img src="images/recommended-vast-format.png" class="image"
width="500" height="200" /></p>
</figure>

Sample XML with recommended VPAID formats:

<figure class="fig fignone">
<p><img src="images/sample-xml.png"
id="ID-000014af__image-4e627f9b-01de-4016-82f1-5f269bf6b09d"
class="image" width="500" height="200" /></p>
</figure>

**Some adjustments are suggested**

If your VAST check returns this message, your creative is valid and can
be saved. The VAST check will however provide suggested adjustments that
may improve the reach of your creative and ensure it serves on all
player types.  

**Video duration is greater than 30 seconds   
**

No corrective action is required. Long-form creatives are flagged
because they may not be eligible to serve on Instream inventory with
duration limits. Targeting Outstream inventory is recommended as it will
typically not have the same duration limits as Instream.  

**Some recommended video formats not detected**

**Cause:** The `MediaFile` information for the video does not declare
all of the recommended formats for VAST or VPAID.

Including all recommended video formats will allow your creative to play
in a larger variety of player types and environments. We recommend
avoiding trafficking creatives that use Flash as the **only** media
type. VPAID 2.0 supports HTML5 (media type application/JavaScript) which
allows VPAID creatives to play in non-Flash environments. 



Warning: Effective July 2017, Google Ad
Manager has blocked all flash-only video creatives.



  
**Corrective action:** Reach out to your third-party ad server to update
the creative with the recommended video formats.

For sample XML snippets with the recommended formats, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/vast-check.html#VASTCheck-Norecommendedformatsdetected"
class="xref" target="_blank">No recommended video formats detected</a>
section.   
  

**\<Wrapper\> element(s) detected**



**Cause:** A `<Wrapper>` element indicates that the location of
the `<InLine>` tag from which to retrieve the video creative is not
located directly in the current VAST document. The location of that tag
must then be retrieved from another VAST document. In addition,
a `<Wrapper>` element may refer to a VAST document that contains
a `<Wrapper>` element. Each redirect to another VAST document increases
the time taken to reach the actual creative. 

<div id="ID-000014af__note-03c24f15-d1e2-45a8-874d-a7b09d931211"


Note: If there are more than two
`<Wrapper>` redirects in the VAST response to a bid request, some supply
sources (e.g., Google Ad Manager) will reject your creative.





**Corrective action:** Avoid multiple chained `<Wrapper>` elements in
your VAST documents.

Excerpt of a VAST document with a `<Wrapper>` element pointing to an
\<InLine\> tag:

<figure class="fig fignone">
<p><img src="images/excerpt-of-a-vast.png" class="image"
width="500" /></p>
</figure>

**Unable to Run VAST Check**

If VAST check is unable to run successfully, it means your creative
either has no content, or cannot be scanned. You will see one of the
error messages listed below. Please contact your third-party ad server
for further troubleshooting.

- There was an error with the request: VAST Wrapper URL is not valid. 
- There was an error with the request: Ad node not present in XML
  returned from: \[VAST URL\]. Please reach out to your third-party ad
  server for assistance.



Note: VAST check must be able to fetch
your XML in order to traffic it on our exchange. VAST check extracts
required metadata, such as duration and mime types, from the VAST file.
Some SSPs block non-human traffic (nht). You can use the ${is_preview}
macro to inform ad servers not to block our request. The value of the
macro will be "1" when the call from VAST check is made.



There are many reasons why a VAST check cannot be completed including,
but not limited to timeout errors, parser errors, or server errors. If
you encounter this error, run a manual check to validate the presence of
all attributes to ensure maximum delivery. Complying with a complete
VAST XML file will increase the delivery potential of your video
campaign.

See  <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/vast-check.html#VASTCheck-VAS"
class="xref" target="_blank">VAST Check Requirements</a> to verify and
incorporate required information.

**The VAST XML Appears to no Longer Exist**

The VAST check feature is in the beta stage and may not return data. If
the "**VAST XML appears to no longer exist**" message displays, manually
check your VAST XML document. Open the document and ensure that all the
necessary components are present as listed in the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/vast-check.html#VASTCheck-VASTCheckRequirements"
class="xref" target="_blank">VAST Check Requirements</a> section.






