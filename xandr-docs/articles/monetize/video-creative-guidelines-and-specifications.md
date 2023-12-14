---
Title : Video Creative Guidelines and Specifications
Description : To serve on the Xandr platform and other
ms.date: 10/28/2023
third-party platforms, all video creatives must adhere to the guidelines
and specifications listed here, our creative standards, and any other
guidelines that may apply.
---


# Video Creative Guidelines and Specifications



To serve on the Xandr platform and other
third-party platforms, all video creatives must adhere to the guidelines
and specifications listed here, our creative standards, and any other
guidelines that may apply.

>

>

Adhere to these general specifications when creating video creatives:

- The file size limit is 1 GB for hosted video creatives.
- The recommended minimum bit rate is 2500kbps.
- The recommended minimum video dimensions are 1280px x 720px.
- The video creative must be created using one of the following file
  types: 3G2 (3GPP2), 3GP (3GPP), Advanced Systems Format (ASF), Audio
  Video Interactive (AVI), F4A, F4B, F4P, F4V, FLV, M2V, M4V, MKV, MOV,
  M4P, MPE, MPEG, MPEG-2 (MP2), MPEG-4 (MP4), MPG, MPV, OGG, OGV,
  QuickTime (QT), RM, SWF, TS, VOB, WebM, and Windows Media Video (WMV).
- VAST version 2.0 and higher is supported.





>

## Specifications for Hosted Video Creatives

Adhere to these specifications when creating hosted video creatives:

<table
id="video-creative-specifications__table_77a9fced-e17c-49fe-886f-2797b08e273a"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="video-creative-specifications__table_77a9fced-e17c-49fe-886f-2797b08e273a__entry__1"
class="entry">Size (px)</th>
<th
id="video-creative-specifications__table_77a9fced-e17c-49fe-886f-2797b08e273a__entry__2"
class="entry">Bit Rate (kbps)</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="video-creative-specifications__table_77a9fced-e17c-49fe-886f-2797b08e273a__entry__1">2160</td>
<td class="entry"
headers="video-creative-specifications__table_77a9fced-e17c-49fe-886f-2797b08e273a__entry__2">30000</td>
</tr>
<tr class="even row">
<td class="entry"
headers="video-creative-specifications__table_77a9fced-e17c-49fe-886f-2797b08e273a__entry__1">1280</td>
<td class="entry"
headers="video-creative-specifications__table_77a9fced-e17c-49fe-886f-2797b08e273a__entry__2">8000</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="video-creative-specifications__table_77a9fced-e17c-49fe-886f-2797b08e273a__entry__1">1080</td>
<td class="entry"
headers="video-creative-specifications__table_77a9fced-e17c-49fe-886f-2797b08e273a__entry__2">7000</td>
</tr>
<tr class="even row">
<td class="entry"
headers="video-creative-specifications__table_77a9fced-e17c-49fe-886f-2797b08e273a__entry__1">720</td>
<td class="entry"
headers="video-creative-specifications__table_77a9fced-e17c-49fe-886f-2797b08e273a__entry__2">2500,
2000, 1700, 1100, and 600</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="video-creative-specifications__table_77a9fced-e17c-49fe-886f-2797b08e273a__entry__1">432</td>
<td class="entry"
headers="video-creative-specifications__table_77a9fced-e17c-49fe-886f-2797b08e273a__entry__2">1700,
1500, 1000, and 500</td>
</tr>
</tbody>
</table>



>

## Guidelines and Specifications for Third-Party Video Creatives

>

Adhere to these guidelines and specifications when creating video
creatives that will be trafficked through a third-party ad server:

- External VAST ad servers must submit content to our VAST Check
  functionality before it can be saved.
- There are no size or format restrictions on video creatives served by
  external ad servers.
- If serving VAST video creatives on Google inventory, their duration
  should be a maximum of 15 or 30 seconds. If you want to serve video
  creatives over 15 seconds in duration, we recommend that your creative
  contain the skippable element.
- Make sure that the video creatives included in your VAST document are
  transcoded using the FLV, MP4, and WebM file types.
- Multiple bitrates should be provided for in-stream video creatives
  that have been transcoded using the FLV, MP4, and WebM file types. The
  following bitrates are recommended:
  - 500kbps (optimized for mobile devices on cellular connection and
    required by many mobile SSPs)
  - 1200kbps
  - 2500kbps (optimized for high speed connections)
- Use secure tags in all cases. If you are trafficking VPAID creatives,
  make sure to properly secure every referenced file.







<b>Important:</b>

Since September 2020, Chrome has introduced a new <a
href="https://iabtechlab.com/blog/chrome-will-block-heavy-ads-soon-get-vast-video-ads-ready/"
class="xref" target="_blank">browser intervention</a> that monitors ad
iframes and may redirect them to an error page (Heavy ad intervention)
if resource use exceeds specified criteria. Video advertisements, in
particular, may be vulnerable to this intervention, which impacts
iframes that load more than 4 MB of data.

If a creative satisfies any of the following criteria, it is considered
heavy:

- The main thread is used for more than 60 seconds in total.
- In any 30 second window, the main thread is used for more than 15
  seconds.
- More than 4 MB of network bandwidth is consumed

It is recommended that the creative is compliant with the technical
specifications detailed above.







>

## Related Topics

- <a href="video-creatives.md" class="xref"
  title="You can host video creatives with Xandr or traffic them through third-party ad servers. Non-linear creatives, such as a non-video overlay creative that is served on top of the player, are not supported.">Video
  Creatives</a>
- <a href="add-a-creative.md" class="xref"
  title="You can add a creative by either uploading a spreadsheet or the creative files directly from your computer. Only secure content is supported.">Add
  a Creative</a>
- <a href="add-creatives-in-bulk.md" class="xref"
  title="You can add multiple third-party, hosted, and native creatives to the Creative Manager simultaneously by either uploading a spreadsheet or the creative files directly from your computer. Only secure content is supported.">Add
  Creatives in Bulk</a>
- <a href="supported-vast-features.md" class="xref"
  title="The Xandr platform supports a variety of VAST features such as skipoffset and ad verification. Our VAST features are compatible with certain VAST versions. VAST versions 2.0 through 4.0 support backwards feature compatibility. However, if a publisher doesn&#39;t support a particular VAST version, then implementation of certain features on that publisher&#39;s player won&#39;t be possible.">Supported
  VAST Features</a>






