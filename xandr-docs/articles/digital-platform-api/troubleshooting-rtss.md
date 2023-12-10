---
Title : Troubleshooting RTSS
ms.date: 10/28/2023
ms.custom: digital-platform-api
class="note warning note_warning">
<b>Warning:</b>
- The Real-Time Signals Service is in Beta, and is subject to change in
the future.
---


# Troubleshooting RTSS





class="note warning note_warning">

<b>Warning:</b>

- The Real-Time Signals Service is in Beta, and is subject to change in
  the future.
- As we transition to open beta, **we will be adding a monthly charge
  for new and existing clients that use RTSS**. For more information,
  please speak to your account manager.





- <a href="#troubleshooting-rtss/section-001" class="xref"
  target="_blank">Bulk Upload Status</a>
- <a href="#troubleshooting-rtss/section-002" class="xref"
  target="_blank">Campaigns Buying Against Deactivated Targets</a>


## Bulk Upload Status

If you're unsure whether your bulk upload succeeded, you can query the
upload ID returned when the bulk upload job was created. Querying the
upload ID returns a report of how many rows succeeded and failed during
the upload, as well as the first 100 errors in the file.

>

For example, to check the status for upload ID
a04d88c3-8cc7-11e6-868d-7cd30ab7f6e2 uploaded by member 123, run the
following curl command:

``` pre
curl -b cookies https://api.appnexus.com/apd-api/members/123/uploads?id=a04d88c3-8cc7-11e6-868d-7cd30ab7f6e2
```





The following table shows the possible status returned for the upload
overall.

<table
id="troubleshooting-rtss__table-fd594be6-c88c-4536-917e-b0612e947acf"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="troubleshooting-rtss__table-fd594be6-c88c-4536-917e-b0612e947acf__entry__1"
class="entry">Status</th>
<th
id="troubleshooting-rtss__table-fd594be6-c88c-4536-917e-b0612e947acf__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="troubleshooting-rtss__table-fd594be6-c88c-4536-917e-b0612e947acf__entry__1">SUBMITTED_1</td>
<td class="entry"
headers="troubleshooting-rtss__table-fd594be6-c88c-4536-917e-b0612e947acf__entry__2">The
file has been submitted and queued for processing.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="troubleshooting-rtss__table-fd594be6-c88c-4536-917e-b0612e947acf__entry__1">PROCESSING_2</td>
<td class="entry"
headers="troubleshooting-rtss__table-fd594be6-c88c-4536-917e-b0612e947acf__entry__2">The
file is being processed.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="troubleshooting-rtss__table-fd594be6-c88c-4536-917e-b0612e947acf__entry__1">COMPLETED_WITH_ERRORS_4</td>
<td class="entry"
headers="troubleshooting-rtss__table-fd594be6-c88c-4536-917e-b0612e947acf__entry__2">The
file was processed, and most targets have been uploaded properly.
However, some lines generated errors, such as negative TTL or a segment
access problem, that may have led to problems uploading specific
targets. To investigate, check the <code
class="ph codeph">message</code> field in the API response.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="troubleshooting-rtss__table-fd594be6-c88c-4536-917e-b0612e947acf__entry__1">COMPLETED_3</td>
<td class="entry"
headers="troubleshooting-rtss__table-fd594be6-c88c-4536-917e-b0612e947acf__entry__2">The
file was successfully processed, and the resulting targets have been
uploaded to the RTSS segments without significant errors.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="troubleshooting-rtss__table-fd594be6-c88c-4536-917e-b0612e947acf__entry__1">FAILED_5</td>
<td class="entry"
headers="troubleshooting-rtss__table-fd594be6-c88c-4536-917e-b0612e947acf__entry__2">The
uploaded file had a significant number of serious errors, and your
targets couldn't be uploaded. To investigate, check the <code
class="ph codeph">message</code> field in the API response. After you've
fixed the error, try re-uploading the file.</td>
</tr>
</tbody>
</table>


## Campaigns Buying Against Deactivated Targets

Targets that have been uploaded to RTSS with `seg_ttl` values in the
future could take a few hours to expire from the RTSS cache after an
update is sent to the system. In this case, your segments may continue
being added to impressions after you have updated your targeting
parameters. This will continue until those targets have expired.






