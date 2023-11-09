---
Title : Geo Radius Segments
Description : A geo radius segment is a list of latitude, longitude, and radius data.
ms.date : 10/28/2023
---


# Geo Radius Segments



A geo radius segment is a list of latitude, longitude, and radius data.
You can use geo radius segments for geographical targeting of multiple
user locations. When you create a geo radius segment, you add latitude,
longitude, and radius data either manually (copy and paste) or by
importing a file. Once the geo radius segment is created, these
locations are easily targetable on your line item using the segment ID
(see <a href="segment-targeting.md" class="xref"
title="You can target users within segments by using Boolean expressions. Users get added to segments after they&#39;ve viewed or clicked a particular creative.">Segment
Targeting</a>) for more information.



<b>Important:</b> Approximately 30% of
impressions received contain location data that you can target with geo
radius segments.





<b>Note:</b> There is a maximum limit of 10k
geo radius segments per member.



Creating a Geo Radius Segment

There are five steps to creating a geo radius segment:

Step 1. Get Started

Open the
<a href="location-manager.md" class="xref">Location Manager</a> page
and click New to open the **Create Geo
Radius Segment** dialog.

Step 2. Create a new Geo Radius Segment

Fill in the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000009__entry__1" class="entry">Name</th>
<th id="ID-00000009__entry__2" class="entry">Description</th>
<th id="ID-00000009__entry__3" class="entry">Required/Optional</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000009__entry__1"><span
class="ph uicontrol">Name</td>
<td class="entry" headers="ID-00000009__entry__2">Name for geo radius
segment</td>
<td class="entry" headers="ID-00000009__entry__3">Required</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000009__entry__1"><span
class="ph uicontrol">Code</td>
<td class="entry" headers="ID-00000009__entry__2">User-defined code for
calling the geo radius segment, e.g. GEO123</td>
<td class="entry" headers="ID-00000009__entry__3">Optional</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000009__entry__1"><span
class="ph uicontrol">Description</td>
<td class="entry" headers="ID-00000009__entry__2">Description of geo
radius segment</td>
<td class="entry" headers="ID-00000009__entry__3">Optional</td>
</tr>
</tbody>
</table>

Click Next.

Step 3. Choose the method to add Geo Radius Segment features

Copy and paste

1.  Enter the following information, separated by commas:
    - Latitude

    - Longitude

    - Radius (in meters: 3m to 100000m)
      

      <b>Note:</b> The radius needs to be a
      whole number.

      

    - Name (optional name for this feature)

      Separate each group by entering a hard return. For example:

      ``` pre
      40.741624,-73.990991,10,Feature One  
      48.376928,-54.986546,8  
      ```
2.  Click Validate Input Formatting to
    ensure that the information is in the correct format. If the
    information is in the correct format, the
    Next button is enabled.
3.  Click Next.

Import from file

1.  Browse your computer and select the .csv file to upload. Ensure that
    the first row of the .csv file includes the following headers with
    corresponding values listed in rows underneath:

    

    ``` pre
    lat | long | radius_meters | name 
    ```

    

    For example:

    ``` pre
    lat,long,radius_meters,name  
    40.741624,-73.990991,10,Feature One  
    48.376928,-54.986546,8 
    ```

2.  Click Next.

Step 4. Review Geo Radius Segment features and create Geo Radius Segment

Review the Related Geo Features of the
geo radius segment. Click Create Geo Radius
Segment to finish creating the geo radius segment.

Step 5. Note the segment ID for use in line item targeting

When a new geo radius segment is created, it is automatically assigned a
segment ID. Use this segment ID (or the geo radius segment name) to
locate the segments when configuring targeting for line items. See
<a href="segment-targeting.md" class="xref"
title="You can target users within segments by using Boolean expressions. Users get added to segments after they&#39;ve viewed or clicked a particular creative.">Segment
Targeting</a> for more information on using the segment IDs assigned to
geo radius segments for targeting.





<b>Note:</b> Within 365 days of being created,
geo radius segments must be refreshed or updated since their maximum
Time-To-Live (TTL) is 365 days. If a segment is not refreshed, it will
become inactive and unusable for targeting. You can refresh segments by
adding new or existing latitudes and longitudes.








