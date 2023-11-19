---
Title : Troubleshooting BSS Uploads
Description : You can use the methods in this topic to diagnose any problems with your
ms.date : 10/28/2023
segment data upload. 
---


# Troubleshooting BSS Uploads



You can use the methods in this topic to diagnose any problems with your
segment data upload. 



## Different Phases of Batch Segment Service

This section describes the phases of upload, so you can understand where
problems may be occurring.

**Starting - Request upload URL and Job ID**

In this phase, the clients request an upload URL and a job ID. This
stage times out in 5 minutes. If jobs are stuck in this phase, it
indicates that the clients requested the URL but failed to upload
anything within the allotted time.

**Uploading**

In this phase, the clients upload the file to the given URL. It is
recommended not to exceed one upload per minute. If the clients have
more than 200 jobs waiting to be processed at any given time, they will
be prohibited from uploading additional jobs.

**Validating and Processing**

Once the clients upload the file, processing of the file occurs in the
next phase where the validation of segment IDs and user IDs is carried
out. If a record contains invalid segment or user IDs, the platform does
not process the record. When the clients check the job status, they will
be able to view statistics regarding the number of invalid users.

**Completion**

In this phase, the data of the file is successfully uploaded to the
platform, and it is available for targeting.





## Possible Upload Errors

**Attempting to upload file larger than 0.5GB**



``` pre
{"response":{"status":"ERROR","error_code":"FILESIZE_LIMIT_EXCEEDED","errors":["Member
            exceeds maximum byte size allowed for a file"]}}
```



**Error code in batch segment upload job**

``` pre
""batch_segment_upload_job": {
      "phase": "error",
      "start_time": "2015-08-13 18:40:32",
      "uploaded_time": null,
      "validated_time": null,
      "completed_time": null,
      "error_code": "uploading-error",
      "time_to_process": "0.00",
      "percent_complete": 0,
      "num_valid": 0,
      "num_invalid_format": 0,
      "num_valid_user": 0,
      "num_invalid_user": 0,
      "num_invalid_segment": 0,
      "num_invalid_timestamp": 0,
      "num_unauth_segment": 0,
      "num_past_expiration": 0,
      "num_inactive_segment": 0,
      "num_other_error": 0,
      "error_log_lines": null,
      "segment_log_lines": null,
      "id": 11661553,
      "job_id": "Pm3oCUf5CSVKIOt4mAqOzdt6K3qInj1431542432",
      "member_id": 958,
      "created_on": "2015-05-13 18:40:32",
      "last_modified": "2015-05-13 18:40:33"
    }
```

The following errors may happen when:

1.  You have reached one of its four upload limits:

    - daily bytes,
    - hourly bytes,
    - daily lines, or
    - hourly lines

    Attempting to exceed daily byte upload limit

    

    ``` pre
    {"response":{"status":"ERROR","error_code":"RATE_LIMIT_EXCEEDED","errors":["Member
                      exceeds maximum allowed bytes per day"]}}
    ```

    

    Attempting to exceed hourly byte upload limit

    

    ``` pre
    {"response":{"status":"ERROR","error_code":"RATE_LIMIT_EXCEEDED","errors":["Member
                      exceeds maximum allowed bytes per hour"]}}
    ```

    

    Attempting to exceed daily lines upload limit

    

    ``` pre
    {"response":{"status":"ERROR","error_code":"RATE_LIMIT_EXCEEDED","errors":["Member
                      exceeds maximum allowed number of lines per day"]}} 
    ```

    

    Attempting to exceed hourly lines upload limit

    

    ``` pre
    {"response":{"status":"ERROR","error_code":"RATE_LIMIT_EXCEEDED","errors":["Member
                      exceeds maximum allowed number of lines per hour"]}}
    ```

    

2.  You have canceled the upload.

3.  The upload phase exceeds 90 minutes.

    Exceeding maximum time to upload

    

    ``` pre
    {"response":{"status":"ERROR","error_code":"RATE_LIMIT_EXCEEDED","errors":["Maximum
                      upload time exceeded"]}}
    ```

    





## Possible Processing Errors

**Invalid format**

If the value of the `num_invalid_format` field is greater than `"0"`,
check the values in the `error_log_lines` field.

In the example below, the `num_invalid_format` field displays a value of
`"1"`, with details provided in the `error_log_lines` field.

In the `error_log_lines` field:

- `num_invalid_format` indicates that there was a problem parsing a line
  in the uploaded file.
- `"failed with an illegal number of fields"` indicates that the number
  of fields in a `segment_fields` block did not match what was defined
  in the batch-segment config (for more information, see <a
  href="initial-bss-account-setup.md"
  class="xref" target="_blank">Initial BSS Account Setup</a>).

In this case, the config expects three fields to be defined in the
block: `SEG_ID`, `VALUE`, `EXPIRATION`, but the parser only found two
fields - `SEG_ID` and `VALUE`, thus showing an error.

**num_invalid_format and error_log_lines example**

``` pre
"batch_segment_upload_job": {
phase": "completed",
"error_code": null,
"time_to_process": "0.01",
"percent_complete": 100,
"num_valid": 0,
"num_invalid_format": 1,
"num_valid_user": 0,
"num_invalid_user": 0,
"num_invalid_segment": 0,
"num_invalid_timestamp": 0,
"num_unauth_segment": 0,
"num_past_expiration": 0,
"num_inactive_segment": 0,
"num_other_error": 0,
"error_log_lines": "num_invalid_format-WINDOWSADID-USER-ID;SEG_ID:VALUE~9 failed with an illegal number of fields",
"segment_log_lines": null,
"start_time": "2015-08-13 18:40:32",
"uploaded_time": "2015-08-13 18:42:32",
"validated_time": "2015-08-13 18:42:32",
"completed_time": "2015-08-13 18:42:33",
"id": 123412341234,
"job_id": "Pm3oCUf5CSVKIOt4mAqOzdt6K3qInj1431542432",
"member_id": 958,
"created_on": "2015-08-13 18:40:32",
"last_modified": "2015-08-13 18:42:33"
}
```





## View Your File Upload History

To see metadata about all your segment file uploads within the last 30
days, make a `GET` call to the service with your `member_id` specified
in the query string. The JSON response will include an array of
`batch_segment_upload_job` objects.

For more information about the specific fields of the
`batch_segment_upload_job` object, see
<a href="troubleshooting-bss-uploads.md#ID-0000ab21__ID-0000ab7d"
class="xref">JSON Fields</a>.



<b>Note:</b> File upload history is available
for the last 30 days only.



``` pre
$ curl -b cookies 'https://api.appnexus.com/batch-segment?member_id=456'
{
   "response" : {
      "batch_segment_upload_job" : [
         {
           "phase": "completed",
            "start_time": "2012-05-22 16:48:55",
            "uploaded_time": "2012-05-22 16:48:56",
            "validated_time": "2012-05-22 16:49:01",
            "completed_time": "2012-05-22 16:49:01",
            "error_code": null,
            "time_to_process": "0.04",
            "percent_complete": 100,
            "num_valid": 0,
            "num_invalid_format": 0,
            "num_invalid_user": 2,
            "num_invalid_segment": 0,
            "num_unauth_segment": 1,
            "num_past_expiration": 0,
            "num_inactive_segment": 0,
            "num_other_error": 0,
            "error_log_lines": " \n\nnum_unauth_segment-4013681496264948522;5013:0,5014:1550\nnum_invalid_user-7652266028043224430;5848:0,5849:1440,5850:1440\nnum_invalid_user-8802117132500293405;5851:0,5847:-1",
            "id": 98,
            "job_id": "T1v98eIOlCZndeLGSXD0nrs57L8ES11337705335",
            "member_id": 456,
            "created_on": "2012-05-22 16:48:55",
            "last_modified": "2012-05-22 16:49:01"
         },
         ...
    }
  }
}
```



<b>Note:</b> Our API limits responses to 100
objects via pagination. You can view additional objects by appending one
of these to the API call:

- `&start_element=101`
- `&sort=last_modified.desc`

You can read more about pagination on our Documentation Portal <a
href="xandr-api/05---throttling-pagination-and-filtering.md"
class="xref" target="_blank">here</a>.

If you're still experiencing technical issues, you can submit a request
on our
<a href="https://help.xandr.com/" class="xref" target="_blank">Customer
Support Portal</a>. Don't forget to include the job ID in your support
request.






## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000ab21__ID-0000ab7d__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="ID-0000ab21__ID-0000ab7d__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000ab21__ID-0000ab7d__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__2"><a
href="https://api.appnexus.com/batch-segment/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/batch-segment/meta</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__3">Use this call to find out
which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000ab21__ID-0000ab7d__entry__7"
class="entry colsep-1 rowsep-1">Fields</th>
<th id="ID-0000ab21__ID-0000ab7d__entry__8"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000ab21__ID-0000ab7d__entry__9"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__7"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__8">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__9">This is the ID of the <code
class="ph codeph">batch_segment_upload_job</code> object associated with
this request.
<p><strong>Default:</strong> An automatically generated number.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__7"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__8">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__9">The status of the API call;
successful calls return <code class="ph codeph">"OK"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__7"><code
class="ph codeph">batch_segment_upload_job</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__8">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__9">This is an object whose
fields contain metadata describing the upload and processing job. If you
are using the Impbus API, this will be an array containing a single
object. See <a
href="troubleshooting-bss-uploads.md#ID-0000ab21__p_dfx_dn3_gyb"
class="xref">Batch Segment Upload Job</a> for details.</td>
</tr>
</tbody>
</table>

**Batch Segment Upload Job**

When you request the status of your processing job, the system returns a
`batch_segment_upload_job` object (if you are a data provider, this will
be an array containing a single object). Depending on which request
you're making to the service, it will contain some or all of the
following metadata.


<b>Note:</b>

Most metadata will only be present when `"phase": "completed"`.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000ab21__ID-0000ab7d__entry__19"
class="entry colsep-1 rowsep-1">Fields</th>
<th id="ID-0000ab21__ID-0000ab7d__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000ab21__ID-0000ab7d__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">upload_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The URL where you'll
upload your segment data file.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">phase</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The current processing
status.</p>
<p>Returns one of the following values:</p>
<ul>
<li><code class="ph codeph">error</code></li>
<li><code class="ph codeph">starting</code></li>
<li><code class="ph codeph">uploading</code></li>
<li><code class="ph codeph">validating</code></li>
<li><code class="ph codeph">processing</code></li>
<li><code class="ph codeph">completed</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">start_time</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The time at which file
upload began.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">uploaded_time</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The time at which the
file associated with this job ID was uploaded.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">validated_time</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The time at which file
validation was completed.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">completed_time</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The time at which file
processing was completed.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">error_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>If <code
class="ph codeph">"phase": "error"</code>, this error code describes the
type of error encountered. Note that an error code will only be shown
here if there was an error with the uploading, validating, or processing
of the file itself (i.e., does not include invalid format or invalid
segment errors). Common errors are caused by unreadable files and
exceeding defined object limits.</p>
<p>Returns <code class="ph codeph">null</code> if no errors were
found.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">time_to_process</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">decimal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The time it took to
process the segment file, in minutes.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">percent_complete</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The percentage of the
processing that has been completed, given the current <code
class="ph codeph">phase</code> at the time of the request.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">num_valid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The number of valid
lines in the uploaded file. Each user/segment combination is considered
1 line.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">num_invalid_format</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The number of uploaded
lines containing formatting errors. This depends upon your particular
file format configuration. Duplicate lines will also be considered an
invalid format.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">num_valid_user</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>A count of unique input
lines that have a valid user ID.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">num_invalid_user</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>A count of unique input
lines that have an invalid or non-existent user.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">num_invalid_segment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The number of invalid
segments in the file. Deduplicated.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">num_invalid_timestamp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The number of invalid
timestamps in the file.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">num_unauth_segment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The number of segments
in the file which you are unauthorized to access. Deduplicated.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">num_past_expiration</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The number of expired
segments in the file. Deduplicated.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">num_inactive_segment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The number of inactive
segments in the file. Deduplicated.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">num_other_error</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>This is a placeholder
value not currently in use.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">error_log_lines</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>A string containing
newline-separated lines. Each line lists a validation error or the
reason for an error while uploading your file.</p>
<p>You can choose how many lines appear in this field.</p>
<p><strong>Default:</strong> 200 lines</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">segment_log_lines</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>A string containing
newline-separated lines consisting of the segment ID and the number of
users successfully added or removed. This field defaults to 200
lines.</p>
<p>The format is <code
class="ph codeph">added: SEG_ID:COUNT SEG_ID:COUNT ... removed: SEG_ID:COUNT ...</code>
where <code class="ph codeph">SEG_ID</code> is the segment ID and <code
class="ph codeph">COUNT</code> is the number of users successfully added
or removed. <code class="ph codeph">SEG_ID:COUNT</code> pairs are sorted
by <code class="ph codeph">COUNT</code> (descending).<br />
<br />
</p>
<p>Example:</p>

<pre class="pre codeblock"><code>added: 15889133:386221 15547290:186227 removed: 15889278:369734 15889206:255307
                           15889179:232831</code></pre>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The unique identifier
of this object.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">job_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>A string of
alphanumeric characters that uniquely identifies the processing job
associated with this file.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>Your member ID.</p>
<p><strong>Required on:</strong> <code class="ph codeph">PUT</code>,
<code class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The creation date of
this object.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__19"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__20">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ab21__ID-0000ab7d__entry__21"><p>The most recent
modification date of this object (usually via <code
class="ph codeph">POST</code>).</p></td>
</tr>
</tbody>
</table>




## Related Topics



- <a href="https://docs.xandr.com/csh?context=134676672" class="xref"
  target="_blank">Legacy BSS File Format</a>
- <a
  href="batch-segment-service-best-practices.md"
  class="xref" target="_blank">Batch Segment Service Best Practices</a>








