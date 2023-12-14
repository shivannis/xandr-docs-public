---
Title : Supported VAST Features
Description : The Xandr platform supports a variety of VAST
ms.date: 10/28/2023
features such as skipoffset and ad verification. Our VAST features are
---


# Supported VAST Features



The Xandr platform supports a variety of VAST
features such as skipoffset and ad verification. Our VAST features are
compatible with certain VAST versions. VAST versions 2.0 through 4.0
support backwards feature compatibility. However, if a publisher doesn't
support a particular VAST version, then implementation of certain
features on that publisher's player won't be possible.



>

The following table provides feature descriptions and indicates the VAST
versions that are supported:

<table
id="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 14%" />
<col style="width: 14%" />
<col style="width: 14%" />
<col style="width: 14%" />
<col style="width: 14%" />
<col style="width: 14%" />
<col style="width: 14%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__1"
class="entry">VAST Feature</th>
<th
id="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__2"
class="entry">Description</th>
<th
id="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__3"
class="entry">VAST 2.0</th>
<th
id="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__4"
class="entry">VAST 3.0</th>
<th
id="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__5"
class="entry">VAST 4.0</th>
<th
id="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__6"
class="entry">VAST 4.1</th>
<th
id="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__7"
class="entry">VAST 4.2</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__1">SkipOffset</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__2">Sets
the number of seconds that a video or audio creative is allowed to play
before it can be skipped. The default value is null.</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__3">Not
Supported

<b>Note:</b> VPAID can be used as a
workaround.
</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__4">Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__5">Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__6">Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__7">Supported</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__1">Viewable
Impression Tracker</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__2"><p>Tracks
viewable impressions.</p></td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__3">Not
Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__4">Not
Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__5">Not
Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__6">Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__7">Supported</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__1">Ad
Verification</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__2">Enables
the video player to provide requested details about ad interaction and
playback using JavaScript and Flash resources. At least one JavaScript
resource or executable resource must be provided.</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__3">Not
Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__4">Not
Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__5">Not
Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__6">Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__7">Supported</td>
</tr>
<tr class="even row">
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__1">Universal
Ad ID</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__2">Unique
creative identifiers registered with AD-ID®, Clearcast, or a similar
program.</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__3">Not
Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__4">Not
Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__5">Not
Supported</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__6">Supported

<b>Note:</b> Only one universal ad ID is
supported.
</td>
<td class="entry"
headers="supported-vast-features__table_e64523b5-2903-4bcf-add5-03bf2c07bfcc__entry__7">Supported

<b>Note:</b> Multiple universal ad IDs are
supported.
</td>
</tr>
</tbody>
</table>





>

## Related Topics

- <a href="video-creatives.md" class="xref"
  title="You can host video creatives with Xandr or traffic them through third-party ad servers. Non-linear creatives, such as a non-video overlay creative that is served on top of the player, are not supported.">Video
  Creatives</a>
- <a href="audio-creatives.md" class="xref"
  title="You can host audio creatives with Xandr or traffic them through third-party ad servers, which may be created for traditional radio, streaming radio (TuneIn), music streaming (Spotify), and podcasts.">Audio
  Creatives</a>
- <a href="add-a-creative.md" class="xref"
  title="You can add a creative by either uploading a spreadsheet or the creative files directly from your computer. Only secure content is supported.">Add
  a Creative</a>






