---
Title : User ID Mapping with getUID and mapUID
Description : You may have internal offline data about users that you need to insert
into the Xandr
<a href="server-side-cookie-store.html"
---


# User ID Mapping with getUID and mapUID



You may have internal offline data about users that you need to insert
into the Xandr
<a href="server-side-cookie-store.html"
class="xref">server-side-cookie-store.html</a> so that it is available
for decisioning. If so, we must first map your internal user IDs and
Xandr user IDs in order to be able to match user
IDs on future requests. Depending on whether you will store the mapping
in your system or in ours, there are two ways to do this through pixel
calls: mapUID and getUID.

The **getUID** service retrieves the Xandr ID so
you can coordinate it with your own in-house ID server side or in your
own cookie space. Then you can pass in an offline data feed that says,
"update Xandr user ABC with the following
segment data." The **mapUID** service passes your internal ID to us for
mapping to the Xandr ID within the
Xandr cookie store.



Note: Note that the
Xandr user ID macro described below is `$UID`.
Unlike many of our other macros, it does not have curly braces.



A Basic Mapping Example

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>Prostarr User ID</strong></td>
<td class="entry">PS123</td>
</tr>
<tr class="even row">
<td class="entry"><strong>Xandr User
ID</strong></td>
<td class="entry">2894234234</td>
</tr>
<tr class="odd row">
<td class="entry"><strong>Shoe buyer Segment ID</strong></td>
<td class="entry">0005</td>
</tr>
</tbody>
</table>

If the advertiser Prostarr tells us that user `PS123` is in segment
`0005`, this will mean nothing to us. Instead, they have to tell us that
user `2894234234` is in segment `0005`.

To do this, Prostarr has done a previous mapping of all
Xandr and Prostarr Sportswear user IDs using the
GetUID service and stored that mapping in its internal database. A
GetUID call looks like

``` pre
https://ib.adnxs.com/getuid?URL 
```

where the URL is the the one you want the mapping directed to. This
pixel is placed on Prostarr's webpages, and when it fires, the
Impression Bus inserts the Xandr user ID into
the URL by replacing the `$UID` macro.



Tip: For a detailed walk-through of how
this works, see the
<a href="user-mapping-visual-and-walk-through.html" class="xref">User
Mapping Visual and Walk-Through</a>.



The getUID Service

A URL of your choice will receive a client-side call with the
Xandr user ID as a querystring parameter. During
the ad call, Xandr redirects the user to the
member's desired URL. The Impression Bus inserts the
Xandr user ID into the URL, either by replacing
a `$UID` macro, or by appending it to the end of the URL. When the user
does not have an Xandr cookie, "0" is returned
and Xandr attempts to create one. However, if
the user is encountering the getuid call for the first time, "0" will
not be returned.

Code

The format of the getUID Service is fairly simple:

``` pre
https://ib.adnxs.com/getuid?URL 
```

The secure version uses this format:

``` pre
https://secure.adnxs.com/getuid?URL 
```

Users without cookies or users who have opted out will be redirected
with a user ID of 0. If you would prefer not to receive user IDs of 0,
use this format:

``` pre
https://ib.adnxs.com/getuidnb?URL 
```

If you need the URL to remain URI-encoded, use this format:

``` pre
https://ib.adnxs.com/getuidu?URL 
```

JSON Support

To return the Xandr user ID in a JSON response
with CORS support, use the format:

``` pre
https://ib.adnxs.com/getuidj 
```

You will receive a JSON-formatted response like this:

``` pre
{"uid":1680598911678123849} 
```

To return a JSONP response with CORS support:

``` pre
https://ib.adnxs.com/getuidp?callback=ABC 
```

(Where `callback` is the callback function as defined on the query
string.) You will receive a JSONP-formatted response like this:

``` pre
ABC({"uid":1680598911678123849}) 
```

A getUID example

In most cases, it will be necessary to pass the user ID into a specified
parameter within the query string of the URL. To accomplish this, you
may use the `$UID` macro:

``` pre
 https://ib.adnxs.com/getuid?https://ad.adserver.com/pixel?adnxs_uid=$UID&geo=35&referrer=https://www.website.com 
```

The `$UID` macro will be replaced with the Xandr
user ID by the Impression Bus and the user will be directed to the
following URL:

``` pre
 https://ad.adserver.com/pixel?adnxs_uid=19241908471992&geo=35&referrer=https://www.website.com 
```

Use case: piggyback on a pixel call

An easy way to create this mapping is to piggyback the getUID Service
off of one of your existing pixel calls. You can adjust your pixel so
that when the pixel call is made, there will be an immediate redirect to
the Xandr getUID service, which will pass back
the user ID within the URL indicated by Xandr
Curate.

For example, let's assume the following pixel exists on a publisher site
today:

``` pre
 <img src="https://ad.adserver.com/pixel?id=234123" width=1 height=1/> 
```

Instead, fire the Xandr getuid pixel, providing
the URL of the adserver.com pixel:

``` pre
 https://ib.adnxs.com/getuid?https://ad.adserver.com/pixel?id=234123&adnxs_uid=$UID 
```

The getUID service redirects to the specified URL with the
Xandr user ID in place of the `$UID` macro:

``` pre
https://ad.adserver.com/pixel?id=234123&adnxs_uid=19241908471992 
```

When `adserver.com` receives this call, the
Xandr user ID can be inserted into
`adserver.com`'s server-side user data store where this mapping of user
IDs can be used by future impression and pixel calls through the
Xandr Impression Bus.

The mapUID Service



Tip: The mapUID service has fees
associated with it. If you're interested in using this option, please
speak with your Xandr representative.



The **mapUID** Service inserts your in-house ID into the
Xandr <a href="server-side-cookie-store.html"
class="xref">server-side-cookie-store.html</a>.

The format for a client-side pixel that maps your ID to ours in our
system is

``` pre
https://ib.adnxs.com/mapuid?member=MEMBER_ID&user=USER_UD 
```

where the member ID is the ID assigned to your company by
Xandr and the `USER_ID` is your company's user
ID. If you don't know your member ID, you can find out by making a `GET`
request to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/member-service.html"
class="xref" target="_blank">Member Service</a>.

If you have more than one user ID, you can separate them with
semicolons; for example:

``` pre
https://ib.adnxs.com/mapuid?member=123&user=ABC;DEF;GHI 
```

Expiration of mappings

The average time to live (TTL) for mapUID mappings is around 2.5 weeks.
Therefore it's very important that you fire the mapUID pixel as
frequently as possible and on as many pages as possible to keep your
mappings live.

Piggybacking a segment call off of a mapUID call

You can add user IDs to one or more segments in the
Xandr cookie store at the same time that you map
their ID to ours.

Here is the syntax:

``` pre
https://ib.adnxs.com/mapuid?member=[MEMBER_ID]&user=[USER_ID]&seg=[SEG_ID],[SEG_ID],[SEG_ID]

https://ib.adnxs.com/mapuid?member=123&user=12abc34565&seg=1,2,3
```

To pass in values for each segment use colons. (This example used
segment codes instead of IDs.)

``` pre
https://ib.adnxs.com/mapuid?member=123&user=[USER_ID]&seg_code=[code1]:[code1value],[code2]:[code2value],[code3]:[code3value] 
```

Sending us your segment data offline

For more information about how to send us your segment data offline, see
the API's <a
href="https://docs.xandr.com/bundle/xandr-api/page/batch-segment-service.html"
class="xref" target="_blank">Batch Segment Service</a>.

Related Topics

- <a href="user-id-syncing-with-external-partners.html"
  class="xref">user-id-syncing-with-external-partners.html</a>
- <a href="asynchronous-usersync-pixels.html"
  class="xref">asynchronous-usersync-pixels.html</a>




