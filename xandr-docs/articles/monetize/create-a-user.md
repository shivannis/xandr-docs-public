---
Title : Create a User
Description : You can create users and assign them to various roles. Each role gives
---


# Create a User



You can create users and assign them to various roles. Each role gives
the user a different level of access to your account.
You can also create users who, rather than having
network access, have access only to reports for specific advertisers or
publishers. For each user you can personalize the formats used
for decimals and large numbers. This page walks you through the process.

Create a Network User

Network users have access to various areas and
functionality of your Network based on the roles
and permissions you specify. Only users with the **User Manager** role
can create a Network User.

User Details

**Getting There**

You add network users in the
Network section of
Monetize.. Go to
Network 
\>  Users and then click the
+ New button. This opens the
Create User dialog.

**Enter Contact Information**

From the User Details tab, enter the
user's Contact Information.

<div id="ID-00000577__p-e02a8b7a-9a7c-4e8d-b42d-ea004893cc4b" >



Note: The email ID enetered here will
be the primary username for signing into the Xandr products via the
Microsoft Identity Platform. Ensure the email is consistent across any
accounts in the Xandr platform, and matches the user's email for
authenticating to Microsoft products. For more details, visit
<a href="microsoft-identity-platform-login.html" class="xref"
title="This document outlines an overview of authenticating users for Xandr Advertising Products using Microsoft Identity Platform.">Microsoft
Identity Platform Login</a>.







Note: If the State is set to Inactive,
the user will not be able to log in.



**Select Numerical Formatting**

Within the Contact Information section
you'll also find options for numeric formatting. From the **Reporting
Decimal Format** and **Numerical Format** dropdowns, select the formats
that are conventional in the user's geographical location. Numbers
throughout Monetize will be displayed in the
format chosen here for this user.

- **Reporting Decimal Format** - Select whether a **Point** or
  Comma should be used for decimals
  when viewing numbers in reports.
  

  Note: When the Comma format is
  selected, users will not be able to export a report using CSV format.

  
- **Numerical Format** - Select the thousand separator and decimal mark
  for numbers everywhere in Monetize except in
  reporting. This setting controls both how numbers appear to the user
  as well as how numbers can be entered by the user.

**Provide API Username and App Permissions**

- **Login Credentials**: Enter a username. The username should not
  contain any special characters such as $, \#, and ". This will be the
  username the user can use to sign into the Xandr API. For accessing
  the Xandr Digital Platform UI products, the user's email will be used
  via the Microsoft Identity Platform to authenticate.
- **Permissions**: If this user needs to view billing information in
  Monetize, select the **Admin User** check box.

Roles & Permissions

On the Roles & Permission tab, select
the user role with the appropriate access rights for this particular
user.



Note: Once the user has been created,
you will not be able to change the user's role. To grant someone a
different level of access to Monetize, you will
have to create a new user.



<div id="ID-00000577__section-bedfeefe-b2a2-4ea2-bf06-b7bbc467b7f8"
>

- **Network Administrators** can view and edit all sections of
  Monetize (Network, Advertisers, Publishers,
  and Apps) and can run any report.
- **Network Observers** can view all sections of
  Monetize (Network, Advertisers, Publishers,
  and Apps) and can run any report but do not have editing capabilities.
- **Network Advertiser Managers** can view and edit the Advertiser
  section of Monetize for the advertisers to
  which they are assigned.
- **Network Publisher Managers** can view and edit the Publisher section
  of Monetize for the publishers to which they
  are assigned.

If you select Network Advertiser
Manager or Network Publisher
Manager, you will be presented with a selection box where you can
select various advertisers or publishers to either include, or exclude
from the user's access.

If you select Network or
Network Advertiser Manager , you will
also have the option to set Peer Approval
Status for the user.



Check the User must have peer approval to
activate campaigns checkbox if you want to require approval from
another user on the network before this user's campaigns can be set to
Active. This feature minimizes the risk of user-side errors in campaign
activation and can help users identify and change settings to improve
campaign performance.



Note: The
campaign peer approval feature sets requirements
for who must obtain approval, but not who has the ability to approve.
Any other user who is able to create campaigns for your network can
provide this approval. There is no way to designate a single approver of
others' campaigns.



Create an Advertiser User

You can create users for advertisers that want to run reports for
themselves. Only users with the **User Manager** and/or **Network
Advertiser Manager** role can create an Advertiser User. Note that this
is not the same as the Network Advertiser
Manager user: an advertiser user does not see data about any other
advertisers and does not have editing capabilities. The following steps
walk you through the creation process.

1.  You add advertiser users in the Advertiser section of
    Monetize. Go to
    Advertisers
     \>  Users and
    select the advertiser for which you want to create a user.
2.  On the Advertiser Users screen, click Add
    User. This opens the Create
    New User dialog.
3.  In the Contact Information
    section, enter the user's information. Also, select whether a point
    or comma should be used for decimals in the reports received by this
    user. The user State defaults to
    Active. Setting the state to
    Inactive will prevent the user
    from logging in.
4.  In the Login Credentials section,
    enter the username that the user will use to log in to
    Monetize. The username should not contain
    any special characters such as $, \#, and ". The username and
    password will be sent to the email address entered in the
    Contact Information section.
5.  To finish creating the new advertiser user, click
    Save. The user is then added to
    the list of advertiser users.

<div id="ID-00000577__section-3a397df9-901d-4d19-8a32-2761033afb56"
>

Create a Publisher User

You can create users for publishers that want to run reports for
themselves. Only users with the **User Manager** and/or **Network
Publisher Manager** role can create a Publisher User. Note that this is
not the same as the Network Publisher Manager user: a publisher user
does not see data about any other publishers and does not have editing
capabilities. The following steps walk you through the creation process.

1.  You add publisher users in the Publisher section of
    Monetize. Go to
    Publishers
     \>  Users and
    select the publisher for which you want to create a user.
2.  On the Publisher Users screen,
    click Add User. This opens the
    **Create New User** dialog.
3.  In the Contact Information
    section, enter the user's information. Also, select whether a point
    or comma should be used for decimals in the reports received by this
    user. The user **State** defaults to **Active**. Setting the state
    to **Inactive** will prevent the user from logging in.
4.  In the Login Credentials section,
    enter the username that the user will use to log in to
    Monetize. The username should not contain
    any special characters such as $, \#, and ". The username and
    password will be sent to the email address entered in the
    Contact Information section.
5.  To finish creating the new publisher user, click
    Save. The user is then added to
    the list of publisher users.






