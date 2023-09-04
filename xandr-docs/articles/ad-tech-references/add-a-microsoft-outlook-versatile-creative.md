# Add a Microsoft Outlook Versatile Creative

<div class="body">

Microsoft Outlook creatives show up in the right-hand sidebar of the
free Outlook.com webmail service after a user securely logs in. This
page provides specifications for elements of Outlook creatives and shows
you how to add them in Console. 

<div class="p">

<div class="note tip">

<span class="tiptitle">Tip:</span> What's New?

You no longer need to update pixels via the custom template. You can now
use the standard Third-Party Impression Trackers feature to add pixels
(see <a
href="add-a-microsoft-outlook-versatile-creative.html#ID-000011e2__step4"
class="xref">Step 4</a>). This change will allow for
<span class="ph">AppNexus</span> macros to serve on impression trackers.

</div>

</div>

<div class="p">

<div class="note warning">

<span class="warningtitle">Warning:</span> This ad format will be
deprecated in January 2016. Please plan your campaigns accordingly.

</div>

</div>

<div id="ID-000011e2__creativespecs" class="section">

## Creative Specifications

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d6960e73" class="entry cellborder"
style="text-align: left; vertical-align: top;">Element</th>
<th id="d6960e76" class="entry cellborder"
style="text-align: left; vertical-align: top;">Required?</th>
<th id="d6960e79" class="entry cellborder"
style="text-align: left; vertical-align: top;">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d6960e73 ">Headline</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d6960e76 ">Yes</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d6960e79 ">The
headline for the Outlook creative. This displays above the image.
<ul>
<li>Maximum of 25 characters including spaces.</li>
<li>Must not contain newline characters.</li>
<li>Must not include 2 consecutive punctuation marks. </li>
<li>Must not consist entirely of capital letters - only the first letter
of a word may be capitalized.</li>
<li>Must not start with punctuation.</li>
<li>Must not include double spaces.</li>
<li>Must not include more than 2 consecutive 1 character words.</li>
<li>Must not include special characters like:  &lt; &gt; * \ ^ ~ _ = { }
[ ] | &lt; &gt; £.</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d6960e73 ">Image</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d6960e76 ">Yes</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d6960e79 ">The
image for the Outlook creative object.
<ul>
<li>When you upload an image larger than 100x72, <span
class="ph">AppNexus</span> Console will resize the image to fit within
100x72 format. However, you must still select 100x72 as the creative
size regardless of the size of the image.
<div class="note warning">
<span class="warningtitle">Warning:</span> If you don't select 100x72 as
the creative size, the creative will not serve.
</div></li>
<li>Must be in one of the following formats: JPG, PNG, GIF.</li>
<li>Must not be flash.</li>
<li>Must not include any animation.</li>
<li>Initial load size must be less than 40 KB.
<div class="note warning">
<span class="warningtitle">Warning:</span> Outlook creatives with an
initial load size of more than 40 kb will be subject to extra fees. 
Avoid these fees by making sure that the initial load sizes of your
creatives are less than or equal to 40 kb.
</div></li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d6960e73 ">Description</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d6960e76 ">Yes</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d6960e79 ">The
description for the Outlook creative. This displays under the image.
<ul>
<li>Maximum of 90 characters including spaces, with no word having more
than 20 characters.</li>
<li>Must not contain newline characters.</li>
<li>Must not include 2 consecutive punctuation marks. </li>
<li>Must not consist entirely of capital letters - only the first letter
of a word may be capitalized.</li>
<li>Must not start with punctuation.</li>
<li>Must not include double spaces.</li>
<li>Must not include more than 2 consecutive 1 character words.</li>
<li>Must not include special characters like:  &lt; &gt; * \ ^ ~ _ = { }
[ ] | &lt; &gt;.</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d6960e73 ">Landing Page URL</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d6960e76 ">Yes</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d6960e79 ">The
URL where users will be redirected when they click the Outlook ad.
<ul>
<li>Maximum of 1024 characters.</li>
<li>Must begin with "http://" or "https://".</li>
<li>Must not contain newline characters.</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d6960e73 ">Pixel
URL</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d6960e76 ">No</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d6960e79 ">The
final destination URL for a third-party impression tracking pixel. See
<a
href="add-a-microsoft-outlook-versatile-creative.html#ID-000011e2__step4"
class="xref">Step 4</a> for more details.
<ul>
<li>Maximum of 1024 characters.</li>
<li>Must be secure (https) and contain a valid SSL/TLS certificate.</li>
<li>Must not contain newline characters.  </li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d6960e73 ">Flex
Tile Label</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d6960e76 ">No</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;" headers="d6960e79 ">The
optional, additional description for the Outlook creative. Clicking on
this label redirects users to the Landing Page URL.
<ul>
<li>Maximum of 20 characters.</li>
<li>Must not contain newline characters.  </li>
</ul></td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ID-000011e2__auditrequirement" class="section">

## Auditing Requirements

<div class="p">

- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/add-a-microsoft-outlook-versatile-creative.html#AddaMicrosoftOutlookVersatileCreative-SSLAudit"
  class="xref" target="_blank">SSL Audit</a>
- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/add-a-microsoft-outlook-versatile-creative.html#AddaMicrosoftOutlookVersatileCreative-MicrosoftCreativeAcceptancePolicyAudit"
  class="xref" target="_blank">Microsoft Creative Acceptance Policy</a>

</div>

**SSL Audit**

Since Outlook.com consists of secure inventory, Outlook creatives must
pass <span class="ph">AppNexus</span>' SSL audit in order to serve.
Therefore, when adding your Outlook creatives to
<span class="ph">AppNexus</span>, secure settings are selected by
default. Do not make any changes to the setting. (see <a
href="add-a-microsoft-outlook-versatile-creative.html#ID-000011e2__step6"
class="xref">Step 6</a>). For details about checking the state of the
secure audit, see <a
href="add-a-microsoft-outlook-versatile-creative.html#ID-000011e2__auditstatoutlookcreative"
class="xref">Check the Audit Status of an Outlook Creative</a>.

**Microsoft Creative Acceptance Policy**

<div class="p">

<div id="ID-000011e2__note_n4p_fmb_pwb" class="note tip">

<span class="tiptitle">Tip:</span> As of August 17, 2015, all creatives
are automatically sent through the appropriate sensitive categories
flagging process by the <span class="ph">AppNexus</span> auditing team,
and there is no longer a separate process at
<span class="ph">AppNexus</span> for auditing Microsoft creatives.
Though the **Also Audit for** checkbox will still appear, there is no
need to check it when submitting Microsoft creatives.

</div>

</div>

All creatives serving on Outlook.com inventory must pass
<span class="ph">AppNexus</span> platform audit, for which
<span class="ph">AppNexus</span> charges a standard audit fee. In
addition, Microsoft will not accept creatives the
<span class="ph">AppNexus</span> auditing team has flagged with
sensitive categories that violate their **Creative Acceptance Policy**.
For more information on the new sensitive categories flags,
see **Sensitive Categories and Microsoft Audit**.

</div>

<div id="ID-000011e2__step1" class="section">

## Step 1. Start a new creative

On the <span class="ph uicontrol">Creative Manager</span> screen, click
the <span class="ph uicontrol">Create New</span> button and then
select <span class="ph uicontrol">Single Creative</span>. This opens
the **Create New Creative** dialog.

<div class="p">

<div id="ID-000011e2__note_avk_rlb_pwb" class="note tip">

<span class="tiptitle">Tip:</span> Please disregard the
<span class="keyword wintitle">Preview</span> and
<span class="keyword wintitle">Ad Servers</span> tabs. Because is not
possible to preview an Outlook creative in Console and it is not
necessary to declare third-party ad servers when serving on Microsoft
Advertising Exchange inventory, you can simply skip over these tabs when
adding your Outlook creative.

</div>

</div>

</div>

<div id="ID-000011e2__section_qzf_1rb_pwb" class="section">

## Step 2. Select the creative type

<div class="p">

In the Type section, select whether you want to add a hosted or
third-party creative.

- **Upload a file** - Select this option to upload and host your Outlook
  creative with <span class="ph">AppNexus</span>.
- **Third-party** - Select this option to add a third-party Outlook
  creative to the <span class="ph">AppNexus</span> system.

</div>

Serving on secure inventory is selected by default. Because Outlook
contains only secure inventory, do not change this setting. 

</div>

<div id="ID-000011e2__section_hcv_3rb_pwb" class="section">

## Step 3. Define basic details

<div class="p">

- <a
  href="add-a-microsoft-outlook-versatile-creative.html#ID-000011e2__hosted"
  class="xref">Hosted</a>
- <a
  href="add-a-microsoft-outlook-versatile-creative.html#ID-000011e2__thirdpartyurl"
  class="xref">Third-Party URL</a>

</div>

**Hosted**

<div class="p">

- **File** - Browse for the image to use in your Outlook creative. The
  image must be 100x72 pixels (if it is larger, it will be scaled
  proportionally to fit 100x72) and in one of the following formats:
  JPG, PNG, or GIF. Note that, unlike standard banner creatives, this
  must be an actual image or redirect to an image - no html or
  javascript will be rendered. The initial load of the image must be
  less than 40KB. 
  <div class="p">

  <div id="ID-000011e2__note_edv_cyg_pwb" class="note">

  <span class="notetitle">Note:</span> The name of your file will show
  up under <span class="ph uicontrol">Details</span>. You can edit the
  name, if necessary. The name does not affect the appearance of the
  Outlook creative, but you will later be able to search for and report
  on the creative using the name. 

  </div>

  </div>
- **Landing Page** - Enter the URL where users will be redirected when
  they click the Outlook ad. This can be a maximum of 1024 characters
  and must begin with "http://" or "https://".
- **Media Type** - Select the <span class="ph uicontrol">Image and Text:
  Outlook.com</span> media type. 
- **Template** - Once you select the media type, the standard
  <span class="ph">AppNexus</span> template for Outlook.com should be
  selected by default (<span class="ph">AppNexus</span>: Outlook.com
  One-Tile versaTILES One-Tile v2). 
- **Size** - Select 100x72.  Even if the actual image is not 100x72, you
  still must set this field to 100x72 to serve properly.

</div>

<div id="ID-000011e2__thirdpartyurl" class="p">

**Third-Party URL**

- **Creative Format** - Select <span class="ph uicontrol">Third-party
  URL</span>.
- **URL**  -  Enter the URL where the image for your creative resides on
  a third-party CDN or ad server.
- **Secure URL**  - Enter the secure URL where the image for your
  creative resides on a third-party CDN or ad server.
  <div class="p">

  <div id="ID-000011e2__note_ykg_5sb_pwb" class="note">

  <span class="notetitle">Note:</span> For the creative to pass SSL
  audit, the image must be sourced from a secure server.

  </div>

  </div>
- **Output Type** - Select <span class="ph uicontrol">Image</span>.
- **Media Type** - Select the **<span class="ph uicontrol">Image and
  Text: Outlook.com</span>** media type. 
- **Template**  - Once you select the media type, the standard
  <span class="ph">AppNexus</span> template for Outlook.com should be
  selected by default. 
- **Size**  - Select 100x72.  Even if the actual image is not 100x72,
  you still must set this field to 100x72 to serve properly.
- **Name**  - Enter the name for your creative. The name does not affect
  the appearance of the Outlook creative, but you will later be able to
  search for and report on the creative using the name. 

</div>

</div>

<div id="ID-000011e2__step4" class="section">

## Step 4. Attach third-party tracking pixels (optional)

<span class="ph">AppNexus</span> records all impressions. If you wish to
use another system to record impressions as well, you can attach
third-party impression tracking pixels to your creative. 

To attach an existing third-party pixel to this creative, click
the <span class="keyword wintitle">Third-Party Pixels</span> tab (notice
that there may already be pixels attached to this creative based on the
Advertiser and Network to which it belongs).

Then, depending on whether you are attaching Network or Advertiser level
pixels to this creative or adding pixels directly to this creative,
follow one of these procedures

<div class="p">

- To create a new pixel and attach it to this creative, click
  <span class="ph uicontrol">Add New Pixel</span>. Select the
  appropriate **Format** option for the pixel you are creating and enter
  its URL or the Raw JavaScript. Then, click
  <span class="ph uicontrol">Add Pixel</span>.
  <div class="p">

  <div id="ID-000011e2__note_mzc_1bg_pwb" class="note">

  <span class="notetitle">Note:</span> If the inventory you are serving
  on is secure, then all tracking pixels must have a secure version.

  </div>

  </div>

</div>

<div id="ID-000011e2__note_xrx_2bg_pwb" class="note">

<span class="notetitle">Note:</span>

**Creative Audit**

If the creative you are attaching the pixel to has already been
uploaded, attaching the pixel will cause the creative to be re-audited.
If you are uploading this creative for the first time, the pixel will be
audited along with the creative.

</div>

<div class="p">

- To attach additional pixels that have been created on the Network or
  Advertiser level, click the <span class="ph uicontrol">Add</span>
  button next to each of the pixels (in the **Available List**) you
  would like to attach.

  Click <span class="ph uicontrol">Save</span> when done.

</div>

If you want to create a new third-party tracking pixel at the Network or
Advertiser level, follow one of the following procedures:

<div class="p">

- <a href="https://wiki.appnexus.com/x/v4QFB" class="xref"
  target="_blank">Create a Network-level pixel</a> that can be
  automatically attached to all creatives within the network
- <a href="https://wiki.appnexus.com/x/u4QFB" class="xref"
  target="_blank">Create an Advertiser-level pixel</a> that can be
  automatically attached to all creatives under the advertiser

</div>

</div>

<div id="ID-000011e2__section_nzc_gdg_pwb" class="section">

## Step 5. Define the text of the Outlook creative

<div class="p">

On the <span class="ph uicontrol">Template</span> tab, enter the
language that will display in the Outlook creative.

- **Headline** - Enter the headline of the creative. This can be a
  maximum of 25 characters including spaces. For additional limitations,
  see <a
  href="add-a-microsoft-outlook-versatile-creative.html#ID-000011e2__creativespecs"
  class="xref">Creative Specifications</a> above.
- **Description** - Enter the description for the creative. This can be
  a maximum of 90 characters including spaces, with no word having more
  than 20 characters. For additional limitations, see <a
  href="add-a-microsoft-outlook-versatile-creative.html#ID-000011e2__creativespecs"
  class="xref">Creative Specifications</a> above. 
- **Flex Label (optional)** - Enter the additional description for the
  Outlook creative. Clicking on this label redirects users to the
  Landing Page URL. This can be a maximum of 20 characters.
  <div id="ID-000011e2__note_w5x_32g_pwb" class="note">

  <span class="notetitle">Note:</span>
  To use double quotes (") in the Headline, Flex Label or Description
  fields, you must wrap the quotes using the HTML code &quot; or \\ (or
  \\\\ via the API)

  Sample text - This is the "DESCRIPTION" 

  Input in Console - This is the &quot;DESCRIPTION&quot; or This is the
  \\DESCRIPTION\\

  Input in API - This is the &quot;DESCRIPTION&quot; or This is the \\\\
  "DESCRIPTION\\ \\

  </div>

</div>

<div id="ID-000011e2__note_l1p_mfg_pwb" class="note">

<span class="notetitle">Note:</span> Outlook creatives cannot be
previewed in the UI.

</div>

</div>

<div id="ID-000011e2__step6" class="section">

## Step 6. Select auditing options

On the <span class="ph uicontrol">Creative Attributes</span> tab, select
the <span class="ph uicontrol">Platform audit</span> radio button and
then choose to also audit for <span class="ph uicontrol">Microsoft
Advertising Exchange and Google Ad Exchange</span>.

<div class="p">

<div id="ID-000011e2__note_vjr_5hg_pwb" class="note">

<span class="notetitle">Note:</span> All creatives serving on
Outlook.com inventory must pass <span class="ph">AppNexus</span>'
platform audit and the Microsoft Creative Acceptance Policy audit, so it
is very important to select both of the options above. To learn more
about these auditing processes, see <a
href="add-a-microsoft-outlook-versatile-creative.html#ID-000011e2__auditrequirement"
class="xref">Auditing Requirements</a>. Creatives must also pass the
<a href="attachments/58655971/61899923.pptx" class="xref"
target="_blank">Outlook Creative Acceptance Policy</a> in order to
serve.

</div>

</div>

</div>

<div id="ID-000011e2__section_wkl_d3g_pwb" class="section">

## Step 7. Associate the creative to campaigns or line items

Click <span class="ph uicontrol">Associate Creatives</span> in the side
navigation, then select the
<span class="keyword wintitle">Campaigns</span> or
<span class="keyword wintitle">Line Items</span> tab. Select the line
items or campaigns to which you want to associate the creative. If you
have not yet set up a campaign to target Outlook inventory, see **Create
a Web Campaign**.

<div class="p">

<div id="ID-000011e2__note_opv_g3g_pwb" class="note tip">

<span class="tiptitle">Tip:</span> You can also associate the creative
to campaigns at a later time from the Campaign Manager. For more
details, see **Associate Creatives to a Campaign**.

</div>

</div>

</div>

<div id="ID-000011e2__section_l14_r3g_pwb" class="section">

## Step 8. Add users to segments (optional)

You can add users who view or click on the creative to specific
segments for targeting or retargeting purposes. On
the <span class="keyword wintitle">Segments</span> tab, select the
segments to which users should be added on view and/or on click from
the **All Segments** list and
click <span class="ph uicontrol">Add</span> to move them to
the <span class="keyword wintitle">Selected Segments</span> list. To
remove segments that are already in
the <span class="keyword wintitle">Selected Segments</span> list, choose
those segments and click <span class="ph uicontrol">Remove</span>.

</div>

<div id="ID-000011e2__section_cpk_kjg_pwb" class="section">

## Step 9. Set frequency caps (optional)

On the <span class="keyword wintitle">Budget</span> tab,
under <span class="ph uicontrol">Creative Frequency</span>, you can cap
how frequently the Outlook creative can be shown to a given user.

<div class="p">

- **Show \_\_\_ imps over lifetime** - The creative will not be shown to
  a given user more than the specified number of times over the lifetime
  of the creative.
- **Show \_\_\_ imps per user per day**- The creative will not be shown
  to a given user more than the specified number of times per day.
- **1 imp per user per \_\_\_ minutes/hours/days** - A minimum of the
  specified number of minutes/hours/days must pass before a given user
  can be shown the creative.
- **Show to users without cookies** - Once you set a frequency cap, you
  can choose to show the creative to users without cookies, but be aware
  that your frequency caps will not apply to such users.

</div>

<div class="p">

<div id="ID-000011e2__note_dzb_clg_pwb" class="note tip">

<span class="tiptitle">Tip:</span> Frequency caps can be set at the
advertiser, line item, and campaign levels as well. The most restrictive
setting always takes precedence. For more details, see **Frequency and
Recency**.

</div>

</div>

</div>

<div id="ID-000011e2__section_ejv_slg_pwb" class="section">

## Step 10. Set the budget for the creative (optional)

On the <span class="ph uicontrol">Budget</span> tab,
under <span class="ph uicontrol">Creative Budget</span>, you can set an
impression or media cost budget for the Outlook creative. By default,
the budget is unlimited. If you prefer, you can define exactly how much
you are willing to spend on buying inventory for the creative. Note that
media cost is in USD rather than the advertiser's currency because USD
is the currency in which <span class="ph">AppNexus</span> transacts.

<div class="p">

<div id="ID-000011e2__note_hhn_ylg_pwb" class="note tip">

<span class="tiptitle">Tip:</span> You can set budgets at the insertion
order, line item, and campaign levels as well. These parent budgets
takes precedence over your creative budget. When the campaign budget
runs out, for example, all creatives associated to the campaign will
stop buying impression for that campaign, whether or not they have
reached their own budgets. For more details about budgeting, see
**Budget and Pacing**.

</div>

</div>

<div class="p">

- **Lifetime**- This is the budget that you are willing to spend over
  the entire lifetime of the campaign. There are two options:
  - **Unlimited** - Select this option to leave your lifetime budget
    undefined.
  - **Custom** - Select this option to enter a specific amount of
    impressions or dollars.
- **Daily**- This is the budget that you are willing to spend on any
  single day. There are three options:
  - **Unlimited** - Select this option to leave your daily budget
    undefined.
  - **Custom** - Select this option to enter a specific amount of
    impressions or dollars. When you enter a custom daily budget, you
    must select one of the following options:
    - **Pace evenly throughout the day**- Select this option, otherwise
      known as "daily pacing", if you want to prevent your daily budget
      from being spent all at once by distributing your spend evenly by
      hour throughout the day. Note that if you use Daypart Targeting to
      restrict the hours during which the campaign can serve, daily
      pacing will adjust to distribute your spend evenly across only the
      targeted hours. For more details, see **Daily Pacing**.
    - **Spend as fast as possible** - Select this option if you do not
      want to pace your daily budget at all. Note that this option could
      lead to your entire daily budget being spent in a very short
      amount of time.

</div>

</div>

<div id="ID-000011e2__section_mg2_fng_pwb" class="section">

## Step 11. Save the creative

Confirm that the Outlook creative details are correct and then click
the <span class="ph uicontrol">Save</span> button to finish adding the
creative to <span class="ph">AppNexus</span>. The creative is then added
to the list of creatives in the Creative Manager.

</div>

<div id="ID-000011e2__section_utw_hpg_pwb" class="section">

## Next Steps

<div class="p">

- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/add-a-microsoft-outlook-versatile-creative.html#AddaMicrosoftOutlookVersatileCreative-ChecktheAuditStatusofanOutlookCreative"
  class="xref">Check the Audit Status of an Outlook Creative</a>
- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/add-a-microsoft-outlook-versatile-creative.html#AddaMicrosoftOutlookVersatileCreative-CreateanOutlookCampaign"
  class="xref">Create an Outlook Campaign</a>

</div>

**Check the Audit Status of an Outlook Creative**

Once you've added an Outlook creative and submitted it for Platform
Secure and Microsoft Advertising Exchange audit, there are three
possible audit statuses that your creative can have:

**Platform Secure Audit**

<div class="p">

- **Pending** - The creative is being SSL audited by
  <span class="ph">AppNexus</span>.
- **Allowed** - The creative has passed <span class="ph">AppNexus</span>
  SSL audit and is eligible to serve on secure inventory.
- **Rejected** - The creative has been rejected for SSL audit and is not
  eligible to serve on secure inventory.

</div>

<div class="p">

**Microsoft Advertiser Exchange Audit**

- **Pending** - The creative is being audited for Microsoft Creative
  Acceptance Policy by AppNexus.
- **Allowed** - The creative has passed Microsoft CAP audit and is
  eligible to serve on Microsoft Advertising Exchange.
- **Rejected** - The creative has been rejected for Microsoft CAP audit
  and is not eligible to serve on Microsoft Advertising Exchange .

</div>

To check these statuses, go to **Advertisers \> Creatives** and locate
the creative in the list. Select the creative and then scroll down in
the <span class="keyword wintitle">Creative Details</span> section until
you see the <span class="keyword wintitle">Audit Status and SSL
Status</span> sections.

<div class="note">

<span class="notetitle">Note:</span>

If an Outlook creative fails the AppNexus SSL audit, you can submit it
for a re-test (once you've fixed the downstream non-secure content) by
clicking <span class="ph uicontrol">Resubmit for SSL Audit</span>. There
is no additional charge for SSL audit. However, if you change the
content in the AppNexus creative (image URL/tag or pixel), the creative
will automatically be opted into platform re-audit that will incur an
auditing fee.

If an Outlook creative fails the Microsoft audit, you must resubmit the
creative for audit after making the required changes.

</div>

**Create an Outlook Campaign**

Once you've added your Outlook creative to
<span class="ph">AppNexus</span>, you can set up a standard web campaign
and then associated your creative to the campaign. Your Outlook
creatives will serve only on Outlook.com inventory initially, but we
recommend using domain targeting to target **outlook.com** as well. For
details on setting up a web campaign, see **Create a Web Campaign**.

</div>

</div>
