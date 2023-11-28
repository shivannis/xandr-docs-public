---
Title : Segment Modifier Data Provider Integration
Description : ## Segment Modifier Data Provider Integration
ms.custom : data-providers
ms.date : 10/28/2023
In order to take full advantage of Segment Modifier's capabilities, it
can be useful to do a server-side integration.
---


# Segment Modifier Data Provider Integration





## Segment Modifier Data Provider Integration

In order to take full advantage of Segment Modifier's capabilities, it
can be useful to do a server-side integration.

Server-side integrations allow for near-realtime updates to modifier
values. This can be useful if your model requires a fast response time
or is updated frequently. Additionally, you can tailor your modifier
based on the attributes available via the macros listed in <a
href="real-time-data-integration-instructions.md"
class="xref" target="_blank">Real Time Data Integration Instructions</a>.

First, build an application in the Xandr cloud.
The application should respond to an HTTP request with a line-delimited
list of segment codes and their corresponding segment values. For
example, if your application is located at DNS location
`test-location.nym1`, we can send you an HTTP request like the following



``` pre
test-location.nym1?an_user_id=123
```



where `an_user_id=123` corresponds to the Xandr
ID for user 123. (For more information, see <a
href="supply-partners/user-id-mapping.md"
class="xref" target="_blank">User ID Mapping</a>.) Your application
would then need to respond with a list of segment codes and values such
as



``` pre
CS_MODIFIER_001:9000
CS_MODIFIER_002:8000
```



where the code and value are separated by a colon and correspond to the
audience segment and modifier amount, respectively.

Finally, in  (or using the API's <a
href="xandr-api/campaign-service.md"
class="xref" target="_blank">Campaign Service</a>), set the modifier
segment ID such that it corresponds to the segment codes being returned
by your web service.





## Related Topics

<a
href="segment-modifier.md"
class="xref" target="_blank">Segment Modifier</a>






