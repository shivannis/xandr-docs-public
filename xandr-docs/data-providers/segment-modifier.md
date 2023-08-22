# Segment Modifier

<div class="body">

Segment Modifier allows you to adjust a campaign's bid at the time of
the auction using data you have about your users. This is achieved by
associating a modifier segment with an audience segment. The campaign is
then able to use this information to modify the bid when one of your
users is present. There are two ways the campaign can modify the bid:

- *User Bid Price:* Determine what absolute price you will bid for the
  impression. This option is best for short campaigns with high budgets.
  Due to their short flight dates, they may not generate enough data to
  train our optimization engine effectively.
- *User Bid Modifier:* Modify the bid determined by our optimization
  engine by a specified amount. This option is best for campaigns with
  medium-to-high budgets, with long or repeating flight dates, that use
  click-conversion performance metrics.
  <div id="ID-0000083c__note-d55f5743-1511-4f0f-a9d7-13b32f1479c5"
  class="note">

  <span class="notetitle">Note:</span> In this document, "an impression"
  is used to refer to an impression involving a user in one of your
  audience segments, where that audience segment is associated with a
  modifier segment.

  </div>

<div class="section">

## Step 1. Upload your Audience and Modifier Segments to the Batch Segment API

Upload both your audience and modifier segments using the Batch Segment
Service. You'll then associate each modifier segment with a campaign
using the procedure defined in **Step 2.** Note that each modifier
segment may only be associated with a single audience segment, whereas a
single audience segment can be part of more than one modifier segment.

The user bid price and user bid modifier need to be decimal values
(e.g., floating-point numbers). Unfortunately, the segment data file
format only accepts integers in the `VALUE` field where you define your
user bid price or user bid modifier. Therefore you'll need to multiply
your desired bid price or bid modifier by 1000. For example, to specify
a user bid price of $0.75, write the integer `750` into the `VALUE`
field of the segment data file. For a complete description of the file
format, see Batch Segment Service - File Format.

</div>

<div class="section">

## Step 2. Associate a Modifier Segment with your Campaign via the API

Using the <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">Campaign Service</a>, you'll need to
associate a modifier segment ID with your campaign; when creating or
updating your campaign via the API, pass in the ID of the modifier
segment you uploaded in one or both of the following subfields of the
`campaign_modifiers` array:

- `segment_modifier_id`: Set this field if you want to apply a User Bid
  Modifier on an impression.
- `segment_price_id`: Set this field if you want to apply a User Bid
  Price on an impression.

You can determine how your campaign should weight the modifier segment's
`VALUE` on an impression using the `segment_modifier_weight` value. It
works by multiplying `VALUE` from the segment data file by the amount in
this field based on the presence of the audience segment defined in
`segment_modifier_id` or `segment_price_id`. This should be an integer
between 0 and 2000, corresponding to a decimal number between 0 and 2.

Here's an example of a campaign object using this format:

``` pre
{
  "campaign": {
    "id": 123,
    "name": "ModifiedCampaign",
    "campaign_modifiers": [
      {
        "type": "segment_modifier_id",
        "value": 456
      },
      {
        "type": "segment_price_id",
        "value": 789
      },
      {
        "type": "segment_modifier_weight",
        "value": 1200
      }
    ]
  }
}
```

<div class="p">

To achieve complete overlap, all of the cookies in your target audience
(across one or all audience segments) should have a modifier value in
the modifier segment.

<div class="note">

<span class="notetitle">Note:</span> There are very few use cases
requiring both a `segment_price_id` and `segment_modifier_id` on the
same campaign.

</div>

</div>

</div>

<div class="section">

## Step 3. Set your Optimization Levers

<div class="p">

Finally, the <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">Campaign Service</a> provides another
optimization lever you can pull in addition to the user *bid price or
user bid modifier:*

- `userprice_default_modifier`: If a user in one of your audience
  segments is present on an impression, but their audience segment is
  not associated with a modifier segment, you can still modify the bid
  using the value in this field.

</div>

Put another way, if no modifier segment is associated with the audience
segment on an impression (or if no `VALUE` is set for the modifier
segment), we will modify the bid based on the value of this field. It
defaults to `1`, but can be changed to any floating-point value between
`0` and `1`. For example, you can set this value to `0.5` to multiply
our optimization engine's calculated bid by `0.5`. To refrain from
bidding when no `VALUE` has been set on the modifier segment (or when no
modifier segment is associated with the audience segment), set this
field to `0`.

</div>

<div class="section">

## Related Topics

<div class="p">

- <a
  href="https://docs.xandr.com/bundle/data-providers/page/segment-modifier-data-provider-integration.html"
  class="xref" target="_blank">Segment Modifier Data Provider
  Integration</a>

</div>

</div>

</div>

<div class="related-links">

- **[Segment Modifier Data Provider
  Integration](segment-modifier-data-provider-integration.html)**  
- **[Segment Modifier FAQ](segment-modifier-faq.html)**  

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="integrating-your-data.html" class="link">Integrating Your
Data</a>

</div>

</div>

</div>
