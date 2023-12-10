---
Title : Add a Microsoft Outlook Creative via the API
Description : Microsoft Outlook creatives show up in the right-hand sidebar of the
ms.date: 10/28/2023
ms.custom: digital-platform-api
free Outlook.com webmail service after a user securely logs in. This
---


# Add a Microsoft Outlook Creative via the API



Microsoft Outlook creatives show up in the right-hand sidebar of the
free Outlook.com webmail service after a user securely logs in. This
page provides specifications for Outlook creatives and shows you how to
add them to our system via the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>. 



<b>Note:</b> Outlook creatives must pass our
SSL audit and the Microsoft Creative Acceptance Policy audit.





## Specifications

This section defines the fields of the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> that are required for
Outlook creatives. These fields must be passed in the JSON object on
POST. See <a
href="add-a-microsoft-outlook-creative-via-the-api.md#ID-00001017__11"
class="xref">Step 1</a> below for formatting details.

![Specifications](media/specifications.png)

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001017__1__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001017__1__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001017__1__entry__3"
class="entry colsep-1 rowsep-1">Required?</th>
<th id="ID-00001017__1__entry__4"
class="entry colsep-1 rowsep-1">Description/Requirements</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__1"><code
class="ph codeph">secure_content</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__3">Yes, if adding a hosted creative</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__4"><strong>For hosted
creatives:</strong> The image for the <u>secure</u> Outlook creative.
Clicking on the image takes the user to the Landing Page URL.
<ul>
<li>File must be in one of the following formats: JPG, PNG, GIF.</li>
<li>File must be base64-encoded.</li>
<li>Image must be 100x72 pixels (see <code
class="ph codeph">width</code> and <code class="ph codeph">height</code>
below). If the image is any other dimension, it will be scaled
proportionally when rendered to fit within 100x72.</li>
<li>Must not be flash.</li>
<li>Must not include any animation.</li>
<li>Initial load size must be less than 40 KB.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__1"><code
class="ph codeph">content</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__3">Yes, if adding a hosted creative</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__4"><strong>For hosted
creatives:</strong> The image for the <u>non-secure</u> Outlook
creative. Although only the secure image will get served to Outlook.com
inventory, you are required to add a non-secure version as well.
<ul>
<li>File must be in one of the following formats: JPG, PNG, GIF.</li>
<li>File must be base64-encoded.</li>
<li>Image must be 100x72 pixels (see <code
class="ph codeph">width</code> and <code class="ph codeph">height</code>
below). If the image is any other dimension, it will be scaled
proportionally when rendered to fit within 100x72.</li>
<li>Must not be flash.</li>
<li>Must not include any animation.</li>
<li>Initial load size must be less than 40 KB.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__1"><code
class="ph codeph">media_url_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__3">Yes, if adding a third-party
creative</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__4"><strong>For third-party
creatives:</strong> The URL of image for the <u>secure</u> Outlook
creative.
<ul>
<li>URL must be secure (https).</li>
<li>File must be in one of the following formats: JPG, PNG, GIF.</li>
<li>Image must be 100x72 pixels (see <code
class="ph codeph">width</code> and <code class="ph codeph">height</code>
below). If the image is any other dimension, it will be scaled
proportionally when rendered to fit within 100x72.</li>
<li>Must not be flash.</li>
<li>Must not include any animation.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__1"><code
class="ph codeph">media_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__3">Yes, if adding a third-party
creative</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__4"><strong>For third-party
creatives:</strong> The URL of image for the non-secure Outlook
creative.
<ul>
<li>File must be in one of the following formats: JPG, PNG, GIF.</li>
<li>Image must be 100x72 pixels (see <code
class="ph codeph">width</code> and <code class="ph codeph">height</code>
below). If the image is any other dimension, it will be scaled
proportionally when rendered to fit within 100x72.</li>
<li>Must not be flash.</li>
<li>Must not include any animation.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__4">The width of the image for the
Outlook creative.
<ul>
<li>Width must be 100 pixels. Even if the actual image is not 100x72,
you still must set this field to 100 to serve properly.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__4">The height of the image for the
Outlook creative. 
<ul>
<li>Height must be 72 pixels. Even if the actual image is not 100x72,
you still must set this field to 72 to serve properly.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__1"><code
class="ph codeph">file_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__3">Yes, if adding a hosted
creatives</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__4"><strong>For hosted
creatives:</strong> The name of the image file and the file extension
(.jpg, .png, or .gif).
<ul>
<li>Filename can be a maximum of 1000 characters.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__1"><pre
class="pre codeblock"><code>click_url</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__4">The URL where users will be
redirected when they click the Outlook ad.
<ul>
<li>URL can be a maximum of 1024 characters.</li>
<li>URL must begin with "http://" or "https://".</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__1"><pre
class="pre codeblock"><code>template</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__4">The Xandr
rendering template for Outlook creatives.
<ul>
<li>The <code class="ph codeph">id</code> field in this object must be
set to <strong>3033</strong> (Outlook.com versaTiles One-Tile).</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__1"><pre
class="pre codeblock"><code>allow_ssl_audit</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__4">Whether or not the creative will be
submitted to our secure audit as well as Microsoft Creative Acceptance
Policy audit.  
<ul>
<li>This must be set to <code class="ph codeph">true</code> because
Outlook creatives must pass both our SSL and Microsoft Acceptance Policy
audits in order to serve on Outlook.com inventory, which is secure.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__1"><pre
class="pre codeblock"><code>custom_macros</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__3">Yes (some parts are optional)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001017__1__entry__4">The headline, description, flex tile
label, and impression tracking pixels for the Outlook creative. The
headline and description are required, whereas the flex tile label and
impression tracking pixels are optional.
<p>The <code class="ph codeph">HEADLINE</code> macro defines the text
that displays above the image. Requirements:</p>
<ul>
<li>Maximum of 25 characters including spaces.</li>
<li>Must not contain newline characters.</li>
<li>Must not include 2 consecutive punctuation marks. </li>
<li>Must not consist entirely of capital letters.</li>
<li>Must not start with punctuation.</li>
<li>Must not include double spaces.</li>
<li>Must not include more than 2 consecutive 1 character words.</li>
<li>Must not include special characters like &lt; &gt; * \ ^ ~ _ = { } [
] | &lt; &gt;.</li>
</ul>
<p>The <code class="ph codeph">DESCRIPTION</code> macro defines the text
that displays under the image. Requirements:</p>
<ul>
<li>Maximum of 90 characters including spaces, with no word having more
than 20 characters.</li>
<li>Must not include 2 consecutive punctuation marks. </li>
<li>Must not consist entirely of capital letters.</li>
<li>Must not start with punctuation.</li>
<li>Must not include double spaces.</li>
<li>Must not include more than 2 consecutive 1 character words.</li>
<li>Must not include special characters like &lt; &gt; * \ ^ ~ _ = { } [
] | &lt; &gt;</li>
</ul>
<p>The <code class="ph codeph">FLEX_LABEL</code> defines the optional,
additional description for the Outlook creative. Requirement:</p>
<ul>
<li>Maximum of 20 characters.</li>
</ul>
<p>Using <code class="ph codeph">PIXEL_URL</code> and <code
class="ph codeph">PIXEL_URL2</code> macros, you can add two third-party
impression tracking pixels to an Outlook creative for recording
impressions in an external system. You must be sure to use these macros
instead of the <code class="ph codeph">pixels</code> array.
Requirements:</p>
<ul>
<li>Final destination URL of each pixel must be secure (https) and
contain a valid SSL/TLS certificate.</li>
<li>URL of each pixel must not be more than 1024 characters.<br />
<br />
</li>
</ul></td>
</tr>
</tbody>
</table>




## Auditing Requirements



- <a
  href="add-a-microsoft-outlook-creative-via-the-api.md#ID-00001017__100"
  class="xref">SSL Audit</a>
- <a
  href="add-a-microsoft-outlook-creative-via-the-api.md#ID-00001017__101"
  class="xref">Microsoft Creative Acceptance Policy Audit</a>



**SSL Audit**

Since Outlook.com consists of secure inventory, Outlook creatives must
pass our SSL audit in order to serve. When you add an Outlook creative
to Xandr, opt into secure audit by setting
`allow_ssl_audit` to `true`. For details about checking the state of the
secure audit, see Check the Audit Status of an Outlook Creative.

**Microsoft Creative Acceptance Policy Audit **

All creatives serving on Outlook.com inventory must pass our platform
audit and the Microsoft Creative Acceptance Policy audit, for which
Xandr charges a standard audit fee. When you
submit an Outlook creative to Xandr's secure
audit, the creative is submitted to the Microsoft Creative Acceptance
Policy audit by default. There's no additional option to set. For
details about checking the state of the Microsoft audit, see Check the
Audit Status of an Outlook Creative.




## Step 1. Create a JSON file with your creative details

For details about the fields to include in your JSON, see <a
href="add-a-microsoft-outlook-creative-via-the-api.md#ID-00001017__98"
class="xref">Specifications</a> above. Note that this example is for
adding an Outlook creative hosted by a third-party. 

``` pre
$ cat outlook_creative
{
   "creative": {
      "name": "Outlook Creative",
      "media_url":"http://creative.com/123",
      "media_url_secure":"https://creative.com/123",
      "width": 100,
      "height": 72,
      "click_url": "https://www.testing.com",
      "file_name": "photo 1.JPG",
      "allow_ssl_audit": true,
      "template": {
         "id": 3033
      },
      "custom_macros": [
         {
            "code": "HEADLINE",
            "value": "This is the headline of the Outlook creative."
         },
         {
            "code": "DESCRIPTION",
            "value": "This is the description of the Outlook creative."
         },
         {
            "code": "FLEX_LABEL",
            "value": "This is the optional, additional description for the Outlook creative."
         },
         {
            "code": "PIXEL_URL",
            "value": "https://pixel-url.com"
         },
         {
            "code": "PIXEL_URL2",
            "value": "https://pixel-url2.com"
         }
      ]
   }
}
```




## Step 2. Post the JSON file to the Creative Service

``` pre
$ curl -b cookies -c cookies -X POST -d @outlook_creative 'https://api.appnexus.com/creative?advertiser_id=52408'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 706145,
        "start_element": 0,
        "num_elements": 100,
        "creative": {
            "name": "Outlook Creative",
            "brand_id": 1,
            "media_url": "https://creative.com/123",
            "id": 706145,
            "code": null,
            "code2": null,
            "member_id": 1066,
            "state": "active",
            "click_track_result": "not_tested",
            "advertiser_id": 50544,
            "publisher_id": null,
            "format": null,
            "width": 100,
            "height": 72,
            "click_url": "https://www.testing.com",
            "flash_click_variable": null,
            "no_iframes": false,
            "content": null,
            "original_content": null,
            "file_name": "photo 1.JPG",
            "track_clicks": true,
            "audit_status": "pending",
            "macros": null,
            "profile_id": null,
            "audit_feedback": null,
            "is_prohibited": false,
            "is_suspicious": false,
            "created_on": "2013-11-20 19:28:12",
            "flash_backup_url": null,
            "last_modified": "2013-11-20 19:28:12",
            "is_control": false,
            "allow_audit": true,
            "is_expired": false,
            "creative_upload_status": null,
            "backup_upload_status": null,
            "use_dynamic_click_url": false,
            "media_subtypes": [
                "banner_breakout",
                "popunder",
                "popup",
                "banner"
            ],
            "size_in_bytes": 0,
            "google_audit_status": "pending",
            "google_audit_feedback": null,
            "msft_audit_status": "pending",
            "msft_audit_feedback": null,
            "msft_external_audit_status": "pending",
            "msft_external_audit_feedback": null,
            "is_self_audited": false,
            "no_adservers": false,
            "text_title": null,
            "text_description": null,
            "text_display_url": null,
            "click_action": "click-to-web",
            "click_target": "https://www.testing.com",
            "ssl_status": "pending",
            "allow_ssl_audit": true,
            "media_url_secure": null,
            "content_secure": "https://creative.com/123",
            "original_content_secure": null,
            "flash_backup_url_secure": null,
            "is_hosted": false,
            "content_source": "standard",
            "lifetime_budget_imps": null,
            "daily_budget_imps": null,
            "enable_pacing": null,
            "allow_safety_pacing": null,
            "lifetime_budget": null,
            "daily_budget": null,
            "landing_page_url": null,
            "thirdparty_creative_id": null,
            "thirdparty_campaign_id": null,
            "facebook_audit_status": null,
            "facebook_audit_feedback": null,
            "custom_request_template": null,
            "language": {
                "id": 1,
                "name": "English"
            },
            "pop_values": null,
            "brand": {
                "id": 1,
                "name": "Unknown",
                "category_id": 8
            },
            "template": {
                "id": 3033,
                "name": "Outlook.com versaTiles One-Tile",
                "media_subtype_id": 52,
                "format_id": 4
            },
            "thirdparty_page": null,
            "custom_macros": [
                {
                    "code": "DESCRIPTION",
                    "value": "This is the description of the Outlook creative."
                },
                {
                    "code": "FLEX_LABEL",
                    "value": "This is the optional, additional description for the Outlook creative."
                },
                {
                    "code": "HEADLINE",
                    "value": "This is the headline of the Outlook creative."
                },
                {
                    "code": "PIXEL_URL",
                    "value": "https://pixel-url.com"
                },
                {
                    "code": "PIXEL_URL2",
                    "value": "https://pixel-url2.com"
                }
            ],
            "segments": null,
            "folder": null,
            "campaigns": null,
            "competitive_brands": null,
            "competitive_categories": null,
            "pixels": null,
            "mobile": null,
            "sla": "0",
            "sla_eta": "2013-11-21 09:29:12",
            "currency": "USD"
        }
    }
}
```




## Next Steps

**Check the Audit Status of the Outlook Creative**

Once you've added an Outlook creative to our system, you can check where
it is in the Xandr's Secure Platform and
Microsoft Acceptance Policy audits. For more details, see <a
href="check-the-audit-status-of-an-outlook-creative-via-the-api.md"
class="xref" target="_blank">Check the Audit Status of an Outlook
Creative</a>.

**Create an Outlook Campaign**

You can use the Campaign Service and the Profile Service to set up a
campaign that targets Outlook.com inventory. For more details, see <a
href="create-an-outlook-campaign-via-the-api.md"
class="xref" target="_blank">Create an Outlook Campaign via the API</a>
.




## Related Topics

<a href="buying-microsoft-outlook-com-inventory.md"
class="xref">Buying Microsoft Outlook.com Inventory</a>

<a href="create-an-outlook-campaign-via-the-api.md"
class="xref">Create an Outlook Campaign via the API</a>






