---
Title : Segment Modifier
Description : Segment Modifier allows you to adjust a campaign's bid at the time of
ms.date: 10/28/2023
the auction using data you have about your users. This is achieved by
---


# Segment Modifier



Segment Modifier allows you to adjust a campaign's bid at the time of
the auction using data you have about your users. This is achieved by
associating a modifier segment with an audience segment. The campaign is
then able to use this information to modify the bid when one of your
users is present. There are two ways the campaign can modify the bid:

- User Bid Price: Determine what absolute price you will bid for the
  impression. This option is best for short campaigns with high budgets.
  Due to their short flight dates, they may not generate enough data to
  train our optimization engine effectively.
- User Bid Modifier: Modify the bid determined by our optimization
  engine by a specified amount. This option is best for campaigns with
  medium-to-high budgets, with long or repeating flight dates, that use
  click-conversion performance metrics.



<b>Note:</b> In this document, "an impression"
is used to refer to an impression involving a user in one of your
audience segments, where that audience segment is associated with a
modifier segment.



Step 1. Upload your Audience and Modifier Segments to the Batch Segment
API

Upload both your audience and modifier segments using the <a
href="xandr-api/batch-segment-service.md"
class="xref" target="_blank">Batch Segment Service</a>. You'll then
associate each modifier segment with a campaign using the procedure
defined in **<a
href="segment-modifier.md#ID-000053f3__p-eeecd7e8-81bb-4ab1-af13-fb794cb95945"
class="xref">Step 2</a>**. Note that each modifier segment may only be
associated with a single audience segment, whereas a single audience
segment can be part of more than one modifier segment.

The *user bid price*and *user bid modifier* need to be decimal values
(e.g., floating-point numbers). Unfortunately, the segment data file
format only accepts integers in the `VALUE` field where you define your
*user bid price*or *user bid modifier*. Therefore you'll need to
multiply your desired bid price or bid modifier by 1000. For example, to
specify a user bid price of $0.75, write the integer `750` into the
`VALUE` field of the segment data file. For a complete description of
the file format, see <a
href="xandr-api/page/batch-segment-servicehttps://xandr-prod.zoominsoftware.io/bundle/xandr-api/batch-segment-service---file-format.md"
class="xref" target="_blank">Batch Segment Service - File Format</a>.

Step 2. Associate a Modifier Segment with your Campaign via the API

Using the <a
href="xandr-api/campaign-service.md"
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

To achieve complete overlap, all of the cookies in your target audience
(across one or all audience segments) should have a modifier value in
the modifier segment.



<b>Note:</b> Note that there are very few use
cases requiring both a `segment_price_id` and `segment_modifier_id` on
the same campaign.



Step 3. Set your Optimization Levers

Finally, the <a
href="xandr-api/campaign-service.md"
class="xref" target="_blank">Campaign Service</a> provides another
optimization lever you can pull in addition to the user bid price or
user bid modifier:

- `userprice_default_modifier`: If a user in one of your audience
  segments is present on an impression, but their audience segment is
  not associated with a modifier segment, you can still modify the bid
  using the value in this field.

  Put another way, if no modifier segment is associated with the
  audience segment on an impression (or if no `VALUE` is set for the
  modifier segment), we will modify the bid based on the value of this
  field. It defaults to `1`, but can be changed to any floating-point
  value between `0` and `1`. For example, you can set this value to
  `0.5` to multiply our optimization engine's calculated bid by `0.5`.
  To refrain from bidding when no `VALUE` has been set on the modifier
  segment (or when no modifier segment is associated with the audience
  segment), set this field to `0`.

Related Topics

- <a href="segment-modifier-testing-guidelines.md" class="xref">Segment
  Modifier Testing Guidelines</a>




