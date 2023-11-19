---
Title : Batch Server-Side Segmentation
Description : The Batch Segment Service is also known as BSS. It is a server-side
ms.date : 10/28/2023
---


# Batch Server-Side Segmentation





The Batch Segment Service is also known as BSS. It is a server-side
method that allows you to batch your users together and add them to
segments in bulk by uploading a file to Xandr
via the API. You can easily integrate your first, second, and
third-party audience data to create dynamic, configurable segments for
sophisticated user targeting and increased ROI. This data can be used in
conjunction with data from buyers or sellers for the purpose of campaign
targeting or yield management. 



<b>Note:</b> External bidders cannot target
segments, whether they are first-party or third-party segments.







## Use Cases

- **CRM / outside audience uploads**. As a buyer, DMP, or data provider,
  you may have offline customer data or online customer data that
  resides in a system that's separate from
  Xandr. The Batch Segment Service can be used
  to upload these user segment files to Xandr.
  For example, a retailer could upload CRM data from their in-store
  system for targeting on Xandr.

  The Batch Segment Service allows you to upload audiences to
  Xandr's platform through a batch/bulk upload
  framework. This data can be used in conjunction with data from buyers
  or sellers for the purposes of campaign targeting or yield management.
  All data sent through the Batch Segment Service is appended to the
  existing segment data already in our system.

  Features include:

- Ability to upload compressed files

- Error checking of segment data

- Configurable input file format

- Confirmation of successful upload

- Feedback on overall processing status

- Association of segments to users regardless of location of users

- A high maximum data volume



<b>Tip:</b> Before you can use the Batch
Segment Service, you'll need to get it set up. See <a
href="initial-bss-account-setup.md"
class="xref" target="_blank">Initial BSS Account Setup</a> for
instructions.





<b>Warning:</b>
<a href="https://en.wikipedia.org/wiki/Gzip" class="xref"
target="_blank">Gzip</a> is the only file compression method supported
by this service.







## Workflow

- Step 1: <a
  href="invest_invest-standard/user-id-mapping-with-getuid-and-mapuid.md"
  class="xref" target="_blank">Map your user IDs with <span
  class="ph">Xandr user IDs</a>.
- Step 2: Make sure you've set up your BSS account using the
  instructions in <a
  href="initial-bss-account-setup.md"
  class="xref" target="_blank">Initial BSS Account Setup</a>.
- Step 3: Upload your file using the instructions in <a
  href="xandr-api/uploading-segment-data-using-bss.md"
  class="xref" target="_blank">Uploading Segment Data Using BSS</a>.
  Alternately, you could implement <a
  href="passive-segment-upload-using-aws-s3.md"
  class="xref" target="_blank">Passive Segment Upload Using AWS S3</a>.
  The preferred format is Avro. 
- Step 4: Check the status of your file and correct any errors shown in
  the error logs. You can also see exactly how many valid user IDs you
  added to each segment in the segment logs.






