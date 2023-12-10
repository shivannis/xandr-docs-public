---
Title : 03 - Sell-Side Overview
ms.date: 10/28/2023
ms.custom: digital-platform-api
## Diagram
<figure id="ID-000006bb__fig_n2q_5qg_rwb" class="fig fignone">
<p><img src="media/166636911.png"
---


# 03 - Sell-Side Overview




## Diagram

![Sell side](media/sell-side.png)



## Object Definitions

<figure id="ID-000006bb__fig_p2q_5qg_rwb" class="fig fignone">
<ul>
<li><a
href="member-service.md"
class="xref" target="_blank">Member</a>: The parent object for your
account. Each member has a contractual relationship with <span
class="ph">Xandr.</li>
<li><a
href="publisher-service.md"
class="xref" target="_blank">Publisher</a>: The object which represents
a single publisher on Xandr. Generally, a
publisher can be associated with the owner of a piece of inventory.</li>
<li><a
href="site-service.md"
class="xref" target="_blank">Site</a>: This object groups placements and
is usually associated with a singe website (domain) or section of a
website.</li>
<li><a
href="placement-service.md"
class="xref" target="_blank">Placement</a>: Each placement corresponds
to a single ad tag through which impressions come to <span
class="ph">Xandr.</li>
<li><a
href="content-category-service.md"
class="xref" target="_blank">Content Category</a>: This object specifies
attributes about the inventory which are useful for targeting with
managed campaigns.</li>
<li><a
href="payment-rule-service.md"
class="xref" target="_blank">Payment Rule</a>: This object defines how a
publisher is being paid for an impression. This can be associated with a
profile to define dynamic payments based on the targeting.</li>
<li><a
href="ad-profile-service.md"
class="xref" target="_blank">Ad Profile</a>: Defines the types of
creatives which can and cannot serve on a piece of inventory.</li>
<li><a
href="ad-quality-rule-service.md"
class="xref" target="_blank">Ad Quality Rule</a>: This object specifies
additional dynamic rules regarding which creatives can and cannot
serve.</li>
<li><a
href="yield-management-profile-service.md"
class="xref" target="_blank">Yield Management Profile</a>: The parent
object for yield management operations.</li>
<li><a
href="yield-management-floor-service.md"
class="xref" target="_blank">Yield Management Floor</a>: This object
defines dynamic yield management price floors.</li>
<li><a
href="yield-management-bias-service.md"
class="xref" target="_blank">Yield Management Bias</a>: This object
defines dynamic yield management biases.</li>
<li><a
href="profile-service.md"
class="xref" target="_blank">Profile</a>: This object defines all of the
targeting parameters for another object (e.g., payment rule).</li>
</ul>
</figure>






