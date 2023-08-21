# Log Level Data - Cloud Export

<div class="body">

<div class="note">

<span class="notetitle">Note:</span>

- Do not manually create any manifest- or feed-related paths. Doing so
  will cause your export to fail to verify due to object-level ACLs. The
  necessary paths will be automatically created by
  <span class="ph">Xandr</span>.
- <span class="ph">Xandr</span> provides bulk exports of Log Level Data
  (LLD) using client-specific keys (as set up using the procedures on
  this page). Data is exported via SSL file transfers to the client's
  cloud storage location (see below for options). The security of those
  client buckets/containers is the sole responsibility of the client.

</div>

Cloud Export is a feature used to automatically transfer Log-Level Data
(LLD) to cloud storage. <span class="ph">Xandr</span> supports data
transfer to Amazon S3 buckets, Google Cloud Storage buckets and
Microsoft Azure Blob Storage containers. Data begins transferring as
soon as batch data becomes available. This setup provides faster
enablement and a simpler workflow for
<span class="ph">Xandr</span> clients (e.g., no need to poll the siphon
service as with the Log-Level Data service).

<div class="section">

## Cloud Export Setup

**Prerequisites**

Please confirm the following prior to proceeding to setup.

1.  The LLD feeds you plan to consume should already be enabled for your
    <span class="ph">Xandr</span> seat (member ID). If that is not the
    case, contact your Account Representative to subscribe to Log-level
    data.
2.  Only the *protobuf*, *protobuf-delimited* and *avro* formats are
    supported by <span class="ph">Xandr</span> Cloud Export at this
    time.
3.  You must have *Network Admin* privileges to perform the steps below.

</div>

<div class="section">

## Setup

Please follow the procedures in the sections below for the cloud vendor
you'd like to export to. <span class="ph">Xandr</span> currently
supports the following through the <span class="ph">Xandr</span> UI:

- Amazon S3
- Microsoft Azure Blob Storage
- Google Cloud Storage

<div class="note">

<span class="notetitle">Note:</span> If you use a firewall or other
IP-restricting security features, add all of these IP addresses and
ranges to your allowlist:

IP addresses: **68.67.155.230**, **68.67.155.231**, **68.67.135.70**,
**68.67.135.71,**

IP ranges corresponding to addresses/subnet masks: **185.83.140.64/28**,
**68.67.146.64/28, 43.250.0.160/28**, **68.67.156.64/28**.

</div>

**Amazon S3**

1.  Create an <a
    href="https://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html"
    class="xref" target="_blank">Amazon S3 bucket</a> which will serve
    as a drop box for log-level data from the
    <span class="ph">Xandr</span> Cloud Export system.

2.  Select <span class="ph uicontrol">Log-Level Data</span> from
    the <span class="ph uicontrol">Network</span> (or
    <span class="ph uicontrol">Reporting</span>) menu in the Xandr
    Invest or Monetize UI.

3.  Click <span class="ph uicontrol">Manage</span> in the
    <span class="keyword wintitle">Cloud Export</span> column of the
    feed for which you want to create an S3 export.
    The <span class="keyword wintitle">Amazon S3</span> section will be
    displayed.

4.  Click <span class="ph uicontrol">New</span> to set up a new export
    or <span class="ph uicontrol">Configure</span> to edit an existing
    export. The <span class="keyword wintitle">Cloud Export to: Amazon
    S3</span> page will be displayed. 

5.  **Setup**. Enter the information in the table below and click
    <span class="ph uicontrol">Save</span>:
    <div class="tablenoborder">

    <table id="ID-0000060a__table_cvl_kzq_4wb" class="table"
    data-cellpadding="4" data-cellspacing="0" data-summary=""
    data-frame="border" data-border="1" data-rules="all">
    <colgroup>
    <col />
    <col />
    </colgroup>
    <tbody class="tbody">
    <tr class="odd ">
    <td class="entry cellborder"
   ><strong>Bucket</strong></td>
    <td class="entry cellborder">Name of the
    <a
    href="https://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html"
    class="xref" target="_blank">Amazon S3 bucket</a> created in step
    1.</td>
    </tr>
    <tr class="even ">
    <td class="entry cellborder"
   ><strong>Manifest path</strong></td>
    <td class="entry cellborder">Root for
    manifest files (e.g., <em>/manifests</em>). This file path does not
    support macros.</td>
    </tr>
    <tr class="odd ">
    <td class="entry cellborder"><strong>Feed
    Path</strong></td>
    <td class="entry cellborder">Feed path
    with macros (e.g.,
    <em>/feeds/%FEED_NAME%/%YEAR%/%MONTH%/%DAY%/%HOUR%/%TIMESTAMP%</em>)</td>
    </tr>
    <tr class="even ">
    <td class="entry cellborder"
   ><strong>Notification Email</strong></td>
    <td class="entry cellborder"
   >Comma-separated list of emails. If Cloud
    Export can no longer access your bucket, your export will be deactivated
    and you will be notified by email.</td>
    </tr>
    <tr class="odd ">
    <td class="entry cellborder"
   ><strong>Format</strong></td>
    <td class="entry cellborder">Data format
    for log-level data files (e.g., <em>protobuf</em> )</td>
    </tr>
    <tr class="even ">
    <td class="entry cellborder"
   ><strong>Server-side Encryption</strong></td>
    <td class="entry cellborder">The
    server-side encryption applied to uploaded LLD files:
    <ul>
    <li>None - do not apply server-side encryption</li>
    <li><a
    href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html"
    class="xref" target="_blank">SSE-S3</a> - apply server-side encryption
    with Amazon S3-managed encryption keys</li>
    <li><p><a
    href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html"
    class="xref" target="_blank">SSE-KMS</a> - apply server-side encryption
    with AWS KMS-managed encryption keys. You must grant the <span
    class="ph">Xandr</span> AWS user <a
    href="https://aws.amazon.com/blogs/security/share-custom-encryption-keys-more-securely-between-accounts-by-using-aws-key-management-service/"
    class="xref" target="_blank">access to your key</a>.</p>
    <p>Selecting SSE-S3 or SSE-KMS will override any  <a
    href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html"
    class="xref" target="_blank">default bucket encryption settings</a>  for
    the uploaded files.</p></li>
    </ul></td>
    </tr>
    </tbody>
    </table>

    </div>

    <div class="note">

    <span class="notetitle">Note:</span> Do not manually create any
    manifest- or feed-related paths. Doing so will cause your export to
    fail to verify due to object-level ACLs. The necessary paths will be
    automatically created by <span class="ph">Xandr</span>.

    </div>

6.  **Authorization**. For each <span class="ph">Xandr</span> member
    seat, <span class="ph">Xandr</span> creates a unique AWS user to
    upload data to S3 buckets. <span class="ph">Xandr</span> generates a
    suggested <a
    href="http://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html"
    class="xref" target="_blank">bucket policy</a> to <a
    href="https://docs.aws.amazon.com/AmazonS3/latest/user-guide/add-bucket-policy.html"
    class="xref" target="_blank">apply</a> to your bucket that allows
    our AWS user access to your bucket. This policy can be used as-is,
    but if you already have a policy applied to your bucket, you will
    have to merge our policy statements with yours.

7.  **Verification**. Once you apply a policy to your bucket, you must
    verify your permissions before your S3 Cloud Export can be
    activated. Click <span class="ph uicontrol">Verify</span> (on the
    <span class="keyword wintitle">Cloud Export to: Amazon S3</span>
    page) to run a series of tests that mimic actions that occur during
    an actual export. Once your export is verified, it is active. Data
    from the feed will automatically be exported to your S3 bucket
    (starting in the next hour).

**Microsoft Azure Blob Storage** 

1.  Create an <a
    href="https://docs.microsoft.com/en-us/azure/storage/common/storage-create-storage-account"
    class="xref" target="_blank">Azure storage account</a> which will
    host one or more storage containers.

2.  Create an <a
    href="https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blobs-introduction"
    class="xref" target="_blank">Azure Blob storage container</a> inside
    your storage account which will serve as a drop box for log-level
    data from the <span class="ph">Xandr</span> Cloud Export system.

3.  Select <span class="ph uicontrol">Log-Level Data</span> from
    the Network (or Reporting) menu in <span class="ph">Xandr</span> UI.

4.  Click <span class="ph uicontrol">Manage</span> in
    the <span class="keyword wintitle">Cloud Export</span> column of the
    feed for which you want to create an Azure Blob storage export.
    The <span class="keyword wintitle">Microsoft Azure Blob
    Storage</span> section will be displayed.

5.  Click <span class="ph uicontrol">New</span> to set up a new export
    or <span class="ph uicontrol">Configure</span> to edit an existing
    export. The <span class="keyword wintitle">Cloud Export to:
    Microsoft Azure Blob Storage</span> page will be displayed. 

6.  **Setup**. Enter the information in the table below and click
    <span class="ph uicontrol">Save</span>:
    <div class="tablenoborder">

    <table id="ID-0000060a__table_pgy_k1r_4wb" class="table"
    data-cellpadding="4" data-cellspacing="0" data-summary=""
    data-frame="border" data-border="1" data-rules="all">
    <colgroup>
    <col />
    <col />
    </colgroup>
    <tbody class="tbody">
    <tr class="odd ">
    <td class="entry cellborder"
   ><strong>Storage Account</strong></td>
    <td class="entry cellborder">Name of the
    <a
    href="https://docs.microsoft.com/en-us/azure/storage/common/storage-create-storage-account"
    class="xref" target="_blank">Azure storage account</a> created in step
    1.</td>
    </tr>
    <tr class="even ">
    <td class="entry cellborder"
   ><strong>Container</strong></td>
    <td class="entry cellborder">Name of the
    <a
    href="https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blobs-introduction"
    class="xref" target="_blank">Azure Blob storage container</a> created in
    step 2.</td>
    </tr>
    <tr class="odd ">
    <td class="entry cellborder"
   ><strong>Manifest Path</strong></td>
    <td class="entry cellborder">Root for
    manifest files (e.g., <em>/manifests</em>). This file path does not
    support macros.</td>
    </tr>
    <tr class="even ">
    <td class="entry cellborder"><strong>Feed
    Path</strong></td>
    <td class="entry cellborder">Feed path
    with macros (e.g.,
    <em>/feeds/%FEED_NAME%/%YEAR%/%MONTH%/%DAY%/%HOUR%/%TIMESTAMP%</em>)</td>
    </tr>
    <tr class="odd ">
    <td class="entry cellborder"
   ><strong>Notification Email</strong></td>
    <td class="entry cellborder"
   >Comma-separated list of emails. If Cloud
    Export can no longer access your container, your export will be
    deactivated and you will be notified by email.</td>
    </tr>
    <tr class="even ">
    <td class="entry cellborder"
   ><strong>Format</strong></td>
    <td class="entry cellborder">Data format
    for log-level data files (e.g., protobuf)</td>
    </tr>
    </tbody>
    </table>

    </div>

7.  **Authorization**. Generate a <a
    href="https://docs.microsoft.com/en-us/azure/storage/common/storage-dotnet-shared-access-signature-part-1"
    class="xref" target="_blank">shared access signature (SAS)</a> for
    the storage account with the following permissions:

    - Allowed services - **Blob**
    - Allowed resource types - **Container**, **Object**
    - Allowed Permissions - **Read**, **Write**, **Delete**, **List**,
      **Add**, **Create**
    - Start and expiry date/time - **Select expiry date in the distant
      future**
    - Allowed protocols - **HTTPS only**

    <!-- -->

    - After you create the SAS token, paste it in
      the <span class="keyword wintitle">SAS Token</span> field in the
      <span class="ph">Xandr</span> UI and
      click <span class="ph uicontrol">Save</span>.

8.  **Verification**. Once you give us your
    <span class="keyword wintitle">SAS token</span>, you must verify
    your SAS permissions before your Azure Blob Storage Cloud Export can
    be activated. Click <span class="ph uicontrol">Verify</span> (on
    the <span class="keyword wintitle">Cloud Export to: Microsoft Azure
    Blob Storage</span> page) to run a series of tests that mimic
    actions that occur during an actual export. Once your export is
    verified, it is active. Data from the feed will automatically be
    exported to your Azure container (starting in the next hour).

**Google Cloud Storage**

1.  Create a
    <a href="https://cloud.google.com/storage/docs/creating-buckets"
    class="xref" target="_blank">Google Storage Bucket</a> which will
    serve as a drop box for log-level data from the
    <span class="ph">Xandr</span> Cloud Export system.
2.  Select <span class="ph uicontrol">Log-Level Data</span> from
    the <span class="ph uicontrol">Network</span> (or <span class="ph uicontrol">Reporting</span>)
    menu in the <span class="ph">Xandr</span> UI.
3.  Click <span class="ph uicontrol">Manage</span> in
    the <span class="ph uicontrol">Cloud Export</span> column of the
    feed for which you want to create an Google Cloud Storage export.
    The <span class="keyword wintitle">Google Cloud
    Storage</span> section will be displayed.
4.  Click <span class="ph uicontrol">New</span> to set up a new export
    or <span class="ph uicontrol">Configure</span> to edit an existing
    export. The <span class="keyword wintitle">Cloud Export to: Google
    Cloud Storage</span> page will be displayed. 
5.  **Authorization**. Navigate to
    the <a href="https://console.cloud.google.com/storage" class="xref"
    target="_blank">Cloud Storage console</a>, select your bucket, and
    click <span class="ph uicontrol">SHOW INFO PANEL</span>. Add our
    Google member **prod-lld-gcs-{XANDR MEMBER
    ID}@<a href="http://appnexus-cloud-export.iam.gserviceaccount.com/"
    class="xref" target="_blank"><span
    class="ph">appnexus</span>-cloud-export.iam.gserviceaccount.com</a>**
    to your bucket permissions and assign it
    the <span class="keyword wintitle">=</span> <a href="https://cloud.google.com/storage/docs/access-control/iam-roles"
    class="xref" target="_blank">Cloud Storage IAM Role</a> (This role
    has the full admin access). An example of Google member for
    <span class="ph">Xandr</span> member ID 123456 is
    : *prod-lld-gcs-123456@<a href="http://appnexus-cloud-export.iam.gserviceaccount.com"
    class="xref" target="_blank"><span
    class="ph">appnexus</span>-cloud-export.iam.gserviceaccount.com</a>*
6.  **Setup**. Enter the information in the table below and click
    <span class="ph uicontrol">Save</span>:
    <div class="tablenoborder">

    <table id="ID-0000060a__table_qm2_lcr_4wb" class="table"
    data-cellpadding="4" data-cellspacing="0" data-summary=""
    data-frame="border" data-border="1" data-rules="all">
    <colgroup>
    <col />
    <col />
    </colgroup>
    <tbody class="tbody">
    <tr class="odd ">
    <td class="entry cellborder"
   ><strong>Bucket</strong></td>
    <td class="entry cellborder">Name of <a
    href="https://cloud.google.com/storage/docs/creating-buckets"
    class="xref" target="_blank">Google Storage Bucket</a> created in step
    1.</td>
    </tr>
    <tr class="even ">
    <td class="entry cellborder"
   ><strong>Manifest Path</strong></td>
    <td class="entry cellborder">Root for
    manifest files (e.g., <em>/manifests</em>). This file path does not
    support macros.</td>
    </tr>
    <tr class="odd ">
    <td class="entry cellborder"><strong>Feed
    Path</strong></td>
    <td class="entry cellborder">Feed path
    with macros (e.g.,
    <em>/feeds/%FEED_NAME%/%YEAR%/%MONTH%/%DAY%/%HOUR%/%TIMESTAMP%</em>)</td>
    </tr>
    <tr class="even ">
    <td class="entry cellborder"
   ><strong>Notification Email</strong></td>
    <td class="entry cellborder"
   >Comma-separated list of emails. If Cloud
    Export can no longer access your bucket, your export will be deactivated
    and you will be notified by email.</td>
    </tr>
    <tr class="odd ">
    <td class="entry cellborder"
   ><strong>Format</strong></td>
    <td class="entry cellborder">Data format
    for log-level data files (e.g., <em>protobuf</em>)</td>
    </tr>
    </tbody>
    </table>

    </div>

    <div id="ID-0000060a__note_txx_s55_4wb" class="note">

    <span class="notetitle">Note:</span> Do not manually create any
    manifest- or feed-related paths. Doing so will cause your export to
    fail to verify due to object-level ACLs. The necessary paths will be
    automatically created by <span class="ph">Xandr</span>.

    </div>
7.  **Verification**. Once you give our Google member the **Storage
    Admin** role in your bucket, you must verify your permissions before
    your Google Storage Cloud Export can be activated.
    Click <span class="ph uicontrol">Verify</span> (on
    the <span class="keyword wintitle">Cloud Export to: Google Cloud
    Storage</span> page) to run a series of tests that mimic actions
    that occur during an actual export. Once your export is verified, it
    is active. Data from the feed will automatically be exported to your
    Google Cloud Storage bucket (starting in the next hour).

</div>

<div class="section">

## Failures and Export Deactivation

If the export fails, <span class="ph">Xandr</span> automatically runs
verification tests to ensure that the failure was not caused by a
permissions issue.

- If the failure was caused by a permissions issue, your export will be
  deactivated and you will be notified via email. You will then need to
  re-verify your export. A successful verification will reactivate your
  export.
- If the failure was not caused by permissions issues, the export will
  automatically be re-tried.

<div class="note">

<span class="notetitle">Note:</span> If <span class="ph">Xandr</span>
deactivated your cloud export due to a permissions issue, once the
export has been re-verified and re-enabled, we will only backfill up to
a maximum of 3 days of feed data.

</div>

</div>

<div class="section">

## Feed Path Macros

Macros can be used within feed paths to customize the feed output
location by data hour, feed timestamp, and other metadata. Supported
macros are listed below:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d18937e847" class="entry cellborder"
style="vertical-align: top">Macro</th>
<th id="d18937e850" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d18937e847 ">%YEAR%</td>
<td class="entry cellborder"
headers="d18937e850 ">Data year (yyyy)</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d18937e847 ">%MONTH%</td>
<td class="entry cellborder"
headers="d18937e850 ">Data month (MM)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d18937e847 ">%DAY%</td>
<td class="entry cellborder"
headers="d18937e850 ">Data day (dd)</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d18937e847 ">%HOUR%</td>
<td class="entry cellborder"
headers="d18937e850 ">Data hour (HH)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d18937e847 ">%TIMESTAMP%</td>
<td class="entry cellborder"
headers="d18937e850 ">Feed processing timestamp (yyyyMMddHHmmss)
<div id="ID-0000060a__note_yfv_vcr_4wb" class="note">
<span class="notetitle">Note:</span>
<p>Since directories are overwritten when data is copied and <span
class="ph">Xandr</span> can sometimes reprocess data, the %TIMESTAMP%
macro is required for feed paths.</p>
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d18937e847 ">%FEED_NAME%</td>
<td class="entry cellborder"
headers="d18937e850 ">Name of the feed</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Manifest Files

Manifest files help keep track of the files uploaded by the Cloud Export
service. Since cloud object stores (e.g., Amazon S3, Azure Blob Storage,
Google Cloud Storage) are eventually consistent, a source of truth
(i.e., which files should exist) is required for downstream consumers.
The manifest file is a JSON object written to a pre-configured location
in your bucket. It is specified in the
<a href="http://json-schema.org/" class="xref"
target="_blank">JSONSchema</a> format. We recommend that all accessing
of paths (e.g., for data processing, purging, etc.) be done by first
referencing the manifest files. The manifest files contain important
information about data age, status, and format.

**File Naming and Paths**

Manifest files are created when the feed begins processing for a given
hour. The files will be created in the path location you specified.
Manifest file names contain the name of the feed, a timestamp denoting
the hour of the data (the range of time it covers), and a processing
timestamp. A manifest file is created for each feed, member (seat) ID,
hour of data, and feed run. <span class="ph">Xandr</span> automatically
reprocesses data as needed. The files are also given suffixes indicating
the status of the associated feed job. 

- If a manifest file has a suffix of "*-failed*" or "*-processing*", it
  indicates that the feed was not successfully processed.
- If a manifest file has no suffix, it indicates that the feed's data is
  ready for ingestion.

<div class="p">

**General format**

<div class="tablenoborder">

<table id="ID-0000060a__table_zxp_2dr_4wb" class="table"
data-cellpadding="4" data-cellspacing="0" data-summary=""
data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col />
<col />
</colgroup>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
style="vertical-align: top"><strong>Format</strong></td>
<td class="entry cellborder"
style="vertical-align: top">{feed_name}-{seat_id}-{YYYYMMddHH}-{yyyyMMddHHmmss}.json[-{suffix}] </td>
</tr>
</tbody>
</table>

</div>

</div>

**Status: Processing**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>Suffix</strong></td>
<td class="entry cell-noborder"
style="vertical-align: top">-processing</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
style="vertical-align: top"><strong>Example</strong></td>
<td class="entry cellborder"
style="vertical-align: top">standard_feed-998-2017013109-20170131132522<strong>.json-processing</strong></td>
</tr>
</tbody>
</table>

</div>

**Status "Failed"**

<div class="note">

<span class="notetitle">Note:</span> Since failures can occur from
unrecoverable situations that make it impossible to change the manifest
file's suffix, it is possible that a manifest file suffix is changed
from “processing” to “failed” sometime later (e.g., during the next
successful run). For example, if a Cloud Export process fails because of
a change to the bucket's access policy, it will no longer be able to
write to that bucket (and the export will be deactivated). The
manifest's file suffix will remain "-processing" until the export is
reactivated and runs successfully.

</div>

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>Suffix</strong></td>
<td class="entry cell-noborder"
style="vertical-align: top">-failed</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
style="vertical-align: top"><strong>Example</strong></td>
<td class="entry cellborder"
style="vertical-align: top">standard_feed-998-2017013109-20170131132522<strong>.json-failed</strong></td>
</tr>
</tbody>
</table>

</div>

**Status "Successful"**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
style="vertical-align: top"><strong>Suffix</strong></td>
<td class="entry cell-noborder">None</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
style="vertical-align: top"><strong>Example</strong></td>
<td class="entry cellborder"
style="vertical-align: top">standard_feed-998-2017013109-20170131132522<strong>.json</strong></td>
</tr>
</tbody>
</table>

</div>

**Feed Processing Workflow**

It is useful to understand how Feed jobs interpret manifest files in
order to build your downstream logic. The process is as follows:

1.  The manifest path is scanned for entries with the “-processing”
    suffix. Entries with this suffix indicate a previous run that
    experienced a fatal error. These entries are renamed with a
    “-failed” suffix (e.g., *json-processing* \> *.json-failed*).  
2.  A manifest file is generated and written to the bucket with a
    “-processing” suffix.
3.  The feed data is written to the bucket.
4.  If the write process fails, the manifest file will be renamed to
    include a “-failed” suffix (e.g., *.json-failed*). If the write
    process is completed successfully, the “-processing” suffix is
    simply removed (e.g., *.json-processing* \> *.json*), indicating a
    completed run.

**Manifest File Schema** 

The schema for the manifest file is described in the well-known
<a href="http://json-schema.org/" class="xref"
target="_blank">JSONSchema</a> format. <span class="ph">Xandr</span>
recommends code-generating classes from the JSONSchema we provide. A
project that achieves this for Java is
<a href="http://www.jsonschema2pojo.org/" class="xref"
target="_blank">jsonschema2pojo</a>.  

``` pre
{
  "$schema": "http://json-schema.org/draft-04/schema#",
  "description": "Schema for the cloud export feed file manifest",
  "type": "object",
  "required": [
    "hour",
    "files",
    "feed_type",
    "path",
    "processed_on",
    "feed_properties",
    "seat_id"
  ],
  "properties": {
    "hour": {
      "description": "Timestamp for the data in yyyy-MM-dd HH:mm:ss",
      "type": "string"
    },
    "files": {
      "description": "array of object describing the exported files",
      "type": "array",
      "items": {
        "$ref": "#/definitions/feed_file"
      }
    },
    "feed_type": {
      "description": "name of the feed",
      "type": "string"
    },
    "path": {
      "description": "fully qualified destination location",
      "type": "string"
    },
    "processed_on": {
      "description": "completion timestamp of feed (yyyyMMddHHmmss)",
      "type": "string"
    },
    "feed_properties": {
      "description": "data format related information",
      "type": "object",
      "$ref": "#/definitions/feed_properties"
    },
    "seat_id" : {
      "description" : "the Xandr seat id that these files belong to",
      "type" : "integer"
    }
  },
  "definitions": {
    "feed_file": {
      "type": "object",
      "required": [
        "checksum",
        "name"
      ],
      "properties": {
        "checksum": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      }
    },
    "feed_properties": {
      "type": "object",
      "required": [
        "compression_type",
        "container_format",
        "checksum_type",
        "data_format"
      ],
      "properties": {
        "compression_type": {
          "description": "type of compression used on the files (BLOCK level compression for sequence files)",
          "type": "string",
          "enum": [
            "DEFLATE",
            "GZIP",
            "SNAPPY",
            "NONE"
          ]
        },
        "container_format": {
          "description": "container format of the data",
          "type": "string",
          "enum": [
            "AVRO",
            "SEQUENCE",
            "NONE"
          ]
        },
        "data_format": {
          "description": "format of the data",
          "type": "string",
          "enum": [
            "protobuf",
            "protobuf-delimited",
            "avro"
          ]
        },
        "checksum_type": {
          "description": "type of checksum",
          "type": "string",
          "enum": [
            "MD5"
          ]
        }
      }
    }
  }
}
```

**Manifest File Example**

``` pre
{
  "hour" : "2017-02-09 16:00:00",
  "files" : [ {
    "checksum" : "ccd5774e8fc785b4df3d63627f992c4b",
    "name" : "998-10-ccd5774e8fc785b4df3d63627f992c4b-998"
  }, {
    "checksum" : "c8c442ff5eb24237573faa2d60a689b1",
    "name" : "998-11-c8c442ff5eb24237573faa2d60a689b1-998"
  } ],
  "feed_type" : "standard_feed",
  "path" : "/standard_feed/2017/02/09/16/20170209220747",
  "processed_on" : "20170209220747",
  "feed_properties" : {
    "compression_type" : "SNAPPY",
    "container_format" : "SEQUENCE",
    "data_format" : "protobuf",
    "checksum_type" : "MD5"
  },
  "seat_id" : 998
}
```

</div>

<div class="section">

## Failures/Partial Loads

Feed job failures can cause partial data loading. To avoid consuming
partially loaded data, use the manifest file names to determine what to
consume. 

- Do not consume files which will have a suffix of “*-processing*” or
  “*-failed*”. These are incomplete data sets.
- Only consume data from paths corresponding to completed loads (i.e.,
  manifest files with a *.json* extension but no additional suffix). 

</div>

<div class="section">

## Purging

When purging old data from your bucket, the manifest files should be
used for determining when data is eligible for purging. Only purge those
files that are no longer relevant (e.g., older than a week).

<div class="note">

<span class="notetitle">Note:</span> To improve directory performance,
manifest files older than 30 days will be moved to an /archive folder
located within the manifest file path. As a precaution, if you have any
procedures/scripts that refer to the manifest file path directly, you
should amend them to also look in the **/archive** folder for manifest
files older than 30 days.

</div>

</div>

<div class="section">

## Reprocessing

Feeds re-processed for a given hour will never overwrite old data.
<span class="ph">Xandr</span> will reprocess data when inconsistencies
are detected. When a feed job is reprocessed, there will be two (or
more) manifest files corresponding to the same data hour. However, the
processing timestamps and paths will differ between runs. The file with
the latest timestamp will be the corrected one.

</div>

<div class="section">

## Client Data Loss

<span class="ph">Xandr</span> does not re-export data that has already
been successfully exported. To mitigate situations in which you may have
accidentally deleted successfully exported data, we recommend you
leverage your cloud provider’s backup or versioning features.

</div>

<div class="section">

## Troubleshooting

**Uniqueness Criteria for Configurations**

 Your Cloud Export configuration must be unique, which means:

- For **Manifest paths**:
  - For **Microsoft Azure**, if the **Destination** (**Storage
    Account** and **Container**) combined and **Path*** are the same*,
    the **Member ID** and **Feed**  *must be different*.
  - For **all other configurations**, if the **Bucket** and
    **Path** *are the same*, the **Member ID** and  **Feed**  *must be
    different*.
- For **Feed paths**, if the **Destination** and **Resolved Feed path** 
  *are the same*, the Member ID  *must be different* and the **Feed**
  and **Format** *must be the same*.

**Verification Issues**

The table below describes a few common issues that you may encounter
when getting verification set up. 

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d18937e1333" class="entry cellborder"
style="vertical-align: top">Failed Verify Action</th>
<th id="d18937e1336" class="entry cellborder"
style="vertical-align: top">Potential Cause</th>
<th id="d18937e1339" class="entry cellborder"
style="vertical-align: top">Applies to</th>
<th id="d18937e1342" class="entry cellborder"
style="vertical-align: top">Solution</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d18937e1333 "><strong>Checking for manifest files in
GLACIER</strong></td>
<td class="entry cellborder"
headers="d18937e1336 ">Archiving of manifest files is not properly set
up</td>
<td class="entry cellborder"
headers="d18937e1339 ">Amazon S3</td>
<td class="entry cellborder"
headers="d18937e1342 ">Please ensure that all lifecycle rules are set up
to move manifest objects to Glacier only if they are not in the
manifests path (manifests/archive is fine).</td>
</tr>
<tr class="even ">
<td rowspan="2" class="entry cellborder"
headers="d18937e1333 "><strong>Checking meta-information access on
manifest files</strong></td>
<td rowspan="2" class="entry cellborder"
headers="d18937e1336 ">You are revoking object-level access for
non-archived manifests</td>
<td class="entry cellborder"
headers="d18937e1339 ">Amazon S3</td>
<td class="entry cellborder"
headers="d18937e1342 ">For each object, <code
class="ph codeph">aws s3api get-object-acl --bucket &lt;bucket&gt; --key &lt;object&gt;</code> should
yield the following as one of the grants for each non-archived manifest
object:
<pre class="pre codeblock"><code>{
    &quot;Grantee&quot;: {
        &quot;Type&quot;: &quot;CanonicalUser&quot;,
        &quot;DisplayName&quot;: &quot;aws-slld&quot;,
        &quot;ID&quot;: &quot;669331f902bdea32b620b6e6c85123d153b5b30c8318b101d2fd202bc3906fe1&quot;
    },
    &quot;Permission&quot;: &quot;FULL_CONTROL&quot;
},</code></pre></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d18937e1339 ">Google Cloud Storage</td>
<td class="entry cellborder"
headers="d18937e1342 ">For each object , <code
class="ph codeph">gsutil acl get &lt;object&gt;</code> should yield the
following as one of the grants for each non-archived manifest object:
<pre class="pre codeblock"><code>{
  &quot;email&quot;: &quot;prod-lld-gcs-&lt;member&gt;@appnexus-cloud-export.iam.gserviceaccount.com&quot;,
  &quot;entity&quot;: &quot;user-prod-lld-gcs-&lt;member&gt;@appnexus-cloud-export.iam.gserviceaccount.com&quot;,
  &quot;role&quot;: &quot;OWNER&quot;
}</code></pre></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d18937e1333 "><strong>Creating prefix at
&lt;path&gt;</strong></td>
<td class="entry cellborder"
headers="d18937e1336 ">You have already applied authorization to your
bucket or container but have manually created any manifest or feed
"folders".</td>
<td class="entry cellborder"
headers="d18937e1339 ">All Cloud Export configurations</td>
<td class="entry cellborder"
headers="d18937e1342 ">Manually created objects have different ACLs that
may deny access to the Cloud Export system. Please delete any manually
created manifest or feed objects. The Cloud Export system will create
necessary objects on its own.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="batch-log-level-data.html" class="link">Batch Log Level
Data</a>

</div>

</div>

</div>
