---
Title : Advanced Frequency Management
Description : Advanced Frequency Management (AFM) is an innovative frequency-capping
feature that lets you control the number of impressions seen by users
who opt out of including traditional identifiers in ad requests
("cookieless users").
---


# Advanced Frequency Management



Advanced Frequency Management (AFM) is an innovative frequency-capping
feature that lets you control the number of impressions seen by users
who opt out of including traditional identifiers in ad requests
("cookieless users").



<div id="advanced-frequency-management__note-8a836acf-5755-4056-84ab-51bb7401186f"


Note: This feature is only applicable
to ALI (Augumented Line Items).



Historically, frequency capping for digital advertising has entirely
relied on the presence of ad-request identifiers to identify and assign
impression-cap rules for users. However, an increasing number of ad
requests no longer include an identifier.



Though the AFM model is built using data-containing identifiers, it
doesn't actually require users to pass any- identifiers within ad
requests to function. This allows advertisers to meet their reach and
**unique impression** goals without dependency on device environment.
Assuming a user has visited "website A,"Xandr
can predict the likelihood that the user will visit "website B." In
fact, Xandr can determine the probability of a
user having visited multiple websites (website B, C, and D), given that
they've already visited website A. Ultimately,
Xandr can estimate how many creatives have
already been delivered to a user within a particular time frame, based
on the website from which the ad request was received.

<div id="advanced-frequency-management__section_rd1_s5w_f5b"
>

## How to Enable AFM

<div id="advanced-frequency-management__p-b50e7653-cbff-40c2-9bc0-1e824c9495f8"
>

AFM will be automatically actived to help adhere to your frequency cap
on impressions without identifiers once you toggle “Include users
without cookies” **and** select a daily frequency cap on your Line item.

<div id="advanced-frequency-management__note-404960e7-d777-4f4d-8ec0-f78d9b6d3047"


Note: This activation is limited to
line item objects and are not applying to frequency caps set on
advertisers, insertion orders and creatives.







<div id="advanced-frequency-management__section_cb2_vhx_f5b"
>

## AFM Reporting



As with traditional frequency caps, you can find your line item's
**unique impressions per user/device** involved in AFM capping in the
<a href="buyer-reach-and-frequency-report.html" class="xref">Buyer Reach
and Frequency Report</a>. There are now three frequency cap types in
this report: **Classical**, **Advanced**, and **None**.

<div id="advanced-frequency-management__note_zjv_fxw_f5b"


Note: Ensure that you only reference
**identified imps** and **imps per identified device** when analyzing
your AFM performance in the **Buyer Reach and Frequency Report**.










