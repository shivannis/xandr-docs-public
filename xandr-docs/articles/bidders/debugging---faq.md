---
Title : Debugging - FAQ
## Connection Quality
**How can I get stats on technical data like timeouts, no_connections,
and so on?**
This is available in the
<a href="https://bidder.xandr.com/" class="xref" target="_blank">bidder
ms.date : 10/28/2023
---


# Debugging - FAQ




## Connection Quality

**How can I get stats on technical data like timeouts, no_connections,
and so on?**

This is available in the
<a href="https://bidder.xandr.com/" class="xref" target="_blank">bidder
UI</a> in the Metrics tab. Click edit and choose which metrics you would
like graphed. Relevant metrics include No connections, Mapped user imps,
Avg response time, Max response time, and Timeout %




## Traffic

**Why is my bidder not receiving any traffic?**

There are several reasons why a bidder may not be getting traffic. The
following are the most common explanations. Please also see <a
href="getting-started---faq.md"
class="xref" target="_blank">Getting Started - FAQ</a>.

- The bidder is not active. You can check your bidder's status with the
  <a
  href="bidder-service.md"
  class="xref" target="_blank">Bidder Service</a>.
- You have not set up any bidder instances. You can set up a bidder
  instance with the <a
  href="bidder-instance-service.md"
  class="xref" target="_blank">Bidder Instance Service</a>.
- Your bidder instances are not active. You must have at least one
  bidder instance active in the data center from which you would like to
  receive traffic.
- No active bidder instances are responding to the <a
  href="ready-request.md"
  class="xref" target="_blank">Ready Request</a>. In order to receive
  traffic, a bidder instance must respond with a 1 to ready requests.
- You have no active, ready bidder instances in the data center to which
  you are sending traffic. If your bidder instances are all in the east
  coast, but you are sending traffic to the west coast data center, you
  will not receive any impressions.
- No member is active for your bidder. This can be change with the <a
  href="member-service.md"
  class="xref" target="_blank">Member Service</a>.






