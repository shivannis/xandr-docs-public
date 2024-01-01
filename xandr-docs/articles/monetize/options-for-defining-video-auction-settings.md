---
title: Options for Defining Video Auction Settings
description: The article highlights key factors for successful video auctions on a placement, which can be specified within the placement, transmitted in the HTTP header, or included in the bid request through query string parameters.
ms.date: 10/28/2023
---

# Options for defining vo auction settings

Key information for video auction success on a given placement can be defined in the placement itself, passed in the HTTP header, or included in the bid request using query string parameters.

To optimize auction results for an impression, Xandr needs certain information. This information is driven by what kind of inventory buyers are looking for.
For example, buyers often want to target video inventory with specific attributes (like a pre-roll slot in an ad pod, or a non-skippable video placement) for certain users in specific geographic areas and on desirable sites/apps. This information can be provided in several ways:

- Hard-coded on the placement. If values such as `skippable` are hard-coded on the placement, they do not need to be passed in on the query string
- Passed in the HTTP header on client- or server-side calls. If calls are made on the client side, Xandr should receive IP, user agent, and device via the HTTP header For server-side calls, IP and user agent should be passed in the header.
- Passed in on the query string. Any information that is not hard-coded  on the placement or passed in on the HTTP header should be passed as query-string parameters.
  
> [!NOTE]
> Values passed on the query string always override values hard-coded in the placement or passed in the header.
