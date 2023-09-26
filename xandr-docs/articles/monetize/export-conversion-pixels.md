---
Title : Export Conversion Pixels
Description : Once you've finished setting up conversion pixels, you can export the
tags and give them to your advertisers for inclusion on pages.
---


# Export Conversion Pixels



Once you've finished setting up conversion pixels, you can export the
tags and give them to your advertisers for inclusion on pages.

Step 1. Get started

Go to the Conversion Pixels screen
(Advertisers
\>  Conversion Pixels), select
the checkboxes next to the conversion pixels that you want to export,
click More Actions, and select
Export. This displays the
Export Pixels dialog.

Step 2. Select the pixel format

In the Basic Options section, select
the format for your exported pixels:

- **Use a JavaScript tag** - By default, pixels will be exported as
  image tags. If you want JavaScript tags instead, select this option.
  

  Important:
  Why use JavaScript tags? Some advertisers require JavaScript tags.
  Image pixels can only perform one redirect, so parent pixels with
  multiple piggybacks must be JavaScript. If a piggyback pixel is
  JavaScript, the parent pixel should be JavaScript as well.

  
- Generate a non-secure pixel - Select
  this option to generate a non-secure pixel. See
  <a href="conversion-pixels-advanced.html" class="xref">Conversion Pixels
  Advanced</a> for additional details.

Step 3. Select the delivery options

In the Delivery Options section,
select whether you want to generate the tags on the screen, or whether
you would rather send the tags via email. If you select to email the
tags, you can enter up to 10 email addresses, separated by commas.

Step 4. Explore advanced options

In the Advanced Options section, you can select additional values to
include in the pixel tag.

Select Use codes to generate a pixel
with your external code (the value you entered when creating the pixel)
and your member ID instead of the Xandr pixel
ID.

Select Use a server-side pixel to
generate a URL that you can call, instead of an HTML-based pixel that is
placed on a publisher's web page.



Important:

You can select this option on its own, or in conjunction with the
Use codes option above.





Note: If you have selected this option
you will not be able to select the Add user
to segments or Remove user from
segments options, or the Include a
redirect URL parameter. For more information on server-side
conversion pixels, see
<a href="server-side-conversion-pixels.html" class="xref">Server-Side
Conversion Pixels</a>.



- Select Add user to segments on call
  to generate a pixel that will add the user to segments once they have
  converted. After selecting this option, click Add near the desired
  segments to move them from the Available Segments area to the Targeted
  Segments area. For more information, see "Segment Users Once They Have
  Converted" under
  <a href="conversion-pixels-advanced.html" class="xref">Conversion Pixels
  Advanced</a>

- Select Remove user from segments on
  call to generate a pixel that will remove the user from
  segments once they have converted. After selecting this option, click
  Add near the desired segments to move them from the Available Segments
  area to the Targeted Segments area. For more information, see "Segment
  Users Once They Have Converted" under
  <a href="conversion-pixels-advanced.html" class="xref">Conversion Pixels
  Advanced</a>.

- Select any or all of the pixel parameters to add dynamic revenue, ID
  or SKU, or a redirect URL to the pixel tag. For more information, see
  the "Order ID/SKU", "Dynamic Revenue Values", and "Redirect URL" under
  <a href="conversion-pixels-advanced.html" class="xref">Conversion Pixels
  Advanced</a>.

Step 5. Generate the tags

Click the Generate Tags button.
Depending on the delivery option selected, the tags either are displayed
on the screen or emailed to the addresses specified.

An image pixel looks like this, with a t=2 parameter:

``` pre
<!-- Conversion Pixel - Registration - DO NOT MODIFY --> 
<img src="http://ib.adnxs.net/px?id=7313&t=2" width="1" height="1" /> 
<!-- End of Conversion Pixel --> 
```

A JavaScript pixel looks like this, with a t=1 parameter:

``` pre
<!-- Conversion Pixel - Registration - DO NOT MODIFY --> 
<script src="http://ib.adnxs.net/px?id=7313&t=1" type="text/javascript"></script>
<!-- End of Conversion Pixel --> 
```

Related Topics

- <a href="create-a-conversion-pixel.html" class="xref">Create a
  Conversion Pixel</a>
- <a href="conversion-pixels-advanced.html" class="xref">Conversion Pixels
  Advanced</a>
- <a href="set-up-a-combined-segment-and-conversion-pixel.html"
  class="xref">Set Up a Combined Segment and Conversion Pixel</a>
- <a href="reporting-on-conversions.html" class="xref">Reporting on
  Conversions</a>
- <a href="server-side-conversion-pixels.html" class="xref">Server-Side
  Conversion Pixels</a>




