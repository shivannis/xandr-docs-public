---
Title : RTSS Best Practices
Description : <div id="rtss-best-practices__note-6fb11a01-6f04-4eec-b4f8-9e51de4e87d7"
class="note warning note_warning">
Warning: Beta Notice
- The Real-Time Signals Service is in Beta, and is subject to change in
the future.
---


# RTSS Best Practices





<div id="rtss-best-practices__note-6fb11a01-6f04-4eec-b4f8-9e51de4e87d7"
class="note warning note_warning">

Warning: Beta Notice

- The Real-Time Signals Service is in Beta, and is subject to change in
  the future.
- As we transition to open beta, **we will be adding a monthly charge
  for new and existing clients that use RTSS**. For more information,
  please speak to your account manager.





The following best practices will help you be successful using RTSS.

- <a href="#rtss-best-practices/section-001" class="xref"
  target="_blank">API Rate Limits</a>
- <a href="#rtss-best-practices/section-002" class="xref"
  target="_blank">Segment Naming</a>
- <a href="#rtss-best-practices/section-003" class="xref"
  target="_blank">Segment Construction</a>
- <a href="#rtss-best-practices/section-004" class="xref"
  target="_blank">Target Expiry</a>
- <a href="#rtss-best-practices/section-005" class="xref"
  target="_blank">OLC and Geo-Targeting</a>
- <a href="#rtss-best-practices/section-006" class="xref"
  target="_blank">Bulk Uploads</a>
- <a href="#rtss-best-practices/section-007" class="xref"
  target="_blank">API Retries</a>

<div id="rtss-best-practices__section-001" >

## **API Rate Limits**

In order to prevent abuse of the API services, all accounts are
generally limited to 10 read/writes per second. This limit is enforced
programmatically by the API on a member level.

To avoid exceeding the rate limits, please use the RTSS Bulk Upload
service to upload multiple records. If the bulk upload file has more
than 1 million records, please wait 10-15 minutes before trying the next
upload. For more information on API rate limits, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/05---throttling-pagination-and-filtering.html"
class="xref" target="_blank">API Throttling</a> documentation.



<div id="rtss-best-practices__section-002" >

## **Segment Naming**

When you create segment objects for RTSS targets, it's a good idea to
include `rtss` in the segment name, or to add this string as segment
code. Labeling your RTSS segments makes it easier to identify which
segments have RTSS real-time targets (IPs, OLCs, or lat/longs), as
opposed to audiences (cookies/MAIDs). Clear naming also helps when
troubleshooting segment objects.

For example, you could use the following naming convention:

rtss\_*kind_of_target(IP/OLC/Lat-Long)\_segmentName*

**Example**: A segment where you'll host OLC targets and want to name it
myOLCsegment could be named `rtss_OLC_myOLCsegment`.



<div id="rtss-best-practices__section-003" >

## **Segment Construction**

For best results, don’t mix cookies and RTSS targets in the same
segment--always keep them in separate segments. This separation makes
future segment management and troubleshooting easier.



<div id="rtss-best-practices__section-004" >

## **Target Expiry**

When you upload targets to RTSS, make sure you keep track of their TTL.
We assign a default expiry of 180 days per target unless otherwise
specified. Keeping track of which targets will soon expire helps you
avoid:

- Running campaigns failing to serve, because they’re targeting RTSS
  segments with expired targets
- Uploading unnecessarily large files, instead of just the targets that
  will expire soon

If you need to refresh your segments or create new ones frequently, the
default 180 days is likely to be too long. For example, if you’re using
OLC to target movement data from lat/long data, you might create a
target that’s only valid for a short time. In this case, you should set
a shorter TTL to avoid the resource costs of storing unused targets.

You can set TTL using `seg_ttl`, but this value includes processing time
and may not be exact. The best practice is to use `expir`y, which sets
the precise date and time when segments should expire. `expiry` is set
at the file level, although segments whose explicit `seg_ttl` value
would result in an earlier expiration than the expiry setting will still
expire before the `expiry` date.

The following table shows the relationship between `seg_ttl` and
`expiry` in the possible cases where one or both are specified.



<table
id="rtss-best-practices__table-847c3327-c0b3-4360-ac54-eb130daeac32"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="rtss-best-practices__table-847c3327-c0b3-4360-ac54-eb130daeac32__entry__1"
class="entry">Scenario</th>
<th
id="rtss-best-practices__table-847c3327-c0b3-4360-ac54-eb130daeac32__entry__2"
class="entry">Expiry Not Specified</th>
<th
id="rtss-best-practices__table-847c3327-c0b3-4360-ac54-eb130daeac32__entry__3"
class="entry">Expiry Specified</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="rtss-best-practices__table-847c3327-c0b3-4360-ac54-eb130daeac32__entry__1"><strong>TTL
Not Specified</strong></td>
<td class="entry"
headers="rtss-best-practices__table-847c3327-c0b3-4360-ac54-eb130daeac32__entry__2"><p>Effective
TTL = default TTL – processing_delay</p>
<p>For example, if the file is submitted on 3/1/2022 00:00:00 and
processing starts the day after, then the effective TTL is 29 days and
expiration occurs on 3/31 00:00:00.</p></td>
<td class="entry"
headers="rtss-best-practices__table-847c3327-c0b3-4360-ac54-eb130daeac32__entry__3"><p>Effective
TTL = specified expiry – (submission_time + processing delay)</p>
<p>For example, suppose the file is submitted on 3/1/2022 00:00:00 with
the explicit expiration date/time set to 4/1 00:00:00. If processing
starts on 3/2, effective TTL is 30 days, and expiration occurs on
4/1.</p></td>
</tr>
<tr class="even row">
<td class="entry"
headers="rtss-best-practices__table-847c3327-c0b3-4360-ac54-eb130daeac32__entry__1"><strong>TTL
Specified</strong></td>
<td class="entry"
headers="rtss-best-practices__table-847c3327-c0b3-4360-ac54-eb130daeac32__entry__2"><p>Effective
TTL = specified TTL – processing delay</p>
<p>For example, if the file is submitted on 3/1 00:00:00 with specified
seg_ttl = 90 days, and processing starts the day after, then the
effective TTL is 89 days and expiration occurs on 5/30
00:00:00.</p></td>
<td class="entry"
headers="rtss-best-practices__table-847c3327-c0b3-4360-ac54-eb130daeac32__entry__3"><p>Effective
TTL = explicit <code class="ph codeph">expiry</code> or explicit <code
class="ph codeph">seg_ttl</code>, <strong>whichever results in an
earlier expiration</strong>.</p>
<p>For example, suppose the file is submitted on 3/1 at 00:00:00, with
<code class="ph codeph">expiry</code> set (on the file level) for 6/1 at
00:00:00. If some records in the file do not include an explicit TTL,
some have it set to 60 days, and some to 120 days, then, assuming
processing starts right away, the effective TTL and expiration will
be:</p>
<ul>
<li>records without seg_ttl will have a TTL of 92 days and expire on
6/1.</li>
<li>records with <code class="ph codeph">seg_ttl = 120</code> will also
have a TTL of 92 days and expire on 6/1, because the expiry value
results in an earlier expiration, and thus takes priority.</li>
<li>records with <code class="ph codeph">seg_ttl = 60</code> will have
an effective TTL of (60 days - processing time) and an expiration date
somewhere close to 5/1. In this case, <code
class="ph codeph">seg_ttl</code> takes priority (but still be affected
by processing time), because 60 &lt; 90.</li>
</ul></td>
</tr>
</tbody>
</table>

<div id="rtss-best-practices__section-005" >

## **OLC and GEO-Targeting**

RTSS uploads will accept any string that represents a valid OLC. By
shortening the OLC code provided, you can specify a less precise area
and increase your targeting zone. We recommend using a minimum of 4
symbols for OLC codes (an approximately
<a href="https://en.wikipedia.org/wiki/Open_Location_Code#Specification"
class="xref" target="_blank">110km block</a>), and a maximum of 8
symbols (an approximately
<a href="https://en.wikipedia.org/wiki/Open_Location_Code#Specification"
class="xref" target="_blank">275m block</a>).

RTSS will use Lat/Long for location whenever it is provided at the time
of impression, and will fall back to IP address otherwise. Lat/Long is
usually only provided via in-app impressions, when the user has
explicitly granted permission to the application to identify location of
the device.

In most cases involving a desktop or mobile browser, the IP address is
used to approximate location of the impression. IP Address precision is
usually sufficient to identify to a zip code for desktop, but in some
cases it can accurately identify a building, for example when an office
has an explicit IP range. For mobile carrier connections, the IP Address
will effectively give you the location of the cell tower that the device
is connected to.



<div id="rtss-best-practices__section-006" >

## **Bulk Uploads**

To ensure good performance during bulk uploads:

- **Only upload deltas.** We recommend only uploading the changes in
  your data set to Xandr, rather than your entire data set. For example,
  if you have a file with 100,000 data points, but only 2000 of those
  rows have changed since last upload, only upload the 2000 rows of
  records that changed. This reduces upload time as well as the time
  required to process the data and make it available for targeting.
- **GZIP large files.** Use GZIP to compress your files to reduce upload
  times.
- **Use the correct file format.** Files should be saved in standard
  UTF-8 (without BOM) encoding. Use Unix-style line endings (line feed
  characters, not carriage returns), and make sure your file does not
  contain a trailing line ending.



<div id="rtss-best-practices__section-007" >

## API Retries

You may occasionally receive a `422: too many queries to the database`
error from RTSS during periods of heavy load on our system. This occurs
because RTSS prioritizes lookup requests from our bidders over API
calls, so that segments are properly added on bid requests. We recommend
building sleep/retry functionality into your process. If you do see a
422 error, have your process wait 3-5 seconds before trying again.
Issuing an API call retry 1-2 times works in most cases.

If you see these errors frequently, you should also employ a random
backoff on your API throttle.






