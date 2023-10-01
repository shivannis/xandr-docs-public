---
Title : Initial BSS Account Setup
Description : To start using the Batch Segment Service (BSS), open a ticket with
<a href="http://help.xandr.com/" class="xref"
---


# Initial BSS Account Setup



To start using the Batch Segment Service (BSS), open a ticket with
<a href="http://help.xandr.com/" class="xref"
target="_blank">help.xandr.com</a> and:

1.  Decide which file format you plan to use: <a
    href="https://docs.xandr.com/bundle/xandr-api/page/bss-avro-file-format.html"
    class="xref" target="_blank">BSS Avro File Format</a> is preferred,
    but you can use the <a
    href="https://docs.xandr.com/bundle/xandr-api/page/legacy-bss-file-format.html"
    class="xref" target="_blank">Legacy BSS File Format</a> if you don't
    need to support external IDs.

2.  If you're using Avro format and you decide to use a custom schema
    rather than the Xandr schema, provide the custom schema. (You can
    use the Xandr-provided schema: see <a
    href="https://docs.xandr.com/bundle/xandr-api/page/bss-avro-file-format.html"
    class="xref" target="_blank">BSS Avro File Format</a> for more
    information.)

3.  If you're using the legacy file format (see <a
    href="https://docs.xandr.com/bundle/xandr-api/page/legacy-bss-file-format.html"
    class="xref" target="_blank">Legacy BSS File Format</a>):
    1.  Define each separator you will use (SEPARATOR 1 through
        SEPARATOR 5).
    2.  Define the order of `SEG_FIELDS`. Send us the format that is
        simplest for you. This includes formats that include multiple
        segments on one line.

4.  Provide a short sample file in your chosen format.

5.  Provide external IDs, if applicable. For example, you use mapUID to
    store the mapping in Xandr. If you use another member's external
    user IDs, include their `member_id.`

6.  Provide associated `member_id`s, if you need to populate segments
    belonging to other members.

7.  Identify the number of error lines you would like to see (max. 999).

8.  Provide a default expiration window for your segments. (For example,
    set segments to expire after 60 days.) The maximum expiration that
    can be set is 180 days. Users are automatically removed from
    segments after 180 days.

<div id="buy-side-service-template__note_ejg_thw_5wb"


Note: If you include `EXPIRATION` in
your `SEG` block, you cannot use a default expiration setting.



For our internal capacity planning, please provide the following
information:

1.  The number of unique user IDs per upload.
2.  The number of expected uploads per day.
3.  The number of unique segments per upload.

<div id="buy-side-service-template__note_y42_whw_5wb"


Note: If you need to populate segments
belonging to other members, that member must send a ticket via
<a href="https://help.xandr.com/" class="xref"
target="_blank">https://help.xandr.com</a> explicitly authorizing your
usage: "I authorize `CLIENT_NAME` to add users to/remove users from
segments in my account using the Batch Segment API service." They must
also add their Account Manager to the CC field in the support form.



<div id="buy-side-service-template__section_n3t_v3w_5wb"
>

## **Related Topics**

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/batch-server-side-segmentation.html"
  class="xref" target="_blank">Batch Server-Side Segmentation</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/batch-segment-service-best-practices.html"
  class="xref" target="_blank">Batch Segment Service Best Practices</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/troubleshooting-bss-uploads.html"
  class="xref" target="_blank">Troubleshooting BSS Uploads</a>






