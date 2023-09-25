---
Title : Working with Segments
Description : Segment pixels use information about a user, such as webpages they
visit, actions they take, or qualities such as gender, location, and
wealth, to assign that user to a group called a segment. Segment data is
---


# Working with Segments



Segment pixels use information about a user, such as webpages they
visit, actions they take, or qualities such as gender, location, and
wealth, to assign that user to a group called a segment. Segment data is
written to and extracted from the server-side cookie store via segment
pixels.

If you're new to the concept of pixels, we recommend you read a little
more about
<a href="https://en.wikipedia.org/wiki/HTTP_cookie" class="xref"
target="_blank">Cookies</a>, which are text files associated with
specific domains that live in your browser and contain information such
as how many times you have been served a particular ad by the domain
adserver.com, or what's in your shopping cart from myfavoritestore.com.

Xandr segment pixels look something like this:

``` pre
https://ib.adnxs.com/seg?add=1,2,4
```

where 1, 2, 4 are Xandr segment IDs.

For example, let's say ProStarr Sportswear wants to target users that
have purchased from their online store in the past. They can put a
segment pixel on their checkout page. When a user checks out, the pixel
fires and "Segment 123" is written into the server-side cookie store.
When the user visits some other page, say mysite.com, the cookie is
read, and ProStarr knows that this user is in Segment 123.

To remove users from a segment, use this syntax:

``` pre
https://ib.adnxs.com/seg?remove=1,2,4
```

These segment pixel calls to `/seg` will always return a 1x1 invisible
GIF, unless a piggyback pixel redirect parameter is included.

Member- vs. Advertiser-Level Segments

Members can create segment pixels that are
attached to a specific advertiser, or they can create network-wide
segment pixels that are available for targeting to all the network's
advertisers. An advertiser-level segment is only available to that
advertiser's campaigns. You can move a segment from advertiser-level to
Member-level by changing the advertiser_id to
null via the API.

Server Side Cookie Storage

We store all cookie data server side in our
<a href="server-side-cookie-store.md" class="xref">Server Side Cookie
Store</a>. This way it is accessible for all impressions. Soon we will
enable access to our customers cookie store data at any time, outside of
ad calls. Customers can also traffic in offline user data to our cookie
store so that it can be usable during ad calls. Please see
<a href="pass-in-user-data-offline.md" class="xref">Pass in User Data
Offline</a> for details.

Segment Load Reporting

These metrics are associated with each segment over the selected time
period. You can change the time period using the dropdown menu.

In addition to "standard" segments, QuickStats are also available for
the following segment types:

- Segments shared with other members.
- Segments uploaded via the API's <a
  href="xandr-api/batch-segment-service.md"
  class="xref" target="_blank">Batch Segment Service</a>.

<table id="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__1"
class="entry">Metric</th>
<th
id="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__1"><strong>Name</strong></td>
<td class="entry"
headers="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__2">This
is the segment name.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__1"><strong>ID</strong></td>
<td class="entry"
headers="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__2">This
is the segment Xandr ID.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__1"><strong>Data
Provider</strong></td>
<td class="entry"
headers="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__2">This
is the data provider name.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__1"><strong>Price</strong></td>
<td class="entry"
headers="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__2">This
column displays the price a buyer has paid for a segment. It allows the
buyer to toggle between these two options:
<ul>
<li>CPM (default)</li>
<li>% Media Cost</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__1"><strong>Active
Users</strong></td>
<td class="entry"
headers="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__2">This
is the count of active users in a segment over a 24-hour period.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__1"><strong>Daily
Loads</strong></td>
<td class="entry"
headers="ID-000013c3__table-eb62c552-c771-4dec-afd2-ef7b9beb167e__entry__2"><p>The
average number of times a user is added to a segment. (This is also
known as 'segment fires'.)</p>
<p>This allows you to see growth and reduction of segments.</p></td>
</tr>
</tbody>
</table>

Please note that contextual segments (from contextual or real-time data
providers) will not show loads in this report. This is because
contextual segments do not actually involve a pixel being fired.
Instead, they are added to an impression in real time.

Max Usersync Pixels

You can set a maximum number of
<a href="user-id-syncing-with-external-partners.md" class="xref">user
syncs</a> that can happen on your segment pixel. If you are using
multiple pixels in a single call (for example, to add a user to 2
segments in a single pixel call), the LOWEST max usersync pixel value
will be honored.

Related Topics

- <a href="segment-pixels-advanced.md" class="xref">Segment Pixels:
  Advanced</a>: More advanced manipulation of segment pixels
- <a href="segment-targeting.md" class="xref"
  title="You can target users within segments by using Boolean expressions. Users get added to segments after they&#39;ve viewed or clicked a particular creative.">Segment
  Targeting</a>: Targeting the segments that you have created through
  pixels
- <a href="user-id-syncing-with-external-partners.md" class="xref">User
  ID Syncing with External Partners</a>: User ID syncing between
  Xandr and its platform partners
- <a href="create-a-segment-pixel.md" class="xref">Create a Segment
  Pixel</a>




