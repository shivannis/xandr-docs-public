# Instant Audience Service

<div class="body">

<div class="note">

<span class="notetitle">Note:</span>

Alpha-Beta Notice: This field or feature is part of functionality
currently in either Alpha or Beta phase. It is therefore subject to
change.

</div>

The Instant Audience Service is a server-side method that uses a
streaming architecture to add individual or small groups of users to
segments, via the Digital Platform API. Rather than aggregating and
periodically sending large batches of data using the Batch Segment
Service, the Instant Audience Service associates' users to segments in
close to real-time. Our target SLA for adding users to segments with
this service is 2 minutes. This is useful if you have real-time audience
remodeling requirements.

<div class="section">

## Configure the Service

If you're already using the Batch Segment Service, you can skip this
part and proceed to <a
href="instant-audience-service.html#ID-000004de__instant_audience_service_authenticate"
class="xref">Authenticate</a>. If you're a brand-new client and wish to
start using the Instant Audience Service, you will need to open a ticket
with and provide the following information:

1.  Are you using external user IDs (i.e., you use mapUID to store the
    mapping with <span class="ph">Xandr</span>)? If you use another
    member's external user IDs, include their `member_id` as well.
2.  Do you need to populate segments belonging to other members? If so,
    provide the associated `member_ids.`
3.  When you would like your segments to expire by default (e.g., never
    expire, expire 60 days from now, etc.)? Note that if you include
    EXPIRATION in your seg block, your default expiration will not be
    used.
4.  The following questions are for our internal capacity planning:
    - What is the number of unique user IDs per post?
    - What is the number of expected posts per day?
    - What is the number of unique segments per post?

</div>

<div id="ID-000004de__instant_audience_service_authenticate"
class="section">

## Authenticate

Refer to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/authentication-service.html"
class="xref" target="_blank">Authentication Service</a> for a general
overview on how to make calls to the <span class="ph">Xandr</span>
API. Just like any other service, you'll authenticate
against <a href="https://api.appnexus.com./" class="xref"
target="_blank">https://api.<span class="ph">appnexus</span>.com</a>.
However, subsequent calls will be made to the Instant Audience Service
at <a href="https://streaming-data.appnexus.com/" class="xref"
target="_blank">https://streaming-data.<span
class="ph">appnexus</span>.com</a>.

<div class="note">

<span class="notetitle">Note:</span> In the authentication response,
make note of the token as it will be needed for subsequent calls to the
Instant Audience Service.

</div>

Example response from the Authentication Service:

``` pre
{
    "response": {
        "status": "OK",
        "token": "hbapi:123456:9876abcd54321:nym2",
        "dbg_info": {
            ...
        }
    }
}                     
```

The token returned in the response must be included in subsequent calls
to the Instant Audience Service in the authorization header or as an
`access_token` query string parameter, as shown in the following
examples:

**Authorization header**

`curl -X POST -H "Authorization: hbapi:123456:9876abcd54321:nym2" https://streaming-data.`<span class="ph">`appnexus`</span>`.com/rt-segment`

**Query string**

`curl -X POST https://streaming-data.`<span class="ph">`appnexus`</span>`.com/rt-segment?access_token=hbapi:123456:9876abcd54321:nym2`

</div>

<div class="section">

## Adding/Removing Users from Segments

After authenticating, you're now ready to add/remove a user to/from a
segment, via a JSON file.

<div class="note">

<span class="notetitle">Note:</span>

Be sure to wait approximately 20 minutes before trying to add users to
any newly created segments (to allow these segments to be propagated to
all servers). As a best practice, try to minimize the creation of new
segments, re-use existing segments where possible or use segment
`values` to further sub-divide users within existing segments. These
practices will ensure successful user add/remove to/from segments. For
details on creating segment `values`, see <a
href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/segment-pixels-advanced.html"
class="xref" target="_blank">Segment Pixels: Advanced</a> and
<a href="segment-targeting.html" class="xref">Segment Targeting</a> in
<span class="ph">Xandr</span> documentation.

</div>

The following example demonstrates how to assign a user to two segments.
In this example, the member is adding user ID 12345678900987654321 (this
is a <span class="ph">Xandr</span> user id) to segments 10001 and 10002,
setting both associations with value = 1 and expiration within 1440
minutes.

**Example on how to assign a user to two segments**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>API Call</strong></td>
<td class="entry cell-noborder"><code
id="ID-000004de__codeblock_z5d_k32_lwb"
class="ph codeph">curl -X POST -H "Authorization: hbapi:123456:9876abcd54321:nym2" -d @json/segment.json "https://streaming-data.</code><span
class="ph"><code id="ID-000004de__codeblock_z5d_k32_lwb"
class="ph codeph">appnexus</code></span><code
id="ID-000004de__codeblock_z5d_k32_lwb"
class="ph codeph">.com/rt-segment" </code></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>JSON Payload</strong></td>
<td class="entry cell-noborder"><pre
class="pre codeblock"><code>{
    &quot;rt_segment&quot;: [
        {
            &quot;user_id&quot;: &quot;12345678900987654321&quot;,
            &quot;seg_block&quot;: [
                {
                    &quot;seg_id&quot;: 10001,
                    &quot;seg_code&quot;: null,
                    &quot;value&quot;: 1,
                    &quot;expiration&quot;: 1440,
                    &quot;member_id&quot;: null
                },
                {
                    &quot;seg_id&quot;: 10002,
                    &quot;seg_code&quot;: null,
                    &quot;value&quot;: 1,
                    &quot;expiration&quot;: 1440,
                    &quot;member_id&quot;: null
                }
            ],
            &quot;domain&quot;: null
        }
    ]
}</code></pre></td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
style="vertical-align: top"><strong>Response</strong></td>
<td class="entry cellborder"><pre
class="pre codeblock"><code>{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;message&quot;: {
            &quot;users_in_request&quot;: 1,
            &quot;segments_in_request&quot;: 2
        },
        &quot;warnings&quot;: [
        ]
    }
}</code></pre></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## JSON Fields

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d2341e263" class="entry nocellnoborder"
style="vertical-align: top"> </th>
<th id="d2341e265" class="entry nocellnoborder"
style="vertical-align: top">Field</th>
<th id="d2341e268" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d2341e271" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td rowspan="3" class="entry nocellnoborder"
style="vertical-align: top" headers="d2341e263 "><code
class="ph codeph">rt_segment array</code></td>
<td class="entry nocellnoborder"
headers="d2341e265 "><code class="ph codeph">user_id</code></td>
<td class="entry nocellnoborder"
headers="d2341e268 ">string</td>
<td class="entry cell-noborder"
headers="d2341e271 ">This would either be the <span
class="ph">Xandr</span> <code class="ph codeph">user_id</code> or an id
based on the domain, such as "AEBE52E7-03EE-455A-B3C4-E57283966239", as
an example of a device identifier.
<p><strong>Required</strong>: At least one. </p></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d2341e265 "><code class="ph codeph">seg_block</code></td>
<td class="entry nocellnoborder"
headers="d2341e268 ">array</td>
<td class="entry cell-noborder"
headers="d2341e271 ">Array of segment blocks for segments to associate
with the user (see segment block structure below).
<p><strong>Required</strong>: At least one. </p></td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d2341e265 "><code class="ph codeph">domain</code></td>
<td class="entry nocellnoborder"
headers="d2341e268 ">string</td>
<td class="entry cell-noborder"
headers="d2341e271 ">Type of identifier being used in the request, such
as <span class="ph">Xandr</span> user ID (represented with <code
class="ph codeph">null</code>) or device identifier (<code
class="ph codeph">idfa</code>, <code class="ph codeph">sh1udid</code>,
<code class="ph codeph">md5udid</code>, <code
class="ph codeph">openudid</code>, and <code
class="ph codeph">aaid</code>).
<div class="note">
<span class="notetitle">Note:</span> Do not use <code
class="ph codeph">sha1mac</code>, which was deprecated in 2019.
</div></td>
</tr>
<tr class="even ">
<td rowspan="5" class="entry nocellnoborder"
style="vertical-align: top" headers="d2341e263 "><code
class="ph codeph">seg_block array</code>    </td>
<td class="entry nocellnoborder"
headers="d2341e265 "><code class="ph codeph">seg_id</code></td>
<td class="entry nocellnoborder"
headers="d2341e268 ">int</td>
<td class="entry cell-noborder"
headers="d2341e271 ">The <span class="ph">Xandr</span> segment ID.
<p><strong>Required</strong>: If not using <code
class="ph codeph">seg_code</code> and <code
class="ph codeph">member_id</code> to identify segment.</p></td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d2341e265 "><code class="ph codeph">seg_code</code></td>
<td class="entry nocellnoborder"
headers="d2341e268 ">string</td>
<td class="entry cell-noborder"
headers="d2341e271 ">A user-defined name for the segment.
<div class="note">
<span class="notetitle">Note:</span> You may either include <code
class="ph codeph">SEG_CODE</code> and <code
class="ph codeph">member_id</code> or <code
class="ph codeph">SEG_ID,</code> but not both.
<p><strong>Required</strong>: If not using <code
class="ph codeph">seg_ID</code> to identify segment.</p>
</div></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d2341e265 "><code class="ph codeph">value</code></td>
<td class="entry nocellnoborder"
headers="d2341e268 ">int</td>
<td class="entry cell-noborder"
headers="d2341e271 ">A numeric value you would like to assign to a
segment.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d2341e265 "><code class="ph codeph">expiration</code></td>
<td class="entry nocellnoborder"
headers="d2341e268 ">int</td>
<td class="entry cell-noborder"
headers="d2341e271 ">The lifetime of the user-segment association in
minutes, starting from when we read it. A value of <code
class="ph codeph">0</code> means that the segment will never
expire; <code class="ph codeph">-1</code> means that the user will be
removed from this segment.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d2341e265 "><code class="ph codeph">member_id</code></td>
<td class="entry nocellnoborder"
headers="d2341e268 ">int</td>
<td class="entry cell-noborder"
headers="d2341e271 ">The member ID of the segment owner for the
seg_block.
<p><strong>Required</strong>: If using <code
class="ph codeph">seg_code.</code> </p></td>
</tr>
<tr class="odd ">
<td rowspan="3" class="entry nocellnoborder"
style="vertical-align: top" headers="d2341e263 "><code
class="ph codeph">Response</code></td>
<td class="entry nocellnoborder"
headers="d2341e265 "><code class="ph codeph">status</code></td>
<td class="entry nocellnoborder"
headers="d2341e268 ">string</td>
<td class="entry cell-noborder"
headers="d2341e271 ">Describes whether the add/remove went through or
resulted in an error.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d2341e265 "><code
class="ph codeph">users_in_request</code></td>
<td class="entry nocellnoborder"
headers="d2341e268 ">int</td>
<td class="entry cell-noborder"
headers="d2341e271 ">The number of users read in the request.
<div class="note">
<span class="notetitle">Note:</span> This will simply show the number of
users initially detected in the request regardless of whether they are
valid.
</div></td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d2341e265 "><code
class="ph codeph">segments_in_request</code></td>
<td class="entry -nocellborder"
headers="d2341e268 ">int</td>
<td class="entry cellborder"
headers="d2341e271 ">The number of segments read in the request.
<div class="note">
<span class="notetitle">Note:</span> This will simply show the number of
segments initially detected in the request regardless of whether they
are valid in our system, and without regard to what users they are being
associated with in the call.
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Additional POST scenarios

**Using device ID (IDFA)**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>REST API call</strong></td>
<td class="entry cell-noborder"><code
id="ID-000004de__codeblock_dbp_v32_lwb"
class="ph codeph">curl -X POST -H "Authorization: hbapi:123456:9876abcd54321:nym2" -d @json/segment.json "https://streaming-data.</code><span
class="ph"><code id="ID-000004de__codeblock_dbp_v32_lwb"
class="ph codeph">appnexus</code></span><code
id="ID-000004de__codeblock_dbp_v32_lwb"
class="ph codeph">.com/rt-segment"</code></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>JSON Payload</strong></td>
<td class="entry cell-noborder"><pre
class="pre codeblock"><code>{
            &quot;rt_segment&quot;: [
                {
                    &quot;user_id&quot;: &quot;1ba98a6c-d1a5-49ef-ad1c-2d9230ebcd13&quot;,
                    &quot;seg_block&quot;: [
                        {
                            &quot;seg_id&quot;: 12,
                            &quot;seg_code&quot;: null,
                            &quot;value&quot;: 1,
                            &quot;expiration&quot;: 1440,
                            &quot;member_id&quot;: null
                        },
                        {
                            &quot;seg_id&quot;: 23784,
                            &quot;seg_code&quot;: null,
                            &quot;value&quot;: 1,
                            &quot;expiration&quot;: 0,
                            &quot;member_id&quot;: null
                        }
                    ],
                    &quot;domain&quot;: &quot;idfa&quot;
                }
            ]
        }</code></pre></td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
style="vertical-align: top"><strong>Response</strong></td>
<td class="entry cellborder"><pre
class="pre codeblock"><code>{
            &quot;response&quot;: {
                &quot;status&quot;: &quot;OK&quot;,
                &quot;message&quot;: {
                    &quot;users_in_request&quot;: 1,
                    &quot;segments_in_request&quot;: 2
                },
                &quot;warnings&quot;: [
                ]
            }
        }</code></pre></td>
</tr>
</tbody>
</table>

</div>

**Using codes for other members**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>REST API call</strong></td>
<td class="entry cell-noborder"><code
id="ID-000004de__codeblock_vtc_bj2_lwb"
class="ph codeph">curl -X POST -H "Authorization: hbapi:123456:9876abcd54321:nym2" -d @json/segment.json "https://streaming-data.</code><span
class="ph"><code id="ID-000004de__codeblock_vtc_bj2_lwb"
class="ph codeph">appnexus</code></span><code
id="ID-000004de__codeblock_vtc_bj2_lwb"
class="ph codeph">.com/rt-segment"</code></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>JSON Payload</strong></td>
<td class="entry cell-noborder"><pre
class="pre codeblock"><code>{
    &quot;rt_segment&quot;: [
        {
            &quot;user_id&quot;: &quot;12345678900987654321&quot;,
            &quot;seg_block&quot;: [
                {
                    &quot;seg_code&quot;: &quot;abcd&quot;,
                    &quot;value&quot;: 1,
                    &quot;expiration&quot;: 1440,
                    &quot;member_id&quot;: 1661
                },
                {
                    &quot;seg_code&quot;: &quot;zywx&quot;,
                    &quot;value&quot;: 1,
                    &quot;expiration&quot;: 1440,
                    &quot;member_id&quot;: 1262
                }
            ],
            &quot;domain&quot;: null
        }
    ]
}</code></pre></td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
style="vertical-align: top"><strong>Response</strong></td>
<td class="entry cellborder"><pre
class="pre codeblock"><code>{
        &quot;response&quot;: {
                &quot;status&quot;:&quot;OK&quot;,
        “users_in_request”: 1,
                &quot;segments_in_request&quot;: 2
        }
}</code></pre></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Service limits

<div class="note">

<span class="notetitle">Note:</span> Service limits may change during
alpha and beta testing of this service.

</div>

In order to adhere to a maximum of 2 minutes activation time, the
Instant Audience Service currently has the following limits:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>Call Rate</strong></td>
<td class="entry cell-noborder"><ul>
<li>Up to 100 POST calls per second (per member) and up to 1000 GET
calls per second (per member). If you exceed this rate limit, the
following message will be returned: "<em>Rate limit exceeded. You have
exceeded your request limit of 1000 reads per 1 seconds to
rt-segment-processed, please wait and try again or contact <span
class="ph">Xandr</span> for higher limits</em>".</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>Objects</strong></td>
<td class="entry cell-noborder"><ul>
<li>Up to 1000 users per second.</li>
<li>Up to 100 segments per user per call.</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
style="vertical-align: top"><strong>Payload Size</strong></td>
<td class="entry cellborder"><ul>
<li>The JSON payload should not exceed 1MB.</li>
</ul></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example Error Scenarios

**Adding/removing over 1000 users in a request**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>API Call</strong></td>
<td class="entry cell-noborder"><code
id="ID-000004de__codeblock_mv2_kj2_lwb"
class="ph codeph">curl -X POST -H "Authorization: hbapi:123456:9876abcd54321:nym2" -d @json/1002_users.json "https://streaming-data.</code><span
class="ph"><code id="ID-000004de__codeblock_mv2_kj2_lwb"
class="ph codeph">appnexus</code></span><code
id="ID-000004de__codeblock_mv2_kj2_lwb"
class="ph codeph">.com/rt-segment"</code></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>JSON Payload</strong></td>
<td class="entry cell-noborder"><pre
class="pre codeblock"><code>{
    &quot;rt_segment&quot;: [
        {
            &quot;user_id&quot;: &quot;12345678900987654321&quot;,
            &quot;seg_block&quot;: [
                {
                    &quot;seg_id&quot;: 10001,
                    &quot;seg_code&quot;: null,
                    &quot;value&quot;: 1,
                    &quot;expiration&quot;: 1440,
                    &quot;member_id&quot;: null
                },
                {
                    &quot;seg_id&quot;: 10002,
                    &quot;seg_code&quot;: null,
                    &quot;value&quot;: 1,
                    &quot;expiration&quot;: 1440,
                    &quot;member_id&quot;: null
                }
            ],
            &quot;domain&quot;: &quot;domain&quot;
        },
        #... assume there are additional 1000 users in this array (1002 in total)
    ]
}</code></pre></td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
style="vertical-align: top"><strong>Response</strong></td>
<td class="entry cellborder"><pre
class="pre codeblock"><code>{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;message&quot;: {
            &quot;users_in_request&quot;: 1000,
            &quot;segments_in_request&quot;: 2000
        },
        &quot;warnings&quot;: [
            {
                &quot;message&quot;: &quot;Too many user_ids in request.&quot;,
                &quot;entity&quot;: {
                    &quot;user_id&quot;: &quot;23456789009876543211&quot;,
                    &quot;seg_block&quot;: [
                        {
                                  &quot;seg_id&quot;: 10001,
                              &quot;seg_code&quot;: null,
                          &quot;value&quot;: 1,
                          &quot;expiration&quot;: 1440,
                                  &quot;member_id&quot;: null
                                },
                                {
                          &quot;seg_id&quot;: 10002,
                          &quot;seg_code&quot;: null,
                          &quot;value&quot;: 1,
                          &quot;expiration&quot;: 1440,
                          &quot;member_id&quot;: null
                                }
                    ]
                }
            },
          #... similar error will be sent for each user over 1000
        ]
    }
}</code></pre></td>
</tr>
</tbody>
</table>

</div>

**seg_id or  seg_code and  member_id are not provided**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>JSON Payload</strong></td>
<td class="entry cell-noborder"><pre
id="ID-000004de__codeblock_vxw_pj2_lwb"
class="pre codeblock"><code>{
    &quot;rt_segment&quot;: [
        {
            &quot;user_id&quot;: &quot;1&quot;,
            &quot;seg_block&quot;: [
                {
                    &quot;seg_id&quot;: null,
                    &quot;seg_code&quot;: &quot;abc&quot;,
                    &quot;value&quot;: 1,
                    &quot;expiration&quot;: 1,
                    &quot;member_id&quot;: null
                }
            ]
        }
    ]
}</code></pre></td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
style="vertical-align: top"><strong>Response</strong></td>
<td class="entry cellborder"><pre
class="pre codeblock"><code>{
    &quot;status&quot;: &quot;OK&quot;,
    &quot;message&quot;: {
        &quot;users_in_request&quot;: 0,
        &quot;segments_in_request&quot;: 0
    },
    &quot;warnings&quot;: [
        {
            &quot;message&quot;: &quot;&#39;seg_id&#39; or &#39;seg_code&#39; and &#39;member_id&#39; are required&quot;,
            &quot;entity&quot;: {
                &quot;seg_code&quot;: &quot;abc&quot;,
                &quot;value&quot;: 1,
                &quot;expiration&quot;: 1
            }
        },
        {
            &quot;message&quot;: &quot;No valid segments for user_id: 1.&quot;,
            &quot;entity&quot;: {
                &quot;user_id&quot;: &quot;1&quot;,
                &quot;seg_block&quot;: [
                    {
                        &quot;seg_code&quot;: &quot;abc&quot;,
                        &quot;value&quot;: 1,
                        &quot;expiration&quot;: 1
                    }
                ]
            }
        },
        {
            &quot;message&quot;: &quot;No valid rt_segment in request.&quot;,
            &quot;entity&quot;: {
                &quot;rt_segment&quot;: [
                    {
                        &quot;user_id&quot;: &quot;1&quot;,
                        &quot;seg_block&quot;: [
                            {
                                &quot;seg_code&quot;: &quot;abc&quot;,
                                &quot;value&quot;: 1,
                                &quot;expiration&quot;: 1
                            }
                        ]
                    }
                ]
            }
        }
    ]
}</code></pre></td>
</tr>
</tbody>
</table>

</div>

**seg_block not provided**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>JSON Payload</strong></td>
<td class="entry cell-noborder"><pre
id="ID-000004de__codeblock_qhm_5j2_lwb"
class="pre codeblock"><code>{
    &quot;rt_segment&quot;: [
        {
            &quot;user_id&quot;: &quot;asdf&quot;
        }
    ],
    &quot;domain&quot;: &quot;domain&quot;
}</code></pre></td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
style="vertical-align: top"><strong>Response</strong></td>
<td class="entry cellborder"><pre
class="pre codeblock"><code>{
    &quot;status&quot;: &quot;OK&quot;,
    &quot;message&quot;: {
        &quot;users_in_request&quot;: 0,
        &quot;segments_in_request&quot;: 0
    },
    &quot;warnings&quot;: [
        {
            &quot;message&quot;: &quot;&#39;seg_block&#39; is required&quot;,
            &quot;entity&quot;: {
                &quot;user_id&quot;: &quot;asdf&quot;
            }
        },
        {
            &quot;message&quot;: &quot;No valid rt_segment in request.&quot;,
            &quot;entity&quot;: {
                &quot;rt_segment&quot;: [
                    {
                        &quot;user_id&quot;: &quot;asdf&quot;
                    }
                ]
            }
        }
    ]
}</code></pre></td>
</tr>
</tbody>
</table>

</div>

**user_id is empty**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>JSON Payload</strong></td>
<td class="entry cell-noborder"><pre
id="ID-000004de__codeblock_dhm_xj2_lwb"
class="pre codeblock"><code> {
    &quot;rt_segment&quot;: [
        {
            &quot;seg_block&quot;: [
                {
                    &quot;seg_id&quot;: 1,
                    &quot;seg_code&quot;: null,
                    &quot;value&quot;: 1,
                    &quot;expiration&quot;: 1,
                    &quot;member_id&quot;: null
                }
            ]
        }
    ],
    &quot;domain&quot;: &quot;domain&quot;
}</code></pre></td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
style="vertical-align: top"><strong>Response</strong></td>
<td class="entry cellborder"><pre
class="pre codeblock"><code>{
    &quot;status&quot;: &quot;OK&quot;,
    &quot;message&quot;: {
        &quot;users_in_request&quot;: 0,
        &quot;segments_in_request&quot;: 0
    },
    &quot;warnings&quot;: [
        {
            &quot;message&quot;: &quot;&#39;user_id&#39; is required and cannot be empty&quot;,
            &quot;entity&quot;: {
                &quot;seg_block&quot;: [
                    {
                        &quot;seg_id&quot;: 1,
                        &quot;seg_code&quot;: null,
                        &quot;value&quot;: 1,
                        &quot;expiration&quot;: 1
                    }
                ]
            }
        },
        {
            &quot;message&quot;: &quot;No valid rt_segment in request.&quot;,
            &quot;entity&quot;: {
                &quot;rt_segment&quot;: [
                    {
                        &quot;seg_block&quot;: [
                            {
                                &quot;seg_id&quot;: 1,
                                &quot;seg_code&quot;: null,
                                &quot;value&quot;: 1,
                                &quot;expiration&quot;: 1
                            }
                        ]
                    }
                ]
            }
        }
    ]
}</code></pre></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Related Topics

- <a href="streaming-server-side-segmentation.html" class="xref">Streaming
  Server-Side Segmentation</a>
- <a href="check-usage-statistics.html" class="xref">Check Usage
  Statistics</a>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="streaming-server-side-segmentation.html" class="link">Streaming
Server-Side Segmentation</a>

</div>

</div>

</div>
