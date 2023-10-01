---
Title : Batch Segment Service Best Practices 
Description : The Batch Segment Service (BSS) allows you to send bulk feeds of
external segment data to Xandr. Using BSS, you can easily integrate your
---


# Batch Segment Service Best Practices 



The Batch Segment Service (BSS) allows you to send bulk feeds of
external segment data to Xandr. Using BSS, you can easily integrate your
first, second, or third-party audience data to create dynamic,
configurable segments for sophisticated user targeting and increased
ROI.



## Best Practices

1.  Read the <a
    href="batch-segment-service-best-practices.html#ID-0000aa7f__ID-0000aab7"
    class="xref">FAQs</a> below. Chances are your question is answered
    there.
2.  Keep your cookie mapping fresh and user match rate high by
    collecting UIDs as frequently as possible. Xandr expires UIDs on a
    rolling basis such that the user IDs that haven't been seen for the
    longest period of time are removed from our database to make room
    for new user IDs. If you upload UIDs that are very old, chances are
    you will have a high percentage of invalid user IDs in your status
    report.
3.  Batch your files as much as possible (between 100 to 300 MB). Your
    data will be uploaded more quickly in a few large files rather than
    a large amount of very small files.
4.  Dedupe your files. You'll be able to keep the size and processing
    time down by removing any duplicate user/segment combinations from
    your files.
5.  Compress your files. Gzip is the only compression method supported
    by this service. By compressing your files, you'll be able to upload
    more data more quickly.
6.  Avoid sending the full segment membership in every file. Instead,
    you only need to send the changes in segment membership (the deltas)
    since the last upload. This will greatly reduce the size of your
    files and speed up the upload process.
7.  Use the upload URL immediately. After requesting an upload URL, be
    sure to use it within 5 minutes, or you'll need to request a new
    URL. You cannot reuse old URLs.
8.  To optimize your daily BSS upload limit, ensure that you are sending
    user data into segments that exist or that were created on the Xandr
    platform. Sending data to invalid, deleted, or non-existent segments
    on the Xandr platform would count toward your total daily BSS upload
    limit. This can lead to false assumptions about why certain segments
    do not scale and why segments have low utilization. Take a look at
    the `error_log_lines` data field when you <a
    href="https://docs.xandr.com/bundle/xandr-bidders/page/troubleshooting-bss-uploads.html#d3565e232"
    class="xref" target="_blank">view your file upload history</a>. It
    will list all the invalid segment IDs that were passed in the
    uploads.
9.  Avoid uploading your largest files during peak hours (10 am-10 pm
    EST in the US, 10 am-10 pm CET in Europe): During peak hours, more
    files are in the queue, and your file may take longer to be
    processed. If you can, schedule your uploads to happen overnight.
    Per the SLA, uploads could take up to 24 hours.
10. Check the <a
    href="https://docs.xandr.com/bundle/xandr-bidders/page/uploading-segment-data-using-bss.html#d39047e221"
    class="xref" target="_blank">status report</a>. Checking the status
    report will allow you to catch and correct errors and upload more
    accurate data.
11. Confirm it worked. After your data has been processed, you can
    spot-check a few user IDs using the cookie viewer. If you don't see
    the segments in one geography, check the other - chances are your
    user is in another geo.
    - US: <a
      href="https://ib.nym1.adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;uid=USER_ID"
      class="xref"
      target="_blank">https://ib.nym1.adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;uid=USER_ID</a>
    - EU: <a
      href="https://ib.ams1.adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;uid=USER_ID"
      class="xref"
      target="_blank">https://ib.ams1.adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;uid=USER_ID</a>
    - Asia: <a
      href="https://ib.sin1.adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;uid=USER_ID"
      class="xref"
      target="_blank">https://ib.sin1.adnxs.com/cookie?member_id=MEMBER_ID&amp;dongle=DONGLE&amp;uid=USER_ID</a>
12. Include the job ID in support requests. If you're experiencing
    technical issues, remember to include all relevant job IDs when
    submitting your request to
    <a href="http://help.xandr.com/" class="xref"
    target="_blank">help.xandr.com</a>.
    <div id="ID-0000aa7f__note_jmk_ctx_5wb" 

    Note: Be sure to wait approximately
    20 minutes before trying to add users to any newly created segments
    (to allow these segments to be propagated to all servers). As a best
    practice, try to minimize the creation of new segments, reuse
    existing segments where possible, or use segment `"values"` to
    further subdivide users within existing segments. These practices
    will ensure successful user uploads to segments. For details on
    creating segment `"values"`, see <a
    href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
    class="xref" target="_blank">Segment Targeting</a>.

    



<div id="ID-0000aa7f__ID-0000aab7" >

## FAQs

1.  **I have completed the upload jobs. However, I see that there are
    errors.**

    If you encounter errors, you may reference the **<a
    href="https://docs.xandr.com/bundle/xandr-bidders/page/troubleshooting-bss-uploads.html"
    class="xref" target="_blank">BSS Troubleshooting</a>** document to
    diagnose potential cause.

2.  **How long after my upload until the data is available for
    targeting?**

    Your segment data begins to be available for targeting as soon as
    your job hits the 'validating' phase. The data is fully ingested and
    ready for targeting once your job has hit 'completed.' The time
    until your job hits 'completed' depends on the size of your file and
    the number of other files in the queue.

    <div id="ID-0000aa7f__note_q4g_qvx_5wb" 

    Note: Allow up to 24 hours for
    uploads to process (per the Xandr SLA).

    

3.  **Will there be a "fired" timestamp on these users for segment age
    targeting?**

    If you choose to include the TIMESTAMP field in your files, then
    you'll specify the timestamp for every user/segment combination. If
    you do not include TIMESTAMP, then the timestamp will be the time at
    which the data was written to our server-side cookie store, which is
    usually around the "completed time" you see in your status report.
    Note that the time is in the UTC time zone.

4.  **What if I have some users in the US and some in Europe?**

    Xandr maintains three separate cookie stores in the US, Europe, and
    Asia. However, you do not need to upload separate files for each
    geography. The Batch Segment system will automatically determine
    which geo the user is in and send the data to that cookie store
    database. If the user is in multiple geographies, the data will be
    sent to each geo the user exists in.

5.  **Why am I limited to only 999 error lines?**

    The 999 error lines provided are not meant to be a comprehensive
    list of all errors. Instead, they should be used as a diagnostic
    tool to diagnose problems with your file and then correct them.

6.  **Why are some jobs missing when I view my entire job history?**

    When you view your complete file upload history, every single file
    you've ever uploaded will be included. However, our API limits
    responses to 100 objects via pagination. You can view additional
    objects by appending one of these to the API call:

    ``` pre
    &start_element=101
    &sort=last_modified.desc
    ```

    You can read more about pagination in <a
    href="https://docs.xandr.com/bundle/xandr-api/page/05---throttling-pagination-and-filtering.html"
    class="xref" target="_blank">Throttling Pagination and Filtering</a>.

7.  **If I include the `VALUE` field, do I have to list a value for
    every single user/segment combination?**

    Yes, you do. However, if you do not wish to assign a value, you can
    enter `0` as the value.

8.  **How often can I push batch segment uploads?**

    Our systems can handle a maximum of one upload per minute (per
    member). Any upload interval larger than one minute will work
    properly.

9.  **I received a notification, 'Attempting to exceed daily byte upload
    limit'. Can I continue to upload data files?**

    Be aware of your daily BSS limit size. If you receive an error
    message from our system, stop your file upload jobs immediately.
    Continuing your file upload with repeated error messages could lead
    to system delays. Wait an hour and then try your file upload again.

10. **Should I compress upload files before submitting them through the
    API Batch Segment Service?**

    Yes! As a best practice, you should always compress upload files
    before pushing them through the Batch Segment Service. The gzip
    compression standard is supported.

11. **Should I always push my complete audiences every time I upload to
    segments through the API Batch Segment Service?**

    As a best practice, you should only upload full audiences through
    the API Batch Segment Service when you are uploading the audience
    for the first time or when the audience has expired from its
    respective segment. Besides those two cases, you should always
    upload modifications (deltas) to your existing audiences. Batch
    Segment uploads do not refresh the time to live of cookies in the
    Xandr cookie store (they can only refresh the time that the cookies
    are associated with a particular set of segments).

12. **Should I sort the UIDs in my batch segment upload files?**

    Sorting your file by user ID helps our system process your file more
    quickly.

13. **How can I see a job's user match rate?**

    The user match rate of a job is the percentage of IDs our system had
    seen before, divided by the total amount of identifiers uploaded.
    This can be a useful metric to get an indication of the quality of
    data that has been uploaded. Internal teams at Xandr also use this
    metric to assess the quality of the data uploaded. The formula to
    calculate the match rate is:

    user match rate = `num_valid_user` / (`num_valid_user` +
    `num_invalid_user`)

14. **I don't think this is working. Can you help?**

    Sure! Submit a case through
    <a href="http://help.xandr.com/" class="xref"
    target="_blank">help.xandr.com</a>. Note that while the job status
    reports are kept with 30 days of jobs history, we only save the
    actual file of data for 3 days. Please be sure to submit your case
    as soon as possible after uploading so that we can look at the data
    you uploaded.





## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/batch-server-side-segmentation.html"
  class="xref" target="_blank">Batch Server-Side Segmentation</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/initial-bss-account-setup.html"
  class="xref" target="_blank">Initial BSS Account Setup</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/troubleshooting-bss-uploads.html"
  class="xref" target="_blank">Troubleshooting BSS Uploads</a>






