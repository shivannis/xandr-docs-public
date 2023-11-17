---
Title : Preemptive Tags
Description : Xandr offers two kinds of tags:
<a href="https://docs.xandr.com/bundle/xandr-bidders/page/tinytags.html"
---


# Preemptive Tags



Xandr offers two kinds of tags:
<a href="https://docs.xandr.com/bundle/xandr-bidders/page/tinytags.html"
class="xref" target="_blank">TinyTags</a> and Preemptive tags.

Preemptive Tags are like TinyTags, but with a slightly different ad call
procedure. They allow Xandr to hold an auction
on the ad call and then pass the highest bid on to the publisher's ad
server to decide how best to fill impression. This solution gives
sellers more transparency into market demand, more control over the bid
process, and a greater array of advertiser demand.

<div id="ID-000098f6__section_ush_ghq_nwb" >

## How it Works?



1.  You will create Xandr as an advertiser in
your regular ad server and add the appropriate trafficking parameters.
This will allow the highest Xandr bid to be
recognized by your ad server.

2.  Either a preemptive tag is placed on the publisher's page or some
other solution is reached, such as a CNAME redirect, in order to ping
Xandr's impression bus as a first stop. See your
Xandr contact for details.

3.  An <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/auction-overview.html"
class="xref" target="_blank">auction</a> is held and a winning bidder is
decided.

4.  The impression bus passes the winning creative and the winning price
on to the third-party ad server. Xandr will
appear as a bidder or a participant to that ad server.

5.  That ad server decides whether to show the
Xandr creative or to show another.

6.  If it shows another ad, the call does NOT return to
Xandr. If Xandr "wins,"
then the call passes back through the impression bus and the winning ad
is served to the page.

<div id="ID-000098f6__section_ixf_vzl_nwb" >

## Related Topics

- <a href="tinytags.html" class="xref">TinyTags</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/auction-overview.html"
  class="xref" target="_blank">Auction Overview</a>






