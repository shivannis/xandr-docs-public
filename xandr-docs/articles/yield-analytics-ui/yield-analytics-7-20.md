---
Title : Yield Analytics 7.20
Description : ## Feature Enhancements
ms.date : 10/28/2023
ms.custom : yield-analytics-ui
**Roadblock Look Ups**
 We have created a new advanced filter on the left hand column of the
Availability screen called Roadblock.
---


# Yield Analytics 7.20





## Feature Enhancements

**Roadblock Look Ups**

 We have created a new advanced filter on the left hand column of the
Availability screen called Roadblock.

![Yield Analytics UI - I]("media/i.png")
<p>The options within the roadblock are:</p>
<ul>
<li>All</li>
<li>As Many</li>
<li>One or More</li>
<li><p>Only One</p>
<p>Some ad servers have multiple options, while others have a more
restrictive set of options. </p></li>
</ul>
</figure>



<b>Tip:</b> For OAS (Open AdStream), you would
use the All option to facilitate Strict Companions.

- Select the product that you want to use to build your Roadblock. Then
  click on the Advance link on the bottom-right of the screen in the top
  modal.  After the options expand, click on the Create Product Variants
  option.



![Yield Analytics UI - J]("media/j.png")
<ul>
<li>Once you have accessed the Vary this attribute: functionality under
the main Product must match all of these criteria: box, then you must
select either size or position in
order to build the additional variables necessary for the
Roadblock.</li>
</ul>
</figure>

![Yield Analytics UI - K]("media/k.png")
<ul>
<li> Select Check Availability.</li>
<li>The results will become available in the <span
class="ph uicontrol">Availability Report section of the User
Interface.</li>
</ul>
</figure>

![Yield Analytics UI - L]("media/l.png")

Within the results you will be able to see a break down of each size or
position. You will also see an additional column that will be added into
the table that will display Roadblock Availability and Roadblock
Capacity.  These numbers will be for the Roadblock as a whole and will
be the same numbers for each row.





## Additional Notes

- The export option will deliver the same experience as seen in the User
  Interface.
- There will be a new API endpoint available.
  - This endpoint will deliver the summary number for the roadblock
    only.
  - The Add to Batch button will be
    disabled for Roadblock look ups.
  - Should the look up not be performed properly, there will be no
    results in the Roadblock column.





<a href="release-notes.md" class="link">Release Notes</a>






