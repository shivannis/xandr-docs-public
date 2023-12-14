---
Title : Outstream Video Player Options
Description : This topic describes settings available for configuring outstream video
ms.date: 10/28/2023
that can be configured in page code, or on the placement via
Monetize. Note that setting page code via
---


# Outstream Video Player Options



This topic describes settings available for configuring outstream video
that can be configured in page code, or on the placement via
Monetize. Note that setting page code via
Xandr's seller tag (AST) overrides any settings
created in Monetize.

Page-Level Outstream Options



<b>Note:</b> The following Outstream options
are set at the Publisher level, and are set under `rendererOptions` in
the page code using <a
href="seller-tag/seller-tag/seller-tag.md"
class="xref" target="_blank">AST</a>. Options set this way will override
any settings created in Monetize.



General Options

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000038f1__entry__1" class="entry">Option</th>
<th id="ID-000038f1__entry__2" class="entry">Values</th>
<th id="ID-000038f1__entry__3" class="entry">Default</th>
<th id="ID-000038f1__entry__4" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td colspan="4" class="entry h3"
headers="ID-000038f1__entry__1 ID-000038f1__entry__2 ID-000038f1__entry__3 ID-000038f1__entry__4">Video
Player Setup</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__1">audioOnMouseover
(deprecated)</td>
<td class="entry" headers="ID-000038f1__entry__2"><ul>
<li>true</li>
<li>false</li>
<li>integer</li>
</ul></td>
<td class="entry" headers="ID-000038f1__entry__3">true</td>
<td class="entry" headers="ID-000038f1__entry__4">This setting is no
longer supported or tested because of current browser limitations on
sounds.
<p>Play audio when the user's mouse is over the video, pause/unmute
audio when the mouse is not over the video.</p>
<p>If an integer is specified, the audio will not start until that many
milliseconds of continuous mouse hovering over the video.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__1">autoInitialSize</td>
<td class="entry" headers="ID-000038f1__entry__2">true / false</td>
<td class="entry" headers="ID-000038f1__entry__3">false</td>
<td class="entry" headers="ID-000038f1__entry__4">If true, the player
width will match the page container. If false, the player width set on
the placement will be used.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__1">alignment</td>
<td class="entry" headers="ID-000038f1__entry__2">center / left /
right</td>
<td class="entry" headers="ID-000038f1__entry__3">center</td>
<td class="entry" headers="ID-000038f1__entry__4">Alignment of the
player if its size is smaller than the container.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__1">playOnMouseover</td>
<td class="entry" headers="ID-000038f1__entry__2">true / false</td>
<td class="entry" headers="ID-000038f1__entry__3">false</td>
<td class="entry" headers="ID-000038f1__entry__4">When this setting is
true, while the user's mouse is over the video it will play. If the
mouse leaves the video it will pause and resume playing when the mouse
returns over the video.
<p>When this setting is false, the video plays regardless of the user's
mouse.</p></td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000038f1__entry__1">playVideoVisibleThreshold</td>
<td class="entry" headers="ID-000038f1__entry__2">0-100</td>
<td class="entry" headers="ID-000038f1__entry__3">50</td>
<td class="entry" headers="ID-000038f1__entry__4">The video will not
start playing until the video container's visibility is above this
threshold. If the video container's visibility drops below this
threshold the video follows the behavior specified in <code
class="ph codeph">nonViewableBehavior</code>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000038f1__entry__1">nonViewableBehavior</td>
<td class="entry" headers="ID-000038f1__entry__2"><ul>
<li>"pause"</li>
<li>"mute"</li>
</ul></td>
<td class="entry" headers="ID-000038f1__entry__3">"mute"</td>
<td class="entry" headers="ID-000038f1__entry__4"><ul>
<li>"pause"- Video will pause when below <code
class="ph codeph">playVideoViewableThreshold</code>, and resume playback
when above <code
class="ph codeph">playVideoViewableThreshold</code></li>
<li>"mute" - Video will mute but not pause when below <code
class="ph codeph">playVideoViewableThreshold</code> and unmute when
above<code class="ph codeph">playVideoViewableThreshold</code>
<ul>
<li>When scrolled back above the viewable threshold, the video should
not unmute if it has been muted or set to 0 volume explicitly by the
user, we should simply restore the pervious volume state that existed
when the user scrolled out of viewability.</li>
</ul></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__1">expandTime</td>
<td class="entry" headers="ID-000038f1__entry__2">integer
(milliseconds)</td>
<td class="entry" headers="ID-000038f1__entry__3">1000</td>
<td class="entry" headers="ID-000038f1__entry__4">The amount of time in
milliseconds it takes to expand the ad and to collapse the ad.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__1">playerTechnology</td>
<td class="entry" headers="ID-000038f1__entry__2">array of strings</td>
<td class="entry" headers="ID-000038f1__entry__3">["html5",
"flash"]</td>
<td class="entry" headers="ID-000038f1__entry__4">VPAID media files with
corresponding technology are given priority for display. Otherwise,
other media files with their corresponding technology are
displayed.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__1">aspectRatio</td>
<td class="entry" headers="ID-000038f1__entry__2"><ul>
<li>"auto"</li>
<li>"16:9"</li>
<li>"4:3"</li>
</ul></td>
<td class="entry" headers="ID-000038f1__entry__3">If not defined, and
fixedSizePlayer is false, 16:9</td>
<td class="entry" headers="ID-000038f1__entry__4">The aspect ratio of
the video portion of the player. Does not take into account any control
bars which do not overlay the video. "auto" uses the aspect ratio
defined in the video metadata.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__1">maxHeight</td>
<td class="entry" headers="ID-000038f1__entry__2">true / false / height
in pixels</td>
<td class="entry" headers="ID-000038f1__entry__3">false</td>
<td class="entry" headers="ID-000038f1__entry__4">Optionally, enable and
set a maximum height for the player as shown in the following example.
The player will adjust to maintain the aspect ratio.
<pre class="pre codeblock"><code>&quot;maxHeight&quot;: {
    &quot;enabled&quot;: true,
    &quot;height&quot;: 480
}</code></pre>
<p>This setting was designed to optimize vertical video presentations
and should only be used with a vertical aspect ratio. For more
information, including recommended values, see <a
href="vertical-video-formats.md" class="xref">Vertical Video
Formats</a>.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__1">fixedSizePlayer</td>
<td class="entry" headers="ID-000038f1__entry__2">true / false</td>
<td class="entry" headers="ID-000038f1__entry__3">false</td>
<td class="entry" headers="ID-000038f1__entry__4">If true, final
rendered player height will be the height of the entire player,
including any top or bottom control bars.
<p>If false, final rendered player height will be the height of the
video area, and any extra control bars (top bar, bottom control bar)
will increase the total height of the player.</p></td>
</tr>
</tbody>
</table>

Player's Chrome Settings

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000038f1__entry__50" class="entry">Option</th>
<th id="ID-000038f1__entry__51" class="entry">Values</th>
<th id="ID-000038f1__entry__52" class="entry">Default</th>
<th id="ID-000038f1__entry__53" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__50">adText</td>
<td class="entry" headers="ID-000038f1__entry__51">string</td>
<td class="entry" headers="ID-000038f1__entry__52">Ad</td>
<td class="entry" headers="ID-000038f1__entry__53">Ad indicator text
shown in the top-right hand corner of the outstream ad unit.
<p>If <code class="ph codeph">skipLocation</code> is also top-right, the
<code class="ph codeph">skipText</code>, and subsequently <code
class="ph codeph">skipButtonText</code>, will be shown to the left of
adText in the top-right corner (see skippable object below).</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__50">disableCollapse</td>
<td class="entry" headers="ID-000038f1__entry__51">true/false</td>
<td class="entry" headers="ID-000038f1__entry__52">false</td>
<td class="entry" headers="ID-000038f1__entry__53">If true, the
outstream ad will not collapse at the end of the video. The last frame
that was showing at the end of the video will show. No control bar,
click to play button or countdown text will show. Ad Indicator and Skip
button will remain.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__50">replay</td>
<td class="entry" headers="ID-000038f1__entry__51">true / false</td>
<td class="entry" headers="ID-000038f1__entry__52">false</td>
<td class="entry" headers="ID-000038f1__entry__53">Enables a replay
button on the card that plays the ad a second time when clicked.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000038f1__entry__50">controlBarPosition</td>
<td class="entry" headers="ID-000038f1__entry__51">string</td>
<td class="entry" headers="ID-000038f1__entry__52">over (except on
Android)</td>
<td class="entry" headers="ID-000038f1__entry__53">Determines whether
the position of the bottom control bar floats over the playback area or
is fixed. Specify <code class="ph codeph">over</code> to have the bottom
control bar float over the playback area when the user interacts with
the video Specify <code class="ph codeph">below</code> to have the
bottom control bar remain visible in a fixed position below the playback
area during the duration of the ad. On Android, the control bar is
always displayed in this position.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__50">showMute</td>
<td class="entry" headers="ID-000038f1__entry__51">true / false</td>
<td class="entry" headers="ID-000038f1__entry__52">true</td>
<td class="entry" headers="ID-000038f1__entry__53">Show or hide the mute
button in the control bar.
<p>If <code class="ph codeph">audioOnMouseOver</code> is set to <code
class="ph codeph">false</code>, a user activates sound by disabling the
audio mute button. If <code class="ph codeph">showMute</code> is also
<code class="ph codeph">false</code> and the audio mute button is
hidden, a user activates sound by dragging the volume slider.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__50">showVolume</td>
<td class="entry" headers="ID-000038f1__entry__51">true / false</td>
<td class="entry" headers="ID-000038f1__entry__52">true</td>
<td class="entry" headers="ID-000038f1__entry__53">Show or hide the
volume slider on the control bar.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__50">showProgressBar</td>
<td class="entry" headers="ID-000038f1__entry__51">true / false</td>
<td class="entry" headers="ID-000038f1__entry__52">false</td>
<td class="entry" headers="ID-000038f1__entry__53">Show or hide the
progress bar on the control bar.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__50">allowFullscreen</td>
<td class="entry" headers="ID-000038f1__entry__51">true / false</td>
<td class="entry" headers="ID-000038f1__entry__52">true</td>
<td class="entry" headers="ID-000038f1__entry__53">Show or hide the
fullscreen button.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__50">disableTopBar</td>
<td class="entry" headers="ID-000038f1__entry__51">true / false</td>
<td class="entry" headers="ID-000038f1__entry__52">false</td>
<td class="entry" headers="ID-000038f1__entry__53">If set to <code
class="ph codeph">true</code>, the top player chrome bar (with adText
and skipText/skipButtonText) will not display. If set to <code
class="ph codeph">false</code> the top player chrome bar will display
except in the following case - If empty text fields are specified, a
chrome bar will still be displayed, but will be empty.</td>
</tr>
</tbody>
</table>

Disable Collapse Settings

These settings enable the user to control what actions will occur when
the video playback has completed.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry">enabled</td>
<td class="entry">boolean or integer</td>
<td class="entry">true</td>
<td class="entry"><p>If true, the outstream ad will not collapse at the
end of the video and the last frame that was showing at the end of the
video will be displayed. No control bar, click to play button or
countdown text will display, and the Ad Indicator and Skip button will
remain.</p>
<p>If false, the replay and hideControlBar values won't matter because
the video will collapse on completion.</p>
<p>If an integer is passed, the player sets a delay in milliseconds
equal to the passed integer before collapsing the ad.</p></td>
</tr>
<tr class="even row">
<td class="entry"><pre class="pre"><code>replay</code></pre></td>
<td class="entry">boolean</td>
<td class="entry">false</td>
<td class="entry">If true, a replay button displays once the video is
completed, enabling the user to replay the video.</td>
</tr>
<tr class="odd row">
<td class="entry">hideControlBar</td>
<td class="entry">boolean</td>
<td class="entry">false</td>
<td class="entry">If true, and the replay setting is false, the bottom
control bar is hidden after video completion.</td>
</tr>
</tbody>
</table>

VPAID Handler Settings



These settings determine how the video player handles video documents
that use VPAID.



<b>Note:</b> When a VPAID ad reaches its final
frame, the Outstream player hides the control bar, and does not display
a replay button. This behavior prevents any potential conflicts with
interactive end screen elements supplied by VPAID. The player handles
all VPAID ads this way, regardless of the configuration specified in
Monetize or in page-level Outstream settings.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000038f1__entry__102" class="entry">Option</th>
<th id="ID-000038f1__entry__103" class="entry">Values</th>
<th id="ID-000038f1__entry__104" class="entry">Default</th>
<th id="ID-000038f1__entry__105" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__102">vpaidTimeout</td>
<td class="entry" headers="ID-000038f1__entry__103">integer
(milliseconds)</td>
<td class="entry" headers="ID-000038f1__entry__104">5000</td>
<td class="entry" headers="ID-000038f1__entry__105">If a VPAID ad unit
is showing, time to wait between a VPAID ad unit starting and when it
actually starts before timing-out and collapsing the ad. We might
encounter this if a VPAID ad unit attempts to run a secondary auction
which is especially slow, or hits misconfigured servers. We will also
likely encounter this in the case of a non-fully-compliant VPAID ad
unit</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000038f1__entry__102">terminateUnresponsiveVPAIDCreative</td>
<td class="entry" headers="ID-000038f1__entry__103">boolean</td>
<td class="entry" headers="ID-000038f1__entry__104">false</td>
<td class="entry" headers="ID-000038f1__entry__105">If a VPAID creative
does not respond properly to a pause event, terminate it</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000038f1__entry__102">delayExpandUntilVPAIDInit</td>
<td class="entry" headers="ID-000038f1__entry__103">true / false</td>
<td class="entry" headers="ID-000038f1__entry__104">true</td>
<td class="entry" headers="ID-000038f1__entry__105">If true, wait to
expand video area for AdLoaded event to be returned and the correct
position on the page before Outstream can be expanded in a VPAID case.
If false, the outstream will expand as soon as it has a creative and is
at the correct position on the page.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000038f1__entry__102">delayExpandUntilVPAIDImpression</td>
<td class="entry" headers="ID-000038f1__entry__103">true / false</td>
<td class="entry" headers="ID-000038f1__entry__104">false</td>
<td class="entry" headers="ID-000038f1__entry__105">Delay Outstream
expansion for VPAID ads until <code
class="ph codeph">AdImpression</code> or <code
class="ph codeph">AdVideoStart</code> event has been received. Note that
since we are starting the ad and delaying its visibility until Outstream
expands, this might lead to a higher incidence of discrepancies in
reporting.</td>
</tr>
</tbody>
</table>

Mobile Setting

This setting enables the player on mobile devices.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000038f1__entry__122" class="entry">Option</th>
<th id="ID-000038f1__entry__123" class="entry">Values</th>
<th id="ID-000038f1__entry__124" class="entry">Default</th>
<th id="ID-000038f1__entry__125" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-000038f1__entry__122">enableInlineVideoForIos</td>
<td class="entry" headers="ID-000038f1__entry__123">boolean</td>
<td class="entry" headers="ID-000038f1__entry__124">true</td>
<td class="entry" headers="ID-000038f1__entry__125">Enable inline video
for iOS devices.</td>
</tr>
</tbody>
</table>

Not Shown in UI Settings

The following settings are for specialized configurations that aren't
available through Monetize.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000038f1__entry__130" class="entry">Option</th>
<th id="ID-000038f1__entry__131" class="entry">Values</th>
<th id="ID-000038f1__entry__132" class="entry">Default</th>
<th id="ID-000038f1__entry__133" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-000038f1__entry__130">parentIframeGeometryEvent</td>
<td class="entry" headers="ID-000038f1__entry__131">string</td>
<td class="entry" headers="ID-000038f1__entry__132">n/a</td>
<td class="entry" headers="ID-000038f1__entry__133">For non-friendly
iFrame implementation cases only.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000038f1__entry__130">parentIframeGeometryCb</td>
<td class="entry" headers="ID-000038f1__entry__131">function
callback</td>
<td class="entry" headers="ID-000038f1__entry__132">n/a</td>
<td class="entry" headers="ID-000038f1__entry__133">For non-friendly
iFrame implementation cases only.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000038f1__entry__130">vpaidEnvironmentVars</td>
<td class="entry" headers="ID-000038f1__entry__131">JSON Object</td>
<td class="entry" headers="ID-000038f1__entry__132">n/a</td>
<td class="entry" headers="ID-000038f1__entry__133">Sends JSON object
containing vpaidEnvironmentVars to VPAID creative as "envinronmentVars"
parameter of VPAID initAd() call.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__130">cbNotification</td>
<td class="entry" headers="ID-000038f1__entry__131">function
callback</td>
<td class="entry" headers="ID-000038f1__entry__132">n/a</td>
<td class="entry" headers="ID-000038f1__entry__133">Callback function to
be called on specific ad unit. Function foodprint is:
adCallback(eventType, eventName, adId, eventData) where eventType is one
of VPAID, VAST, AdUnit and eventName will be in one of the following
eventType categories:
<p><strong>VPAID</strong>: AdLoaded, AdStarted, AdStopped, AdSkipped,
AdSkippableStateChange, AdSizeChange, AdLinearChange, AdDurationChange,
AdExpandedChange, AdRemainingTimeChange, AdVolumeChange, AdImpression,
AdVideoStart, AdVideoFirstQuartile, AdVideoMidpoint,
AdVideoThirdQuartile, AdVideoComplete, onAdVClickThru, AdInteraction,
AdUserAcceptInvitation, AdUserMinimize, AdUserClose, AdPaused,
AdPlaying, AdLog, AdError</p>
<p><strong>VAST</strong>: creativeView, start, midpoint, firstQuartile,
thirdQuartile, complete, mute, unmute, pause, rewind, resume,
fullscreen, expand, collapse, close, exitFullscreen, skip, progress,
acceptInvitation, acceptInvitationLinear, closeLinear, impression,
error</p>
<p><strong>AdUnit</strong>: collapseStart, collapseEnd, expandStart,
expandEnd, adComplete, renderedPlayerSize, waterfall (see eventData
below)</p>
<p>adId will be the id for the ad which is defined by AST (target
element ID) and passed to the renderer upon renderAd() call</p>
<p>eventData = additional data passed in with the event</p>
<p>For waterfall event, this will be an Object containing the following
fields: status (stepStart, stepFail, stepSuccess, timeout), step,
totalAvailableSteps, stepLimit, maxTime, timeRemaining, failureReason
(if status = stepFail)</p></td>
</tr>
</tbody>
</table>

Waterfall Handling Settings with Mediation

The following settings apply only when Video Mediation is configured.

With mediation, waterfall handling of video ads increases your
likelihood of serving a viable creative within the timeout period. With
the waterfall process, you can attempt to load a series of ads, stopping
when a suitable ad is found. You can set the timeout period as well as
the maximum number of mediation ad sources that will be checked when
trying to find a suitable ad. Once you have enabled mediation on the
placement via Monetize, you can set waterfall
options to further fine-tune your timeout preferences.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000038f1__entry__150" class="entry">Option</th>
<th id="ID-000038f1__entry__151" class="entry">Values</th>
<th id="ID-000038f1__entry__152" class="entry">Default</th>
<th id="ID-000038f1__entry__153" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-000038f1__entry__150">waterfallTimeout</td>
<td class="entry" headers="ID-000038f1__entry__151">integer</td>
<td class="entry" headers="ID-000038f1__entry__152">15000</td>
<td class="entry" headers="ID-000038f1__entry__153">Maximum amount of
time in milliseconds that waterfall processing of mediated ad sources is
allowed to run before it stops attempting to deliver a viable ad.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__150">waterfallSteps</td>
<td class="entry" headers="ID-000038f1__entry__151"><ul>
<li>-1</li>
<li>0</li>
<li>positive integer</li>
</ul></td>
<td class="entry" headers="ID-000038f1__entry__152">-1</td>
<td class="entry" headers="ID-000038f1__entry__153">Maximum number of
waterfall attempts that are allowed to try and display the ad.
<p>Mediation processing produces a list of ad sources to try to get a
viable ad to render. This list may include mediated bids as well as an
RTB ad (the ad that won the auction). The publisher (or renderer) can
control the number of waterfall mediation ad sources to try in an
attempt to show an ad.</p>
<p>The possible values for this option are interpreted as follows:</p>
<ul>
<li>-1 = all the ad sources in the waterfall list will be processed
until a viable ad is found or the waterfallTimeout has expired</li>
<li>0 = only one ad sources will be used to produce an ad - use the
first ad on the list</li>
<li>positive integer = the maximum number of non-rtb ad sources to try
until a viable ad is found
<ul>
<li>If the number of ad sources is less than the value of this property
then all of the ad sources will be attempted</li>
<li>If none of the non-rtb ad sources yields a viable ad source and the
waterfall timeout has not expired, then the rtb ad should be
attempted.</li>
<li>If you anticipate that the number of attempts to render an ad will
exceed 6, then it is recommended that you do set this value to some
number greater than 6.</li>
</ul></li>
</ul></td>
</tr>
</tbody>
</table>

Player Skinning Settings

The following settings are nested under the `playerSkin` node, and
determine the look and feel of the outstream player.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000038f1__entry__162" class="entry">Option</th>
<th id="ID-000038f1__entry__163" class="entry">Values</th>
<th id="ID-000038f1__entry__164" class="entry">Default</th>
<th id="ID-000038f1__entry__165" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__162">topBarColor</td>
<td class="entry" headers="ID-000038f1__entry__163">string</td>
<td class="entry" headers="ID-000038f1__entry__164">"black"</td>
<td class="entry" headers="ID-000038f1__entry__165">Background color for
the top chrome that contains ad indicator and skipping text
<p>*the value of all player skin colors can be any css-ready string,
including "black", "#FFFFFF", "rgb(255,255,255)" and
"rgba(255,255,255,1)"</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__162">topBarTextColor</td>
<td class="entry" headers="ID-000038f1__entry__163">string</td>
<td class="entry" headers="ID-000038f1__entry__164">"#CCCCCC"</td>
<td class="entry" headers="ID-000038f1__entry__165">Text color for the
top chrome that contains ad indicator and skipping text.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__162">dividerColor</td>
<td class="entry" headers="ID-000038f1__entry__163">string</td>
<td class="entry" headers="ID-000038f1__entry__164">"#555555"</td>
<td class="entry" headers="ID-000038f1__entry__165">Color of the divider
between the top chrome and the video.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__162">dividerHeight</td>
<td class="entry" headers="ID-000038f1__entry__163">positive
integer</td>
<td class="entry" headers="ID-000038f1__entry__164">1</td>
<td class="entry" headers="ID-000038f1__entry__165">Height of the
divider between the top chrome and the video.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__162">controlBarColor</td>
<td class="entry" headers="ID-000038f1__entry__163">string</td>
<td class="entry" headers="ID-000038f1__entry__164">"#CCCCCC"</td>
<td class="entry" headers="ID-000038f1__entry__165">Background color for
the control bar that contains play button, elapsed time, and volume
controls.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000038f1__entry__162">bigPlayButtonColor</td>
<td class="entry" headers="ID-000038f1__entry__163">string</td>
<td class="entry" headers="ID-000038f1__entry__164">"#3B4249"</td>
<td class="entry" headers="ID-000038f1__entry__165">Color of the play
button that overlays the video when paused.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000038f1__entry__162">controlBarControlsColor</td>
<td class="entry" headers="ID-000038f1__entry__163">string</td>
<td class="entry" headers="ID-000038f1__entry__164">"#CCCCCC"</td>
<td class="entry" headers="ID-000038f1__entry__165">Control of the play
button, elapsed time text, and volume controls in the control bar.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000038f1__entry__162">controlBarDividerColor</td>
<td class="entry" headers="ID-000038f1__entry__163">string</td>
<td class="entry" headers="ID-000038f1__entry__164">"#555555"</td>
<td class="entry" headers="ID-000038f1__entry__165">Color of the divider
between the control bar and the video on iOS. Has no effect on desktop
browser or android html5 player.</td>
</tr>
</tbody>
</table>

Sidestream Settings

The following settings are configured using the `sidestream` node, and
determine whether and how videos are played in sidestream mode.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000038f1__entry__198" class="entry">Option</th>
<th id="ID-000038f1__entry__199" class="entry">Values</th>
<th id="ID-000038f1__entry__200" class="entry">Default</th>
<th id="ID-000038f1__entry__201" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__198">enabled</td>
<td class="entry" headers="ID-000038f1__entry__199">true / false</td>
<td class="entry" headers="ID-000038f1__entry__200">false</td>
<td class="entry" headers="ID-000038f1__entry__201">If <code
class="ph codeph">true</code>, sidestream behavior is enabled.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000038f1__entry__198">startInSideStream</td>
<td class="entry" headers="ID-000038f1__entry__199">true / false</td>
<td class="entry" headers="ID-000038f1__entry__200">false</td>
<td class="entry" headers="ID-000038f1__entry__201">When sidestream is
enabled, setting this option to <code class="ph codeph">true</code>
specifies that the creative will begin playing in sidestream mode,
instead of in the outstream player.
<p><code class="ph codeph">startInSidestream=true</code> is not
recommended for mediated placements.</p>

<b>Warning:</b> Setting both <code
class="ph codeph">startInSidestream</code> and <code
class="ph codeph">returnToPage</code> to the same value can result in ad
display problems and is not recommended.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__198">returnToPage</td>
<td class="entry" headers="ID-000038f1__entry__199">true / false</td>
<td class="entry" headers="ID-000038f1__entry__200">true</td>
<td class="entry" headers="ID-000038f1__entry__201">When sidestream is
enabled, setting this option to <code class="ph codeph">true</code>
specifies that when the user scrolls down after sidestream is initiated,
the sidestream player closes and the ad pauses until the user scrolls up
again, then resumes playing in the outstream player. Setting this option
to "false" ensures that the video plays to completion in sidestream
mode, and collapses the original outstream player.

<b>Warning:</b> Setting both <code
class="ph codeph">startInSidestream</code> and <code
class="ph codeph">returnToPage</code> to the same value can result in ad
display problems and is not recommended.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__198">position</td>
<td class="entry" headers="ID-000038f1__entry__199">"top-left"
<p>"top-right"</p>
<p>"bottom-left"</p>
<p>"bottom-right"</p></td>
<td class="entry" headers="ID-000038f1__entry__200">"bottom-right"</td>
<td class="entry" headers="ID-000038f1__entry__201">Specifies corner of
the publisher page which the player will move to when side-stream
functionality is activated.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__198">xOffset</td>
<td class="entry" headers="ID-000038f1__entry__199">integer</td>
<td class="entry" headers="ID-000038f1__entry__200">0</td>
<td class="entry" headers="ID-000038f1__entry__201">Specifies the
distance from the page edge on the x-axis, in pixels which the player
will be shown when side-stream functionality is activated.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__198">yOffset</td>
<td class="entry" headers="ID-000038f1__entry__199">integer</td>
<td class="entry" headers="ID-000038f1__entry__200">0</td>
<td class="entry" headers="ID-000038f1__entry__201">Specifies the
distance from the page edge on the y-axis, in pixels which the player
will be shown when side-stream functionality is activated.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__198">width</td>
<td class="entry" headers="ID-000038f1__entry__199">integer</td>
<td class="entry" headers="ID-000038f1__entry__200">&lt;blank&gt;</td>
<td class="entry" headers="ID-000038f1__entry__201">Specifies the width
of the player in sidestream mode, if not set, the player will the the
same width as it is in the non-sidestream mode.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__198">height</td>
<td class="entry" headers="ID-000038f1__entry__199">integer</td>
<td class="entry" headers="ID-000038f1__entry__200">&lt;blank&gt;</td>
<td class="entry" headers="ID-000038f1__entry__201">Specifies the height
of the player in sidestream mode, if not set, the player will the the
same height as it is in the non-sidestream mode.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__198">maxPageOverlay</td>
<td class="entry" headers="ID-000038f1__entry__199">integer</td>
<td class="entry" headers="ID-000038f1__entry__200"></td>
<td class="entry" headers="ID-000038f1__entry__201">Specifies the
maximum percentage of the browser window that sidestream will cover. If
the size of the player will be larger than this percentage, the player
will not go into sidestream mode, and will behave as described in the
"nonViewablePlayer" option.</td>
</tr>
</tbody>
</table>

End Card Settings

The following settings are configured using the `endCard` node. They
determine whether an end card is displayed when the player remains open
after video play is complete. For an end card to be displayed, first
tell the player not to collapse after play by setting
`disableCollapse.enabled` to `true`. Otherwise, the player will close
when the play is complete and the end card settings will be ignored.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000038f1__entry__238" class="entry">Option</th>
<th id="ID-000038f1__entry__239" class="entry">Values</th>
<th id="ID-000038f1__entry__240" class="entry">Default</th>
<th id="ID-000038f1__entry__241" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__238">enabled</td>
<td class="entry" headers="ID-000038f1__entry__239">true / false</td>
<td class="entry" headers="ID-000038f1__entry__240">false</td>
<td class="entry" headers="ID-000038f1__entry__241">If <code
class="ph codeph">true</code>, an end card is displayed at the end of
video play, while the video player remains open. However, if <code
class="ph codeph">disableCollapse.enabled</code> is set to <code
class="ph codeph">false</code>, the player will close and end card
settings will be ignored.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__238">color</td>
<td class="entry" headers="ID-000038f1__entry__239">string</td>
<td class="entry" headers="ID-000038f1__entry__240">none</td>
<td class="entry" headers="ID-000038f1__entry__241">When an end card is
enabled, draws a colored layer on top of the final frame of the video.
Use a <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/color_value"
class="xref" target="_blank">CSS color value</a>. For example, enter
<code class="ph codeph">#000000</code> for black.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__238">clickable</td>
<td class="entry" headers="ID-000038f1__entry__239">true / false</td>
<td class="entry" headers="ID-000038f1__entry__240">true</td>
<td class="entry" headers="ID-000038f1__entry__241">If set to <code
class="ph codeph">true</code>, the ad area remains clickable while the
end card is shown. Clicking in the ad area opens the clickthrough URL
from the ad that was just displayed, as if the ad had been clicked.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__238">imageURL</td>
<td class="entry" headers="ID-000038f1__entry__239">Complete URL</td>
<td class="entry" headers="ID-000038f1__entry__240"></td>
<td class="entry" headers="ID-000038f1__entry__241">The URL of the image
(including https:) to be shown on the end card if no companion ad is
specified or available. If you specify an image, an image layer is drawn
on top of the color layer (if <code class="ph codeph">color</code> is
specified) or on top of the video frame.
<p>The image is centered in the ad area and drawn at the native
resolution of the source image unless you specify the size of the image
using the <code class="ph codeph">imageWidth</code> and <code
class="ph codeph">imageHeight</code> options.</p>


<b>Note:</b> Typically, an end card image is
used as the fallback, with a companion ad defined using companionID. The
image is never displayed if a valid companion ad is available.

</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__238">imageWidth</td>
<td class="entry" headers="ID-000038f1__entry__239">string</td>
<td class="entry" headers="ID-000038f1__entry__240">none</td>
<td class="entry" headers="ID-000038f1__entry__241">If <code
class="ph codeph">imageUrl</code> has been defined, the width of the
rendered image. You can use an exact pixel width (e.g. "320px"), or
specify a percentage-based width (e.g. "100%") so that the image scales
when the ad area is resized. If imageWidth is not specified, the image
is drawn at its native width.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__238">imageHeight</td>
<td class="entry" headers="ID-000038f1__entry__239">string</td>
<td class="entry" headers="ID-000038f1__entry__240">none</td>
<td class="entry" headers="ID-000038f1__entry__241">If imageUrl has been
defined, the height of the rendered image. You can use an exact pixel
width (e.g. "200px"), or specify a percentage-based width (e.g. "100%")
so that the image scales when the ad area is resized.
<p>If imageWidth is not specified, the image is drawn at its native
width.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__238">showCompanion</td>
<td class="entry" headers="ID-000038f1__entry__239">true/false</td>
<td class="entry" headers="ID-000038f1__entry__240">true</td>
<td class="entry" headers="ID-000038f1__entry__241">Specifies whether or
not to show a companion ad (if available) on the end card. For ads that
don't use companions, the image defined by imageUrl will be displayed on
the end card.
<p>For ads that contain multiple companions, the end card shows the
companion ad that most closely matches the aspect ratio and size of the
ad unit area.</p></td>
</tr>
</tbody>
</table>

Code Sample



The following example shows a typical outstream video player setup.

``` pre
rendererOptions: {
            "cbNotification": handlePublisherCb,
            "autoInitialSize": false,
            "alignment": "center",
            "playOnMouseover": false,
            "playVideoVisibleThreshold": 50,
            "expandTime": 1000,
            "adText": "Ad",
            "showMute": true,
            "showVolume": true,
            "showPlayToggle": true,
            "showBigPlayButton": true,
            "showProgressBar": false,
            "allowFullscreen": true,
            "vpaidTimeout": 5000,
            "terminateUnresponsiveVPAIDCreative": false,
            "vpaidEnvironmentVars": {},
            "enableInlineVideoForIos": true,
            "preloadInlineAudioForIos": false,
            "disableCollapse": {
                  "enabled": false,
                  "replay": false
              },
            "aspectRatio": "16:9",
            "nonViewableBehavior": "mute",
            "delayExpandUntilVPAIDInit": true,
            "delayExpandUntilVPAIDImpression": false,
            "delayStartUntilNotified": false,
            "controlBarPosition": "over",
            "disableTopBar": false,
            "waterfallTimeout": 15000,
            "waterfallSteps": -1,
            "skippable": {
                "enabled": true,
                "videoThreshold": 15,
                "videoOffset": 5,
                "skipLocation": "top-left",
                "skipText": "Video can be skipped in %%TIME%% seconds",
                "skipButtonText": "SKIP",
                "allowOverride": false
            },
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
            "fixedSizePlayer": false,
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
            "topMostViewableCheck": {
                "enabled": true,
                "checkVerticalOnly": true,
                "rateOfBeacons": 10
                },
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
            "endCard": {
                "enabled": true,
                "clickable": true,
                "color": "",
                "imageUrl": "",
                "imageWidth": "",
                "imageHeight": "",
                "showCompanion": true
               }
             }
```



Placement-Level Outstream Options

The options below can be set on the placement in
Monetize or via the API.



<b>Tip:</b>

A best practice for setting up your inventory is to have a one-to-one
mapping between an ad unit position on your website and a placement in
Xandr. In other words, try to have only one
placement per ad unit position. With one-to-one mapping, you can control
your outstream ad unit's appearance and behavior from the placement
settings and provide any necessary additional configuration from the
page.

If you choose to map multiple ad unit positions to a single Run of Site
placement, you control your outstream ad unit's appearance and behavior
from the on-page settings. This decision allows you to use different
settings for each ad unit position on your website.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000038f1__entry__270" class="entry"><span
class="ph">Monetize Field</th>
<th id="ID-000038f1__entry__271" class="entry">API Field</th>
<th id="ID-000038f1__entry__272" class="entry">Values</th>
<th id="ID-000038f1__entry__273" class="entry">Default</th>
<th id="ID-000038f1__entry__274" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__270">Skippable</td>
<td class="entry"
headers="ID-000038f1__entry__271">supports_skippable</td>
<td class="entry" headers="ID-000038f1__entry__272">true / false</td>
<td class="entry" headers="ID-000038f1__entry__273">false</td>
<td class="entry" headers="ID-000038f1__entry__274">If true,
skippability is enabled.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000038f1__entry__270">Player Width</td>
<td class="entry" headers="ID-000038f1__entry__271">width</td>
<td class="entry" headers="ID-000038f1__entry__272">integer</td>
<td class="entry" headers="ID-000038f1__entry__273">0</td>
<td class="entry" headers="ID-000038f1__entry__274">The default width of
the player. This field is mandatory.
<p>If the width is zero, the autoInitialSize option will not
automatically set the width of the player on the page.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000038f1__entry__270">Playback Method</td>
<td class="entry" headers="ID-000038f1__entry__271">playback_method</td>
<td class="entry" headers="ID-000038f1__entry__272">auto_play_sound_on /
<p>auto_play_sound_off /</p>
<p>click_to_play /</p>
<p>mouseover /</p>
<p>auto_play_sound_unknown</p></td>
<td class="entry" headers="ID-000038f1__entry__273">null</td>
<td class="entry" headers="ID-000038f1__entry__274">How the video is
initiated and its audio options.
<p>If the setting is null, the video will auto play and follow the
playOnMouseover and audioOnMouseover settings.</p></td>
</tr>
</tbody>
</table>




