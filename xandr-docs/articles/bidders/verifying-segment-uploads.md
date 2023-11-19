---
Title : Verifying Segment Uploads
Description : There are a few ways to confirm that your uploads are successful. 
ms.date : 10/28/2023
---


# Verifying Segment Uploads



There are a few ways to confirm that your uploads are successful. 

- When checking the status of your file, you will receive a status
  report that contains the following useful parameters
  <table class="table">
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"><code
  class="ph codeph">num_valid</code></td>
  <td class="entry colsep-1 rowsep-1">The number of valid user-segment
  pairs in the file.</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"><code
  class="ph codeph">num_valid_user</code></td>
  <td class="entry colsep-1 rowsep-1">The total number of valid user IDs
  in the file.</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"><code
  class="ph codeph">num_invalid_user</code></td>
  <td class="entry colsep-1 rowsep-1">The total number of invalid user IDs
  in the file.</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"><code
  class="ph codeph">segment_log_lines</code></td>
  <td class="entry colsep-1 rowsep-1">The number of unique valid users
  added to each segment. The format is <code
  class="ph codeph">[SEGMENT ID]-[NUMBER OF USERS]</code>.<br />
  Note that this field is limited to 999 lines in your file. If you have
  more than 999 segments in the job, some of them will not be shown.</td>
  </tr>
  </tbody>
  </table>

- Use the <a
  href="xandr-api/segment-loads-report.md"
  class="xref" target="_blank">Segment Loads API report</a> to see the
  number of valid user IDs that have been loaded into a segment over a
  given time period.

- Spot check a few user IDs to confirm they have been added to the
  appropriate segments using the below URLs. If you don't see the user
  in one geo, be sure to check the other geo.  

  US: <a
  href="https://ib.nym1.adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;uid=USER_ID"
  class="xref" target="_blank">http://ib.nym1.<span
  class="ph">adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;uid=USER_ID<br />
  </a>

  EU: <a
  href="https://ib.ams1.adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;uid=USER_ID"
  class="xref" target="_blank">http://ib.ams1.<span
  class="ph">adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;uid=USER_ID<br />
  </a>

  Asia: <a
  href="https://ib.sin1.adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;uid=USER_ID"
  class="xref" target="_blank">https://ib.sin1.<span
  class="ph">adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;uid=USER_ID</a>

- If you have access to the Xandr UI, use
  the Segment Inventory Overlap report to gauge how many impressions you
  can expect to see by segment, seller, and country. Note that you’ll
  need to wait a few days after creating new segments before data will
  show up in this report. 




