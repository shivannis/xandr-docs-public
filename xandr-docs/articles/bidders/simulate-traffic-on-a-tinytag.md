---
Title : Simulate Traffic on a TinyTag
Description : When a TinyTag is created, the API returns its ID.
---


# Simulate Traffic on a TinyTag



When a TinyTag is created, the API returns its ID.



This ID is used to create the URL that simulates traffic on this
TinyTag.

<div id="ID-0000199f__note-7add36ba-282c-4766-b42d-9efe441af5a3"


Note: Which URL to call

If your bidder is set up in the test environment, use this template:

`https://ib-test.adnxs.com/ttj?id=(TINY_TAG_ID)&size=(WIDTHxHEIGHT)&debug_member=(YOUR_MEMBER_ID)`

<div id="ID-0000199f__p-a11d3119-8988-4645-95b5-adf724b091f8" >

If your bidder in the test environment is only buying mobile inventory,
use this template:

``` pre
https://ib-test.adnxs.com/mob?st=mobile_app&id=(TINY_TAG_ID)&size=(WIDTHxHEIGHT)&debug_member=(YOUR_MEMBER_ID)
```

<div id="ID-0000199f__note-bcc32a46-df8e-4601-8cc1-2b46e0d46beb"


Note: TT vs. TTJ

The element in the auction URL, `/ttj` can also be set to `/tt`.

`/ttj` denotes a JavaScript tinytag (placement or ad tag).

`/tt` denotes an iFrame tinytag (placement or ad tag).

We recommend testing both `/tt` and `/ttj` to ensure your creatives
render properly.









Assuming all of the API calls in this section run successfully, running
the TinyTag populated with your ID should make a <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Bid Request</a> from the selling member to
all bidders, requesting a bid and a creative sized for the TinyTag's
parameters.

Please run the debug auction URL from within a web browser. This will
show you the output of the auction and can assist you with
troubleshooting your bidder's responses to an auction.



If you want to run a full auction, to generate notification requests,
remove the `debug_member=(YOUR_MEMBER_ID)` from the URL shown above. You
will see a creative render in the browser and your bidder will receive
notification requests to the `notify_uri` location you specified using
the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
class="xref" target="_blank">Bidder Service</a>.

<div id="ID-0000199f__note-08dbe72b-c942-4fcc-ad54-411e71eb8494"
class="note tip note_tip">

Tip: Set objects to active

Make sure you've set your bidder object and bidder instance object to
`active` (using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
class="xref" target="_blank">Bidder Service</a> and <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-instance-service.html"
class="xref" target="_blank">Bidder Instance Service</a>, respectively).

Make sure your `ready_uri` is responding with a '1'.





Next step: <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/process-the-bid-request.html"
class="xref" target="_blank">Processing the Bid Request</a>




