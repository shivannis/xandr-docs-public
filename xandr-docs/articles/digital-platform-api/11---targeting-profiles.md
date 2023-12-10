---
Title : 11 - Targeting Profiles
Description : All targeting in Xandr is controlled via
ms.date: 10/28/2023
ms.custom: digital-platform-api
targeting profiles. This allows us to keep targeting unified across all
---


# 11 - Targeting Profiles



All targeting in Xandr is controlled via
targeting profiles. This allows us to keep targeting unified across all
objects as well as allow targeting to be applied to nearly any object on
the platform. Some of the most common targeting parameters available
are:


## User Frequency

The example below will allow 3 impressions per user per day with at
least 20 minutes between impressions.

``` pre
$ cat profile
{
  "profile": {
    "id": 12345,
    "max_lifetime_imps": null,
    "max_session_imps": null,
    "max_day_imps": 3,
    "min_minutes_per_imp": 20
  }
  }
```




## Day Part

The example below will target impressions from 3:00 PM to 11:59 PM based
on the user's timezone. If a timezone is not specified for the
"daypart_timezone" field, the platform will use the timezone of the user
based on the geography data derived from the user's IP address.

``` pre
$ cat profile
{
  "profile": {
    "id": 12345,
    "daypart_timezone": null,
    "daypart_targets": [
      {"day": "monday", "start_hour": 15, "end_hour": 23},
      {"day": "tuesday", "start_hour": 15, "end_hour": 23},
      {"day": "wednesday", "start_hour": 15, "end_hour": 23},
      {"day": "thursday", "start_hour": 15, "end_hour": 23},
      {"day": "friday", "start_hour": 15, "end_hour": 23}
    ]
  }
  }
```




## Segments

The example below will target users that are in both segments 12345 and
12346.

``` pre
$ cat profile
{
  "profile": {
    "id": 12345,
    "segment_targets": [
      {
        "id": 12345,
        "action": "include"
      },
      {
        "id": 12346,
        "action": "include"
      }
    ],
    "segment_boolean_operator": "and"
  }
  }
```




## Geography Targets

We are able to target geography on the country, region, city and DMA (US
only) levels. The example below shows how to target users in the New
York City, NY, USA. Note that you can target just the city without
specifying the country or state. If you do not wish to use geography
targeting, leave the "country_action", "region_action", "dma_action" and
"city_action" fields set to "exclude" and the targets fields set to
null. This will effectively exclude nothing with respect to geography
targets.

``` pre
$ cat profile
{
  "profile": {
    "id": 12345,
    "country_targets":[{"country": "US"}],
    "country_action": "include",
    "region_targets": [{"region": "US:NY"}],
    "region_action": "include",
    "dma_targets": [{"dma": 501}],
    "dma_action": "include",
    "city_targets": [{"id": 198423}],
    "city_action": "include"
        }
        }
```




## Domain Lists

Targeting by doamains can be done through two options: targeting a
domain list as a whole (see the domain list service) or targeting a
short list of domains (25 or less). The example below shows how to do
both:

``` pre
$ cat profile
{
  "profile": {
    "id": 12345,
    "domains": [
      {"domain": "domain1.com"},
      {"domain": "domain1.org"},
      {"domain": "domain3.net"},
      {"domain": "domain4.co.uk"}
    ],
    "domain_action": "include",
    "domain_list": [{"id": 1}, {"id": 2}, {"id": 3}],
    "domain_list_action": "include"
}
}
```




## Inventory Trust and Attributes

Inventory trust and attributes correspond to the inventory quality
targeting on the campaign inventory targeting screen. It includes the
level of trust ("appnexus" or "seller"),
intended audience ("general", "children", "young_adult" and "mature") as
well as specific inventory attributes to allow.

``` pre
$ cat profile
{
  "profile": {
    "id": 12345,
    "trust": "appnexus",
    "use_inventory_attribute_targets": true,
    "inventory_attribute_targets": [{"id": 2}],
    intended_audience_targets": ["general", "children", "young_adult"]
}
}
```




## System Targets (Browser, Operating System, Language)

Certain system variables are targetable as well, such as browser,
operating system and language. Any variable targeted here will be
**excluded**. The example below shows the syntax for the following
**exclusions**:

- Browser
  - Unknown
  - Chrome (all versions)
  - Safari (all versions)
- Operating Systems
  - iPhone
  - iPod
  - iPad
  - Blackberry
  - Windows Phone 7
- Language
  - Unknown
  - Chinese
  - Spanish
  - Japanese
  - French
  - German
  - Arabic
  - Portuguese
  - Russian
  - Korean
  - Italian
  - Dutch

``` pre
$ cat profile
{
  "profile": {
    "id": 12345,
    "browser_targets": [{"id": 0}, {"id": 8}, {"id": 9}],
    "operating_system_targets": [{"id": 0}, {"id": 8}, {"id": 9},
                                 {"id": 10}, {"id": 12}, {"id": 13}],
    "language_targets": [{"id": 0}, {"id": 2}, {"id": 3},
                         {"id": 4}, {"id": 5}, {"id": 6},
                         {"id": 7}, {"id": 8}, {"id": 9},
                         {"id": 10}, {"id": 11}, {"id": 12}]
}
}
```






