---
Title : Authentication Service
Description : Before you use the API, you will need to use your username and password
ms.date : 10/28/2023
to get an authorization token. To get the token, make a POST request to
---


# Authentication Service



Before you use the API, you will need to use your username and password
to get an authorization token. To get the token, make a POST request to
<a href="https://api.adnxs.com/auth" class="xref"
target="_blank">https://api.adnxs.com/auth</a>
with a JSON file containing your auth credentials.

This will return a JSON response with the token. You then have two
options:

- put the token in the header in future requests as Authorization: TOKEN
  or
- put it in a cookie using the method discussed below (**recommended**).

If you do not have a username and password, please contact your
Xandr representative.



<b>Note:</b> For an explanation of the errors
that you may encounter during and after authentication, see the "Errors"
section in <a
href="api-semantics.md"
class="xref" target="_blank">API Semantics</a>.




## Example

Create a JSON-formatted text file with your username and password. Below
we have used the `cat` command to show the output of an example file.

``` pre
$ cat auth
{
 "auth":
  {
    "username" : "USERNAME",
    "password" : "PASSWORD"
  }
}
```

Then make a POST request using the "auth" file. The authorization
request both sets a session cookie (IBAPI_SESSID) and returns a token in
JSON. Note that we used the "verbose" parameter in the below example.

``` pre
curl -v -X POST --data-binary @auth https://api.adnxs.com/auth
< HTTP/1.1 200 OK
< Date: Fri, 22 Aug 2008 12:12:13 GMT
< Set-Cookie: IBAPI_SESSID=622cee5f8c99c81e87614e9efc63eddb; path=/
< Content-Length: 58
< Content-Type: text/html
<
{
    "response": {
        "token": "622cee5f8c99c81e87614e9efc63eddb"
    }
}
```

This token can now be used to make a request from the API:

``` pre
$ curl -H "Authorization: 622cee5f8c99c81e87614e9efc63eddb" https://api.adnxs.com/member
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

Alternatively, we can use the cookie. This is the recommended method and
the notation we use in our examples. Here is an example using the Member
Service.

``` pre
$ curl -b cookies -c cookies -X POST -d @auth "https://api.adnxs.com/auth"
{
    "response": {
        "token": "622cee5f8c99c81e87614e9efc63eddb"
    }
}
$ curl -b cookies https://api.adnxs.com/member
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

You can authenticate successfully 10 times within a 5-minute period. Any
subsequent authentication attempts within those 5 minutes will result in
an error.


<b>Note:</b> When you authenticate, you
receive an authorization token that remains active for the 2 hours
following your most recent call. It is best practice to re-authenticate
only after you receive the "NOAUTH" error_id in your call responses. If
you follow this practice, the restraint above should have no impact on
your implementation.

In addition, the service will add a 24-hour hard expiry. When an API
session reaches the 24 hour mark, that session will expire, regardless
of when the most recent API call was made. The current behavior, in
which a session expires after two hours of inactivity on the part of the
client, will remain unchanged. Programs that follow the guidelines in <a
href="api-best-practices.md"
class="xref" target="_blank">API Best Practices</a> should not be
affected.








