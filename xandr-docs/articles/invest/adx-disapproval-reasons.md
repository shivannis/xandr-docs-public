---
Title : Google Ad Manager Disapproval Reasons
Description : You may receive a disapproval reason from Google Ad Manager for various
reasons.
---


# Google Ad Manager Disapproval Reasons



You may receive a disapproval reason from Google Ad Manager for various
reasons.



Use the table below to better understand why your creative was rejected.
The disapproval reasons are sorted in ascending order by ID (0 to 35).

<table
id="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1"
class="entry">ID</th>
<th
id="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2"
class="entry">Disapproval Label</th>
<th
id="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3"
class="entry">Description</th>
<th
id="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4"
class="entry">Recommendation</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">0</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">length_of_image_animation</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
length of the image animation exceeds the Google Ad Manager animation
length limit (30 seconds).</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Revise
the creative to be 30 seconds or less and re-upload it.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">1</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">broken_url</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
clickthrough URL assigned to your creative is not working properly.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Replace
the clickthrough URL with one that is properly working.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">2</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">media_not_fuctional</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">Something
is wrong with the creative.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Retest
the creative's functionality.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">3</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">invalid_fourth_party_call</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative makes a fourth-party call to an unapproved vendor.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Confirm
that the creative's calls are being made to Google Ad Manager-approved
vendors. For more information, see <a
href="http://support.google.com/adxbuyer/bin/answer.py?hl=en&amp;answer=186777"
class="xref" target="_blank">Google's Authorized Buyer
documentation</a>.
<p>If you have modified your creative content to add users to segments
when the creative is viewed, this will trigger <span
class="ph">Xandr to call User ID Syncing, which will in turn
cause your creative to be rejected by Google Ad Manager due to calls to
undeclared vendors. Instead of modifying your creative content so that
it can make calls to User ID Syncing, you should associate segment
pixels with creatives, which will not cause usersync pixels to get
called. For more information, see <a
href="associate-segment-pixels-with-creatives.md" class="xref"
title="You can associate specific segment pixels with your creatives. Users will be added to the segment pixels when they&#39;re viewing and/or clicking the creative.">Associate
Segment Pixels with Creatives</a>. If you do decide to modify the
creative content in this manner, be sure to append <code
class="ph codeph">&amp;no_redir=1</code> to the query string of the
segment ad call to prevent usersync pixels from getting called.</p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">4</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">incorrect_remarketing_declaration</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative targets consumers using remarketing lists and/or collects data
for subsequent use in retargeting, but does not correctly declare that
use.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Ensure
that the creative explicitly states the use of targeting consumers who
are leveraging remarketing lists and/or collecting data for subsequent
retargeting.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">5</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">landing_page_error</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">Clicking
on the creative leads to an error page.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Replace
the landing page URL with one that is up and running.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">6</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">ad_size_does_not_match_ad_slot</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative size when rendered does not match the declaration.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Ensure
that the correct creative size has been associated with the
creative.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">7</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">no_border</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">Creatives
with a white background require a contrasting border, which was
missing.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Add
a clearly defined border to the creative.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">8</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">fourth_party_browser_cookies</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative attempts to set cookies from a fourth party that is not
certified.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Ensure
that the creative is setting cookies from a certified fourth party.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">9</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">lso_objects</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative sets an <a
href="http://en.wikipedia.org/wiki/Local_shared_object" class="xref"
target="_blank">LSO object</a>, such as Flash cookies, browser helper
objects, or HTML5 Local Storage.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Remove
all LSO objects.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">10</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">blank_creative</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative renders a blank at the time of Google Ad Manager's audit.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Ensure
that the creative is viewable by all users.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">11</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">destination_urls_undeclared</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative uses rotation, but not all the destination URLs were
declared.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Provide
the missing destination URLs.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">12</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">problem_with_click_macro</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">There
is a problem with the way the click macro is used.

<b>Note:</b> All creatives must contain the
Google Ad Manager <code class="ph codeph">CLICK_URL_MACRO</code>. It
must exist to pass the programmatic audit. It must be able to pass a
human audit. Xandr automatically appends this to
every bid response for Google Ad Manager.
</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Submit
a <a href="https://help.xandr.com/" class="xref"
target="_blank">support</a> request.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">13</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">incorrect_ad_technology_declaration</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3"><p>The
ad technology declaration is not accurate.</p>
<p>You must declare all ad servers and data providers upon upload in
order for creatives to serve on Google Ad Manager. During the audit
process, Google Ad Manager checks all calls that the tag makes. If there
is a discrepancy between the ad servers and data providers that were
declared upon upload and the calls that the creative actually makes,
your creative will be rejected.</p></td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Update
the list of declared ad servers and data providers for your creative
using the UI. Confirm what you have declared is
accurate, and then reach out to the Xandr audit
team. If your adsever/technology vendor is not currently approved by
Google Ad Manager, see <a
href="https://developers.google.com/third-party-ads/adx-vendors"
class="xref" target="_blank">Google Ad Manager third- and fourth-party
vendor declarations</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">14</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">incorrect_destination_url_declaration</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
URL that you declared for this creative does not match the actual <code
class="ph codeph">landing_page_url</code>.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Ensure
that the declared click-through URL matches the actual landing page
URL.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">15</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">expandable_incorrect_direction</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
declared expanding direction does not match the actual direction.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Ensure
that the creative is actually expanding in the direction that has been
specified.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">16</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">expandable_direction_not_supported</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative does not expand in a supported direction.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Ensure
that the creative is expanding in a supported direction.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">17</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">expandable_invalid_vendor</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative uses an expandable vendor that is not supported.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Ensure
that the creative is using a supported expandable vendor.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">18</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">expandable_functionality</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">There
was an issue with the expandable creative.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Retest
the expandable creative's functionality.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">19</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">video_invalid_vendor</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3"><p>The
creative uses a video vendor that is not supported.</p>
<p>You must declare all ad servers and data providers upon upload for
creatives to serve on Google Ad Manager. During the audit process Google
Ad Manager checks all calls that the tag makes. If your creative makes a
call to an unapproved video vendor your creative will be
rejected.</p></td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Confirm
that the calls your creative makes are to Google Ad Manager-approved
video vendors. For more information, see <a
href="http://support.google.com/adxbuyer/bin/answer.py?hl=en&amp;answer=186777"
class="xref" target="_blank">Google's documentation</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">20</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">video_unsupported_length</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3"><p>The
length of the video creative is not supported.</p>
<p>If your VAST creative differs from the Google Ad Manager length
parameters (15 or 30 seconds), it will be rejected.</p></td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Revise
the VAST creative's duration to 15 or 30 seconds.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">21</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">video_unsupported_format</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
format of the video creative is not supported.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Save
the video creative in a format that is supported. For more information,
see <a href="video-creative-guidelines-and-specifications.md"
class="xref"
title="To serve on the Xandr platform and other third-party platforms, all video creatives must adhere to the guidelines and specifications listed here, our creative standards, and any other guidelines that may apply.">Video
Creative Guidelines and Specifications</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">22</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">video_functionality</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">There
was an issue with the video creative.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Retest
the video creative's functionality.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">23</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">landing_page_disabled</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
landing page does not conform to the Ad Exchange policy.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Ensure
that the landing page associated with your creative conforms to <a
href="http://support.google.com/adwordspolicy/topic/1310885?hl=en&amp;guide=1308259&amp;rd=1"
class="xref" target="_blank">Google Ad Manager's policy</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">24</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">malware_suspected</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative may contain malware.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Remove
all malware from the creative.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">25</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">adult_image_or_video</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative contains adult images or video content.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Remove
any inappropriate adult images or video content.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">26</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">inaccurate_ad_text</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative contains text that is unclear or inaccurate.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Revise
the creative text.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">27</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">counterfeit_designer_goods</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative promotes counterfeit designer goods.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Remove
any content that promotes counterfeit designer goods.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">28</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">pop_up</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative causes a pop-up window to appear.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Remove
the pop-up.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">29</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">invalid_rtb_protocol_usage</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative does not follow policies set for the RTB protocol.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Ensure
that the creative conforms to policies set for the <a
href="https://developers.google.com/authorized-buyers/rtb/response-guide/bid-multiple"
class="xref" target="_blank">RTB protocol</a>.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">30</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">raw_ip_address_in_snippet</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative contains a URL that uses a numeric IP address for the
domain.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Remove
calls made to IP addresses.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">31</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">unacceptable_content_software</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3"><p>The
creative or landing page contains unacceptable content because it
initiated a software or executable download.</p>
<p>A creative that initiates a software or executable download goes
against the Google Ad Manager and Xandr
policy.</p></td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Confirm
that the creative does not initiate a software or executable
download.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">32</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">unauthorized_cookie_on_google_domain</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">The
creative sets an unauthorized cookie on a Google domain.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Remove
the calls that set unauthorized cookies.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">33</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">undeclared_flash_objects</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3">Flash
content found where no Flash declared.</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Remove
all Flash content from the creative.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">34</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">invalid_ssl_declaration</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3"><p>SSL
support declared but not working correctly.</p>
<p>Google Ad Manager allows buyers to bid on secure inventory. If your
creative is submitted as a secure creative, then <span
class="ph">Xandr will pass back a secure flag in the bid
response. If Google Ad Manager finds that your creative is not actually
SSL supported, it will be rejected.</p></td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Remove
any unsecure content from the creative.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__1">35</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__2">direct_download_in_ad</td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__3"><p>Rich
Media - Direct Download in Ad (For example, a PDF download).</p>
<p>A direct download that results from clicking on the creative goes
against the Google Ad Manager and Xandr
policy.</p></td>
<td class="entry"
headers="adx-disapproval-reasons__table_5e850233-9768-495b-bfcd-259c1d644ebb__entry__4">Remove
any direct downloads from the creative.</td>
</tr>
</tbody>
</table>

If you can't locate your disapproval reason in the table above, you may
find it in the Disapproved ad reasons
column of the <a
href="https://support.google.com/authorizedbuyers/answer/6272857?hl=en"
class="xref" target="_blank">Google Ad Manager's Troubleshoot
disapproved ads</a> page.

If you don't see your disapproval reason listed there, you may be able
to find it in <a
href="https://developers.google.com/ad-exchange/rtb/downloads/snippet-status-report-proto.txt"
class="xref" target="_blank">Google's Snippet Status Report</a>. In the
Snippet Status Report, search for "`enum DisapprovalReason`". The full
list of Google Ad Manager disapproval reasons is contained with curly
brackets {} followed by `enum DisapprovalReason`.

The disapproval reasons are in all caps. An explanation of the
disapproval reason appears above each approval code, which is demarcated
by two slashes (//). For example, the
LENGTH_OF_IMAGE_ANIMATION
disapproval code corresponds to the
`//The length of the image animation is longer than allowed` disapproval
reason. ID numbers have been assigned to each disapproval reason. For
example,`LENGTH_OF_IMAGE_ANIMATION`` = 1`.





## Related Topics

- <a href="adx-creative-audit-process.md" class="xref"
  title="For your creative to serve on Google Ad Manager inventory, it must pass both the Xandr and Google Ad Manager creative audit.">Google
  Ad Manager Creative Audit Process</a>
- <a href="resubmit-creatives-for-adx-auditing.md" class="xref"
  title="You may receive a rejection reason directly from Google&#39;s API if your creative is rejected by Google Ad Manager. You can easily resubmit your rejected creative to Google Ad Manager so that it can be re-audited.">Resubmit
  Creatives for Google Ad Manager Auditing</a>






