---
Title : Using Events and Parameters
Description : After you have configured your universal pixel, you can add value by
ms.date : 10/28/2023
configuring it to identify events, such as adding an item to a shopping
cart. Standard events allow you to capture the interactions that matter
---


# Using Events and Parameters



After you have configured your universal pixel, you can add value by
configuring it to identify events, such as adding an item to a shopping
cart. Standard events allow you to capture the interactions that matter
most to an advertiser. You can enhance events by adding additional
information in the form of parameters.





<b>Note:</b> You can also create custom events
and parameters. For more information, see
<a href="create-custom-events-and-parameters.md" class="xref"
title="If you click the pencil icon next to a pixel on the Universal Pixels page, you can create custom events and parameters for the universal pixel using the UI and include them in your generated pixel code.">Create
Custom Events and Parameters</a>.





For example, using the standard event `AddtoCart`, you can track when
users add an item to a shopping cart. Using parameters, you can
configure the `AddToCart` standard event to also gather the product ID,
product name, and total cart/purchase value. This information can
provide you with better insights for building audience segments and more
granular tracking of user interactions.

Standard events are implemented as snippets of code placed on relevant
webpages that indicate when users perform typical actions. For example,
if you place the code snippet on the landing page where a user arrives
after they click **Add to Cart**, the pixel is triggered by the script
code, and the event can be tracked.

>

The following table shows the benefits of adding events and parameters
to the basic pixel implementation.

<table id="using-standard-events-and-parameters__table_ijs_pxt_rkb"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="using-standard-events-and-parameters__table_ijs_pxt_rkb__entry__1"
class="entry">Universal Pixel with Events</th>
<th
id="using-standard-events-and-parameters__table_ijs_pxt_rkb__entry__2"
class="entry">Universal Pixel Without Events</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="using-standard-events-and-parameters__table_ijs_pxt_rkb__entry__1">Page
views and other typical events such as cart adds and purchases</td>
<td class="entry"
headers="using-standard-events-and-parameters__table_ijs_pxt_rkb__entry__2">Only
page views and URLs</td>
</tr>
<tr class="even row">
<td class="entry"
headers="using-standard-events-and-parameters__table_ijs_pxt_rkb__entry__1">Advanced
rule logic combining:
<ul>
<li>URLs</li>
<li>standard and custom events</li>
<li>standard and custom parameters</li>
</ul></td>
<td class="entry"
headers="using-standard-events-and-parameters__table_ijs_pxt_rkb__entry__2">Only
URL-based rules and page view events</td>
</tr>
</tbody>
</table>



>

## Related Topics

- <a href="create-custom-events-and-parameters.md" class="xref"
  title="If you click the pencil icon next to a pixel on the Universal Pixels page, you can create custom events and parameters for the universal pixel using the UI and include them in your generated pixel code.">Create
  Custom Events and Parameters</a>
- <a href="standard-events-and-parameters.md" class="xref">Standard
  Events and Parameters</a>






