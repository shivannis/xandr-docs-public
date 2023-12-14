---
Title : Configuring Tracking for Creatives
Description : When adding creatives, you can set a variety of tracking parameters from
ms.date: 10/28/2023
the Pixels (optional) section,
such as frequency and recency caps, third-party tracking pixels, and
segment pixels.
---


# Configuring Tracking for Creatives



When adding creatives, you can set a variety of tracking parameters from
the Pixels (optional) section,
such as frequency and recency caps, third-party tracking pixels, and
segment pixels.

- **<a href="click-tracking.md" class="xref"
  title="Click tracking serves many useful purposes within the ad serving industry as a whole. For Xandr, click tracking is necessary for optimizing to CPC and CPA goals, for bidding CPC and CPA, and for measuring a campaign&#39;s success.">Click
  Tracking</a>**: The system automatically runs a click tracking test
  when the creative is uploaded. If the system fails to automatically
  run a click tracking test for your creative when using the single
  creative workflow to upload one creative, you can manually click the
  Run Test button from the
  Pixels (optional) section.
  

  <b>Note:</b> If the click tracking test is
  unsuccessful, which is indicated by a red **X**, re-upload the file or
  update the landing page URL and click the
  try again link that displays in the
  Pixels (optional) section.

  
- **<a href="frequency-and-recency-caps.md" class="xref"
  title="From the Audience &amp; Location Targeting section, you can apply frequency and recency caps to your line item to prevent overexposure by limiting how many (frequency) and how often (recency) creatives are shown to a user. You can use the Creative Frequency and Recency Report to view how often and how frequently users are viewing a specific advertiser&#39;s creatives.">Frequency
  and Recency Caps</a>**: You can specify the number of times and pace
  in which a creative can be shown to a given user. For more
  information, see
  <a href="frequency-and-recency-caps.md" class="xref"
  title="From the Audience &amp; Location Targeting section, you can apply frequency and recency caps to your line item to prevent overexposure by limiting how many (frequency) and how often (recency) creatives are shown to a user. You can use the Creative Frequency and Recency Report to view how often and how frequently users are viewing a specific advertiser&#39;s creatives.">Frequency
  and Recency Caps</a>.
- **<a href="third-party-tracking-pixels-for-creatives.md" class="xref"
  title="Third-party tracking pixels are used for a variety of purposes such as performing ad verification and collecting data about the creative.">Third-Party
  Tracking Pixels for Creatives</a>**: You can create third-party
  tracking pixels at either the advertiser or
  Network level and then associate them with
  your creatives.
  >

  You can also associate custom third-party tracking pixels with your
  creatives if you want to use another system to track impressions by
  selecting the Format
  (Image URL,
  HTML URL,
  JavaScript URL, or
  Raw JavaScript) for the pixel and
  entering URLs (Secure and
  Non-Secure) for each tracking event.
  The following tracking events are supported:
  <table
  id="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec"
  class="table frame-all" style="width:100%;">
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__1"
  class="entry">Tracking Event</th>
  <th
  id="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__2"
  class="entry">Creative Type</th>
  <th
  id="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__3"
  class="entry">Description</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__1">Impression</td>
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__2">All</td>
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__3">Tracks
  all impressions.</td>
  </tr>
  <tr class="even row">
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__1">Click</td>
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__2">All</td>
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__3">Tracks
  all clicks.</td>
  </tr>
  <tr class="odd row">
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__1">Error</td>
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__2">Video
  and Audio</td>
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__3">Tracks
  issues related to the video player.</td>
  </tr>
  <tr class="even row">
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__1">Player</td>
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__2">Video
  and Audio</td>
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__3">Tracks
  the following player events:
  <ul>
  <li>Mute</li>
  <li>Pause</li>
  <li>Player Collapse</li>
  <li>Player Expand</li>
  <li>Resume</li>
  <li>Rewind</li>
  <li>Skip</li>
  <li>Unmute</li>
  </ul>
  
  <b>Note:</b> Mute, pause, player collapse,
  player expand, resume, rewind, and unmute are only supported on VAST
  versions 4.1 and 4.2. Skip is supported on VAST version 2.0 and higher.
  </td>
  </tr>
  <tr class="odd row">
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__1">Progress</td>
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__2">Video
  and Audio</td>
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_867c7f6d-e982-46c6-86d1-61bd974b9dec__entry__3"><div
  id="configuring-tracking-for-creatives__p_3d8819d9-f0d0-4bc7-b4ea-e589aef6768b"
  >
  Tracks the percentage of a video creative that has been viewed. The
  percentages are broken down as follows:
  <ul>
  <li>0% (Start)</li>
  <li>25% (Complete)</li>
  <li>50% (Complete)</li>
  <li>75% (Complete)</li>
  <li>100% (Complete)</li>
  </ul>
  
  <p>This tracking event is supported on VAST version 2.0 and
  higher.</p></td>
  </tr>
  </tbody>
  </table>

  

  <b>Note:</b> If the inventory that you are
  serving on is secure, then each tracking pixel must have a secure URL.

  

  

  >

  Here's a list of pixel formats that are supported per creative type:
  <table
  id="configuring-tracking-for-creatives__table_debfc684-7e0e-4311-8fbe-7c0e1126521c"
  class="table frame-all">
  <colgroup>
  <col style="width: 50%" />
  <col style="width: 50%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="configuring-tracking-for-creatives__table_debfc684-7e0e-4311-8fbe-7c0e1126521c__entry__1"
  class="entry">Creative Type</th>
  <th
  id="configuring-tracking-for-creatives__table_debfc684-7e0e-4311-8fbe-7c0e1126521c__entry__2"
  class="entry">Supported Format</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_debfc684-7e0e-4311-8fbe-7c0e1126521c__entry__1">Video
  and Audio</td>
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_debfc684-7e0e-4311-8fbe-7c0e1126521c__entry__2">Image
  URL</td>
  </tr>
  <tr class="even row">
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_debfc684-7e0e-4311-8fbe-7c0e1126521c__entry__1">Native</td>
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_debfc684-7e0e-4311-8fbe-7c0e1126521c__entry__2"><ul>
  <li>Image URL</li>
  <li>JavaScript URL</li>
  </ul></td>
  </tr>
  <tr class="odd row">
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_debfc684-7e0e-4311-8fbe-7c0e1126521c__entry__1">Banner</td>
  <td class="entry"
  headers="configuring-tracking-for-creatives__table_debfc684-7e0e-4311-8fbe-7c0e1126521c__entry__2"><ul>
  <li>Image URL</li>
  <li>HTML URL</li>
  <li>JavaScript URL</li>
  <li>Raw JavaScript</li>
  </ul></td>
  </tr>
  </tbody>
  </table>

  
- **<a href="associate-segment-pixels-with-creatives.md" class="xref"
  title="You can associate specific segment pixels with your creatives. Users will be added to the segment pixels when they&#39;re viewing and/or clicking the creative.">Associate
  Segment Pixels with Creatives</a>**: You can associate specific
  segment pixels with your creatives.
  

  <b>Note:</b> The more segment pixels that
  you add to a creative will result in more latency for end users.

  
- **<a href="moat-video-viewability-measurement.md" class="xref">Moat
  Video Viewability Measurement</a>**: You can improve video viewability
  analytics by linking a hosted video creative to Moat's viewability
  measurement and reporting (also known as **Moat Attention Metrics**).
- **AdChoices**: You can append the AdChoices icon to your creatives,
  giving your audience control over how information about their
  interests is used for relevant advertising.
  

  <b>Note:</b> AdChoices can be enabled for
  all creative types. AdChoices is supported on VAST version 3.0 and
  higher.

  




