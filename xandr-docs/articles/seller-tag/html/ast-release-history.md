

# AST Release History





Tip: To utilize the most current
version of AST, link to our CDN at 
<a href="https://acdn.adnxs.com/ast/ast.js" class="xref"
target="_blank">https://acdn.<span
class="ph">adnxs.com/ast/ast.js</a> . For a detailed example see
our  AST implementation guide . If your implementation requires a
specific version of AST, use the following link, where {VERSION_NUM}
would be replaced with the number of the version you want to use:
https://acdn.adnxs.com/ast/static/{VERSION_NUM}/ast.js
.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001dc1__entry__1"
class="entry colsep-1 rowsep-1">Release</th>
<th id="ID-00001dc1__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001dc1__entry__3" class="entry colsep-1 rowsep-1">Date</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.58.0/ast.js" class="xref"
target="_blank">0.58.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Include <code class="ph codeph">invCode</code> with <code
class="ph codeph">apntag.getTag</code> function</li>
<li>Update <code class="ph codeph">clearRequest</code> to choose certain
tags</li>
<li>Add support for GPP 1.1</li>
<li>Add MSFT bid fields to AST event object</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">20 September 2023</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.57.0/ast.js" class="xref"
target="_blank">0.57.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add native renderer information for AST events</li>
<li>Check value of <code class="ph codeph">gdprApplies</code> before
checking <code class="ph codeph">tcString</code></li>
<li>Catch exception when calling <code class="ph codeph">getTag()</code>
in certain cases</li>
<li>Update <code class="ph codeph">attachClickTrackers()</code> to be
compatible inside web component environment</li>
<li>Update AST <code class="ph codeph">usersync</code> domain and
logic</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">14 July 2023</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.56.0/ast.js" class="xref"
target="_blank">0.56.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for coppa</li>
<li>Add support to specify sandbox attributes for AST iframe</li>
<li>Add support to include extra div container around AST iframe</li>
<li>Update the this context in <code class="ph codeph">xhr</code>
call</li>
<li>Fix function call in <code class="ph codeph">adManager</code></li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">31 May 2023</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.55.0/ast.js" class="xref"
target="_blank">0.55.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add <code class="ph codeph">userSync</code> feature</li>
<li>Add setting to control when viewability script loads for native
ads</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">28 Mar 2023</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.54.1/ast.js" class="xref"
target="_blank">0.54.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add param for <code class="ph codeph">setEndpoint</code> function to
optionally lock impbus URL</li>
<li>Update <code class="ph codeph">postMessage</code> logic for Global
Privacy Platform consent feature</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">18 Jan 2023</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.53.0/ast.js" class="xref"
target="_blank">0.53.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for Global Privacy Platform (US)</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">19 Dec 2022</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.52.0/ast.js" class="xref"
target="_blank">0.52.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Update notify function to support a targetId</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">30 Nov 2022</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.51.0/ast.js" class="xref"
target="_blank">0.51.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Update logic around simple domain usage</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">18 Oct 2022</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.50.0/ast.js" class="xref"
target="_blank">0.50.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Fix window reference for AST div when using safeframe</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">03 Aug 2022</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.49.0/ast.js" class="xref"
target="_blank">0.49.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add a globalPlacementId field to defineTag</li>
<li>Add a pageUrl override field for certain mobile environments</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">21 Jun 2022 </td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.48.1/ast.js" class="xref"
target="_blank">0.48.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Replace unload event with pagehide</li>
<li>Update dependency packages to support Node 14</li>
<li>Add an optional parameter for resizeAd</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">01 Jun 2022 </td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.47.0/ast.js" class="xref"
target="_blank">0.47.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Update type for publisher first party IDs feature</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">04 May 2022 </td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.46.2/ast.js" class="xref"
target="_blank">0.46.2</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for publisher first party IDs</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">21 Mar 2022 </td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.45.0/ast.js" class="xref"
target="_blank">0.45.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Resolve issue when SafeFrame is loaded in a scrollable event</li>
<li>Resolve issue with Safari Outstream and SafeFrame where ad was not
expanding</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">08 Feb 2022 </td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.44.0/ast.js" class="xref"
target="_blank">0.44.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Remove usage of localStorage within debugger feature</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">08 Dec 2021</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.43.0/ast.js" class="xref"
target="_blank">0.43.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add conditional check for some postMessage requests</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">11 Nov 2021 </td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.42.1/ast.js" class="xref"
target="_blank">0.42.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for new cpm fields available in bid response</li>
<li>Add schain support</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">03 Nov 2021 </td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.41.0/ast.js" class="xref"
target="_blank">0.41.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Update adRequested event trigger conditions</li>
<li>Additional updates to WebComponent and SafeFrame support</li>
<li>Update logic on when to set the displayed flag</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">29 Sep 2021 </td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.40.0/ast.js" class="xref"
target="_blank">0.40.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for UID2 userId</li>
<li>Add support for Google Additional Consent field</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">24 Jun 2021 </td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.39.0/ast.js" class="xref"
target="_blank">0.39.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for web components to banner ads</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">10 Jun 2021 </td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.38.0/ast.js" class="xref"
target="_blank">0.38.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Ignore case on userId field</li>
<li>Address issue in refresh behavior fro video ads</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">17 May 2021 </td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.37.1/ast.js" class="xref"
target="_blank">0.37.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Fixed issue around withCredentials field</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">03 May 2021 </td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.37.0/ast.js" class="xref"
target="_blank">0.37.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for simple domain/cookieless requests</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3">28 Apr 2021 </td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.35.0/ast.js" class="xref"
target="_blank">0.36.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for LiveRamp userId in AST</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.35.0/ast.js" class="xref"
target="_blank">0.35.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for userId netID in AST</li>
<li>Correct the format used to pass segment data in UT request</li>
<li>Resend Criteo data over EIDS for AST</li>
<li>Ensure mediation.js is loaded with correct protocol in iframes</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.34.0/ast.js" class="xref"
target="_blank">0.34.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Send native custom fields to universal tag request</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.33.0/ast.js" class="xref"
target="_blank">0.33.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2">Send
Criteo userId data via tpuids property in universal tag request.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.32.0/ast.js" class="xref"
target="_blank">0.32.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Improve AMP domain detection</li>
<li>Add test headers when debug is enabled</li>
<li>Update TCF2 Purpose 1 check to treat undefined as false</li>
<li>Safeframe security updates</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.31.0/ast.js" class="xref"
target="_blank">0.31.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for Criteo and TTD IDs through setPageOpts API </li>
<li>Add deal Id to adObj API </li>
<li>Support video fallback from mediation in safeframe</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.30.1/ast.js" class="xref"
target="_blank">0.30.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for expandBy creative flag in mediation.</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.30.0/ast.js" class="xref"
target="_blank">0.30.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add display none property to AST div when resizeAd uses 0x0</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.29.0/ast.js" class="xref"
target="_blank">0.29.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for consent strings in AMP</li>
<li>Enforce Purpose one consent in TCF v2</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.28.1/ast.js" class="xref"
target="_blank">0.28.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Codebase improvements</li>
</ul></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.28.0/ast.js" class="xref"
target="_blank">0.28.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add “USP API” support for CCPA</li>
<li>Make all Impbus requests secure(https) by default</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.27.1/ast.js" class="xref"
target="_blank">0.27.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add CCPA support through setPageOpts API.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.27.0/ast.js" class="xref"
target="_blank">0.27.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add TCF v2.0 support</li>
<li>Add support for multi-size prebid creatives in mediation
fallback</li>
<li>Add support for native custom types in AST</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.26.0/ast.js" class="xref"
target="_blank">0.26.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Codebase improvements</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.26.0/ast.js" class="xref"
target="_blank">0.26.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Codebase improvements </li>
<li>Create versioned safe frame and mediation</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.25.0/ast.js" class="xref"
target="_blank">0.25.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for fallback video ads</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.24.0/ast.js" class="xref"
target="_blank">0.24.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add blanks to reporting for mediation</li>
<li>Enhance adObj for mediation events</li>
<li>Add support for video outstream fallback from mediation</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/alpha/0.24.0/ast.js" class="xref"
target="_blank">0.24.0 alpha</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><div
class="note warning note_warning">
Warning: This is an alpha release and
functionality could change without notice.

<ul>
<li>Add blanks to reporting for mediation</li>
<li>Enhance adObj for mediation events</li>
<li>Add support for video outstream fallback from mediation</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.23.2/ast.js" class="xref"
target="_blank">0.23.2</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for native assembly on mediation fallback</li>
<li>Add  support for mediation events (see Ad Object API)</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.23.1/ast.js" class="xref"
target="_blank">0.23.1</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__2">Added AMP environment detection
flag</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/alpha/0.23.0/ast.js" class="xref"
target="_blank">0.23.0 alpha</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><div
class="note warning note_warning">
Warning: This is an alpha release and
functionality could change without notice.

<ul>
<li>Add support for native assembly on mediation fallback (see Ad Object
API)</li>
<li>Add  support for mediation events (see Ad Object API )</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.22.0/ast.js" class="xref"
target="_blank">0.22.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Added support for mediation iframe size change dynamically</li>
<li>Added support for getting consent management (GDPR string) through
SafeFrame API</li>
<li>Add brand category to adObj</li>
<li>Bug Fixes</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.21.1/ast.js" class="xref"
target="_blank">0.21.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Bug Fixes</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.21.0/ast.js" class="xref"
target="_blank">0.21.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Added geo override functionality to setPageOpts</li>
<li>Enabled toolkit from apntag</li>
<li>Bug Fixes</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.20.0/ast.js" class="xref"
target="_blank">0.20.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature Added override option to apntag.setKeywords</li>
<li>Added media type and media sub-type to <code
class="ph codeph">adObj</code></li>
<li>Bug Fixes</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.19.0/ast.js" class="xref"
target="_blank">0.19.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature Support desc2 and other assets on native bid request (see
defineTag)</li>
<li>Bug Fixes</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.18.1/ast.js" class="xref"
target="_blank">0.18.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature Invoke server-supplied renderers on native mediation
bids</li>
<li>Feature Added apntag.getTag(&lt;targetId&gt;) for returning tag
data</li>
<li>Convert member strings to numbers automatically</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.18.0/ast.js" class="xref"
target="_blank">0.18.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature Support Secure Frame with Outstream</li>
<li>Feature Added <code class="ph codeph">usePmtRule</code> field to
defineTag function</li>
<li>Added referrer data to request</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.17.1/ast.js" class="xref"
target="_blank">0.17.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature Added <code class="ph codeph">auctionTimeout</code> to <code
class="ph codeph">setPageOpts</code></li>
<li>Bug Fix</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.17.0/ast.js" class="xref"
target="_blank">0.17.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature Support native rtb creatives from mediation</li>
<li>Bug Fix</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="https://acdn.adnxs.com/ast/static/0.16.2/ast.js" class="xref"
target="_blank">0.16.2</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Bug Fixes</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.16.1/ast.js" class="xref"
target="_blank">0.16.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Bug Fix</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.16.0/ast.js" class="xref"
target="_blank">0.16.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature GDPR support</li>
<li>Feature Added <code
class="ph codeph">apntag.attachClickTrackers</code> for firing native
click trackers</li>
<li>Feature Added <code class="ph codeph">skipOffset</code> as a
definable video parameter</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.15.1/ast.js" class="xref"
target="_blank">0.15.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature Added desc2 to native response object</li>
<li>Bug Fix</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.15.0/ast.js" class="xref"
target="_blank">0.15.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature Support protocol-less urls</li>
<li>Safeframe rewrites and updates</li>
<li>Bug Fixes</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.14.0/ast.js" class="xref"
target="_blank">0.14.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature Render AMP Ads above the fold (availability pending AMP
Project support)</li>
<li>Feature Support for Safeframe "meta" information</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.13.0/ast.js" class="xref"
target="_blank">0.13.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature Support Privacy Field and Flag in AST</li>
<li>Feature Support for Scroll offset in the SafeFrame API</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.12.2/ast.js" class="xref"
target="_blank">0.12.2</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature Safeframe Sandbox Mode to disallow window.top
navigation</li>
<li>Bug Fixes</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.12.0/ast.js" class="xref"
target="_blank">0.12.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature  Initialize ad iframe in collapsed state</li>
<li>Test Native video support</li>
<li>Bug fixes</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.11.0/ast.js" class="xref"
target="_blank">0.11.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Feature Click to open iTunes in iPhone</li>
<li>Activation Viewability measurement of native creatives available
(requires server-side activation)</li>
<li>Bug fixes</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.10.2/ast.js" class="xref"
target="_blank">0.10.2</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Bug fixes for mediation impressions</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.10.0/ast.js" class="xref"
target="_blank">0.10.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>New method <code class="ph codeph">apntag.getAstVersion</code></li>
<li>Option to remove debug information from querystring</li>
<li>Bug fixes</li>
<li>Removed deprecated code</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.9.0/ast.js" class="xref"
target="_blank">0.9.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for Publisher ID</li>
<li>Fix internal error causing "ad_type undefined"</li>
<li>Fix bug with Target ID not set for Native ads</li>
<li>Other minor bug fixes and improvements</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.8.2/ast.js" class="xref"
target="_blank">0.8.2</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Fix bug for ads not rendered in IE8</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.8.1/ast.js" class="xref"
target="_blank">0.8.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Fix bug for <code class="ph codeph">Object.defineProperty</code> not
supported in IE8</li>
<li>Add "targetid"to adObj in AST events</li>
<li><code class="ph codeph">minWidth</code>  setting is for ad,
container must be greater  </li>
<li>CookieSet feature released. See the API page for details.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.8.0/ast.js" class="xref"
target="_blank">0.8.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><div
class="note warning note_warning">
Warning: Breaking Change
<p>This version of AST contains breaking changes. It will not be
promoted to the <a href="http://acdn.adnxs.com/ast/ast.js" class="xref"
target="_blank">production version of AST</a> until on or after July 10,
2017. For more details about out breaking change policy, please refer to
<a href="breaking-changes-ast-api.html" class="xref">Breaking Changes -
AST API</a>.</p>

<ul>
<li>Support v3native assets. Changes consist of:
<ul>
<li>The <code
class="ph codeph">adType</code>objectreturnedfornativedemandwillbechanging
to support our new native asset model, and to be more aligned with the
OpenRTB native standard.</li>
<li>The following fields have been renamed:
<ul>
<li><code class="ph codeph">description</code> renamed to <code
class="ph codeph">body</code></li>
<li><code class="ph codeph">mainMedia</code> renamed to <code
class="ph codeph">image</code></li>
</ul></li>
<li>The following fields have been removed:
<ul>
<li><code class="ph codeph">custom</code></li>
<li><code class="ph codeph">rating</code></li>
</ul></li>
<li>The following fields have been moved:
<ul>
<li><code class="ph codeph">iconImgUrl</code> has been moved under the
<code class="ph codeph">icon</code> object to <code
class="ph codeph">icon.url</code></li>
</ul></li>
</ul></li>
<li>Improvement in page performance by reducing the number of times our
Viewability javascript can be inserted to once per page (instead of once
per ad slot)</li>
<li>Minor bug fixes</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.7.4/ast.js" class="xref"
target="_blank">0.7.4</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Fix bug for Cannot read property 'ad_type' of null with video
mediation on AST</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.7.3/ast.js" class="xref"
target="_blank">0.7.3</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Fix bug for mediated ads not rendering in IE browsers</li>
<li>Fix bug for badrequesteventcallbackwhenadcallrequestfails</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.7.2/ast.js" class="xref"
target="_blank">0.7.2</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Fix bug for IE11 issue with base target</li>
<li>Fix bug for banner ads coming from AstMediationManager not getting
displayed</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.7.1/ast.js" class="xref"
target="_blank">0.7.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Minor bug fixes</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.7.0/ast.js" class="xref"
target="_blank">0.7.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Implement Viewability functions in AST through Safeframe</li>
<li>Support size mapping in AST</li>
<li>FixbugforupdatingSafeframeexpandparams, as per IAB spec</li>
<li>Fix bug for AST Toolkit not displaying when there is a no-bid</li>
<li>Fix bug for AST Toolkit creative size is displayed backwards</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.6.0/ast.js" class="xref"
target="_blank">0.6.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>SafeFrameexpand/collapse support options on individual tags</li>
<li>Support banner mediation in SafeFrame</li>
<li>Support for <code class="ph codeph">$sf.ext.winHasFocus</code> API
in SafeFrame</li>
<li>AST Toolkit v0</li>
<li>Fix issue with NativefullTextattribute</li>
<li>Remove extraneous logging with SafeFrame enabled</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.5.1/ast.js" class="xref"
target="_blank">0.5.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Minor bug fixes</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.5.0/ast.js" class="xref"
target="_blank">0.5.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Implement SafeFrame in AST (phase 1)</li>
<li>Support for global event handling with the <code
class="ph codeph">onEvent</code> function</li>
<li>Fix bug fornotsettingiframesizeasinlinestyle</li>
<li>Add <code class="ph codeph">setKeywords</code> method</li>
<li>Fix bug to ensure that the <code class="ph codeph">showTag</code>
function clearsthetargetdiv content before rendering new content if not
using refresh API</li>
<li>Fix bug for duplicate resource requests being made for CDN in some
instances</li>
<li>Copy sizes in <code class="ph codeph">adObj</code> to root level
instead of just within banner object<br />
</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.4.2/ast.js" class="xref"
target="_blank">0.4.2</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Resolve issue with ads not displaying in Chrome 54 after using the
browser back button.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.4.1/ast.js" class="xref"
target="_blank">0.4.1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Fix bug with stray characterappearingonpage</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.4.0/ast.js" class="xref"
target="_blank">0.4.0</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Added alwaysUseXDomainIframeparametertodefineTag
functiontopreventcreatives from accessing the parent page directly.</li>
<li>Fix bug for unrelated logging when calling <code
class="ph codeph">apntag.refresh</code> on specific ad slots.</li>
<li>Fix bug for ASTwithprebidnotresizing placements dynamically.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.3.9/ast.js" class="xref"
target="_blank">0.3.9</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Added <code class="ph codeph">notify</code> function to allow AST to
send a messagetoarenderer on a page.</li>
<li>Added optional <code class="ph codeph">externalImpId</code> 
parameter to support the unique identifier of an externally generated
auction.</li>
<li>Fix bug when keyword segment sends integers.</li>
<li>Fix bug where Outstream video in third party iframes was not loading
in Safari</li>
<li>Fix bug for <code class="ph codeph">user.age</code> and <code
class="ph codeph">user.gender</code> not being sent</li>
<li>Fix bug for <code class="ph codeph">event.collapseAd</code></li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.3.8/ast.js" class="xref"
target="_blank">0.3.8</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Added optional <code class="ph codeph">trafficSourceCode</code>
parameter to <code class="ph codeph">defineTag</code> function. The
value of this field will be logged to Standard Feed in the <code
class="ph codeph">traffic_source_code</code> column.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.3.7/ast.js" class="xref"
target="_blank">0.3.7</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add support for <code class="ph codeph">mediation.js</code></li>
<li>Add <code class="ph codeph">resizeAd</code> function</li>
<li>New required query string parameter for running a debug
auction: <code class="ph codeph">debug_member</code></li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.3.6/ast.js" class="xref"
target="_blank">0.3.6</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2">Fix
bug where <code class="ph codeph">apntag.refresh()</code> function
throws exception with missing <code class="ph codeph">div</code>
element</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.3.5/ast.js" class="xref"
target="_blank">0.3.5</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add <code class="ph codeph">offEvent</code> for turning off multiple
event handlers at one time </li>
<li>Add optional <code class="ph codeph">noBidIfUnsold</code> parameter
to <code class="ph codeph">defineTag</code> function</li>
<li>Add <code
class="ph codeph">forceCreativeId</code>parametertodefineTag
function</li>
<li>Log additional information in debug mode</li>
<li>Bug fixes for Internet Explorer</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.3.4/ast.js" class="xref"
target="_blank">0.3.4</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Add <code class="ph codeph">adBadRequest</code> event</li>
<li>Make member optional field</li>
<li>Bug fixfor<code class="ph codeph">adCollapse</code> event</li>
<li>Remove CORSpreflightrequirement to improve performance</li>
<li>Add <code class="ph codeph">TEST</code> flag for test auction</li>
<li>Add <code class="ph codeph">promoAlignment</code> support</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001dc1__entry__1"><a
href="http://acdn.adnxs.com/ast/static/0.3.3/ast.js" class="xref"
target="_blank">0.3.3</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001dc1__entry__2"><ul>
<li>Bug fixes for IE browser support</li>
<li>Support additional reserved keywords</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001dc1__entry__3"></td>
</tr>
</tbody>
</table>




