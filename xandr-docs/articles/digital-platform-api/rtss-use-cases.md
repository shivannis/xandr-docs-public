---
Title : RTSS Use Cases
Description : <div id="rtss-use-cases__note-6fb11a01-6f04-4eec-b4f8-9e51de4e87d7"
class="note warning note_warning">
Warning: Beta Notice
- The Real-Time Signals Service is in closed beta status, and is subject
to change in the future.
---


# RTSS Use Cases





<div id="rtss-use-cases__note-6fb11a01-6f04-4eec-b4f8-9e51de4e87d7"
class="note warning note_warning">

Warning: Beta Notice

- The Real-Time Signals Service is in closed beta status, and is subject
  to change in the future.
- As we transition to open beta, **we will be adding a monthly charge
  for new and existing clients that use RTSS**. For more information,
  please speak to your account manager.





<div id="rtss-use-cases__p-dad8d449-e396-47af-9974-495096e0e112"
>

The RTSS beta is still under development, and may have additional
features deployed in response to changing use cases. This page lists the
current supported use cases.

- <a href="rtss-use-cases.html#rtss-use-cases__section-001"
  class="xref">OLC Geolocation</a>
- <a href="#rtss-use-cases/section-002" class="xref"
  target="_blank">Country Targeting</a>
- <a href="#rtss-use-cases/section-003" class="xref" target="_blank">IP
  Address and Range Targeting</a>
- <a href="#rtss-use-cases/section-004" class="xref" target="_blank">URL
  Targeting</a>
- <a href="rtss-use-cases.html#rtss-use-cases__section-005"
  class="xref">Events</a>



<div id="rtss-use-cases__section-001" >

## **OLC Geolocation**

RTSS uses the
<a href="http://openlocationcode.com/" class="xref" target="_blank">Open
Location Code (OLC)</a> open standard for geo-targeting. OLC supports
encoding of latitude and longitude coordinates. OLC also allows for
targeting the locality around a specific point, removing the need to
specify both a point and a radius. Full 10-character OLC codes allow
more granular targeting, while shorter codes increase the targeted area
around the point. Although RTSS supports 10-character OLC codes, we
recommend only using up to 8 characters due to limited granularity of
information received on bid impressions. Using 10 characters could
severely limit your reach, or prevent your campaign from buying at all.

To use Lat/Long targeting effectively with OLC, this information needs
to be reported by the device. If only the IP Address is provided, Xandr
will map it to a DMA or Postal Code. Currently, approximately 30% of
impressions received by RTSS contain Lat/Long coordinates.

RTSS will use Lat/Long for location whenever it is provided at the time
of impression, and will fall back to IP address otherwise. Lat/Long is
usually only provided via in-app impressions, when the user has
explicitly granted permission to the application to identify location of
the device.

In most cases involving a desktop or mobile browser, the IP address is
used to approximate location of the impression. IP Address precision is
usually sufficient to identify to a zip code for desktop, but in some
cases it can accurately identify a building, for example when an office
has an explicit IP range. For mobile carrier connections, the IP Address
will effectively give you the location of the cell tower that the device
is connected to.



<div id="rtss-use-cases__section-002" >

## **Country Targeting**

Geo Administrative targeting via Country-Regions is also supported.



<div id="rtss-use-cases__section-003" >

## **IP Address and Range Targeting**

RTSS supports targeting IP addresses or ranges, including targeting
businesses or internet providers via known blocks of IP addresses.



<div id="rtss-use-cases__section-004" >

## **URL Targeting**

RTSS URL Targeting currently supports:

- Exact URL matching
- URL component matching up to 3 paths deep

Wildcard domain matching is supported within components.



<div id="rtss-use-cases__section-005" >

## **Events**

Events are segments which could become active instantly across all data
centers, and expire within a specified period. Events are not associated
with any targeting.






