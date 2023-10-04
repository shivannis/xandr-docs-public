---
Title : 10 - Segment and Conversion Pixels
Description : Pixels can be used for two main purposes in
Xandr: segment targeting and conversion
tracking.
---


# 10 - Segment and Conversion Pixels



Pixels can be used for two main purposes in
Xandr: segment targeting and conversion
tracking.

<div id="ID-00000972__section_hwf_njm_rwb" >

## Segment Pixels

Segment pixels can be targeted via the profile service to restrict a
campaign/line item/creative to targeting a specific subset of users. If
no advertiser ID is specified, the segment is created at the network
level and is available to all advertisers within the network. The
example below shows how to create a new segment under a specific
advertiser.

**Example**

Make a file containing JSON and add the correct values. Necessary fields
include short name, advertiser ID and expire minutes.

``` pre
$cat segment
{
  "segment": {
    "short_name": "Retargeting Segment",
    "advertiser_id": 1234,
    "expire_minutes": 20160
  }
  }
```



<div id="ID-00000972__section_ur4_5jm_rwb" >

## Conversion Pixels

Conversion pixels can be used to attribute conversions to specific
auctions (and with line items and creatives) as well as for optimization
when optimizing to a specific CPA. All conversion pixels must be
associated with specific advertisers and with specific line items. The
example below shows how to create a new conversion pixel and associate
it with a line item for attribution tracking.

**Example**

Make a file containing JSON and add the correct values. Necessary fields
include advertiser id, trigger type and name.

``` pre
$cat pixel
{
  "pixel": {
    "name": "Conversion Pixel",
    "advertiser_id": 1234,
    "trigger_type": "hybrid"
  }
}
```

After creating the pixel using a POST request to the API, you can
associate the pixel with a line item with a PUT request to the line item
service. The sample JSON below shows the format of the call to modify
the line item and associate pixel 12345.

``` pre
$cat line_item
{
  "line_item": {
    "id": 205,
    "pixels":[
      {
        "id": 12345,
        "state": "active",
        "post_click_revenue": 100,
        "post_view_revenue": 50
      }
    ],
    ...
  }
}
```






