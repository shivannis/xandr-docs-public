---
Title : Profile Summary Service
Description : The Profile Summary service is a **read-only** service. Given a line
---


# Profile Summary Service



The Profile Summary service is a **read-only** service. Given a line
item ID and a list of profile target types, this service returns the IDs
of campaigns under the line item with profiles targeting the given
target types. Currently, this service only supports line items with no
more than 250 campaigns.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003141__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00003141__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00003141__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__2"><a
href="https://api.appnexus.com/profile-summary?entity_type=line_item&amp;entity_id=12345&amp;summary_fields=postal_code%2ccity%2cregion"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/profile-summary?entity_type=line_item&amp;entity_id=12345&amp;summary_fields=postal_code,city,region</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__3">For
a specific line item, view the IDs of campaigns that are targeting
specific target types.

Note:
<p>In the example above, the <code class="ph codeph">entity_id</code> is
the ID of the line item for which you want to view this summary
and <code class="ph codeph">summary_</code> <code
class="ph codeph">fields</code> is the types of targeting that you want
to include in the summary. Possible values for <code
class="ph codeph">summary_fields</code>: <code
class="ph codeph">postal code</code>, <code
class="ph codeph">city</code>, <code
class="ph codeph">region</code>, <code
class="ph codeph">dma</code>, <code
class="ph codeph">country</code>, <code class="ph codeph">domain</code>,
<code class="ph codeph">domain_list</code>, <code
class="ph codeph">segment</code>, <code class="ph codeph">age</code>,
<code class="ph codeph">gender</code>, <code
class="ph codeph">daypart</code>. You can combine up to 10 of these
values in a comma-separated list. </p>
</td>
</tr>
</tbody>
</table>





##  JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003141__entry__7"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00003141__entry__8" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003141__entry__9"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">postal_code_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have postal code targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">city_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have city targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">region_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have region targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">dma_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have designated market area targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">country_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have country targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">domain_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have domain targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">domain_list_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have domain list targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">segment_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have segment targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">age_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have age targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">daypart_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have daypart targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">operating_system_family_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have operating system family targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">operating_system_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have operating system targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">browser_targeting_exists</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have browser targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">device_model_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have device model targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">carrier_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have carrier targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">device_type_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have device type targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__7"><code
class="ph codeph">supply_type_targets_exist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003141__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003141__entry__9">An
object containing an array of the campaign IDs for any campaigns that
have supply type targeting.</td>
</tr>
</tbody>
</table>





## Example

**View a targeting summary for campaigns with postal code, city, region,
dma, or country targeting**

``` pre
$ curl -b cookies -c cookies -X GET 'https://api.appnexus.com/profile-summary? entity_type=line_item&entity_id=12345&summary_fields=postalcode,city,region,dma,country'
{
   "response" : {
      "status" : "OK",
      "profile-summary" : {
         "city_targets_exist" : {
            "campaign_ids" : [
               248525
            ]
         },
         "dma_targets_exist" : {
            "campaign_ids" : [
               307780
            ]
         },
         "region_targets_exist" : {
            "campaign_ids" : [
               157094
            ]
         },
         "postal_code_targets_exist" : {
            "campaign_ids" : [
               294607,
               294833,
               295299,
               296262,
               296312,
               296313,
               296373,
               296374,
               296375,
               296376,
               296379,
               296670,
               296673,
               297266,
               300517
            ]
         },
         "country_targets_exist" : {
            "campaign_ids" : [
               244064,
               247283,
               247916,
               295936,
               295975,
               299938,
               299939,
               299940,
               299941,
               299942,
               300006
            ]
         }
      }
   }
}
```






