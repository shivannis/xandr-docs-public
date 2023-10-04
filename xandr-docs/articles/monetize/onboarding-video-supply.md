---
Title : Onboarding Video Supply
Description : Note:
Xandr now supports a domain,
<a href="http://adnxs-simple.com/" class="xref"
---


# Onboarding Video Supply





Note:

Xandr now supports a domain,
<a href="http://adnxs-simple.com/" class="xref"
target="_blank">adnxs-simple.com</a>, which does not send or read
browser cookies on requests. Clients can leverage this cookie-free
domain when there is no consent to use personal data. Relevant calls
initiated by Xandr will automatically use this
domain when there is no consent or when cookies are not required for the
function. For more information, see <a
href="https://wiki.xandr.com/display/policies/Reinforcing+Privacy+Controls+Through+a+Cookie-Free+Domain"
class="xref" target="_blank">Reinforcing Privacy Controls Through a
Cookie-Free Domain</a> (login required).



This page explains how to modify placement settings to accept video
creatives and how to export and test placement tags.

Placements

In order to allow video creatives on your placements, update the media
types or media subtypes that the placement allows. To accept all VAST
creatives when creating a new placement, under
Placement Details, set the allowed
media type to
Video \>
 Standard VAST.

Then, set the remaining video placement options in the
Video Settings tab.

- Enter the acceptable **Max Duration** (in seconds) of video creatives.
  Creatives under or equal to the specified max duration will be served.
- Specify whether your player allows Not
  Skippable or Skippable
  creatives.
- Select a Playback Method from the
  drop-down menu:
  - Auto-play, sound on
  - Auto-play, sound off
  - Click-to-play
  - Mouse-over
  - Auto-play, sound unknown (default)
- Enter the Player Width (in pixels).
  Unknown is the default option.
- Select a Roll Position:
  - Pre-roll
  - Mid-roll
  - Post-roll
  - Unknown (default)
- Select a Framework. Unknown is the
  default option if none of the framework options are checked.

Tagging

When you
<a href="export-placement-tags.html" class="xref">export placement
tags</a> for a placement that allows VAST video creatives, the placement
tag generated is a URL that automatically includes the /ptv or /vmap
handler (depending on the placement), which ensures that ad calls will
return the XML your publisher's video player uses to serve the desired
creative. For ptv tags, the end result looks something like this:
`https://ib.``adnxs``.com/ptv?id=5523324`. For
vmap tags, the end result should look something like this:
`https://ib.``adnxs``.com/vmap?id=11029144`.
Note that ad pods will only work with vmap tags.

The end result looks something like this:

``` pre
https://ib.adnxs.com/ptv?id=1234. 
```

Once you have the tag, simply provide it to your publisher. Be sure to
instruct the publisher to copy the URL into the video player rather than
place it directly on the page. For details on tagging video, see
<a href="target-video-attributes-via-query-string-parameters.html"
class="xref"
title="If you use a tag solution for in-stream video, effectively targeting demand requires knowledge and careful implementation of the range of possible tag parameters.">Target
Video Attributes via Query String Parameters</a>.

Testing Placement Tags

If your publisher isn't able to provide you with a test page, you can
use an online VAST validator to determine if the placement tag is
functioning properly. There are several available online, including at
<a
href="https://developers.google.com/interactive-media-ads/docs/sdks/html5/vastinspector"
class="xref" target="_blank">VAST Inspector</a>.

Recording Impressions

VAST impressions are always recorded after serving, per the IAB
guidelines (<a
href="https://www.iab.net/media/file/dig_vid_imp_meas_guidelines_final.pdf"
class="xref" target="_blank">PDF</a>). If you test VAST by loading in a
browser, you should not see any impressions recorded. It is only when
the VAST response is parsed by a video player and the impression tag is
called that the impression is recorded.

Related Topics

- <a href="create-a-placement.html" class="xref">Create a Placement</a>
- <a href="assign-a-default-creative-to-a-placement.html"
  class="xref">Assign a Default Creative to a Placement</a>
- <a href="export-placement-tags.html" class="xref">Export Placement
  Tags</a>
- <a href="placement-tag-parameters.html" class="xref">Placement Tag
  Parameters</a>




