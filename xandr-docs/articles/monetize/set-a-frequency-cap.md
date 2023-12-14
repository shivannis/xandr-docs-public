---
Title : Set a Frequency Cap
Description : You can set frequency caps from the
ms.date: 10/28/2023
Audience & Location Targeting
section within the Create New Line
Item and Edit Line Item
screens.
---


# Set a Frequency Cap



You can set frequency caps from the
Audience & Location Targeting
section within the Create New Line
Item and Edit Line Item
screens.



Day, Week, and Month frequency caps are reset at a region-specific time
of the day and during non-peak usage times.

Combining frequency caps could increase the restrictions on how often a
creative is shown to a user. For example, if you set a frequency cap of
four impressions per week, then set another frequency cap for two
impressions per month, the user will never be shown four impressions in
a week because they will reach the cap of two impressions in one month
and won't be shown any more for the rest of the month.

An exception to this would be if the month ended mid-week. Because weeks
are defined as Sunday through Saturday and a month is a calendar month,
in this scenario a user could be shown one impression on Sunday and one
on Tuesday. If the month then ends on Wednesday, the user could be shown
two more impressions by Saturday. At that point, the monthly cap has
been met twice, once for each month in that week, and the weekly cap of
four has been met.





1.  Under the
    Audience &
    Location Targeting \> Frequency &
    Recency subsection, click the toggle.
2.  Under Frequency
    (how many), enter the number of impressions (imps) to show
    and select a timeframe.
    <div class="itemgroup stepxmp">

    For example, to show a user a maximum of four impressions within one
    week, enter **4** in the text field and select
    week from the pull-down menu.

    
3.  To add additional timeframes, click
    Add another cap.
    

    You can apply one frequency cap per timeframe. The following table
    describes the time period settings available for frequency caps:
    <table
    id="set-a-frequency-cap__table_bf20154e-b7cd-400e-8ae5-8b9563451361"
    class="table">
    <thead class="thead">
    <tr class="header row">
    <th
    id="set-a-frequency-cap__table_bf20154e-b7cd-400e-8ae5-8b9563451361__entry__1"
    class="entry">Timeframe</th>
    <th
    id="set-a-frequency-cap__table_bf20154e-b7cd-400e-8ae5-8b9563451361__entry__2"
    class="entry">Description</th>
    </tr>
    </thead>
    <tbody class="tbody">
    <tr class="odd row">
    <td class="entry"
    headers="set-a-frequency-cap__table_bf20154e-b7cd-400e-8ae5-8b9563451361__entry__1"><strong>hour</strong></td>
    <td class="entry"
    headers="set-a-frequency-cap__table_bf20154e-b7cd-400e-8ae5-8b9563451361__entry__2">The
    maximum number of times a creative can be served to a user within a
    one-hour period.</td>
    </tr>
    <tr class="even row">
    <td class="entry"
    headers="set-a-frequency-cap__table_bf20154e-b7cd-400e-8ae5-8b9563451361__entry__1"><strong>day</strong></td>
    <td class="entry"
    headers="set-a-frequency-cap__table_bf20154e-b7cd-400e-8ae5-8b9563451361__entry__2">The
    maximum number of times a creative can be served to a user within one
    day.</td>
    </tr>
    <tr class="odd row">
    <td class="entry"
    headers="set-a-frequency-cap__table_bf20154e-b7cd-400e-8ae5-8b9563451361__entry__1"><strong>week</strong></td>
    <td class="entry"
    headers="set-a-frequency-cap__table_bf20154e-b7cd-400e-8ae5-8b9563451361__entry__2">The
    maximum number of times a creative can be served within one week
    (beginning on Sunday).
    <p>Regardless of when a creative is first served to the user, every
    Sunday the impression count for the user will be reset to zero and the
    frequency values will begin recounting.</p></td>
    </tr>
    <tr class="even row">
    <td class="entry"
    headers="set-a-frequency-cap__table_bf20154e-b7cd-400e-8ae5-8b9563451361__entry__1"><strong>month</strong></td>
    <td class="entry"
    headers="set-a-frequency-cap__table_bf20154e-b7cd-400e-8ae5-8b9563451361__entry__2">The
    maximum number of times a creative can be served within one calendar
    month.
    <p>Regardless of how far into a month a creative is first served to the
    user, the impression count for the user will be reset on the first day
    of the following month and the frequency count will start over.</p></td>
    </tr>
    <tr class="odd row">
    <td class="entry"
    headers="set-a-frequency-cap__table_bf20154e-b7cd-400e-8ae5-8b9563451361__entry__1"><strong>lifetime</strong></td>
    <td class="entry"
    headers="set-a-frequency-cap__table_bf20154e-b7cd-400e-8ae5-8b9563451361__entry__2">The
    maximum number of times a creative can be served to the user.</td>
    </tr>
    </tbody>
    </table>

    
4.  Set the following settings:
    <table
    id="set-a-frequency-cap__choicetable_6df57740-50ce-4ba7-b307-01ca635ced6f"
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
    style="text-align: left; vertical-align: bottom;">Settings</th>
    <th class="stentry chdeschd" scope="col"
    style="text-align: left; vertical-align: bottom;">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd strow chrow">
    <th class="stentry choption" style="vertical-align: top"
    scope="row">Serve only 1 imp per page</th>
    <td class="stentry chdesc" style="vertical-align: top">Use this setting
    to limit the number of impressions that an individual advertiser can
    serve on a page in multi-tag auctions. This option is network-specific
    and may not be available for your network (member).</td>
    </tr>
    <tr class="even strow chrow">
    <th class="stentry choption" style="vertical-align: top"
    scope="row">Include users without cookies</th>
    <td class="stentry chdesc" style="vertical-align: top">Once you set a
    frequency cap, you can choose to show creatives to users without
    cookies. There is no way to identify these users, so if you turn on this
    option your frequency and recency caps will not apply to any user
    without cookies. However, if you select not to include users without
    cookies you could limit your delivery. If you toggle this option and
    have set a daily frequency cap, <a
    href="../snippets/../topics/advanced-frequency-management.md"
    class="xref"
    title="Advanced Frequency Management (AFM) is an innovative frequency-capping feature that lets you control the number of impressions seen by users who opt out of including traditional identifiers in ad requests (&quot;cookieless users&quot;).">Advanced
    Frequency Management</a> will be applied to help adhere to your daily
    frequency cap.</td>
    </tr>
    </tbody>
    </table>



>

Related Topics

- <a href="buy-side-page-caps.md" class="xref">Buy-Side Page Caps</a>
- <a href="frequency-and-recency-examples.md" class="xref"
  title="There may be instances where you want to combine frequency and recency settings to provide an ideal user experience and minimize overexposure.">Frequency
  and Recency Examples</a>






