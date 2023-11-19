---
Title : Bidder Instance Service
Description : A bidder will likely have at least two instances running at any given
ms.date : 10/28/2023
time. Each instance is associated with the impression bus in one of the
---


# Bidder Instance Service



A bidder will likely have at least two instances running at any given
time. Each instance is associated with the impression bus in one of the
Xandr datacenters. The instance itself may
either be hosted with Xandr at the datacenter or
located nearby. To decrease latency for global impressions, you may set
up bidder instances in the various Xandr
datacenters (see `datacenter_id` below). Each bidder instance is
associated with one datacenter. As load on your bidders increases, you
will likely require multiple instances per datacenter. Instead of
setting up your own local load-balancing pool for these multiple
instances, the impression bus can handle the load balancing for you.

You will need to register the hostname/IP/port combination for each of
your bidder instances with the impression bus using the Bidder Instance
Service API. This API service also allows you to view, modify, and
remove any instances. Each bidder instance must use the nomenclature for
request handlers that is defined by the <a
href="bidder-service.md"
class="xref" target="_blank">Bidder Service</a>.



<b>Note:</b> For answers to frequently asked
questions about how bidder instances work, see the <a
href="bidder-instance---faq.md"
class="xref" target="_blank">Bidder Instance - FAQ</a>.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001410__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001410__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001410__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__2"><a
href="https://api.adnxs.com/bidder-instance/BIDDER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/bidder-instance/BIDDER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__3">View
all bidder instances. It won't show other user's bidders.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__2"><a
href="https://api.adnxs.com/bidder-instance/BIDDER_ID/BIDDER_INSTANCE_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/bidder-instance/BIDDER_ID/BIDDER_INSTANCE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__3">View
a particular bidder instance.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__1">POST </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__2"><a
href="https://api.adnxs.com/bidder-instance/BIDDER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/bidder-instance/BIDDER_ID</a>
<p>(bidder instance JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__3">Add
a new bidder instance.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__1">PUT </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__2"><a
href="https://api.adnxs.com/bidder-instance/BIDDER_ID/BIDDER_INSTANCE_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/bidder-instance/BIDDER_ID/BIDDER_INSTANCE_ID</a>
<p>(bidder instance JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__3">Modify an existing bidder.

<b>Note:</b> The bidder instance service
currently does not support deletes - to remove an instance, please set
it to inactive.


<b>Warning:</b> When creating/modifying bidder
instances, never use the deprecated "datacenter" parameter to set the
datacenter for your instance. Instead, always use the "datacenter_id"
parameter with the IDs defined below.
</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001410__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001410__entry__17"
class="entry colsep-1 rowsep-1">Required</th>
<th id="ID-00001410__entry__18"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001410__entry__19"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__17">yes
(on PUT)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__18">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__19">The
ID of the bidder instance.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__16"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__17">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__18">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__19">The
ID of the bidder.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__16"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__17">no,
default is true</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__18">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__19">Whether the bidder instance is active
or not.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__16"><code
class="ph codeph">datacenter_id</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__17">yes
(on POST)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__18">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__19">The
datacenter ID with which your instance is associated NYM = 6, LAX = 4, ,
AMS = 15 , FRA = 7, SIN = 13. Legacy IDs: AMS = 12 (until July 12,
2022), SIN = 8 (until October 15, 2019)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__16"><code
class="ph codeph">ip_address</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__17">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__18">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__19">IP
address for the bidder instance.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__16"><code
class="ph codeph">port</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__17">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__18">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__19">Port for the bidder instance.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__16"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__18">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__19">The
timestamp of last modification to this bidder instance.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__16"><code
class="ph codeph">hostname</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__18">varchar(128)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__19">The
hostname for the bidder instance (Be sure not to include 'https://' -
eg. "hostname":"rtb.yourdomain.com")</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__16"><code
class="ph codeph">qps_limit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001410__entry__18">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001410__entry__19">The
max queries per second sent to this bidder instance.</td>
</tr>
</tbody>
</table>



<b>Note:</b> QPS limits **must** be set the
same for all bidder instances in a datacenter. To do this, set the
qps_limit to the same value for all bidder instances active in a
datacenter. For example, if you have three bidder instances in LAX, and
want to set the QPS limit to 50,000 for the entire datacenter, you would
set the qps_limit to 50,000 on each of the three bidder instances.  If
qps_limit is not the same across all bidder instances within a
datacenter, you may get unintended results, so please ensure the
qps_limit values are the same in each datacenter.

You can add a hostname to your bidder instance at any time. However, our
api requires an ip address when adjusting the bidder instance, but if
you include a hostname field with a value (your url or domain) in the
api call, our systems will connect to the hostname and ignore the ip
address.  
If you are posting a new bidder instance with a hostname, you can use a
placeholder value for the ip_address field.







## Examples

**Authentication Token**

Authentication is always the first step when using the API Services. The
authentication token can then be written to our cookie file for future
use. Please see <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a> for more
detailed instructions.

**View Existing Instances**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/bidder-instance/2'
{
   "response":{
      "status":"OK",
      "instances":[
         {
            "id":14,
            "bidder_id":2,
            "active":true,
                "datacenter_id": 6,
            "ip_address":"8.12.231.108",
            "port":8081,
            "last_activity":"2016-12-31 17:07:17"
            "hostname": null
         }
      ]
   }
}
```

**Add New Instance**

I have a New York (NYM2) instance; now I want to register my LAX1 bidder
instance. I create the following JSON:

``` pre
$ cat bidder_instance
{
   "instance":{
      "bidder_id":2,
      "active":true,
      "datacenter_id":4,
      "ip_address":"8.12.231.108",
      "port":8081,
      "hostname":"rtb.yourdomain.com"
   }
}
```

Then to add this new instance to my bidder (2):

``` pre
$ curl -b cookies -c cookies -X POST --data-binary @bidder_instance 'https://api.adnxs.com/bidder-instance/2'
{
   "response":{
      "status":"OK",
      "id":53
   }
}
```

And to view the newly added instance:

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/bidder-instance/2/53'
{
   "response":{
      "status":"OK",
      "instance":[
         {
            "id":53,
            "bidder_id":2,
            "active":true,
            "datacenter_id":4,
            "ip_address":"64.210.63.108",
            "port":8081,
            "last_activity":"2016-12-31 19:24:23"
            "hostname":"rtb.yourdomin.com"
         }
      ]
   }
}
```

**Add a QPS cap to an existing instance**

If I want to add a QPS cap to an existing instance:

``` pre
$ cat bidder-instance
{
   "instance":{
      "id":53,
      "qps_limit":75000
   }
}
$ curl -b cookies -c cookies -X PUT --data-binary @bidder-instance  "https://api.adnxs.com/bidder-instance/2/53"
{
   "response":{
      "status":"OK",
      "id":53
   }
}
```

Then if I want to view the instance:

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/bidder-instance/2'
{
   "response":{
   "status":"OK",
      "instances":[
         {
            "id":14,
            "bidder_id":2,
            "active":true,
            "datacenter_id":6,
            "ip_address":"8.12.231.108",
            "port":8081,
            "last_activity":"2016-12-31 17:07:17"
            "hostname":null
         },
         {
            "id":53,
            "bidder_id":2,
            "active":true,
            "datacenter_id":4,
            "ip_address":"64.210.63.124",
            "port":8081,
                        "qps_limit":75000
            "last_activity":"2016-12-31 19:51:13"
            "hostname":"rtb.yourdomain.com"         }
      ]
   }
}
```

**Modifying an Instance**

If I need to change an IP address:

``` pre
$ cat bidder-instance
{
   "instance":{
      "id":53,
      "ip_address":"64.210.63.124"
   }
}
$ curl -b cookies -c cookies -X PUT --data-binary @bidder-instance  "https://api.adnxs.com/bidder-instance/2/53"
{
   "response":{
      "status":"OK",
      "id":53
   }
}
```

Then to view the current status of all instances for my bidder(2):

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/bidder-instance/2'
{
   "response":{
   "status":"OK",
      "instances":[
         {
            "id":14,
            "bidder_id":2,
            "active":true,
            "datacenter_id":6,
            "ip_address":"8.12.231.108",
            "port":8081,
            "last_activity":"2016-12-31 17:07:17"
            "hostname":null
         },
         {
            "id":53,
            "bidder_id":2,
            "active":true,
            "datacenter_id":4,
            "ip_address":"64.210.63.124",
            "port":8081,
            "last_activity":"2016-12-31 19:51:13"
            "hostname":"rtb.yourdomain.com"         }
      ]
   }
   }
```





## Related Topics

- <a
  href="bidder-instance---faq.md"
  class="xref" target="_blank">Bidder Instance - FAQ</a>
- <a href="bidder-service.md" class="xref">Bidder Service</a>






