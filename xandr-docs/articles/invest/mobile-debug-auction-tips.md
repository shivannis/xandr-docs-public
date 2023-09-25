---
Title : Mobile Debug Auction Tips
Description : In order to run a debug auction on mobile inventory, you must pass
additional mobile device parameters in on the ad call. This page
---


# Mobile Debug Auction Tips



In order to run a debug auction on mobile inventory, you must pass
additional mobile device parameters in on the ad call. This page
describes how to spoof various mobile ad call parameters so that you can
successfully run mobile debug auctions.

Call Format



<b>Note:</b> All debug auction and browser
cookie override calls must use secure https protocols. Requests made
using http will not generate valid results.



Here's an example of an ad call that will run a mobile debug auction:



``` pre
https://mobile.adnxs.com/mob?id=[TAG_ID]&size=[WIDTH}x[HEIGHT]&ua=[user_agent_string]&carrier=carrier-[carrier_id]&devmake=[dev_make_code]&devmodel=[dev_model_code]&debug_member=[BUYER_MEMBER_ID]&dongle=[PASSWORD]
```



There are query string parameters that tell the impression bus the user
agent, carrier, and device make and model. See the sections below for
more information about how to get valid information to pass in via these
parameters.



<b>Tip:</b> For documentation on all of the
mobile query string parameters we accept, see
<a href="mobile-ad-call-reference.md" class="xref">Mobile Ad Call
Reference</a>.



Spoof Operating System

Our ad server uses the device's User Agent to determine the operating
system. This gives us two ways to spoof the OS: using query string
parameters, or using developer tools.

Using query string parameters

By passing in a different value for the `ua` query string parameter, we
can tell the impression bus what operating system we use, since the
impression bus determines the device OS from the User Agent. In this
example, we set the User Agent so that we appear to be running an
iPhone:



``` pre
https://mobile..com/mob?id=1280178&size=320x50&debug_member=2048&dongle=DEBUG_AUTH&ua=Mozilla/5.0%20(iPhone;%20CPU%20iPhone%20OS%206_0%20like%20Mac%20OS%20X)%20AppleWebKit/536.26%20(KHTML,%20like%20Gecko)%20Version/6.0%20Mobile/10A5376e%20Safari/8536.25
```



Using developer tools

Chrome offers the ability to spoof many different devices directly in
the header of the HTTP request. To enable it, do the following:

1.  Right click the page, and select Inspect
    Element.
2.  Follow the instructions from <a
    href="https://developers.google.com/chrome-developer-tools/docs/mobile-emulation"
    class="xref" target="_blank">Chrome's documentation</a> to emulate
    the operating system of your choice.
3.  Verify that the browser is appearing as the OS you chose by checking
    the results of the <a href="understanding-the-debug-auction.md"
    class="xref">Understanding the Debug Auction</a> (search for
    "Operating System" in the output).

Example output

Based on the information above, the output on the debug auction would
look like this:



``` pre
Browser: Safari (all versions) (9)
Operating System: iPhone (8)
Operating System (Extended): OS 6_0 (72)
Device Make: Apple (26)
Device Model: iPhone (301) 
```



Spoof Carrier

In order to spoof the carrier, you will need to add the query string
parameter `carrier` to the mobile ad call, along with a numeric carrier
code. For example `carrier 80`, like this:



``` pre
&carrier=carrier-80
```



To find the code that corresponds to the carrier you'd like to spoof,
you can use one of the following methods:

- Refer to our
  <a href="mobile-carrier-codes.md" class="xref">Mobile Carrier
  Codes</a>.
- Use the API's <a
  href="xandr-api/carrier-service.md"
  class="xref" target="_blank">Carrier Service</a> to see all of the
  available codes.

Spoof Device Make and Model

The query string parameters for spoofing the device make and model are
`devmake` and `devmodel`, respectively.

You can use the following read-only API services to see what device
makes and models are available in the system:

- The <a
  href="xandr-api/device-make-service.md"
  class="xref" target="_blank">Device Make Service</a>.
- The <a
  href="xandr-api/device-model-service.md"
  class="xref" target="_blank">Device Model Service</a>.

Related Topics

- <a href="mobile-ad-call-reference.md" class="xref">Mobile Ad Call
  Reference</a>




