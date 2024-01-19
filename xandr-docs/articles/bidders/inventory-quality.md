---

title: Overview - Inventory quality and auditing
description: Xandr controls inventory quality with baseline standards and offers buyers tools to choose inventory. 
ms.date: 11/24/2023
---

# Overview - Inventory quality and auditing

Xandr both controls inventory quality across the platform with baseline Inventory Content Standards, and gives buyers the tools to choose the type of inventory they want through our auditing system.

In addition to our baseline inventory content standards, some inventory (platform-reviewed) has been audited and tagged with content categories, sensitive attributes, and intended audiences by a Xandr team. Selling members of the platform are also given the option to provide this data themselves.

**Platform-reviewed:** Xandr's platform operations team has reviewed the highest-traffic domains on our platform; currently about 70% of volume. Metadata is provided on a domain level.

**Sellers:** Auditing may also be done by the network, aggregator, or exchange that represents the publisher. This metadata is provided on a tag level.

**Toolbars, browser plug-ins and related inventory:**

[Xandr's policy](https://microsoftapc.sharepoint.com/teams/XandrServicePolicies/SitePages/Policies-for-Buying.aspx) only allows browser plug-ins that provide informed consent to the user before installation and that do not modify or overlay publisher ads. We require that sellers segregate and identify their toolbar inventory within the Xandr system so that we can monitor compliance. Bidders can opt out of receiving requests from toolbar inventory entirely by excluding the toolbar inventory attribute in their [bidder profile](./legacy-bidder-profile-service.md).

**Buying based on sensitive attributes and intended audience**

When targeting inventory, you have the option to target only Xandr-reviewed inventory or to "trust" the self-auditing of other Xandr members. When choosing to target only Xandr-reviewed inventory there is a trade off between having less reach, but ensuring that you
are running on inventory that meets our requirements. This information is passed in the `inventory_audits` array within the bid request. For more information, see the [Inventory - FAQ](./inventory---faq.md).

## Xandr inventory quality and auditing standards

Please view the full details of inventory standards and auditing in [Xandr Policies](https://microsoftapc.sharepoint.com/teams/XandrServicePolicies/SitePages/Xandr-Service-Policies.aspx).
