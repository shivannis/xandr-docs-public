---
Title : Create and Customize a Video Placement Tag
Description : Tag customization requires you to build on the root tag by identifying
the correct handler for your implementation, then adding a combination
of required and optional parameters.
---


# Create and Customize a Video Placement Tag



Tag customization requires you to build on the root tag by identifying
the correct handler for your implementation, then adding a combination
of required and optional parameters.





Note:

Xandr now supports a domain,
<a href="http://adnxs-simple.com/" class="xref"
target="_blank">adnxs-simple.com</a>, which does not send or read
browser cookies on requests. Clients can leverage this cookie-free
domain when there is no consent to use personal data. Relevant calls
initiated by Xandr will automatically use this
domain when there is no consent or when cookies are not required for the
function. For more information, see <a
href="https://wiki.xandr.com/display/policies/Reinforcing+Privacy+Controls+Through+a+Cookie-Free+Domain"
class="xref" target="_blank">Reinforcing Privacy Controls Through a
Cookie-Free Domain</a> (login required).



To customize a video placement tag for use in a tag implementation:





1.  On the
    Placement screen in
    Monetize, click
    Export Tag to export the root of
    the tag. 
    

    A typical root tag looks like this:
    `https://secure.adnxs.com/ptv?id=12345678`.

    
2.  If the page is secure, update the endpoint to
    `https://`
3.  The default tag uses the `ptv` handler. See the
    following table to determine whether you should replace the handler
    with a different one.
    

    <table
    id="create_and_customize_a_video_placement_tag__table_d21_xbk_2mb"
    class="table frame-all">
    <colgroup>
    <col style="width: 33%" />
    <col style="width: 32%" />
    <col style="width: 34%" />
    </colgroup>
    <thead class="thead">
    <tr class="header row">
    <th
    id="create_and_customize_a_video_placement_tag__table_d21_xbk_2mb__entry__1"
    class="entry colsep-1 rowsep-1">Placement type</th>
    <th
    id="create_and_customize_a_video_placement_tag__table_d21_xbk_2mb__entry__2"
    class="entry colsep-1 rowsep-1">Client-Side Handler</th>
    <th
    id="create_and_customize_a_video_placement_tag__table_d21_xbk_2mb__entry__3"
    class="entry colsep-1 rowsep-1">Server-Side Handler</th>
    </tr>
    </thead>
    <tbody class="tbody">
    <tr class="odd row">
    <td class="entry colsep-1 rowsep-1"
    headers="create_and_customize_a_video_placement_tag__table_d21_xbk_2mb__entry__1">single
    ad</td>
    <td class="entry colsep-1 rowsep-1"
    headers="create_and_customize_a_video_placement_tag__table_d21_xbk_2mb__entry__2"><code
    class="ph codeph">ptv</code></td>
    <td class="entry colsep-1 rowsep-1"
    headers="create_and_customize_a_video_placement_tag__table_d21_xbk_2mb__entry__3"><code
    class="ph codeph">ssptv</code></td>
    </tr>
    <tr class="even row">
    <td class="entry colsep-1 rowsep-1"
    headers="create_and_customize_a_video_placement_tag__table_d21_xbk_2mb__entry__1">ad
    pod</td>
    <td class="entry colsep-1 rowsep-1"
    headers="create_and_customize_a_video_placement_tag__table_d21_xbk_2mb__entry__2"><code
    class="ph codeph">vmap</code></td>
    <td class="entry colsep-1 rowsep-1"
    headers="create_and_customize_a_video_placement_tag__table_d21_xbk_2mb__entry__3"><code
    class="ph codeph">ssvmap</code></td>
    </tr>
    </tbody>
    </table>

    

    

    

    Note: Some video players don't
    support VMAP. If your player doesn't support it, you can implement
    ad pods using the `/ptv` or `/ssptv` handler.

    

    
4.  Add the required parameters to your tag. For
    more information, see:
    - <a href="required-parameters-for-mobile-web-inventory.html" class="xref"
      title="The required parameters for tags on Mobile Web inventory are id and referrer. However, you&#39;ll need additional parameters such as width and height to monetize your inventory, unless these values have been set on the placement.">Required
      Tag Parameters for Desktop and Mobile Web Inventory</a>
    - <a href="required-parameters-for-android-and-ios-inventory.html"
      class="xref"
      title="You can separate your mobile device tags into Android and iOS tags, or use the ifa and ifa_type parameters, aaid, or idfa to dynamically pass the device identifier and device type in the query string. Note that you&#39;ll need additional parameters such as width and height to monetize your inventory, unless these values have been set on the placement.">Required
      Tag Parameters for Android and iOS Inventory</a>
    - <a href="required-parameters-for-ctv-inventory.html" class="xref"
      title="You can use a single combined tag for CTV, or create separate tags for each device type. When identifying the device, using ifa and ifa_type is recommended: if you can&#39;t use these parameters, you can use openudid. Note that you&#39;ll need additional parameters such as width and height to monetize your inventory, unless these values have been set on the placement.">Required
      Tag Parameters for CTV Inventory</a>






