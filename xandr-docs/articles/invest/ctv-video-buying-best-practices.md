---
Title : CTV Video Buying Best Practices
Description : This topic describes some key best practices for buying ad inventory on
connected TV (CTV) devices. CTV can include a TV that is connected to
---


# CTV Video Buying Best Practices



This topic describes some key best practices for buying ad inventory on
connected TV (CTV) devices. CTV can include a TV that is connected to
the Internet via an external device (for example a Blu-Ray player or a
gaming console), or a Smart Television.

Currently, CTV inventory is primarily purchased through deal campaigns.
You'll need to contact your account manager to set up a deal. However,
you should be familiar with the following topics to ensure a smooth
rollout.

**Frequency Capping**

Xandr supports frequency capping for video
advertising. However, because many publishers of OTT content do not pass
a user id persistently across platforms, you should always select the
**Show to users without cookies** checkbox under
Frequency and Recency when you set up
a line item. Otherwise, your ads may not serve on some publishers'
inventory. Note that because device IDs and user IDs are not always
available, frequency-capped CTV video campaigns can be more challenging
to scale than desktop and mobile campaigns.

Device Targeting

You can target specific OTT-capable or connected TV (CTV) devices such
as Roku and AppleTV as well as game consoles via device targeting. To
target these devices, select
Targeting
 \>  System  \>
 Device Model on the line item.
Specific models are searchable in the targeting interface by brand name,
model name, or model ID.

Segment Targeting

To implement behavioral segment targeting that includes CTV devices, you
should also implement cross-device targeting, which leverages device
IDs, user IDs, and household IPs to identify and precisely target users
as they engage with content on multiple devices. For more information,
see <a href="cross-device-targeting-and-measurement.md" class="xref"
title="Cross-device targeting and measurement, which can be enabled at the line item level, ties together events or actions for a unique individual that occur on different devices.">Cross-Device
Targeting and Measurement</a>. Please reach out to your account contact
for additional information and guidance.




<b>Warning:</b> Cross-device functionality is
available to sellers when running line items that purchase inventory
from the ad exchange using RTB. It's not available when sellers are
running managed campaigns on their own inventory.





Reporting

When reporting on video deal campaigns, you'll find the publisher's
information in the Application ID field. In addition, certain publishers
will also send specific channel information using this field. For
information on how to generate reports, see the
<a href="reporting-guide.md" class="xref">Reporting Guide</a>.

CTV app IDs can be used for detection, targeting, and reporting.

Related Topics

- <a href="buying-ott-video-inventory.md" class="xref">Buying OTT Video
  Inventory</a>
- <a href="ott-video-creative-specifications.md" class="xref">OTT Video
  Creative Specifications</a>




