---
Title : Instant Audience Service
Description : <div id="buy-side-service-template__note_a25_vdd_xwb"
Note: Alpha-Beta Notice
This field or feature is part of functionality currently in either Alpha
or Beta phase. It is therefore subject to change.
---


# Instant Audience Service





<div id="buy-side-service-template__note_a25_vdd_xwb"


Note: Alpha-Beta Notice

This field or feature is part of functionality currently in either Alpha
or Beta phase. It is therefore subject to change.





The Instant Audience Service is a server-side method that uses a
streaming architecture to add individual or small groups of users to
segments, via the Digital Platform API. Rather than aggregating and
periodically sending large batches of data using the Batch Segment
Service, the Instant Audience Service associates' users to segments in
close to real-time. Our target SLA for adding users to segments with
this service is 2 minutes. This is useful if you have real-time audience
remodeling requirements.

<div id="buy-side-service-template__InstantAudienceService-ConfiguretheService"
>

## Configure the Service

If you're already using the Batch Segment Service, you can skip this
part and proceed to <a
href="https://docs.xandr.com/bundle/xandr-api/page/instant-audience-service.html#InstantAudienceService-Authenticate"
class="xref" target="_blank">Authenticate</a>. If you're a brand-new
client and wish to start using the Instant Audience Service, you will
need to open a ticket with and provide the following information:

1.  Are you using external user IDs (i.e., you use mapUID to store the
    mapping with Xandr)? If you use another member's external user IDs,
    include their `member_id` as well.
2.  Do you need to populate segments belonging to other members? If so,
    provide the associated `member_ids.`
3.  When you would like your segments to expire by default (e.g., never
    expire, expire 60 days from now, etc.)? Note that if you include
    EXPIRATION in your seg block, your default expiration will not be
    used.
4.  The following questions are for our internal capacity planning:
    - What is the number of unique user IDs per post?
    - What is the number of expected posts per day?
    - What is the number of unique segments per post?



<div id="buy-side-service-template__InstantAudienceService-Authenticate"
>

## Authenticate

Refer to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/authentication-service.html"
class="xref" target="_blank">Authentication Service</a> for a general
overview on how to make calls to the Xandr API. Just like any other
service, you'll authenticate against
<a href="https://api.appnexus.com./" class="xref"
target="_blank">https://api.appnexus.com</a>. However, subsequent calls
will be made to the Instant Audience Service at
<a href="https://streaming-data.appnexus.com/" class="xref"
target="_blank">https://streaming-data.appnexus.com</a>.

<div id="buy-side-service-template__note_nnf_ydd_xwb"


Note: In the authentication response,
make note of the token as it will be needed for subsequent calls to the
Instant Audience Service.



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
to the Instant Audience Service in the authorization header or as an
`access_token` query string parameter, as shown in the following
examples:

**Authorization header**

``` pre
curl -X POST -H "Authorization: hbapi:123456:9876abcd54321:nym2" https://streaming-data.appnexus.com/rt-segment
```

**Query string**

``` pre
curl -X POST https://streaming-data.appnexus.com/rt-segment?access_token=hbapi:123456:9876abcd54321:nym2
```



<div id="buy-side-service-template__InstantAudienceService-Adding-RemovingUsersfromSegments"
>

## Adding/Removing Users from Segments

After authenticating, you're now ready to add/remove a user to/from a
segment, via a JSON file.

<div id="buy-side-service-template__note_hbt_d2d_xwb"


Note: Be sure to wait approximately 20
minutes before trying to add users to any newly created segments (to
allow these segments to be propagated to all servers). As a best
practice, try to minimize the creation of new segments, re-use existing
segments where possible or use segment `values`to further sub-divide
users within existing segments. These practices will ensure successful
user add/remove to/from segments. For details on creating segment
`values`, see "Segment Pixels: Advanced" and "Segment Targeting" in the
UI documentation.



The following example demonstrates how to assign a user to two segments.
In this example, the member is adding user ID 12345678900987654321 (this
is a Xandr user id) to segments 10001 and 10002, setting both
associations with value = 1 and expiration within 1440 minutes.

**Example on how to assign a user to two segments**

<table id="buy-side-service-template__table_nsq_g2d_xwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>API Call</strong></td>
<td class="entry"><pre class="pre codeblock"><code>curl -X POST-H &quot;Authorization: hbapi:123456:9876abcd54321:nym2&quot;-d @json/segment.json &quot;https://streaming-data.appnexus.com/rt-segment&quot;</code></pre></td>
</tr>
<tr class="even row">
<td class="entry"><strong>JSON Payload</strong></td>
<td class="entry"><pre class="pre codeblock"><code>     {
      &quot;rt_segment&quot;:
      [
     {
         &quot;user_id&quot;:&quot;12345678900987654321&quot;,
           &quot;seg_block&quot;:[
     {
             &quot;seg_id&quot;:10001,
              &quot;seg_code&quot;:null,&quot;value&quot;:1,
                 &quot;expiration&quot;:1440,
                   &quot;member_id&quot;:null
                },
            {
               &quot;seg_id&quot;:10002,
               &quot;seg_code&quot;:null,
               &quot;value&quot;:1,
             &quot;expiration&quot;:1440,
            &quot;member_id&quot;:null
         }
     ],
         &quot;domain&quot;:null
       }
     ]
    }</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry"><strong>Response</strong></td>
<td class="entry"><pre class="pre codeblock"><code>{
   &quot;response&quot;:{
      &quot;status&quot;:&quot;OK&quot;,
       &quot;message&quot;:{
       &quot;users_in_request&quot;:1,
        &quot;segments_in_request&quot;:2
      },
     &quot;warnings&quot;:[
   ]
  }
}</code></pre></td>
</tr>
</tbody>
</table>





## JSON Fields



<table
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 24%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1"></th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__4"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td rowspan="3" class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">rt_segment array</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"><code
class="ph codeph">user_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__4"><p>This
would either be the Xandr <code class="ph codeph">user_id</code> or an
id based on the domain, such as "AEBE52E7-03EE-455A-B3C4-E57283966239",
as an example of a device identifier.</p>
<p><strong>Required:</strong> At least one.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"><code
class="ph codeph">seg_block </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__4"><p>Array
of segment blocks for segments to associate with the user (see segment
block structure below).</p>
<p><strong>Required:</strong> At least one.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"><code
class="ph codeph">domain </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__4"><p>Type
of identifier being used in the request, such as Xandr user ID
(represented with <code class="ph codeph">null</code>) or device
identifier (<code class="ph codeph">idfa</code>, <code
class="ph codeph">sh1udid</code>, <code
class="ph codeph">md5udid</code>, <code
class="ph codeph">openudid</code>, and <code
class="ph codeph">aaid</code>).</p>

<div id="buy-side-service-template__note_nm5_bfd_xwb"
class="note note_note">
Note:
<p>Do not use <code class="ph codeph">sha1mac</code>, which was
deprecated in 2019.</p>

</td>
</tr>
<tr class="even row">
<td rowspan="5" class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">seg_block array</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"><code
class="ph codeph">seg_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__4"><p>The
Xandr segment ID.</p>
<p><strong>Required:</strong> If not using <code
class="ph codeph">seg_code</code> and <code
class="ph codeph">member_id</code> to identify segment.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"><code
class="ph codeph">seg_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__4"><p>A
user-defined name for the segment.</p>

<div id="buy-side-service-template__note_yp3_2fd_xwb"
class="note note_note">
Note: You may either include <code
class="ph codeph">SEG_CODE</code> and <code
class="ph codeph">member_id</code> or <code
class="ph codeph">SEG_ID,</code> but not both.


<p><strong>Required:</strong> If not using <code
class="ph codeph">seg_ID</code> to identify segment.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__4">A
numeric value you would like to assign to a segment.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"><code
class="ph codeph">expiration</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__4">The
lifetime of the user-segment association in minutes, starting from when
we read it. A value of <code class="ph codeph">0</code> means that the
segment will never expire; <code class="ph codeph">-1 </code>means that
the user will be removed from this segment.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__4"><p>The
member ID of the segment owner for the seg_block.</p>
<p><strong>Required:</strong> If using <code
class="ph codeph">seg_code.</code></p></td>
</tr>
<tr class="odd row">
<td rowspan="3" class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">Response</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"><code
class="ph codeph">status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__4">Describes
whether the add/remove went through or resulted in an error.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"><code
class="ph codeph">users_in_request</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__4"><p>The
number of users read in the request.</p>

<div id="buy-side-service-template__note_qj3_hfd_xwb"
class="note note_note">
Note: This will simply show the number
of users initially detected in the request regardless of whether they
are valid.

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"><code
class="ph codeph">segments_in_request</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__4"><p>The
number of segments read in the request.</p>

<div id="buy-side-service-template__note_ufr_kfd_xwb"
class="note note_note">
Note:
<p>This will simply show the number of segments initially detected in
the request regardless of whether they are valid in our system, and
without regard to what users they are being associated with in the
call.</p>

</td>
</tr>
</tbody>
</table>



**Additional POST scenarios**

**Using device ID (IDFA)**

<table id="buy-side-service-template__table_sky_pfd_xwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>REST API call</strong></td>
<td class="entry"><pre class="pre codeblock"><code>curl -X POST-H &quot;Authorization: hbapi:123456:9876abcd54321:nym2&quot;-d @json/segment.json &quot;https://streaming-data.appnexus.com/rt-segment&quot;</code></pre></td>
</tr>
<tr class="even row">
<td class="entry"><strong>JSON Payload</strong></td>
<td class="entry"><pre class="pre codeblock"><code>{
    &quot;rt_segment&quot;:[
       {
          &quot;user_id&quot;:&quot;1ba98a6c-d1a5-49ef-ad1c-2d9230ebcd13&quot;,
          &quot;seg_block&quot;:[
        {
          &quot;seg_id&quot;:12,
           &quot;seg_code&quot;:null,
           &quot;value&quot;:1,
           &quot;expiration&quot;:1440,
           &quot;member_id&quot;:null
           },
          {
            &quot;seg_id&quot;:23784,
             &quot;seg_code&quot;:null,
              &quot;value&quot;:1,
              &quot;expiration&quot;:0,
               &quot;member_id&quot;:null
               }
            ],
               &quot;domain&quot;:&quot;idfa&quot;
           }
       ]
     }</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry"><strong>Response</strong></td>
<td class="entry"><pre class="pre codeblock"><code>{
   &quot;response&quot;:{
      &quot;status&quot;:&quot;OK&quot;,
    &quot;message&quot;:{
        &quot;users_in_request&quot;:1,
&quot;segments_in_request&quot;:2
},
    &quot;warnings&quot;:
    [
  ]
}</code></pre></td>
</tr>
</tbody>
</table>

**Using codes for other members**

<table id="buy-side-service-template__table_ezy_wfd_xwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>REST API call</strong></td>
<td class="entry"><pre class="pre codeblock"><code>curl -X POST-H &quot;Authorization: hbapi:123456:9876abcd54321:nym2&quot;-d @json/segment.json &quot;https://streaming-data.appnexus.com/rt-segment&quot;</code></pre></td>
</tr>
<tr class="even row">
<td class="entry"><strong>JSON Payload</strong></td>
<td class="entry"><pre class="pre codeblock"><code>{
     &quot;rt_segment&quot;:[
{
           &quot;user_id&quot;:&quot;12345678900987654321&quot;,
            &quot;seg_block&quot;:[{&quot;seg_code&quot;:&quot;abcd&quot;,
             &quot;value&quot;:1,
             &quot;expiration&quot;:1440,
             &quot;member_id&quot;:1661
},
{
            &quot;seg_code&quot;:&quot;zywx&quot;,
             &quot;value&quot;:1,
             &quot;expiration&quot;:1440,
              &quot;member_id&quot;:1262
           }
        ],
-          &quot;domain&quot;:null
        }
      ]
   }</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry"><strong>Response</strong></td>
<td class="entry"><pre class="pre codeblock"><code>{
     &quot;response&quot;:{
                 &quot;status&quot;:&quot;OK&quot;,
              “users_in_request”:1,
                  &quot;segments_in_request&quot;:2
}
}</code></pre></td>
</tr>
</tbody>
</table>

**Service limits**

<div id="buy-side-service-template__note_dsb_fgd_xwb"


Note: Service limits may change during
alpha and beta testing of this service.



In order to adhere to a maximum of 2 minutes activation time, the
Instant Audience Service currently has the following limits:

<table id="buy-side-service-template__table_dzt_fgd_xwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><strong>Call
Rate</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><ul>
<li>Up to 100 POST calls per second (per member) and up to 1000 GET
calls per second (per member). If you exceed this rate limit, the
following message will be returned: <em>"Rate limit exceeded. You have
exceeded your request limit of 1000 reads per 1 seconds to
rt-segment-processed, please wait and try again or contact Xandr for
higher limits".</em></li>
</ul></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Objects</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><ul>
<li>Up to 1000 users per second.</li>
<li>Up to 100 segments per user per call.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><strong>Payload
Size</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><ul>
<li>The JSON payload should not exceed 1MB.</li>
</ul></td>
</tr>
</tbody>
</table>





## Examples **Error Scenarios**

**Adding/removing over 1000 users in a request**

<table id="buy-side-service-template__table_ilf_lgd_xwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry">API Call</td>
<td class="entry"><pre class="pre codeblock"><code>curl -X POST-H &quot;Authorization: hbapi:123456:9876abcd54321:nym2&quot;-d @json/1002_users.json &quot;https://streaming-data.appnexus.com/rt-segment&quot;</code></pre></td>
</tr>
<tr class="even row">
<td class="entry">JSON Payload</td>
<td class="entry"><pre
id="buy-side-service-template__codeblock_llf_lgd_xwb"
class="pre codeblock"><code>{
    &quot;rt_segment&quot;:[
          {
           &quot;user_id&quot;:&quot;12345678900987654321&quot;,
           &quot;seg_block&quot;:[
           {
             &quot;seg_id&quot;:10001,
              &quot;seg_code&quot;:null,
              &quot;value&quot;:1,
               &quot;expiration&quot;:1440,
                &quot;member_id&quot;:null
               },
               {
                  &quot;seg_id&quot;:10002,
                 &quot;seg_code&quot;:null,
                    &quot;value&quot;:1,
                  &quot;expiration&quot;:1440,
                    &quot;member_id&quot;:null
                     }
                  ],&quot;domain&quot;:&quot;domain&quot;
                  },
        #... assume there are additional 1000 users inthisarray(1002in total)
     ]
}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry">Response</td>
<td class="entry"><pre
id="buy-side-service-template__codeblock_nlf_lgd_xwb"
class="pre codeblock"><code>{
   &quot;response&quot;:{
    &quot;status&quot;:&quot;OK&quot;,
       &quot;message&quot;:{
              &quot;users_in_request&quot;:1000,
                &quot;segments_in_request&quot;:2000
               },
                &quot;warnings&quot;:[
                     {
                     &quot;message&quot;:&quot;Too many user_ids in request.&quot;,
                    &quot;entity&quot;:{
                    &quot;user_id&quot;:&quot;23456789009876543211&quot;,
                    &quot;seg_block&quot;:[
                      {
                       &quot;seg_id&quot;:10001,
                        &quot;seg_code&quot;:null,
                       &quot;value&quot;:1,
                          &quot;expiration&quot;:1440,
                         &quot;member_id&quot;:null
                   },
                    {
                      &quot;seg_id&quot;:10002,
                       &quot;seg_code&quot;:null,
                         &quot;value&quot;:1,
                        &quot;expiration&quot;:1440,
                           &quot;member_id&quot;:null
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

**seg_id or seg_code and member_id are not provided**

<table id="buy-side-service-template__table_fys_4gd_xwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>JSON Payload</strong></td>
<td class="entry"><pre class="pre codeblock"><code>{
     &quot;rt_segment&quot;: [
          {
            &quot;user_id&quot;:&quot;1&quot;,
              &quot;seg_block&quot;:
      [ 
         {
           &quot;seg_id&quot;:null,
           &quot;seg_code&quot;:&quot;abc&quot;,
           &quot;value&quot;:1,
           &quot;expiration&quot;:1,
            &quot;member_id&quot;:null
           }
         ]
       }
      ]
   }</code></pre></td>
</tr>
<tr class="even row">
<td class="entry"><strong>Response</strong></td>
<td class="entry"><pre class="pre codeblock"><code>{
     &quot;status&quot;:&quot;OK&quot;,
       &quot;message&quot;:{
                 &quot;users_in_request&quot;:0,
                   &quot;segments_in_request&quot;:0},
                    &quot;warnings&quot;:[
                   {
                     &quot;message&quot;:&quot;&#39;seg_id&#39; or &#39;seg_code&#39; and &#39;member_id&#39; are required&quot;,
                    &quot;entity&quot;:{
                       &quot;seg_code&quot;:&quot;abc&quot;,
                       &quot;value&quot;:1,
                       &quot;expiration&quot;:1
                         }
                      },
        {
            &quot;message&quot;:&quot;No valid segments for user_id: 1.&quot;,
              &quot;entity&quot;:{
                      &quot;user_id&quot;:&quot;1&quot;,
                         &quot;seg_block&quot;:[
                            {
                             &quot;seg_code&quot;:&quot;abc&quot;,
                             &quot;value&quot;:1,
                              &quot;expiration&quot;:1
                           }
                         ]
                       }
                 },
               {
                    &quot;message&quot;:&quot;No valid rt_segment in request.&quot;,
                      &quot;entity&quot;:{
                         &quot;rt_segment&quot;:[
                            {
                              &quot;user_id&quot;:&quot;1&quot;,
                                  &quot;seg_block&quot;:[
                                 {
                                   &quot;seg_code&quot;:&quot;abc&quot;,
                                   &quot;value&quot;:1,&quot;expiration&quot;:1
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

**seg_block not provided**

<table id="buy-side-service-template__table_ybv_sgd_xwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>JSON Payload</strong></td>
<td class="entry"><pre class="pre codeblock"><code>{
    &quot;rt_segment&quot;:[
        {
         &quot;user_id&quot;:&quot;asdf&quot;
       }
      ],
     &quot;domain&quot;:&quot;domain&quot;
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry"><strong>Response</strong></td>
<td class="entry"><pre class="pre codeblock"><code>{
    &quot;status&quot;:&quot;OK&quot;,
      &quot;message&quot;:{
      &quot;users_in_request&quot;:0,
       &quot;segments_in_request&quot;:0
          },
           &quot;warnings&quot;:[
          {
            &quot;message&quot;:&quot;&#39;seg_block&#39; is required&quot;,
             &quot;entity&quot;:{
              &quot;user_id&quot;:&quot;asdf&quot;
                  }
                 },
               {
                  &quot;message&quot;:&quot;No valid rt_segment in request.&quot;,
           &quot;entity&quot;:{
&quot;rt_segment&quot;:[
{
&quot;user_id&quot;:&quot;asdf&quot;
              }
           ]
         }
       }
    ]
}</code></pre></td>
</tr>
</tbody>
</table>

**user_id is empty**

<table id="buy-side-service-template__table_m3n_wgd_xwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>JSON Payload</strong></td>
<td class="entry"><pre class="pre codeblock"><code>{
   &quot;rt_segment&quot;:[
      {
        &quot;seg_block&quot;:[
            {
            &quot;seg_id&quot;:1,
              &quot;seg_code&quot;:null,
              &quot;value&quot;:1,
              &quot;expiration&quot;:1,
               &quot;member_id&quot;:null
             }
          ]
         }
      ],
    &quot;domain&quot;:&quot;domain&quot;
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry"><strong>Response</strong></td>
<td class="entry"><pre class="pre codeblock"><code>{
   &quot;status&quot;:&quot;OK&quot;,
        &quot;message&quot;:{
                 &quot;users_in_request&quot;:0,
                  &quot;segments_in_request&quot;:0
},
&quot;warnings&quot;:[
             {
               &quot;message&quot;:&quot;&#39;user_id&#39; is required and cannot be empty&quot;,
                 &quot;entity&quot;:{
                  &quot;seg_block&quot;:[
                        {
                          &quot;seg_id&quot;:1,
                            &quot;seg_code&quot;:null,
                             &quot;value&quot;:1,
                              &quot;expiration&quot;:1
                             }
                            ]
                      }
                 },
                 {
                   &quot;message&quot;:&quot;No valid rt_segment in request.&quot;,
                    &quot;entity&quot;:{
                          &quot;rt_segment&quot;:[
                              {
                               &quot;seg_block&quot;:[
                                      {
                                         &quot;seg_id&quot;:1,
                                           &quot;seg_code&quot;:null,
                                            &quot;value&quot;:1,
                                            &quot;expiration&quot;:1
                                           }
                                         ]
                                       }
                                 ]
                              }
                             }
                          ]
} </code></pre></td>
</tr>
</tbody>
</table>



<div id="buy-side-service-template__section_fmn_5hd_xwb"
>

## **Related Topics**



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/streaming-server-side-segmentation.html"
  class="xref" target="_blank">Streaming Server-Side Segmentation</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/check-usage-statistics.html"
  class="xref" target="_blank">Check Usage Statistics</a>








