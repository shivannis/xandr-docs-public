---
Title : Yield Analytics 8.9
Description : **Internationalization:**  This feature enhances the following items
within yield analytics :
1.  Currency symbols will be updated to reflect the currency that is
---


# Yield Analytics 8.9



**Internationalization:**  This feature enhances the following items
within yield analytics :

1.  Currency symbols will be updated to reflect the currency that is
    used for all revenue values in the system.
2.  Users will have the ability to override their locale setting to have
    date, number, and currency formats be representative of their
    defined locale format.
3.  Excel exports will read the preference set on the user who is
    downloading the reports, and export the report in the proper format.

**Details**

Our international clients have long asked for the Yield Analytics UI to
more accurately reflect the currency symbol that they use for reporting,
along with respecting local formats for both numbers and dates.  This
week’s release will address both requests, with several changes:

- Currency Symbols: This represents the currency that the publisher is
  set to and display the proper symbol
- Locale Settings: Clients will be configured to a locale based on the
  default for the publisher.  However, individual users can set their
  locale setting through the Preference page of
  .  In the case of no network configuration,
  users will default to using the United States (en-US) locale.

This is a view of the preference page where locale can be configured
(Note: the “Country Format” field where locale is specified is a new
selection box on the existing preference page. There is not a new page
for this):

<figure class="fig fignone">
<p><img src="../images/93782567.png" class="image" height="250" /></p>
</figure>

A look at dates/numbers using the default en-US locale:

<figure class="fig fignone">
<p><img src="../images/93782568.png" class="image" /></p>
</figure>

A look at dates/numbers using the new fr-FR locale:

<figure class="fig fignone">
<p><img src="../images/93782569.png" class="image" /></p>
</figure>

Our Excel exports will also support localized formatting. We will begin
respecting the Language & Region settings configured on a user’s
computer when they open a yield analytics export in Excel.  This will
allow them to see data within Excel identical to how it will be
displayed in the Yield Analytics UI.



<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../topics/release-notes.html" class="link">Release Notes</a>






