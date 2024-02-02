---
title: Partner Single Sign-on Access
description: In this article, learn about Partner single sign-on and how it works.
ms.date: 10/28/2023
---

# Partner single sign-on access

> [!IMPORTANT]
> This feature is no longer available. To integrate your company's SSO with Microsoft Identity Platform and to access the Xandr products, see [Microsoft Identity Platform Login](microsoft-identity-platform-login.md).

## What is partner single sign-on

Partner single sign-on allows users to use their own company/corporate Identity Provider (IDP) username and password to access Xandr systems and tools. This service allows you full control over the authentication of your user accounts that can access Microsoft Monetize. Basically, Xandr acts as the service provider for Microsoft Monetize. Xandr clients act as Identity Providers (IDPs) and control usernames, passwords and other information used to identify, authenticate and authorize users for Microsoft Monetize.

> [!IMPORTANT]
> Partner single sign-on only applies to Microsoft Monetize at this time. Users who gain access via the application programming interface (API) will not be able to use Xandr's SSO solution at this time.

## Why would I choose partner single sign-on

Partner SSO provides additional security and usability by providing:

- Auto creation of user accounts
- Permission control within your IDP
- Revocation of user access to Xandr accounts via your own systems

## Prerequisites/caveats for onboarding

- Single sign-on is only supported at this time for Microsoft Monetize and for users not enabled for the API.
- Xandr only supports single sign-on for one user account per IDP entity.
- It is currently possible to have Partner SSO users and non-partner SSO users under the same member.

## How do I get started

Contact your Account Manager or the [Xandr Support Team](https://help.xandr.com/s/login/), and inform them that you would like to sign up for single sign-on.
