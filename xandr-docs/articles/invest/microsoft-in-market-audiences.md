---
title: Microsoft Invest - In-Market Audiences
description: In this article, learn about Microsoft Invest's In-Market audiences, which consist of curated groups of users actively thinking about buying in a specific category. 
---

# Microsoft Invest - In-Market audiences

> [!NOTE]
> This feature is currently in Alpha. It is still under development and is subject to change without notice. To enable this feature, contact your Xandr Account Representative.

Microsoft In-market Audiences are curated lists of users determined to be in market and ready to buy within a particular category. These
segments are based on Microsoft’s unique intent signals, including search on Bing and user activity on Microsoft solutions. The power of
search behaviour indicates that the audiences have a high probability of conversion.

In-market Audiences are global, and available in more than 90 markets. Take a look at [Segment Targeting](https://download.microsoft.com/download/4/0/0/40099106-6f9f-4b38-8aac-0dc7567404db/In-Market-Audiences-segment-list-Invest.xlsx) for all the available in-market audience segments.

## Set up Microsoft segment targeting on a line item

1. Click on the **Audience & Location Targeting** subsection option on the left pane within the **Create New Line Item** screen or **Edit Line Item** screen.

1. An **Audience and Location Segments** panel is displayed on the right. Now, click on **Microsoft** from the targeting model.

1. Select a segment on the left to start building your audience.

1. Click **Save**.

## Special considerations for Microsoft In-Market audiences

Due to the proprietary nature of this data, there will be a set of data protections applied to line items when targeting Microsoft In-Market Audiences.

| Area of Impact | Description of Impact |
|:---|:---|
| Measurement | There are no measurement integrations currently supported when using Microsoft Audiences. |
| Creative | - Creatives must be hosted, non-HTML5. <br> - 3rd party pixels will be blocked at auction time. <br> - Segment pixels will be blocked at auction time. |
| Reporting | Log level data feeds containing auction data will have the following set of fields obfuscated or removed completely:<br> - Time stamp<br> - User ID 64<br> - IP Address<br> - Operating System<br> - Browser<br> - Latitude<br> - Longitude<br> - Device ID<br><br> The **Advertiser Attributed Conversions** report will have the following set of fields obfuscated or removed for impression events associated with line items targeting Microsoft Audiences:<br> - Time stamp<br> - Auction ID |
