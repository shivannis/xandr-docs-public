---
Title : Universal Pixel Basic Implementation
Description : With the most basic implementation of the universal pixel, you can track
ms.date: 10/28/2023
page views and identify the URLs driving them. Setting up the basic
---


# Universal Pixel Basic Implementation



With the most basic implementation of the universal pixel, you can track
page views and identify the URLs driving them. Setting up the basic
implementation requires you to set up the Universal Pixel object in
Monetize, deploy the script code containing the
pixel ID on your website, and check your pixel activity on the
Activity tab in the
Universal Pixels page.



To create, deploy, and test the pixel:





<div class="li stepsection">

Configure your pixel code using the UI.



1.  From the top menu bar, click
    Advertisers
    \> Universal Pixel 
2.  Click
    New.
3.  Select an advertiser from the list. 
4.  Click Track Your
    Website Activity or Track Your App
    Activity.
5.  Type a name for your pixel in
    the Name field and
    Save to continue.
    

    The next screen displays the universal script code that you’ll
    deploy in the `<head>` tag on the advertiser website.

    
6.  Decide what to do with your pixel code:
    - If you plan to deploy the universal script code on the website
      yourself, follow the instructions on-screen to copy and paste the
      code.
    - If you plan to have a web developer handle the code deployment,
      enter one or more email addresses and click
      Send the installation instructions to a
      developer to install on your behalf.
7.  Click Go to
    Analytics Screen. 
    

    Monetize displays the
    Universal Pixel page. The
    Activity tab is selected by
    default, and shows activity for your URLs after your campaign has
    run for some time. This page also shows the pixel ID and UUID, as
    well as the time when the pixel last fired.

    

<div class="li stepsection">

Deploy the code on your website.



8.  Deploy the universal pixel script code in the
    `<head>` tag of the advertiser website. Many advertisers use a tag
    manager to achieve this. 
    

    If you need to access the script code after initial pixel creation,
    click the pencil icon next to the pixel name.

    

<div class="li stepsection">

Make sure your pixel is detecting activity.



9.  After deploying the code, verify your pixel is
    active by checking the
    Activity tab. 



>

Related Topics

- <a href="universal-pixel-code-structure.md" class="xref"
  title="The general universal pixel code to be deployed in the &lt;head&gt; tag on each page of the advertiser website is different from the pixel code required for standard and custom events, which is deployed only on pages of interest.">Universal
  Pixel Code Structure</a>
- <a href="universal-pixel-reporting.md" class="xref"
  title="In addition to the activity reporting available from the Universal Pixels page, a number of reports and feeds contain information about universal pixel activity.">Universal
  Pixel Reporting</a>






