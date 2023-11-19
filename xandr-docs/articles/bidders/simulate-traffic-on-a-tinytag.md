---
Title : Simulate Traffic on a TinyTag
Description : When a TinyTag is created, the API returns its ID.
ms.date : 10/28/2023
---


# Simulate Traffic on a TinyTag



When a TinyTag is created, the API returns its ID.



This ID is used to create the URL that simulates traffic on this
TinyTag.



<b>Note:</b> Which URL to call

If your bidder is set up in the test environment, use this template:

`https://ib-test.adnxs.com/ttj?id=(TINY_TAG_ID)&size=(WIDTHxHEIGHT)&debug_member=(YOUR_MEMBER_ID)`


If your bidder in the test environment is only buying mobile inventory,
use this template:

``` pre
https://ib-test.adnxs.com/mob?st=mobile_app&id=(TINY_TAG_ID)&size=(WIDTHxHEIGHT)&debug_member=(YOUR_MEMBER_ID)
```



<b>Note:</b> TT vs. TTJ

The element in the auction URL, `/ttj` can also be set to `/tt`.

`/ttj` denotes a JavaScript tinytag (placement or ad tag).

`/tt` denotes an iFrame tinytag (placement or ad tag).

We recommend testing both `/tt` and `/ttj` to ensure your creatives
render properly.









Assuming all of the API calls in this section run successfully, running
the TinyTag populated with your ID should make a <a
href="outgoing-bid-request-to-bidders.md"
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
href="bidder-service.md"
class="xref" target="_blank">Bidder Service</a>.

class="note tip note_tip">

<b>Tip:</b> Set objects to active

Make sure you've set your bidder object and bidder instance object to
`active` (using the <a
href="bidder-service.md"
class="xref" target="_blank">Bidder Service</a> and <a
href="bidder-instance-service.md"
class="xref" target="_blank">Bidder Instance Service</a>, respectively).

Make sure your `ready_uri` is responding with a '1'.





Next step: <a
href="process-the-bid-request.md"
class="xref" target="_blank">Processing the Bid Request</a>




