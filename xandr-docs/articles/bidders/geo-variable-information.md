---
Title : Geo Variable Information
Description : Xandr uses Digital Envoy for its Country and Region data. The Digital
---


# Geo Variable Information



Xandr uses Digital Envoy for its Country and Region data. The Digital
Envoy codes are derived from the user's IP address at the time of the ad
call.

<div id="geo-variable-information__section_jts_z5n_4wb"
>

## Country

- ISO 3166

- (United States and Canada are US, CA)

  `{"country":"AS","name":"American Samoa"}`



<div id="geo-variable-information__section_wjk_dvn_4wb"
>

## Region: US and Canada

- ISO 3166-2

- Note that for U.S. traffic, the region is equivalent to the U.S.
  postal state abbreviation codes (e.g. "AL", "AK", "AZ").

- At present, the designated market areas (such as NYC) are not being
  passed via the Region codes.

  `{"region":"US:TX","name":"Texas"}`



<div id="geo-variable-information__section_wxp_fvn_4wb"
>

## Region: International

- Non-US/CA traffic will use the FIPS 10-4 codes.



<div id="geo-variable-information__section_v15_gvn_4wb"
>

## DMA

- U.S. DMA codes are based on the Digital Envoy US metro codes.

  `{"dma":"635","name":"Austin TX"}`






