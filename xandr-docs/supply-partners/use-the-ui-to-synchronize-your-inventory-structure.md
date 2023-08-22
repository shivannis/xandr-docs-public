# Use <span class="ph"></span> to Synchronize Your Inventory Structure

<div class="body">

This page shows you how to use <span class="ph"></span> to map your
supply to the corresponding <span class="ph">Xandr</span> objects.
Please follow these instructions for each publisher you work with.

To map your supply using the API, see <a
href="https://docs.xandr.com/bundle/supply-partners/page/use-the-api-to-synchronize-your-inventory-structure.html"
class="xref" target="_blank">Use the API to Synchronize Your Inventory
Structure</a>.

<div class="section">

## Before You Begin

Before you begin, you must meet the following criteria:

- You are familiar with the <a
  href="https://docs.xandr.com/bundle/supply-partners/page/understanding-the-sell-side-object-hierarchy.html"
  class="xref" target="_blank">Sell-Side Object Hierarchy</a>.
- You have worked with <span class="ph">Xandr</span> to create a <a
  href="https://docs.xandr.com/bundle/supply-partners/page/define-ad-quality-rules.html"
  class="xref" target="_blank">global ad quality profile</a> to control
  which creatives can appear on your publishers' inventory. 

</div>

<div class="section">

## Step 1. Create a Publisher

Only the features relevant to Supply Partners are covered. Please ignore
other features not mentioned here.

1.  Go to
    <span class="ph menucascade"><span class="ph uicontrol">Publisher
    </span> \> <span class="ph uicontrol"> All Publishers</span></span>.
2.  Click <span class="ph uicontrol">Create Publisher</span>. This opens
    the  **Create New Publisher** dialog.
3.  Enter the following **Publisher Details**:
    - In the <span class="ph uicontrol">Name</span> field, enter the
      name of the legal entity of the company you pay money to. For
      instance, if you buy from `espn.com`, the publisher should be
      named as the legal entity for ESPN.
    - In the **Status** dropdown,
      select <span class="ph uicontrol">Active</span>.
    - In the **Affiliation** dropdown,
      select <span class="ph uicontrol">Owned and Operated</span>.
    - In the <span class="ph uicontrol">Currency</span> field, select
      the primary currency used by the publisher.
    - Open **Advanced Options** and enter the ID of the publisher from
      your own system in the <span class="ph uicontrol">Code</span>
      field. In Bid Requests, you will pass this code in
      the `ext_pub_code` field. 

<div class="note">

<span class="notetitle">Note:</span> Using the
<span class="ph uicontrol">Code</span> field is highly recommended at
both the publisher and placement levels to ensure that your inventory is
as granular as possible so that it can be investigated accurately for
quality issues, and specifically for domain detectability. While not
required, this step will help you to split your inventory into highly
detectable and less detectable tags, allowing you to isolate the impacts
of non-detectable domains on the rest of your inventory's viability.

</div>

1.  On the <span class="ph uicontrol">Exposure Settings</span> tab,
    select how much information you want <span class="ph">Xandr</span>
    to expose to buyers when reselling the publisher's placements. The
    more information you expose, the easier it is for buyers to target
    the resold inventory.
    - **Expose domains for reporting** - Check this box if you want to
      let buyers that purchase your inventory see the domains associated
      with the purchased impressions in reporting.
    - **Expose for reselling** - Check this box if you want to let
      buyers see the individual publisher in campaign targeting and
      buyer reports. If you check this, you can determine a **Reselling
      Name** and a **Description**. If you do not enter a **Reselling
      Name**, the name of the publisher will be exposed. 
2.  On the <span class="ph uicontrol">Ad Quality</span> tab, leave the
    default selection, **Only Apply Network Profile**.
    <div class="note">

    <span class="notetitle">Note:</span>
    During your initial integration, you should have worked with
    <span class="ph">Xandr</span> to create a global ad quality profile
    to control which creatives can appear on your publisher's inventory.
    This default selection applies that global ad quality profile to
    your publisher. If you need to control ad quality on a
    publisher-by-publisher basis, please reach out to your
    <span class="ph">Xandr</span> representative.

    </div>
3.  Click <span class="ph uicontrol">Save</span>.

</div>

<div class="section">

## Step 2. Check the Default Placement Group

When you create a publisher, we automatically create a placement group
for the publisher's placements. If all of the inventory from the
publisher is for one type of supply (**Standard Websites**,
**Mobile-Optimized Websites**, or <span class="ph uicontrol">Mobile
Application</span>), you don't need to create any additional placement
groups; you simply need to edit the placement group and make sure the
correct supply type is selected:

1.  Select the placement group and click <span class="ph uicontrol">Full
    Edit</span>.
    <div class="fig fignone">

    <img src="images/supply-partners/75798775.jpg" class="image" width="521"
    height="250" />

    </div>
2.  Select the correct **Supply Type.**
    <div class="fig fignone">

    <img src="images/supply-partners/75798776.jpg" class="image" width="365"
    height="250" />

    </div>
3.  Click <span class="ph uicontrol">Save</span>.

</div>

<div class="section">

## Step 3. Create Placements

For each of the publisher's placements, follow the steps below. Note
that only the features relevant to Supply Partners are covered, as well
as some features that are not generally recommended but may be useful in
some situations. Please ignore other features not mentioned here.

Working with Domain Detection

<div class="note tip">

<span class="tiptitle">Tip:</span> In order to improve your experience
with Domain Detection, it's best practice to break your new inventory
into new placements if you're able to do so. In the event of potentially
problematic inventory or tags coming through a publisher, more granular
inventory grouping and better labeling gives you the ability to isolate
the impact of tags at high risk of being deactivated while protecting
the rest of your inventory from impact.

However, creating new placements to work with Domain Detection is
optional. If you choose not to do this, you can simply use the default
placement that was created when the publisher was saved. Just be sure to
set an `ext_pub_code` to be sent with your bid requests at the publisher
level. This can be done via the <span class="ph uicontrol">Code</span>
field in the publisher's advanced options (see above).

</div>

1.  Go
    to <span class="ph menucascade"><span class="ph uicontrol">Publishers
    </span> \> <span class="ph uicontrol"> Placement
    Manager.</span></span>
2.  Select the placement group into which you want to assign the
    placement and then click <span class="ph uicontrol">Create
    New</span>
    <span class="ph menucascade"><span class="ph uicontrol"> </span> \>
    <span class="ph uicontrol"> </span></span> Placement. This opens
    the **Create New Placement** dialog.
3.  Enter the following **Placement Details**:
    - In the **Name** field, enter a logical name that corresponds to
      the inventory .
    - The <span class="ph uicontrol">State</span> field is set
      to **Active** by default. If you do not want the placement to be
      active once it's saved, select Inactive. Note that if you try to
      serve an impression on an inactive placement, the impression will
      be blank.
    - Check **Enable this placement for reselling to other platform
      members**. Although this setting will soon be unnecessary, it is
      important that you set it currently.
    - Click **<span class="ph uicontrol">+</span> Code (Advanced)** and
      enter the ID of the placement from your own system in the
      <span class="ph uicontrol">Code</span> field. In Bid Requests, you
      will pass this code in the `ext_pub_code` field. 

<div class="note">

<span class="notetitle">Note:</span> Using the
<span class="ph uicontrol">Code</span> field is required at both the
publisher and placement levels to ensure that your inventory is as
granular as possible so that it can be investigated accurately for
quality issues, and specifically for domain detectability. While not
required, this step will help you to split your inventory into highly
detectable and less detectable tags, allowing you to isolate the impacts
of non-detectable domains on the rest of your inventory's viability.

</div>

1.  In the **Allowed Media** and <span class="ph uicontrol">Size</span>
    sections, leave the default selections. These details are passed in
    your bid request and don't need to be set here. 
2.  On the <span class="ph uicontrol">Content Categories</span>
    tab, <span class="ph">Xandr</span> recommends that you do not apply
    any universal or custom content categories  unless you have
    familiarity and relationships with buyers who will want to target
    very specific categories of inventory.
3.  On the <span class="ph uicontrol">Self-Audit Settings</span> tab,
    you can self-classify the placement for sensitive attributes and
    intended audience. Your advertisers and buyers who trust your
    self-audit can target these settings in their campaigns.
    <span class="ph">Xandr</span> may also audit this inventory if it
    meets volume thresholds.
4.  Click <span class="ph uicontrol">Save</span>.

</div>

<div class="section">

## Step 4. Test the Mapping Setup (Optional)

You can test that the mapping is working correctly by using a debug
auction. Send a test impression to our endpoint with the debug
parameters and check that the impression reaches the expected placement.

**Example debug auction for a video impression using the OpenRTB
protocol Expand source**

``` pre
$cat debug.json
{ 
        "id": { 
                "imp": [{
                        "id": "1",
                        "video": {
                                "mimes": [
                                        "application/x-shockwave-flash",
                                        "video/mp4",
                                        "video/x-flv" 
                                        ],
                                 "linearity": 1, 
                                 "minduration": 0, 
                                 "maxduration": 999, 
                                 "protocols": [2,5], 
                                 "w": 640, 
                                 "h": 360,
                                 "startdelay": 0,
                                 "minbitrate": 0,
                                 "maxbitrate": 1500,
                                 "delivery": [2],
                                 "pos": 0,
                                 "api": [1]
                                        },
                                 "bidfloor": 1,
                                 "bidfloorcur": "EUR"
                                } ], 
                        "site": {
                                "domain": "test.com" },
                                "device": {
                                                "dnt": 0,
                                                "ua": "Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0",
                                                "ip": "212.185.163.114",
                                                "os": "Win_8",
                                                "osv": "8",
                                                "js": 0,
                                                "devicetype": 2 
                                                },
                                 "user": {
                                                 "id": "USER_ID" 
                                                        }, 
                                "at": 2, 
                                "tmax": 100, 
                                "cur": ["EUR","USD"]}'
$curl -b cookies -c cookies -s -i d @debug.json 'https://<MEMBER_NAME>-<GEO>.com/openrtb2?member_id=MEMBER_ID&debug_member=DEBUG_MEMBER&dongle=DONGLE' 
```

In the example above, \<GEO\> has potential values
"useast","uswest","apac","emea"

</div>

<div class="section">

## Related Topics

- <a href="synchronize-your-inventory-structure.html"
  class="xref">Synchronize Your Inventory Structure</a>
- <a href="use-the-api-to-synchronize-your-inventory-structure.html"
  class="xref">Use the API to Synchronize Your Inventory Structure</a>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** <a href="synchronize-your-inventory-structure.html"
class="link">Synchronize Your Inventory Structure</a>

</div>

</div>

</div>
