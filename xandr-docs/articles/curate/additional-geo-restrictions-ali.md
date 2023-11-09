---
Title : Additional Geo Restrictions
Description : In addition to country, you can also restrict the impressions you target
ms.date : 10/28/2023
based on other geographic details of the users viewing them.
---


# Additional Geo Restrictions



In addition to country, you can also restrict the impressions you target
based on other geographic details of the users viewing them.



<b>Warning:</b> Although restricting by
country is highly accurate, the more specific the targeting, the more
imprecise the results. This is especially true when targeting locations
as granular as cities, metro codes, and zip codes. Also, depending upon
which geographic restriction options you choose, you may significantly
reduce the likelihood of a match and thus jeopardize delivery.




To restrict the impressions you target based on other geographic details
of the users viewing them, click Additional
Geo Restrictions next to
Geography in the
Audience & Location Targeting
section of your line item and follow the instructions for the relevant
geographic targeting option referenced below:

- Restrict users by country, region, or city
- Restrict users by metro code
- Restrict users by postal code



<b>Note:</b> If you have not targeted at least
one country on your line item, you will be required to target a region,
city, metro code, or postal code.





For third-party buying, geographic targeting is limited by any existing
country settings in your Third-Party Buying Filters at the network
level. If countries are included in your Third-Party Buying Filters,
only those countries and the regions and cities within them will be
available for targeting. If you target (include) geographies at the
Region, City, Metro Code, or Postal Code level,
Xandr will use these settings to derive the
country target to be compared with your Third-Party Buying filters.

>

## Restrict Users by Country, Region, or City

When creating ALIs, you will be required to include at
least one geographic location. You can either chose to target an entire
country, or use the Additional Geo
Restrictions section within Audience
and location targeting to include/exclude specific regions, or
cities.

- The Countries list shows all of the
  countries that can be targeted. You can include countries or drill
  into a country to see its regions/states.
- The Regions list is more granular
  than countries. Generally speaking, regions are based upon whatever
  method the country in question uses to divide itself into parts. For
  example, regions within the United States are states. Canada is
  divided into its provinces, and India is divided into its states and
  union territories. The Regions list
  shows all of the regions/states that can be targeted. You can either
  include or exclude regions/states or drill into a region/state to view
  its cities. When you exclude a region, its cities are not available
  for further inclusion or exclusion.
- The Cities list shows all of the
  cities that can be targeted. You can either include or exclude cities.



<b>Tip:</b> Click the column headers to sort
counties, regions, or cities by name or ID, or use the search field to
find a particular location.





<b>Warning:</b> Do not add conflicting
geographic targeting at multiple levels. For example, if you are
including the United States, Canada, and Mexico, and then you also
include US zip codes, only the US zip codes targeted will be served. In
this scenario, zip code targeting will automatically limit the targeting
to the US only. Similarly, do not target both the region of Arizona and
the metro code of New York, because geo restrictions are an AND
relationship.





>

## Restrict Users by Metro Code

Metro codes are available in 13 countries. Available metro codes range
from large cities such as New York City, United States, or Oslo, Norway,
to smaller cities such as Rochester, NY, United States. Unless you are
excluding an entire "country" in country targeting, you will target all
metro codes by default. However, on the
Metro Code tab, you can narrow
your targeting to include or exclude specific metro codes.


The Countries that support metro code targeting are:

- Aland Islands
- Australia
- Canada
- China (Diji Shi cities)
- Finland
- France (Departments)
- Germany (German Nielsen Metro Codes)
- Korea, Republic of (Si/Gun/Gu)
- New Zealand
- Norway
- Russian Federation (Federal Districts)
- United Kingdom (ITV Regions)
- United States (Metro Code/MSAs)





>

## Restrict Users by Postal Code



<b>Note:</b> You can't target more than 4,000
postal codes per line item.




On the Postal Code tab, once you
select a country, you can include up to 4,000 postal codes using a
comma-separated or line-separated list. Postal codes can be alphanumeric
strings of up to 14 characters and can contain a space or hyphen. Unlike
other types of geographic targeting, postal codes may only be included
(not excluded).



<b>Note:</b> Certain legitimate ZIP or postal
codes are unrecognizable or invalid within the
Xandr geography targeting system. This can
happen because <a href="https://www.digitalelement.com/" class="xref"
target="_blank">Digital Envoy</a>, a Xandr
partner that handles geolocation data, can't recognize a ZIP or postal
code's existence until an IP address (user) has been associated with it.
Postal codes that don't exist in the system often represent obscure or
otherwise small geographical zones with minimal internet activity.





As a guide to how postal codes should be formatted for each country,
consult the list below.

<table id="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1"
class="entry">Country</th>
<th
id="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2"
class="entry">Sample Postal Code</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Australia</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">7470</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Austria</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">9992</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Brazil</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">99990-000</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Canada</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">Y1A
6T5</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">China</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">860700</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Czech
Republic</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">798
62</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Finland</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">99999</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">France</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">95880</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Germany</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">99998</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Hungary</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">9985</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">India</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">855107</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Italy</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">98168</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Japan</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">999-8317</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Mexico</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">99994</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Netherlands</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">9999
XA</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Norway</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">9990</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Poland</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">99-440</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Portugal</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">9980-032</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Romania</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">927250</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Russian
Federation</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">694923</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Spain</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">52080</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Sweden</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">984
94</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">Switzerland</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">9658</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">United
Kingdom</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">ZE3
9JJ</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__1">United
States</td>
<td class="entry"
headers="ID-00001c31__table_e563042a-11f7-4d76-a719-c653b21333b8__entry__2">99950</td>
</tr>
</tbody>
</table>


If your list contains postal/zip codes that don't exist in the
Xandr database, you will be presented with an
error message and given the chance to correct and resubmit any invalid
postal codes. Some common formatting errors that may generate an error
message are:

- **Excel-Truncated Zeros**: Excel may truncate leading zeros from
  postal codes if they are numeric (06514 becomes 6514). However, an
  alphanumeric postal code such as "0AH 135" would not be affected.
- **Country**: Postal codes can only be added for one country at a time.





<b>Note:</b> Ranges are not supported. You
will need to add each individual postal code to the list or import them
from a CSV, Excel, or Text file.





>

## Restrict Users by Postal Code Lists




<b>Note:</b> At the line item level, you can
target:

- both a postal code list and an individual postal code (which does not
  belong to the list)
- either a postal code list or an individual postal code (which does not
  belong to the list)

The include and exclude functionality needs be consistent between the
postal code list and an individual postal code.





You can include and exclude postal code lists and individual postal
codes from targeting on a line item.

To target specific postal code lists available to you, click on the
Postal Codes section within
Additional Geo Restrictions, and
then use the Postal Code List tab. You
can search for available postal code lists by ID or name, and then click
the green check to include a list or
the red dash to exclude a list. For
the United States, you can target the full 9-digit postal code (also
known as zip +4). For example, 10010-7456.



>

## Restrict Users by Political Districts



<b>Note:</b> Postal code list, postal code and
political district include/exclude functionality should be consistent.




Political Geography Targeting allows political buyers to target
geographies based on legislative district boundaries. The feature is
available within the existing geo targeting module in Invest, and it's
called "Political District (US Only)". The Political District Targeting
allows buyers to target the following political geography levels:

- Congressional District
- State Senate District
- State House District





>

## Related Topics

- <a href="object-hierarchy.md" class="xref">Object Hierarchy</a>
- <a href="buy-side-targeting.md" class="xref">Buy-Side Targeting</a>
- <a href="postal-code-lists.md" class="xref">Postal Code Lists</a>






