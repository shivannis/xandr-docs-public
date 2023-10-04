---
Title : Blanking FAQ
Description : ## What is "blanking"?
*Blanking* is when we serve a blank creative, resulting in an empty
space where the ad would have been. It is technically the delivery of a
---


# Blanking FAQ





## What is "blanking"?

*Blanking* is when we serve a blank creative, resulting in an empty
space where the ad would have been. It is technically the delivery of a
`200 OK` response.





## What scenarios cause a blank to be served?

<div id="blanking-faq__p-4c0a1754-9697-4d82-bb16-335014108424"
>

- **An auction is held but there is no demand**: In this scenario, the
  default creative or PSA for that size is not available, so a blank is
  served. The client can choose for a blank to serve rather than a PSA.
  To do so, set the parameter `PSA = no` in the ad tag.
  

  Note: This is the only blanking
  scenario where you are billed and the blank is logged.

  
- **The Impbus fails for some reason**: In this case, no auction is held
  and a blank is served. Not billed or logged.
- **An excluded impression of some sort (either URL or User IP) on a
  blocklist**: In this case, no auction is held and a blank is served.
  Not billed or logged.





<div id="blanking-faq__section-a9ee2d04-5116-4bc9-9ea0-74a3fc6e5e31"
>

## Why do we charge for blanks?

Because it costs Xandr, money to run an auction
and serve a blank, and our clients have the option of turning blanks on
or off, we charge for the blanks the same as we would for a creative or
PSA.



<div id="blanking-faq__section-ec8356c4-483f-486a-b8f8-e82dfb6b8854"
>

## Where can I see blank activity?

You can see blank activity in Monetize reporting. From the reports tab,
you will have the option to see blanks only or among other impression
types. You can also see this on a publisher specific level to be sure
you can pass along the costs to the publisher if necessary.



<div id="blanking-faq__section-1182b326-df04-4d1a-b360-11defbd35ecc"
>

## How can I avoid blanks?

<div id="blanking-faq__p-c961f330-d004-4f2f-a3c9-0b1c4098a6c1"
>

1.  See <a href="assign-a-default-creative-to-a-placement.html"
    class="xref">Assign a Default Creative to a Placement</a>.
2.  Set up defaults for uncommon placement sizes.
3.  Consider contracts with publishers to pass along that cost.





<div id="blanking-faq__section-06afd928-6aa3-41a5-b816-2205ea77ffae"
>

## How will blanking charges show up on the invoice?

The blank charges will be rolled up into the line item **Managed Ad
Serving Fee**. The difference in revenue for one month for most clients
will be insignificant and thus, unnoticeable.






