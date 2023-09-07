# Native Ad Video Player

<div class="body">

**The Native Ad Video Player** is an implementation of the
<span class="ph">Xandr</span> Vast Player designed to be used within the
<span class="ph">Xandr</span> Native Renderer for use with Native Ads.

<div class="section">

## Features

The <span class="ph">Xandr</span> Vast Player is designed to provide the
following features:

- Plays an ad video as delivered in VAST XML.
- You can pass the player the VAST XML in one of the following forms:
  - URL to a valid VAST XML
  - direct VAST XML content
- Optionally, displays an pre-show banner image before the ad video
  plays
- Optionally,  displays a post-show banner image after the ad video
  plays
- Optionally, supports a click thru if the user clicks on the post-show
  banner image
- Optionally, reports a click tracking event if the user clicks on the
  post-show image

</div>

<div class="section">

## API Entry Point

To get the player to play the native video, you must utilize the
`playNativeAdVideo` function. This function passes `targetDiv`, `vast`,
`options`, `bannerOptions`, and  `notificationCallback` as arguments.

**Arguments**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d359314e143" class="entry nocellnoborder"
style="vertical-align: top">Argument</th>
<th id="d359314e146" class="entry nocellnoborder"
style="vertical-align: top">Description</th>
<th id="d359314e149" class="entry nocellnoborder"
style="vertical-align: top">Acceptable Values</th>
<th id="d359314e152" class="entry nocellnoborder"
style="vertical-align: top">Required</th>
<th id="d359314e155" class="entry cell-noborder"
style="vertical-align: top">Default</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d359314e143 ">targetDiv</td>
<td class="entry nocellnoborder"
headers="d359314e146 ">the HTML DIV element that contains the ad
player</td>
<td class="entry nocellnoborder"
headers="d359314e149 ">DIV element that is present on the page</td>
<td class="entry nocellnoborder"
headers="d359314e152 ">Yes</td>
<td class="entry cell-noborder"
headers="d359314e155 ">None</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d359314e143 ">vast</td>
<td class="entry nocellnoborder"
headers="d359314e146 ">String which provides the source of the VAST xml.
This can be either the url to the VAST xml or the VAST xml itself.
<p>If the VAST xml defines a video ad, then the ad will play.</p></td>
<td class="entry nocellnoborder"
headers="d359314e149 ">String that represents one of the following:
<ul>
<li>a valid URL which will return valid VAST xml.</li>
<li>a VAST xml document.</li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e152 ">Yes</td>
<td class="entry cell-noborder"
headers="d359314e155 ">None</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d359314e143 ">options</td>
<td class="entry nocellnoborder"
headers="d359314e146 ">contains the set of configuration options for the
player</td>
<td class="entry nocellnoborder"
headers="d359314e149 ">Javascript object which includes one or more of
the  supported Player Options listed below.</td>
<td class="entry nocellnoborder"
headers="d359314e152 ">Yes but the object can be empty</td>
<td class="entry cell-noborder"
headers="d359314e155 ">None</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d359314e143 ">bannerOptions</td>
<td class="entry nocellnoborder"
headers="d359314e146 ">contains the set of banner-related options for
the video player.
<p>You can use any type of image that can be used as a background of a
DOM element.</p></td>
<td class="entry nocellnoborder"
headers="d359314e149 ">Javascript object which includes one or more the
following fields.
<ul>
<li>preBanner  (String) - required - specifies the url to an image that
will be displayed before the video plays</li>
<li>postBanner   (String) - optional
<ul>
<li>specifies the url to an image that will be displayed after the video
plays</li>
<li>if it is not specified, then the preBanner image will also be
displayed after the video plays</li>
</ul></li>
<li>clickUrl  (String) - optional
<ul>
<li>specifies the url to the landing page that will be used when the
user clicks on the postBanner image is clicked</li>
</ul></li>
<li>trackingUrl   (String) - optional
<ul>
<li>specifies the tracking url that will be reported when the user
clicks on the postBanner image is clicked</li>
<li>if the clickUrl is not specified, then this option will be
ignored</li>
</ul></li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e152 ">Yes</td>
<td class="entry cell-noborder"
headers="d359314e155 ">None</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d359314e143 ">notificationCallback</td>
<td class="entry -nocellborder"
headers="d359314e146 ">Callback that the player will call with status
information about the playback of the ad</td>
<td class="entry -nocellborder"
headers="d359314e149 ">function which has the prototype defined below in
The Notification Callback.</td>
<td class="entry -nocellborder"
headers="d359314e152 ">No</td>
<td class="entry cellborder"
headers="d359314e155 ">undefined</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## How To Invoke

The <span class="ph">Xandr</span> Native Ad Renderer should do the
following to use the Native Ad Video Player within a native ad:

1.  Load the <span class="ph">Xandr</span> Vast Player.The
    <span class="ph">Xandr</span> Vast Player will automatically assign
    the player a variable named APNVideo_VastVideoPlayer  which will be
    globally available within the Renderer's document window.
2.  Create the div where the player will be located.
3.  Construct the set of parameters that need to be passed into the
    native video player:
    -  A reference to the target div element where the player is
        located, as create in Step \#2.

    -  Either the url to the target VAST xml or a String containing the
        VAST xml document itself.

    -  A Javascript object containing the set of player options which
        control the rendering of the video ad itself.  See  Player
        Options  for the list of rendering options supported.

    -  A Javascript object containing the set of banner options to be
        enforced by the native video player.  These include:

        - preBanner  - image url (optional)

        - postBanner  - image url (optional)

        - clickUrl  - landing page when clicking on the postBanner (optional)

        - trackingUrl - tracking url to report the click on the postBanner (optional)

    -  An optional notificationCallback function which the player will
        use to report status. 
4.  Initiate the Native Ad Video Player by calling the API entry point
    cited above.

**Example**

``` pre
// Code has to be located within same document where the Native Renderer is located
  
// this will load the player and automatically create the APNVideo_VastVideoPlayer variable
var scr = document.createElement('script');
scr.type = 'text/javascript';
scr.src = ‘//acdn.adnxs.com/video/player/vastPlayer/XandrVastPlayer.js’;
document.getElementsByTagName('head')[0].appendChild(scr);
 
 
// once you know that the player has been loaded and you are ready to use it:
var targetDiv = document.getElementById(‘playerContainer’;
var options = {skippable : {enabled: false}};
var vastUrl = ‘http://path-to-my-xml.xml’;
 
var bannerOptions = {};
bannerOptions.preBanner = 'http://my-path-preshow.jpg';
bannerOptions.postBannder = 'http://my-path-postshow.jpg';
bannerOptions.clickUrl = 'http://my-fake-page.com';
bannerOptions.trackingUrl = 'http://my-tracking-url.jpg';
 
APNVideo_VastVideoPlayer.playNativeAdVideo(targetDiv, vastUrl, options, bannerOptions, function(eventCode, data) {console.log ("Native Notified: " + eventCode);});
```

</div>

<div class="section">

## Player Options

Player options are passed into the  <span class="ph">Xandr</span> Video
Player  in a Javascript object.  The following options are supported:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d359314e391" class="entry nocellnoborder"
style="vertical-align: top">Field Name</th>
<th id="d359314e394" class="entry nocellnoborder"
style="vertical-align: top">Description</th>
<th id="d359314e397" class="entry nocellnoborder"
style="vertical-align: top">Acceptable Values</th>
<th id="d359314e400" class="entry nocellnoborder"
style="vertical-align: top">Is Required</th>
<th id="d359314e403" class="entry nocellnoborder"
style="vertical-align: top">Default</th>
<th id="d359314e407" class="entry cell-noborder"
style="vertical-align: top">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d359314e391 ">initialPlayback</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">Specifies whether the ad video requires a click
to start or whether it should autoplay without a user click.
<div class="note">
<span class="notetitle">Note:</span>  Most browsers and mobile devices
do not permit a video to autoplay with the sound on. Most browsers and
devices require a user click if the audio is on. If a browser or device
detects that the video is configured to autoplay with sound on, the
browser or device will enforce the use of a user click to start the
video.
</div></td>
<td class="entry nocellnoborder"
headers="d359314e397 ">String which can be one of the following:
<ul>
<li><ins>auto</ins>  - the video will automatically start to play once it is
loaded; no user click is needed to start the video</li>
<li><ins>click</ins>  - the video requires a click to start its playback; usually a
play button is displayed inviting the user to click it to start the
video.</li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">'click'</td>
<td class="entry cell-noborder"
headers="d359314e407 ">initalPlayback : 'auto'</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d359314e391 ">initialAudio</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">Specifies whether the audio of the ad video is
audible at video start or the audio is muted.
<p>Users usually have the option to enable the audio if the video starts
in a muted state. Users also usually have the option to mute the audio
if the video starts with the audio on.</p>
<div class="note">
<span class="notetitle">Note:</span>  Most browsers and mobile devices
do not permit a video to autoplay with the sound on. Most browsers and
devices require a user click if the audio is on. If a browser or device
detects that the video is configured to autoplay with sound on, the
browser or device will enforce the use of a user click to start the
video.
</div>
<p>For most click-to-play cases, you would use following settings:</p>
<p>initialPlayback : 'click';</p>
<p>initialAudio : 'on'</p>
<p>For most autoplay cases, it is recommended that you use:</p>
<p>initialPlayback : 'auto';</p>
<p>initialAudio : 'off'</p></td>
<td class="entry nocellnoborder"
headers="d359314e397 ">String which can be one of the following:
<ul>
<li>on  - the audio of the video will be audible when the video
starts</li>
<li>off  - the audio of the video will be muted when the video
starts</li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">'on'</td>
<td class="entry cell-noborder"
headers="d359314e407 ">initialAudio: 'off'</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d359314e391 ">skippable</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">Specifies the publisher's preferred handling of
the SKIP button
<div class="note">
<span class="notetitle">Note:</span> Skippable behavior is disabled by
default for the Native Ad Video Player
</div>
<p>Use the skippable options to modify the default behaviors.</p></td>
<td class="entry nocellnoborder"
headers="d359314e397 ">JSON Object which can contain the following
fields:
<ul>
<li>enabled = boolean where true = support skippable behavior and false
= turn off skippable behavior; default value is false</li>
<li>videoThreshold = (number) minimum length of the ad video in seconds
to show the skip button. If the ad video is shorter than this threshold,
then NO skip button will be shown. Default value is 15 seconds.</li>
<li>videoOffset = (number) how long to wait in seconds before showing
the skip button. Default value is 5 seconds.</li>
<li>skipLocation = string specifying the position of the skip button;
can be "top-left" (default) or "top-right"</li>
<li>skipText = (string) text to display announcing the ability to skip
the ad; Use %%TIME%% to insert the remaining time.  Default value: 
<ul>
<li>For video ads: "Video can be skipped in %%TIME%% seconds"</li>
<li>For audio ads: "Audio can be skipped in %%TIME%% seconds"</li>
</ul></li>
<li>skipButtonText = string specify the text of the Skip Button; default
= "SKIP"</li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">{}</td>
<td class="entry cell-noborder"
headers="d359314e407 ">
skippable : {    enabled :  false ,   
videoThreshold : 30,    videoOffset : 15}
</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d359314e391 ">adStartTimeout</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">maximum time in milliseconds that the player will
wait for the ad to start</td>
<td class="entry nocellnoborder"
headers="d359314e397 ">Number</td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">5000</td>
<td class="entry cell-noborder"
headers="d359314e407 ">adStartTimeout: 6000</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d359314e391 ">adServerTimeout</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">maximum time in milliseconds that the player will
wait to retrieve a response when calling an ad server, especially
important during the parsing of the VAST xml
<p>NOTE:  adServerTimeout  should not be greater than the value for 
adStartTimeout.  If you need to greatly increase the limit for 
adServerTimeout  to greater than the default value for  adStartTimeout,
then you should also increase the value of  adStartTimeout.</p></td>
<td class="entry nocellnoborder"
headers="d359314e397 ">Number</td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">2000</td>
<td class="entry cell-noborder"
headers="d359314e407 ">adServerTimeout: 4000</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d359314e391 ">adText</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">string specifying the text used in the ad
indicator in the top bar of the ad player.
<p>This feature can be used to display words commonly seen in a variety
of geo-locations.</p>
<ul>
<li>adText is by default shown in the upper right corner of the top bar
of the ad player.  </li>
<li>However, if the Skip button is located in the top-right
(via skipLocation), then the adText will be displayed in the upper left
corner of the top bar.</li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e397 ">a String of zero or more characters.
<p>If the string is too long to fit in the space provided, the string
will be truncated with the text "...".</p>
<p>If the string is empty, then no ad indicator will be
displayed.</p></td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">"Ad"</td>
<td class="entry cell-noborder"
headers="d359314e407 ">adText : "publicité"</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d359314e391 ">learnMore</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">an optional button that, if enabled, is displayed
next to the adText towards the outside.
<ul>
<li>If adText is in the upper right corner, then the top bar will
display Ad - Learn More in the upper right corner</li>
<li>If adText is in the upper left corner, then the top bar will display
Learn More - Ad in the upper left corner</li>
<li>If enabled, the Learn More button will replace the video click
behavior.  The user will need to click on the Learn More button to
execute a click thru.  Clicking on the video then will NOT produce a
click thru.</li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e397 ">JSON object which supports the following fields:
<ul>
<li>enabled = boolean where 
<ul>
<li>true = display the Learn More button</li>
<li>false = do NOT display the Learn More butto</li>
<li>Default value = false;</li>
</ul></li>
<li>text = (string) text to display in the Learn More position, if it is
enabled
<ul>
<li>Default = "Learn More"</li>
</ul></li>
<li>separator = (string) text to display in between the adText and Learn
More text
<ul>
<li>Default value = "-"</li>
</ul></li>
<li>clickToPause = boolean indicating whether clicking on the button
pauses the video
<ul>
<li>true = clicking on button will pause/resume the video</li>
<li>false = click on the button will have no effect on the playback of
the video</li>
<li>Default value = true</li>
</ul></li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">{}</td>
<td class="entry cell-noborder"
headers="d359314e407 ">Sample Learn More button configuration
<p>learnMore: {  enabled:  true}</p></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d359314e391 ">disableTopBar</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">Specifies whether the top bar is visible during
video playback. The top bar is used to display the Ad Indicator, SKIP
button and any countdown text for skippability.
<p>If it is not visible, then the skippability setting will be
ignored.</p></td>
<td class="entry nocellnoborder"
headers="d359314e397 ">Boolean
<ul>
<li>true = the top bar will NOT be displayed during video playback</li>
<li>false = the top bar WILL be visible during video playback</li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">For Native Player: true
<p>For all other players: false</p></td>
<td class="entry cell-noborder"
headers="d359314e407 ">disableTopBar : true</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d359314e391 ">controlBarPosition</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">Indicates whether the position of the bottom
control bar floats over the playback area or is fixed</td>
<td class="entry nocellnoborder"
headers="d359314e397 ">One of the following Strings:
<ul>
<li>"over" = the bottom control bar will float over the playback area
when the user interacts with the video; this is the default value for
all platforms except Android and iOS</li>
<li>"below" - the bottom control bar will remain visible in a fixed
position below the playback area during the duration of the ad; control
bars on Android and iOS are always fixed below the playback area and
this position cannot be altered. </li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">On desktop: "over"
<p>On Android: "below"</p>
<p>On iOS:</p>
<p>"below"</p></td>
<td class="entry cell-noborder"
headers="d359314e407 ">controlBarPosition : "below"</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d359314e391 ">showMute</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">Indicates whether to show the mute button on the
player controls. .</td>
<td class="entry nocellnoborder"
headers="d359314e397 ">Boolean
<ul>
<li>true = the Mute button will be displayed on the control bar</li>
<li>false = the Mute button will NOT be displayed on the control
bar</li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">true</td>
<td class="entry cell-noborder"
headers="d359314e407 ">showMute: false</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d359314e391 ">showVolume</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">Indicates whether to show the volume control on
the player controls.</td>
<td class="entry nocellnoborder"
headers="d359314e397 ">Boolean
<ul>
<li>true = the Volume control will be displayed on the control bar</li>
<li>false = the Volume control will NOT be displayed on the control
bar</li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">true</td>
<td class="entry cell-noborder"
headers="d359314e407 ">showVolume: false</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d359314e391 ">showProgressBar</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">specifies whether to show information about the
video progress in the control bar</td>
<td class="entry nocellnoborder"
headers="d359314e397 ">You can either use a Boolean value or a String
value:
<ul>
<li>If the value = true, then the video countdown progress text will be
displayed in the control bar.</li>
<li>If the value = false, then no video progress will be displayed in
the control bar.</li>
<li>If the value is a string, it may be one of the following values:
<ul>
<li>text = the video countdown text will be displayed in the control
bar.</li>
<li>bar = a graphical progress bar will be displayed at the top of the
control bar; no text will be displayed</li>
<li>both = both the video countdown text AND the graphical progress bar
will be displayed in the control bar</li>
</ul></li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">true</td>
<td class="entry cell-noborder"
headers="d359314e407 ">showProgressBar : "bar"</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d359314e391 ">allowFullscreen</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">specify whether fullscreen support within the ad
is supported.
<p>If supported, goto and exit fullscreen buttons will appear on the
player controls as indicated by the state of the ad.</p></td>
<td class="entry nocellnoborder"
headers="d359314e397 ">Boolean
<ul>
<li>true = goto and exit fullscreen buttons will be displayed in the
control panel of the ad player</li>
<li>false = goto fullscreen button will NOT be displayed; users will not
be able to play the ad in fullscreen</li>
</ul></td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">true</td>
<td class="entry cell-noborder"
headers="d359314e407 ">allowFullscreen : false</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d359314e391 ">wrapperLimit</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">Specifies the maximum number of XML redirects
that are allowed to be considered when attempting to play an ad.</td>
<td class="entry nocellnoborder"
headers="d359314e397 ">Integer
<p>The number of XML documents being parsed in a wrapper chain to obtain
the media file to play. This includes the number of wrapper XML
documents and the inline XML.</p>
<p>If the number of steps in the XML chain equals or exceeds this limit,
no ad will play.</p></td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">5</td>
<td class="entry cell-noborder"
headers="d359314e407 ">wrapperLimit : 5</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d359314e391 ">companionContainers</td>
<td class="entry nocellnoborder"
headers="d359314e394 ">List of DIV ids for areas on the page that are
available for companion ads.</td>
<td class="entry nocellnoborder"
headers="d359314e397 ">Array
<p>containing list of DIV ids for DIV HTML elements that are present on
the page</p></td>
<td class="entry nocellnoborder"
headers="d359314e400 ">No</td>
<td class="entry nocellnoborder"
headers="d359314e403 ">undefined</td>
<td class="entry cell-noborder"
headers="d359314e407 ">companionContainers : [  "comp_ad_728" , 
"comp_ad_300"]</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d359314e391 ">playerSkin</td>
<td class="entry -nocellborder"
headers="d359314e394 ">Provides support to allow for custom skinning of
the ad player skin</td>
<td class="entry -nocellborder"
headers="d359314e397 ">JSON Object which may contain the following
fields:
<ul>
<li><ins>bigPlayButtonColor</ins> - optional = string specifying CSS color value
for the large click-to-play button; default value = "#3B4249"</li>
<li><ins>topBarColor</ins> - optional = string specifying CSS color value of the
background of the top bar in the player; default value = "black"</li>
<li><ins>topBarTextColor</ins> - optional =string specifying CSS color value of the
text in the top bar; default value = "#CCCCCC"</li>
<li><ins>controlBarHeight</ins> - optional = integer specifying height of the
bottom control bar in pixels; the size of the controls displayed in the
control bar will adjust to accommodate the height of the control bar;
default value = 30 px.</li>
<li><ins>controlBarColor</ins> - optional = string specifying CSS color value for
the background of the bottom control bar; default value = "#07141e"</li>
<li><ins>controlBarControlsColor</ins> - optional =string specifying CSS color
value of the text in the bottom control bar; default value =
"#CCCCCC"</li>
<li><ins>progressBarElapsedColor</ins> - optional = string specifying CSS color
value of the bar that indicates the elapsed time of the video; default
value = a blue with a diagonal pattern; note that when you change the
color, the color will be solid</li>
<li><ins>volumeBarBackground</ins> - optional = string specifying CSS color value
of the filled-in portion of the volume bar; default value = default
value = a blue with a diagonal pattern; note that when you change the
color, the color will be solid</li>
<li><ins>dividerColor</ins> - optional = string specifying CSS color value of the
divider line between the top bar and the playback area; default value =
"#606060"</li>
</ul>
<div class="p">
<div id="ID-00000bc0__note_abt_snx_xvb" class="note">
<span class="notetitle">Note:</span> the CSS color values are expressed
as a string and can be any color specifier that is acceptable to CSS:
hex value, color name, RGB and RGBA values
</div>
</div></td>
<td class="entry -nocellborder"
headers="d359314e400 ">No</td>
<td class="entry -nocellborder"
headers="d359314e403 ">{}</td>
<td class="entry cellborder"
headers="d359314e407 ">"playerSkin"   : {     "bigPlayButtonColor" : 
"#3B4249" ,     "controlBarColor" :  "#000000" ,    
"controlBarControlsColor" :  "#CCCCCC" ,     "dividerColor" : 
"#CCFFFF" ,     "topBarTextColor" :  "#CCCCCC" ,     "topBarColor" : 
"#000000" ,     "controlBarHeight"   : 40,    
"progressBarElapsedColor"   :  "#FF0066" ,     "volumeBarBackground"  
:  "#00CCA3"}</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## The Notification Callback

The Notification Callback has the following prototype: function callback
(event, data) where

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d359314e1052" class="entry nocellnoborder"
style="vertical-align: top">Argument</th>
<th id="d359314e1055" class="entry nocellnoborder"
style="vertical-align: top">Description</th>
<th id="d359314e1058" class="entry nocellnoborder"
style="vertical-align: top">Acceptable Values</th>
<th id="d359314e1061" class="entry nocellnoborder"
style="vertical-align: top">Required</th>
<th id="d359314e1064" class="entry cell-noborder"
style="vertical-align: top">Default</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d359314e1052 ">event</td>
<td class="entry nocellnoborder"
headers="d359314e1055 ">identifies the event about which status is being
provided</td>
<td class="entry nocellnoborder"
headers="d359314e1058 ">event can be one of the following integers:
<ul>
<li>0 – Player failed to render ad</li>
<li>1 – Player has completed the ad playback</li>
<li>2 – Player ready to play the ad</li>
<li>3 – Player has ignored playing the ad based on configuration
data</li>
<li>4 – Player has begun to render ad</li>
<li>5 – Player instance created</li>
<li>6 – Click-to-play status for an ad that was configured as a
click-to-play placement</li>
</ul>
<p>Some of the notifications will not be made for a simple VAST player;
they are used in other products</p></td>
<td class="entry nocellnoborder"
headers="d359314e1061 ">Yes</td>
<td class="entry cell-noborder"
headers="d359314e1064 ">None</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d359314e1052 ">data</td>
<td class="entry -nocellborder"
headers="d359314e1055 ">provides additional information about the event
being reported</td>
<td class="entry -nocellborder"
headers="d359314e1058 ">the value can be a String, a Javascript object,
a player reference or undefined, depending on the event type being
reported as follows:
<ul>
<li>For event 0 – data = error data - this is a Javascript object which
contains
<ul>
<li>error = error code (integer)</li>
<li>(optional) message = string describing the error</li>
</ul></li>
<li>For event 1 – no data is sent</li>
<li>For event 2 – data = reference to player DIV element</li>
<li>For event 3 – no data sent</li>
<li>For event 4 – no data sent</li>
<li>For event 5 – data = reference to player instance</li>
<li>For event  6 – data = 
<ul>
<li>true if clicked or </li>
<li>false if ready to click</li>
</ul></li>
</ul></td>
<td class="entry -nocellborder"
headers="d359314e1061 ">No</td>
<td class="entry cellborder"
headers="d359314e1064 ">undefined</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Further Reading:**

- [Video Capabilities](ast-video-capabilities.md)

</div>

</div>

</div>
