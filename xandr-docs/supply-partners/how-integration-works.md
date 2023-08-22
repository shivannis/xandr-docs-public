# How Integration Works

<div class="body">

<div class="fig fignone">

<img src="images/supply-partners/112559381.png" class="image"
height="250" />

</div>

Here's a diagram and description of what happens when a supply partner
that has integrated with <span class="ph">Xandr</span>'s platform
receives an ad call.   

1.  A user views a web page that contains an ad tag belonging to the
    supply partner. The ad tag calls the supply partner.   
2.  The supply partner starts an auction for the inventory and sends a
    bid request to <span class="ph">Xandr</span>.
3.  <span class="ph">Xandr</span> offers the bid request to our demand
    partners, who have a certain number of milliseconds in which to
    respond with a bid.
4.  <span class="ph">Xandr</span> holds an auction to choose a winning
    bid based on the data in the bid request and the publisher's ad
    quality preferences (ad profile).
5.  <span class="ph">Xandr</span> passes the bid and a
    <span class="ph">Xandr</span> ad tag to the supply partner. The
    supply partner includes the <span class="ph">Xandr</span> bid in its
    own auction.
6.  If the <span class="ph">Xandr</span> bid wins the action, the supply
    partner drops our ad tag on the web page.
7.  The ad tag notifies <span class="ph">Xandr</span> that the bid won,
    sends the bid clearing price and identifies the location of the ad
    to serve.
8.  <span class="ph">Xandr</span> serves the ad.

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="getting-started.html" class="link">Getting Started</a>

</div>

</div>

</div>
