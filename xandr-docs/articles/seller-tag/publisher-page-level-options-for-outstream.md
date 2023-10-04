---
Title : Publisher Page-Level Options for Outstream
Description : This topic describes settings available for configuring outstream video
in page code. These settings supplement the placement-level outstream
---


# Publisher Page-Level Options for Outstream



This topic describes settings available for configuring outstream video
in page code. These settings supplement the placement-level outstream
parameters described in the main Monetize documentation.



Warning: Setting page code via 
Xandr's seller tag (AST) overrides any settings
created in Monetize.



The following outstream options are set at the publisher level, within
the `rendererOptions` settings of the
<a href="define-tag.html" class="xref">Define Tag</a> object. Options
set through the API will override any settings created in Monetize.



## General Options

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000486__entry__1" class="entry">Option</th>
<th id="ID-00000486__entry__2" class="entry">Type</th>
<th id="ID-00000486__entry__3" class="entry">Default</th>
<th id="ID-00000486__entry__4" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">alignment</code></td>
<td class="entry" headers="ID-00000486__entry__2">string</td>
<td class="entry" headers="ID-00000486__entry__3">center</td>
<td class="entry" headers="ID-00000486__entry__4">Alignment of the
player if its size is smaller than the container. Accepted values are:
<ul>
<li>center</li>
<li>left</li>
<li>right</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">aspectRatio</code></td>
<td class="entry" headers="ID-00000486__entry__2">string</td>
<td class="entry" headers="ID-00000486__entry__3">If not defined, and
fixedSizePlayer is false, 16:9</td>
<td class="entry" headers="ID-00000486__entry__4">The aspect ratio of
the video portion of the player. Does not take into account any control
bars which do not overlay the video. The "auto" setting uses the aspect
ratio defined in the video metadata. Accepted values are:
<ul>
<li>"auto"</li>
<li>"16:9"</li>
<li>"4:3"</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">audioOnMouseover (deprecated)</code></td>
<td class="entry" headers="ID-00000486__entry__2"><ul>
<li>true</li>
<li>false</li>
<li>integer</li>
</ul></td>
<td class="entry" headers="ID-00000486__entry__3">true</td>
<td class="entry" headers="ID-00000486__entry__4">This setting is no
longer supported or tested because of current browser limitations on
sounds.
<p>Play audio when the user's mouse is over the video, pause/unmute
audio when the mouse is not over the video.</p>
<p>If an integer is specified, the audio will not start until that many
milliseconds of continuous mouse hovering over the video.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">autoInitialSize</code></td>
<td class="entry" headers="ID-00000486__entry__2">boolean</td>
<td class="entry" headers="ID-00000486__entry__3">false</td>
<td class="entry" headers="ID-00000486__entry__4">If true, the player
width will match the page container. If false, the player width set on
the placement will be used.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">cbNotification</code></td>
<td class="entry" headers="ID-00000486__entry__2"></td>
<td class="entry" headers="ID-00000486__entry__3"></td>
<td class="entry" headers="ID-00000486__entry__4">Callback function to
be called on specific ad unit. Function footprint is:
<pre class="pre codeblock"><code>adCallback(eventType, eventName, adId, eventData)</code></pre>

where eventType is one of VPAID, VAST, AdUnit and eventName will be in
one of the following eventType categories:
<table id="ID-00000486__table_nkx_kfy_xvb" class="table frame-all">
<caption><span class="table--title-label">Table 1. <span
class="title">Event Type Categories</caption>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00000486__table_nkx_kfy_xvb__entry__1"
class="entry colsep-1 rowsep-1">Event Types</th>
<th id="ID-00000486__table_nkx_kfy_xvb__entry__2"
class="entry colsep-1 rowsep-1">Fields</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000486__table_nkx_kfy_xvb__entry__1"><code
class="ph codeph">VPAID</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000486__table_nkx_kfy_xvb__entry__2"><code
class="ph codeph">AdLoaded</code>, <code
class="ph codeph">AdStarted</code>, <code
class="ph codeph">AdStopped</code>, <code
class="ph codeph">AdSkipped</code>, <code
class="ph codeph">AdSkippableStateChange</code>, <code
class="ph codeph">AdSizeChange</code>, <code
class="ph codeph">AdLinearChange</code>, <code
class="ph codeph">AdDurationChange</code>, <code
class="ph codeph">AdExpandedChange</code>, <code
class="ph codeph">AdRemainingTimeChange</code>, <code
class="ph codeph">AdVolumeChange</code>, <code
class="ph codeph">AdImpression</code>, <code
class="ph codeph">AdVideoStart</code>, <code
class="ph codeph">AdVideoFirstQuartile</code>, <code
class="ph codeph">AdVideoMidpoint</code>, <code
class="ph codeph">AdVideoThirdQuartile</code>, <code
class="ph codeph">AdVideoComplete</code>, <code
class="ph codeph">onAdVClickThru</code>, <code
class="ph codeph">AdInteraction</code>, <code
class="ph codeph">AdUserAcceptInvitation</code>, <code
class="ph codeph">AdUserMinimize</code>, <code
class="ph codeph">AdUserClose</code>, <code
class="ph codeph">AdPaused</code>, <code
class="ph codeph">AdPlaying</code>, <code
class="ph codeph">AdLog</code>, <code
class="ph codeph">AdError</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000486__table_nkx_kfy_xvb__entry__1"><code
class="ph codeph">VAST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000486__table_nkx_kfy_xvb__entry__2"><code
class="ph codeph">creativeView</code>, <code
class="ph codeph">start</code>, <code class="ph codeph">midpoint</code>,
<code class="ph codeph">firstQuartile</code>, <code
class="ph codeph">thirdQuartile</code>, <code
class="ph codeph">complete</code>, <code class="ph codeph">mute</code>,
<code class="ph codeph">unmute</code>, <code
class="ph codeph">pause</code>, <code class="ph codeph">rewind</code>,
<code class="ph codeph">resume</code>, <code
class="ph codeph">fullscreen</code>, <code
class="ph codeph">expand</code>, <code
class="ph codeph">collapse</code>, <code class="ph codeph">close</code>,
<code class="ph codeph">exitFullscreen</code>, <code
class="ph codeph">skip</code>, <code class="ph codeph">progress</code>,
<code class="ph codeph">acceptInvitation</code>, <code
class="ph codeph">acceptInvitationLinear</code>, <code
class="ph codeph">closeLinear</code>, <code
class="ph codeph">impression</code>, <code
class="ph codeph">error</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000486__table_nkx_kfy_xvb__entry__1"><code
class="ph codeph">AdUnit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000486__table_nkx_kfy_xvb__entry__2"><code
class="ph codeph">collapseStart</code>, <code
class="ph codeph">collapseEnd</code>, <code
class="ph codeph">expandStart</code>, <code
class="ph codeph">expandEnd</code>, <code
class="ph codeph">adComplete</code>, <code
class="ph codeph">renderedPlayerSize</code>, <code
class="ph codeph">waterfall</code> (see eventData below)</td>
</tr>
</tbody>
</table>

<p>The <code class="ph codeph">adId</code> value will be the id for the
ad which is defined by AST (target element ID) and passed to the
renderer upon <code class="ph codeph">renderAd()</code> call.</p>
<p>The <code class="ph codeph">eventData</code> value will be additional
data passed in with the event</p>
<p>For a waterfall event, this will be an object containing the
following fields:</p>
<pre class="pre codeblock"><code>status (stepStart, stepFail, stepSuccess, timeout), step, totalAvailableSteps, stepLimit, maxTime, timeRemaining, failureReason (if status = stepFail)</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">disableCollapse</code></td>
<td class="entry" headers="ID-00000486__entry__2">object</td>
<td class="entry" headers="ID-00000486__entry__3">n/a</td>
<td class="entry" headers="ID-00000486__entry__4">Enables the user to
control what actions will occur when the video playback has completed.
See the Disable Collapse Settings table below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">endCard</code></td>
<td class="entry" headers="ID-00000486__entry__2">object</td>
<td class="entry" headers="ID-00000486__entry__3">n/a</td>
<td class="entry" headers="ID-00000486__entry__4">Configurations to
determine whether an end card is displayed when the player remains open
after video play is complete. See the End Card settings table below for
detailed information.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">fixedSizePlayer</code></td>
<td class="entry" headers="ID-00000486__entry__2">boolean</td>
<td class="entry" headers="ID-00000486__entry__3">false</td>
<td class="entry" headers="ID-00000486__entry__4">If true, final
rendered player height will be the height of the entire player,
including any top or bottom control bars.
<p>If false, final rendered player height will be the height of the
video area, and any extra control bars (top bar, bottom control bar)
will increase the total height of the player.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">learnMore</code></td>
<td class="entry" headers="ID-00000486__entry__2">object</td>
<td class="entry" headers="ID-00000486__entry__3">n/a</td>
<td class="entry" headers="ID-00000486__entry__4">If enabled a learnMore
button is enabled  and clicking the video causes an ad-click and
click-thru. See the Learn More Settings table below for more
details.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">maxHeight</code></td>
<td class="entry" headers="ID-00000486__entry__2">true/false/height in
pixels</td>
<td class="entry" headers="ID-00000486__entry__3">false</td>
<td class="entry" headers="ID-00000486__entry__4">Optionally, enable and
set a maximum height for the player as shown in the following example.
The player will adjust to maintain the aspect ratio.
<pre class="pre codeblock"><code>&quot;maxHeight&quot;: {
        &quot;enabled&quot;: true,
        &quot;height&quot;: 480
}</code></pre>
<p>This setting was designed to optimize vertical video presentations
and should only be used with a vertical aspect ratio. For more
information, including recommended values, see  <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/vertical-video-formats.html"
class="xref" target="_blank">Vertical Video Formats</a>.<br />
</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">parentIframeGeometryCb</code></td>
<td class="entry" headers="ID-00000486__entry__2">function callback</td>
<td class="entry" headers="ID-00000486__entry__3">n/a</td>
<td class="entry" headers="ID-00000486__entry__4">For non-friendly
iFrame implementation cases only.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">parentIframeGeometryEvent</code></td>
<td class="entry" headers="ID-00000486__entry__2">string</td>
<td class="entry" headers="ID-00000486__entry__3">n/a</td>
<td class="entry" headers="ID-00000486__entry__4">For non-friendly
iFrame implementation cases only.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">playOnMouseover</code></td>
<td class="entry" headers="ID-00000486__entry__2">boolean</td>
<td class="entry" headers="ID-00000486__entry__3">false</td>
<td class="entry" headers="ID-00000486__entry__4">When this setting is
true, while the user's mouse is over the video it will play. If the
mouse leaves the video it will pause and resume playing when the mouse
returns over the video.
<p>When this setting is false, the video plays regardless of the user's
mouse.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">playerSkin</code></td>
<td class="entry" headers="ID-00000486__entry__2">object</td>
<td class="entry" headers="ID-00000486__entry__3">n/a</td>
<td class="entry" headers="ID-00000486__entry__4">Configurations to
determine the look and feel of the outstream player. See the Player
Skinning Settings table below for detailed information.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">playVideoVisibleThreshold</code></td>
<td class="entry" headers="ID-00000486__entry__2">integer</td>
<td class="entry" headers="ID-00000486__entry__3">50</td>
<td class="entry" headers="ID-00000486__entry__4">The video will not
start playing until the video container's visibility is above this
threshold. If the video container's visibility drops below this
threshold the video follows the behavior specified in 
nonViewableBehavior . Accepted range is 1-100.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">sidestream</code></td>
<td class="entry" headers="ID-00000486__entry__2">object</td>
<td class="entry" headers="ID-00000486__entry__3">n/a</td>
<td class="entry" headers="ID-00000486__entry__4">Configurations to
determine whether and how videos are played in sidestream mode. See the
Sidestream Settings table below for detailed information.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">skippable</code></td>
<td class="entry" headers="ID-00000486__entry__2">object</td>
<td class="entry" headers="ID-00000486__entry__3">n/a</td>
<td class="entry" headers="ID-00000486__entry__4">Configurations to
determine if the video can be skipped and the skipping behavior. See the
Skippable Settings table below for more details.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">vpaidEnvironmentVars</code></td>
<td class="entry" headers="ID-00000486__entry__2">JSON object</td>
<td class="entry" headers="ID-00000486__entry__3">n/a</td>
<td class="entry" headers="ID-00000486__entry__4">Sends JSON object
containing vpaidEnvironmentVars to VPAID creative as "envinronmentVars"
parameter of VPAID initAd() call.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">waterfallSteps</code></td>
<td class="entry" headers="ID-00000486__entry__2">integer</td>
<td class="entry" headers="ID-00000486__entry__3">-1</td>
<td class="entry" headers="ID-00000486__entry__4">Maximum number of
waterfall attempts that are allowed to try and display the ad. See the
Waterfall Handling Settings with Mediation section below for more
details.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__1"><code
class="ph codeph">waterfallTimeout</code></td>
<td class="entry" headers="ID-00000486__entry__2">integer</td>
<td class="entry" headers="ID-00000486__entry__3">15000</td>
<td class="entry" headers="ID-00000486__entry__4">Maximum amount of time
in milliseconds that waterfall processing of mediated ad sources is
allowed to run before it stops attempting to deliver a viable ad. See
the Waterfall Handling Settings with Mediation section below for more
details.</td>
</tr>
</tbody>
</table>





##  Disable Collapse Settings

These settings enable the user to control what actions will occur when
the video playback has completed.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000486__entry__93" class="entry">Option</th>
<th id="ID-00000486__entry__94" class="entry">Type</th>
<th id="ID-00000486__entry__95" class="entry">Default</th>
<th id="ID-00000486__entry__96" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__93"><code
class="ph codeph">enabled</code></td>
<td class="entry" headers="ID-00000486__entry__94">boolean or
integer</td>
<td class="entry" headers="ID-00000486__entry__95">true</td>
<td class="entry" headers="ID-00000486__entry__96">If true, the
outstream ad will not collapse at the end of the video and the last fame
that was showing at the end of the video will be displayed. No control
bar, click to play button or countdown text will display and the Ad
Indicator and Skip button will remain.
<p>If false, the replay and hideControlBar values won't matter because
the video will collapse on completion.</p>
<p>If an integer is passed the player will set a delay in milliseconds
equal to the passed integer before collapsing the ad.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__93"><code
class="ph codeph">replay</code></td>
<td class="entry" headers="ID-00000486__entry__94">boolean</td>
<td class="entry" headers="ID-00000486__entry__95">false</td>
<td class="entry" headers="ID-00000486__entry__96">If true, a replay
button will show once the video is completed, enabling the user to
replay the video.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__93"><code
class="ph codeph">hideControlBar</code></td>
<td class="entry" headers="ID-00000486__entry__94">boolean</td>
<td class="entry" headers="ID-00000486__entry__95">false</td>
<td class="entry" headers="ID-00000486__entry__96">If true, and the
replay setting is false, the bottom control bar will hide after video
completion.</td>
</tr>
</tbody>
</table>





## End Card Settings 

The following settings are configured using the `endCard` node. They
determine whether an end card is displayed when the player remains open
after video play is complete. For an end card to be displayed, first
tell the player not to collapse after play by
setting  `disableCollapse.enabled` to true. Otherwise, the player will
close when the play is complete and the end card settings will be
ignored.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000486__entry__109" class="entry">Option</th>
<th id="ID-00000486__entry__110" class="entry">Type</th>
<th id="ID-00000486__entry__111" class="entry">Default</th>
<th id="ID-00000486__entry__112" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__109"><code
class="ph codeph">clickable</code></td>
<td class="entry" headers="ID-00000486__entry__110">boolean</td>
<td class="entry" headers="ID-00000486__entry__111">true</td>
<td class="entry" headers="ID-00000486__entry__112">If true , the ad
area remains clickable while the end card is shown. Clicking in the ad
area opens the clickthrough URL from the ad that was just displayed, as
if the ad had been clicked.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__109"><code
class="ph codeph">color</code></td>
<td class="entry" headers="ID-00000486__entry__110">string</td>
<td class="entry" headers="ID-00000486__entry__111">n/a</td>
<td class="entry" headers="ID-00000486__entry__112">When an end card is
enabled, draws a colored layer on top of the final frame of the video.
Use a  <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/color_value"
class="xref" target="_blank">CSS color value</a> . For example, enter 
#000000  for black.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__109"><code
class="ph codeph">enabled</code></td>
<td class="entry" headers="ID-00000486__entry__110">boolean</td>
<td class="entry" headers="ID-00000486__entry__111">false</td>
<td class="entry" headers="ID-00000486__entry__112">If  true , an end
card is displayed at the end of video play, while the video player
remains open. However, if  disableCollapse.enabled  is set to  false ,
the player will close and end card settings will be ignored.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__109"><code
class="ph codeph">imageHeight</code></td>
<td class="entry" headers="ID-00000486__entry__110">string</td>
<td class="entry" headers="ID-00000486__entry__111">n/a</td>
<td class="entry" headers="ID-00000486__entry__112">If <code
class="ph codeph">imageUrl</code> has been defined, the height of the
rendered image. You can use an exact pixel width (e.g. "200px"), or
specify a percentage-based width (e.g. "100%") so that the image scales
when the ad area is resized.If <code class="ph codeph">imageWidth</code>
is not specified, the image is drawn at its native width.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__109"><code
class="ph codeph">imageURL</code></td>
<td class="entry" headers="ID-00000486__entry__110">string</td>
<td class="entry" headers="ID-00000486__entry__111">n/a</td>
<td class="entry" headers="ID-00000486__entry__112">The URL of the image
(including https:) to be shown on the end card if no companion ad is
specified or available. If you specify an image, an image layer is drawn
on top of the color layer (if  color  is specified) or on top of the
video frame.The image is centered in the ad area and drawn at the native
resolution of the source image unless you specify the size of the image
using the <code class="ph codeph">imageWidth</code> and <code
class="ph codeph">imageHeigh</code> options.

Note: Typically, an end card image is
used as the fallback, with a companion ad defined using <code
class="ph codeph">companionID</code>. The image is never displayed if a
valid companion ad is available.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__109"><code
class="ph codeph">imageWidth</code></td>
<td class="entry" headers="ID-00000486__entry__110">string</td>
<td class="entry" headers="ID-00000486__entry__111">n/a</td>
<td class="entry" headers="ID-00000486__entry__112">If  <code
class="ph codeph">imageUrl</code>  has been defined, the width of the
rendered image. You can use an exact pixel width (e.g. "320px"), or
specify a percentage-based width (e.g. "100%") so that the image scales
when the ad area is resized. If imageWidth is not specified, the image
is drawn at its native width.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__109"><code
class="ph codeph">showCompanion</code></td>
<td class="entry" headers="ID-00000486__entry__110">boolean</td>
<td class="entry" headers="ID-00000486__entry__111">true</td>
<td class="entry" headers="ID-00000486__entry__112">Specifies whether or
not to show a companion ad (if available) on the end card. For ads that
don't use companions, the image defined by <code
class="ph codeph">imageUrl</code> will be displayed on the end card. For
ads that contain multiple companions, the end card shows the companion
ad that most closely matches the aspect ratio and size of the ad unit
area.</td>
</tr>
</tbody>
</table>





## Learn More Settings



Warning: The `learnMore` setting is
only applicable for HTML5.



The learnMore setting enables the user to control if a
learnMore button will be displayed
when the outstream video is completed and what action will happen if a
user clicks on the video during playback. 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000486__entry__141" class="entry">Option</th>
<th id="ID-00000486__entry__142" class="entry">Type</th>
<th id="ID-00000486__entry__143" class="entry">Default</th>
<th id="ID-00000486__entry__144" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__141"><code
class="ph codeph">enabled</code></td>
<td class="entry" headers="ID-00000486__entry__142">boolean</td>
<td class="entry" headers="ID-00000486__entry__143">false</td>
<td class="entry" headers="ID-00000486__entry__144">If true, <span
class="ph uicontrol">Learn More button is enabled, and clicking
the video area causes an ad-click and click-thru.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__141"><code
class="ph codeph">text</code></td>
<td class="entry" headers="ID-00000486__entry__142">string</td>
<td class="entry" headers="ID-00000486__entry__143">"Learn More"</td>
<td class="entry" headers="ID-00000486__entry__144">The text of the
Learn More button.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__141"><code
class="ph codeph">separator</code></td>
<td class="entry" headers="ID-00000486__entry__142">string</td>
<td class="entry" headers="ID-00000486__entry__143">"-"</td>
<td class="entry" headers="ID-00000486__entry__144">The text of the
separator between the Learn More text
and the Ad Indicator.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__141"><code
class="ph codeph">clickToPause</code></td>
<td class="entry" headers="ID-00000486__entry__142">boolean</td>
<td class="entry" headers="ID-00000486__entry__143">true</td>
<td class="entry" headers="ID-00000486__entry__144">If true, clicking on
the video will pause the video. If false, clicking on the video will do
nothing.</td>
</tr>
</tbody>
</table>





## Player Skinning Settings

Enables the configuring of the video player user interface. 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000486__entry__161" class="entry">Option</th>
<th id="ID-00000486__entry__162" class="entry">Type</th>
<th id="ID-00000486__entry__163" class="entry">Default</th>
<th id="ID-00000486__entry__164" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__161"><code
class="ph codeph">bigPlayButtonColor</code></td>
<td class="entry" headers="ID-00000486__entry__162">string</td>
<td class="entry" headers="ID-00000486__entry__163">"#3B4249"</td>
<td class="entry" headers="ID-00000486__entry__164">Color of the play
button that overlays the video when paused.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__161"><code
class="ph codeph">controlBarColor</code></td>
<td class="entry" headers="ID-00000486__entry__162">string</td>
<td class="entry" headers="ID-00000486__entry__163">"#CCCCCC"</td>
<td class="entry" headers="ID-00000486__entry__164">Background color for
the control bar that contains the play button, elapsed time, and volume
controls.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__161"><code
class="ph codeph">controlBarControlsColor</code></td>
<td class="entry" headers="ID-00000486__entry__162">string</td>
<td class="entry" headers="ID-00000486__entry__163">"#CCCCCC"</td>
<td class="entry" headers="ID-00000486__entry__164">Color of the play
button, elapsed time text, and volume controls in the control bar.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__161"><code
class="ph codeph">controlBarDividerColor</code></td>
<td class="entry" headers="ID-00000486__entry__162">string</td>
<td class="entry" headers="ID-00000486__entry__163">"#555555"</td>
<td class="entry" headers="ID-00000486__entry__164">Color of the divider
between the control bar and the video on iOS. Has no effect on desktop
browser or Android HTML5 player.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__161"><code
class="ph codeph">dividerColor</code></td>
<td class="entry" headers="ID-00000486__entry__162">string</td>
<td class="entry" headers="ID-00000486__entry__163">"#555555"</td>
<td class="entry" headers="ID-00000486__entry__164">Color of the divider
between the top chrome and the video.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__161"><code
class="ph codeph">dividerHeight</code></td>
<td class="entry" headers="ID-00000486__entry__162">positive
integer</td>
<td class="entry" headers="ID-00000486__entry__163">1</td>
<td class="entry" headers="ID-00000486__entry__164">Height of the
divider between the top chrome and the video.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__161"><code
class="ph codeph">topBarColor</code></td>
<td class="entry" headers="ID-00000486__entry__162">string</td>
<td class="entry" headers="ID-00000486__entry__163">"black"</td>
<td class="entry" headers="ID-00000486__entry__164">Background color for
the top chrome that contains the ad indicator and skipping text. The
value of all player skin colors can be any css-ready string, including
<code class="ph codeph">"black"</code>, <code
class="ph codeph">"#FFFFFF"</code>, <code
class="ph codeph">"rgb(255,255,255)"</code> and <code
class="ph codeph">"rgba(255,255,255,1)"</code>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__161"><code
class="ph codeph">topBarTextColor</code></td>
<td class="entry" headers="ID-00000486__entry__162">string</td>
<td class="entry" headers="ID-00000486__entry__163">"#CCCCCC"</td>
<td class="entry" headers="ID-00000486__entry__164">Text color for the
top chrome that contains the ad indicator and skipping text.</td>
</tr>
</tbody>
</table>





## Sidestream Settings

If the outstream video is playing and the user scrolls the screen, if
sidestream mode is enabled, the video player will reset to the corner of
the screen indicated in the `position` option and continue playing the
video. If no `position` is set the video player will reset to the bottom
right of the screen. 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000486__entry__197" class="entry">Option</th>
<th id="ID-00000486__entry__198" class="entry">Type</th>
<th id="ID-00000486__entry__199" class="entry">Default</th>
<th id="ID-00000486__entry__200" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__197"><code
class="ph codeph">enabled</code></td>
<td class="entry" headers="ID-00000486__entry__198">boolean</td>
<td class="entry" headers="ID-00000486__entry__199">false</td>
<td class="entry" headers="ID-00000486__entry__200">If true, sidestream
behavior is enabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__197"><code
class="ph codeph">height</code></td>
<td class="entry" headers="ID-00000486__entry__198">integer</td>
<td class="entry" headers="ID-00000486__entry__199">n/a</td>
<td class="entry" headers="ID-00000486__entry__200">Specifies the height
of the player in sidestream mode. If not set, the player will the the
same height as it is in the non-sidestream mode.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__197"><code
class="ph codeph">maxPageOverlay</code></td>
<td class="entry" headers="ID-00000486__entry__198">integer</td>
<td class="entry" headers="ID-00000486__entry__199">n/a</td>
<td class="entry" headers="ID-00000486__entry__200">Specifies the
maximum percentage of the browser window that sidestream will cover. If
the size of the player will be larger than this percentage, the player
will not go into sidestream mode, and will behave as described in the
"nonViewablePlayer" option.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__197"><code
class="ph codeph">position</code></td>
<td class="entry" headers="ID-00000486__entry__198">string</td>
<td class="entry" headers="ID-00000486__entry__199">"bottom-right"</td>
<td class="entry" headers="ID-00000486__entry__200">Specifies corner of
the publisher page which the player will move to when side-stream
functionality is activated.
<p>Options are:</p>
<ul>
<li>"top-left"</li>
<li>"top-right"</li>
<li>"bottom-left"</li>
<li>"bottom-right"</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__197"><code
class="ph codeph">returnToPage</code></td>
<td class="entry" headers="ID-00000486__entry__198">boolean</td>
<td class="entry" headers="ID-00000486__entry__199">true</td>
<td class="entry" headers="ID-00000486__entry__200">When sidestream is
enabled, setting this option to  true  specifies that when the user
scrolls down after sidestream is initiated, the sidestream player closes
and the ad pauses until the user scrolls up again, then resumes playing
in the outstream player. Setting this option to "false" ensures that the
video plays to completion in sidestream mode, and collapses the original
outstream player.

Warning: Setting both 
startInSidestream  and  returnToPage  to the same value can result in ad
display problems and is not recommended.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__197"><code
class="ph codeph">startInSideStream</code></td>
<td class="entry" headers="ID-00000486__entry__198">boolean</td>
<td class="entry" headers="ID-00000486__entry__199">false</td>
<td class="entry" headers="ID-00000486__entry__200">When sidestream is
enabled, setting this option to  true  specifies that the creative will
begin playing in sidestream mode, instead of in the outstream player.
<p><code class="ph codeph">startInSidestream=true</code> is not
recommended for mediated placements.</p>

Warning: Setting both 
startInSidestream  and  returnToPage  to the same value can result in ad
display problems and is not recommended.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__197"><code
class="ph codeph">width</code></td>
<td class="entry" headers="ID-00000486__entry__198">integer</td>
<td class="entry" headers="ID-00000486__entry__199">n/a</td>
<td class="entry" headers="ID-00000486__entry__200">Specifies the width
of the player in sidestream mode. If not set, the player will the the
same width as it is in the non-sidestream mode.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__197"><code
class="ph codeph">xOffset</code></td>
<td class="entry" headers="ID-00000486__entry__198">integer</td>
<td class="entry" headers="ID-00000486__entry__199">0</td>
<td class="entry" headers="ID-00000486__entry__200">Specifies the
distance from the page edge on the x-axis, in pixels which the player
will be shown when side-stream functionality is activated.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__197"><code
class="ph codeph">yOffset</code></td>
<td class="entry" headers="ID-00000486__entry__198">integer</td>
<td class="entry" headers="ID-00000486__entry__199">0</td>
<td class="entry" headers="ID-00000486__entry__200">Specifies the
distance from the page edge on the y-axis, in pixels which the player
will be shown when side-stream functionality is activated.</td>
</tr>
</tbody>
</table>





##  Skippable Settings

These settings determine if the user can skip the content playing in the
video player and how the skip behavior will function. 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000486__entry__237" class="entry">Option</th>
<th id="ID-00000486__entry__238" class="entry">Type</th>
<th id="ID-00000486__entry__239" class="entry">Default</th>
<th id="ID-00000486__entry__240" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__237"><code
class="ph codeph">enabled</code></td>
<td class="entry" headers="ID-00000486__entry__238">boolean</td>
<td class="entry" headers="ID-00000486__entry__239">true</td>
<td class="entry" headers="ID-00000486__entry__240">Override of <code
class="ph codeph">skippable</code> options, if set to <code
class="ph codeph">false</code>, skip option will not show.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__237"><code
class="ph codeph">videoThreshold</code></td>
<td class="entry" headers="ID-00000486__entry__238">integer</td>
<td class="entry" headers="ID-00000486__entry__239"></td>
<td class="entry" headers="ID-00000486__entry__240">Video must be longer
than this length (in seconds) for the <code
class="ph codeph">skippable</code> option to be enabled.
<p>Note that video length is rounded to the closest second. For example:
video lengths of 14.97 and 15.23 seconds will be treated as 15 second
videos.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__237"><code
class="ph codeph">videoOffset</code></td>
<td class="entry" headers="ID-00000486__entry__238">integer</td>
<td class="entry" headers="ID-00000486__entry__239">5</td>
<td class="entry" headers="ID-00000486__entry__240">Time, in seconds,
after which the video will be skippable, if enabled and the video's
duration is greater than <code
class="ph codeph">videoThreshold</code>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__237"><code
class="ph codeph">skipLocation</code></td>
<td class="entry" headers="ID-00000486__entry__238">string</td>
<td class="entry" headers="ID-00000486__entry__239">"top-left"</td>
<td class="entry" headers="ID-00000486__entry__240">Location of the
<code class="ph codeph">skipText</code> and <code
class="ph codeph">skipButtonText</code>. Options are <code
class="ph codeph">top-left</code> and <code
class="ph codeph">top-right</code>.
<p>If set to top-left, the <code class="ph codeph">skipText</code>, and
subsequently <code class="ph codeph">skipButtonText</code>, will be
displayed on the top left corner of the player while the adText will be
displayed on the top right corner.</p>
<p>If set to top-right, the <code class="ph codeph">skipText</code>, and
subsequently <code class="ph codeph">skipButtonText</code>, will be
displayed on the top right corner of the player while the adText will be
displayed on the top left corner.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__237"><code
class="ph codeph">skipText</code></td>
<td class="entry" headers="ID-00000486__entry__238">string</td>
<td class="entry" headers="ID-00000486__entry__239">"Video can be
skipped in %%TIME%% seconds"</td>
<td class="entry" headers="ID-00000486__entry__240">Text displayed to
notify the user of when skippability will be available. Use %%TIME%% to
insert the remaining time.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__237"><code
class="ph codeph">skipButtonText</code></td>
<td class="entry" headers="ID-00000486__entry__238">string</td>
<td class="entry" headers="ID-00000486__entry__239">"SKIP"</td>
<td class="entry" headers="ID-00000486__entry__240">Text displayed for
the skip button. When the button is clicked the outstream ad unit is
collapsed.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__237"><code
class="ph codeph">allowOverride</code></td>
<td class="entry" headers="ID-00000486__entry__238">boolean</td>
<td class="entry" headers="ID-00000486__entry__239">false</td>
<td class="entry" headers="ID-00000486__entry__240">If set to <code
class="ph codeph">true</code>, any skip offset from a VAST 3.0
skipoffset setting will take precedence over the publisher settings, in
full compliance with the <a
href="https://www.iab.com/wp-content/uploads/2015/06/VASTv3_0.pdf"
class="xref" target="_blank">VAST 3.0 spec</a>. Note that in this case
if set to <code class="ph codeph">true</code>, and no <code
class="ph codeph">skipoffset</code> is defined in the Ad XML, no skip
button will be shown.</td>
</tr>
</tbody>
</table>





## Waterfall Handling Settings with Mediation



Warning: The following settings apply
only when Video Mediation is configured.



  
With mediation, waterfall handling of video ads increases your
likelihood of serving a viable creative within the timeout period. With
the waterfall process, you can attempt to load a series of ads, stopping
when a suitable ad is found. You can set the timeout period as well as
the maximum number of mediation ad sources that will be checked when
trying to find a suitable ad. Once you have enabled mediation on the
placement via Monetize, you can set waterfall
options to further fine-tune your timeout preferences.

**Waterfall Step**

Setting waterfallSteps (defineTag.rendererOptions.waterfallsteps)
enables the mediation process to produce a list of ad sources from which
to get a viable ad to render. This list may include mediated bids as
well as an RTB ad (the ad that won the auction). The publisher (or
renderer) can control the number of waterfall mediation ad sources to
try in an attempt to show an ad.

The possible values for this option are interpreted as follows:

- -1 = all the ad sources in the waterfall list will be processed until
  a viable ad is found or the waterfallTimeout has expired
- 0 = only one ad sources will be used to produce an ad - use the first
  ad on the list
- positive integer = the maximum number of non-rtb ad sources to try
  until a viable ad is found
  - If the number of ad sources is less than the value of this property
    then all of the ad sources will be attempted

  - If none of the non-rtb ad sources yields a viable ad source and the
    waterfall timeout has not expired, then the rtb ad should be
    attempted.

  - If you anticipate that the number of attempts to render an ad will
    exceed 6, then it is recommended that you do set this value to some
    number greater than 6.

    The default value is -1. 





## Player's Chrome Setting 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000486__entry__269" class="entry">Option</th>
<th id="ID-00000486__entry__270" class="entry">Type</th>
<th id="ID-00000486__entry__271" class="entry">Default</th>
<th id="ID-00000486__entry__272" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__269"><code
class="ph codeph">adText</code></td>
<td class="entry" headers="ID-00000486__entry__270">string</td>
<td class="entry" headers="ID-00000486__entry__271">Ad</td>
<td class="entry" headers="ID-00000486__entry__272">Ad indicator text
shown in the top-right hand corner of the outstream ad unit.
<p>If <code class="ph codeph">skipLocation</code> is also top-right,
the skipText, and subsequently <code
class="ph codeph">skipButtonText</code>, will be shown to the left of
adText in the top-right corner (see skippable object below).</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__269"><code
class="ph codeph">allowFullscreen</code></td>
<td class="entry" headers="ID-00000486__entry__270">boolean<br />
</td>
<td class="entry" headers="ID-00000486__entry__271">true</td>
<td class="entry" headers="ID-00000486__entry__272">Show or hide the
fullscreen button.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__269"><code
class="ph codeph">controlBarPosition</code></td>
<td class="entry" headers="ID-00000486__entry__270">string</td>
<td class="entry" headers="ID-00000486__entry__271">over (except on
Android)</td>
<td class="entry" headers="ID-00000486__entry__272">Determines whether
the position of the bottom control bar floats over the playback area or
is fixed. Specify  over  to have the bottom control bar float over the
playback area when the user interacts with the video Specify  below  to
have the bottom control bar remain visible in a fixed position below the
playback area during the duration of the ad. On Android, the control bar
is always displayed in this position.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__269"><code
class="ph codeph">disableCollapse</code></td>
<td class="entry" headers="ID-00000486__entry__270">boolean</td>
<td class="entry" headers="ID-00000486__entry__271">false</td>
<td class="entry" headers="ID-00000486__entry__272">If true, the
outstream ad will not collapse at the end of the video. The last frame
that was showing at the end of the video will show. No control bar,
click to play button or countdown text will show. Ad Indicator and Skip
button will remain.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__269"><code
class="ph codeph">disableTopBar</code></td>
<td class="entry" headers="ID-00000486__entry__270">boolean<br />
</td>
<td class="entry" headers="ID-00000486__entry__271">false</td>
<td class="entry" headers="ID-00000486__entry__272">If set to  true ,
the top player chrome bar (with adText and skipText/skipButtonText) will
not display. If set to  false  the top player chrome bar will display
except in the following case - If empty text fields are specified, a
chrome bar will still be displayed, but will be empty.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__269"><code
class="ph codeph">showMute</code></td>
<td class="entry" headers="ID-00000486__entry__270">boolean<br />
</td>
<td class="entry" headers="ID-00000486__entry__271">true</td>
<td class="entry" headers="ID-00000486__entry__272">Show or hide the
mute button in the control bar.
<p>If <code class="ph codeph">audioOnMouseOver</code> is set to false, a
user activates sound by disabling the audio mute button. If <code
class="ph codeph">showMute</code> is also false and the audio mute
button is hidden, a user activates sound by dragging the volume
slider.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__269"><code
class="ph codeph">showProgressBar</code></td>
<td class="entry" headers="ID-00000486__entry__270">boolean</td>
<td class="entry" headers="ID-00000486__entry__271">false</td>
<td class="entry" headers="ID-00000486__entry__272">Show or hide the
progress bar on the control bar.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__269"><code
class="ph codeph">showVolume</code></td>
<td class="entry" headers="ID-00000486__entry__270">boolean<br />
</td>
<td class="entry" headers="ID-00000486__entry__271">false</td>
<td class="entry" headers="ID-00000486__entry__272">Show or hide the
volume slider on the control bar.</td>
</tr>
</tbody>
</table>





## VPAID Handler Settings

These settings determine how the video player handles video documents
that use VPAID.



Note: When a VPAID ad reaches its final
frame, the Outstream player hides the control bar, and does not display
a replay button. This behavior prevents any potential conflicts with
interactive end screen elements supplied by VPAID. The player handles
all VPAID ads this way, regardless of the configuration specified in  or
in page-level Outstream settings.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000486__entry__305" class="entry">Option</th>
<th id="ID-00000486__entry__306" class="entry">Type</th>
<th id="ID-00000486__entry__307" class="entry">Default</th>
<th id="ID-00000486__entry__308" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__305"><code
class="ph codeph">delayExpandUntilVPAIDInit</code></td>
<td class="entry" headers="ID-00000486__entry__306">boolean</td>
<td class="entry" headers="ID-00000486__entry__307">true</td>
<td class="entry" headers="ID-00000486__entry__308">If true, wait to
expand video area for AdLoaded event to be returned and the correct
position on the page before Outstream can be expanded in a VPAID case.
If false, the outstream will expand as soon as it has a creative and is
at the correct position on the page.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__305"><code
class="ph codeph">delayExpandUntilVPAIDImpression</code></td>
<td class="entry" headers="ID-00000486__entry__306">boolean</td>
<td class="entry" headers="ID-00000486__entry__307">false</td>
<td class="entry" headers="ID-00000486__entry__308">Delay Outstream
expansion for VPAID ads until  AdImpression  or  AdVideoStart  event has
been received. Note that since we are starting the ad and delaying its
visibility until Outstream expands, this might lead to a higher
incidence of discrepancies in reporting.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__305"><code
class="ph codeph">terminateUnresponsiveVPAIDCreative</code></td>
<td class="entry" headers="ID-00000486__entry__306">boolean</td>
<td class="entry" headers="ID-00000486__entry__307">false</td>
<td class="entry" headers="ID-00000486__entry__308"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__305"><code
class="ph codeph">vpaidTimeout</code></td>
<td class="entry" headers="ID-00000486__entry__306">integer
(milliseconds)</td>
<td class="entry" headers="ID-00000486__entry__307">5000</td>
<td class="entry" headers="ID-00000486__entry__308">If a VPAID ad unit
is showing, time to wait between a VPAID ad unit starting and when it
actually starts before timing-out and collapsing the ad. We might
encounter this if a VPAID ad unit attempts to run a secondary auction
which is especially slow, or hits misconfigured servers. We will also
likely encounter this in the case of a non-fully-compliant VPAID ad
unit.</td>
</tr>
</tbody>
</table>





## Mobile Settings

This setting enables the player on mobile devices.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000486__entry__325" class="entry">Option</th>
<th id="ID-00000486__entry__326" class="entry">Type</th>
<th id="ID-00000486__entry__327" class="entry">Default</th>
<th id="ID-00000486__entry__328" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__325"><code
class="ph codeph">enableInlineVideoForIos</code></td>
<td class="entry" headers="ID-00000486__entry__326">boolean</td>
<td class="entry" headers="ID-00000486__entry__327">true</td>
<td class="entry" headers="ID-00000486__entry__328">Enable inline video
for iOS devices.</td>
</tr>
</tbody>
</table>





## AMP Settings

Outstream works in AMP by inserting itself into the existing banner code
for the AMP-AD tag, when the type=appnexus.  We
also recommend follows the guidelines called out in
the <a href="https://amp.dev/documentation/components/amp-iframe/"
class="xref" target="_blank">AMP-IFRAME</a> behavior section of the AMP
developer documentation.

Restricted/Limited Options for AMP

If AST detects it is running under an AMP page, it will override and/or
turn off the following settings: 

The following settings are either not available on AMP pages or have
restricted or limited values available to them: 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000486__entry__333" class="entry">Option</th>
<th id="ID-00000486__entry__334" class="entry">Type</th>
<th id="ID-00000486__entry__335" class="entry">Default</th>
<th id="ID-00000486__entry__336" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__333"><code
class="ph codeph">alignment</code></td>
<td class="entry" headers="ID-00000486__entry__334">string</td>
<td class="entry" headers="ID-00000486__entry__335">"center"</td>
<td class="entry" headers="ID-00000486__entry__336">Not supported on AMP
pages.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__333"><code
class="ph codeph">audioOnMouseover</code></td>
<td class="entry" headers="ID-00000486__entry__334">boolean</td>
<td class="entry" headers="ID-00000486__entry__335">false</td>
<td class="entry" headers="ID-00000486__entry__336">Not applicable for
mobile devices.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__333"><code
class="ph codeph">autoInitialSize</code></td>
<td class="entry" headers="ID-00000486__entry__334">boolean</td>
<td class="entry" headers="ID-00000486__entry__335">false</td>
<td class="entry" headers="ID-00000486__entry__336">Not supported on AMP
pages. The player size can be changed only thru {"sizes" : [300,250]} in
the publisher's options page.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__333"><code
class="ph codeph">controlBarPosition</code></td>
<td class="entry" headers="ID-00000486__entry__334">string</td>
<td class="entry" headers="ID-00000486__entry__335">"over"</td>
<td class="entry" headers="ID-00000486__entry__336">On AMP pages, the
control bar always acts like "below", and is not configurable.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000486__entry__333"><code
class="ph codeph">expandTime</code></td>
<td class="entry" headers="ID-00000486__entry__334">integer</td>
<td class="entry" headers="ID-00000486__entry__335">0</td>
<td class="entry" headers="ID-00000486__entry__336">Not supported on AMP
pages. If AST detects it is running under an AMP page, it will override
the passed in setting and set to the default.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__333"><code
class="ph codeph">playOnMouseover</code></td>
<td class="entry" headers="ID-00000486__entry__334">boolean</td>
<td class="entry" headers="ID-00000486__entry__335">false</td>
<td class="entry" headers="ID-00000486__entry__336">Not applicable for
mobile devices.</td>
</tr>
<tr class="odd row">
<td colspan="4" class="entry"
headers="ID-00000486__entry__333 ID-00000486__entry__334 ID-00000486__entry__335 ID-00000486__entry__336"><strong>Mobile</strong></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__333"><code
class="ph codeph">enableInlineVideoForIos</code></td>
<td class="entry" headers="ID-00000486__entry__334">boolean</td>
<td class="entry" headers="ID-00000486__entry__335">true</td>
<td class="entry" headers="ID-00000486__entry__336">Not supported on AMP
pages.</td>
</tr>
<tr class="odd row">
<td colspan="4" class="entry"
headers="ID-00000486__entry__333 ID-00000486__entry__334 ID-00000486__entry__335 ID-00000486__entry__336"><strong>Side
Stream Node</strong></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__333"><code
class="ph codeph">enabled</code></td>
<td class="entry" headers="ID-00000486__entry__334">boolean</td>
<td class="entry" headers="ID-00000486__entry__335">false</td>
<td class="entry" headers="ID-00000486__entry__336">Not supported on AMP
pages. All other side stream settings are</td>
</tr>
<tr class="odd row">
<td colspan="4" class="entry"
headers="ID-00000486__entry__333 ID-00000486__entry__334 ID-00000486__entry__335 ID-00000486__entry__336"><strong>Disable
Collapse  </strong></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000486__entry__333"><code
class="ph codeph">hideControlBar</code></td>
<td class="entry" headers="ID-00000486__entry__334">boolean</td>
<td class="entry" headers="ID-00000486__entry__335">false</td>
<td class="entry" headers="ID-00000486__entry__336">Not supported on AMP
pages.</td>
</tr>
</tbody>
</table>





##  Code Sample

``` pre
rendererOptions: {
                        "adText": "Ad",
            "alignment": "center",
                        "allowFullscreen": true,
                        "aspectRatio": "16:9",
                        "autoInitialSize": false,
                        "cbNotification": handlePublisherCb,
                        "controlBarPosition": "over",
                        "delayExpandUntilVPAIDInit": true,
            "delayExpandUntilVPAIDImpression": false,
            "delayStartUntilNotified": false,
                        "disableCollapse": {
                  "enabled": false,
                  "replay": false
              },
                        "disableTopBar": false,
                        "enableInlineVideoForIos": true,
                        "endCard": {
                "enabled": true,
                "clickable": true,
                "color": "",
                "imageUrl": "",
                "imageWidth": "",
                "imageHeight": "",
                "showCompanion": true
               },
            "expandTime": 1000,
                        "fixedSizePlayer": false,
                        "intervals": {
                "playAndPause": 250,
                "focusAndBlur": 500
                },
            "learnMore": {
                "enabled": false,
                "separator": "-",
                "text": "Learn More",
                "clickToPause": true
                },
                        "maxHeight": {
                        "enabled": true,
                        "height": 480
                        }
            "nonViewableBehavior": "mute",
            "playOnMouseover": false,
            "playVideoVisibleThreshold": 50,
                        "playerSkin": {
                "topBarColor": "#5A1011",
                "topBarTextColor": "yellow",
                "dividerColor": "lightblue",
                "dividerHeight": 1,
                "controlBarColor": "blue",
                "bigPlayButtonColor": "red",
                "controlBarControlsColor": "yellow",
                    "controlBarDividerColor": "red",
                    "videoBackgroundColor": ""
                },
            "preloadInlineAudioForIos": false,
            "showMute": true,
            "showVolume": true,
            "showPlayToggle": true,
            "showBigPlayButton": true,
            "showProgressBar": false,
                        "sideStream": {
                "enabled": true,
                "startInSideStream": false,
                "returnToPage": true,
                "position": "top-right",
                    "xOffset": 0,
                    "yOffset": 0,
                    "maxPageOverlay": 50,
                    "width": 300,
                    "height": 250,
                },
                        "skippable": {
                "enabled": true,
                "videoThreshold": 15,
                "videoOffset": 5,
                "skipLocation": "top-left",
                "skipText": "Video can be skipped in %%TIME%% seconds",
                "skipButtonText": "SKIP",
                "allowOverride": false
            },
            "terminateUnresponsiveVPAIDCreative": false,
                        "topMostViewableCheck": {
                "enabled": true,
                "checkVerticalOnly": true,
                "rateOfBeacons": 10
                },
            "vpaidTimeout": 5000,
            "vpaidEnvironmentVars": {},
            "waterfallTimeout": 15000,
            "waterfallSteps": -1
        }
```






