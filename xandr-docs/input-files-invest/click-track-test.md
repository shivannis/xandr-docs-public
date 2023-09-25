---
Title : Click Track Test
Description : ## Overview
Prior to uploading to the Xandr platform, a
series of automated checks are performed on a creative to ensure that it
is compliant and optimal to serve on an inventory. Click track test is
---


# Click Track Test





## Overview

Prior to uploading to the Xandr platform, a
series of automated checks are performed on a creative to ensure that it
is compliant and optimal to serve on an inventory. Click track test is
one of those checks. The goal of the click track test is to ensure that
a creative's tag is properly set up to measure clicks for reporting
purposes. For a creative to pass the click track test,
Xandr's click-tracker URL must load once when
the creative is clicked.

Note that the purpose of the click track test is not to test whether the
creative clicks through properly. That can be done by simply clicking on
the creative and observing its behavior. The primary intention of the
test is to verify whether Xandr has the ability
to track clicks on the creative. There is a possibility that for a
certain creative though the click through happens properly, it may not
load in Xandr's click tracker.

If the click tracker loads properly, you'll see a status saying "Click
tracking is working" whereas if the click tracker doesn't load properly,
you'll see a "Click tracking is not working" status. Receiving a status
of "Click tracking is not working" doesn't always mean that we won't be
able to track clicks on the creative. In cases where creatives have
rotating brands, it is possible that the click tracker will only load
for certain creatives that have been loaded. For example, external
systems may only click track when a default creative is not served in
the slot, or when a creative is served in certain countries. Being said
that, at times, when the system encounters click tracking test issues,
you may need to troubleshoot them.




## Workflow



- When Xandr's Click Tracker URL is loaded, a
  request to Xandr's server is made to register
  the click.
- After the click is logged, the user will be redirected to the final
  landing page.



An example of a Xandr Click Tracker URL is <a
href="https://nym1-ib.adnxs-simple.com/click?AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
class="xref"
target="_blank">https://nym1-ib.adnxs-simple.com/click?AAAAAAA</a>.

For a creative to pass the click track test, the above URL must fire in
the network calls when the creative is clicked. If the URL fires, it
implies that the creative has been set up properly to measure the
clicks.




<b>Note:</b>

- If the Xandr click tracker URL does not load
  when you click the creative, then it will not measure the clicks. The
  click track test determines if your creative is setup properly to load
  the Xandr's click-tracker URL and measure the
  clicks.
- You can manually test click tracking if there are occurrences of
  strange creative behavior or there are UI issues that result in
  unreliable outcome of the click tracking test within the UI. For more
  information, see
  <a href="test-click-tracking-manually.md" class="xref"
  title="You can manually test click tracking if strange creative behavior or UI issues cause the click tracking test within the UI to be unreliable.">Test
  Click Tracking Manually</a>.






## Common Click Tracking Test Failures



<table
id="click-tracking-test-outcomes__table-ccb20604-9864-4c7d-a410-dd25ec15b6f3"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="click-tracking-test-outcomes__table-ccb20604-9864-4c7d-a410-dd25ec15b6f3__entry__1"
class="entry align-center colsep-1 rowsep-1">Failures</th>
<th
id="click-tracking-test-outcomes__table-ccb20604-9864-4c7d-a410-dd25ec15b6f3__entry__2"
class="entry align-center colsep-1 rowsep-1">Reasons and Recommended
Solutions</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-ccb20604-9864-4c7d-a410-dd25ec15b6f3__entry__1">Failed
to click on creative that appears blank</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-ccb20604-9864-4c7d-a410-dd25ec15b6f3__entry__2">The
creative may be configured with blocklists on <span
class="ph">Xandr-domains that control where the creative is
allowed to render. Ensure that your server-configurations have no blocks
on the following domains:
<ul>
<li><a href="http://creative-preview-an.com/" class="xref"
target="_blank">adnxs.net</a></li>
<li><a href="http://audit.adnxs.net/" class="xref"
target="_blank">adnxs.com</a></li>
<li><a href="http://creative-preview-an.com/" class="xref"
target="_blank">creative-preview-an.com</a></li>
<li><a href="http://audit.adnxs.net/" class="xref"
target="_blank">audit.adnxs.net</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-ccb20604-9864-4c7d-a410-dd25ec15b6f3__entry__1">Failed
to click on a creative</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-ccb20604-9864-4c7d-a410-dd25ec15b6f3__entry__2"><span
class="ph">Xandr performs click-track testing from a Firefox
Browser. So, if your creative fails to click on Firefox environments, it
would fail the test. Ensure that your creative renders and is clickable
on all supported browsers such as Chrome, Firefox, Safari, and
Edge.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-ccb20604-9864-4c7d-a410-dd25ec15b6f3__entry__1">Creative
loads landing page in the same browser window</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-ccb20604-9864-4c7d-a410-dd25ec15b6f3__entry__2">Ensure
that Xandr's click macro is properly embedded
within your creative's tag and that the creative clicks through to a new
tab and/or window.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-ccb20604-9864-4c7d-a410-dd25ec15b6f3__entry__1"><span
class="ph">Xandr's Click tracker URL did not fire</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-ccb20604-9864-4c7d-a410-dd25ec15b6f3__entry__2">Ensure
that the Xandr click macro is properly embedded
in your creative's tag. This macro is a placeholder value for <span
class="ph">Xandr's click-tracker URL, which is used to measure
clicks on Xandr's Server.</td>
</tr>
</tbody>
</table>





## Common Click Tracking Test Issues


<table
id="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__1"
class="entry align-center colsep-1 rowsep-1">Issues</th>
<th
id="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__2"
class="entry align-center colsep-1 rowsep-1">Recommended Solutions</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__1">The
creative isn't rendering during the click track test because geographic
fencing or third-party protection has been enabled.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__2">Remove
any geographic fencing or third-party protection from the creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__1">The
creative didn't respond to clicking because it may be expecting the user
to click on a particular Call to
Action button.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__2">The
user simply chose not to click the Call to
Action button, so there's nothing you can do to resolve this
issue.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__1">The
creative is interfering with the browser's navigation, so its landing
page is loading in the same browser window.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__2">Contact
your creative developer to resolve this issue.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__1">The
creative didn't load the click tracker URL, so it hasn't been
fired.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__2">Ensure
that the click tracker URL or click tracking macro is inserted and that
it's inserted properly. For more information, see <a
href="click-tracking.md" class="xref"
title="Click tracking serves many useful purposes within the ad serving industry as a whole. For Xandr, click tracking is necessary for optimizing to CPC and CPA goals, for bidding CPC and CPA, and for measuring a campaign&#39;s success.">Click
Tracking</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__1">The
click tracker is getting lost between ad servers when testing click
tracking on third-party video creatives although the click tracking URL
macro has been inserted properly. The most common reason for this is
that our click tracker may get lost between ad servers. This may occur
in cases where the video creative on the third-party side is another
third-party tag.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__2">The
setup on the third-party side needs to pull in our click tracker and
insert it into the tag, which requires the use of macros on the tag. One
of the following configurations can be used:

<strong>Tag with script/noscript sections and click tracking URL
example:</strong>Many third-party tags will include both script and
noscript HTML tags. If a user has JavaScript enabled in their browser,
only the script sections will load. If a user does not have JavaScript
enabled, then the noscript sections will be able to load. It is
imperative that the click tracking URL macro be included in the script
section since the vast majority of users will have JavaScript enabled.
However, including the click macro in both sections will allow for
proper click tracking on all users. For example:
<pre class="pre codeblock"><code>&lt;script src=&quot;http://ad.mysampleadserver.com/myAdOn/Ad-MediumRectangle-300x250?click=${CLICK_URL_ENC}&quot;type=&quot;text/javascript&quot;&gt; &lt;/script&gt; &lt;noscript&gt; &lt;a href=&quot;${CLICK_URL_ENC}http://www.cnn.com&quot;&gt;&lt;img src=&quot;http://upload.wikimedia.org/wikipedia/commons/2/24/Ad-MediumRectangle-300x250.jpg&quot; width=&quot;300&quot; height=&quot;250&quot;&gt;&lt;/a&gt; &lt;/noscript&gt;</code></pre>


<b>Note:</b> If the click tracking test runs
on a browser with JavaScript enabled and the click tracking URL macro is
included only in the noscript section, then the creative will fail the
test.


<strong>Tag with embedded iFrames example:</strong> An iFrame loads a
web page within itself. It will load the URL provided in the "src"
(source) parameter. An iFrame will only load its inner contents (in this
case the script and noscript sections) if the user's browser does not
support iFrames. For example:
<pre class="pre codeblock"><code>&lt;iframe src=&quot;http://ad.mysampleadserver.com/myAdOn/Ad-MediumRectangle-300x250?format=iFrame&quot; width=&quot;300&quot; height=&quot;250&quot;&gt; &lt;script src=&quot;http://ad.mysampleadserver.com/myAdOn/Ad-MediumRectangle-300x250&quot;type=&quot;text/javascript&quot;&gt; &lt;/script&gt; &lt;noscript&gt; &lt;a href=&quot;http://www.cnn.com&quot;&gt;&lt;img src=&quot;http://upload.wikimedia.org/wikipedia/commons/2/24/Ad-MediumRectangle-300x250.jpg&quot; width=&quot;300&quot; height=&quot;250&quot;&gt;&lt;/a&gt; &lt;/noscript&gt; &lt;/iframe&gt;</code></pre>


Essentially, this is what takes place after the creative is loaded:
<ul>
<li>If the browser does support iFrames, it will load the source URL in
the iFrame.</li>
<li><p>If the browser does not support iFrames, it will:</p>
<ul>
<li>load only the script sections if the browser does support
JavaScript.</li>
<li>load only the noscript sections if the browser does not support
JavaScript.</li>
</ul>
<p>For proper click tracking on all users, it's necessary to include the
click tracking URL macro in all three sections: iFrame source, script
section, and noscript section.</p></li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__1"><p>The
creative passes the click tracking test but tracks clicks on all
impressions or is flagged for auto-clicking. This scenario will occur
when the click tracking macro has been prepended to the src URL of
either the JavaScript or iFrame tag. As a result, it will not accurately
track clicks although it has passed the click tracking test.</p>
<p>An invalid example of this configuration using JavaScript would
be:</p>
<p><code
class="ph codeph">&lt;script src="${CLICK_URL_ENC}http://ad.mysampleadserver.com/myAdOn/Ad-MediumRectangle-300x250"type="text/javascript"&gt;&lt;/script&gt;</code></p>
<p>Another invalid example of this configuration using an iFrame would
be:</p>
<p><code
class="ph codeph">&lt;IFRAME SRC="${CLICK_URL_ENC}&gt;&lt;/IFRAME&gt;</code></p>
<p>In both of these examples, the src URL represents where the creative
is loaded from. If the click tracker macro is inserted in that URL (as
shown above), it will load each time when the creative loads. This
results in the number of clicks equaling the number of impressions,
which results in 100% CTR.</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="click-tracking-test-outcomes__table-cfda4801-0886-4ef9-8a42-18aa5debfdc7__entry__2">Instead
of prepending the click macro, ensure it is passed in using the query
string. For examples of how to do this, contact your creative
developer.Instead of prepending the click macro, ensure it is passed in
using the query string. For examples of how to do this, contact your
creative developer.</td>
</tr>
</tbody>
</table>





## Related Topics

- <a href="click-tracking.md" class="xref"
  title="Click tracking serves many useful purposes within the ad serving industry as a whole. For Xandr, click tracking is necessary for optimizing to CPC and CPA goals, for bidding CPC and CPA, and for measuring a campaign&#39;s success.">Click
  Tracking</a>
- <a href="test-click-tracking-manually.md" class="xref"
  title="You can manually test click tracking if strange creative behavior or UI issues cause the click tracking test within the UI to be unreliable.">Test
  Click Tracking Manually</a>






