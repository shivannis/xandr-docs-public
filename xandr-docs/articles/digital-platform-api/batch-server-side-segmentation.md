---
Title : Batch Server-Side Segmentation
Description : The Batch Segment Service is also known as BSS. It is a server-side
---


# Batch Server-Side Segmentation



The Batch Segment Service is also known as BSS. It is a server-side
method that allows you to batch your users together and add them to
segments in bulk by uploading a file to Xandr via the API. You can
easily integrate your first, second, and third-party audience data to
create dynamic, configurable segments for sophisticated user targeting
and increased ROI. This data can be used in conjunction with data from
buyers or sellers for the purpose of campaign targeting or yield
management.

<div id="buy-side-service-template__BatchServerSideSegmentation-UseCases"
>

## Use Cases

- **CRM / outside audience uploads**. As a buyer, DMP, or data provider,
  you may have offline customer data or online customer data that
  resides in a system that's separate from Xandr. The Batch Segment
  Service can be used to upload these user segment files to Xandr. For
  example, a retailer could upload CRM data from their in-store system
  for targeting on Xandr.

The Batch Segment Service allows you to upload audiences to Xandr's
platform through a batch/bulk upload framework. This data can be used in
conjunction with data from buyers or sellers for the purposes of
campaign targeting or yield management. All data sent through the Batch
Segment Service is appended to the existing segment data already in our
system.

Features include:

- Ability to upload compressed files
- Error checking of segment data
- Configurable input file format
- Confirmation of successful upload
- Feedback on overall processing status
- Association of segments to users regardless of location of users
- A high maximum data volume



<div id="buy-side-service-template__note_ds5_yfw_5wb"
class="note tip note_tip">

Tip:

Before you can use the Batch Segment Service, you'll need to get it set
up. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/initial-bss-account-setup.html"
class="xref" target="_blank">Initial BSS Account Setup</a> for
instructions.



<div id="buy-side-service-template__note_ehg_1gw_5wb"
class="note caution note_caution">

CAUTION:

<a href="https://en.wikipedia.org/wiki/Gzip" class="xref"
target="_blank">Gzip</a> is the only file compression method supported
by this service.



<div id="buy-side-service-template__section_l55_2gw_5wb"
>

## **Workflow**

- Step 1: <a
  href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/user-id-mapping-with-getuid-and-mapuid.html"
  class="xref" target="_blank">Map your user IDs with Xandr user IDs</a>.
- Step 2: Make sure you've set up your BSS account using the
  instructions in <a
  href="https://docs.xandr.com/bundle/xandr-api/page/initial-bss-account-setup.html"
  class="xref" target="_blank">Initial BSS Account Setup</a>.
- Step 3: Upload your file using the instructions in <a
  href="https://docs.xandr.com/bundle/xandr-api/page/uploading-segment-data-using-bss.html"
  class="xref" target="_blank">Uploading Segment Data Using BSS</a>.
  Alternately, you could implement <a
  href="https://docs.xandr.com/bundle/xandr-api/page/passive-segment-upload-using-aws-s3.html"
  class="xref" target="_blank">Passive Segment Upload Using AWS S3</a>.
  The preferred format is Avro.
- Step 4: Check the status of your file and correct any errors shown in
  the error logs. You can also see exactly how many valid user IDs you
  added to each segment in the segment logs.






