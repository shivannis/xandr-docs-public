# Check Usage Statistics

<div class="body">

<div class="note">

<span class="notetitle">Note:</span> This field or feature is part of
functionality currently in either Alpha or Beta phase. It is therefore
subject to change.

</div>

<div class="section">

## REST API call

When making a call to the API to retrieve statistics, the following
fields can be set in the query string:

- `agg` can be omitted in order to obtain an hourly/detailed report.
- `agg=true` can be used to obtain an aggregated report.
- `start` date should be set in the following
  format: `2015-11-01+01:00:00.`
- `end` date should be set in the following
  format: `2015-12-01+01:00:00.` 
  <div class="p">

  ``` pre
  curl -H "Authorization: hbapi:123456:9876abcd54321:nym2" -X GET "https://streaming-data.appnexus.com/rt-segment-processed?member_id=100&start=2014-05-22+00:00:00&end=2014-05-22+01:00:00"
  ```

  </div>

The statistics are deduplicated per request made to the service. For
example, if the same user is added to the same segment in three
different requests, `num_valid_adds` and `num_valid_users` would show
"3". When using `agg=true`, there will be one entry in the report
property of the response. It will be an aggregation of all usage
statistics in the date range that's specified.
`error_log_lines` and `segment_log_lines` will be empty, and the
processed hour will be for the last hour in the date range that's
specified. However, if no date range is specified, the report will show
the data from the last two weeks.

**Ex: Aggregated Usage Report**

``` pre
{
    "response": {
        "report": {
            "error_log_lines": null,
            "match_rate": 87.7,
            "member_id": 123,
            "num_inactive_segments": 0,
            "num_invalid_segments": 0,
            "num_invalid_users": 25,
            "num_other_errors": 0,
            "num_unauth_segments": 0,
            "num_valid_adds": 181,
            "num_valid_removes": 2,
            "num_valid_users": 179,
            "processed_hour": "2015-11-08 01:00:00",
            "segment_log_lines": null
        },
        "status": "OK"
    }
}
```

<div class="p">

**Ex: Hourly Report**

``` pre
{
    "response": {
        "report": [
            {
                "error_log_lines": "",
                "match_rate": 100.0,
                "member_id": 123,
                "num_inactive_segments": 0,
                "num_invalid_segments": 0,
                "num_invalid_users": 0,
                "num_other_errors": 0,
                "num_unauth_segments": 0,
                "num_valid_adds": 2,
                "num_valid_removes": 0,
                "num_valid_users": 1,
                "processed_hour": "2015-11-03 18:00:00",
                "segment_log_lines": "Valid users: 1580557697843484206
Valid segments (id, code, segment owner member id): (3737552, 'segment_3737552', 123), (3737547, 'segment_3737547', 123)
Valid additions (user id, segment id, expiration): (1580557697843484206, 3737552, 1440), (1580557697843484206, 3737547, 1440)"
            },
            {
                "error_log_lines": "Inactive users: 15805576978434842
Inactive segments (id, code, segment owner member id): (321456, 'segment_312456', 123)
Invalid segments (id, code, segment owner member id): (0, 'segment_654321', 123)
Unauthorized segments (id, code, segment owner member id): (0, 'segment_123456', 123)",
                "match_rate": 50.0,
                "member_id": 123,
                "num_inactive_segments": 1,
                "num_invalid_segments": 1,
                "num_invalid_users": 1,
                "num_other_errors": 0,
                "num_unauth_segments": 1,
                "num_valid_adds": 0,
                "num_valid_removes": 2,
                "num_valid_users": 1,
                "processed_hour": "2015-11-03 19:00:00",
                "segment_log_lines": "Valid users: 1580557697843484206
Valid segments (id, code, segment owner member id): (3737552, 'segment_3737552', 123), (3737547, 'segment_3737547', 123)
Valid removals (user id, segment id, expiration): (1580557697843484206, 3737552, -1), (1580557697843484206, 3737547, -1)"
            }
        ]
    }
}
```

</div>

</div>

<div class="section">

## Report object JSON (for objects in report array)

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d1647e118" class="entry nocellnoborder"
style="vertical-align: top">Field name</th>
<th id="d1647e121" class="entry nocellnoborder"
style="vertical-align: top">Description</th>
<th id="d1647e124" class="entry cell-noborder"
style="vertical-align: top">Example value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d1647e118 "><code class="ph codeph">processed_hour</code></td>
<td class="entry nocellnoborder"
headers="d1647e121 ">Hour during which uploads went through.</td>
<td class="entry cell-noborder"
headers="d1647e124 "><code
class="ph codeph">"2014-05-22 00:00:00"</code></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d1647e118 "><code class="ph codeph">match_rate</code></td>
<td class="entry nocellnoborder"
headers="d1647e121 ">The percentage of valid users uploaded
(num_valid_users/(num_valid_users+num_invalid_users)).</td>
<td class="entry cell-noborder"
headers="d1647e124 "> 75.00</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d1647e118 "><code class="ph codeph">num_valid_users</code></td>
<td class="entry nocellnoborder"
headers="d1647e121 ">Total number of valid users that were streamed
through the service. This is NOT the number of unique users for the
hour.</td>
<td class="entry cell-noborder"
headers="d1647e124 ">124578</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d1647e118 "><code class="ph codeph">num_valid_adds</code></td>
<td class="entry nocellnoborder"
headers="d1647e121 ">Total number of associations that were added (that
is, user-segment pairs, expiration !=-1).</td>
<td class="entry cell-noborder"
headers="d1647e124 ">98765432</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d1647e118 "><code
class="ph codeph">num_valid_removes</code></td>
<td class="entry nocellnoborder"
headers="d1647e121 ">Total number of associations that were removed
(that is, user-segment pairs with expiration = -1).</td>
<td class="entry cell-noborder"
headers="d1647e124 ">98765432</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d1647e118 "><code
class="ph codeph">num_invalid_users</code></td>
<td class="entry nocellnoborder"
headers="d1647e121 ">Total number of users that were in requests, but do
not exist on <span class="ph">Xandr</span>'s platform.</td>
<td class="entry cell-noborder"
headers="d1647e124 ">4000</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d1647e118 "><code
class="ph codeph">num_unauth_segments</code></td>
<td class="entry nocellnoborder"
headers="d1647e121 ">Total number of associations that failed due to
attempting to access unauthorized segments.</td>
<td class="entry cell-noborder"
headers="d1647e124 ">500</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d1647e118 "><code
class="ph codeph">num_inactive_segments</code></td>
<td class="entry nocellnoborder"
headers="d1647e121 ">Total number of associations that failed due to
attempting to access inactive segments.</td>
<td class="entry cell-noborder"
headers="d1647e124 ">200</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d1647e118 "><code
class="ph codeph">num_invalid_segments</code></td>
<td class="entry nocellnoborder"
headers="d1647e121 ">Total number of associations that failed due to
attempting to access invalid segments.</td>
<td class="entry cell-noborder"
headers="d1647e124 ">3</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d1647e118 "><code
class="ph codeph">num_other_errors</code></td>
<td class="entry nocellnoborder"
headers="d1647e121 ">Total number of failed calls for other
reasons.</td>
<td class="entry cell-noborder"
headers="d1647e124 ">0</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d1647e118 "><code class="ph codeph">error_log_lines</code></td>
<td class="entry nocellnoborder"
headers="d1647e121 ">An updating 200 line sample of the errors that
prevented the user and segment associations from being successful.</td>
<td class="entry cell-noborder"
headers="d1647e124 "><pre id="ID-0000070d__codeblock_rlv_n32_lwb"
class="pre codeblock"><code>&quot;Inactive users: 15805576978434842 Inactive segments (id, code, segment owner member id): (321456, &#39;segment_312456&#39;, 123) Invalid segments (id, code, segment owner member id): (0, &#39;segment_654321&#39;, 123) Unauthorized segments (id, code, segment owner member id): (0, &#39;segment_123456&#39;, 123)&quot;</code></pre></td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d1647e118 "><code
class="ph codeph">segment_log_lines</code></td>
<td class="entry -nocellborder"
headers="d1647e121 ">An updating 200 line sample of the segments and the
number of valid associations for each.</td>
<td class="entry cellborder"
headers="d1647e124 "><pre id="ID-0000070d__codeblock_ms1_532_lwb"
class="pre codeblock"><code>&quot;Valid users: 1580557697843484206 Valid segments (id, code, segment owner member id): (3737552, &#39;segment_3737552&#39;, 123), (3737547, &#39;segment_3737547&#39;, 123) Valid additions (user id, segment id, expiration): (1580557697843484206, 3737552, 1440), (1580557697843484206, 3737547, 1440) Valid removals (user id, segment id, expiration): (1580557697843484206, 3737552, -1), (1580557697843484206, 3737547, -1)&quot;</code></pre></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/streaming-server-side-segmentation.html"
  class="xref" target="_blank">Streaming Server-Side Segmentation</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/instant-audience-service.html"
  class="xref" target="_blank">Instant Audience Service</a>

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
