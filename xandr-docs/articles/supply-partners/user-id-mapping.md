---
Title : User ID Mapping
Description : To store the mapping in your system, you must place a 1x1 image pixel on
your pages that calls the **getUID** service and
returns Xandr UUIDs to you for storage. Format
---


# User ID Mapping



To store the mapping in your system, you must place a 1x1 image pixel on
your pages that calls the **getUID** service and
returns Xandr UUIDs to you for storage. Format
the pixel as follows:

``` pre
<img src="https://ib.adnxs.com/getuid?https://ad.adserver.com/pixel?user_id=$UID&geo=35
&referrer=https://www.website.com" height=1 width=1>
```

A redirect URL should be specified in the getUID call, and it should
contain the $UID macro. This macro will be replaced with
the Xandr UUID when redirecting to the final
URL, allowing the UUID to be taken in and mapped by your server.

Here's what happens when a user views a page containing the pixel:

1.  The browser calls the **getUID** service.
2.  The **getUID** service replaces the $UID macro in the redirect URL
    with the Xandr user ID (retrieved from
    the Xandr browser cookie).
3.  The call is redirected to the final URL, where you receive
    the Xandr user ID, map it to your ID for the
    user, and store the mapping in your system.

Since you store the mapping on your end, you can
include Xandr user IDs in your bid requests.



## Client-Testing URLs

``` pre
https://ib.client-testing.adnxs.net/getuid?https://ad.adserver.com/pixel?user_id=$UID
https://ib.client-testing.adnxs.net/mapuid?member=MEMBER_ID&user=USER_ID
```





## Secure URLs

``` pre
https://secure.adnxs.com/getuid?https://ad.adserver.com/pixel?user_id=$UID
https://secure.adnxs.com/mapuid?member=MEMBER_ID&user=USER_ID
```





## Secure Client-Testing URLs

``` pre
https://secure.ib.client-testing.adnxs.net/getuid?https://ad.adserver.com/pixel?user_id=$UID
https://secure.ib.client-testing.adnxs.net/mapuid?member=MEMBER_ID&user=USER_ID
```






