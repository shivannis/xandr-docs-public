---
Title : Privacy Service
Description : The Xandr Privacy Service permits
Xandr clients to delete and access personal data
(personal information) to support complying with privacy regulations
related to the provision and deletion of personal information such as
the GDPR or CCPA. This enables Xandr customers
---


# Privacy Service



The Xandr Privacy Service permits
Xandr clients to delete and access personal data
(personal information) to support complying with privacy regulations
related to the provision and deletion of personal information such as
the GDPR or CCPA. This enables Xandr customers
to build custom consumer privacy experiences and reply to data subject
access requests. 

There are two capabilities exposed by this API: Access and Delete. In
both cases, only data that is related to your account for the given user
is impacted. Deletion means the given ID will be disassociated from your
segments; it does not imply forward-looking suppression. 



Note: This service is only available to
`member` users. For more information about user types, see the
<a href="https://docs.xandr.com/bundle/xandr-api/page/user-service.html"
class="xref" target="_blank">User Service</a>.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003b78__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00003b78__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00003b78__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b78__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003b78__entry__2"><a
href="https://api.appnexus.com/privacy/consumer-request" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/privacy/consumer-request</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b78__entry__3">Create a new "delete" or "access"
request</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003b78__entry__7"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00003b78__entry__8" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00003b78__entry__9"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b78__entry__7"><code
class="ph codeph">identifier</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b78__entry__8">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003b78__entry__9">The
identifier for the end user, for example
"123e4567-e89b-12d3-a456-426655440000" or "7738918429796999062".
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b78__entry__7"><code
class="ph codeph">identifier_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b78__entry__8">string enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003b78__entry__9">The
identifier type for the end user. May be either the Mobile Advertising
ID or the Xandr user ID for the user.
<p><strong>Required on</strong>: <code class="ph codeph">POST</code></p>
<p><strong>Accepted values</strong>: <code
class="ph codeph">"maid"</code> or <code
class="ph codeph">"uuid2"</code>.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b78__entry__7"><code
class="ph codeph">request_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003b78__entry__8">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003b78__entry__9">The
type of privacy request. Currently, Xandr only
supports "delete" and "access" requests.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
</tbody>
</table>



<div id="ID-00003b78__section_wwq_4p1_twb" >

## Examples

<div id="ID-00003b78__note_xwq_4p1_twb" 

Note: A 200 status code response
indicates success. A 422 status code response indicates a problem with
the input.



**Create a "delete" request using a Xandr UUID**

``` pre
$ cat privacy.json
{
  "identifier": "7738918429796999062", 
  "identifier_type": "uuid2", 
  "request_type":"delete"
}
$ curl -X POST -d @privacy.json 'https://api.appnexus.com/privacy/consumer-request'
```

**Create a "delete" request using an external Mobile Advertising ID**

``` pre
$ cat privacy.json
{
   "identifier": "123e4567-e89b-12d3-a456-426655440000", 
   "identifier_type": "maid", 
   "request_type":"delete"
}
$ curl -X POST -d @privacy.json 'https://api.appnexus.com/privacy/consumer-request'
```

**Create an "access" request using a Xandr
UUID**

``` pre
$ cat privacy.json
{
  "identifier": "7738918429796999062", 
  "identifier_type": "uuid2", 
  "request_type":"access"
}
$ curl -X POST -d @privacy.json 'https://api.appnexus.com/privacy/consumer-request'
{
  "response": {
    "status": "OK",
    "segments": [
      {
        "id": 789,
        "name": "Customer Segment 1"
      },
      {
        "id": 1234567,
        "name": "customer_segment_2"
      }
    ]
  }
} 
```

**Create an "access" request using an external Mobile Advertising ID  
**

``` pre
$ cat privacy.json
{
   "identifier": "123e4567-e89b-12d3-a456-426655440000", 
   "identifier_type": "maid", 
   "request_type":"access"
}
$ curl -X POST -d @privacy.json 'https://api.appnexus.com/privacy/consumer-request'
{
  "response": {
    "status": "OK",
    "segments": [
      {
        "id": 123,
        "name": "Customer Segment 1"
      },
      {
        "id": 456,
        "name": "customer_segment_2"
      }
    ]
  }
}  
```



<div id="ID-00003b78__section_e1r_4p1_twb" >

## Related Topics



- <a href="https://wiki.xandr.com/display/GDPR/CCPA%2bClient%2bOverview"
  class="xref" target="_blank">CCPA Client Overview</a> (login required)
- <a
  href="https://wiki.xandr.com/display/GDPR/CCPA%2bPublisher%2bControls%2bProvided%2bby%2bXandr"
  class="xref" target="_blank">CCPA Publisher Controls Provided by <span
  class="ph">Xandr</a> (login required)








