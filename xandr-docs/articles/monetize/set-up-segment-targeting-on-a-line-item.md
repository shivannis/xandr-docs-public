---
Title : Set Up Segment Targeting on a Line Item
Description : You can set up a line item to target segments that you've created, as
ms.date: 10/28/2023
well as segments from third-party data providers.
---


# Set Up Segment Targeting on a Line Item



You can set up a line item to target segments that you've created, as
well as segments from third-party data providers.

class="section section context">

For more information, see <a href="segment-targeting.md" class="xref"
title="You can target users within segments by using Boolean expressions. Users get added to segments after they&#39;ve viewed or clicked a particular creative.">Segment
Targeting</a>.



>

1.  Go to the
    Audience &
    Location Targeting \> Audience &
    Location Segments subsection within the
    Create New Line Item screen or
    Edit Line Item screen.
    

    The Audience & Location
    Segments subsection displays all segments belonging to the
    advertiser for the associated line item as well as segments defined
    at the Network level.

    
2.  Click one of the following tabs:
    - My Audience Segments
    - Third Party Segments
3.  To target users within one segment group, do
    the following:
    1.  Drag the appropriate segments that display
        on the left into Segment Group 1 on the right.
        

        By default, the corresponding
        ✓ icon will be automatically
        selected for every segment after dragging each one. You can
        leave the ✓ icon selected to
        target the users within the segment. Otherwise, click the
        - icon to exclude the users
        within the segment from being targeted.

        
    2.  Select
        And or
        Or to add boolean operators
        between the segments.
        

        If you target multiple segments, the following will occur
        depending upon the boolean operator that you select:
        - Selecting And will
          automatically add an AND boolean operator between segments,
          which means that users must be in all the segments to be
          targeted.
        - Selecting Or will
          automatically add an OR boolean operator between segments,
          which means that users can be in any one of the segments to be
          targeted.

        
4.  To target users within multiple segment groups,
    do the following:
    1.  Drag the appropriate segments that display
        on the left into Segment Group 1 on the right.
    2.  Click Create New
        Group to add more segment groups and drag the appropriate
        segments into each corresponding segment group.
        

        By default, the corresponding
        ✓ icon will be automatically
        selected for every segment after dragging each one. You can
        leave the ✓ icon selected to
        target the users within the segment. Otherwise, click the
        - icon to exclude the users
        within the segment from being targeted.

        
    3.  Select
        And or
        Or to add boolean operators
        between the segments and segment groups.
        

        If you are targeting multiple segment groups, the following will
        occur depending upon the boolean operator that you select:
        - Selecting And will
          automatically add an AND boolean operator between the segments
          within each segment group, but an OR boolean operator will be
          added between the segment groups. To be targeted, users only
          have to belong to at least one segment group, not all of the
          specified segment groups.
        - Selecting Or will
          automatically add an OR boolean operator between the segments
          within each segment group, but an AND boolean operator will be
          added between the segment groups. To be targeted, users must
          belong to all of the specified segment groups.

        

    <div class="itemgroup stepxmp">

    There are many ways in which you can use multiple segment groups to
    target users. Let's say you have four segments: A, B, C, and D. A
    and B are "good" segments that you want to use for remarketing.
    Users only have to be in either segment A or segment B, not both, to
    be targeted. C and D are "bad" segments and include users that you
    aren't interested in being targeted.

    In this example, you would have segments A and B grouped within one
    segment group as well as a second segment group for segment C and a
    third segment group for segment D. Your goal is to exclude users
    that are in segment C and segment D.

    A boolean expression for this scenario would look something like
    this: (Require A OR Require B) AND (Exclude C) AND (Exclude D).

    
5.  **Optional:** To further refine your segment
    targeting, hover over any of the segments and click the pencil
    icon:
    <table
    id="ID-000019db__choicetable_89ca83a2-1e1e-4bde-9285-407c21440723"
    class="simpletable choicetable choicetableborder" data-border="1"
    data-frame="hsides" data-rules="rows" data-cellpadding="4"
    data-cellspacing="0" data-summary="">
    <colgroup>
    <col style="width: 50%" />
    <col style="width: 50%" />
    </colgroup>
    <thead class="thead">
    <tr class="header sthead chhead">
    <th class="stentry choptionhd" scope="col"
    style="text-align: left; vertical-align: bottom;">Setting</th>
    <th class="stentry chdeschd" scope="col"
    style="text-align: left; vertical-align: bottom;">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd strow chrow">
    <th class="stentry choption" style="vertical-align: top"
    scope="row">Fired</th>
    <td class="stentry chdesc" style="vertical-align: top">Retargets a
    subset of users within a segment pixel based on the time that they last
    visited a particular creative. For example, if you want to retarget a
    subset of users within a segment pixel who visited a product page in the
    last 24 hours, you can select Between
    from the Fired pull-down menu and
    enter a time period between 0 and 24 hours.</td>
    </tr>
    <tr class="even strow chrow">
    <th class="stentry choption" style="vertical-align: top"
    scope="row">Value</th>
    <td class="stentry chdesc" style="vertical-align: top"><p>Refines the
    targeting criteria for a particular segment. For example, if you want to
    target a subset of users within a segment who have a household income
    that exceeds $200,000 USD and visited a product page containing
    different products, you would select <span
    class="ph uicontrol">Above from the <span
    class="ph uicontrol">Value pull-down menu and enter $200,000 USD
    in the text field.</p>
    <p>Similarly, if you want to target a subset of users who have a
    household income between $100,000 USD and $200,000 USD, select <span
    class="ph uicontrol">Between in the <span
    class="ph uicontrol">Value pull-down menu and enter $99,999 USD
    in the Greater than field and
    $199,999 USD in the Less than
    field.</p></td>
    </tr>
    </tbody>
    </table>

    

    

    <b>Note:</b> The options that are
    available from the Fired and
    Value menus may vary based on the
    data provider's offering. Xandr has only
    defined these options for segments that you've created.

    

    
6.  Click
    Save.



>

Related Topics

- <a href="create-a-segment-pixel.md" class="xref">Create a Segment
  Pixel</a>
- <a href="associate-segment-pixels-with-creatives.md" class="xref"
  title="You can associate specific segment pixels with your creatives. Users will be added to the segment pixels when they&#39;re viewing and/or clicking the creative.">Associate
  Segment Pixels with Creatives</a>
- <a href="mobile-user-segment-targeting.md" class="xref">Mobile User
  Segment Targeting</a>






