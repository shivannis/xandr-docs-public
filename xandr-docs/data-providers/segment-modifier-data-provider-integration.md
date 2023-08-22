# Segment Modifier Data Provider Integration

<div class="body">

<div class="section">

## Segment Modifier Data Provider Integration

In order to take full advantage of Segment Modifier's capabilities, it
can be useful to do a server-side integration.

Server-side integrations allow for near-realtime updates to modifier
values. This can be useful if your model requires a fast response time
or is updated frequently. Additionally, you can tailor your modifier
based on the attributes available via the macros listed in <a
href="https://docs.xandr.com/bundle/data-providers/page/real-time-data-integration-instructions.html"
class="xref" target="_blank">Real Time Data Integration Instructions</a>.

First, build an application in the <span class="ph">Xandr</span> cloud.
The application should respond to an HTTP request with a line-delimited
list of segment codes and their corresponding segment values. For
example, if your application is located at DNS location
`test-location.nym1`, we can send you an HTTP request like the following

<div class="p">

``` pre
test-location.nym1?an_user_id=123
```

</div>

where `an_user_id=123` corresponds to the <span class="ph">Xandr</span>
ID for user 123. (For more information, see <a
href="https://docs.xandr.com/bundle/supply-partners/page/user-id-mapping.html"
class="xref" target="_blank">User ID Mapping</a>.) Your application
would then need to respond with a list of segment codes and values such
as

<div class="p">

``` pre
CS_MODIFIER_001:9000
CS_MODIFIER_002:8000
```

</div>

where the code and value are separated by a colon and correspond to the
audience segment and modifier amount, respectively.

Finally, in <span class="ph"></span> (or using the API's <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">Campaign Service</a>), set the modifier
segment ID such that it corresponds to the segment codes being returned
by your web service.

</div>

<div class="section">

## Related Topics

<a
href="https://docs.xandr.com/bundle/data-providers/page/segment-modifier.html"
class="xref" target="_blank">Segment Modifier</a>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="segment-modifier.html" class="link">Segment Modifier</a>

</div>

</div>

</div>
