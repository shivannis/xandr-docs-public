---
Title : **Troubleshooting Multi-Factor Authentication (MFA)**
Description : You can find answers to the most common issues associated with MFA.
---


# **Troubleshooting Multi-Factor Authentication (MFA)**



You can find answers to the most common issues associated with MFA.



## MFA Invalid Code

Some users are reporting that after entering their one-time password
they are getting an error that says: SEEMS THAT YOUR CODE IS NOT VALID.
PLEASE CHECK AND RETRY.

<div id="switching-between-user-accounts__p-89b1003b-8a19-4cb6-8558-a2f6bc7a9d8a"
>

**Solution**: This issue, most likely, is caused by the computer that
they are using to log in to the Xandr
application and the mobile app that they are using to generate the
one-time code to be out of sync in their respective clocks. Follow the
below steps to resolve the issue:



Note: The actual steps will vary
depending on the user's computer, mobile device and MFA app.



1.  Check the clock time in their computer and mobile device. Most
    likely it will be different by a number of minutes.
2.  Locate the CLOCK settings on your mobile device and follow the
    instructions mentioned in the below help topics according to your
    device platform:
    1.  iPhone: <a
        href="https://support.apple.com/guide/iphone/set-the-date-and-time-iph65f82af3e/ios"
        class="xref" target="_blank">Change the date and time on iPhone</a>
    2.  Android: <a
        href="https://www.androidcentral.com/why-wont-my-phone-keep-right-time"
        class="xref" target="_blank">How to fix the incorrect time on your
        Android phone</a>

    

    Note: You may have to disable **Set
    Time Automatically** (or something similar depending on your device)
    to prevent this issue from happening in the future.

    
3.  After both devices' clocks are in sync, try to authenticate once
    more using a **new** one-time code.







## MFA Authentication Timed Out

There are cases where due to lag/latency after entering your one-time
MFA code, you still get an authentication error.

**Solution**: Restart the log-in process and input a new MFA one-time
code again.





## MFA Timed Out

If you arrived to the MFA one-time code input screen, but do not input a
valid code within five (5) minutes, the following message will be
displayed: YOUR LOGIN ATTEMPT HAS TIMED OUT.

**Solution**: Restart the log-in process and input a new MFA one-time
code before it expires again.





## Auth0 Guardian MFA App

Some users are reporting that the app that they are using for MFA
authentication is no longer providing them with the MFA code. Many of
these users are using
<a href="https://auth0.com/docs/login/mfa/auth0-guardian" class="xref"
target="_blank">Auth0 Guardian</a> app.

**Solution**: Unlike <a
href="https://support.google.com/accounts/answer/1066447?hl=en&amp;co=GENIE.Platform%3DAndroid"
class="xref" target="_blank">Google Authenticator</a> which provides a
new MFA code for each authentication attempt, Auth0 Guardian instead
sends the user a push notification - NOT a code. The user needs to open
or access this notification and click
Allow to complete the MFA
authentication process.





## Don't Delete MFA App

It's possible that some users are interpreting the concept of MFA's
one-time passcode as "I only need to do it once and after that I can
delete the app". However, this is not the case.

**Solution**: Users need to have an MFA authentication app (for example,
Google Authenticator, Auth0 Guardian, etc.) permanently install on one
of their mobile devices for as long as they need to continue on
accessing a Xandr application that requires MFA
as part of the authentication process. If you have deleted the app, the
way to resolve this is to request for Product Support to reset MFA for
the affected users. Please contact Product Support with the email
address for the affected user.





## Multiple MFA Accounts in the MFA Authentication App

Many applications (Xandr and other vendors,
web/desktop/mobile) require users to setup MFA as part of the
authentication process. Each of these applications' MFA codes are unique
and specific to their respective application. It is possible for users
to end up with multiple MFA accounts under their single MFA
authentication app (for example, Google Authenticator, Auth0 Guardian,
etc.).

**Solution**: Most MFA authentication apps - NOT the individual
accounts - should allow a user to enter EDIT mode where they can rename
each individual MFA account to something more meaningful than the name
given by the MFA authenticator provider. This may help to make sure that
you are selecting the correct MFA code for the application that you are
trying to access.





## Related Topics

<a
href="single-credential-login-and-multi-factor-authentication-faq.html"
class="xref"
title="You can find answers to the most frequently asked questions about single credential login and MFA.">Single
Credential Login and Multi-Factor Authentication FAQ</a>






