---
Title : Single Credential Login and Multi-Factor Authentication (MFA)
Description : This is an overview of single credential login and multi-factor
authentication.
---


# Single Credential Login and Multi-Factor Authentication (MFA)



This is an overview of single credential login and multi-factor
authentication.





Note:

With consolidation of Xandr to Microsoft family, we have integrated the
authentication process of the users (who are using Xandr products) to
the Microsoft Identity Platform. The profound advantage of this
integration is that users would be able use to access Xandr applications
using the same sign-on methods to access other Microsoft products.
Additionally, the integration to the Microsoft Identity Platform enables
new and more secure methods of authentication, powered by Microsoft.

For more details, visit
<a href="microsoft-identity-platform-login.html" class="xref"
title="This document outlines an overview of authenticating users for Xandr Advertising Products using Microsoft Identity Platform.">Microsoft
Identity Platform Login</a>.







Xandr is changing the way users access their
digital platform application user accounts via the user interfaces. As a
result of the changes, users will use a single set of authentication
credentials (email and password) to access all of their digital
application user accounts. After they're signed in, they will seamlessly
switch between their user accounts, using the
Member Switcher UI, without having
to log in to each one individually. At the same time, we are introducing
a compulsory second factor of authentication (MFA) in the form of a
one-time passcode (for example, Google Authenticator).





Note: This is a one-time use code. You
need to enter a new one-time use code every time that you try to
authenticate.





You can use your existing API credentials for API access. The only
change is that you need to reset your password when you log in to the
user interface and go to your account.





Note: Not all of our current accounts
have been migrated into this new way of authenticating. This only
applies to accounts who have already been migrated into the new system.









## Why Is This Change Happening?

Overall, we are simplifying how users manage their accounts in order to
address a number of long-standing pain points with how users access
Xandr’s digital platform applications. For
example:



- Users needed a separate set of authentication credentials to access
  each of their user accounts. Therefore, they must create, remember and
  periodically reset multiple passwords.
- Users had to sign in to each user account individually. Therefore,
  they had to sign out and sign back in each time they switched between
  user accounts/seats in order to transact on behalf of a different
  member.
- The more usernames and passwords a user has to remember, the more
  likely they are to write them down. This created a security risk for
  Xandr and our clients.



To make new accounts more secure, Xandr’s new
Information Security Policies (XISP) require all
Xandr applications be protected by a second
authenication factor of authentication.





## What Isn't Changing?

This new authentication method only applies to users who access our
applications via the UI. Users will continue accessing their API user
accounts using their individual sets of authentication credentials.
Changes to how users authenticate into their API accounts will be made
to API access in the near future.

API access still relies on username and password.





## Related Topics:



- <a href="set-up-single-credential-login.html" class="xref"
  title="This will guide you through the single credential login set up process.">Set
  Up Single Credential Login</a>
- <a href="set-up-multi-factor-authentication.html" class="xref"
  title="This will guide you through the multi-factor authentication set up process.">Set
  Up Multi-Factor Authentication</a>








