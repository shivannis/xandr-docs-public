---
Title : 04 - API Authentication
Description : Before you can make calls to any API service or report, you must use
your username and password to get an authorization token from the
authentication service. The token remains active for 2 hours, during
---


# 04 - API Authentication



Before you can make calls to any API service or report, you must use
your username and password to get an authorization token from the
authentication service. The token remains active for 2 hours, during
which you do not need to re-authenticate. This page walks you through
the authentication process.



Tip: If you have forgotten your
username or password, you can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/account-recovery-service.html"
class="xref" target="_blank">Account Recovery Service</a> to retrieve
your username or create a new password.



<div id="ID-00000715__section_clb_bks_swb" >

## Step 1. Create a JSON-formatted file including your username and password

Below, we have used the `cat` command to show the output of the file.

``` pre
$ cat auth
{
    "auth": {
        "username" : "USERNAME",
        "password" : "PASSWORD"
    }
}
```



<div id="ID-00000715__section_dgy_2ks_swb" >

## Step 2. POST the file to the authentication service

The request returns a token that remains valid for 2 hours. We suggest
using "-b cookies -c cookies" in the POST request to store the token in
a cookie.

``` pre
$ curl -b cookies -c cookies -X POST -d @auth 'https://api.appnexus.com/auth'
{
    "response": {
        "status": "OK",
        "token": "h20hbtptiv3vlp1rkm3ve1qig0",
        "dbg_info": {
            ...
        }
    }
}
```



<div id="ID-00000715__section_ohl_3ks_swb" >

## Step 3. Use the token when making calls to API services and reports

In the example below, we call the Member Service and authenticate using
the token stored in the cookie.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/member'
{
    "response": {
        "members": [
            {
                "id": "1",
                "name": "Car company c\/o Ad Agency",
                "active": "1",
                "bidder_id": "2"
            }
        ]
    }
}
```

Alternately, if you didn't store the token in a cookie, you can put the
token in the request header as "Authorization: TOKEN".

``` pre
$ curl -H "Authorization: 622cee5f8c99c81e87614e9efc63eddb" 'https://api.appnexus.com/member'
{
    "response": {
        "members": [
            {
                "id": "1",
                "name": "Car company c\/o Ad Agency",
                "active": "1",
                "bidder_id": "2"
            }
        ]
    }
}
```



<div id="ID-00000715__section_jnl_wxg_rwb" >

## Authentication Frequency

After authenticating, your token remains valid for 2 hours. You do not
need to re-authenticate within this time. If you do re-authenticate,
please note the following limitation: The API permits you to
authenticate successfully 10 times per 5-minute period. Any subsequent
authentication attempts within those 5 minutes will result in an error.



Tip: It is best practice to listen for
the "NOAUTH" `error_id` in your call responses and re-authenticate only
after receiving it.








