---
Title : Global Privacy Platform
Description : The <a
href="https://github.com/InteractiveAdvertisingBureau/Global-Privacy-Platform"
---


# Global Privacy Platform





The <a
href="https://github.com/InteractiveAdvertisingBureau/Global-Privacy-Platform"
class="xref" target="_blank">Global Privacy Platform</a> (GPP) is a
protocol that helps to consolidate the management of different user
consent signals from a variety global privacy jurisdictions. It is a
communication layer that interacts with frameworks such as the
Transparency and Consent Framework (<a
href="https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework/tree/master/TCFv2"
class="xref" target="_blank">TCF</a>) and the US Privacy API (<a
href="https://github.com/InteractiveAdvertisingBureau/USPrivacy/blob/master/CCPA/USP%20API.md"
class="xref" target="_blank">USPAPI</a>) to convert multiple signals
into a single API, thereby making communication between ad tech vendors
more efficient.

In order to be compliant with state legislation in the United States,
Xandr will support the '<a
href="https://github.com/InteractiveAdvertisingBureau/Global-Privacy-Platform/tree/main/Sections/US-States"
class="xref" target="_blank">US-States</a>' section of the GPP as of
01.01.23. That means that publishers and advertisers operating in the
United States will have an industry-accepted method of maintaining legal
compliance and respecting the privacy of their users.





## How Does The GPP Work

The GPP works by translating consent signal frameworks into a signal
API. It first ingests multiple signals and then creates a single
ingestible signal for downstream vendors to interpret. For example, if a
page is using both the TCF and the USPAPI, the GPP will convert the
signals into a single GPP string, as shown below.

<div id="Global_Privacy_Platform__p-3a132984-d82c-4641-aa3c-6522abb53f4c"
>

  

<div class="imagecenter">

<img src="../images/global-privacy-platform/gpp_works.png"
id="Global_Privacy_Platform__image-0e853cde-6e4e-45aa-8b91-155ce16fc269"
class="image imagecenter" />



  



The GPP string always consists of a 'header' and then the main string,
which is divided into 'sections'. Each section relates to a local
privacy framework. In the example above, the GPP string consists of TCF
and USPAPI (CCPA) sections, as well as a header which provides
information on which sections are included in the main string.





## Consent Management Platforms

In general, website owners can work with Consent Management Platforms
(CMPs) to create and transmit the consent preferences of their users.
The CMP is responsible for surfacing a banner (the so called 'cookie
banner') on the website which presents users with the options they have
with regards to the usage of their personal information. The CMP then
converts the consent choices of the user into a string, depending on the
framework being used. CMPs which use the GPP are able to surface banners
which include multiple legislative frameworks from different
jurisdictions to end users and then to translate those choices into a
single GPP string. They are also able to signal the jurisdiction of the
end user to downstream vendors, so those vendors can decide how to apply
global privacy laws.





## How We Apply GPP Controls



In general, ad tech vendors need to know two things in order to process
privacy controls:

1.  The local legislative framework of the user (for example, if the
    user is in the EU, then it's GDPR.)
2.  For which data processing purposes the user has granted consent
    (consent elections) or the legal bases for processing data which
    do/do not apply.

In the GPP framework, this information is conveyed by 'applicable
sections' (which sections of the string should be enforced) and the GPP
string itself. Taken together, these parameters allow Xandr to
understand the consent choices of the end user and to know which privacy
law to apply.







## AD Call Examples

**Prebid**



In order to use the GPP, website owners need to:

1.  Work with a GPP-enabled CMP

2.  Update to the latest version of prebid.js

3.  Install the consent management module

4.  Update the prebid config, as shown below:

    ``` pre
    var pbjs = pbjs || {};
    pbjs.que = pbjs.que || [];
    pbjs.que.push(function() {
    pbjs.setConfig({
      consentManagement: {
        gpp: {
          timeout: 10000,    // time in ms
          cmpApi: 'iab'      // activates logic for module, leaving gpp object out keeps module off
        }
      }
    });
    ```

The ad call made to Xandr will then be updated to include the GPP params
as outlined below:

``` pre
{
    "privacy": {
        ...
        "gpp": "DBACNYA~CPXxRfAPXxRfAAfKABENB-CgAAAAAAAAAAYgAAAAAAAA~1YNN",
        "gpp_sid": [2],
        ...
    }
}
```



In the above example, the GPP string contains sections for the TCF and
the US Privacy (V1; CPPA) frameworks, but the 'applicable section' is
section 2, which corresponds to the TCF. See <a
href="https://github.com/InteractiveAdvertisingBureau/Global-Privacy-Platform/blob/main/Sections/Section%20Information.md#section-ids"
class="xref" target="_blank">here</a> for the list of section ids.

**ast.js**



In order to use the GPP, website owners need to:

1.  Work with a GPP-enabled CMP

2.  Update to the latest version of ast.js

3.  Modify the setPageOpts, as shown below:

    ``` pre
    apntag.setPageOpts({
      consentManagement: {
        disabled: false       // global on/off switch; default is false (module is on)
        timeout: 10000,       // time in ms
        gpp: {
          disabled: false    // local on/off switch gpp module, default is false (module is on)
        }
      },
    });
    ```





The ad call made to Xandr will then be updated
to include the GPP params as outlined below:

``` pre
{
    "privacy": {
        ...
        "gpp": "DBACNYA~CPXxRfAPXxRfAAfKABENB-CgAAAAAAAAAAYgAAAAAAAA~1YNN",
        "gpp_sid": [2],
        ...
    }
}
```



In the above example, the GPP string contains sections for the TCF and
the US Privacy (V1; CPPA) frameworks, but the 'applicable section' is
section 2, which corresponds to the TCF. See <a
href="https://github.com/InteractiveAdvertisingBureau/Global-Privacy-Platform/blob/main/Sections/Section%20Information.md#section-ids"
class="xref" target="_blank">here</a> for the list of section ids.
Further documentation can be found <a
href="https://github.com/InteractiveAdvertisingBureau/Global-Privacy-Platform/tree/main/Sections"
class="xref" target="_blank">here</a>.

**URL-based calls (/ttj, /ptv, etc.)**



Clients using URL-based calls can include GPP parameters as demonstrated
below:

``` pre
https://ib.adxns.com/ttj?id=[PLACEMENT_ID]&size=[SIZE]&gpp=[GPP_STRING]&gpp_sid=[GPP_SID]
```





For example, an ad call may look like this:

``` pre
https://ib.adxns.com/ttj?id=12345678&size=300x250&gpp=DBACNYA~CPXxRfAPXxRfAAfKABENB-CgAAAAAAAAAAYgAAAAAAAA~1YNN&gpp_sid=2
```



**Inserting GPP parameters into creative third-party tags**

You can insert GPP parameters into your creative third-party tags,
impression trackers, landing page URLs, and third-party pixels for
reporting and optimization purposes using the GPP-specific creative
macros as demonstrated below:

``` pre
https://lensmaster.com/newsunglasses?gpp=${GPP_STRING_XXXXX*}&gpp_sid=${GPP_SID}
```

\* XXXXX can represent any numerical id



Note: Third-party partners must support
GPP in order for this to work. You should contact the third-parties you
work with before updating your creative macros.








