---
Title : Ad Podding for Publishers
Description : An ad pod specifies a sequenced group of video ads that are played
back-to-back within a single video placement. In traditional television,
---


# Ad Podding for Publishers



An ad pod specifies a sequenced group of video ads that are played
back-to-back within a single video placement. In traditional television,
an ad pod would correlate to a commercial break during an episode. Ad
Pods can be scheduled in pre-roll, mid-roll, and post-roll placements,
as shown in the following diagram.

<img src="../images/ad-podding-for-publishers/ad-pod-diagram.png"
class="image" />

Ad pods are delivered using VMAP 1.0.1. VMAP is a wrapper for VAST ads.
The following diagram shows the structure of a VMAP document.

<img src="../images/ad-podding-for-publishers/ad-pod-vmap-diagram.png"
class="image" />

Video Bumpers

Video bumpers are small video ads (usually 3-10 seconds in length) at
the very beginning, or at the end of an ad pod. As a Publisher, you will
also be able to add bumpers to your video placements. The following
diagram shows how bumpers work within an ad pod.



  
<img src="../images/ad-podding-for-publishers/bumper-example.png"
class="image" />  



By default, video placements do not have bumpers associated with them.
Bumpers must be explicitly added to video placements. As a Publisher,
you can set a default creative for bumpers. At this time, only managed
campaigns can bid on bumpers.

API

The `/vmap` endpoint is available for VMAP responses. (Use `/ssvmap` for
server-side requests.) `/vmap` is similar to `/ptv`, but the response is
VMAP instead of VAST. When using <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/prebid-server-premium.html"
class="xref" target="_blank">Prebid Server Premium</a>, you can use
/vmap or /ssvmap or, see the documentation for the <a
href="https://docs.xandr.com/bundle/xandr-api/page/long-form-video-service.html"
class="xref" target="_blank">Long-Form Video Service</a>.

To enable video placements for ad podding:

- On the placement, make sure that `maximum_number_ads` is greater than
  `1` and the `max_duration_secs` is greater than `0`.
  

  Note: The `max_duration_secs`,
  `max_num_ads`, and `max_ad_duration` fields do not apply to bumpers.

  
- If the video context is mid-roll, set the `start_delay_secs` attribute
  on the placement to greater than `0`.
- Use either the `/vmap` or `/ssvmap` endpoint.



Warning: If you are making a secure
call to the /vmap endpoint, any ad break placement that does not also
support a secure url will be eliminated from the /vmap response.






