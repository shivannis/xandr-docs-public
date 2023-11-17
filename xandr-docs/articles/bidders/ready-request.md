---
Title : Ready Requests
Description : The Ready Request asks your bidder if it is ready to receive requests.
---


# Ready Requests



The Ready Request asks your bidder if it is ready to receive requests.
If an instance fails to respond to three subsequent requests, or
responds that it is not ready on any request, it will be taken out of
rotation and no further requests (bid, click, etc.) will be sent to this
instance until it responds that it is ready.



## Receiving Ready Requests

To receive ready requests, set the `ready_uri` field of the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
class="xref" target="_blank">Bidder Service</a> to the URI at which you
want to receive these requests.





## Responding to Ready Requests

To indicate readiness, respond with the character `1` in the response.
This can be in any form - JSON, free text, etc. - as long as a `1` is
present.



Warning: Do not use the character `1`
anywhere in your not-ready response. If you do, your not-ready response
will communicate readiness. For example, a not-ready response such as
`ready: "false (version 1.1)"` would be misinterpreted because of the
presence of the character `1`.







## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
  class="xref" target="_blank">Bidder Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-instance---faq.html"
  class="xref" target="_blank">Bidder Instance - FAQ</a>








