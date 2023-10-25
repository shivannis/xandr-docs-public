---
Title : How Integration Works
Description : lorem ipsum
---


# How Integration Works



<figure class="fig fignone">
<p><img src="images/supply-partners/112559381.png" class="image"
height="250" /></p>
</figure>

Here's a diagram and description of what happens when a supply partner
that has integrated with Xandr's platform
receives an ad call.   
  

1.  A user views a web page that contains an ad tag belonging to the
    supply partner. The ad tag calls the supply partner.   
2.  The supply partner starts an auction for the inventory and sends a
    bid request to Xandr.
3.  Xandr offers the bid request to our demand
    partners, who have a certain number of milliseconds in which to
    respond with a bid.
4.  Xandr holds an auction to choose a winning
    bid based on the data in the bid request and the publisher's ad
    quality preferences (ad profile).
5.  Xandr passes the bid and a
    Xandr ad tag to the supply partner. The
    supply partner includes the Xandr bid in its
    own auction.
6.  If the Xandr bid wins the action, the supply
    partner drops our ad tag on the web page.
7.  The ad tag notifies Xandr that the bid won,
    sends the bid clearing price and identifies the location of the ad
    to serve.
8.  Xandr serves the ad.




