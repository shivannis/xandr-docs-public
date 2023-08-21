# Log Level Data - Protocol Buffers

<div class="body">

<span class="ph">Xandr</span> Log-Level Data (LLD) is encoded using a
binary interchange format called
a<a href="https://github.com/google/protobuf" class="xref"
target="_blank">Protocol Buffers</a>. Use the steps below to get started
with protobuf and integrate LLD into your system. 

<div class="section">

## Protobuf installation and configuration

When subscribing to feeds using the Log Level Data Service, you may
choose to receive your data in one of the available protobuf formats
(highly recommended). The protobuf format allows for more streamlined
schema changes and convenient ingestion of the data into big data
systems. 

The procedure below provides an example project that includes all feed
schemas and demonstrates how to read <span class="ph">Xandr</span>
protobuf files. The example project includes example binary files as
well as source code that can be used as a starting point for ingestion.

1.  Review the following Install dependencies. Be sure to complete the
    relevant tasks.
    1.  Install the **protobuf compiler**. Use **one** of the following
        methods:
        - Use a package manager using one of the following commands:
          - For OSX, use the command: `brew install protobuf250`
          - For Ubuntu, use the
            command: `sudo apt-get install protobuf-compiler`
        - Build from
          source: <a href="https://github.com/google/protobuf/tree/v2.5.0" class="xref"
          target="_blank">https://github.com/google/protobuf/tree/v2.5.0</a>
    2.  If you will be using **protobuf format** (not
        protobuf-delimited), install hadoop-client with native Snappy
        support.
    3.  If you plan to use the **examples project**, install
        <a href="https://maven.apache.org/" class="xref"
        target="_blank">Maven</a>. Maven is available via most package
        managers.
2.  Download the example project (get the latest one from the
    <span class="ph uicontrol">File Formats and Schemas</span> section
    of <a
    href="https://docs.xandr.com/bundle/log-level-data/page/batch-log-level-data.html"
    class="xref" target="_blank">Batch Log-Level Data</a>) and unzip
    it. 
3.  Refer to the README file in the example project for further
    directions.

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
