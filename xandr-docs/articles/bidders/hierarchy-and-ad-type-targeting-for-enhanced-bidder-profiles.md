---
Title : Hierarchy and Ad Type Targeting for Enhanced Bidder Profiles
Description : ## Hierarchy
ms.date : 10/28/2023
In the past, bidder profiles had a parent/child hierarchy. This added
---


# Hierarchy and Ad Type Targeting for Enhanced Bidder Profiles





## Hierarchy

In the past, bidder profiles had a parent/child hierarchy. This added
additional complexity to the bidder profiles. Now bidder profiles have
only a single level. For traffic to get through, it only needs to meet
the requirement of one active profile. This results in a very simple,
manageable system that is an ally in troubleshooting endeavors.

In summary:

- Bidder profiles will only have a single level.
  - There will no longer be a parent/child hierarchy.
- The impression must meet all the requirements of any of the profile
  objects to be sent to the bidder (see the chart below for more
  information).
  - OR relationship across profile objects
  - AND relationship within the profile

**Hierarchy For Bidder Profiles**

The impression must meet <u>all</u> the requirements <u>of at least
one</u> profile object to be sent to the bidder.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000021e3__entry__1"
class="entry colsep-1 rowsep-1">Description of Behavior</th>
<th id="ID-000021e3__entry__2"
class="entry colsep-1 rowsep-1">Example</th>
<th id="ID-000021e3__entry__3"
class="entry colsep-1 rowsep-1">Formula</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__entry__1">Profiles will have an OR relationship
across profile objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__entry__2">There are 3 profiles associated with the
bidder:
<ul>
<li>P1: include country, Canada</li>
<li>P2: exclude ad type, Banner</li>
<li>P3: include Exchange 1</li>
</ul>
<p>An impression must meet the requirement of either P1, P2, or P3. It
does not need to meet the requirements of all 3 profiles.</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000021e3__entry__3">P1
OR P2 OR P3</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__entry__1">Profiles will have an AND relationship
within the profile object.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__entry__2">There is a single profile object
associated with a bidder:
<ul>
<li>P1 includes ad type, banner (V1) and includes Exchange 1, Direct
(V2)</li>
</ul>
<p>The incoming impression must come from a member in Exchange 1, Direct
<u>and</u> be a banner ad type.</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000021e3__entry__3">V1
AND V2</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__entry__1">Profiles will have an OR relationship
within fields</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__entry__2">There is a single profile object
associated with a bidder:
<ul>
<li>P1 includes ad type, banner (F1) and ad type, video (F2)</li>
</ul>
<p>The incoming impression can be either a banner or video in order to
pass profile check.</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000021e3__entry__3">F1
OR F2</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__entry__1">Combined behavior within and across
profiles</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__entry__2">There are 2 profiles associated with the
bidder:
<ul>
<li>P1: include country, Canada (V1) and Exchange 2, Connect (V2)</li>
<li>P2: excludes ad type, Banner (V3) and includes country, Belgium
(V4)</li>
</ul>
<p>The incoming impression must either be from Canada and a member in
the Connect Exchange or a banner impression from Belgium.</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000021e3__entry__3">(V1
and V2) OR (V3 and V4)</td>
</tr>
</tbody>
</table>




## Media Type Targeting - Sizes and Ad Types

In the past, profiles did not support filtering or targeting by a
specific ad type (banner, native, audio, video). A bidder could exclude
both native and video by including all other sizes besides 1x1 in the
sizes target array. Similarly, you could target native and video by
including only 1x1.

In Enhanced Bidder Profiles, we wanted to give users the ability to
target/filter on ad types. This will give maximum flexibility to our
partners. In addition, video and banner ad types will have a "sizes"
action to allow filtering/targeting by sizes for those specific ad
types. 

The following rules apply:

- An ad type must be explicitly excluded in a PUT/POST in order to be
  excluded
  - Otherwise it is implied to be included
- If no size is listed, then all sizes are assumed to be excluded or
  included (depending on ad type action)
- If a size is listed, then it is included or excluded depending on the
  action for that ad type
- Sizes only apply to video and banner ad types
- 1x1 and 0x0 sizes are not allowed in the sizes object

<table id="ID-000021e3__table_mbk_yk2_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000021e3__table_mbk_yk2_nwb__entry__1"
class="entry colsep-1 rowsep-1">Use Case</th>
<th id="ID-000021e3__table_mbk_yk2_nwb__entry__2"
class="entry colsep-1 rowsep-1">PUT/POST Call</th>
<th id="ID-000021e3__table_mbk_yk2_nwb__entry__3"
class="entry colsep-1 rowsep-1">GET Response</th>
<th id="ID-000021e3__table_mbk_yk2_nwb__entry__4"
class="entry">Note</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__1">Exclude native ad
type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__2"><pre
id="ID-000021e3__codeblock_nbk_yk2_nwb"
class="pre codeblock"><code>{
        &quot;bidder_profile&quot;: {
                &quot;code&quot;: &quot;test_1&quot;,
                &quot;description&quot;: &quot;Test Profile&quot;,
                &quot;targeting&quot;: {
                        &quot;ad_types&quot;: {
                                &quot;native&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                }
                        }
                }
        }
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__3"><pre
id="ID-000021e3__codeblock_obk_yk2_nwb"
class="pre codeblock"><code>{
        &quot;bidder_profile&quot;: {
                &quot;id&quot;: 2,
                &quot;bidder_id&quot;: 129,
                &quot;code&quot;: &quot;test_1&quot;,
                &quot;description&quot;: &quot;Test Profile&quot;,
                &quot;targeting&quot;: {
                        &quot;ad_types&quot;: {
                                &quot;native&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;banner&quot;: {
                                        &quot;action&quot;: &quot;include&quot;
                                },
                                &quot;video&quot;: {
                                        &quot;action&quot;: &quot;include&quot;
                                },
                                &quot;audio&quot;: {
                                        &quot;action&quot;: &quot;include&quot;
                                }
                        }
                },
                &quot;last_activity&quot;: &quot;2018-04-19 21:06:36&quot;,
                &quot;created_on&quot;: &quot;2018-04-19 21:06:36&quot;
        }
}</code></pre></td>
<td class="entry" headers="ID-000021e3__table_mbk_yk2_nwb__entry__4">The
GET call will output the remaining ad types as included.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__1">Include only the
banner ad type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__2"><pre
id="ID-000021e3__codeblock_pbk_yk2_nwb"
class="pre codeblock"><code>{
        &quot;bidder_profile&quot;: {
                &quot;code&quot;: &quot;test_1&quot;,
                &quot;description&quot;: &quot;Test Profile&quot;,
                &quot;targeting&quot;: {
                        &quot;ad_types&quot;: {
                                &quot;native&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;banner&quot;: {
                                        &quot;action&quot;: &quot;include&quot;
                                },
                                &quot;audio&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;video&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                }
                        }
                }
        }
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__3"><pre
id="ID-000021e3__codeblock_qbk_yk2_nwb"
class="pre codeblock"><code>{
        &quot;bidder_profile&quot;: {
                &quot;id&quot;: 2,
                &quot;bidder_id&quot;: 129,
                &quot;code&quot;: &quot;test_1&quot;,
                &quot;description&quot;: &quot;Test Profile&quot;,
                &quot;targeting&quot;: {
                        &quot;ad_types&quot;: {
                                &quot;native&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;banner&quot;: {
                                        &quot;action&quot;: &quot;include&quot;
                                },
                                &quot;video&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;audio&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                }
                        }
                }
        }
}</code></pre></td>
<td class="entry" headers="ID-000021e3__table_mbk_yk2_nwb__entry__4">All
the other ad types must be explicitly excluded in order to include only
a single ad type.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__1">Include only banner
ad type with size 200x100</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__2"><pre
id="ID-000021e3__codeblock_rbk_yk2_nwb"
class="pre codeblock"><code>{
        &quot;bidder_profile&quot;: {
                &quot;id&quot;: 2,
                &quot;code&quot;: &quot;test_1&quot;,
                &quot;description&quot;: &quot;Test Profile&quot;,
                &quot;targeting&quot;: {
                        &quot;ad_types&quot;: {
                                &quot;native&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;banner&quot;: {
                                        &quot;action&quot;: &quot;include&quot;,
                                        &quot;sizes&quot;: [{
                                                &quot;width&quot;: 200,
                                                &quot;height&quot;: 100
                                        }]
                                },
                                &quot;audio&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;video&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                }
                        }
                }
        }
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__3"><pre
id="ID-000021e3__codeblock_sbk_yk2_nwb"
class="pre codeblock"><code>{
        &quot;bidder_profile&quot;: {
                &quot;id&quot;: 2,
                &quot;bidder_id&quot;: 129,
                &quot;code&quot;: &quot;test_1&quot;,
                &quot;description&quot;: &quot;Test Profile&quot;,
                &quot;targeting&quot;: {
                        &quot;ad_types&quot;: {
                                &quot;native&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;banner&quot;: {
                                        &quot;action&quot;: &quot;include&quot;,
                                        &quot;sizes&quot;: [{
                                                &quot;width&quot;: 200,
                                                &quot;height&quot;: 100
                                        }]
                                },
                                &quot;video&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;audio&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                }
                        }
                }
        }
}</code></pre></td>
<td class="entry" headers="ID-000021e3__table_mbk_yk2_nwb__entry__4">The
sizes object must be included within the banner ad type. No other banner
sizes will pass through this profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__1">Include a video ad
type with size 1x1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__2"><pre
id="ID-000021e3__codeblock_tbk_yk2_nwb"
class="pre codeblock"><code>{
        &quot;bidder_profile&quot;: {
                &quot;id&quot;: 2,
                &quot;code&quot;: &quot;test_1&quot;,
                &quot;description&quot;: &quot;Test Profile&quot;,
                &quot;targeting&quot;: {
                        &quot;ad_types&quot;: {
                                &quot;native&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;banner&quot;: {
                                        &quot;action&quot;: &quot;include&quot;
                                },
                                &quot;audio&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;video&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;,
                                        &quot;sizes&quot;: [{
                                                &quot;width&quot;: 1,
                                                &quot;height&quot;: 1
                                        }]
                                }
                        }
                }
        }
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__3">N/A - Error</td>
<td class="entry" headers="ID-000021e3__table_mbk_yk2_nwb__entry__4">We
do not support targeting 1x1 or 0x0 sizes for ad types.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__1">Target the native ad
type with size</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__2"><pre
id="ID-000021e3__codeblock_ubk_yk2_nwb"
class="pre codeblock"><code>{
        &quot;bidder_profile&quot;: {
                &quot;id&quot;: 2,
                &quot;code&quot;: &quot;test_1&quot;,
                &quot;description&quot;: &quot;Test Profile&quot;,
                &quot;targeting&quot;: {
                        &quot;ad_types&quot;: {
                                &quot;native&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;,
                                        &quot;sizes&quot;: [{
                                                &quot;width&quot;: 100,
                                                &quot;height&quot;: 100
                                        }]
                                },
                                &quot;banner&quot;: {
                                        &quot;action&quot;: &quot;include&quot;
                                },
                                &quot;audio&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;video&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                }
                        }
                }
        }
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__3">N/A - Error</td>
<td class="entry"
headers="ID-000021e3__table_mbk_yk2_nwb__entry__4">Size targeting is not
supported for audio and native at this time.</td>
</tr>
</tbody>
</table>




## **Related Topics**

- <a href="exchange-service.md" class="xref">Exchange Service</a>
- <a href="enhanced-bidder-profiles.md" class="xref">Enhanced Bidder
  Profiles</a>
- <a href="api-use-cases-for-enhanced-bidder-profiles.md"
  class="xref">API Use Cases for Enhanced Bidder Profiles</a>
- <a
  href="frequently-asked-questions-faq-for-enhanced-bidder-profiles.md"
  class="xref">Frequently Asked Questions (FAQ) for Enhanced Bidder
  Profiles</a>
- <a href="changelog-for-enhanced-bidder-profiles.md"
  class="xref">Changelog for Enhanced Bidder Profiles</a>
- <a href="bidder-profile-migration-guide.md" class="xref">Bidder
  Profile Migration Guide</a>






