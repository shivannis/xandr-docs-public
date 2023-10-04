---
Title : Configure a Placement for In-Stream Video
Description : To set up an in-stream video placement, use the
<a href="create-a-placement.html" class="xref">Create a Placement</a>
---


# Configure a Placement for In-Stream Video



To set up an in-stream video placement, use the
<a href="create-a-placement.html" class="xref">Create a Placement</a>
workflow, select
Allowed
Media \> Media Types \>
Video, and provide the required
information about video context, player width and height, and
skippability, as well as whether the ad will be part of a group of
sequential ads (ad pod). You can also use the placement to define
information about duration, playback method, and mime types.



To make in-stream video available, use the following recommendations for
placement setup. Some of the values defined in the
Xandr placement definition can be overridden in
the query string or on-page code if necessary.





1.  On the
    Details tab of the placement,
    select
    Allowed
    Media \> Media Types \>
    Video.
2.  Click the Video
    Settings tab.
3.  If you want this placement to define an ad pod
    (multiple ads within an ad break), select the
    Enable Ad Podding checkbox.
    

    

    Note: If you select the
    Enable Ad Podding checkbox, the
    detailed configuration options for ad pods display at the bottom of
    the Video Settings page.

    

    
4.  From the
    Position menu, select the
    placement's location within the video content by selecting
    Pre-roll,
    Mid-roll , or
    Post-roll . This setting is also
    known as the video context.
    

    The default value for Position is
    `Unknown`, which allows bidders to target this ad without reference
    to its video context.

    
5.  Enter the maximum duration (in seconds) for the
    video creatives.
    

    

    Note: Only creatives shorter than
    or equal to the specified max duration will be served. If you
    enabled Ad Podding, the
    Max Duration value is the total
    duration for all the ads in the ad pod.

    

    
6.  Specify whether your player will allow
    skippable creatives.
7.  If you are allowing skippable inventory, and
    you want users to wait before a skip button is enabled for skippable
    creatives, enter the number of seconds of delay in the
    Skip Offset  field.
8.  Select a playback method.
    

    The default value is Auto-play, sound
    unknown. For CTV and in-stream placements, the recommended
    setting is Auto-play, sound on.

    
9.  Enter the player's width in pixels.
    

    The default value is `Unknown`.

    
10. Enter the player's height in pixels.
    

    The default value is `Unknown`.

    
11. From the Player Vast
    Version menu, select the video player's VAST version. 
    

    The default value is VAST 2.0. You should use the most recent VAST
    version that your player can handle because players are backwards
    compatible. Therefore, creatives with lower VAST versions can still
    serve on these placements. For example, a VAST 2.0 creative can
    serve on a VAST 4.0 player, but a VAST 4.0 creative can't serve on a
    VAST 2.0 player. The following VAST versions are supported:
    - VAST 2.0
    - VAST 3.0
    - VAST 4.0
    - VAST 4.1
    - VAST 4.2

    
12. Select a compatible framework.
    

    - VPAID 1.0 is a flash-only
      wrapper.
    - VPAID 2.0 has a JavaScript VPAID
      wrapper. It may also include Flash for legacy reasons.
    - CTV and in-app video placements almost never accept VPAID. We
      recommend not selecting any frameworks for these placements,
      because doing so could block demand.

    
13. Select the Show Mime
    Type Options checkbox to expand the Mime Type settings and
    select the appropriate video mime types.
    

    

    Tip: If the placement can support
    VPAID, make sure you select
    application/javascript as a mime
    type. Otherwise, viewability won't be measured.

    

    

    

    If your player can handle mixed media, leave the
    Handles Mixed Media checkbox
    selected. A player that handles mixed media may only accept one kind
    of creative.

    

    <div class="itemgroup stepxmp">

    For example, a media player that handles mixed media may only accept
    mp4, but if a creative contains both mp4 and JavaScript renditions,
    the player can properly select the mp4 rendition.

    
14. **Optional:** If you selected the
    Enable Ad Podding checkbox,
    provide the following information under the
    Ad Podding Options
    section:
    1.  In the Max
        Number of Ads in Pod field, specify how many ads the ad
        break can contain.
    2.  In the Max
        Duration Per Ad in Pod field, specify a duration limit in
        seconds for the component ads in the ad break.
    3.  If you plan to allow bumpers, select the
        Inro Bumper checkbox or
        Outro Bumper checkbox, or
        both.
    4.  In the Start
        Delay field, specify a delay in seconds before the ad
        break begins.






