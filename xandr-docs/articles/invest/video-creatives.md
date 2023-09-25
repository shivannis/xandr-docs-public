---
Title : Video Creatives
Description : You can host video creatives with Xandr or
traffic them through third-party ad servers. Non-linear creatives, such
---


# Video Creatives



You can host video creatives with Xandr or
traffic them through third-party ad servers. Non-linear creatives, such
as a non-video overlay creative that is served on top of the player, are
not supported.



Video creatives can provide:

- **Higher conversion rates**: Video creatives are capable of gaining
  the user's attention from start to finish as they are very interactive
  and engaging compared to display creatives. Additionally, video
  creatives can be configured in various ways, which only increases
  their viewability.
- **Flexibility**: Video creatives can be created using various rich
  media formats.




## Types of Video Inventory



We support the following video inventory types on our platform, which
publishers manage directly:

- **In-Stream Video**: It is played in video players on web pages, as
  well as CTVs. It can play before, in the middle of, or after other
  video content. In-stream video creatives can be served by a
  third-party ad server or hosted on a third-party ad server and served
  by Xandr.
- **Out-Stream Video**: It is played in smart video players that expand
  when the container is in view as the consumer scrolls through the
  other content on the web page. Out-stream video is highly flexible and
  supports a variety of features such as skippability and autoplay. Some
  of these features can be set on the creative, and some are determined
  by the player settings. Out-stream can also be configured to play
  video and/or audio based on the criteria that the publisher has set.
  It supports HTML5 and works on desktop and mobile inventory.






## VAST and VPAID Support



Xandr supports Video Ad Serving Template (VAST)
and Video Player-Ad Interface Definition (VPAID). Here are some key
differences to note between VAST and VPAID:

<table id="ID-000043b4__table_b1415fd4-0b53-4810-95af-8a4ab7b4eb2b"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-000043b4__table_b1415fd4-0b53-4810-95af-8a4ab7b4eb2b__entry__1"
class="entry"></th>
<th
id="ID-000043b4__table_b1415fd4-0b53-4810-95af-8a4ab7b4eb2b__entry__2"
class="entry">VAST</th>
<th
id="ID-000043b4__table_b1415fd4-0b53-4810-95af-8a4ab7b4eb2b__entry__3"
class="entry">VPAID</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-000043b4__table_b1415fd4-0b53-4810-95af-8a4ab7b4eb2b__entry__1"><strong>Purpose</strong></td>
<td class="entry"
headers="ID-000043b4__table_b1415fd4-0b53-4810-95af-8a4ab7b4eb2b__entry__2"><div
id="ID-000043b4__p_26278581-42cc-41ca-9513-9a84af240d03" >
An XML-based video ad serving protocol that provides a uniform way for
video content to be transferred from ad servers to video players on web
pages. The interaction between the creative and player is
unidirectional. Therefore, once the player receives the VAST tag, no
other interactions are possible except for the activation of select
tracking beacons at appropriate times during creative playback. Metadata
is transferred from the ad server to the video player, which includes
information about:
<ul>
<li>which creative should play</li>
<li>the duration of the creative</li>
<li>whether the viewer should skip the creative</li>
<li>the actual URL</li>
<li>how the creative should be rendered</li>
</ul>
When a VAST video creative is played, Xandr returns a Wrapper VAST
response with a URL to the external video ad server.


VAST version 2.0 and higher is supported. For more information about
VAST, see <a href="https://www.iab.com/guidelines/vast/" class="xref"
target="_blank">IAB VAST Guidelines</a>.
<div class="note note_note">
<b>Note:</b> Out-stream video demand can only
be delivered with VAST for real-time bids (RTB).

</td>
<td class="entry"
headers="ID-000043b4__table_b1415fd4-0b53-4810-95af-8a4ab7b4eb2b__entry__3"><div
id="ID-000043b4__p_d76764d3-ec47-42c7-a95f-37183e7cfa46" >
Makes it possible for video creatives and video players to communicate
with each other so that advertisers can serve rich, interactive
creatives. VPAID is more suited for interactive environments. Examples
include:
<ul>
<li>Clicking on different tabs in the creative to see information</li>
<li>Expanding the view and zoom in/out</li>
<li>Filling out a form</li>
<li>Taking a survey</li>
<li>Interacting with elements</li>
<li>Playing games within the creative</li>
</ul>


VPAID expands the capability of VAST, giving advertisers the ability to
leverage the tracking features that VAST offers in conjunction with
VPAID's rich media support. For more information about VPAID, see <a
href="https://iabtechlab.com/standards/video-player-ad-interface-definition-vpaid/"
class="xref" target="_blank">IAB VPAID Standards</a>.
<div class="note note_note">
<b>Note:</b> You can add VPAID-enabled
in-stream video creatives on the Xandr platform,
but we cannot guarantee that they will work with all video players.

</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000043b4__table_b1415fd4-0b53-4810-95af-8a4ab7b4eb2b__entry__1"><strong>Prerequisites</strong></td>
<td class="entry"
headers="ID-000043b4__table_b1415fd4-0b53-4810-95af-8a4ab7b4eb2b__entry__2">Video
player that supports VAST</td>
<td class="entry"
headers="ID-000043b4__table_b1415fd4-0b53-4810-95af-8a4ab7b4eb2b__entry__3">Video
player that supports VPAID</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000043b4__table_b1415fd4-0b53-4810-95af-8a4ab7b4eb2b__entry__1"><strong>Ad
Format Support</strong></td>
<td class="entry"
headers="ID-000043b4__table_b1415fd4-0b53-4810-95af-8a4ab7b4eb2b__entry__2">Supports
relatively simple, in-stream video formats that are not executable</td>
<td class="entry"
headers="ID-000043b4__table_b1415fd4-0b53-4810-95af-8a4ab7b4eb2b__entry__3">Supports
interactive, in-stream video formats that are executable such as
requiring software logic to be executed</td>
</tr>
</tbody>
</table>






## Related Topics

- <a href="video-creative-guidelines-and-specifications.md" class="xref"
  title="To serve on the Xandr platform and other third-party platforms, all video creatives must adhere to the guidelines and specifications listed here, our creative standards, and any other guidelines that may apply.">Video
  Creative Guidelines and Specifications</a>
- <a href="add-creatives-in-bulk.md" class="xref"
  title="You can add multiple third-party, hosted, and native creatives to the Creative Manager simultaneously by either uploading a spreadsheet or the creative files directly from your computer. Only secure content is supported.">Add
  Creatives in Bulk</a>
- <a href="add-a-creative.md" class="xref"
  title="You can add a creative by either uploading a spreadsheet or the creative files directly from your computer. Only secure content is supported.">Add
  a Creative</a>
- <a href="supported-vast-features.md" class="xref"
  title="The Xandr platform supports a variety of VAST features such as skipoffset and ad verification. Our VAST features are compatible with certain VAST versions. VAST versions 2.0 through 4.0 support backwards feature compatibility. However, if a publisher doesn&#39;t support a particular VAST version, then implementation of certain features on that publisher&#39;s player won&#39;t be possible.">Supported
  VAST Features</a>






