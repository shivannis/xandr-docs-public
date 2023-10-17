---
Title : Bonsai Language Features
Description : This page lists the Bonsai Language features that you can use to
evaluate impressions as part of your custom model logic. For each
ms.custom : data-science
---


# Bonsai Language Features



This page lists the Bonsai Language features that you can use to
evaluate impressions as part of your custom model logic. For each
feature, we explain the syntax and provide an example to demonstrate
usage. 



Note:

- Bids that are negative or zero
  (<span class="keyword apiname">0) are not supported unless
  explicitly specified in the feature description. Do not use these
  expressions or unexpected results may occur. It is best to specify
  <span class="keyword apiname">no_bid explicitly using <a
  href="bonsai-smart-leaves.md"
  class="xref" target="_blank">Smart Leaves.</a>
- The bids calculated by the model are always expressed in the currency
  set on the advertiser, even if you have specified a different currency
  for the  or campaign.





## Simple Features

**Country**

Evaluate impressions based on the user's country. 

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">country</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Country ID or code, such as <code
class="ph codeph">233</code> or <code class="ph codeph">"US"</code>
<p>Use the <a
href="xandr-api/page/country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve these IDs
or codes.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if country = &quot;US&quot;:
        5
elif country = 70:
        3
else:
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Video Content Targeting**

Evaluate impressions based on the user's video content inventory. 

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">video_duration, video_delivery_type, video_genre, video_program_type, video_rating,</code><br />
<code class="ph codeph">video_network</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>,<code
class="ph codeph"> &gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if any video_duration in (1,2), video_delivery_type in (1,2):
value: 0.050000
elif every video_genre in (1,2,3), video_rating =1:
  value: 0.060000
elif every video_network in (1,3), video_genre in (1,2):
  value: 0.0700000
elif not video_network =2:
  value: 0.01</code></pre></td>
</tr>
</tbody>
</table>

**Region**

Evaluate impressions based on the user's geographic region. 

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">region</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Region ID or country/region code
combination, such as  <code class="ph codeph">"US:NY"</code> .
<p>Use the <a
href="xandr-api/region-service.md"
class="xref" target="_blank">Region Service</a> to retrieve these IDs
and codes. </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if region = 123:
        5
elif region = &quot;US:NJ&quot;:
        3
else:
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**City**

Evaluate impressions based on the user's city. 

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">city</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">City ID or country/region/city code
combination, such as  <code class="ph codeph">"US:NY:New York"</code> . 
<p>Use the <a
href="xandr-api/city-service.md"
class="xref" target="_blank">City Service</a> to retrieve these IDs and
codes. </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if city = 162:
        5
elif city = &quot;US:MA:Boston&quot;:
        3
else:
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**DMA**

Evaluate impressions based on the user's DMA (designated market area).

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">dma</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">DMA ID, such as <code
class="ph codeph">602</code> (for Chicago metro area). 
<p>Use the <a
href="xandr-api/city-service.md"
class="xref" target="_blank">City Service</a> to retrieve DMA
IDs. </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if dma = 602:
        5
elif dma = 603:
        3
else:
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Postal Code**

Evaluate impressions based on the user's postal code. Postal code is
available only for some mobile impressions and impressions from external
supply partners.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">postal_code</code><br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Postal code ID (an integer) or
country/postal code combination (a string such as <code
class="ph codeph">"CA:J0K 1B0"</code> or <code
class="ph codeph">"US:10010")</code>. Includes US zip codes.
<p>Use the Postal Code Service (documented in the <a
href="xandr-api/profile-service.md"
class="xref" target="_blank">Profile Service</a>) to retrieve postal
code IDs.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if postal_code in (&quot;CA:J0k 1B0&quot;, &quot;US:10010&quot;):
        5
elif postal_code = 1367515:
        3
else:
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Postal Code List**

Evaluate impressions based on the user's postal code list. 

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">postal_code_list[ID]</code><br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">None for presence, not for
absence</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">None</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>elif postal_code_list[120]:
value: 1</code></pre></td>
</tr>
</tbody>
</table>

**Deal List**

Evaluate impressions based on the user's deal list. 

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">deal_list[ID]</code><br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">None for presence, not for
absence</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">None</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>elif deal_list[4107]:
value: 2</code></pre></td>
</tr>
</tbody>
</table>

**Size**

Evaluate impressions based on placement size. Please note that in case
`promo_sizes` are passed in the ad call, the evaluation will be
performed using the primary size only.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">size</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">String representing placement
dimensions, formatted as  <code
class="ph codeph">"WIDTHxHEIGHT"</code>.  </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if size = &quot;300x250&quot;:
        5
elif size = &quot;250x250&quot;:
        3
else:
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Day of Week**

Evaluate impressions based on specific days of the week.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">user_day</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Day of the week. Possible values:
<code class="ph codeph">0</code>  -  <code class="ph codeph">6</code> ,
where <code class="ph codeph">0</code> is Sunday and <code
class="ph codeph">6</code> is Saturday.   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if user_day in (1,2,3,4,5):
        5
else:
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Hour of Day**

Evaluate impressions based on specific hours of the day.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">user_hour</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Hour of the day, in the user's
timezone. Possible values:  <code class="ph codeph">0</code>  -  <code
class="ph codeph">23</code> , where <code class="ph codeph">0</code> is
midnight and <code class="ph codeph">23</code> is 11pm. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if user_hour in (18,19,20,21,22,23):
        5
elif user_hour in (14,15,16,17):
        4
else:
        2</code></pre></td>
</tr>
</tbody>
</table>

**Operating System Family**

Evaluate impressions based on the user's operating system.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">os_family</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Operating System Family ID or name,
such as  <code class="ph codeph">2</code>  or  <code
class="ph codeph">"Android"</code> .
<p>Use the <a
href="xandr-api/operating-system-family-service.md"
class="xref" target="_blank">Operating System Family Service</a> to
retrieve these IDs and names. </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if os_family = 2:
        5
elif os_family = &quot;Apple iOS&quot;:
        4
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Operating System Version**

Evaluate impressions based on the specific version of the user's
operating system.



Note: For the `os_extended` feature, a
look up table result of 0 is considered equal to missing.



<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">os_extended</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Operating System Extended ID, such
as  81  for  <code class="ph codeph">"10.8 Mountain Lion"</code>.
<p>Use the <a
href="xandr-api/operating-system-extended-service.md"
class="xref" target="_blank">Operating System Extended Service</a> to
retrieve these IDs. </p>

Note: Operating system ID is listed
as <code class="ph codeph">operating_system</code>  in log-level data.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if os_extended = 81:
        5
elif os_extended = 82:
        4
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Browser**

Evaluate impressions based on the user's browser.



Note: For the `browser` feature, a look
up table result of 0 is considered equal to missing.



<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">browser</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>,<code
class="ph codeph"> &gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Browser ID or name, such as  <code
class="ph codeph">8</code>  or  <code
class="ph codeph">"Chrome (all versions)"</code> .
<p>Use the <a
href="xandr-api/browser-service.md"
class="xref" target="_blank">Browser Service</a> to retrieve these IDs
and names. </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if browser = 8:
        3
elif browser = &quot;Safari (all versions)&quot;:
        2.5
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Browser Language**

Evaluate impressions based on the browser language.



Note: For the `language` feature, a
look up table result of <span class="keyword apiname">0 is
considered equal to missing.



<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">language</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Language ID. 
<p>Use the <a
href="xandr-api/language-service.md"
class="xref" target="_blank">Language Service</a> to retrieve these IDs.
  </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if language = 1:
        3
elif language = 0:
        1
else:
        0</code></pre></td>
</tr>
</tbody>
</table>

**Gender**

Evaluate impressions based on the user's gender. Note that gender is
available only in cases where the publisher passes it in the ad call.
For more information on ad calls, see "Placement Tag Parameters" in
 documentation (customer login required).

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">user_gender</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Gender of the user.  Possible
values: 
<ul>
<li><code class="ph codeph">"female"</code></li>
<li><code class="ph codeph">"male"</code> </li>
<li><code class="ph codeph">"unknown"</code>      </li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if user_gender in (male, female):
        5       
else:
        2</code></pre></td>
</tr>
</tbody>
</table>

**Domain**

Evaluate impressions based on domain.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">domain</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range.</code> To test for multiple values, use <code
class="ph codeph">in.</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">String representing a top-level
domain name, such as  <code class="ph codeph">"</code><a
href="http://food.com" class="xref" target="_blank"><code
class="ph codeph">food.com</code></a><code class="ph codeph">"</code> or
<code class="ph codeph">"books"</code> .  </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if domain = &quot;food.com&quot;:
        3
elif domain = &quot;books.com&quot;:
        2.5
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**IP Address**

Evaluates impressions based on IP address.



Note: Customers in countries that
conform to GDPR regulations should be aware that when targeting IP
addresses or IP ranges, either in your line item, Bonsai tree, or
logistic regression model, there is a possibility the address may be
truncated. Please see our <a
href="https://wiki.xandr.com/display/servicepolicies/Privacy+and+the+Xandr+Platform#PrivacyandtheXandrPlatform-IPTruncation"
class="xref" target="_blank">privacy policy documentation</a> (login
required) for details on this process.



<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">ip_address</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code class="ph codeph">in</code>
 </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">String representing any valid IP
address, including subnet notation.
<p>For example, the range <code
class="ph codeph">(192.168.0.1, 10.0.0.0/24)</code> indicates IP
addresses 192.168.0.1 and 10.0.0.0-10.0.0.255.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if ip_address in (192.168.0.1, 10.0.0.0/24):
        5
else:
        1</code></pre></td>
</tr>
</tbody>
</table>

**Fold Position**

Evaluate impressions based on specific placement positions relative to
the fold of the page.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">position</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Fold position . Possible values: 
<ul>
<li><code class="ph codeph">0 or "unknown"</code> - Use these values to
target placements where the fold position is unknown.</li>
<li><code class="ph codeph">1 or "above"</code> - Use these values to
target placements above the fold. </li>
<li><code class="ph codeph">2 or "below"</code> - Use these values
to target placements below the fold. </li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if position = &quot;above&quot;:
        3
elif position = 2:
        1
else:
        0</code></pre></td>
</tr>
</tbody>
</table>

**Placement**

Evaluate impressions based on specific placements.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">placement</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Placement ID.  

Note: Placement ID is listed as  <code
class="ph codeph">tag_id</code>  in log-level data. 
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if placement = 300:
        5
elif placement = 301:
        4.5
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Placement Group**

Evaluate impressions based on specific placements groups.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">placement_group</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Placement group ID. 

Note: Placement group ID is listed as 
<code class="ph codeph">site_id</code>  in log-level data. 
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if placement_group = 155:
        5
elif placement_group = 156:
        4.50
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Publisher**

Evaluate impressions based on specific publishers.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">publisher</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Publisher ID. 

Note: Publisher ID is listed as <code
class="ph codeph">publisher_id</code> in log-level data. 
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if publisher = 1300:
        5
elif publisher = 1301:
        4.50
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Seller Member**

Evaluate impressions based on specific seller members.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">seller_member_id</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Member ID of the seller. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if any seller_member_id = 100, seller_member_id = 175:
        4
elif any seller_member_id = 500, seller_member_id = 501:
        3.50
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Supply Type**

Evaluate impressions based on specific types of supply.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">supply_type</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Supply type ID or name. Possible
values: 
<ul>
<li><code class="ph codeph">0 or "web"</code> - Use either of these
values to target standard web sites. </li>
<li><code class="ph codeph">1  or "mobile_web"</code> - Use either of
these values to target web sites optimized for browsers on mobile
tablets and phones.</li>
<li><code class="ph codeph">2  or "mobile_app"</code> - Use either of
these values to target apps installed on mobile tablets and phones.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if supply_type = &quot;web&quot;:
        4
elif supply_type = &quot;mobile_web&quot;:
        3
elif supply_type = 2:
        2
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Device Type**

Evaluate impressions based on specific types of physical devices.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>Keyword</strong></td>
<td class="entry"><code class="ph codeph">device_type</code></td>
</tr>
<tr class="even row">
<td class="entry"><strong>Operator</strong></td>
<td class="entry"> Any except <code class="ph codeph">&lt;</code>, <code
class="ph codeph">&gt;</code>, <code class="ph codeph">&lt;=</code>,
<code class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry"><strong>Value</strong></td>
<td class="entry">Device type name. Possible values:
<ul>
<li><code class="ph codeph">"pc &amp; other devices"</code> - Use this
value to target desktops and laptops.</li>
<li><code class="ph codeph">"phone"</code> - Use this value to target
mobile phones. </li>
<li><code class="ph codeph">"tablet"</code>- Use this value to target
mobile tablets.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"><strong>Example</strong></td>
<td class="entry"><pre class="pre codeblock"><code>if device_type = &quot;pc &amp; other devices&quot;:
        5
elif device_type = &quot;tablet&quot;:
        4
elif device_type = &quot;phone&quot;:
        3.50
else:
        0</code></pre></td>
</tr>
</tbody>
</table>

**Device Model**

Evaluate impressions based on specific models of physical devices.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">device_model</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Device model ID. 
<p>  Use the <a
href="xandr-api/device-model-service.md"
class="xref" target="_blank">Device Model Service</a> to retrieve these
IDs. </p>

Note: Device model ID is listed as 
<code class="ph codeph">device_id</code> in log-level data.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if device_model = 46:
        5
elif device_model = 47:
        4.75
elif device_model = 48:
        3.50
else:
        0</code></pre></td>
</tr>
</tbody>
</table>

**Carrier**

Evaluate impressions based on specific mobile carriers.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">carrier</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Mobile carrier ID or name, such as 
<code class="ph codeph">14</code>  or  <code
class="ph codeph">"Verizon"</code> .
<p>Use the <a
href="xandr-api/carrier-service.md"
class="xref" target="_blank">Carrier Service</a> to retrieve these IDs
and names.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if carrier = 14:
        4
elif carrier = &quot;Sprint&quot;:
        3.50
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Mobile App**

 Evaluate impressions based on specific mobile apps.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">mobile_app</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Mobile app ID or names.
<p>Use <a
href="xandr-api/mobile-app-service.md"
class="xref" target="_blank">Mobile App Service</a> to retrieve these
IDs or names.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if mobile_app = 1:
        5
elif mobile_app = 2:
        3.5
elif mobile_app = &quot;Candy Crush Saga&quot;:
        2
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Mobile App Instance**

 Evaluate impressions based on specific mobile app installations.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">mobile_app_instance</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Mobile app instance ID.
<p>Use <a
href="xandr-api/mobile-app-instance-service.md"
class="xref" target="_blank">Mobile App Instance Service</a> to retrieve
these IDs.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if mobile_app_instance = 1:
        5
elif mobile_app_instance = 2:
        3.5
elif mobile_app_instance = 3:
        2
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Mobile App Bundle**

Evaluate impressions based on specific mobile app bundles.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">mobile_app_bundle</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Mobile app bundle ID.
<p>Use <a
href="xandr-api/mobile-app-instance-service.md"
class="xref" target="_blank">Mobile App Instance Service</a> to retrieve
these IDs.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if mobile_app_bundle in (&quot;553834731&quot;, &quot;com.king.candycrushsaga&quot;):
        5
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Cookie Age**

Evaluate impressions based on how long, in minutes, the user has had a
Xandr cookie.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">cookie_age</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Positive integer representing the
number of minutes that the user has had a Xandr
cookie.
<p>This value can be absent, which indicates that the user does not have
a Xandr cookie.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if cookie_age &gt; 30:
        2
else:
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Predicted IAB Viewability Rate**

(Previously known as "Estimated IAB Viewability Rate".) Evaluate web
display impressions by how likely they are to be measured as viewable by
the IAB standard, as determined by Xandr
optimization.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">predicted_iab_view_rate</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Alias
(deprecated)</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">estimated_iab_viewthrough_rate</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any     </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Decimal number between <code
class="ph codeph">0</code> and <code class="ph codeph">1</code>,
representing a percentage. </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if predicted_iab_view_rate = 1:
        5
elif predicted_iab_view_rate &gt;= 0.75:
        3.5
elif predicted_iab_view_rate &gt;= 0.50:
        2
else:
        0</code></pre></td>
</tr>
</tbody>
</table>

**Predicted IAB Viewability Rate Over Total**

Evaluate web display impressions by how likely they are to be measured
as viewable, over the total number of impressions (viewed / total
impressions), by the IAB standard, as determined by
Xandr optimization.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">predicted_iab_view_rate_over_total</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any     </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Decimal number between <code
class="ph codeph">0</code> and <code class="ph codeph">1</code>,
representing a percentage. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if predicted_iab_view_rate_over_total = 1:
        5
elif predicted_iab_view_rate_over_total &gt;= 0.75:
        3.5
elif predicted_iab_view_rate_over_total &gt;= 0.50:
        2
else:
        0</code></pre></td>
</tr>
</tbody>
</table>

**Predicted IAB Video Viewability Rate**

Evaluate web video impressions by how likely they are to be measured as
viewable by the IAB standard, as determined by
Xandr optimization.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">predicted_iab_video_view_rate</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any     </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Decimal number between <code
class="ph codeph">0</code> and <code class="ph codeph">1</code>,
representing a percentage. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if predicted_iab_video_view_rate = 1:
        5
elif predicted_iab_video_view_rate &gt;= 0.75:
        3.5
elif predicted_iab_video_view_rate &gt;= 0.50:
        2
else:
        0</code></pre></td>
</tr>
</tbody>
</table>

**Predicted IAB Video Viewability Rate Over Total**

Evaluate web video impressions by how likely they are to be measured as
viewable over the total number of impressions (viewed / measured
impressions) by the custom definition of 100% pixels viewable for at
least 1 second, as determined by Xandr
optimization.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"> <strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">predicted_iab_video_view_rate_over_total</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any     </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Decimal number between <code
class="ph codeph">0</code> and <code class="ph codeph">1</code>,
representing a percentage. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if predicted_100pv1s_display_view_rate = 1:
        5
elif predicted_100pv1s_display_view_rate &gt;= 0.75:
    3.5
elif predicted_100pv1s_display_view_rate &gt;= 0.50:
    2
else:
    0</code></pre></td>
</tr>
</tbody>
</table>

**Predicted Display Viewability Rate (100% View, 1 Second Duration)**

Evaluate display video impressions by how likely they are to be measured
as viewable (viewed / measured impressions) by the custom definition of
100% pixels viewable for at least 1 second, as determined by
Xandr optimization.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">predicted_100pv1s_display_view_rate</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Decimal number between <code
class="ph codeph">0</code> and <code class="ph codeph">1</code>,
representing a percentage</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if predicted_100pv50pd_video_view_rate = 1:
        5
elif predicted_100pv50pd_video_view_rate &gt;= 0.75:
        3.5
elif predicted_100pv50pd_video_view_rate &gt;= 0.50:
        2
else:
        0</code></pre></td>
</tr>
</tbody>
</table>

**Predicted Display Viewability Rate Over Total (100% View, 1 Second
Duration)**

Evaluate web display impressions by how likely they are to be measured
as viewable  (viewed / total impressions) by the custom definition of
100% pixels viewable for at least 1 second, as determined by
Xandr optimization.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">predicted_100pv1s_display_view_rate_over_total</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any     </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Decimal number between <code
class="ph codeph">0</code> and <code class="ph codeph">1</code>,
representing a percentage. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if predicted_100pv1s_display_view_rate_over_total = 1:
    5
elif predicted_100pv1s_display_view_rate_over_total &gt;= 0.75:
    3.5
elif predicted_100pv1s_display_view_rate_over_total &gt;= 0.50:
    2
else:
    0</code></pre></td>
</tr>
</tbody>
</table>

**Predicted Video Viewability Rate (100% View, 50% Duration, Sound On)**

Evaluate web video impressions by how likely they are to be measured as
viewable (viewed/measured impressions) where a "view" is defined as an
ad which is 100% visible and has played for at least 50% of its
duration, with the sound on. Likelihood is determined by
Xandr optimization.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">predicted_100pv50pd_video_view_rate</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any     </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Decimal number between <code
class="ph codeph">0</code> and <code class="ph codeph">1</code>,
representing a percentage. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if predicted_100pv50pd_video_view_rate = 1:
        5
elif predicted_100pv50pd_video_view_rate &gt;= 0.75:
        3.5
elif predicted_100pv50pd_video_view_rate &gt;= 0.50:
        2
else:
        0</code></pre></td>
</tr>
</tbody>
</table>

**Predicted Video Viewability Rate Over Total (100% View, 50% Duration,
Sound On)**

Evaluate web video impressions by how likely they are to be measured as
viewable, over total number of impressions (viewed/total impressions),
where a "view" is defined as an ad which is 100% visible and has played
for at least 50% of its duration, with the sound on. Likelihood is
determined by Xandr optimization.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">predicted_100pv50pd_video_view_rate_over_total</code><br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any     </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Decimal number between <code
class="ph codeph">0</code> and <code class="ph codeph">1</code>,
representing a percentage.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if predicted_100pv50pd_video_view_rate_over_total = 1:
        5
elif predicted_100pv50pd_video_view_rate_over_total &gt;= 0.75:
        3.5
elif predicted_100pv50pd_video_view_rate_over_total &gt;= 0.50:
        2
else:
        0</code></pre></td>
</tr>
</tbody>
</table>

**Predicted Video Completion Rate**

Evaluate web video impressions by how likely they are to be completed,
as determined by Xandr optimization.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">predicted_video_completion_rate</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Alias
(Deprecated)</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">estimated_video_completion_rate</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any     </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Decimal number between <code
class="ph codeph">0</code> and <code class="ph codeph">1</code>,
representing a percentage. <code class="ph codeph">0</code> represents
non-video inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if predicted_video_completion_rate = 1:
        5
elif predicted_video_completion_rate &gt;= 0.75:
        3.5
elif predicted_video_completion_rate &gt;= 0.50:
        2
else:
        0</code></pre></td>
</tr>
</tbody>
</table>

**Xandr Intended Audience**

Evaluates impressions based on their intended audience as determined by
the Xandr platform audit. 

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">appnexus</code><code
class="ph codeph">_intended_audience</code><br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">"general"</code>,<code
class="ph codeph">"children"</code>, <code
class="ph codeph">"young_adult"</code>, or <code
class="ph codeph">"mature"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if appnexus_intended_audience = &quot;mature&quot;:
        1
else:
        0</code></pre></td>
</tr>
</tbody>
</table>

**Seller Intended Audience**

Evaluates impressions based on their intended audience as determined by
self-audit. For more information, see "Inventory Self-Classification" in
 documentation (customer login required) and <a
href="xandr-api/profile-service.md"
class="xref" target="_blank">Profile Service</a>.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">seller_intended_audience</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code> .   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">"general"</code>,<code
class="ph codeph">"children"</code>, <code
class="ph codeph">"young_adult"</code>, or <code
class="ph codeph">"mature"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if appnexus_intended_audience = &quot;general&quot;:
        1
else:
        0</code></pre></td>
</tr>
</tbody>
</table>

**Xandr Audited Status**

Evaluates whether inventory has been audited by
Xandr.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">appnexus</code><code
class="ph codeph">_audited</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>.  </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1"><code class="ph codeph">true</code>
or <code class="ph codeph">false</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if appnexus_audited = true:
    1.0
else:
    0.0</code></pre></td>
</tr>
</tbody>
</table>

**Self-Audited Status**

Evaluates whether inventory has been audited by the publisher.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">self_audited</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1"><code class="ph codeph">true</code>
or <code class="ph codeph">false</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if self_audited = true:
    1.0
else:
    0.0</code></pre></td>
</tr>
</tbody>
</table>

**User Group**

Evaluates whether the user belongs to a randomly-assigned group. Each
Xandr user has a persistent user group from 0 to
999. You may want to use the user group to test various strategies in
parallel and compare their performance. Different tests should partition
the thousand user groups differently; otherwise, concurrent tests will
interact with each other and it will be difficult to interpret results. 
For more information, see <a
href="monetize/test-and-control-targeting.md"
class="xref" target="_blank">Test and Control Targeting</a>  in
 documentation (customer login required).

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">user_group</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Integer between <code
class="ph codeph">0</code> and <code class="ph codeph">999</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if user_group &lt;= 249:
    1.0
elif user_group &lt;= 499:
    2.0
elif user_group &lt;= 749:
        3.0
elif user_group &lt;= 999:
        4.0
else:
    0.0</code></pre></td>
</tr>
</tbody>
</table>

**eCampaign Month Frequency (system admins only)**

Evaluate impressions based on the number of impressions seen by a user
for the current campaign in the current month.    

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">campaign_month_frequency</code><br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">=&lt;</code>, <code class="ph codeph">&lt;=</code>,
<code class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Positive integer representing the
number of impressions seen by a user for the current campaign in the
current calendar. <code class="ph codeph">0</code>indicates no frequency
information is available (the user has not seen this object in the
current calendar). <br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if  campaign_month_frequency &lt;  2 :  
     5    
else : 
     0.1</code></pre></td>
</tr>
</tbody>
</table>

**Line Item Month Frequency  
**

Evaluate impressions based on the number of impressions seen by a user
for the current line item in the current month.  

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>Keyword</strong></td>
<td class="entry"><code
class="ph codeph">line_item_month_frequency</code></td>
</tr>
<tr class="even row">
<td class="entry"><strong>Operator</strong></td>
<td class="entry"><code class="ph codeph">=&lt;</code>, <code
class="ph codeph">&lt;=</code>, <code
class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry"><strong>Value</strong></td>
<td class="entry">Positive integer representing the number of
impressions seen by a user for the current line item in the current
month. <code class="ph codeph">0</code> indicates no frequency
information is available (the user has not seen a creative relating to
this object on the current month).<br />
</td>
</tr>
<tr class="even row">
<td class="entry"><strong>Example</strong></td>
<td class="entry"><pre class="pre codeblock"><code>if line_item_month_frequency &lt; 2:  
        5   
else: 
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Advertiser Month Frequency** 

 Evaluate impressions based on the number of ads seen by a user on the
current month.   

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>Keyword</strong></td>
<td class="entry"><code
class="ph codeph">advertiser_month_frequency</code></td>
</tr>
<tr class="even row">
<td class="entry"><strong>Operator</strong></td>
<td class="entry"><code class="ph codeph">=&lt;</code>, <code
class="ph codeph">&lt;=</code>, <code
class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry"><strong>Value</strong></td>
<td class="entry">Positive integer representing the number of ads seen
by a user on the current month. <code class="ph codeph">0</code>
indicates no frequency information is available (the user has not seen
this object on the current month).<br />
</td>
</tr>
<tr class="even row">
<td class="entry"><strong>Example</strong></td>
<td class="entry"><pre class="pre codeblock"><code>if advertiser_month_frequency &lt; 2:  
        5  
else: 
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Campaign Hour Frequency**

Evaluate impressions based on the number of ads seen by a user on the
current hour.     

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>Keyword</strong></td>
<td class="entry"><code
class="ph codeph">campaign_hour_frequency</code><br />
</td>
</tr>
<tr class="even row">
<td class="entry"><strong>Operator</strong></td>
<td class="entry"><code class="ph codeph">=&lt;</code>, <code
class="ph codeph">&lt;=</code>, <code
class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry"><strong>Value</strong></td>
<td class="entry">Positive integer representing the number of ads seen
by a user on the current hour. <code class="ph codeph">0</code>
indicates no frequency information is available (the user has not seen
this object on the current hour).<br />
</td>
</tr>
<tr class="even row">
<td class="entry"><strong>Example</strong></td>
<td class="entry"><pre class="pre codeblock"><code>if campaign_hour_frequency &lt; 2:  
        5   
else: 
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Line Item Hour Frequency**

Evaluate impressions based on the number of ads seen by a user on the
current hour.   

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>Keyword</strong></td>
<td class="entry"><code
class="ph codeph">line_item_hour_frequency</code></td>
</tr>
<tr class="even row">
<td class="entry"><strong>Operator</strong></td>
<td class="entry"><code class="ph codeph">=&lt;</code>, <code
class="ph codeph">&lt;=</code>, <code
class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry"><strong>Value</strong></td>
<td class="entry">Positive integer representing the number of ads seen
by a user on the current hour. <code class="ph codeph">0</code>
indicates no frequency information is available (the user has not seen
this object on the current hour).<br />
</td>
</tr>
<tr class="even row">
<td class="entry"><strong>Example</strong></td>
<td class="entry"><pre class="pre codeblock"><code>if line_item_hour_frequency &lt; 2:  
        5  
else: 
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Advertiser Hour Frequency**

Evaluate impressions based on the number of ads seen by a user on the
current hour.   

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">advertiser_hour_frequency</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">=&lt;</code>, <code class="ph codeph">&lt;=</code>,
<code class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Positive integer representing the
number of ads seen by a user on the current hour. <code
class="ph codeph">0</code> indicates no frequency information is
available (the user has not seen this object on the current hour).<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if advertiser_hour_frequency &lt; 2:  
        2  
else: 
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Campaign Week Frequency (system admins only)**

 Evaluate impressions based on the number of ads seen by a user on the
current week, starting on Sunday.     

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">campaign_week_frequency</code><br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">=&lt;</code>, <code class="ph codeph">&lt;=</code>,
<code class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Positive integer representing the
number of ads seen by a user on the current week. <code
class="ph codeph">0</code> indicates no frequency information is
available (the user has not seen this object on the current
week). <br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if  campaign_week_frequency &lt;  2 :  
     5   
else : 
     0.1</code></pre></td>
</tr>
</tbody>
</table>

**Line Item Week Frequency**

Evaluate impressions based on the number of ads seen by a user on the
current week, starting on Sunday.  

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">line_item_week_frequency</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">=&lt;</code>, <code class="ph codeph">&lt;=</code>,
<code class="ph codeph">presence/absence</code>,<code
class="ph codeph"> in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Positive integer representing the
number of ads seen by a user on the current week. <code
class="ph codeph">0</code> indicates no frequency information is
available (the user has not seen this object on the current week).<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if line_item_week_frequency &lt; 2:  
        5  
else: 
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Advertiser Week Frequency**

Evaluate impressions based on the number of ads seen by a user on the
current week, beginning on Sunday.  

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">advertiser_week_frequency</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">=&lt;</code>, <code class="ph codeph">&lt;=</code>,
<code class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Positive integer representing the
number of ads seen by a user on the current week. <code
class="ph codeph">0</code> indicates no frequency information is
available (the user has not seen this object on the current week).<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if advertiser_week_frequency &lt; 2:  
        5   
else: 
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Campaign Day Frequency (system admins only)**

Evaluate impressions based on the number of ads seen by a user on the
current day.      

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">campaign_day_frequency</code><br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">=&lt;</code>, <code class="ph codeph">&lt;=</code>,
<code class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Positive integer representing the
number of ads seen by a user on the current day. <code
class="ph codeph">0</code> indicates no frequency information is
available (the user has not seen this object on the current day). <br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if  campaign_day_frequency &lt;  2 :  
     5   
else : 
     0.1</code></pre></td>
</tr>
</tbody>
</table>

**Campaign Recency (system admins only)**

Evaluate whether recency data is available for a user, and, if
available, the number of minutes since a user has seen an ad.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">campaign_recency</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">=&lt;</code>, <code class="ph codeph">&lt;=</code>,
<code class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">A positive integer indicating the
number of minutes since a user has seen an impression, rounded down. 59
seconds will evaluate to <code class="ph codeph">0</code>, 61 seconds
will evaluate to 1. <code class="ph codeph">0</code> means the
impression was seen very recently. <code
class="ph codeph">Null</code> means no recency data is available (the
user has not seen this impression before).<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if  campaign_recency &lt;  2 :  
     2   
else : 
     0.1</code></pre></td>
</tr>
</tbody>
</table>

**Line Item Recency**

Evaluate whether recency data is available for a user, and, if
available, the number of minutes since a user has seen an ad. 

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">line_item_recency</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">=&lt;</code>, <code class="ph codeph">&lt;=</code>,
<code class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">A positive integer indicating the
number of minutes since a user has seen an impression, rounded down. 59
seconds will evaluate to <code class="ph codeph">0</code>, 61 seconds
will evaluate to 1. <code class="ph codeph">0</code> means the
impression was seen very recently. <code class="ph codeph">Null</code>
means no recency data is available (the user has not seen this
impression before).<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if line_item_recency &lt; 2:  
        5  
else: 
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Advertiser Recency**

Evaluate whether recency data is available for a user, and, if
available, the number of minutes since a user has seen an ad.    



<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">advertiser_recency</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">=&lt;</code>, <code class="ph codeph">&lt;=</code>,
<code class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">A positive integer indicating the
number of minutes since a user has seen an impression, rounded down. 59
seconds will evaluate to <code class="ph codeph">0</code>, 61 seconds
will evaluate to 1. <code class="ph codeph">0</code> means the
impression was seen very recently. <code class="ph codeph">Null</code>
means no recency data is available (the user has not seen this
impression before).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">if advertiser_recency &lt;2:5else:0.1</code></td>
</tr>
</tbody>
</table>



**Creative** 

Evaluate impressions based on creative. 

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">creative</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">String representing creative ID
(must be an integer).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if creative=12345:
    5
else:
    0.1</code></pre></td>
</tr>
</tbody>
</table>

  
**Creative Size**

Evaluate impressions based on creative size. 

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">creative_size</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>. To test for multiple values, use <code
class="ph codeph">in</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">String representing creative
dimensions, formatted as <code
class="ph codeph">"WIDTHxHEIGHT"</code>.  </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if creative_size = &quot;300x250&quot;:
        5
elif creative_size = &quot;250x250&quot;:
        3
else:
        0.1</code></pre></td>
</tr>
</tbody>
</table>

  
**Deal ID**

Evaluate impressions based on Deal ID.  

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">deal_id</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any except range.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">String representing deal ID as an
integer. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if deal_id in (12345,98765):
      1.0
else:
      0.1</code></pre></td>
</tr>
</tbody>
</table>

  
**Random1, Random2, Random 3**

Evaluate impressions based on a randomizing variable between `0` and
`1`. When used, this parameter adds some randomness to the Bonsai
algorithm.  

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">random1</code>, <code
class="ph codeph">random2</code>, <code
class="ph codeph">random3</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"> Any. To test for multiple values,
use <code class="ph codeph">in</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">A value between <code
class="ph codeph">0</code> and <code class="ph codeph">1</code>,
formatted as a decimal up to 6 decimal places.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if random1 &gt; 0.8:
      1.0
elif random1 range (0.4, 0.8):
      2.0
else:
      0.1</code></pre></td>
</tr>
</tbody>
</table>

**Inventory URL ID**

Evaluate impressions based on the Inventory URL ID\* which maps to an
inventory URL.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">inventory_url_id</code><br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">Any except <code
class="ph codeph">&lt;</code>, <code class="ph codeph">&gt;</code>,
<code class="ph codeph">&lt;=</code>, <code
class="ph codeph">&gt;=</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Inventory URL ID (an integer).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if inventory_url_id=12345:
    5
else:
    0.1</code></pre></td>
</tr>
</tbody>
</table>

\* Only available on Augmented Line Items





## Compound Features

The simple features above let you evaluate a single aspect of the
impression (country, cookie age, mobile app, etc.). The
compound <a href="bonsai-language-features.md#ID-00001787__segment"
class="xref">Segment</a> and <a href="bonsai-language-features.md#ID-00001787__frequency_recency"
class="xref">Frequency/Recency</a> features are more nuanced; they let
you evaluate multiple attributes of these features, such as the age of a
segment or the segment value.

**Segment**

- <a
  href="bonsai-language-features.md#ID-00001787__segment_presence_absence"
  class="xref">Segment Presence/Absence</a>
- <a href="bonsai-language-features.md#ID-00001787__segment_age"
  class="xref">Segment Age</a>
- <a href="bonsai-language-features.md#ID-00001787__segment_value"
  class="xref">Segment Value</a>

**Segment Presence/Absence**

Evaluate impressions based on the presence of the user in a first-party
or third-party segment. 

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">segment[ID]</code>
<p>where <code class="ph codeph">ID</code> is the segment ID. Use <a
href="xandr-api/segment-service.md"
class="xref" target="_blank">Segment Service</a> to retrieve segment
IDs.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Attribute</strong></td>
<td class="entry colsep-1 rowsep-1">None</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1">None for presence, <code
class="ph codeph">not</code> for absence</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">None</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if any segment[12345], segment[23456], segment[34567]: 
        5 
elif any segment[76543], segment[65432], segment[54321]: 
        3 
elif not segment[9999]: 
        1 
else: 
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Segment Age**

Evaluate impressions based on the minutes since the user was added to a
first-party or third-party segment.



Note: If the user is not in the
segment, this feature evaluates to `False`.



<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">segment[ID]</code>
<p>where <code class="ph codeph">ID</code> is the segment ID. Use <a
href="xandr-api/segment-service.md"
class="xref" target="_blank">Segment Service</a> to retrieve segment
IDs.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Attribute</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">.age</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code class="ph codeph">&lt;</code>
, <code class="ph codeph">&gt;</code> , or <code
class="ph codeph">=</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Positive integer representing the
minutes since the user was added to the segment.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if segment[12345].age &lt; 5:  
        2  
else:  
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Segment Value**

Evaluate impressions based on a user-defined value.  The value may be
passed in a number of ways, for example, through the Batch Segment
Service or a first-party or third-party segment query string. For more
information on passing values through segment query strings, see  "<a
href="invest/segment-pixels-advanced.md"
class="xref" target="_blank">Segment Pixels Advanced</a>" in
 documentation (customer login required).



Note: If the user is not in the
segment, this feature evaluates to `False`.



<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">segment[ID]</code>
<p>where <code class="ph codeph">ID</code> is the segment ID. Use the <a
href="xandr-api/segment-service.md"
class="xref" target="_blank">Segment Service</a> to retrieve segment
IDs.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Attribute</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">.value</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code class="ph codeph">&lt;</code>
, <code class="ph codeph">&gt;</code> , or <code
class="ph codeph">=</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Non-zero, positive integer
representing the user-defined value.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if segment[12345].value = 5:  
        2  
else:  
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Frequency/Recency**

- <a
  href="bonsai-language-features.md#ID-00001787__frequency_presence_absence"
  class="xref">Frequency Presence/Absence</a>
- <a href="bonsai-language-features.md#ID-00001787__lifetime_frequency"
  class="xref">Lifetime Frequency</a>
- <a href="bonsai-language-features.md#ID-00001787__daily_frequency"
  class="xref">Daily Frequency</a>
- <a
  href="bonsai-language-features.md#ID-00001787__recency_presence_absence"
  class="xref">Recency Presence/Absence and Data</a>

**Frequency Presence/Absence**

Evaluate whether or not frequency data is available for the user. This
can be determined for all ads under an advertiser, line item, or
campaign.   

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">frequency</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Attribute</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">OBJECT[ID].</code>
<p>where <code class="ph codeph">OBJECT</code> is <code
class="ph codeph">advertiser</code>, <code
class="ph codeph">line_item</code>, or <code
class="ph codeph">campaign</code>, and <code class="ph codeph">ID</code>
is the object ID. Use the <a
href="xandr-api/advertiser-service.md"
class="xref" target="_blank">Advertiser Service</a>, <a
href="xandr-api/line-item-service.md"
class="xref" target="_blank">Line Item Service</a>, or <a
href="xandr-api/campaign-service.md"
class="xref" target="_blank">Campaign Service</a> to retrieve
IDs.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code class="ph codeph">&lt;</code>
, <code class="ph codeph">&gt;</code> , or <code
class="ph codeph">=</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1"><code class="ph codeph">0</code>
indicates that the user has never seen an impression for this object; a
positive integer indicates that frequency information is available.

Note: Unlike recency, frequency data is
never null. If a user has never seen an impression for this object,
frequency is <code class="ph codeph">0</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if line_item[15].frequency &gt; 0:  
    2  
elif campaign[20].frequency &gt; 0:  
    1.5  
elif campaign[23].frequency &gt; 0:  
    1  
else:  
    0.1</code></pre></td>
</tr>
</tbody>
</table>

**Lifetime Frequency**

Evaluate impressions based on the number of ads seen by a user over the
lifetime of an advertiser, line item, or campaign.  

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">lifetime_frequency</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Attribute</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">OBJECT[ID].</code>
<p>where <code class="ph codeph">OBJECT</code> is <code
class="ph codeph">advertiser</code>, <code
class="ph codeph">line_item</code>, <code
class="ph codeph">campaign</code>, or <code
class="ph codeph">creative</code>, and <code class="ph codeph">ID</code>
is the object ID. Use the <a
href="xandr-api/advertiser-service.md"
class="xref" target="_blank">Advertiser Service</a>, <a
href="xandr-api/line-item-service.md"
class="xref" target="_blank">Line Item Service</a>, or <a
href="xandr-api/campaign-service.md"
class="xref" target="_blank">Campaign Service</a> to retrieve
IDs.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">=&lt;</code>, <code class="ph codeph">&lt;=</code>,
<code class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Positive integer representing the
number of ads seen by a user over the lifetime of the object. <code
class="ph codeph">0</code> indicates no frequency information is
available (the user has never seen this object).<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if campaign[20].lifetime_frequency &lt; 2:  
        5  
elif advertiser[12].lifetime_frequency &lt; 10:  
        4  
elif advertiser[12].lifetime_frequency &lt; 20:  
        2  
else:  
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Daily Frequency**

Evaluate impressions based on the number of impressions seen by a user
on the current day. This can be determined for an advertiser, line item,
or campaign.  

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">day_frequency</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Attribute</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">OBJECT[ID].</code>
<p>where <code class="ph codeph">OBJECT</code> is <code
class="ph codeph">advertiser</code>, <code
class="ph codeph">line_item</code>, or <code
class="ph codeph">campaign</code>, and <code class="ph codeph">ID</code>
is the object ID. Use the <a
href="xandr-api/advertiser-service.md"
class="xref" target="_blank">Advertiser Service</a>, <a
href="xandr-api/line-item-service.md"
class="xref" target="_blank">Line Item Service</a>, or <a
href="xandr-api/campaign-service.md"
class="xref" target="_blank">Campaign Service</a> to retrieve
IDs.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">=&lt;</code>, <code class="ph codeph">&lt;=</code>,
<code class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">Positive integer representing the
number of ads seen by a user on the current day. <code
class="ph codeph">0</code> indicates no frequency information is
available (the user has not seen this object on the current day).<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if campaign[20].day_frequency &lt; 2:  
        5  
elif advertiser[12].day_frequency &lt; 10:  
        4  
elif advertiser[12].day_frequency &lt; 20:  
        2  
else: 
        0.1</code></pre></td>
</tr>
</tbody>
</table>

**Recency Presence/Absence and Data  
**

Evaluates whether recency data is available for a user, and, if
available, the number of minutes since a user has seen an ad. This can
be determined for a user for all ads under an advertiser, line item, or
campaign.

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Keyword</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">recency</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Attribute</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">OBJECT[ID].</code>
<p>where <code class="ph codeph">OBJECT</code> is <code
class="ph codeph">advertiser</code>, <code
class="ph codeph">line_item</code>, or <code
class="ph codeph">campaign</code>, and <code class="ph codeph">ID</code>
is the object ID. Use the <a
href="xandr-api/advertiser-service.md"
class="xref" target="_blank">Advertiser Service</a>, <a
href="xandr-api/line-item-service.md"
class="xref" target="_blank">Line Item Service</a>, or <a
href="xandr-api/campaign-service.md"
class="xref" target="_blank">Campaign Service</a> to retrieve
IDs.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">=&lt;</code>, <code class="ph codeph">&lt;=</code>,
<code class="ph codeph">presence/absence</code>, <code
class="ph codeph">in</code>, <code class="ph codeph">comparison</code>,
<code class="ph codeph">not</code>, and <code
class="ph codeph">range</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry colsep-1 rowsep-1">A positive integer indicating the
number of minutes since a user has seen an impression, rounded down. 59
seconds will evaluate to <code class="ph codeph">0</code>, 61 seconds
will evaluate to 1. <code class="ph codeph">0</code> means the
impression was seen very recently. <code class="ph codeph">Null</code>
means no recency data is available (the user has not seen this
impression before).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><strong>Example</strong></td>
<td class="entry colsep-1 rowsep-1"><pre
class="pre codeblock"><code>if not advertiser.recency:
        0.1
elif advertiser[3].recency &gt; 60:  
        1  
else:  
        0.2</code></pre></td>
</tr>
</tbody>
</table>

**Examples of Compound Feature Syntax Using Multiple Attributes**

**Example of multiple segment attributes**

``` pre
# This tree determines a bid price as follows:
# 1. If the user is in segment 3 and has a value greater than 1 or has been in the segment for 5 minutes, bid $1.
# 2. Otherwise, bid $2.
if any segment[3].value > 1, segment[3].age = 5:
    1.0
else:
    2.0  
```

**Example of recency/frequency syntax with multiple attributes**

``` pre
# This tree determines a bid price as follows:
# 1. If there's no recency data for this user related to ads in line item 3, bid $1.
# 2. If the user has seen an ad in line item 3 more than 5 minutes ago and the user has seen an ad in campaign 2 less than four times today, bid $3.
#3. If the user has seen an ad in line item 1 more than 5 times ever or more than 4 times today, or if the user has seen an ad in advertiser 2 more than 4 times today, bid $0.50.
#4. Otherwise, bid nothing.
if not line_item[3].recency: 
        1
elif every line_item[3].recency > 5, campaign[2].day_frequency < 4: 
        3 
elif any line_item[1].lifetime_frequency > 5, line_item[1].day_frequency > 4, advertiser[2].day_frequency > 4: 
        0.50 
else: 
        0  
```

**Example of multiple compound attributes**

``` pre
# This tree determines a bid price as follows:
# 1. If this user is in segment 3 and has a value greater than 1 or has been in the segment for 5 minutes, bid $1.
# 2. If the user has seen an ad in line item 3 more than 5 minutes ago and an ad in campaign 2 less than four times today, bid $3.
# 3. If the user has seen an ad in line item 1 more than 5 times ever or more than 4 times today, or if the user has seen an ad in advertiser 2 more than 4 times today, bid $0.50.
# 4. Otherwise, bid nothing.
if any segment[3].value > 1, segment[3].age = 5:
    1
elif every line_item[3].recency > 5, campaign[2].day_frequency < 4: 
        3 
elif any line_item[1].lifetime_frequency > 5, line_item[1].day_frequency > 4, advertiser[2].day_frequency > 4: 
        0.50 
else: 
        0  
```










