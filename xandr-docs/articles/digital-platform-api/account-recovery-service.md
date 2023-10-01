---
Title : Account Recovery Service
Description : The Account Recovery Service allows you to reset your
Xandr password or retrieve your username.
---


# Account Recovery Service



The Account Recovery Service allows you to reset your
Xandr password or retrieve your username.



## Reset Your Password

If you cannot log in to the API due to a forgotten password, follow the
steps below to reset your password.

- <a
  href="account-recovery-service.html#ID-00000f66__create_json_formatted_file"
  class="xref">Step 1. Create a JSON-formatted file (Password Reset)</a>
- <a href="account-recovery-service.html#ID-00000f66__post_the_file"
  class="xref">Step 2. POST the file (Password Reset)</a>
- <a href="account-recovery-service.html#ID-00000f66__check_your_email"
  class="xref">Step 3. Check your email (Password Reset)</a>
- <a
  href="account-recovery-service.html#ID-00000f66__create_password_token_json_formatted_file"
  class="xref">Step 4. Create a password and token file (Password
  Reset)</a>
- <a
  href="account-recovery-service.html#ID-00000f66__put_the_file_password_reset"
  class="xref">Step 5. PUT the file (Password Reset)</a>

**Step 1. Create a JSON-formatted file (Password Reset)**

Include your username.

``` pre
$ cat reset_password_1
{
    "account-recovery": {
        "username" : "USERNAME"
    }
}
```

**Step 2. POST the file (Password Reset)**

Post the file to the account recovery service.

``` pre
$ curl -X POST -d @reset_password_1 'https://api.appnexus.com/account-recovery'
{
    "response": {
        "status": "OK",
        "dbg_info": {
            ...
        }
    }
}
```

**Step 3. Check your email (Password Reset)**

The previous step triggers the system to send an email to the address
associated with the username in the JSON-formatted file. The email
includes the token that you will use in the next step. Note that the
token is valid for 16 hours.



Note: If you don't receive an email,
the username in the file may not be valid. Check the username for
accuracy and try again. If you have forgotten your username, see <a
href="account-recovery-service.html#ID-00000f66__retrieve_your_username"
class="xref">Retrieve Your Username</a> below.



**Step 4. Create a password and token file (Password Reset)**

Create a JSON-formatted file including your user name, your new
password, and the token received in your email.

``` pre
$ cat reset_password_2
{
    "account-recovery": {
        "username": "USERNAME",
        "password": "NEW_PASSWORD",
        "token": "TOKEN_FROM_EMAIL"
    }
}
```

**Guidelines for creating your password**

When creating your password, please create a complex password with the
following:

- 10 or more characters
- 64 or fewer characters
- At least one capital letter (A–Z)
- At least one lowercase letter (a–z)
- At least one digit (0–9)
- At least one special character (such as \#, $, ?, %, &)

**Step 5. PUT the file (Password Reset)**

Put the file to the account recovery service.

This resets your password and sends a confirmation email to the address
associated with your username. Once you receive the confirmation email,
you can log in to the API with your username and new password. See
Authentication Service for guidance.

``` pre
$ curl -X PUT -d @reset_password_2 'https://api.appnexus.com/account-recovery'
{
    "response": {
        "status": "OK",
        "dbg_info": {
            ...
        }
    }
}
```



<div id="ID-00000f66__retrieve_your_username" >

## Retrieve Your Username

If you cannot log in to the API due to a forgotten username, follow the
steps below to retrieve your username.

- <a
  href="account-recovery-service.html#ID-00000f66__retrieve_username_create_json_formatted_file"
  class="xref">Step 1. Create a JSON-formatted file (Retrieve
  Username)</a>
- <a
  href="account-recovery-service.html#ID-00000f66__retrieve_username_post_file"
  class="xref">Step 2. POST the file (Retrieve Username)</a>
- <a
  href="account-recovery-service.html#ID-00000f66__retrieve_username_check_your_email"
  class="xref">Step 3. Check your email (Retrieve Username)</a>

**Step 1. Create a JSON-formatted file (Retrieve Username)**

Include your email address.

``` pre
$ cat retrieve_username
{
    "account-recovery": {
        "email" : "EMAIL_ADDRESS"
    }
    }
```

**Step 2. POST the file (Retrieve Username)**

Post the file to the account recovery service.

``` pre
$ curl -X POST -d @retrieve_username 'https://api.appnexus.com/account-recovery'
{
    "response": {
        "status": "OK",
        "dbg_info": {
            ... 
        }
    }
    }
```

**Step 3. Check your email (Retrieve Username)**

The previous step triggers the system to send an email to the address
specified in the file. The email includes the username(s) that are
associated with the email address. Once you receive the email, you can
log in to the API with your username and new password. See
<a href="authentication-service.html" class="xref">Authentication
Service</a> for guidance.



Note: If you don't receive an email,
the email address or host URL in the file may not be valid. Check the
values for accuracy and try again.







## Related Topics

- <a href="authentication-service.html" class="xref">Authentication
  Service</a>
- <a href="user-service.html" class="xref">User Service</a>






