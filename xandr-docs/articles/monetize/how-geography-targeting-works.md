---
Title : How Geography Targeting Works
Description : Geography targeting is supported by an IP lookup service provided by
<a href="https://www.digitalelement.com/" class="xref"
---


# How Geography Targeting Works



Geography targeting is supported by an IP lookup service provided by
<a href="https://www.digitalelement.com/" class="xref"
target="_blank">Digital Envoy</a>. This service maps IP addresses to
known countries, regions, cities, metro codes, and postal codes. We
currently use
<a href="https://www.digitalelement.com/solutions/netacuity-pulse/"
class="xref" target="_blank">Digital Envoy's NetAcuity Pulse</a>
database. Please note that GPS coordinates, when available, are not
derived from IP addresses but are provided directly from certain
environments when users consent to share their location (for example, in
mobile apps).

Geolocation is performed using the IP address received from the ad call.
This IP address is read in directly from client-side ad calls (for
example, `/ttj`) or contained in the request body of server-side bid
requests (for example, in OpenRTB).

We automatically update geolocation data provided by Digital Envoy every
two weeks when Digital Envoy publishes an updated database. After some
validation, we propagate this new data to our servers. For details on
recent and upcoming changes, see
<a href="changes-to-geography-objects.html" class="xref">Changes to
Geography Objects</a>.

Occasionally, new regions, cities, metro codes, and postal codes may
become available for targeting, while some others might be deactivated.
These changes can reflect actual geographic changes (for example, when a
country redefines its regions), changes in IP address allocations by
Internet Registries and ISPs, and improvements to Digital Envoy's
geolocation techniques. Countries may be added or deactivated as well,
however, this happens very infrequently.

If a country, region, city, or metro code has been deactivated, it will
no longer be available for targeting. If your line item
or campaign is already targeting a deactivated geography object,
it will appear grayed out.

Deactivated geography objects can also be identified via the API. See
the following API services:

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/country-service.html"
  class="xref" target="_blank">Country Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/region-service.html"
  class="xref" target="_blank">Region Service</a>
- <a href="https://docs.xandr.com/bundle/xandr-api/page/city-service.html"
  class="xref" target="_blank">City Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/designated-market-area-service.html"
  class="xref" target="_blank">Designated Market Area Service</a>




