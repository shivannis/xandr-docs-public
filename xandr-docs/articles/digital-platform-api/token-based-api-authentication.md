---
Title : Token-Based API Authentication
Description : To increase the security of your interactions with the Digital Platform
ms.date: 10/28/2023
ms.custom: digital-platform-api
API, we've implemented a signed token-based authentication system. This
---


# Token-Based API Authentication



To increase the security of your interactions with the Digital Platform
API, we've implemented a signed token-based authentication system. This
system uses JSON Web Tokens (JWT) to help ensure your sessions are as
secure as possible. Follow along with these instructions and you should
be up-and-running with JWT in no time.m



<b>Note:</b> This functionality is currently
available to all users of the Digital Platform API. While JWT
token-based authentication provides added security, at this time its use
is encouraged but not mandatory. See <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a> for more
information on authentication processes.




## What is JWT?

From the
<a href="https://jwt.io/introduction/" class="xref" target="_blank">JWT
website</a>:

"JSON Web Token (JWT) is an open standard (RFC 7519) that defines a
compact and self-contained way for securely transmitting information
between parties as a JSON object."

Xandr provides REST API services to allow you to
communicate with our system through command-line queries and JSON files,
and returns responses in the form of JSON. Implementing a standard that
allows you to securely transmit this information provides greater
protection of your data and Xandr's entire
system.

In addition, tokens enable better management of user logins. When your
password expires you need to immediately switch over to a new password.
With tokens, you can have multiple tokens at once, so when a token is
nearing expiration you'll have a transition period that gives you time
to update your login information.




## JWT Library

In order to use JWT tokens, you'll need to have a token generator. You
can generate JWT tokens by utilizing one of the many libraries available
on
the <a href="https://jwt.io/" class="xref" target="_blank">JWT website</a>. 




## Preparing to Use Tokens

Before you can use tokens, you'll need to log in using your password to
gather some information and get your tokens set up in
Xandr's system. Once your JWT token is
registered you won't need to login with a password again.

Start by authenticating and retrieving an initial login token:

``` pre
curl -X POST -d '{"auth":{"username":"<username>","password":"<PWD>"}}' https://api.appnexus.com/auth
```

The username and password are your standard login credentials.

Included in the response from this call will be a token, which will look
similar to this:

``` pre
"token": "hbapi:123456:9999aa0000dd9:nym2",
```

You'll use this token to access the system until you've registered your
public key (which we'll create in just a moment).

Next you need to retrieve your user ID. Retrieve your user ID by
calling the
<a href="user-service.md"
class="xref" target="_blank">User Service</a>:

``` pre
curl -H 'Authorization: hbapi:123456:9999aa0000dd9:nym2' 'https://api.appnexus.com/user?username=<username>'
```

As the currently logged on user, you can also use this command to find
your ID:

``` pre
curl -H 'Authorization: hbapi:123456:9999aa0000dd9:nym2' 'https://api.appnexus.com/user?current'
```

Make note of the id that's returned, you'll use this later in a JSON
file to set up your token.




## Create Private and Public Keys



<b>Note:</b> Info

Network Admin is the platform role required to create a public key for a
given account.



Your private key is used to sign your authentication requests. A private
key is meant to be exactly that: private. You don't want to share this
key with anyone. Run this command to create your private key:

``` pre
openssl genrsa -out my-api-key 2048
```

- <a href="https://www.openssl.org/docs/manmaster/man1/openssl.md"
  class="xref" target="_blank">openssl</a>: This is the command tool
  that will create a file containing your private key. It implements the
  Secure Sockets Layer and Transport Layer Security protocols.
- <a href="https://www.openssl.org/docs/manmaster/man1/genrsa.md"
  class="xref" target="_blank">genrsa</a>: The command that tells
  openssl to generate a private key. This uses the RSA cryptosystem.
- **-out my-api-key**: Put the private key into the file named
  my-api-key.
- **2048**: The size, in bits, of the private key. If you leave off this
  number the default is 512. We recommend a value of 2048.

The my-api-key file will replace your password as the secret that
protects your API account.

Use your private key to generate a public key:

``` pre
openssl rsa -in my-api-key -pubout > my-api-key.pub
```

- <a href="https://www.openssl.org/docs/manmaster/man1/rsa.md"
  class="xref" target="_blank">rsa</a>: The command that processes RSA
  keys.
- **-in my-api-key**: The file containing the private key to be used as
  input to create the public key.
- ** -pubout**: This option specifies that a public key is to be output
  rather than a private key.
-  \>
   my-api-key.pub: The file
  that will hold your public key.

Your public key will be shared with the API and is used to verify that
your private key was used to sign the JWT. 




## Replace Newline Characters

Your public key contains line breaks. Because this key will be sent to
the API as part of a JSON payload, you need to replace the line breaks
with newline characters: \n. You can either do this by hand and then
copy the key into your JSON file, or you can run the following command
and copy the output:

``` pre
perl -pe 's/n\n/\\n/g' my-api-key.pub
```



<b>Note:</b> Depending on your command-line
environment, this may just display the key with line breaks rather than
the \n character. If that happens, you'll need to manually enter a \n to
replace every line break when you copy the key to your JSON file.






## Create Your Public Key JSON File

Create a JSON file like the following:

``` pre
{
  "public-key": {
    "active": true,
    "name": "my-api-key",
    "user_id": <userid>,
    "encoded_value": "<public key>"
  }
}
```

Replace \<userid\> with the user ID we retrieved earlier.

For \<public key\>, paste in the full value of the public key, including
the BEGIN PUBLIC KEY and END PUBLIC KEY text. Remember to replace all
line breaks with \n. For example:

``` pre
"encoded_value": "-----BEGIN PUBLIC KEY-----\nMIIBI....\n......\n-----END PUBLIC KEY-----"
```

Save the JSON file. For this example, we've named the file
my-public-key.json.




## Register Your Public Key

Run the following command to register your public key:

``` pre
curl -H 'Authorization: hbapi:123456:9999aa0000dd9:nym2' -H 'Content-Type: application/json' -X POST -d @my-public-key.json 'https://api.appnexus.com/public-key?user_id=<userid>'
```

Notice that we used the same token in our call to the public-key service
that we used in our earlier call to the user service.

If your key was successfully registered, you'll receive a response
similar to this:

``` pre
{
    "response": {
        "status": "OK",
        "count": 1,
        "start": 0,
        "num_elements": 1,
        "debug_info": {
            "instance": "01.authentication-api.test1.nym2",
            "time": 475,
            "start_time": "2017-02-07T16:48:42.747Z",
            "version": "0.22.0",
            "request_id": "01.authentication-api.test1.nym2-1486486122747-0000000000000000000"
        },
        "public-key": {
            "active": true,
            "encoded_value": "-----BEGIN PUBLIC KEY-----\nMIIBI...\n...\n...\n-----END PUBLIC KEY-----",
            "name": "my-api-key",
            "user_id": 1234
        }
    }
    }
```




## Create a JWT Signature

JWT Generator PseudoCode Examples

The examples below assume that the user has set certain variables to
information specific to the key being used to authenticate with. For
example, the \`an_key_name\` variable used for the `kid` header in the
code below would hold the value of the `"name"` field used in the JSON
object during registration of the public key with
Xandr (see
<a href="token-based-api-authentication.md#ID-00000cd7__24"
class="xref">Register Your Public Key</a> above). The \`username\`
variable used for the `sub` header value would map to the username
associated with the key, etc.

**Python Example**

``` pre
# Generates the JWT signature, using the PyJWT library
with open(priv_key_path, 'r') as f:
            cert = f.read()
jwt_signature = jwt.encode({
                'sub': username, 
                'iat': datetime.datetime.utcnow()
            }, 
            cert, 
            algorithm='RS256', 
            headers={
                'kid': an_key_name, 
                'alg': 'RS256', 
                "typ":"JWT"
            }
        )
```

**NodeJS Example**

``` pre
var jwt = require('jsonwebtoken');
var token = jwt.sign({ sub: username, iat: epoch_time }, cert, { algorithm: 'RS256', header: { kid: an_key_name, alg: 'RS256' }}); 
```




## Authenticate with a JWT

It's now time to authenticate using our private key and your JWT
generation script. Run a command similar to this to create your JWT and
authenticate:

``` pre
curl -X POST -H 'Content-Type: text/plain' -d $(./<JWT generator>) https://api.appnexus.com/v2/auth/jwt
```

"JWT generator" is the script you created with a JWT library that
generates the token. There are pseudocode example above of what may be
in this JWT Generator. You can run your script separately and simply
pass in the token itself to this command.

This will return a response containing your new token:

``` pre
{
        "response": {
                "status": "OK",
                "token": "authn:184994:a1111111-6766-3b66-8544-f11111111ffd:lax1",
                "debug_info": {
                        "instance": "01.authentication-api.test1.lax1",
                        "time": 624,
                        "start_time": "2017-02-07T16:49:52.612Z",
                        "version": "0.22.0",
                        "request_id": "01.authentication-api.test102975.lax1-1486486192612-3065414328498075565"
                }
        }
        }
```




## Use Your Token

You can now use the token returned from your JWT call to authenticate
all calls into the API. For example, here's that same call to the user
API service using our new token:

``` pre
curl -H 'Authorization: authn:184994:a1111111-6766-3b66-8546-f11111111ffd:lax1' 'https://api.appnexus.com/user?current'
```




## New Session

After your session has expired, you'll need to authenticate again. But
from this point on you can skip all the steps in the previous section up
to Create a JWT Token. That means that for each session, you'll need to
create a new JWT token and use that token to authenticate the rest of
your API calls. You won't need to use your password again.




## Deactivate Your Public Key

You can remove API access by deactivating the public key. To deactivate
a key, create a JSON file like this:

``` pre
{
        "public-key": {
        "active": false
    }
}
```

As you can see, this file simply sets the
active field to **false**, which
indicates that the public key is no longer active. Run the following
command to deactivate the public key:

``` pre
curl -X PUT -H 'Authorization: authn:184994:a1111111-6766-3b66-8546-f11111111ffd:lax1' -H 'Content-Type: application/json' -d @pkdeactivate.json 'https://api.appnexus.com/public-key?key_id=2&user_id=1234'
```

In the command, you must include the JSON with the
active field set to **false** (in this
case we've included that JSON in the file pkdeactivate.json). You must
also include the **key_id** and the **user_id** in the query string
(public-key?key_id=2&user_id=1234).

You can find the key_ids for a user with a simple GET command:

``` pre
curl -H 'Authorization: authn:184994:a1111111-6766-3b66-8546-f11111111ffd:lax1' 'https://api.appnexus.com/public-key?user_id=1234'
```

You can easily reactivate the key with the same command we used to
deactivate it - simply change the JSON to set **active** to **true**.






