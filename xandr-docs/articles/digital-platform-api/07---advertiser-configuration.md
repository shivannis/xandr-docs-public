---
Title : 07 - Advertiser Configuration
Description : Prior to creating any pieces of the campaign hierarchy via the API, it
is best practice to fully configure the advertiser first. The reason for
---


# 07 - Advertiser Configuration



Prior to creating any pieces of the campaign hierarchy via the API, it
is best practice to fully configure the advertiser first. The reason for
this is that there are defaults that can be specified on an advertiser
level which cascade to child objects under the advertiser.

There are a number of different parameters which can be configured at
the advertiser level:

<div id="ID-00000842__section_qvk_5vh_rwb" >

## Billing Address

This setting, stored in the parameter in the sample below, specifies the
billing address for the advertiser. The sample JSON below shows how to
set this parameter.

``` pre
{
  "advertiser": {
    "billing_address1": "123 Main Street",
    "billing_address2": "Floor 4",
    "billing_city": "Smallville",
    "billing_state": "PA",
    "billing_country": "United States",
    "billing_zip": "12345"
  }
  }
```



<div id="ID-00000842__section_tvg_kwh_rwb" >

## Timezone

This parameter, stored in the "timezone" field, defines the default
timezone that will be applied to newly created objects unless otherwise
specified at the time of their creation. For the list of valid
timezones, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a>. The sample JSON below
shows how to set this parameter.

``` pre
{
  "advertiser"a: {
    "timezone": "EST5EDT"
  }
  }
```



<div id="ID-00000842__section_ixh_w13_rwb" >

## Time Format

This parameter, stored in the "time_format" field, defines whether times
will be displayed in the 12-hour or 24-hour format in reporting. The
sample JSON below shows how to set this parameter.

``` pre
{
  "advertiser": {
    "time_format": "12-hour"
  }
  }
```



<div id="ID-00000842__section_n3j_hb3_rwb" >

## Default Currency

The default currency, like the timezone, is applied to line items unless
otherwise specified when creating those objects. The sample JSON below
shows how to set this parameter.

``` pre
{
  "advertiser": {
    "default_currency": "USD"
  }
  }
```



<div id="ID-00000842__section_zcl_kb3_rwb" >

## Use Insertion Orders

This setting, stored in the "use_insertion_orders" parameter, specifies
whether or not insertion orders should be used within this advertiser.
The sample JSON below shows how to set this parameter.

``` pre
{
  "advertiser": {
    "use_insertion_orders": true
  }
  }
```



<div id="ID-00000842__section_s1h_4b3_rwb" >

## Summary Example

Below is a summary of the JSON samples above into a single member
object. In this case, the advertiser specification is in a file.

``` pre
$ cat advertiser
{
  "advertiser": {
    "name": "Advertiser ABC",
    "billing_address1": "123 Main Street",
    "billing_address2": "Floor 4",
    "billing_city": "Smallville",
    "billing_state": "PA",
    "billing_country": "United States",
    "billing_zip": "12345",
    "timezone": "EST5EDT",
    "time_format": "12-hour",
    "default_currency": "USD",
    "use_insertion_orders": true
  }
}
```

In order to create the advertiser, you should POST the specification to
the API.

``` pre
$ curl -b cookies -c cookies -X POST --data-binary @advertiser 'https://api.appnexus.com/advertiser'
{
   "response":{
      "status": "OK",
      "id": 1234
   }
}
```

Then to verify that the advertiser was created properly, you can pull
down the advertiser from the API using the advertiser ID.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/advertiser?id=1234'
{
  "response": {
    "status": "OK",
    "advertiser": {
      "id": 1234,
      "code": null,
      "name": "Advertiser ABC",
      "state": "inactive",
      "default_brand_id": 0,
      "remarketing_segment_id": null,
      "lifetime_budget": null,
      "lifetime_budget_imps": null,
      "daily_budget": null,
      "daily_budget_imps": null,
      "enable_pacing": true,
      "profile_id": null,
      "control_pct": 0,
      "timezone": "EST5EDT",
      "last_modified": "2011-07-13 14:41:49",
      "stats": null,
      "member_id": 123,
      "billing_internal_user": null,
      "billing_address1": "123 Main Street",
      "billing_address2": "Floor 4",
      "billing_city": "Smallville",
      "billing_state": "PA",
      "billing_country": "United States",
      "billing_zip": "12345",
      "default_category": null,
      "default_currency": "USD",
      "labels": null,
      "use_insertion_orders": true,
      "time_format": "12-hour",
      "default_brand": null
    },
    "count": 1,
    "start_element": null,
    "num_elements": null,
    "dbg_info": {
      ...
    }
  }
}
```






