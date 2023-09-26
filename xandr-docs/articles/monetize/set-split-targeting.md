---
Title : Set Split Targeting
Description : You can define a split by specifying the targeting goals you want it to
meet.
---


# Set Split Targeting



You can define a split by specifying the targeting goals you want it to
meet.



1.  Click the pencil icon that displays in the
    Name column for the corresponding
    split. 
2.  Click the
    Setup tab and set the
    Bid Multiplier.
3.  Click the
    Targeting tab and select the types
    of targeting you want to apply using the dropdown menu.
    

    By default, the targeting goal for a selected category is met if the
    impression includes any of the values you specify. Click the
    Include Any menu to change this to
    Exclude All.

    <div id="set-split-targeting__p_0c94b5ce-d5b3-4c97-bb84-2b3f363b7285"
    >

    This table lists all the features you can use to define a split:
    <table
    id="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27"
    class="table">
    <thead class="thead">
    <tr class="header row">
    <th
    id="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__1"
    class="entry">Feature Class</th>
    <th
    id="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__2"
    class="entry">Feature Name</th>
    </tr>
    </thead>
    <tbody class="tbody">
    <tr class="odd row">
    <td class="entry"
    headers="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__1">Geo</td>
    <td class="entry"
    headers="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__2"><ul>
    <li>Country</li>
    <li>Region</li>
    <li>City</li>
    <li>Metro Code</li>
    <li>Postal Code
    
    Note:
    <p>When specifying postal code, you must also include the country code.
    For example, to target postcode 2096 in Australia, enter "AU:2096".</p>
    <p>For more information, see <a
    href="additional-geo-restrictions-ali.html" class="xref"
    title="In addition to country, you can also restrict the impressions you target based on other geographic details of the users viewing them.">Additional
    Geo Restrictions</a>.</p>
    </li>
    </ul></td>
    </tr>
    <tr class="even row">
    <td class="entry"
    headers="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__1">Inventory</td>
    <td class="entry"
    headers="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__2"><ul>
    <li>Size
    
    Note: The format for size values is
    heightXwidth.
    </li>
    <li>Domain or app (Not supported by GDALI)</li>
    <li>Placement (1st party and 3rd party)</li>
    <li>Publisher (1st party and 3rd party)</li>
    <li>Seller member (Not supported by GDALI)</li>
    <li>Inventory type (web or app)</li>
    <li>Inventory URL list targeting (allowlists and blocklists) <span
    class="ph">(Not supported by GDALI)</li>
    </ul>
    <p>For more information, see <a href="inventory-targeting-ali.html"
    class="xref">Inventory Targeting (ALI)</a>.</p></td>
    </tr>
    <tr class="odd row">
    <td class="entry"
    headers="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__1">System</td>
    <td class="entry"
    headers="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__2"><ul>
    <li>Operating system family</li>
    <li>Operating system version</li>
    <li>Browser</li>
    <li>Browser language</li>
    <li>Device type</li>
    <li>Device carrier</li>
    <li>Model</li>
    </ul>
    <p>For more information, see <a href="buy-side-targeting.html"
    class="xref">Buy-Side Targeting</a>.</p></td>
    </tr>
    <tr class="even row">
    <td class="entry"
    headers="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__1">Inventory
    Performance</td>
    <td class="entry"
    headers="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__2"><ul>
    <li>Viewability Threshold (Not supported by
    GDALI)</li>
    <li>Video Viewability Threshold (Not supported by
    GDALI)</li>
    <li>Completion Rate Threshold (Not supported by
    GDALI)</li>
    </ul>
    <p>For more information, see <a href="introduction-to-viewability.html"
    class="xref">Introduction to Viewability</a>.</p></td>
    </tr>
    <tr class="odd row">
    <td class="entry"
    headers="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__1">Segment</td>
    <td class="entry"
    headers="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__2"><ul>
    <li>Segment presence/absence</li>
    <li>Segment age: The amount of time since a user was added to a
    segment.</li>
    <li>Segment value: The value associated with the segment (by you or by
    the buyer). This can be an individual value or a range.</li>
    </ul></td>
    </tr>
    <tr class="even row">
    <td class="entry"
    headers="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__1">Frequency
    &amp; Recency</td>
    <td class="entry"
    headers="set-split-targeting__table_d758f483-ab75-4716-9ed0-2bbd4288dc27__entry__2"><ul>
    <li>Daily frequency</li>
    <li>Lifetime frequency</li>
    <li>Split recency
    
    Note: Split recency caps differ from
    regular line item recency caps in that you're setting recency caps to
    "retarget" users who have already been served an impression. This means
    users are only eligible for an impression through a split's recency caps
    if that split (or its parent line item) has already served them a
    creative.
    <p>For example, if the split recency targeting is set to <span
    class="ph uicontrol">&lt;1 day, a creative is served to users who
    have already seen the creative within the last day.</p>
    </li>
    <li>Advertiser lifetime frequency</li>
    <li>Advertiser daily frequency</li>
    <li>Advertiser recency</li>
    <li>Line item lifetime frequency</li>
    <li>Line item daily frequency</li>
    <li>Line item recency</li>
    </ul>
    <p>For more information, see <a href="frequency-and-recency-caps.html"
    class="xref"
    title="From the Audience &amp; Location Targeting section, you can apply frequency and recency caps to your line item to prevent overexposure by limiting how many (frequency) and how often (recency) creatives are shown to a user. You can use the Creative Frequency and Recency Report to view how often and how frequently users are viewing a specific advertiser&#39;s creatives.">Frequency
    and Recency Caps</a>.</p></td>
    </tr>
    </tbody>
    </table>

    

    






