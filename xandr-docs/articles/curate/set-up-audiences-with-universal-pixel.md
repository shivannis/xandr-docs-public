---
Title : Set Up Audiences with Universal Pixel
Description : You can set up audiences for your universal pixel using rules and
ms.date : 10/28/2023
conditions, then target the audience segments in the
Audience and Location Targeting
settings of your line item.
---


# Set Up Audiences with Universal Pixel



You can set up audiences for your universal pixel using rules and
conditions, then target the audience segments in the
Audience and Location Targeting
settings of your line item.

class="section section context">

To configure an audience:





1.  From the top menu bar, click
    Audiences
    \> Universal Pixel 
2.  Select a pixel from the
    Universal Pixels page.
    

    If no pixels are defined, use the setup instructions in
    <a href="universal-pixel-basic-implementation.md" class="xref"
    title="With the most basic implementation of the universal pixel, you can track page views and identify the URLs driving them. Setting up the basic implementation requires you to set up the Universal Pixel object in Curate, deploy the script code containing the pixel ID on your website, and check your pixel activity on the Activity tab in the Universal Pixels page.">Universal
    Pixel Basic Implementation</a> to create one.

    
3.  Click
    +New.
4.  Provide a name for the audience. 
    

    You can use this name to select an audience segment in your line
    item settings under Audience Location and
    Targeting.

    
5.  Under Include people
    who, create conditions to define the audience segment you
    want your pixel to populate. Use AND if you want all conditions to
    be fulfilled to qualify a user for the segment. Use OR if any of the
    conditions will qualify the user. 
6.  Under Keep people in
    audience, decide how long the users you have identified
    should remain in the audience segment you are creating.
    

    This number is sometimes called “Time to Live,” or TTL.) The maximum
    TTL is 180 days. However, because cookies may become inactive, or
    users may no longer be relevant to the segment, we recommend a value
    of 60 days or less for most segments. For example, the users in a
    “highly motivated purchaser” segment may not remain highly motivated
    for a long duration.

    
7.  Click Save.
    
    

    The audience segment will be displayed on the
    Audiences tab of the
    Universal Pixels page, and
    will be available for targeting by both name and segment ID in the
    Audience and Location Targeting
    settings of your line items.
    You can see audience segment activity updating on the
    Audiences tab as
    Curate collects data about your segments.

    





Related Topics

- <a href="set-up-conversions-with-universal-pixel.md" class="xref"
  title="You can set up conversions for your universal pixel using rules and conditions, then track conversion activity using Curate reporting.">Set
  Up Conversions with Universal Pixel</a>
- <a href="universal-pixel-rule-conditions.md" class="xref">Universal
  Pixel Rule Conditions</a>
- <a href="set-up-segment-targeting-on-a-line-item.md"
  class="xref">set-up-segment-targeting-on-a-line-item.md</a>






