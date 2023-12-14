---
Title : Pass in User Data Offline
Description : If you have data that lives in your ad server or data warehouse today,
ms.date: 10/28/2023
you can make it accessible to your Xandr ad
campaigns. In this section we describe the server-side
---


# Pass in User Data Offline



If you have data that lives in your ad server or data warehouse today,
you can make it accessible to your Xandr ad
campaigns. In this section we describe the server-side
integration that allows you to pass this data into our
<a href="server-side-cookie-store.md" class="xref">Server Side Cookie
Store</a>.

A Use Case

Let's say Prostarr Sportswear puts a pixel on every one of their pages
so that if a user visits, whether by search engine, through a link, or
by typing in a page directly, they can attach a user ID to that user's
cookie. Then segments can be associated to this user ID, such as
"purchased within last 2 weeks" or "viewed shoe model XJ12." Then
Prostarr wants to show ads to the users in these segments by using
Microsoft Monetize.

But what if Prostarr has segment information that cannot be passed to
Xandr so easily? For example, let's say Prostarr
creates an internal "Propensity to Buy" metric which rates users as low,
medium, or high. Or let's say a user who made a purchase and was put
into a "remarketing segment" returns a purchase and Prostarr makes an
internal correction to that segment.

User ID Mapping

Before you can pass us data, there must be a mapping of the
Xandr user ID and your user ID so that we can
attach the data to the right user and offer it for your future use.
Please read about this process at
<a href="user-id-mapping-with-getuid-and-mapuid.md" class="xref">User
ID Mapping</a>.

Server-Side Data Integration with Xandr

Once ID mapping has taken place, you can pass
Xandr your offline segment data via our <a
href="xandr-api/batch-segment-service.md"
class="xref" target="_blank">Batch Segment Service</a>.




