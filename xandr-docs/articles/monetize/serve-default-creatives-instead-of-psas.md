---
Title : Serve Default Creatives Instead of PSAs
Description : Many publishers need to minimize or eliminate public service
announcement (PSA) delivery to ensure delivery to passback tags.
---


# Serve Default Creatives Instead of PSAs



Many publishers need to minimize or eliminate public service
announcement (PSA) delivery to ensure delivery to passback tags.
Following the instructions below will eliminate PSA delivery in almost
all cases.

1\. Make Sure the Creative is Secure

If your default creative is not SSL audited and your placement is run as
secure (`https`), then a PSA will show instead of your default creative.
Even if you are certain that you exported your tags as non-secure, some
partners will automatically add the `https`. If that happens, you will
serve PSAs. If you do NOT want to serve PSAs, you must submit your
creative for SSL audit or ensure that partners are not running your tags
with `https`.

To submit your creative for SSL audit,

**a.** navigate to
Publishers
 \> Placement Manager,
then select the placement to which you want to add a secure default
creative by clicking anywhere in the row. This displays the placement
details and any default creatives already assigned to the placement.

**b.**In the **Default Creatives** pane, click
Add. This opens the **Add Default
Creative** dialog. Be sure to check the Allow
SSL box.

**c.**If you upload a file directly to Monetize,
ensure the creative will be eligible to serve on secure inventory.

**d.**If you input a third-party creative, be sure to add both the
standard and secure tag.

**e.**Once an SSL enabled creative has been uploaded it will be
automatically checked to ensure it is able to serve on secure inventory.
If there is an issue and the creative is not eligible for secure pages
you will receive an email notification detailing the issue. If you
receive such an email update the creative accordingly.

2\. For Sizeless Placements, Set a Default Creative for Every Size

If you have a sizeless placement and do not have a default creative set
up for a particular size, then you will serve a PSA for that size. You
can prevent this by uploading a default creative for all sizes that you
want to use.

**a.** To see what size creatives a sizeless placement is serving, run a
Publisher or Network Analytics Report with filter by `Placement` and
group by `Size` criteria.

**b.** Make sure the date range is at least a month to ensure you
capture the most possible sizes.

**c.** Once you know all the sizes that are serving for the placement,
upload default creatives for each, following the procedure outlined in
Step 1 above.





Note: Full instructions for uploading
default creatives can be found in
<a href="assign-a-default-creative-to-a-placement.html"
class="xref">Assign a Default Creative to a Placement</a>.





3\. Set the Direct Advertisers Trust Level to Maximum

If your publisher Ad Quality setting has a trust level other then
Maximum, this may block default creatives from serving.

To update your Ad Quality settings in Monetize,

**a.** click Publishers and choose
Ad Quality from the menu that appears.

**b.** Select the publisher you want to work with.

**c.**Under
Buyers 
\>  Default advertisers trust
you can see the current setting.

**d.**If it's set to anything other then **Maximum**, click the
pencil, update the trust level, and
apply your changes.

Related Topics

- <a href="create-a-placement.html" class="xref">Create a Placement</a>
- <a href="default-psas.html" class="xref">Default PSAs</a>
- <a href="assign-a-default-creative-to-a-placement.html"
  class="xref">Assign a Default Creative to a Placement</a>




