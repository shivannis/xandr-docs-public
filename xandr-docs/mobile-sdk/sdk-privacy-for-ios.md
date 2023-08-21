# SDK Privacy for iOS

<div class="body">

<span class="ph">Xandr</span>'s mobile SDKs include client support for
Global Privacy Platform (GPP), the
<a href="https://gdpr-info.eu/" class="xref" target="_blank">General
Data Protection Regulations</a> (GDPR), and the
<a href="https://oag.ca.gov/privacy/ccpa" class="xref"
target="_blank">California Consumer Protection Act</a> (CCPA).

GDPR provides regulations for the processing, movement, and protection
of personal data within the European Union. CCPA creates new consumer
rights relating to the access to, deletion of, and sharing of personal
information that is collected by organizations. The Global Privacy
Platform (GPP) enables advertisers, publishers and technology vendors 
to adapt to regulatory demands across markets. 

<div class="p">

<div id="ID-00003689__note_zlc_vbs_lwb" class="note warning">

<span class="warningtitle">Warning:</span> This resource should not be
construed as legal advice and <span class="ph">Xandr</span> makes no
guarantees about compliance with any law or regulation.  Please note
that because every company and its collection, use, and storage of
personal data is different, you should also seek independent legal
advice relating to obligations under European regulations, including the
GDPR and the existing ePrivacy Directive. Only a lawyer can provide you
with legal advice specifically tailored to your situation. Nothing in
this guide is intended to provide you with, or should be used as a
substitute for, legal advice tailored to your business.

Note our Service Policies (for Buying, Selling, and Data Providers)
include privacy-specific obligations of which you should be aware.

</div>

</div>

<div class="p">

<div id="ID-00003689__note_v2b_xcs_lwb" class="note">

<span class="notetitle">Note:</span> Publishers are responsible for
providing notice, transparency, and choice and for collecting consent
from their users in accordance
with <a href="https://iabeurope.eu/transparency-consent-framework/"
class="xref" target="_blank">the Framework policies</a>, either using
their own Consent Management Provider or working with a vendor.

- <a href="https://register.consensu.org/CMP" class="xref"
  target="_blank">Register your own CMP</a>
- <a href="https://advertisingconsent.eu/cmp-list/" class="xref"
  target="_blank">List of registered CMPs</a>

All vendor SDKs (including mediation SDKs) are responsible for looking
up approved vendor and consent information on their own;
<span class="ph">Xandr</span> does not pass this information to these
SDKs

</div>

</div>

<div class="section">

## General Data Protection Regulations (GDPR)

In order for our clients to meet their transparency, notice and
choice/consent requirements under the GDPR and the existing ePrivacy
Directive, <span class="ph">Xandr</span>
supports <a href="https://iabeurope.eu/transparency-consent-framework/"
class="xref" target="_blank">the IAB Europe Transparency &amp; Consent
Framework</a> (the "Framework").

This is a reference for mobile app publishers using
<span class="ph">Xandr</span>'s Mobile SDK to surface notice,
transparency and choice to end users located in the EEA and signal
approved vendors and, where necessary, pass consent, to
<span class="ph">Xandr</span> and demand sources and their vendors
through the <span class="ph">Xandr</span> platform.

<span class="ph">Xandr</span> provides three APIs in the Mobile SDK for
mobile app publishers to use the Framework. (These  APIs are available
in Mobile SDK version 4.8+ for Android and 4.7.1+ for iOS.) These APIs
allow you to:

- define whether the user is located in the European Economic Area (the
  "EEA") and that European privacy regulations should apply
- set the <a
  href="https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework/commit/a32574941ce201708e30e78702278efe1ce6cd59"
  class="xref" target="_blank">IAB Europe</a> (IAB) consent string

This information will be persisted by the SDK and will be added to each
ad call for applying platform controls. 

Publishers/Consent Management Platforms (CMPs) are free to store these
values in a SharedPreferences interface (as defined by <a
href="https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework/blob/master/README.md"
class="xref" target="_blank">Mobile In-App CMP API v2.0: Transparency
&amp; Consent Framework</a>) instead of passing them via the new APIs,
and the SDK will read the values as a fallback.

``` pre
/** * Set the consentRequired value in the SDK
 *
 * @param true if subject to GDPR regulations, false otherwise
 */
 [ANGDPRSettings setConsentRequired:1];
      
/**
 * Set the consent string in the SDK
 *
 * @param A valid Base64 encode consent string as per https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework
 */
[ANGDPRSettings setConsentString:@"BOMyQRvOMyQRvABABBAAABAAAAAAEA"];
/**
 * Set the purpose consents in the SDK
 *
 * @param A valid Binary String: The '0' or '1' at position n – where n's indexing begins at 0 – indicates the consent status for purpose ID n+1; false and true respectively. eg. '1' at index 0 is consent true for purpose ID 1
 */
[ANGDPRSettings setPurposeConsents:@"10101001"];
```

<div id="ID-00003689__note_lvj_gds_lwb" class="note">

<span class="notetitle">Note:</span> To ensure proper monetization and
relevant targeting, the SDK should be enabled to send the device
information. Setting the `consentRequired` and `purposeConsents` flag
correctly will help ensure proper device information is sent. Refer to
the table below to determine whether the device details will be passed
or not.

</div>

The table below describes the actions taken for the
different `purposeConsents` values in combination with `consentRequired`
values.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d5839e165" class="entry cellborder"
style="vertical-align: top"> </th>
<th id="d5839e167" class="entry cellborder"
style="vertical-align: top">deviceAccessConsent= true</th>
<th id="d5839e170" class="entry cellborder"
style="vertical-align: top">deviceAccessConsent= false</th>
<th id="d5839e173" class="entry cellborder"
style="vertical-align: top">deviceAccessConsent= undefined</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d5839e165 "><code
class="ph codeph">consentRequired=false (gdprApplies = false) </code></td>
<td class="entry cellborder"
headers="d5839e167 ">The SDK will read and pass IDFA/AAID info to
server. </td>
<td class="entry cellborder"
headers="d5839e170 ">The SDK will <strong>not</strong> read and pass
IDFA/AAID info to server. </td>
<td class="entry cellborder"
headers="d5839e173 ">The SDK will read and pass IDFA/AAID info to
server. </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d5839e165 "><code
class="ph codeph">consentRequired=true (gdprApplies = true)</code></td>
<td class="entry cellborder"
headers="d5839e167 ">The SDK will read and pass IDFA/AAID info to
server. </td>
<td class="entry cellborder"
headers="d5839e170 ">The SDK will <strong>not</strong> read and pass
IDFA/AAID info to server.</td>
<td class="entry cellborder"
headers="d5839e173 ">The SDK will <strong>not</strong> read and pass
IDFA/AAID info to server.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d5839e165 "><code
class="ph codeph">consentRequired=undefined (gdprApplies = undefined)</code></td>
<td class="entry cellborder"
headers="d5839e167 ">The SDK will read and pass IDFA/AAID info to
server. </td>
<td class="entry cellborder"
headers="d5839e170 ">The SDK will <strong>not</strong> read and pass
IDFA/AAID info to server.</td>
<td class="entry cellborder"
headers="d5839e173 ">The SDK will read and pass IDFA/AAID info to
server.</td>
</tr>
</tbody>
</table>

</div>

  <span class="ph">Xandr</span> provides three APIs that enable SDK
users to set, retrieve and clear U.S. Privacy User Signal
Mechanism controls. The IAB Tech Lab has formalized and adopted the
"us_privacy" string as the mechanism to encode data about the
information disclosed to the user and user elections under various US
privacy laws, starting with the CCPA.

</div>

<div class="section">

## California Consumer Privacy Act (CCPA)

This information will be persisted by the SDK and will be added to each
ad call for applying platform controls.  

Publishers/Consent Management Platforms (CMPs) are free to store these
values in a SharedPreferences interface (as defined by <a
href="https://iabtechlab.com/wp-content/uploads/2019/11/US-Privacy-USER-SIGNAL-API-SPEC-v1.0.pdf"
class="xref" target="_blank">IAB's CCPA Compliance Mechanism</a>) instead
of passing them via the new APIs, and the SDK will read the values as a
fallback.

``` pre
/**
 * Set the IAB US Privacy String in the SDK
 */
[ANUSPrivacySettings setUSPrivacyString:@"1YNN"];
 
 
 
/**
 * Get the IAB US Privacy String in the SDK.
*/
[ANUSPrivacySettings getUSPrivacyString]
 
 
 
/**
 * Reset the value of IAB US Privacy String that was previously set using setUSPrivacyString
*/
[ANUSPrivacySettings reset];
```

</div>

<div class="section">

## Global Privacy Platform (GPP)

<a
href="https://github.com/InteractiveAdvertisingBureau/Global-Privacy-Platform/blob/main/Core/CMP%20API%20Specification.md#in-app-details"
class="xref" target="_blank">Global Privacy Platform</a> is a single
protocol designed to streamline transmitting privacy, consent, and
consumer choice signals from websites and apps to ad tech providers.
These signals are packaged in a standardized, easily communicated
payload called a GPP String. The pre-parsed GPP data as well as the GPP
string shall be stored under <a
href="https://developer.apple.com/documentation/foundation/nsuserdefaults#1664798?language=objc"
class="xref" target="_blank">NSUserDefaults</a> (iOS). This will allow
the following:

- Vendors to easily access GPP data.
- GPP data to persist across app sessions.
- GPP data to be portable between CMPs to provide flexibility for a
  publisher to exchange one CMP SDK for another.
- Vendors within an app to avoid code duplication, by not requiring to
  include a GPP string decoder while still enabling all typical use
  cases.  

<div id="ID-00003689__note_q4s_pds_lwb" class="note">

<span class="notetitle">Note:</span> If a Publisher chooses to remove a
CMP SDK from their app they are responsible for clearing all IABGPP\_\*
vestigial values for users so that vendors do not continue to use the
GPP data therein.

</div>

  <span class="ph">Xandr</span> SDK will then read the values from
NSUserDefault which is then passed to the ad call. Following are the
strings SDK will query from : 

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d5839e317" class="entry cellborder"
style="vertical-align: top">Key Name</th>
<th id="d5839e320" class="entry cellborder"
style="vertical-align: top">Data type</th>
<th id="d5839e323" class="entry cellborder"
style="vertical-align: top">Description </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d5839e317 "><code
class="ph codeph">IABGPP_HDR_GppString</code></td>
<td class="entry cellborder"
headers="d5839e320 ">string</td>
<td class="entry cellborder"
headers="d5839e323 ">Full consent string in its encoded form. e.g
"DBACNYA~CPXxRfAPXxRfAAfKABENB-CgAAAAAAAAAAYgAAAAAAAA~1YNN"</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d5839e317 "><code class="ph codeph">IABGPP_GppSID</code></td>
<td class="entry cellborder"
headers="d5839e320 ">string</td>
<td class="entry cellborder"
headers="d5839e323 ">Section ID(s) considered to be in force. Multiple
IDs are separated by underscore, e.g. “2_3”</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** <a href="ios-sdk.html" class="link">iOS SDK</a>

</div>

</div>

</div>
