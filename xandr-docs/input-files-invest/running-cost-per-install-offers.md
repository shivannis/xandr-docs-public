---
Title : Running Cost per Install Offers
Description : This document describes the procedure for setting up cost per install
offers with your mobile ad campaigns. This includes procedures for:
---


# Running Cost per Install Offers



This document describes the procedure for setting up cost per install
offers with your mobile ad campaigns. This includes procedures for:

- Integrating with an external app install tracker
- Setting up the right creative click URLs
- Reporting on your installs (conversions)

Step 1. Set up Third-Party Mobile App Install Tracking

Follow the steps described in
<a href="set-up-third-party-mobile-app-install-tracking.md"
class="xref">Set Up Third-Party Mobile App Install Tracking</a> to
integrate with a third-party mobile app install tracker and set your
creative click URLs so that Xandr will be able
to register your conversions. You may also want to associate your
creative with an impression tracker. For instructions, see
<a href="create-an-impression-tracker.md" class="xref">Create an
Impression Tracker</a>.



<b>Note:</b>

- The instructions in
  <a href="set-up-third-party-mobile-app-install-tracking.md"
  class="xref">Set Up Third-Party Mobile App Install Tracking</a> will
  only work with Xandr-hosted creatives at this
  time. Technically, our server-side conversion attribution requires the
  `${SSP_DATA`} macro to be populated by the creative's ad server, so
  any ad server that populates this macro will work. In practice, there
  are not any other ad servers that populate this macro at this time.
- You should thoroughly test the integration with your install tracking
  vendor before campaigns go live to avoid discrepancy issues. For more
  information on how to test that your conversion pixels are loading as
  planned, see
  <a href="managing-mobile-discrepancies.md" class="xref">Managing
  Mobile Discrepancies</a>.
- For more information on how server-side conversion tracking works, see
  the descriptions in
  <a href="set-up-third-party-mobile-app-install-tracking.md"
  class="xref">Set Up Third-Party Mobile App Install Tracking</a> and
  <a href="server-side-conversion-pixels.md" class="xref">Server-Side
  Conversion Pixels</a>.



Step 2. Set up your mobile campaigns

Depending on your needs, you'll want to follow the steps outlined in one
of the following:

- <a href="buy-mobile-inventory-via-rtb.md" class="xref">Buy Mobile
  Inventory via RTB</a>

Step 3. Report on your conversions

Use the <a href="advertiser-attributed-conversions-report.md"
class="xref">Advertiser Attributed Conversions Report</a> to report on
the conversions coming through these creatives. This will also let you
check for discrepancies with your external install tracking vendor.

Related Topics

- <a href="mobile-buying-faq.md" class="xref">Mobile Buying FAQ</a>
- <a href="welcome-to-mobile.md" class="xref">Welcome to Mobile</a>




