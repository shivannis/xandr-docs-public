---
Title : Understanding the Sell-Side Object Hierarchy
Description : lorem ipsum
---


# Understanding the Sell-Side Object Hierarchy



Inventory on the platform is grouped within sell-side objects that exist
within a specific object hierarchy. Here's the basic hierarchy:

1.  Supply Partner networks work with various publishers. 
2.  Publishers sort inventory into placement groups, or groupings of
    like inventory made up of individual placements. 
3.  Placements are the smallest sell-side object. They are open spaces
    (represented by tags passed between traffickers) where ads can run. 

Here's a visualization of the relationship between objects: 

<figure class="fig fignone">
<p><img src="images/supply-partners/75798931.jpg" class="image"
height="250" /></p>
</figure>



## Publishers and Placements

The two most important objects for Supply Partners to focus on are
publishers and placements. Since Domain Detection may shut off tags that
send URLs violating our
<a href="https://wiki.xandr.com/display/policies/Policies+for+Selling"
class="xref" target="_blank">Policies for Selling</a> (login required),
you can protect yourself by splitting out inventory in the most granular
way possible, into publishers and tags. This way, if one tag gets turned
off for what Xandr considers “bad” inventory, it
will not impact your ability to sell the rest of your inventory.

When setting up your account, your Xandr
Technical Account Manager (TAM) will create a default publisher and
placement and associate them with your member. You can then create
additional publishers and placements to mirror your inventory structure,
as needed.

- For guidance on using  to map your supply to
  Xandr, see <a
  href="https://docs.xandr.com/bundle/supply-partners/page/use-the-ui-to-synchronize-your-inventory-structure.html"
  class="xref" target="_blank">Use  to Synchronize
  Your Inventory Structure</a>. 
- For guidance on using the API to map your supply to
  Xandr, see <a
  href="https://docs.xandr.com/bundle/supply-partners/page/use-the-api-to-synchronize-your-inventory-structure.html"
  class="xref" target="_blank">Use the API to Synchronize Your Inventory
  Structure</a>.
- If you want a Xandr representative do a once
  quarterly bulk mapping upload, you will need
  to <a href="http://help.xandr.com/" class="xref" target="_blank">open a
  support ticket</a> and let us know you plan to send a formatted cvs
  file so that Xandr can create the mapping for
  you.



Tip: The best way to synchronize
publishers and placements is by creating publishers and placements to
correspond to values that will be passed in on bid requests. That's
`BidRequest.site.publisher.id` (for publishers) and `BidRequest.site.id`
(for placements) in OpenRTB.







## Ad Profiles

Your <a
href="https://docs.xandr.com/bundle/supply-partners/page/define-ad-quality-rules.html"
class="xref" target="_blank">network ad quality profile</a> restricts
which creatives can serve on your inventory, based on creative
attributes such as buyer or brand. These rules are applied to every
impression across all of your publishers.

If you need to enforce stricter ad quality rules for individual
publishers, you can create ad quality profiles at the publisher level as
well.






